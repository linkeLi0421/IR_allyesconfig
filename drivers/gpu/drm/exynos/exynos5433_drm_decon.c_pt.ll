; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos5433_drm_decon.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos5433_drm_decon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.exynos_drm_crtc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.decon_context = type { ptr, ptr, ptr, ptr, [5 x %struct.exynos_drm_plane], [5 x %struct.exynos_drm_plane_config], ptr, ptr, [10 x ptr], i32, i32, i32, i32, i32, i32, %struct.spinlock, i32 }
%struct.exynos_drm_plane = type { %struct.drm_plane, ptr, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.exynos_drm_plane_config = type { i32, i32, ptr, i32, i32 }
%struct.exynos_drm_crtc = type { %struct.drm_crtc, i32, ptr, ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.85, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.85 = type { [4 x i8] }
%struct.exynos_drm_plane_state = type { %struct.drm_plane_state, %struct.exynos_drm_rect, %struct.exynos_drm_rect, i32, i32 }
%struct.exynos_drm_rect = type { i32, i32, i32, i32 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exynos5433-decon\00", [47 x i8] zeroinitializer }, align 32
@exynos5433_decon_driver_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-decon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-decon-tv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@exynos5433_decon_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos5433_decon_suspend, ptr @exynos5433_decon_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@exynos5433_decon_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos5433_decon_probe, ptr @exynos5433_decon_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos5433_decon_driver_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos5433_decon_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@exynos5433_decon_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ctx->vblank_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vsync\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lcd_sys\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"te\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung,disp-sysreg\00", [44 x i8] zeroinitializer }, align 32
@exynos5433_decon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 847, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get system register\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynos5433_decon_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/exynos/exynos5433_drm_decon.c\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos5433_decon_probe._entry_ptr = internal global ptr @exynos5433_decon_probe._entry, section ".printk_index", align 4
@decon_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @decon_bind, ptr @decon_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aclk_decon\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aclk_smmu_decon0x\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aclk_xiu_decon0x\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pclk_smmu_decon0x\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aclk_smmu_decon1x\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aclk_xiu_decon1x\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pclk_smmu_decon1x\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sclk_decon_vclk\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sclk_decon_eclk\00", [16 x i8] zeroinitializer }, align 32
@decon_conf_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.8, i32 778, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IRQ %s get failed, %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"decon_conf_irq\00", [17 x i8] zeroinitializer }, align 32
@decon_conf_irq._entry_ptr = internal global ptr @decon_conf_irq._entry, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"drm_decon\00", [22 x i8] zeroinitializer }, align 32
@decon_conf_irq._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.8, i32 785, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IRQ %s request failed\0A\00", [41 x i8] zeroinitializer }, align 32
@decon_conf_irq._entry_ptr.26 = internal global ptr @decon_conf_irq._entry.24, section ".printk_index", align 4
@decon_formats = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 892424792, i32 909199186, i32 875713112, i32 875713089], [16 x i8] zeroinitializer }, align 32
@decon_win_types = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 1, i32 0, i32 2], [44 x i8] zeroinitializer }, align 32
@capabilities = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 48, i32 48, i32 48, i32 48], [44 x i8] zeroinitializer }, align 32
@decon_crtc_ops = internal constant { %struct.exynos_drm_crtc_ops, [48 x i8] } { %struct.exynos_drm_crtc_ops { ptr @decon_atomic_enable, ptr @decon_atomic_disable, ptr @decon_enable_vblank, ptr @decon_disable_vblank, ptr @decon_mode_valid, ptr null, ptr null, ptr @decon_atomic_begin, ptr @decon_update_plane, ptr @decon_disable_plane, ptr @decon_atomic_flush, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* failed to enable DECON device.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to software reset DECON\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* Cannot update sysreg.\0A\00", [33 x i8] zeroinitializer }, align 32
@decon_mode_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.8, i32 601, ptr @.str.32, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Sink requires %s mode, but appropriate interrupt is not provided.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"decon_mode_valid\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@decon_mode_valid._entry_ptr = internal global ptr @decon_mode_valid._entry, section ".printk_index", align 4
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"command\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"video\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cpp = %u\0A\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294966779, i64 4294967235, i64 4294967290]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 875713112, i64 892424792, i64 909199186]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 881, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [33 x i8] c"exynos5433_decon_driver_dt_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 751, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [24 x i8] c"exynos5433_decon_pm_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 744, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant [24 x i8] c"exynos5433_decon_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 877, i32 24 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 805, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 824, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 829, i32 28 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 834, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 845, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 847, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"decon_component_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 665, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 42, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 43, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 44, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 45, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 46, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 47, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 48, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 49, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 50, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 51, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 778, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 783, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 785, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [14 x i8] c"decon_formats\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 74, i32 23 }
@___asan_gen_.141 = private unnamed_addr constant [16 x i8] c"decon_win_types\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 81, i32 34 }
@___asan_gen_.144 = private unnamed_addr constant [13 x i8] c"capabilities\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 86, i32 27 }
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"decon_crtc_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 606, i32 41 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 520, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 496, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 191, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 600, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [49 x i8] c"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 359, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @decon_conf_irq._entry, ptr @decon_conf_irq._entry.24, ptr @decon_conf_irq._entry_ptr, ptr @decon_conf_irq._entry_ptr.26, ptr @decon_mode_valid._entry, ptr @decon_mode_valid._entry_ptr, ptr @exynos5433_decon_probe._entry, ptr @exynos5433_decon_probe._entry_ptr, ptr @.str, ptr @exynos5433_decon_driver_dt_match, ptr @exynos5433_decon_pm_ops, ptr @exynos5433_decon_driver, ptr @exynos5433_decon_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @decon_component_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @decon_formats, ptr @decon_win_types, ptr @capabilities, ptr @decon_crtc_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_decon_driver_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_decon_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_decon_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_decon_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_decon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decon_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decon_conf_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decon_conf_irq._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decon_formats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decon_win_types to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capabilities to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decon_crtc_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decon_mode_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5433_decon_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2920, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup59_crit_edge, label %if.end

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup59

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 8
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %1 = ptrtoint ptr %call3 to i32
  %out_type = getelementptr inbounds %struct.decon_context, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %out_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %out_type, align 4
  %vblank_lock = getelementptr inbounds %struct.decon_context, ptr %call.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %vblank_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @exynos5433_decon_probe.__key, i16 noundef signext 3) #5
  %3 = ptrtoint ptr %out_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %out_type, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %first_win = getelementptr inbounds %struct.decon_context, ptr %call.i, i32 0, i32 14
  %5 = ptrtoint ptr %first_win to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %first_win, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 8
  %call10 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.11) #5
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end8.cleanup.thread_crit_edge, label %for.inc

if.end8.cleanup.thread_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.inc.8.cleanup.thread_crit_edge, %for.inc.7.cleanup.thread_crit_edge, %for.inc.6.cleanup.thread_crit_edge, %for.inc.5.cleanup.thread_crit_edge, %for.inc.4.cleanup.thread_crit_edge, %for.inc.3.cleanup.thread_crit_edge, %for.inc.2.cleanup.thread_crit_edge, %for.inc.1.cleanup.thread_crit_edge, %for.inc.cleanup.thread_crit_edge, %if.end8.cleanup.thread_crit_edge
  %call10.lcssa = phi ptr [ %call10, %if.end8.cleanup.thread_crit_edge ], [ %call10.1, %for.inc.cleanup.thread_crit_edge ], [ %call10.2, %for.inc.1.cleanup.thread_crit_edge ], [ %call10.3, %for.inc.2.cleanup.thread_crit_edge ], [ %call10.4, %for.inc.3.cleanup.thread_crit_edge ], [ %call10.5, %for.inc.4.cleanup.thread_crit_edge ], [ %call10.6, %for.inc.5.cleanup.thread_crit_edge ], [ %call10.7, %for.inc.6.cleanup.thread_crit_edge ], [ %call10.8, %for.inc.7.cleanup.thread_crit_edge ], [ %call10.9, %for.inc.8.cleanup.thread_crit_edge ]
  %8 = ptrtoint ptr %call10.lcssa to i32
  br label %cleanup59

for.inc:                                          ; preds = %if.end8
  %arrayidx15 = getelementptr %struct.decon_context, ptr %call.i, i32 0, i32 8, i32 0
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %arrayidx15, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 8
  %call10.1 = tail call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.12) #5
  %cmp.i.1 = icmp ugt ptr %call10.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.cleanup.thread_crit_edge, label %for.inc.1

for.inc.cleanup.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.inc.1:                                        ; preds = %for.inc
  %arrayidx15.1 = getelementptr %struct.decon_context, ptr %call.i, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10.1, ptr %arrayidx15.1, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 8
  %call10.2 = tail call ptr @devm_clk_get(ptr noundef %14, ptr noundef nonnull @.str.13) #5
  %cmp.i.2 = icmp ugt ptr %call10.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.inc.1.cleanup.thread_crit_edge, label %for.inc.2

for.inc.1.cleanup.thread_crit_edge:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx15.2 = getelementptr %struct.decon_context, ptr %call.i, i32 0, i32 8, i32 2
  %15 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call10.2, ptr %arrayidx15.2, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 8
  %call10.3 = tail call ptr @devm_clk_get(ptr noundef %17, ptr noundef nonnull @.str.14) #5
  %cmp.i.3 = icmp ugt ptr %call10.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %for.inc.2.cleanup.thread_crit_edge, label %for.inc.3

for.inc.2.cleanup.thread_crit_edge:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx15.3 = getelementptr %struct.decon_context, ptr %call.i, i32 0, i32 8, i32 3
  %18 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10.3, ptr %arrayidx15.3, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 8
  %call10.4 = tail call ptr @devm_clk_get(ptr noundef %20, ptr noundef nonnull @.str.15) #5
  %cmp.i.4 = icmp ugt ptr %call10.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %for.inc.3.cleanup.thread_crit_edge, label %for.inc.4

for.inc.3.cleanup.thread_crit_edge:               ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx15.4 = getelementptr %struct.decon_context, ptr %call.i, i32 0, i32 8, i32 4
  %21 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call10.4, ptr %arrayidx15.4, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 8
  %call10.5 = tail call ptr @devm_clk_get(ptr noundef %23, ptr noundef nonnull @.str.16) #5
  %cmp.i.5 = icmp ugt ptr %call10.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5, label %for.inc.4.cleanup.thread_crit_edge, label %for.inc.5

for.inc.4.cleanup.thread_crit_edge:               ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx15.5 = getelementptr %struct.decon_context, ptr %call.i, i32 0, i32 8, i32 5
  %24 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call10.5, ptr %arrayidx15.5, align 4
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 8
  %call10.6 = tail call ptr @devm_clk_get(ptr noundef %26, ptr noundef nonnull @.str.17) #5
  %cmp.i.6 = icmp ugt ptr %call10.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6, label %for.inc.5.cleanup.thread_crit_edge, label %for.inc.6

for.inc.5.cleanup.thread_crit_edge:               ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx15.6 = getelementptr %struct.decon_context, ptr %call.i, i32 0, i32 8, i32 6
  %27 = ptrtoint ptr %arrayidx15.6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call10.6, ptr %arrayidx15.6, align 4
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 8
  %call10.7 = tail call ptr @devm_clk_get(ptr noundef %29, ptr noundef nonnull @.str.18) #5
  %cmp.i.7 = icmp ugt ptr %call10.7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.7, label %for.inc.6.cleanup.thread_crit_edge, label %for.inc.7

for.inc.6.cleanup.thread_crit_edge:               ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx15.7 = getelementptr %struct.decon_context, ptr %call.i, i32 0, i32 8, i32 7
  %30 = ptrtoint ptr %arrayidx15.7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call10.7, ptr %arrayidx15.7, align 4
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 8
  %call10.8 = tail call ptr @devm_clk_get(ptr noundef %32, ptr noundef nonnull @.str.19) #5
  %cmp.i.8 = icmp ugt ptr %call10.8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.8, label %for.inc.7.cleanup.thread_crit_edge, label %for.inc.8

for.inc.7.cleanup.thread_crit_edge:               ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx15.8 = getelementptr %struct.decon_context, ptr %call.i, i32 0, i32 8, i32 8
  %33 = ptrtoint ptr %arrayidx15.8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call10.8, ptr %arrayidx15.8, align 4
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 8
  %call10.9 = tail call ptr @devm_clk_get(ptr noundef %35, ptr noundef nonnull @.str.20) #5
  %cmp.i.9 = icmp ugt ptr %call10.9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.9, label %for.inc.8.cleanup.thread_crit_edge, label %for.inc.9

for.inc.8.cleanup.thread_crit_edge:               ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx15.9 = getelementptr %struct.decon_context, ptr %call.i, i32 0, i32 8, i32 9
  %36 = ptrtoint ptr %arrayidx15.9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call10.9, ptr %arrayidx15.9, align 4
  %call16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %addr = getelementptr inbounds %struct.decon_context, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call16, ptr %addr, align 4
  %cmp.i110 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then19, label %if.end22

if.then19:                                        ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %call16 to i32
  br label %cleanup59

if.end22:                                         ; preds = %for.inc.9
  %call23 = tail call fastcc i32 @decon_conf_irq(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @decon_irq_handler, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.cleanup59_crit_edge, label %if.end26

if.end22.cleanup59_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup59

if.end26:                                         ; preds = %if.end22
  %irq_vsync = getelementptr inbounds %struct.decon_context, ptr %call.i, i32 0, i32 10
  %39 = ptrtoint ptr %irq_vsync to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call23, ptr %irq_vsync, align 8
  %call27 = tail call fastcc i32 @decon_conf_irq(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @decon_irq_handler, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup59_crit_edge, label %if.end30

if.end26.cleanup59_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup59

if.end30:                                         ; preds = %if.end26
  %irq_lcd_sys = getelementptr inbounds %struct.decon_context, ptr %call.i, i32 0, i32 11
  %40 = ptrtoint ptr %irq_lcd_sys to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call27, ptr %irq_lcd_sys, align 4
  %call31 = tail call fastcc i32 @decon_conf_irq(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @decon_te_irq_handler, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.cleanup59_crit_edge, label %if.end34

if.end30.cleanup59_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup59

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool35.not = icmp eq i32 %call31, 0
  br i1 %tobool35.not, label %if.end34.if.end39_crit_edge, label %if.then36

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %te_irq = getelementptr inbounds %struct.decon_context, ptr %call.i, i32 0, i32 12
  %41 = ptrtoint ptr %te_irq to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call31, ptr %te_irq, align 8
  %42 = ptrtoint ptr %out_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %out_type, align 4
  %and38 = and i32 %43, -2
  store i32 %and38, ptr %out_type, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end34.if.end39_crit_edge
  %44 = ptrtoint ptr %out_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %out_type, align 4
  %and41 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end54_crit_edge, label %if.then43

if.end39.if.end54_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then43:                                        ; preds = %if.end39
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %46 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node, align 8
  %call44 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %47, ptr noundef nonnull @.str.5) #5
  %sysreg = getelementptr inbounds %struct.decon_context, ptr %call.i, i32 0, i32 7
  %48 = ptrtoint ptr %sysreg to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call44, ptr %sysreg, align 8
  %cmp.i111 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %do.end50, label %if.then43.if.end54_crit_edge

if.then43.if.end54_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.end50:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #8
  %49 = ptrtoint ptr %sysreg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sysreg, align 8
  %51 = ptrtoint ptr %50 to i32
  br label %cleanup59

if.end54:                                         ; preds = %if.then43.if.end54_crit_edge, %if.end39.if.end54_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call55 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @decon_component_ops) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end54.cleanup59_crit_edge, label %err_disable_pm_runtime

if.end54.cleanup59_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup59

err_disable_pm_runtime:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  br label %cleanup59

cleanup59:                                        ; preds = %err_disable_pm_runtime, %if.end54.cleanup59_crit_edge, %do.end50, %if.end30.cleanup59_crit_edge, %if.end26.cleanup59_crit_edge, %if.end22.cleanup59_crit_edge, %if.then19, %cleanup.thread, %entry.cleanup59_crit_edge
  %retval.2 = phi i32 [ %38, %if.then19 ], [ %51, %do.end50 ], [ %call55, %err_disable_pm_runtime ], [ -12, %entry.cleanup59_crit_edge ], [ %call23, %if.end22.cleanup59_crit_edge ], [ %call27, %if.end26.cleanup59_crit_edge ], [ %call31, %if.end30.cleanup59_crit_edge ], [ 0, %if.end54.cleanup59_crit_edge ], [ %8, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5433_decon_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @decon_component_ops) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decon_conf_irq(ptr noundef %ctx, ptr noundef %name, ptr noundef %handler, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %add.ptr, ptr noundef %name) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end [
    i32 -517, label %if.then.cleanup_crit_edge
    i32 -61, label %if.then.sw.bb1_crit_edge
    i32 -6, label %if.then.sw.bb1_crit_edge27
  ]

if.then.sw.bb1_crit_edge27:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

if.then.sw.bb1_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %if.then.sw.bb1_crit_edge, %if.then.sw.bb1_crit_edge27
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 8
  %or = or i32 %flags, 524288
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %call, ptr noundef %handler, ptr noundef null, i32 noundef %or, ptr noundef nonnull @.str.23, ptr noundef %ctx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %do.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.25, ptr noundef %name) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end.cleanup_crit_edge, %do.end, %sw.bb1, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %sw.bb1 ], [ %call.i, %do.end9 ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decon_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.decon_context, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 548
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !95
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  %and = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %4 = shl nuw nsw i32 %and, 24
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #5, !srcloc !98
  %out_type = getelementptr inbounds %struct.decon_context, ptr %dev_id, i32 0, i32 13
  %7 = ptrtoint ptr %out_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out_type, align 4
  %and4 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body.if.end16_crit_edge, label %if.then6

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then6:                                         ; preds = %do.body
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %12 = and i32 %11, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %12)
  %cmp = icmp eq i32 %12, 48
  br i1 %cmp, label %if.then6.cleanup_crit_edge, label %if.then6.if.end16_crit_edge

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.then6.if.end16_crit_edge, %do.body.if.end16_crit_edge
  %vblank_lock.i = getelementptr inbounds %struct.decon_context, ptr %dev_id, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %vblank_lock.i) #5
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 5140
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !95
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr, align 4
  %add.ptr5.peel.i.i = getelementptr i8, ptr %18, i32 8192
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.peel.i.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr, align 4
  %add.ptr12.peel.i.i = getelementptr i8, ptr %21, i32 5140
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.peel.i.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %15)
  %cmp.not.peel.i.i = icmp eq i32 %22, %15
  br i1 %cmp.not.peel.i.i, label %if.end16.do.end.i.i_crit_edge, label %do.end.loopexit.i.i

if.end16.do.end.i.i_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

do.end.loopexit.i.i:                              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addr, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %24, i32 8192
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %27, i32 5140
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.loopexit.i.i, %if.end16.do.end.i.i_crit_edge
  %.lcssa6.i.i = phi i32 [ %19, %if.end16.do.end.i.i_crit_edge ], [ %25, %do.end.loopexit.i.i ]
  %.lcssa5.i.i = phi i32 [ %15, %if.end16.do.end.i.i_crit_edge ], [ %28, %do.end.loopexit.i.i ]
  %.lcssa.i.i = phi i32 [ %16, %if.end16.do.end.i.i_crit_edge ], [ %29, %do.end.loopexit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa5.i.i)
  %tobool16.not.i.i = icmp eq i32 %.lcssa5.i.i, 0
  br i1 %tobool16.not.i.i, label %do.end.i.i.decon_get_frame_count.exit.i_crit_edge, label %if.end.i.i

do.end.i.i.decon_get_frame_count.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %decon_get_frame_count.exit.i

if.end.i.i:                                       ; preds = %do.end.i.i
  %30 = lshr i32 %.lcssa6.i.i, 21
  %and.i.i = and i32 %30, 7
  %31 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %and.i.i, label %if.end.i.i.decon_get_frame_count.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb20.i.i
    i32 4, label %if.end.i.i.if.then24.i.i_crit_edge
    i32 2, label %if.end.i.i.if.then24.i.i_crit_edge27
  ]

if.end.i.i.if.then24.i.i_crit_edge27:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i.i

if.end.i.i.if.then24.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i.i

if.end.i.i.decon_get_frame_count.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %decon_get_frame_count.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %crtc.i.i = getelementptr inbounds %struct.decon_context, ptr %dev_id, i32 0, i32 3
  %32 = ptrtoint ptr %crtc.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crtc.i.i, align 4
  %i80_mode.i.i = getelementptr inbounds %struct.exynos_drm_crtc, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %i80_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i.i = load i8, ptr %i80_mode.i.i, align 8
  %bf.load.lobit.i.i = ashr i8 %bf.load.i.i, 7
  %35 = xor i8 %bf.load.lobit.i.i, -1
  %.not.i.i = sext i8 %35 to i32
  %spec.select.i.i = add i32 %.lcssa.i.i, %.not.i.i
  br label %decon_get_frame_count.exit.i

sw.bb20.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dec21.i.i = add i32 %.lcssa.i.i, -1
  br label %decon_get_frame_count.exit.i

if.then24.i.i:                                    ; preds = %if.end.i.i.if.then24.i.i_crit_edge, %if.end.i.i.if.then24.i.i_crit_edge27
  %dec25.i.i = add i32 %.lcssa.i.i, -1
  br label %decon_get_frame_count.exit.i

decon_get_frame_count.exit.i:                     ; preds = %if.then24.i.i, %sw.bb20.i.i, %sw.bb.i.i, %if.end.i.i.decon_get_frame_count.exit.i_crit_edge, %do.end.i.i.decon_get_frame_count.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i.decon_get_frame_count.exit.i_crit_edge ], [ %.lcssa.i.i, %if.end.i.i.decon_get_frame_count.exit.i_crit_edge ], [ %dec25.i.i, %if.then24.i.i ], [ %dec21.i.i, %sw.bb20.i.i ], [ %spec.select.i.i, %sw.bb.i.i ]
  %frame_id.i = getelementptr inbounds %struct.decon_context, ptr %dev_id, i32 0, i32 16
  %36 = ptrtoint ptr %frame_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %frame_id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %37)
  %cmp.not.i = icmp eq i32 %retval.0.i.i, %37
  br i1 %cmp.not.i, label %decon_get_frame_count.exit.i.decon_handle_vblank.exit_crit_edge, label %if.then.i

decon_get_frame_count.exit.i.decon_handle_vblank.exit_crit_edge: ; preds = %decon_get_frame_count.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %decon_handle_vblank.exit

if.then.i:                                        ; preds = %decon_get_frame_count.exit.i
  %sub.i = sub i32 %retval.0.i.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp2.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %crtc.i = getelementptr inbounds %struct.decon_context, ptr %dev_id, i32 0, i32 3
  %38 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %crtc.i, align 4
  %call4.i = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %39) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %40 = ptrtoint ptr %frame_id.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i.i, ptr %frame_id.i, align 8
  br label %decon_handle_vblank.exit

decon_handle_vblank.exit:                         ; preds = %if.end.i, %decon_get_frame_count.exit.i.decon_handle_vblank.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %vblank_lock.i) #5
  br label %cleanup

cleanup:                                          ; preds = %decon_handle_vblank.exit, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decon_te_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr inbounds %struct.decon_context, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %3 = or i32 %2, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %3) #5, !srcloc !98
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decon_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm_dev1 = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm_dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %drm_dev1, align 4
  %first_win = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %first_win to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %first_win, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp70 = icmp ult i32 %4, 5
  br i1 %cmp70, label %for.body, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.body.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %for.cond
  %arrayidx.1 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc
  %pixel_formats.1 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc, i32 2
  %5 = ptrtoint ptr %pixel_formats.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @decon_formats, ptr %pixel_formats.1, align 4
  %num_pixel_formats.1 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc, i32 3
  %6 = ptrtoint ptr %num_pixel_formats.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %num_pixel_formats.1, align 4
  %7 = ptrtoint ptr %first_win to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %first_win, align 8
  %sub.1 = sub i32 %inc, %8
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.1, ptr %arrayidx.1, align 4
  %arrayidx7.1 = getelementptr [5 x i32], ptr @decon_win_types, i32 0, i32 %inc
  %10 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7.1, align 4
  %type.1 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc, i32 1
  %12 = ptrtoint ptr %type.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %type.1, align 4
  %arrayidx10.1 = getelementptr [5 x i32], ptr @capabilities, i32 0, i32 %inc
  %13 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10.1, align 4
  %capabilities.1 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc, i32 4
  %15 = ptrtoint ptr %capabilities.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %capabilities.1, align 4
  %arrayidx13.1 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 4, i32 %inc
  %call16.1 = tail call i32 @exynos_plane_init(ptr noundef %data, ptr noundef %arrayidx13.1, i32 noundef %inc, ptr noundef %arrayidx.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1)
  %tobool.not.1 = icmp eq i32 %call16.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.body.1.cleanup_crit_edge

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %for.body.1
  %inc.1 = add i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc.1)
  %exitcond.not.1 = icmp eq i32 %inc.1, 5
  br i1 %exitcond.not.1, label %for.cond.1.for.end_crit_edge, label %for.body.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.2:                                       ; preds = %for.cond.1
  %arrayidx.2 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.1
  %pixel_formats.2 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.1, i32 2
  %16 = ptrtoint ptr %pixel_formats.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @decon_formats, ptr %pixel_formats.2, align 4
  %num_pixel_formats.2 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.1, i32 3
  %17 = ptrtoint ptr %num_pixel_formats.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %num_pixel_formats.2, align 4
  %18 = ptrtoint ptr %first_win to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %first_win, align 8
  %sub.2 = sub i32 %inc.1, %19
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.2, ptr %arrayidx.2, align 4
  %arrayidx7.2 = getelementptr [5 x i32], ptr @decon_win_types, i32 0, i32 %inc.1
  %21 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx7.2, align 4
  %type.2 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.1, i32 1
  %23 = ptrtoint ptr %type.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %type.2, align 4
  %arrayidx10.2 = getelementptr [5 x i32], ptr @capabilities, i32 0, i32 %inc.1
  %24 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx10.2, align 4
  %capabilities.2 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.1, i32 4
  %26 = ptrtoint ptr %capabilities.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %capabilities.2, align 4
  %arrayidx13.2 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 4, i32 %inc.1
  %call16.2 = tail call i32 @exynos_plane_init(ptr noundef %data, ptr noundef %arrayidx13.2, i32 noundef %inc.1, ptr noundef %arrayidx.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.2)
  %tobool.not.2 = icmp eq i32 %call16.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.body.2.cleanup_crit_edge

for.body.2.cleanup_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.2:                                       ; preds = %for.body.2
  %inc.2 = add i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc.2)
  %exitcond.not.2 = icmp eq i32 %inc.2, 5
  br i1 %exitcond.not.2, label %for.cond.2.for.end_crit_edge, label %for.body.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %arrayidx.3 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.2
  %pixel_formats.3 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.2, i32 2
  %27 = ptrtoint ptr %pixel_formats.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @decon_formats, ptr %pixel_formats.3, align 4
  %num_pixel_formats.3 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.2, i32 3
  %28 = ptrtoint ptr %num_pixel_formats.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %num_pixel_formats.3, align 4
  %29 = ptrtoint ptr %first_win to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %first_win, align 8
  %sub.3 = sub i32 %inc.2, %30
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.3, ptr %arrayidx.3, align 4
  %arrayidx7.3 = getelementptr [5 x i32], ptr @decon_win_types, i32 0, i32 %inc.2
  %32 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx7.3, align 4
  %type.3 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.2, i32 1
  %34 = ptrtoint ptr %type.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %type.3, align 4
  %arrayidx10.3 = getelementptr [5 x i32], ptr @capabilities, i32 0, i32 %inc.2
  %35 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx10.3, align 4
  %capabilities.3 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.2, i32 4
  %37 = ptrtoint ptr %capabilities.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %capabilities.3, align 4
  %arrayidx13.3 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 4, i32 %inc.2
  %call16.3 = tail call i32 @exynos_plane_init(ptr noundef %data, ptr noundef %arrayidx13.3, i32 noundef %inc.2, ptr noundef %arrayidx.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.3)
  %tobool.not.3 = icmp eq i32 %call16.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.body.3.cleanup_crit_edge

for.body.3.cleanup_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.3:                                       ; preds = %for.body.3
  %inc.3 = add i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc.3)
  %exitcond.not.3 = icmp eq i32 %inc.3, 5
  br i1 %exitcond.not.3, label %for.cond.3.for.end_crit_edge, label %for.body.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.4:                                       ; preds = %for.cond.3
  %arrayidx.4 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.3
  %pixel_formats.4 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.3, i32 2
  %38 = ptrtoint ptr %pixel_formats.4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @decon_formats, ptr %pixel_formats.4, align 4
  %num_pixel_formats.4 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.3, i32 3
  %39 = ptrtoint ptr %num_pixel_formats.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %num_pixel_formats.4, align 4
  %40 = ptrtoint ptr %first_win to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %first_win, align 8
  %sub.4 = sub i32 %inc.3, %41
  %42 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.4, ptr %arrayidx.4, align 4
  %arrayidx7.4 = getelementptr [5 x i32], ptr @decon_win_types, i32 0, i32 %inc.3
  %43 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx7.4, align 4
  %type.4 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.3, i32 1
  %45 = ptrtoint ptr %type.4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %type.4, align 4
  %arrayidx10.4 = getelementptr [5 x i32], ptr @capabilities, i32 0, i32 %inc.3
  %46 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx10.4, align 4
  %capabilities.4 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %inc.3, i32 4
  %48 = ptrtoint ptr %capabilities.4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %capabilities.4, align 4
  %arrayidx13.4 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 4, i32 %inc.3
  %call16.4 = tail call i32 @exynos_plane_init(ptr noundef %data, ptr noundef %arrayidx13.4, i32 noundef %inc.3, ptr noundef %arrayidx.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.4)
  %tobool.not.4 = icmp eq i32 %call16.4, 0
  br i1 %tobool.not.4, label %for.body.4.for.end_crit_edge, label %for.body.4.cleanup_crit_edge

for.body.4.cleanup_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %4
  %pixel_formats = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %4, i32 2
  %49 = ptrtoint ptr %pixel_formats to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @decon_formats, ptr %pixel_formats, align 4
  %num_pixel_formats = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %4, i32 3
  %50 = ptrtoint ptr %num_pixel_formats to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %num_pixel_formats, align 4
  %51 = ptrtoint ptr %first_win to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %first_win, align 8
  %sub = sub i32 %4, %52
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr [5 x i32], ptr @decon_win_types, i32 0, i32 %4
  %54 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx7, align 4
  %type = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %4, i32 1
  %56 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %type, align 4
  %arrayidx10 = getelementptr [5 x i32], ptr @capabilities, i32 0, i32 %4
  %57 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx10, align 4
  %capabilities = getelementptr %struct.decon_context, ptr %1, i32 0, i32 5, i32 %4, i32 4
  %59 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %capabilities, align 4
  %arrayidx13 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 4, i32 %4
  %call16 = tail call i32 @exynos_plane_init(ptr noundef %data, ptr noundef %arrayidx13, i32 noundef %4, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %for.body.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %arrayidx18 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 4, i32 2
  %out_type19 = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 13
  %60 = ptrtoint ptr %out_type19 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %out_type19, align 4
  %and = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool20.not, i32 1, i32 2
  %call21 = tail call ptr @exynos_drm_crtc_create(ptr noundef %data, ptr noundef %arrayidx18, i32 noundef %cond, ptr noundef nonnull @decon_crtc_ops, ptr noundef %1) #5
  %crtc = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 3
  %62 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call21, ptr %crtc, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end27

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %for.end
  %ctx1.i = getelementptr inbounds %struct.exynos_drm_crtc, ptr %call21, i32 0, i32 3
  %64 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx1.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end27
  %i.034.i = phi i32 [ 0, %if.end27 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.decon_context, ptr %65, i32 0, i32 8, i32 %i.034.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %67) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.clk_prepare_enable.exit.i_crit_edge

for.body.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %67) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.for.inc.i_crit_edge, label %if.then3.i.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %67) #5
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %for.body.i.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %for.body.i.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp2.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp2.i, label %err.i, label %clk_prepare_enable.exit.i.for.inc.i_crit_edge

clk_prepare_enable.exit.i.for.inc.i_crit_edge:    ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %clk_prepare_enable.exit.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %err.thread.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

err.thread.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr.i.i.i = getelementptr inbounds %struct.decon_context, ptr %65, i32 0, i32 6
  %68 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %69, i32 160
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %71 = or i32 %70, 8126464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %72 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %73, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %71) #5, !srcloc !98
  %74 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %75, i32 32
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %77 = and i32 %76, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %78 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %79, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %77) #5, !srcloc !98
  %80 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %81, i32 36
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %83 = and i32 %82, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr4.i.1.i = getelementptr i8, ptr %85, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.1.i, i32 %83) #5, !srcloc !98
  %86 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %87, i32 40
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %89 = and i32 %88, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr4.i.2.i = getelementptr i8, ptr %91, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.2.i, i32 %89) #5, !srcloc !98
  %92 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %93, i32 44
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %95 = and i32 %94, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr4.i.3.i = getelementptr i8, ptr %97, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.3.i, i32 %95) #5, !srcloc !98
  %98 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr.i.4.i = getelementptr i8, ptr %99, i32 48
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %101 = and i32 %100, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr4.i.4.i = getelementptr i8, ptr %103, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.4.i, i32 %101) #5, !srcloc !98
  %104 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr.i.i24.i = getelementptr i8, ptr %105, i32 160
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %107 = and i32 %106, -8126465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr4.i.i25.i = getelementptr i8, ptr %109, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i25.i, i32 %107) #5, !srcloc !98
  %110 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %111, i32 5136
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %113 = or i32 %112, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %114 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr4.i29.i = getelementptr i8, ptr %115, i32 5136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i29.i, i32 %113) #5, !srcloc !98
  tail call void @msleep(i32 noundef 50) #5
  br label %while.body.i.preheader

err.i:                                            ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.034.i)
  %cmp938.not.i = icmp eq i32 %i.034.i, 0
  br i1 %cmp938.not.i, label %err.i.decon_clear_channels.exit_crit_edge, label %err.i.while.body.i.preheader_crit_edge

err.i.while.body.i.preheader_crit_edge:           ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.preheader

err.i.decon_clear_channels.exit_crit_edge:        ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %decon_clear_channels.exit

while.body.i.preheader:                           ; preds = %err.i.while.body.i.preheader_crit_edge, %err.thread.i
  %dec39.in.i.ph = phi i32 [ %i.034.i, %err.i.while.body.i.preheader_crit_edge ], [ 10, %err.thread.i ]
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %dec39.in.i = phi i32 [ %dec39.i, %while.body.i.while.body.i_crit_edge ], [ %dec39.in.i.ph, %while.body.i.preheader ]
  %dec39.i = add nsw i32 %dec39.in.i, -1
  %arrayidx11.i = getelementptr %struct.decon_context, ptr %65, i32 0, i32 8, i32 %dec39.i
  %116 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx11.i, align 4
  tail call void @clk_disable(ptr noundef %117) #5
  tail call void @clk_unprepare(ptr noundef %117) #5
  %cmp9.i = icmp sgt i32 %dec39.in.i, 1
  br i1 %cmp9.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.decon_clear_channels.exit_crit_edge

while.body.i.decon_clear_channels.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %decon_clear_channels.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

decon_clear_channels.exit:                        ; preds = %while.body.i.decon_clear_channels.exit_crit_edge, %err.i.decon_clear_channels.exit_crit_edge
  %dma_priv = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 2
  %call29 = tail call i32 @exynos_drm_register_dma(ptr noundef %data, ptr noundef %dev, ptr noundef %dma_priv) #5
  br label %cleanup

cleanup:                                          ; preds = %decon_clear_channels.exit, %if.then24, %for.body.cleanup_crit_edge, %for.body.4.cleanup_crit_edge, %for.body.3.cleanup_crit_edge, %for.body.2.cleanup_crit_edge, %for.body.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %63, %if.then24 ], [ %call29, %decon_clear_channels.exit ], [ %call16, %for.body.cleanup_crit_edge ], [ %call16.1, %for.body.1.cleanup_crit_edge ], [ %call16.2, %for.body.2.cleanup_crit_edge ], [ %call16.3, %for.body.3.cleanup_crit_edge ], [ %call16.4, %for.body.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @decon_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %crtc = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  tail call void @decon_atomic_disable(ptr noundef %3)
  %drm_dev = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm_dev, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %dma_priv = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 2
  tail call void @exynos_drm_unregister_dma(ptr noundef %5, ptr noundef %7, ptr noundef %dma_priv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_crtc_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_register_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @decon_atomic_enable(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #5
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #5, !srcloc !106
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !107
  br label %if.then

if.then:                                          ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.27) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %pipe_clk.i = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 4
  %7 = ptrtoint ptr %pipe_clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe_clk.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.exynos_drm_pipe_clk_enable.exit_crit_edge, label %if.then.i9

if.end.exynos_drm_pipe_clk_enable.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_drm_pipe_clk_enable.exit

if.then.i9:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void %10(ptr noundef nonnull %8, i1 noundef zeroext true) #5
  br label %exynos_drm_pipe_clk_enable.exit

exynos_drm_pipe_clk_enable.exit:                  ; preds = %if.then.i9, %if.end.exynos_drm_pipe_clk_enable.exit_crit_edge
  tail call fastcc void @decon_swreset(ptr noundef %1)
  %crtc3 = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %crtc3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crtc3, align 4
  %ctx1.i = getelementptr inbounds %struct.exynos_drm_crtc, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx1.i, align 8
  %out_type.i = getelementptr inbounds %struct.decon_context, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %out_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out_type.i, align 4
  %and.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i10 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i10, label %exynos_drm_pipe_clk_enable.exit.if.end15.i_crit_edge, label %if.then.i11

exynos_drm_pipe_clk_enable.exit.if.end15.i_crit_edge: ; preds = %exynos_drm_pipe_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

if.then.i11:                                      ; preds = %exynos_drm_pipe_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 13
  %17 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %crtc_hdisplay.i, align 4
  %add.i = add i16 %18, 10
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 16
  %19 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %add.i, ptr %crtc_hsync_start.i, align 2
  %crtc_htotal.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 18
  %20 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %crtc_htotal.i, align 2
  %sub.i = add i16 %21, -92
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 17
  %22 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %sub.i, ptr %crtc_hsync_end.i, align 4
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 20
  %23 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %crtc_vdisplay.i, align 2
  %add6.i = add i16 %24, 1
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 23
  %25 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %add6.i, ptr %crtc_vsync_start.i, align 4
  %add10.i = add i16 %24, 2
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 24
  %26 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %add10.i, ptr %crtc_vsync_end.i, align 2
  %flags.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 11
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %and12.i = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp ne i32 %and12.i, 0
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then.i11, %exynos_drm_pipe_clk_enable.exit.if.end15.i_crit_edge
  %interlaced.0.off0.i = phi i1 [ false, %exynos_drm_pipe_clk_enable.exit.if.end15.i_crit_edge ], [ %tobool13.not.i, %if.then.i11 ]
  %crtc.i.i = getelementptr inbounds %struct.decon_context, ptr %14, i32 0, i32 3
  %29 = ptrtoint ptr %crtc.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %crtc.i.i, align 4
  %i80_mode.i.i = getelementptr inbounds %struct.exynos_drm_crtc, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %i80_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i = load i8, ptr %i80_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %bf.cast.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %bf.cast.not.i.i, label %land.lhs.true.i.i, label %if.end15.i.if.end.i.i_crit_edge

if.end15.i.if.end.i.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end15.i
  %32 = ptrtoint ptr %out_type.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %out_type.i, align 4
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.decon_setup_trigger.exit.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i.decon_setup_trigger.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %decon_setup_trigger.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end15.i.if.end.i.i_crit_edge
  %34 = ptrtoint ptr %out_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %out_type.i, align 4
  %and2.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %addr.i.i = getelementptr inbounds %struct.decon_context, ptr %14, i32 0, i32 6
  %36 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 8256
  br i1 %tobool3.not.i.i, label %do.body.i.i, label %do.body6.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777440) #5, !srcloc !98
  br label %decon_setup_trigger.exit.i

do.body6.i.i:                                     ; preds = %if.end.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 402653376) #5, !srcloc !98
  %sysreg.i.i = getelementptr inbounds %struct.decon_context, ptr %14, i32 0, i32 7
  %38 = ptrtoint ptr %sysreg.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sysreg.i.i, align 8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 4100, i32 noundef 8192, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool10.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool10.not.i.i, label %do.body6.i.i.decon_setup_trigger.exit.i_crit_edge, label %if.then11.i.i

do.body6.i.i.decon_setup_trigger.exit.i_crit_edge: ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %decon_setup_trigger.exit.i

if.then11.i.i:                                    ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %41, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.29) #5
  br label %decon_setup_trigger.exit.i

decon_setup_trigger.exit.i:                       ; preds = %if.then11.i.i, %do.body6.i.i.decon_setup_trigger.exit.i_crit_edge, %do.body.i.i, %land.lhs.true.i.i.decon_setup_trigger.exit.i_crit_edge
  %spec.select174.i = select i1 %interlaced.0.off0.i, i32 285212672, i32 16777216
  %i80_mode.i = getelementptr inbounds %struct.exynos_drm_crtc, ptr %12, i32 0, i32 5
  %42 = ptrtoint ptr %i80_mode.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i = load i8, ptr %i80_mode.i, align 8
  %or20.i = or i32 %spec.select174.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %bf.cast.not181.i = icmp slt i8 %bf.load.i, 0
  %val.1.i = select i1 %bf.cast.not181.i, i32 %or20.i, i32 %spec.select174.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %43 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #5
  %addr.i = getelementptr inbounds %struct.decon_context, ptr %14, i32 0, i32 6
  %44 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %43) #5, !srcloc !98
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 6
  %46 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vdisplay.i, align 2
  %48 = zext i1 %interlaced.0.off0.i to i16
  %.sink.i = lshr i16 %47, %48
  %narrow.i = add i16 %.sink.i, 4095
  %49 = and i16 %narrow.i, 4095
  %and27.i = zext i16 %49 to i32
  %shl.i = shl nuw nsw i32 %and27.i, 16
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 1
  %50 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %hdisplay.i, align 4
  %52 = add i16 %51, 4095
  %53 = and i16 %52, 4095
  %and30.i = zext i16 %53 to i32
  %or31.i = or i32 %shl.i, %and30.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %54 = tail call i32 @llvm.bswap.i32(i32 %or31.i) #5
  %55 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %addr.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %56, i32 8232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %54) #5, !srcloc !98
  %57 = ptrtoint ptr %i80_mode.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load50.i = load i8, ptr %i80_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load50.i)
  %bf.cast52.not.i = icmp sgt i8 %bf.load50.i, -1
  br i1 %bf.cast52.not.i, label %if.then53.i, label %decon_setup_trigger.exit.i.decon_commit.exit_crit_edge

decon_setup_trigger.exit.i.decon_commit.exit_crit_edge: ; preds = %decon_setup_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %decon_commit.exit

if.then53.i:                                      ; preds = %decon_setup_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 25
  %58 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %crtc_vtotal.i, align 4
  %conv54.i = zext i16 %59 to i32
  %crtc_vsync_end55.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 24
  %60 = ptrtoint ptr %crtc_vsync_end55.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %crtc_vsync_end55.i, align 2
  %conv56.i = zext i16 %61 to i32
  %sub57.i = sub nsw i32 %conv54.i, %conv56.i
  %crtc_vsync_start58.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 23
  %62 = ptrtoint ptr %crtc_vsync_start58.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %crtc_vsync_start58.i, align 4
  %conv59.i = zext i16 %63 to i32
  %crtc_vdisplay60.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 20
  %64 = ptrtoint ptr %crtc_vdisplay60.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %crtc_vdisplay60.i, align 2
  %conv61.i = zext i16 %65 to i32
  %div65.i = sdiv i32 %sub57.i, 2
  %sub66.i = add nsw i32 %div65.i, 4095
  %vbp.0.i = select i1 %interlaced.0.off0.i, i32 %sub66.i, i32 %sub57.i
  %sub68.i = shl i32 %vbp.0.i, 16
  %and69.i = add i32 %sub68.i, 268369920
  %shl70.i = and i32 %and69.i, 268369920
  %66 = xor i32 %conv61.i, -1
  %sub71.i = add nsw i32 %66, %conv59.i
  %and72.i = and i32 %sub71.i, 4095
  %or73.i = or i32 %shl70.i, %and72.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %67 = tail call i32 @llvm.bswap.i32(i32 %or73.i) #5
  %68 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %addr.i, align 4
  %add.ptr78.i = getelementptr i8, ptr %69, i32 8208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 %67) #5, !srcloc !98
  %70 = ptrtoint ptr %crtc_vsync_end55.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %crtc_vsync_end55.i, align 2
  %conv80.i = zext i16 %71 to i32
  %72 = ptrtoint ptr %crtc_vsync_start58.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %crtc_vsync_start58.i, align 4
  %conv82.i = zext i16 %73 to i32
  %74 = xor i32 %conv82.i, -1
  %sub84.i = add nsw i32 %74, %conv80.i
  %and85.i = shl i32 %sub84.i, 16
  %shl86.i = and i32 %and85.i, 268369920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %75 = tail call i32 @llvm.bswap.i32(i32 %shl86.i) #5
  %76 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %addr.i, align 4
  %add.ptr91.i = getelementptr i8, ptr %77, i32 8212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.i, i32 %75) #5, !srcloc !98
  %crtc_htotal92.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 18
  %78 = ptrtoint ptr %crtc_htotal92.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %crtc_htotal92.i, align 2
  %conv93.i = zext i16 %79 to i32
  %crtc_hsync_end94.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 17
  %80 = ptrtoint ptr %crtc_hsync_end94.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %crtc_hsync_end94.i, align 4
  %conv95.i = zext i16 %81 to i32
  %82 = xor i32 %conv95.i, -1
  %sub97.i = add nsw i32 %82, %conv93.i
  %and98.i = shl i32 %sub97.i, 16
  %shl99.i = and i32 %and98.i, 268369920
  %crtc_hsync_start100.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 16
  %83 = ptrtoint ptr %crtc_hsync_start100.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %crtc_hsync_start100.i, align 2
  %conv101.i = zext i16 %84 to i32
  %crtc_hdisplay102.i = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 13
  %85 = ptrtoint ptr %crtc_hdisplay102.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %crtc_hdisplay102.i, align 4
  %conv103.i = zext i16 %86 to i32
  %87 = xor i32 %conv103.i, -1
  %sub105.i = add nsw i32 %87, %conv101.i
  %and106.i = and i32 %sub105.i, 4095
  %or107.i = or i32 %and106.i, %shl99.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %88 = tail call i32 @llvm.bswap.i32(i32 %or107.i) #5
  %89 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %addr.i, align 4
  %add.ptr112.i = getelementptr i8, ptr %90, i32 8216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112.i, i32 %88) #5, !srcloc !98
  %91 = ptrtoint ptr %crtc_hsync_end94.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %crtc_hsync_end94.i, align 4
  %conv114.i = zext i16 %92 to i32
  %93 = ptrtoint ptr %crtc_hsync_start100.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %crtc_hsync_start100.i, align 2
  %conv116.i = zext i16 %94 to i32
  %95 = xor i32 %conv116.i, -1
  %sub118.i = add nsw i32 %95, %conv114.i
  %and119.i = shl i32 %sub118.i, 16
  %shl120.i = and i32 %and119.i, 268369920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %96 = tail call i32 @llvm.bswap.i32(i32 %shl120.i) #5
  %97 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %addr.i, align 4
  %add.ptr125.i = getelementptr i8, ptr %98, i32 8220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125.i, i32 %96) #5, !srcloc !98
  br label %decon_commit.exit

decon_commit.exit:                                ; preds = %if.then53.i, %decon_setup_trigger.exit.i.decon_commit.exit_crit_edge
  %99 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %addr.i, align 4
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %102 = or i32 %101, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %103 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #5, !srcloc !98
  %105 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %addr.i, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %106, i32 5136
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i178.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %108 = or i32 %107, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %109 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %addr.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %110, i32 5136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %108) #5, !srcloc !98
  br label %cleanup

cleanup:                                          ; preds = %decon_commit.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @decon_atomic_disable(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %out_type = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %out_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_type, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %te_irq = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %te_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %te_irq, align 8
  tail call void @synchronize_irq(i32 noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %7) #5
  %first_win = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %first_win to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %first_win, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp12 = icmp slt i32 %9, 5
  br i1 %cmp12, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %9, %if.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx1, align 8
  %index.i = getelementptr %struct.decon_context, ptr %1, i32 0, i32 4, i32 %i.013, i32 2
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  %mul.i = shl i32 %13, 2
  %add.i = add i32 %mul.i, 32
  %addr.i.i = getelementptr inbounds %struct.decon_context, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %add.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %17 = and i32 %16, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %19, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %17) #5, !srcloc !98
  %inc = add i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call fastcc void @decon_swreset(ptr noundef %1)
  %pipe_clk.i = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 4
  %20 = ptrtoint ptr %pipe_clk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pipe_clk.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %for.end.exynos_drm_pipe_clk_enable.exit_crit_edge, label %if.then.i

for.end.exynos_drm_pipe_clk_enable.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_drm_pipe_clk_enable.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void %23(ptr noundef nonnull %21, i1 noundef zeroext false) #5
  br label %exynos_drm_pipe_clk_enable.exit

exynos_drm_pipe_clk_enable.exit:                  ; preds = %if.then.i, %for.end.exynos_drm_pipe_clk_enable.exit_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %25, i32 noundef 4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decon_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %i80_mode = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 5
  %2 = ptrtoint ptr %i80_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %i80_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  %. = select i1 %bf.cast.not, i32 102401, i32 131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %.)
  %addr = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #5, !srcloc !98
  %irq = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %7) #5
  %out_type = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %out_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out_type, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %te_irq = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %te_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %te_irq, align 8
  tail call void @enable_irq(i32 noundef %11) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @decon_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %out_type = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %out_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_type, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %te_irq = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %te_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %te_irq, align 8
  tail call void @disable_irq_nosync(i32 noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %7) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %addr = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !98
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decon_mode_valid(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %i80_mode = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 5
  %2 = ptrtoint ptr %i80_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %i80_mode, align 8
  %irq_lcd_sys = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 11
  %irq_vsync = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %bf.cast.not14 = icmp slt i8 %bf.load, 0
  %cond.in = select i1 %bf.cast.not14, ptr %irq_lcd_sys, ptr %irq_vsync
  %3 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %cond = load i32, ptr %cond.in, align 4
  %irq = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool.not = icmp eq i32 %cond, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = ptrtoint ptr %i80_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load4 = load i8, ptr %i80_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load4)
  %bf.cast6.not = icmp sgt i8 %bf.load4, -1
  %cond7 = select i1 %bf.cast6.not, ptr @.str.34, ptr @.str.33
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond7) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @decon_atomic_begin(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %addr.i.i = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 160
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %5 = or i32 %4, 8126464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %7, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %5) #5, !srcloc !98
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @decon_update_plane(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %ctx2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %2 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx2, align 8
  %fb4 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %fb4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb4, align 4
  %index = getelementptr inbounds %struct.exynos_drm_plane, ptr %plane, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %format, align 8
  %10 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 2
  %conv = zext i8 %12 to i32
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pitches, align 8
  %call6 = tail call i32 @exynos_drm_fb_dma_addr(ptr noundef %5, i32 noundef 0) #5
  %flags = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 11
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %crtc35 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %crtc35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crtc35, align 4
  %and37 = shl i32 %18, 12
  %shl38 = and i32 %and37, 16773120
  %y40 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %1, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %y40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %y40, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %div200 = lshr i32 %20, 1
  %and11 = and i32 %div200, 4095
  %or = or i32 %and11, %shl38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  %addr = getelementptr inbounds %struct.decon_context, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr, align 4
  %mul = shl i32 %7, 5
  %add = add i32 %mul, 176
  %add.ptr = getelementptr i8, ptr %23, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #5, !srcloc !98
  %24 = ptrtoint ptr %crtc35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc35, align 4
  %w = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %1, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %w, align 4
  %add16 = add i32 %27, %25
  %sub = shl i32 %add16, 12
  %and17 = add i32 %sub, 16773120
  %shl18 = and i32 %and17, 16773120
  %28 = ptrtoint ptr %y40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %y40, align 4
  %h = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %1, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %h, align 4
  %add22 = add i32 %31, %29
  %div23201 = lshr i32 %add22, 1
  %sub24 = add nuw i32 %div23201, 4095
  %and25 = and i32 %sub24, 4095
  %or27 = or i32 %and25, %shl18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %addr, align 4
  %add33 = add i32 %mul, 180
  %add.ptr34 = getelementptr i8, ptr %34, i32 %add33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %32) #5, !srcloc !98
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and41 = and i32 %20, 4095
  %or43 = or i32 %shl38, %and41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %35 = tail call i32 @llvm.bswap.i32(i32 %or43)
  %addr47 = getelementptr inbounds %struct.decon_context, ptr %3, i32 0, i32 6
  %36 = ptrtoint ptr %addr47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr47, align 4
  %mul48 = shl i32 %7, 5
  %add49 = add i32 %mul48, 176
  %add.ptr50 = getelementptr i8, ptr %37, i32 %add49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %35) #5, !srcloc !98
  %38 = ptrtoint ptr %crtc35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %crtc35, align 4
  %w54 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %1, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %w54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %w54, align 4
  %add55 = add i32 %41, %39
  %sub56 = shl i32 %add55, 12
  %and57 = add i32 %sub56, 16773120
  %shl58 = and i32 %and57, 16773120
  %42 = ptrtoint ptr %y40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %y40, align 4
  %h62 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %1, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %h62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %h62, align 4
  %add63 = add i32 %43, 4095
  %sub64 = add i32 %add63, %45
  %and65 = and i32 %sub64, 4095
  %or67 = or i32 %shl58, %and65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %46 = tail call i32 @llvm.bswap.i32(i32 %or67)
  %47 = ptrtoint ptr %addr47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %addr47, align 4
  %add73 = add i32 %mul48, 180
  %add.ptr74 = getelementptr i8, ptr %48, i32 %add73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %46) #5, !srcloc !98
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mul79.pre-phi = phi i32 [ %mul48, %if.else ], [ %mul, %if.then ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %addr78 = getelementptr inbounds %struct.decon_context, ptr %3, i32 0, i32 6
  %49 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %addr78, align 4
  %add80 = add i32 %mul79.pre-phi, 184
  %add.ptr81 = getelementptr i8, ptr %50, i32 %add80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 -256) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %addr78, align 4
  %add87 = add i32 %mul79.pre-phi, 188
  %add.ptr88 = getelementptr i8, ptr %52, i32 %add87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 0) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %53 = tail call i32 @llvm.bswap.i32(i32 %call6)
  %54 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %addr78, align 4
  %mul93 = shl i32 %7, 4
  %add94 = add i32 %mul93, 336
  %add.ptr95 = getelementptr i8, ptr %55, i32 %add94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %53) #5, !srcloc !98
  %h96 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %1, i32 0, i32 2, i32 3
  %56 = ptrtoint ptr %h96 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %h96, align 4
  %mul97 = mul i32 %57, %14
  %add98 = add i32 %mul97, %call6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %58 = tail call i32 @llvm.bswap.i32(i32 %add98)
  %59 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %addr78, align 4
  %add104 = add i32 %mul93, 416
  %add.ptr105 = getelementptr i8, ptr %60, i32 %add104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %58) #5, !srcloc !98
  %out_type = getelementptr inbounds %struct.decon_context, ptr %3, i32 0, i32 13
  %61 = ptrtoint ptr %out_type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %out_type, align 4
  %and106 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  %w110 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %1, i32 0, i32 1, i32 2
  %63 = ptrtoint ptr %w110 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %w110, align 4
  %mul111 = mul i32 %64, %conv
  %sub112 = sub i32 %14, %mul111
  %. = select i1 %tobool107.not, i32 14, i32 15
  %.206 = select i1 %tobool107.not, i32 268419072, i32 1073709056
  %.207 = select i1 %tobool107.not, i32 16383, i32 32767
  %and113 = shl i32 %sub112, %.
  %shl114 = and i32 %and113, %.206
  %and118 = and i32 %mul111, %.207
  %or120 = or i32 %shl114, %and118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %65 = tail call i32 @llvm.bswap.i32(i32 %or120)
  %66 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %addr78, align 4
  %mul139 = shl i32 %7, 2
  %add140 = add i32 %mul139, 512
  %add.ptr141 = getelementptr i8, ptr %67, i32 %add140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %65) #5, !srcloc !98
  %plane.sroa.4.0.arrayidx.sroa_idx.i = getelementptr %struct.decon_context, ptr %3, i32 0, i32 4, i32 %7, i32 0, i32 19
  %68 = ptrtoint ptr %plane.sroa.4.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %plane.sroa.4.0.copyload.i = load ptr, ptr %plane.sroa.4.0.arrayidx.sroa_idx.i, align 4
  %alpha3.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane.sroa.4.0.copyload.i, i32 0, i32 12
  %69 = ptrtoint ptr %alpha3.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %alpha3.i, align 4
  %71 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %format, align 8
  %has_alpha.i = getelementptr inbounds %struct.drm_format_info, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %has_alpha.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %has_alpha.i, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pixel_blend_mode.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane.sroa.4.0.copyload.i, i32 0, i32 13
  %75 = ptrtoint ptr %pixel_blend_mode.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %pixel_blend_mode.i, align 2
  %conv5.i = zext i16 %76 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %pixel_alpha.0.i = phi i32 [ %conv5.i, %if.then.i ], [ 2, %if.end.if.end.i_crit_edge ]
  %77 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %addr78, align 4
  %add.i = add i32 %mul139, 32
  %add.ptr.i = getelementptr i8, ptr %78, i32 %add.i
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !95
  %80 = lshr i32 %79, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  %and.i = and i32 %80, 1
  %81 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %format, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %84, label %sw.default.i [
    i32 892424792, label %if.end.i.sw.epilog.i_crit_edge
    i32 909199186, label %sw.bb12.i
    i32 875713112, label %sw.bb16.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb16.i, %sw.bb12.i, %if.end.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 32820, %sw.default.i ], [ 32812, %sw.bb16.i ], [ 65556, %sw.bb12.i ], [ 65564, %if.end.i.sw.epilog.i_crit_edge ]
  %or22.i = or i32 %.sink.i, %and.i
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %3, align 8
  %88 = getelementptr inbounds %struct.drm_format_info, ptr %82, i32 0, i32 3
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %88, align 2
  %conv26.i = zext i8 %90 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %87, i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %conv26.i) #5
  %width.i = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 9
  %91 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %width.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %92)
  %cmp.i = icmp ult i32 %92, 128
  %or30.i = or i32 %or22.i, 1024
  %val.1.i = select i1 %cmp.i, i32 %or30.i, i32 %or22.i
  %93 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %addr78, align 4
  %add.ptr.i.i = getelementptr i8, ptr %94, i32 %add.i
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !95
  %96 = lshr i32 %95, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %and2.i.i = and i32 %96, 194
  %or.i.i = or i32 %and2.i.i, %val.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %97 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %98 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %addr78, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %99, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %97) #5, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp34.not.i = icmp eq i32 %7, 0
  br i1 %cmp34.not.i, label %sw.epilog.i.decon_win_set_pixfmt.exit_crit_edge, label %if.then36.i

sw.epilog.i.decon_win_set_pixfmt.exit_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %decon_win_set_pixfmt.exit

if.then36.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pixel_alpha.0.i)
  %cond.i.i = icmp eq i32 %pixel_alpha.0.i, 2
  %spec.select.i.i = select i1 %cond.i.i, i32 0, i32 194
  %100 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %addr78, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %101, i32 %add.i
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %103 = and i32 %102, 1040187391
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #5
  %or.i.i.i = or i32 %104, %spec.select.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %105 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #5
  %106 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %addr78, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %107, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %105) #5, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %70)
  %cmp.not.i.i = icmp eq i16 %70, -1
  br i1 %cmp.not.i.i, label %if.then36.i.decon_win_set_bldmod.exit.i_crit_edge, label %if.then.i.i

if.then36.i.decon_win_set_bldmod.exit.i_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %decon_win_set_bldmod.exit.i

if.then.i.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #7
  %108 = lshr i16 %70, 8
  %shr.i.i = zext i16 %108 to i32
  %or8.i.i = mul nuw nsw i32 %shr.i.i, 65793
  %109 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %addr78, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %110, i32 %add80
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i.i) #5, !srcloc !95
  %112 = shl i32 %111, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %or.i24.i.i = or i32 %112, %or8.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %113 = tail call i32 @llvm.bswap.i32(i32 %or.i24.i.i) #5
  %114 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %addr78, align 4
  %add.ptr4.i25.i.i = getelementptr i8, ptr %115, i32 %add80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i25.i.i, i32 %113) #5, !srcloc !98
  %116 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %addr78, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %117, i32 784
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %119 = or i32 %118, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %addr78, align 4
  %add.ptr4.i30.i.i = getelementptr i8, ptr %121, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i30.i.i, i32 %119) #5, !srcloc !98
  br label %decon_win_set_bldmod.exit.i

decon_win_set_bldmod.exit.i:                      ; preds = %if.then.i.i, %if.then36.i.decon_win_set_bldmod.exit.i_crit_edge
  %..i.i = phi i32 [ 193, %if.then36.i.decon_win_set_bldmod.exit.i_crit_edge ], [ 198, %if.then.i.i ]
  %pixel_alpha.off.i.i = add nsw i32 %pixel_alpha.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pixel_alpha.off.i.i)
  %switch.i.i = icmp ult i32 %pixel_alpha.off.i.i, 2
  %val.0.i.i = select i1 %switch.i.i, i32 194, i32 %..i.i
  %add.i71.i = add i32 %mul139, 764
  %122 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %addr78, align 4
  %add.ptr.i.i73.i = getelementptr i8, ptr %123, i32 %add.i71.i
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %125 = and i32 %124, 821886975
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #5
  %or.i.i74.i = or i32 %126, %val.0.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %127 = tail call i32 @llvm.bswap.i32(i32 %or.i.i74.i) #5
  %128 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %addr78, align 4
  %add.ptr4.i.i75.i = getelementptr i8, ptr %129, i32 %add.i71.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i75.i, i32 %127) #5, !srcloc !98
  br label %decon_win_set_pixfmt.exit

decon_win_set_pixfmt.exit:                        ; preds = %decon_win_set_bldmod.exit.i, %sw.epilog.i.decon_win_set_pixfmt.exit_crit_edge
  %130 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %addr78, align 4
  %add.ptr.i203 = getelementptr i8, ptr %131, i32 %add.i
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %133 = or i32 %132, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %134 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %addr78, align 4
  %add.ptr4.i = getelementptr i8, ptr %135, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %133) #5, !srcloc !98
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @decon_disable_plane(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %index = getelementptr inbounds %struct.exynos_drm_plane, ptr %plane, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %mul = shl i32 %3, 2
  %add = add i32 %mul, 32
  %addr.i = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %7) #5, !srcloc !98
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @decon_atomic_flush(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %vblank_lock = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vblank_lock) #5
  %addr.i.i = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 160
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %5 = and i32 %4, -8126465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %7, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %5) #5, !srcloc !98
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 5136
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %11 = or i32 %10, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %13, i32 5136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %11) #5, !srcloc !98
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %15, i32 5140
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #5, !srcloc !95
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr.i.i, align 4
  %add.ptr5.peel.i = getelementptr i8, ptr %19, i32 8192
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.peel.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  %21 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr.i.i, align 4
  %add.ptr12.peel.i = getelementptr i8, ptr %22, i32 5140
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.peel.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %16)
  %cmp.not.peel.i = icmp eq i32 %23, %16
  br i1 %cmp.not.peel.i, label %entry.do.end.i_crit_edge, label %do.end.loopexit.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.loopexit.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %addr.i.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %25, i32 8192
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  %27 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %addr.i.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %28, i32 5140
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.loopexit.i, %entry.do.end.i_crit_edge
  %.lcssa6.i = phi i32 [ %20, %entry.do.end.i_crit_edge ], [ %26, %do.end.loopexit.i ]
  %.lcssa5.i = phi i32 [ %16, %entry.do.end.i_crit_edge ], [ %29, %do.end.loopexit.i ]
  %.lcssa.i = phi i32 [ %17, %entry.do.end.i_crit_edge ], [ %30, %do.end.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa5.i)
  %tobool16.not.i = icmp eq i32 %.lcssa5.i, 0
  br i1 %tobool16.not.i, label %do.end.i.decon_get_frame_count.exit_crit_edge, label %if.end.i

do.end.i.decon_get_frame_count.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %decon_get_frame_count.exit

if.end.i:                                         ; preds = %do.end.i
  %31 = lshr i32 %.lcssa6.i, 21
  %and.i = and i32 %31, 7
  %32 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and.i, label %if.end.i.decon_get_frame_count.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb20.i
    i32 4, label %if.end.i.if.then24.i_crit_edge
    i32 2, label %if.end.i.if.then24.i_crit_edge16
  ]

if.end.i.if.then24.i_crit_edge16:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

if.end.i.if.then24.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

if.end.i.decon_get_frame_count.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %decon_get_frame_count.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %crtc.i = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %crtc.i, align 4
  %i80_mode.i = getelementptr inbounds %struct.exynos_drm_crtc, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %i80_mode.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i = load i8, ptr %i80_mode.i, align 8
  %bf.load.lobit.i = ashr i8 %bf.load.i, 7
  %36 = xor i8 %bf.load.lobit.i, -1
  %.not.i = sext i8 %36 to i32
  %spec.select.i = add i32 %.lcssa.i, %.not.i
  br label %decon_get_frame_count.exit

sw.bb20.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dec21.i = add i32 %.lcssa.i, -1
  br label %decon_get_frame_count.exit

if.then24.i:                                      ; preds = %if.end.i.if.then24.i_crit_edge, %if.end.i.if.then24.i_crit_edge16
  %dec25.i = add i32 %.lcssa.i, -1
  br label %decon_get_frame_count.exit

decon_get_frame_count.exit:                       ; preds = %if.then24.i, %sw.bb20.i, %sw.bb.i, %if.end.i.decon_get_frame_count.exit_crit_edge, %do.end.i.decon_get_frame_count.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i.decon_get_frame_count.exit_crit_edge ], [ %.lcssa.i, %if.end.i.decon_get_frame_count.exit_crit_edge ], [ %dec25.i, %if.then24.i ], [ %dec21.i, %sw.bb20.i ], [ %spec.select.i, %sw.bb.i ]
  %frame_id = getelementptr inbounds %struct.decon_context, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %frame_id to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i, ptr %frame_id, align 8
  tail call void @exynos_crtc_handle_event(ptr noundef %crtc) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vblank_lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @decon_swreset(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %addr = getelementptr inbounds %struct.decon_context, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #5, !srcloc !98
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 490) #5
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not186 = icmp eq i32 %5, 0
  br i1 %tobool.not.not186, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true:                                    ; preds = %if.then31.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then21, label %if.then31

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  br label %for.end

if.then31:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 4, i32 noundef 12, i32 noundef 2) #5
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  %12 = and i32 %11, 67108864
  %tobool.not.not = icmp eq i32 %12, 0
  br i1 %tobool.not.not, label %if.then31.for.end_crit_edge, label %if.then31.land.lhs.true_crit_edge

if.then31.land.lhs.true_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then31.for.end_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.then31.for.end_crit_edge, %if.then21, %entry.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 16) #5, !srcloc !98
  %call45 = tail call i64 @ktime_get() #5
  %add.i180 = add i64 %call45, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 494) #5
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  %18 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool69.not.not188 = icmp eq i32 %18, 0
  br i1 %tobool69.not.not188, label %for.end.if.end115_crit_edge, label %for.end.land.lhs.true73_crit_edge

for.end.land.lhs.true73_crit_edge:                ; preds = %for.end
  br label %land.lhs.true73

for.end.if.end115_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

land.lhs.true73:                                  ; preds = %if.then87.land.lhs.true73_crit_edge, %for.end.land.lhs.true73_crit_edge
  %call74 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call74, i64 %add.i180)
  %cmp3.i182 = icmp sgt i64 %call74, %add.i180
  br i1 %cmp3.i182, label %for.end91, label %if.then87

if.then87:                                        ; preds = %land.lhs.true73
  tail call void @usleep_range_state(i32 noundef 4, i32 noundef 12, i32 noundef 2) #5
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  %22 = and i32 %21, 16
  %tobool69.not.not = icmp eq i32 %22, 0
  br i1 %tobool69.not.not, label %if.then87.if.end115_crit_edge, label %if.then87.land.lhs.true73_crit_edge

if.then87.land.lhs.true73_crit_edge:              ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true73

if.then87.if.end115_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

for.end91:                                        ; preds = %land.lhs.true73
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addr, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %26 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp97.not = icmp eq i32 %26, 0
  br i1 %cmp97.not, label %for.end91.if.end115_crit_edge, label %do.end109, !prof !133

for.end91.if.end115_crit_edge:                    ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

do.end109:                                        ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 496, i32 noundef 9, ptr noundef nonnull @.str.28) #5
  br label %if.end115

if.end115:                                        ; preds = %do.end109, %for.end91.if.end115_crit_edge, %if.then87.if.end115_crit_edge, %for.end.if.end115_crit_edge
  %vblank_lock = getelementptr inbounds %struct.decon_context, ptr %ctx, i32 0, i32 15
  %call128 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vblank_lock) #5
  %frame_id = getelementptr inbounds %struct.decon_context, ptr %ctx, i32 0, i32 16
  %27 = ptrtoint ptr %frame_id to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %frame_id, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vblank_lock, i32 noundef %call128) #5
  %out_type = getelementptr inbounds %struct.decon_context, ptr %ctx, i32 0, i32 13
  %28 = ptrtoint ptr %out_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %out_type, align 4
  %and134 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end115.cleanup_crit_edge, label %do.body138

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body138:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 541065216) #5, !srcloc !98
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 5124
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %35 = or i32 %34, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr, align 4
  %add.ptr4.i = getelementptr i8, ptr %37, i32 5124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %35) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr, align 4
  %add.ptr147 = getelementptr i8, ptr %39, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 393216) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %addr, align 4
  %add.ptr152 = getelementptr i8, ptr %41, i32 8372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 117440512) #5, !srcloc !98
  br label %cleanup

cleanup:                                          ; preds = %do.body138, %if.end115.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_fb_dma_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_crtc_handle_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

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
define internal i32 @exynos5433_decon_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.decon_context, ptr %1, i32 0, i32 8, i32 9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  %arrayidx.1 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 8, i32 8
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %arrayidx.2 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 8, i32 7
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %arrayidx.3 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 8, i32 6
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  %arrayidx.4 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 8, i32 5
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.4, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  %arrayidx.5 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 8, i32 4
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.5, align 4
  tail call void @clk_disable(ptr noundef %13) #5
  tail call void @clk_unprepare(ptr noundef %13) #5
  %arrayidx.6 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 8, i32 3
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.6, align 4
  tail call void @clk_disable(ptr noundef %15) #5
  tail call void @clk_unprepare(ptr noundef %15) #5
  %arrayidx.7 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.7, align 4
  tail call void @clk_disable(ptr noundef %17) #5
  tail call void @clk_unprepare(ptr noundef %17) #5
  %arrayidx.8 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.8, align 4
  tail call void @clk_disable(ptr noundef %19) #5
  tail call void @clk_unprepare(ptr noundef %19) #5
  %arrayidx.9 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 8, i32 0
  %20 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.9, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  tail call void @clk_unprepare(ptr noundef %21) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5433_decon_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.decon_context, ptr %1, i32 0, i32 8, i32 %i.018
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.clk_prepare_enable.exit_crit_edge

for.body.clk_prepare_enable.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %for.body.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %for.body.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %while.cond.preheader, label %clk_prepare_enable.exit.for.inc_crit_edge

clk_prepare_enable.exit.for.inc_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

while.cond.preheader:                             ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.018)
  %cmp321.not = icmp eq i32 %i.018, 0
  br i1 %cmp321.not, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %clk_prepare_enable.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec22.in = phi i32 [ %dec22, %while.body.while.body_crit_edge ], [ %i.018, %while.cond.preheader.while.body_crit_edge ]
  %dec22 = add nsw i32 %dec22.in, -1
  %arrayidx5 = getelementptr %struct.decon_context, ptr %1, i32 0, i32 8, i32 %dec22
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %cmp3 = icmp sgt i32 %dec22.in, 1
  br i1 %cmp3, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %while.cond.preheader.cleanup_crit_edge ], [ %retval.0.i, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !78, !79, !80, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 881, i32 11}
!2 = !{ptr @exynos5433_decon_driver, !3, !"exynos5433_decon_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 877, i32 24}
!4 = !{ptr @exynos5433_decon_probe.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 805, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 824, i32 28}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 829, i32 28}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 834, i32 28}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 845, i32 8}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 847, i32 4}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @exynos5433_decon_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @exynos5433_decon_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 42, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 43, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 44, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 45, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 46, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 47, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 48, i32 2}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 49, i32 2}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 50, i32 2}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 51, i32 2}
!43 = distinct !{null, !44, !"decon_clks_name", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 41, i32 27}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 778, i32 4}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @decon_conf_irq._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @decon_conf_irq._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 783, i32 35}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 785, i32 3}
!54 = !{ptr @decon_conf_irq._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @decon_conf_irq._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @decon_component_ops, !57, !"decon_component_ops", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 665, i32 35}
!58 = !{ptr @decon_formats, !59, !"decon_formats", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 74, i32 23}
!60 = !{ptr @decon_win_types, !61, !"decon_win_types", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 81, i32 34}
!62 = !{ptr @capabilities, !63, !"capabilities", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 86, i32 27}
!64 = !{ptr @decon_crtc_ops, !65, !"decon_crtc_ops", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 606, i32 41}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 520, i32 3}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 496, i32 2}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 191, i32 3}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 600, i32 2}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @decon_mode_valid._entry, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @decon_mode_valid._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 359, i32 2}
!82 = !{ptr @exynos5433_decon_driver_dt_match, !83, !"exynos5433_decon_driver_dt_match", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 751, i32 34}
!84 = !{ptr @exynos5433_decon_pm_ops, !85, !"exynos5433_decon_pm_ops", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/exynos/exynos5433_drm_decon.c", i32 744, i32 32}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 3102889}
!96 = !{i64 2156846135}
!97 = !{i64 2156846375}
!98 = !{i64 3102471}
!99 = !{i64 2156847057}
!100 = !{i64 2156821037}
!101 = !{i64 2156821534}
!102 = !{i64 2156822031}
!103 = !{i64 2156819310}
!104 = !{i64 2156819522}
!105 = !{i64 2148260378}
!106 = !{i64 745201, i64 745226, i64 745248, i64 745264, i64 745276, i64 745296, i64 745320, i64 745336, i64 745348}
!107 = !{i64 2148260566}
!108 = !{i64 2156823797}
!109 = !{i64 2156824335}
!110 = !{i64 2156824785}
!111 = !{i64 2156825249}
!112 = !{i64 2156825765}
!113 = !{i64 2156826229}
!114 = !{i64 2156819956}
!115 = !{i64 2156820370}
!116 = !{i64 2156829434}
!117 = !{i64 2156830200}
!118 = !{i64 2156830874}
!119 = !{i64 2156831628}
!120 = !{i64 2156832165}
!121 = !{i64 2156832699}
!122 = !{i64 2156833165}
!123 = !{i64 2156833641}
!124 = !{i64 2156834417}
!125 = !{i8 0, i8 2}
!126 = !{i64 2156827432}
!127 = !{i64 2156835281}
!128 = !{i64 2156837065}
!129 = !{i64 2156837555}
!130 = !{i64 2156837797}
!131 = !{i64 2156839610}
!132 = !{i64 2156840100}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{i64 2156841288}
!135 = !{i64 2156841780}
!136 = !{i64 2156842265}
