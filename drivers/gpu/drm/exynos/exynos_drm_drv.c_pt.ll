; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.exynos_drm_driver_info = type { ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.exynos_drm_private = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.wait_queue_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }

@__initcall__kmod_exynosdrm__319_480_exynos_drm_init6 = internal global ptr @exynos_drm_init, section ".initcall6.init", align 4
@__exitcall_exynos_drm_exit = internal global ptr @exynos_drm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author320 = internal constant [49 x i8] c"exynosdrm.author=Inki Dae <inki.dae@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author321 = internal constant [58 x i8] c"exynosdrm.author=Joonyoung Shim <jy0922.shim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [56 x i8] c"exynosdrm.author=Seung-Woo Kim <sw0312.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description323 = internal constant [45 x i8] c"exynosdrm.description=Samsung SoC DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [48 x i8] c"exynosdrm.file=drivers/gpu/drm/exynos/exynosdrm\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [22 x i8] c"exynosdrm.license=GPL\00", section ".modinfo", align 1
@exynos_drm_drivers = internal constant { [15 x %struct.exynos_drm_driver_info], [40 x i8] } { [15 x %struct.exynos_drm_driver_info] [%struct.exynos_drm_driver_info { ptr null, i32 1 }, %struct.exynos_drm_driver_info { ptr @exynos5433_decon_driver, i32 1 }, %struct.exynos_drm_driver_info { ptr null, i32 1 }, %struct.exynos_drm_driver_info { ptr @mixer_driver, i32 1 }, %struct.exynos_drm_driver_info { ptr @mic_driver, i32 1 }, %struct.exynos_drm_driver_info { ptr null, i32 1 }, %struct.exynos_drm_driver_info { ptr @dsi_driver, i32 1 }, %struct.exynos_drm_driver_info { ptr @hdmi_driver, i32 1 }, %struct.exynos_drm_driver_info { ptr @vidi_driver, i32 3 }, %struct.exynos_drm_driver_info { ptr @g2d_driver, i32 1 }, %struct.exynos_drm_driver_info { ptr @fimc_driver, i32 5 }, %struct.exynos_drm_driver_info { ptr @rotator_driver, i32 1 }, %struct.exynos_drm_driver_info { ptr @scaler_driver, i32 1 }, %struct.exynos_drm_driver_info { ptr @gsc_driver, i32 1 }, %struct.exynos_drm_driver_info { ptr @exynos_drm_platform_driver, i32 2 }], [40 x i8] zeroinitializer }, align 32
@exynos5433_decon_driver = external dso_local global %struct.platform_driver, align 4
@mixer_driver = external dso_local global %struct.platform_driver, align 4
@mic_driver = external dso_local global %struct.platform_driver, align 4
@dsi_driver = external dso_local global %struct.platform_driver, align 4
@hdmi_driver = external dso_local global %struct.platform_driver, align 4
@vidi_driver = external dso_local global %struct.platform_driver, align 4
@g2d_driver = external dso_local global %struct.platform_driver, align 4
@fimc_driver = external dso_local global %struct.platform_driver, align 4
@rotator_driver = external dso_local global %struct.platform_driver, align 4
@scaler_driver = external dso_local global %struct.platform_driver, align 4
@gsc_driver = external dso_local global %struct.platform_driver, align 4
@exynos_drm_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_drm_platform_probe, ptr @exynos_drm_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_drm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos-drm\00", [21 x i8] zeroinitializer }, align 32
@exynos_drm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @exynos_drm_suspend, ptr @exynos_drm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@exynos_drm_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @exynos_drm_bind, ptr @exynos_drm_unbind }, [24 x i8] zeroinitializer }, align 32
@exynos_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr @exynos_drm_open, ptr @exynos_drm_postclose, ptr @drm_fb_helper_lastclose, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr @exynos_drm_gem_prime_import, ptr @exynos_drm_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @exynos_drm_gem_dumb_create, ptr null, ptr null, i32 1, i32 1, i32 0, ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 27, ptr @exynos_ioctls, i32 68, ptr @exynos_drm_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@exynos_drm_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&private->wait\00", [17 x i8] zeroinitializer }, align 32
@exynos_drm_bind.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&private->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"exynos\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Samsung SoC DRM\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20180330\00", [23 x i8] zeroinitializer }, align 32
@exynos_ioctls = internal constant { [68 x %struct.drm_ioctl_desc], [256 x i8] } { [68 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1072667584, i32 32, ptr @exynos_drm_gem_create_ioctl, ptr @.str.7 }, %struct.drm_ioctl_desc { i32 -1072667583, i32 32, ptr @exynos_drm_gem_map_ioctl, ptr @.str.8 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667580, i32 32, ptr @exynos_drm_gem_get_ioctl, ptr @.str.9 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667577, i32 1, ptr @vidi_connection_ioctl, ptr @.str.10 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1073191840, i32 32, ptr @exynos_g2d_get_ver_ioctl, ptr @.str.11 }, %struct.drm_ioctl_desc { i32 -1071094687, i32 32, ptr @exynos_g2d_set_cmdlist_ioctl, ptr @.str.12 }, %struct.drm_ioctl_desc { i32 -1073191838, i32 32, ptr @exynos_g2d_exec_ioctl, ptr @.str.13 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667520, i32 32, ptr @exynos_drm_ipp_get_res_ioctl, ptr @.str.14 }, %struct.drm_ioctl_desc { i32 -1072143231, i32 32, ptr @exynos_drm_ipp_get_caps_ioctl, ptr @.str.15 }, %struct.drm_ioctl_desc { i32 -1071618942, i32 32, ptr @exynos_drm_ipp_get_limits_ioctl, ptr @.str.16 }, %struct.drm_ioctl_desc { i32 -1071618941, i32 32, ptr @exynos_drm_ipp_commit_ioctl, ptr @.str.17 }], [256 x i8] zeroinitializer }, align 32
@exynos_drm_driver_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EXYNOS_GEM_CREATE\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EXYNOS_GEM_MAP\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EXYNOS_GEM_GET\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EXYNOS_VIDI_CONNECTION\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EXYNOS_G2D_GET_VER\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EXYNOS_G2D_SET_CMDLIST\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EXYNOS_G2D_EXEC\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EXYNOS_IPP_GET_RESOURCES\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EXYNOS_IPP_GET_CAPS\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EXYNOS_IPP_GET_LIMITS\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EXYNOS_IPP_COMMIT\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 14]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 14]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 14]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 14]
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"exynos_drm_drivers\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 166, i32 38 }
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"exynos_drm_platform_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 369, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 373, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"exynos_drm_pm_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 143, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"exynos_drm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 344, i32 42 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"exynos_drm_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 107, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 265, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 266, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 122, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 123, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 124, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"exynos_ioctls\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 78, i32 36 }
@___asan_gen_.63 = private unnamed_addr constant [23 x i8] c"exynos_drm_driver_fops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 105, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 79, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 81, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 83, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 85, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 87, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 89, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 91, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 93, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 96, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 98, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [43 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_drv.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 101, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__exitcall_exynos_drm_exit, ptr @__initcall__kmod_exynosdrm__319_480_exynos_drm_init6, ptr @exynos_drm_drivers, ptr @exynos_drm_platform_driver, ptr @.str, ptr @exynos_drm_pm_ops, ptr @exynos_drm_ops, ptr @exynos_drm_driver, ptr @exynos_drm_bind.__key, ptr @.str.1, ptr @exynos_drm_bind.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @exynos_ioctls, ptr @exynos_drm_driver_fops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_drivers to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_bind.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ioctls to i32), i32 1088, i32 1344, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_driver_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_drm_init() #0 align 64 {
entry:
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.020.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [15 x %struct.exynos_drm_driver_info], ptr @exynos_drm_drivers, i32 0, i32 %i.020.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %3 = zext i32 %i.020.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.020.i, label %lor.lhs.false.i.for.inc.i_crit_edge [
    i32 14, label %lor.lhs.false.i.if.end.i_crit_edge
    i32 8, label %lor.lhs.false.i.if.end.i_crit_edge32
  ]

lor.lhs.false.i.if.end.i_crit_edge32:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge32
  %driver3.i = getelementptr inbounds %struct.platform_driver, ptr %2, i32 0, i32 5
  %4 = ptrtoint ptr %driver3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver3.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #5
  %6 = call ptr @memset(ptr %0, i32 255, i32 48)
  %7 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pdevinfo.i.i.i, align 8
  %8 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %0, align 8
  %10 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %5, ptr %name2.i.i.i, align 4
  %11 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %12 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %properties.i.i.i, align 8
  %13 = call ptr @memset(ptr %res4.i.i.i, i32 0, i32 16)
  %call.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #5
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.for.body.i.i_crit_edge, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.inc.i.for.body.i10_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.body.i10_crit_edge:                 ; preds = %for.inc.i
  br label %for.body.i10

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.014.i.i = phi i32 [ %dec.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 14, %if.end.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [15 x %struct.exynos_drm_driver_info], ptr @exynos_drm_drivers, i32 0, i32 %i.014.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %16 = zext i32 %i.014.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %i.014.i.i, label %lor.lhs.false.i.i.cleanup.i.i_crit_edge [
    i32 14, label %lor.lhs.false.i.i.while.cond.preheader.i.i_crit_edge
    i32 8, label %lor.lhs.false.i.i.while.cond.preheader.i.i_crit_edge33
  ]

lor.lhs.false.i.i.while.cond.preheader.i.i_crit_edge33: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader.i.i

lor.lhs.false.i.i.while.cond.preheader.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader.i.i

lor.lhs.false.i.i.cleanup.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

while.cond.preheader.i.i:                         ; preds = %lor.lhs.false.i.i.while.cond.preheader.i.i_crit_edge, %lor.lhs.false.i.i.while.cond.preheader.i.i_crit_edge33
  %driver3.i.i = getelementptr inbounds %struct.platform_driver, ptr %15, i32 0, i32 5
  %call11.i.i = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %driver3.i.i) #5
  %tobool4.not12.i.i = icmp eq ptr %call11.i.i, null
  br i1 %tobool4.not12.i.i, label %while.cond.preheader.i.i.cleanup.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.cleanup.i.i_crit_edge:   ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %call13.i.i = phi ptr [ %call.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call11.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  call void @put_device(ptr noundef nonnull %call13.i.i) #5
  %add.ptr.i.i = getelementptr i8, ptr %call13.i.i, i32 -16
  call void @platform_device_unregister(ptr noundef %add.ptr.i.i) #5
  %call.i.i = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %driver3.i.i) #5
  %tobool4.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i.i, label %while.body.i.i.cleanup.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

while.body.i.i.cleanup.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %while.body.i.i.cleanup.i.i_crit_edge, %while.cond.preheader.i.i.cleanup.i.i_crit_edge, %lor.lhs.false.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  %dec.i.i = add nsw i32 %i.014.i.i, -1
  %cmp.i15.not.i = icmp eq i32 %i.014.i.i, 0
  br i1 %cmp.i15.not.i, label %exynos_drm_register_devices.exit, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

exynos_drm_register_devices.exit:                 ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call.i.i.i to i32
  br label %cleanup

for.body.i10:                                     ; preds = %for.inc.i14.for.body.i10_crit_edge, %for.inc.i.for.body.i10_crit_edge
  %i.014.i = phi i32 [ %inc.i12, %for.inc.i14.for.body.i10_crit_edge ], [ 0, %for.inc.i.for.body.i10_crit_edge ]
  %arrayidx.i8 = getelementptr [15 x %struct.exynos_drm_driver_info], ptr @exynos_drm_drivers, i32 0, i32 %i.014.i
  %18 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i8, align 4
  %tobool.not.i9 = icmp eq ptr %19, null
  br i1 %tobool.not.i9, label %for.body.i10.for.inc.i14_crit_edge, label %if.end.i11

for.body.i10.for.inc.i14_crit_edge:               ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i14

if.end.i11:                                       ; preds = %for.body.i10
  %call.i = call i32 @__platform_driver_register(ptr noundef nonnull %19, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i11.for.inc.i14_crit_edge, label %err_unregister_pdevs

if.end.i11.for.inc.i14_crit_edge:                 ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i14

for.inc.i14:                                      ; preds = %if.end.i11.for.inc.i14_crit_edge, %for.body.i10.for.inc.i14_crit_edge
  %inc.i12 = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i13 = icmp eq i32 %inc.i12, 15
  br i1 %exitcond.not.i13, label %for.inc.i14.cleanup_crit_edge, label %for.inc.i14.for.body.i10_crit_edge

for.inc.i14.for.body.i10_crit_edge:               ; preds = %for.inc.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i10

for.inc.i14.cleanup_crit_edge:                    ; preds = %for.inc.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_unregister_pdevs:                             ; preds = %if.end.i11
  call fastcc void @exynos_drm_unregister_drivers() #5
  br label %for.body.i19

for.body.i19:                                     ; preds = %cleanup.i.for.body.i19_crit_edge, %err_unregister_pdevs
  %i.014.i16 = phi i32 [ 14, %err_unregister_pdevs ], [ %dec.i, %cleanup.i.for.body.i19_crit_edge ]
  %arrayidx.i17 = getelementptr [15 x %struct.exynos_drm_driver_info], ptr @exynos_drm_drivers, i32 0, i32 %i.014.i16
  %20 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i17, align 4
  %tobool.not.i18 = icmp eq ptr %21, null
  br i1 %tobool.not.i18, label %for.body.i19.cleanup.i_crit_edge, label %lor.lhs.false.i20

for.body.i19.cleanup.i_crit_edge:                 ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

lor.lhs.false.i20:                                ; preds = %for.body.i19
  %22 = zext i32 %i.014.i16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %i.014.i16, label %lor.lhs.false.i20.cleanup.i_crit_edge [
    i32 14, label %lor.lhs.false.i20.while.cond.preheader.i_crit_edge
    i32 8, label %lor.lhs.false.i20.while.cond.preheader.i_crit_edge34
  ]

lor.lhs.false.i20.while.cond.preheader.i_crit_edge34: ; preds = %lor.lhs.false.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader.i

lor.lhs.false.i20.while.cond.preheader.i_crit_edge: ; preds = %lor.lhs.false.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader.i

lor.lhs.false.i20.cleanup.i_crit_edge:            ; preds = %lor.lhs.false.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i20.while.cond.preheader.i_crit_edge, %lor.lhs.false.i20.while.cond.preheader.i_crit_edge34
  %driver3.i21 = getelementptr inbounds %struct.platform_driver, ptr %21, i32 0, i32 5
  %call11.i = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %driver3.i21) #5
  %tobool4.not12.i = icmp eq ptr %call11.i, null
  br i1 %tobool4.not12.i, label %while.cond.preheader.i.cleanup.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.cleanup.i_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call13.i = phi ptr [ %call.i22, %while.body.i.while.body.i_crit_edge ], [ %call11.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  call void @put_device(ptr noundef nonnull %call13.i) #5
  %add.ptr.i = getelementptr i8, ptr %call13.i, i32 -16
  call void @platform_device_unregister(ptr noundef %add.ptr.i) #5
  %call.i22 = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %driver3.i21) #5
  %tobool4.not.i = icmp eq ptr %call.i22, null
  br i1 %tobool4.not.i, label %while.body.i.cleanup.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i.cleanup.i_crit_edge, %while.cond.preheader.i.cleanup.i_crit_edge, %lor.lhs.false.i20.cleanup.i_crit_edge, %for.body.i19.cleanup.i_crit_edge
  %dec.i = add nsw i32 %i.014.i16, -1
  %cmp.i.not = icmp eq i32 %i.014.i16, 0
  br i1 %cmp.i.not, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.for.body.i19_crit_edge

cleanup.i.for.body.i19_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i19

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.i.cleanup_crit_edge, %for.inc.i14.cleanup_crit_edge, %exynos_drm_register_devices.exit
  %retval.0 = phi i32 [ %17, %exynos_drm_register_devices.exit ], [ %call.i, %cleanup.i.cleanup_crit_edge ], [ 0, %for.inc.i14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_drm_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @exynos_drm_unregister_drivers()
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry
  %i.014.i = phi i32 [ 14, %entry ], [ %dec.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [15 x %struct.exynos_drm_driver_info], ptr @exynos_drm_drivers, i32 0, i32 %i.014.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %lor.lhs.false.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %2 = zext i32 %i.014.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %i.014.i, label %lor.lhs.false.i.cleanup.i_crit_edge [
    i32 14, label %lor.lhs.false.i.while.cond.preheader.i_crit_edge
    i32 8, label %lor.lhs.false.i.while.cond.preheader.i_crit_edge1
  ]

lor.lhs.false.i.while.cond.preheader.i_crit_edge1: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader.i

lor.lhs.false.i.while.cond.preheader.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader.i

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i.while.cond.preheader.i_crit_edge, %lor.lhs.false.i.while.cond.preheader.i_crit_edge1
  %driver3.i = getelementptr inbounds %struct.platform_driver, ptr %1, i32 0, i32 5
  %call11.i = tail call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %driver3.i) #5
  %tobool4.not12.i = icmp eq ptr %call11.i, null
  br i1 %tobool4.not12.i, label %while.cond.preheader.i.cleanup.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.cleanup.i_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call13.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call11.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call13.i) #5
  %add.ptr.i = getelementptr i8, ptr %call13.i, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr.i) #5
  %call.i = tail call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %driver3.i) #5
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %while.body.i.cleanup.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i.cleanup.i_crit_edge, %while.cond.preheader.i.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %dec.i = add nsw i32 %i.014.i, -1
  %cmp.i.not = icmp eq i32 %i.014.i, 0
  br i1 %cmp.i.not, label %exynos_drm_unregister_devices.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

exynos_drm_unregister_devices.exit:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_drm_platform_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %match.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %0 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 4294967295, ptr %coherent_dma_mask, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match.i) #5
  %1 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %match.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry
  %i.033.i = phi i32 [ 0, %entry ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [15 x %struct.exynos_drm_driver_info], ptr @exynos_drm_drivers, i32 0, i32 %i.033.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.033.i)
  %tobool1.not.i = icmp eq i32 %i.033.i, 14
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %for.body.i.cleanup.i_crit_edge, label %while.cond.preheader.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

while.cond.preheader.i:                           ; preds = %for.body.i
  %driver3.i = getelementptr inbounds %struct.platform_driver, ptr %3, i32 0, i32 5
  %call28.i = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %driver3.i) #5
  %tobool4.not29.i = icmp eq ptr %call28.i, null
  br i1 %tobool4.not29.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.033.i)
  %tobool7.not.not.i = icmp eq i32 %i.033.i, 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end12.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call31.i = phi ptr [ %call28.i, %while.body.lr.ph.i ], [ %call.i, %if.end12.i.while.body.i_crit_edge ]
  %p.030.i = phi ptr [ null, %while.body.lr.ph.i ], [ %call31.i, %if.end12.i.while.body.i_crit_edge ]
  call void @put_device(ptr noundef %p.030.i) #5
  br i1 %tobool7.not.not.i, label %lor.lhs.false8.i, label %while.body.i.if.then11.i_crit_edge

while.body.i.if.then11.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

lor.lhs.false8.i:                                 ; preds = %while.body.i
  %call9.i = call i32 @exynos_drm_check_fimc_device(ptr noundef nonnull %call31.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.i, label %lor.lhs.false8.i.if.then11.i_crit_edge, label %lor.lhs.false8.i.if.end12.i_crit_edge

lor.lhs.false8.i.if.end12.i_crit_edge:            ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

lor.lhs.false8.i.if.then11.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

if.then11.i:                                      ; preds = %lor.lhs.false8.i.if.then11.i_crit_edge, %while.body.i.if.then11.i_crit_edge
  call void @component_match_add_release(ptr noundef %dev, ptr noundef nonnull %match.i, ptr noundef null, ptr noundef nonnull @compare_dev, ptr noundef nonnull %call31.i) #5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %lor.lhs.false8.i.if.end12.i_crit_edge
  %call.i = call ptr @platform_find_device_by_driver(ptr noundef nonnull %call31.i, ptr noundef %driver3.i) #5
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.end12.i.while.end.i_crit_edge, label %if.end12.i.while.body.i_crit_edge

if.end12.i.while.body.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end12.i.while.end.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %if.end12.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %p.0.lcssa.i = phi ptr [ null, %while.cond.preheader.i.while.end.i_crit_edge ], [ %call31.i, %if.end12.i.while.end.i_crit_edge ]
  call void @put_device(ptr noundef %p.0.lcssa.i) #5
  br label %cleanup.i

cleanup.i:                                        ; preds = %while.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %exynos_drm_match_add.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

exynos_drm_match_add.exit:                        ; preds = %cleanup.i
  %4 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %match.i, align 4
  %tobool15.not.i = icmp eq ptr %5, null
  %spec.select.i = select i1 %tobool15.not.i, ptr inttoptr (i32 -19 to ptr), ptr %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i) #5
  %cmp.i = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %exynos_drm_match_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %spec.select.i to i32
  br label %cleanup

if.end:                                           ; preds = %exynos_drm_match_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = call i32 @component_master_add_with_match(ptr noundef %dev, ptr noundef nonnull @exynos_drm_ops, ptr noundef %spec.select.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_drm_platform_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %dev, ptr noundef nonnull @exynos_drm_ops) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_find_device_by_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_check_fimc_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @compare_dev(ptr noundef readnone %dev, ptr noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_drm_bind(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_dev_alloc(ptr noundef nonnull @exynos_drm_driver, ptr noundef %dev) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 116) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.err_free_drm_crit_edge, label %do.body

if.end.err_free_drm_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_drm

do.body:                                          ; preds = %if.end
  %wait = getelementptr inbounds %struct.exynos_drm_private, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.1, ptr noundef nonnull @exynos_drm_bind.__key) #5
  %lock = getelementptr inbounds %struct.exynos_drm_private, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @exynos_drm_bind.__key.2, i16 noundef signext 3) #5
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %dev_private, align 4
  %call.i = tail call i32 @drmm_mode_config_init(ptr noundef %call) #5
  tail call void @exynos_drm_mode_config_init(ptr noundef %call) #5
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 16
  %4 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn102 = load ptr, ptr %encoder_list, align 4
  %cmp.not103 = icmp eq ptr %.pn102, %encoder_list
  br i1 %cmp.not103, label %do.body.for.cond25.preheader_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.cond25.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.body.for.cond25.preheader_crit_edge, %do.body.for.cond25.preheader_crit_edge
  %clone_mask.0.lcssa = phi i32 [ 0, %do.body.for.cond25.preheader_crit_edge ], [ %or, %for.body.for.cond25.preheader_crit_edge ]
  %5 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn101106 = load ptr, ptr %encoder_list, align 4
  %cmp29.not107 = icmp eq ptr %.pn101106, %encoder_list
  br i1 %cmp29.not107, label %for.cond25.preheader.for.end38_crit_edge, label %for.cond25.preheader.for.body31_crit_edge

for.cond25.preheader.for.body31_crit_edge:        ; preds = %for.cond25.preheader
  br label %for.body31

for.cond25.preheader.for.end38_crit_edge:         ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn105 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn102, %do.body.for.body_crit_edge ]
  %clone_mask.0104 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %index.i.i = getelementptr i8, ptr %.pn105, i32 36
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %7
  %or = or i32 %shl.i, %clone_mask.0104
  %8 = ptrtoint ptr %.pn105 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn105, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.body.for.cond25.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.cond25.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond25.preheader

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.cond25.preheader.for.body31_crit_edge
  %.pn101108 = phi ptr [ %.pn101, %for.body31.for.body31_crit_edge ], [ %.pn101106, %for.cond25.preheader.for.body31_crit_edge ]
  %possible_clones = getelementptr i8, ptr %.pn101108, i32 44
  %9 = ptrtoint ptr %possible_clones to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %clone_mask.0.lcssa, ptr %possible_clones, align 4
  %10 = ptrtoint ptr %.pn101108 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn101 = load ptr, ptr %.pn101108, align 4
  %cmp29.not = icmp eq ptr %.pn101, %encoder_list
  br i1 %cmp29.not, label %for.body31.for.end38_crit_edge, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body31

for.body31.for.end38_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38

for.end38:                                        ; preds = %for.body31.for.end38_crit_edge, %for.cond25.preheader.for.end38_crit_edge
  %dev39 = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev39, align 4
  %call40 = tail call i32 @component_bind_all(ptr noundef %12, ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %for.end38.err_mode_config_cleanup_crit_edge

for.end38.err_mode_config_cleanup_crit_edge:      ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_mode_config_cleanup

if.end43:                                         ; preds = %for.end38
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 19
  %13 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_crtc, align 4
  %call45 = tail call i32 @drm_vblank_init(ptr noundef %call, i32 noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.err_unbind_all_crit_edge

if.end43.err_unbind_all_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unbind_all

if.end48:                                         ; preds = %if.end43
  tail call void @drm_mode_config_reset(ptr noundef %call) #5
  tail call void @drm_kms_helper_poll_init(ptr noundef %call) #5
  %call49 = tail call i32 @exynos_drm_fbdev_init(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.err_cleanup_poll_crit_edge

if.end48.err_cleanup_poll_crit_edge:              ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_cleanup_poll

if.end52:                                         ; preds = %if.end48
  %call53 = tail call i32 @drm_dev_register(ptr noundef %call, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %err_cleanup_fbdev, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_cleanup_fbdev:                                ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @exynos_drm_fbdev_fini(ptr noundef %call) #5
  br label %err_cleanup_poll

err_cleanup_poll:                                 ; preds = %err_cleanup_fbdev, %if.end48.err_cleanup_poll_crit_edge
  %ret.0 = phi i32 [ %call49, %if.end48.err_cleanup_poll_crit_edge ], [ %call53, %err_cleanup_fbdev ]
  tail call void @drm_kms_helper_poll_fini(ptr noundef %call) #5
  br label %err_unbind_all

err_unbind_all:                                   ; preds = %err_cleanup_poll, %if.end43.err_unbind_all_crit_edge
  %ret.1 = phi i32 [ %call45, %if.end43.err_unbind_all_crit_edge ], [ %ret.0, %err_cleanup_poll ]
  %15 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev39, align 4
  tail call void @component_unbind_all(ptr noundef %16, ptr noundef %call) #5
  br label %err_mode_config_cleanup

err_mode_config_cleanup:                          ; preds = %err_unbind_all, %for.end38.err_mode_config_cleanup_crit_edge
  %ret.2 = phi i32 [ %call40, %for.end38.err_mode_config_cleanup_crit_edge ], [ %ret.1, %err_unbind_all ]
  tail call void @drm_mode_config_cleanup(ptr noundef %call) #5
  tail call void @exynos_drm_cleanup_dma(ptr noundef %call) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %err_free_drm

err_free_drm:                                     ; preds = %err_mode_config_cleanup, %if.end.err_free_drm_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_mode_config_cleanup ], [ -12, %if.end.err_free_drm_crit_edge ]
  tail call void @drm_dev_put(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free_drm, %if.end52.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.3, %err_free_drm ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_drm_unbind(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @drm_dev_unregister(ptr noundef %1) #5
  tail call void @exynos_drm_fbdev_fini(ptr noundef %1) #5
  tail call void @drm_kms_helper_poll_fini(ptr noundef %1) #5
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void @component_unbind_all(ptr noundef %3, ptr noundef %1) #5
  tail call void @drm_mode_config_cleanup(ptr noundef %1) #5
  tail call void @exynos_drm_cleanup_dma(ptr noundef %1) #5
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  tail call void @kfree(ptr noundef %5) #5
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dev_private, align 4
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %driver_data.i, align 4
  tail call void @drm_dev_put(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_fbdev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_fbdev_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_cleanup_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_drm_open(ptr noundef %dev, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %1 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  %call1 = tail call i32 @g2d_open(ptr noundef %dev, ptr noundef %file) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err_file_priv_free

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_file_priv_free:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_file_priv_free, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_file_priv_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_drm_postclose(ptr noundef %dev, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @g2d_close(ptr noundef %dev, ptr noundef %file) #5
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_priv, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_lastclose(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_gem_prime_import(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_gem_dumb_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g2d_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @g2d_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_gem_create_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_gem_map_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_gem_get_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidi_connection_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_g2d_get_ver_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_g2d_set_cmdlist_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_g2d_exec_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_ipp_get_res_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_ipp_get_caps_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_ipp_get_limits_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_ipp_commit_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_drm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_drm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_drm_unregister_drivers() unnamed_addr #0 align 64 {
cleanup.14:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_drm_platform_driver) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @gsc_driver) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @scaler_driver) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @rotator_driver) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @fimc_driver) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @g2d_driver) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @vidi_driver) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @hdmi_driver) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @dsi_driver) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @mic_driver) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @mixer_driver) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos5433_decon_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_exynosdrm__319_480_exynos_drm_init6, !1, !"__initcall__kmod_exynosdrm__319_480_exynos_drm_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 480, i32 1}
!2 = !{ptr @__exitcall_exynos_drm_exit, !3, !"__exitcall_exynos_drm_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 481, i32 1}
!4 = !{ptr @__UNIQUE_ID_author320, !5, !"__UNIQUE_ID_author320", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 483, i32 1}
!6 = !{ptr @__UNIQUE_ID_author321, !7, !"__UNIQUE_ID_author321", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 484, i32 1}
!8 = !{ptr @__UNIQUE_ID_author322, !9, !"__UNIQUE_ID_author322", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 485, i32 1}
!10 = !{ptr @__UNIQUE_ID_description323, !11, !"__UNIQUE_ID_description323", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 486, i32 1}
!12 = !{ptr @__UNIQUE_ID_file324, !13, !"__UNIQUE_ID_file324", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 487, i32 1}
!14 = !{ptr @__UNIQUE_ID_license325, !13, !"__UNIQUE_ID_license325", i1 false, i1 false}
!15 = !{ptr @exynos_drm_drivers, !16, !"exynos_drm_drivers", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 166, i32 38}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 373, i32 11}
!19 = !{ptr @exynos_drm_platform_driver, !20, !"exynos_drm_platform_driver", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 369, i32 31}
!21 = !{ptr @exynos_drm_ops, !22, !"exynos_drm_ops", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 344, i32 42}
!23 = !{ptr @exynos_drm_bind.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 265, i32 2}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @exynos_drm_bind.__key.2, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 266, i32 2}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 122, i32 10}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 123, i32 10}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 124, i32 10}
!35 = !{ptr @exynos_drm_driver, !36, !"exynos_drm_driver", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 107, i32 32}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 79, i32 2}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 81, i32 2}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 83, i32 2}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 85, i32 2}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 87, i32 2}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 89, i32 2}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 91, i32 2}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 93, i32 2}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 96, i32 2}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 98, i32 2}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 101, i32 2}
!59 = !{ptr @exynos_ioctls, !60, !"exynos_ioctls", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 78, i32 36}
!61 = !{ptr @exynos_drm_driver_fops, !62, !"exynos_drm_driver_fops", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 105, i32 1}
!63 = !{ptr @exynos_drm_pm_ops, !64, !"exynos_drm_pm_ops", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/exynos/exynos_drm_drv.c", i32 143, i32 32}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
