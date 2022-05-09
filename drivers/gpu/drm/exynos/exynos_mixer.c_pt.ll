; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_mixer.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_mixer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.exynos_drm_plane_config = type { i32, i32, ptr, i32, i32 }
%struct.exynos_drm_crtc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.90 = type { i32, i32, i32, i32, i32 }
%struct.mixer_drv_data = type { i32, i8, i8 }
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
%struct.mixer_context = type { ptr, ptr, ptr, ptr, ptr, [3 x %struct.exynos_drm_plane], i32, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.exynos_drm_plane = type { %struct.drm_plane, ptr, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.exynos_drm_crtc = type { %struct.drm_crtc, i32, ptr, ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.exynos_drm_plane_state = type { %struct.drm_plane_state, %struct.exynos_drm_rect, %struct.exynos_drm_rect, i32, i32 }
%struct.exynos_drm_rect = type { i32, i32, i32, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.85, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.85 = type { [4 x i8] }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"exynos-mixer\00", [19 x i8] zeroinitializer }, align 32
@mixer_match_types = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-mixer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_mxr_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-mixer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4212_mxr_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5-mixer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_mxr_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-mixer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_mxr_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-mixer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_mxr_drv_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@exynos_mixer_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_mixer_suspend, ptr @exynos_mixer_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mixer_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mixer_probe, ptr @mixer_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mixer_match_types, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_mixer_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* failed to alloc mixer context.\0A\00", [56 x i8] zeroinitializer }, align 32
@mixer_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @mixer_bind, ptr @mixer_unbind }, [24 x i8] zeroinitializer }, align 32
@plane_configs = internal constant { [3 x %struct.exynos_drm_plane_config], [36 x i8] } { [3 x %struct.exynos_drm_plane_config] [%struct.exynos_drm_plane_config { i32 0, i32 1, ptr @mixer_formats, i32 7, i32 53 }, %struct.exynos_drm_plane_config { i32 1, i32 2, ptr @mixer_formats, i32 7, i32 53 }, %struct.exynos_drm_plane_config { i32 2, i32 0, ptr @vp_formats, i32 2, i32 46 }], [36 x i8] zeroinitializer }, align 32
@mixer_crtc_ops = internal constant { %struct.exynos_drm_crtc_ops, [48 x i8] } { %struct.exynos_drm_crtc_ops { ptr @mixer_atomic_enable, ptr @mixer_atomic_disable, ptr @mixer_enable_vblank, ptr @mixer_disable_vblank, ptr @mixer_mode_valid, ptr @mixer_mode_fixup, ptr null, ptr @mixer_atomic_begin, ptr @mixer_update_plane, ptr @mixer_disable_plane, ptr @mixer_atomic_flush, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* mixer_resources_init failed ret=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* vp_resources_init failed ret=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@mixer_resources_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&mixer_ctx->reg_slock\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mixer\00", [26 x i8] zeroinitializer }, align 32
@mixer_resources_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 784, ptr @.str.1, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get clock 'mixer'\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mixer_resources_init\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/exynos/exynos_mixer.c\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mixer_resources_init._entry_ptr = internal global ptr @mixer_resources_init._entry, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@mixer_resources_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 790, ptr @.str.1, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get clock 'hdmi'\0A\00", [36 x i8] zeroinitializer }, align 32
@mixer_resources_init._entry_ptr.14 = internal global ptr @mixer_resources_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_hdmi\00", [22 x i8] zeroinitializer }, align 32
@mixer_resources_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.9, i32 796, ptr @.str.1, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get clock 'sclk_hdmi'\0A\00", [63 x i8] zeroinitializer }, align 32
@mixer_resources_init._entry_ptr.18 = internal global ptr @mixer_resources_init._entry.16, section ".printk_index", align 4
@mixer_resources_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.8, ptr @.str.9, i32 801, ptr @.str.1, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"get memory resource failed.\0A\00", [35 x i8] zeroinitializer }, align 32
@mixer_resources_init._entry_ptr.21 = internal global ptr @mixer_resources_init._entry.19, section ".printk_index", align 4
@mixer_resources_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.9, i32 808, ptr @.str.1, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"register mapping failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@mixer_resources_init._entry_ptr.24 = internal global ptr @mixer_resources_init._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"drm_mixer\00", [22 x i8] zeroinitializer }, align 32
@mixer_resources_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.8, ptr @.str.9, i32 820, ptr @.str.1, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"request interrupt failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@mixer_resources_init._entry_ptr.28 = internal global ptr @mixer_resources_init._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vp\00", [29 x i8] zeroinitializer }, align 32
@vp_resources_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.9, i32 834, ptr @.str.1, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clock 'vp'\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vp_resources_init\00", [46 x i8] zeroinitializer }, align 32
@vp_resources_init._entry_ptr = internal global ptr @vp_resources_init._entry, section ".printk_index", align 4
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_mixer\00", [21 x i8] zeroinitializer }, align 32
@vp_resources_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.9, i32 841, ptr @.str.1, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get clock 'sclk_mixer'\0A\00", [62 x i8] zeroinitializer }, align 32
@vp_resources_init._entry_ptr.35 = internal global ptr @vp_resources_init._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mout_mixer\00", [21 x i8] zeroinitializer }, align 32
@vp_resources_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.9, i32 846, ptr @.str.1, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get clock 'mout_mixer'\0A\00", [62 x i8] zeroinitializer }, align 32
@vp_resources_init._entry_ptr.39 = internal global ptr @vp_resources_init._entry.37, section ".printk_index", align 4
@vp_resources_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.31, ptr @.str.9, i32 857, ptr @.str.1, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@vp_resources_init._entry_ptr.41 = internal global ptr @vp_resources_init._entry.40, section ".printk_index", align 4
@vp_resources_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.31, ptr @.str.9, i32 864, ptr @.str.1, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@vp_resources_init._entry_ptr.43 = internal global ptr @vp_resources_init._entry.42, section ".printk_index", align 4
@mixer_formats = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 842093144, i32 842093121, i32 892424792, i32 892424769, i32 909199186, i32 875713112, i32 875713089], [36 x i8] zeroinitializer }, align 32
@vp_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 842094158, i32 825382478], [24 x i8] zeroinitializer }, align 32
@mixer_atomic_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.9, i32 1000, ptr @.str.1, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable MIXER device.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mixer_atomic_enable\00", [44 x i8] zeroinitializer }, align 32
@mixer_atomic_enable._entry_ptr = internal global ptr @mixer_atomic_enable._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to reset Video Processor\0A\00", [63 x i8] zeroinitializer }, align 32
@filter_y_horiz_tap8 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\02\04\05\06\06\06\06\06\05\05\04\03\02\01\01\00\FA\F4\F0\EE\EC\EB\EC\EC\EE\F0\F3\F6\F8\FB\FE\7F~}yrkcYOD9.#\19\10\08", [32 x i8] zeroinitializer }, align 32
@filter_y_vert_tap4 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\00\FD\FA\F8\F8\F8\F8\F9\FA\FB\FC\FD\FE\FF\FF\00\7F~|vof\\QF;0%\1B\13\0B\05\00\05\0B\13\1B%0;FQ\\fov|~\00\00\FF\FF\FE\FD\FC\FB\FA\F9\F8\F8\F8\F8\FA\FD", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MXR_STATUS = %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MXR_CFG = %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MXR_INT_EN = %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MXR_INT_STATUS = %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MXR_LAYER_CFG = %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MXR_VIDEO_CFG = %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MXR_GRAPHIC0_CFG = %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MXR_GRAPHIC0_BASE = %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MXR_GRAPHIC0_SPAN = %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MXR_GRAPHIC0_WH = %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MXR_GRAPHIC0_SXY = %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MXR_GRAPHIC0_DXY = %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MXR_GRAPHIC1_CFG = %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MXR_GRAPHIC1_BASE = %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MXR_GRAPHIC1_SPAN = %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MXR_GRAPHIC1_WH = %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MXR_GRAPHIC1_SXY = %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MXR_GRAPHIC1_DXY = %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"xres=%d, yres=%d, refresh=%d, intl=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@mixer_mode_fixup.modes = internal constant { [4 x %struct.anon.90], [48 x i8] } { [4 x %struct.anon.90] [%struct.anon.90 { i32 720, i32 480, i32 858, i32 525, i32 0 }, %struct.anon.90 { i32 720, i32 576, i32 864, i32 625, i32 2 }, %struct.anon.90 { i32 1280, i32 720, i32 1650, i32 750, i32 1 }, %struct.anon.90 { i32 1920, i32 1080, i32 2200, i32 1125, i32 65 }], [48 x i8] zeroinitializer }, align 32
@mixer_atomic_begin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.9, i32 943, ptr @.str.1, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timeout waiting for VSYNC\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mixer_atomic_begin\00", [45 x i8] zeroinitializer }, align 32
@mixer_atomic_begin._entry_ptr = internal global ptr @mixer_atomic_begin._entry, section ".printk_index", align 4
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"win: %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VP_ENABLE = %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VP_SRESET = %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VP_SHADOW_UPDATE = %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VP_FIELD_ID = %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VP_MODE = %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VP_IMG_SIZE_Y = %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VP_IMG_SIZE_C = %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VP_PER_RATE_CTRL = %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VP_TOP_Y_PTR = %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VP_BOT_Y_PTR = %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VP_TOP_C_PTR = %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VP_BOT_C_PTR = %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VP_ENDIAN_MODE = %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VP_SRC_H_POSITION = %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VP_SRC_V_POSITION = %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VP_SRC_WIDTH = %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VP_SRC_HEIGHT = %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VP_DST_H_POSITION = %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VP_DST_V_POSITION = %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VP_DST_WIDTH = %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VP_DST_HEIGHT = %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VP_H_RATIO = %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VP_V_RATIO = %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@exynos4210_mxr_drv_data = internal constant { %struct.mixer_drv_data, [24 x i8] } { %struct.mixer_drv_data { i32 0, i8 1, i8 1 }, [24 x i8] zeroinitializer }, align 32
@exynos4212_mxr_drv_data = internal constant { %struct.mixer_drv_data, [24 x i8] } { %struct.mixer_drv_data { i32 0, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@exynos5250_mxr_drv_data = internal constant { %struct.mixer_drv_data, [24 x i8] } { %struct.mixer_drv_data { i32 1, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@exynos5420_mxr_drv_data = internal constant { %struct.mixer_drv_data, [24 x i8] } { %struct.mixer_drv_data { i32 2, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"*ERROR* Failed to prepare_enable the mixer clk [%d]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"*ERROR* Failed to prepare_enable the hdmi clk [%d]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"*ERROR* Failed to prepare_enable the vp clk [%d]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"*ERROR* Failed to prepare_enable the sclk_mixer clk [%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 842093121, i64 842093144, i64 892424769, i64 892424792, i64 909199186]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1333, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"mixer_match_types\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1151, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"exynos_mixer_pm_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1325, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"mixer_driver\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1331, i32 24 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1233, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"mixer_component_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1219, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"plane_configs\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 122, i32 45 }
@___asan_gen_.121 = private unnamed_addr constant [15 x i8] c"mixer_crtc_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1117, i32 41 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 881, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 890, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 780, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 782, i32 39 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 784, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 788, i32 38 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 790, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 794, i32 43 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 796, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 801, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 808, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 818, i32 14 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 820, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 832, i32 36 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 834, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 839, i32 45 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 841, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 844, i32 45 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 846, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 857, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 864, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [14 x i8] c"mixer_formats\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 78, i32 23 }
@___asan_gen_.232 = private unnamed_addr constant [11 x i8] c"vp_formats\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 88, i32 23 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1000, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 696, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c"filter_y_horiz_tap8\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 153, i32 17 }
@___asan_gen_.250 = private unnamed_addr constant [19 x i8] c"filter_y_vert_tap4\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 164, i32 17 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 230, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 231, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 232, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 233, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 235, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 236, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 238, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 239, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 240, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 241, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 242, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 243, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 245, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 246, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 247, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 248, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 249, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 250, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1051, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1080, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 943, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 952, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 262, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 263, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 264, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 265, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 266, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 267, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 268, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 269, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 270, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 271, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 272, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 273, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 274, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 275, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 276, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 277, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 278, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 279, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 280, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 281, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 282, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 283, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 284, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [24 x i8] c"exynos4210_mxr_drv_data\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1145, i32 36 }
@___asan_gen_.397 = private unnamed_addr constant [24 x i8] c"exynos4212_mxr_drv_data\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1140, i32 36 }
@___asan_gen_.400 = private unnamed_addr constant [24 x i8] c"exynos5250_mxr_drv_data\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1135, i32 36 }
@___asan_gen_.403 = private unnamed_addr constant [24 x i8] c"exynos5420_mxr_drv_data\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1130, i32 36 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1290, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1297, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1305, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.416 = private constant [41 x i8] c"../drivers/gpu/drm/exynos/exynos_mixer.c\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1313, i32 5 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @mixer_atomic_begin._entry, ptr @mixer_atomic_begin._entry_ptr, ptr @mixer_atomic_enable._entry, ptr @mixer_atomic_enable._entry_ptr, ptr @mixer_resources_init._entry, ptr @mixer_resources_init._entry.12, ptr @mixer_resources_init._entry.16, ptr @mixer_resources_init._entry.19, ptr @mixer_resources_init._entry.22, ptr @mixer_resources_init._entry.26, ptr @mixer_resources_init._entry_ptr, ptr @mixer_resources_init._entry_ptr.14, ptr @mixer_resources_init._entry_ptr.18, ptr @mixer_resources_init._entry_ptr.21, ptr @mixer_resources_init._entry_ptr.24, ptr @mixer_resources_init._entry_ptr.28, ptr @vp_resources_init._entry, ptr @vp_resources_init._entry.33, ptr @vp_resources_init._entry.37, ptr @vp_resources_init._entry.40, ptr @vp_resources_init._entry.42, ptr @vp_resources_init._entry_ptr, ptr @vp_resources_init._entry_ptr.35, ptr @vp_resources_init._entry_ptr.39, ptr @vp_resources_init._entry_ptr.41, ptr @vp_resources_init._entry_ptr.43, ptr @.str, ptr @mixer_match_types, ptr @exynos_mixer_pm_ops, ptr @mixer_driver, ptr @.str.1, ptr @.str.2, ptr @mixer_component_ops, ptr @plane_configs, ptr @mixer_crtc_ops, ptr @.str.3, ptr @.str.4, ptr @mixer_resources_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @mixer_formats, ptr @vp_formats, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @filter_y_horiz_tap8, ptr @filter_y_vert_tap4, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @mixer_mode_fixup.modes, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @exynos4210_mxr_drv_data, ptr @exynos4212_mxr_drv_data, ptr @exynos5250_mxr_drv_data, ptr @exynos5420_mxr_drv_data, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_match_types to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_mixer_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plane_configs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_crtc_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_resources_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_resources_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_resources_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_resources_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_resources_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_resources_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_resources_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_resources_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_resources_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_resources_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_resources_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_resources_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_formats to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_atomic_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filter_y_horiz_tap8 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filter_y_vert_tap4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_mode_fixup.modes to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_atomic_begin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4210_mxr_drv_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4212_mxr_drv_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5250_mxr_drv_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_mxr_drv_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixer_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1728, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %call.i, align 8
  %dev5 = getelementptr inbounds %struct.mixer_context, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev5, align 4
  %2 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call3, align 4
  %mxr_ver = getelementptr inbounds %struct.mixer_context, ptr %call.i, i32 0, i32 17
  %4 = ptrtoint ptr %mxr_ver to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mxr_ver, align 4
  %is_vp_enabled = getelementptr inbounds %struct.mixer_drv_data, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %is_vp_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_vp_enabled, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.mixer_context, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or.i = or i32 %8, 8
  store i32 %or.i, ptr %flags, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %has_sclk = getelementptr inbounds %struct.mixer_drv_data, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %has_sclk to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_sclk, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %flags11 = getelementptr inbounds %struct.mixer_context, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags11, align 4
  %or.i38 = or i32 %12, 16
  store i32 %or.i38, ptr %flags11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call14 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @mixer_component_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.then16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end12.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %call14, %if.then16 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixer_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @mixer_component_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixer_bind(ptr noundef %dev, ptr nocapture noundef readnone %manager, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm_dev1.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %drm_dev1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %drm_dev1.i, align 8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %reg_slock.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %reg_slock.i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @mixer_resources_init.__key, i16 noundef signext 3) #6
  %call2.i.i = tail call ptr @devm_clk_get(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.6) #6
  %mixer.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %mixer.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2.i.i, ptr %mixer.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %entry.if.then.sink.split.i_crit_edge, label %if.end.i.i

entry.if.then.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.sink.split.i

if.end.i.i:                                       ; preds = %entry
  %call8.i.i = tail call ptr @devm_clk_get(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.11) #6
  %hdmi.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %hdmi.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %hdmi.i.i, align 4
  %cmp.i87.i.i = icmp ugt ptr %call8.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87.i.i, label %mixer_resources_init.exit.i, label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.end.i.i
  %call18.i.i = tail call ptr @devm_clk_get(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.15) #6
  %sclk_hdmi.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %sclk_hdmi.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call18.i.i, ptr %sclk_hdmi.i.i, align 4
  %cmp.i88.i.i = icmp ugt ptr %call18.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88.i.i, label %if.end17.i.i.if.then.sink.split.i_crit_edge, label %if.end25.i.i

if.end17.i.i.if.then.sink.split.i_crit_edge:      ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.sink.split.i

if.end25.i.i:                                     ; preds = %if.end17.i.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call27.i.i = tail call ptr @platform_get_resource(ptr noundef %9, i32 noundef 512, i32 noundef 0) #6
  %cmp.i.i = icmp eq ptr %call27.i.i, null
  br i1 %cmp.i.i, label %if.end25.i.i.if.then.sink.split.i_crit_edge, label %if.end32.i.i

if.end25.i.i.if.then.sink.split.i_crit_edge:      ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.sink.split.i

if.end32.i.i:                                     ; preds = %if.end25.i.i
  %10 = ptrtoint ptr %call27.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call27.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.resource, ptr %call27.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i.i.i, align 4
  %sub.i.i.i = sub i32 1, %11
  %add.i.i.i = add i32 %sub.i.i.i, %13
  %call34.i.i = tail call ptr @devm_ioremap(ptr noundef %dev1.i.i, i32 noundef %11, i32 noundef %add.i.i.i) #6
  %mixer_regs.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call34.i.i, ptr %mixer_regs.i.i, align 8
  %cmp36.i.i = icmp eq ptr %call34.i.i, null
  br i1 %cmp36.i.i, label %if.end32.i.i.if.then.sink.split.i_crit_edge, label %if.end41.i.i

if.end32.i.i.if.then.sink.split.i_crit_edge:      ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.sink.split.i

if.end41.i.i:                                     ; preds = %if.end32.i.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %call43.i.i = tail call i32 @platform_get_irq(ptr noundef %16, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %cmp44.i.i = icmp slt i32 %call43.i.i, 0
  br i1 %cmp44.i.i, label %if.end41.i.i.if.then.i_crit_edge, label %if.end46.i.i

if.end41.i.i.if.then.i_crit_edge:                 ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end46.i.i:                                     ; preds = %if.end41.i.i
  %irq.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call43.i.i, ptr %irq.i.i, align 4
  %call.i.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1.i.i, i32 noundef %call43.i.i, ptr noundef nonnull @mixer_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end46.i.i.if.end.i_crit_edge, label %if.end46.i.i.if.then.sink.split.i_crit_edge

if.end46.i.i.if.then.sink.split.i_crit_edge:      ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.sink.split.i

if.end46.i.i.if.end.i_crit_edge:                  ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

mixer_resources_init.exit.i:                      ; preds = %if.end.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.13) #9
  %18 = ptrtoint ptr %hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdmi.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %mixer_resources_init.exit.i.if.end.i_crit_edge, label %mixer_resources_init.exit.i.if.then.i_crit_edge

mixer_resources_init.exit.i.if.then.i_crit_edge:  ; preds = %mixer_resources_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

mixer_resources_init.exit.i.if.end.i_crit_edge:   ; preds = %mixer_resources_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.sink.split.i:                             ; preds = %if.end46.i.i.if.then.sink.split.i_crit_edge, %if.end32.i.i.if.then.sink.split.i_crit_edge, %if.end25.i.i.if.then.sink.split.i_crit_edge, %if.end17.i.i.if.then.sink.split.i_crit_edge, %entry.if.then.sink.split.i_crit_edge
  %.str.27.sink.i = phi ptr [ @.str.7, %entry.if.then.sink.split.i_crit_edge ], [ @.str.17, %if.end17.i.i.if.then.sink.split.i_crit_edge ], [ @.str.20, %if.end25.i.i.if.then.sink.split.i_crit_edge ], [ @.str.23, %if.end32.i.i.if.then.sink.split.i_crit_edge ], [ @.str.27, %if.end46.i.i.if.then.sink.split.i_crit_edge ]
  %retval.0.i38.ph.i = phi i32 [ -19, %entry.if.then.sink.split.i_crit_edge ], [ -19, %if.end17.i.i.if.then.sink.split.i_crit_edge ], [ -6, %if.end25.i.i.if.then.sink.split.i_crit_edge ], [ -6, %if.end32.i.i.if.then.sink.split.i_crit_edge ], [ %call.i.i.i, %if.end46.i.i.if.then.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull %.str.27.sink.i) #9
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.sink.split.i, %mixer_resources_init.exit.i.if.then.i_crit_edge, %if.end41.i.i.if.then.i_crit_edge
  %retval.0.i38.i = phi i32 [ %20, %mixer_resources_init.exit.i.if.then.i_crit_edge ], [ %call43.i.i, %if.end41.i.i.if.then.i_crit_edge ], [ %retval.0.i38.ph.i, %if.then.sink.split.i ]
  %dev.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i38.i) #6
  br label %mixer_initialize.exit

if.end.i:                                         ; preds = %mixer_resources_init.exit.i.if.end.i_crit_edge, %if.end46.i.i.if.end.i_crit_edge
  %flags.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %25 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool3.not.i = icmp eq i32 %25, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then4.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then4.i:                                       ; preds = %if.end.i
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %dev1.i26.i = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %call.i.i = tail call ptr @devm_clk_get(ptr noundef %dev1.i26.i, ptr noundef nonnull @.str.29) #6
  %vp.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %vp.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i, ptr %vp.i.i, align 8
  %cmp.i.i27.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i27.i, label %if.then4.i.mixer_initialize.exit.thread_crit_edge, label %if.end.i29.i

if.then4.i.mixer_initialize.exit.thread_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_initialize.exit.thread

if.end.i29.i:                                     ; preds = %if.then4.i
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags.i, align 4
  %31 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i28.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i28.i, label %if.end.i29.i.if.end30.i.i_crit_edge, label %if.then5.i.i

if.end.i29.i.if.end30.i.i_crit_edge:              ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i.i

if.then5.i.i:                                     ; preds = %if.end.i29.i
  %call6.i.i = tail call ptr @devm_clk_get(ptr noundef %dev1.i26.i, ptr noundef nonnull @.str.32) #6
  %sclk_mixer.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 14
  %32 = ptrtoint ptr %sclk_mixer.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call6.i.i, ptr %sclk_mixer.i.i, align 8
  %cmp.i73.i.i = icmp ugt ptr %call6.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73.i.i, label %if.then5.i.i.mixer_initialize.exit.thread_crit_edge, label %if.end13.i.i

if.then5.i.i.mixer_initialize.exit.thread_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_initialize.exit.thread

if.end13.i.i:                                     ; preds = %if.then5.i.i
  %call14.i.i = tail call ptr @devm_clk_get(ptr noundef %dev1.i26.i, ptr noundef nonnull @.str.36) #6
  %mout_mixer.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 16
  %33 = ptrtoint ptr %mout_mixer.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call14.i.i, ptr %mout_mixer.i.i, align 8
  %cmp.i74.i.i = icmp ugt ptr %call14.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74.i.i, label %if.end13.i.i.mixer_initialize.exit.thread_crit_edge, label %if.end21.i.i

if.end13.i.i.mixer_initialize.exit.thread_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_initialize.exit.thread

if.end21.i.i:                                     ; preds = %if.end13.i.i
  %sclk_hdmi.i30.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 15
  %34 = ptrtoint ptr %sclk_hdmi.i30.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sclk_hdmi.i30.i, align 4
  %tobool22.not.i.i = icmp eq ptr %35, null
  %tobool24.not.i.i = icmp eq ptr %call14.i.i, null
  %or.cond.i.i = select i1 %tobool22.not.i.i, i1 true, i1 %tobool24.not.i.i
  br i1 %or.cond.i.i, label %if.end21.i.i.if.end30.i.i_crit_edge, label %if.then25.i.i

if.end21.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i.i

if.then25.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call28.i.i = tail call i32 @clk_set_parent(ptr noundef nonnull %call14.i.i, ptr noundef nonnull %35) #6
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then25.i.i, %if.end21.i.i.if.end30.i.i_crit_edge, %if.end.i29.i.if.end30.i.i_crit_edge
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %call32.i.i = tail call ptr @platform_get_resource(ptr noundef %37, i32 noundef 512, i32 noundef 1) #6
  %cmp.i31.i = icmp eq ptr %call32.i.i, null
  br i1 %cmp.i31.i, label %if.end30.i.i.mixer_initialize.exit.thread_crit_edge, label %if.end37.i.i

if.end30.i.i.mixer_initialize.exit.thread_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_initialize.exit.thread

if.end37.i.i:                                     ; preds = %if.end30.i.i
  %38 = ptrtoint ptr %call32.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call32.i.i, align 4
  %end.i.i32.i = getelementptr inbounds %struct.resource, ptr %call32.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %end.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %end.i.i32.i, align 4
  %sub.i.i33.i = sub i32 1, %39
  %add.i.i34.i = add i32 %sub.i.i33.i, %41
  %call39.i.i = tail call ptr @devm_ioremap(ptr noundef %dev1.i26.i, i32 noundef %39, i32 noundef %add.i.i34.i) #6
  %vp_regs.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 9
  %42 = ptrtoint ptr %vp_regs.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call39.i.i, ptr %vp_regs.i.i, align 4
  %cmp41.i.i = icmp eq ptr %call39.i.i, null
  br i1 %cmp41.i.i, label %if.end37.i.i.mixer_initialize.exit.thread_crit_edge, label %if.end37.i.i.if.end10.i_crit_edge

if.end37.i.i.if.end10.i_crit_edge:                ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end37.i.i.mixer_initialize.exit.thread_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_initialize.exit.thread

mixer_initialize.exit.thread:                     ; preds = %if.end37.i.i.mixer_initialize.exit.thread_crit_edge, %if.end30.i.i.mixer_initialize.exit.thread_crit_edge, %if.end13.i.i.mixer_initialize.exit.thread_crit_edge, %if.then5.i.i.mixer_initialize.exit.thread_crit_edge, %if.then4.i.mixer_initialize.exit.thread_crit_edge
  %.str.23.sink.i.i = phi ptr [ @.str.30, %if.then4.i.mixer_initialize.exit.thread_crit_edge ], [ @.str.34, %if.then5.i.i.mixer_initialize.exit.thread_crit_edge ], [ @.str.38, %if.end13.i.i.mixer_initialize.exit.thread_crit_edge ], [ @.str.20, %if.end30.i.i.mixer_initialize.exit.thread_crit_edge ], [ @.str.23, %if.end37.i.i.mixer_initialize.exit.thread_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ -19, %if.then4.i.mixer_initialize.exit.thread_crit_edge ], [ -19, %if.then5.i.i.mixer_initialize.exit.thread_crit_edge ], [ -19, %if.end13.i.i.mixer_initialize.exit.thread_crit_edge ], [ -6, %if.end30.i.i.mixer_initialize.exit.thread_crit_edge ], [ -6, %if.end37.i.i.mixer_initialize.exit.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i26.i, ptr noundef nonnull %.str.23.sink.i.i) #9
  %dev8.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev8.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %44, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef %retval.0.ph.i.i) #6
  br label %cleanup

if.end10.i:                                       ; preds = %if.end37.i.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %dev11.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev11.i, align 4
  %dma_priv.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 3
  %call12.i = tail call i32 @exynos_drm_register_dma(ptr noundef %data, ptr noundef %46, ptr noundef %dma_priv.i) #6
  br label %mixer_initialize.exit

mixer_initialize.exit:                            ; preds = %if.end10.i, %if.then.i
  %retval.0.i = phi i32 [ %retval.0.i38.i, %if.then.i ], [ %call12.i, %if.end10.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end6, label %mixer_initialize.exit.cleanup_crit_edge

mixer_initialize.exit.cleanup_crit_edge:          ; preds = %mixer_initialize.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %mixer_initialize.exit
  %flags = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 6
  %arrayidx = getelementptr %struct.mixer_context, ptr %1, i32 0, i32 5, i32 0
  %call8 = tail call i32 @exynos_plane_init(ptr noundef %data, ptr noundef %arrayidx, i32 noundef 0, ptr noundef nonnull @plane_configs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.1, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.1:                                        ; preds = %if.end6
  %arrayidx.1 = getelementptr %struct.mixer_context, ptr %1, i32 0, i32 5, i32 1
  %call8.1 = tail call i32 @exynos_plane_init(ptr noundef %data, ptr noundef %arrayidx.1, i32 noundef 1, ptr noundef getelementptr inbounds ([3 x %struct.exynos_drm_plane_config], ptr @plane_configs, i32 0, i32 1)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %land.lhs.true.2, label %if.end6.1.cleanup_crit_edge

if.end6.1.cleanup_crit_edge:                      ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.2:                                  ; preds = %if.end6.1
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags, align 4
  %49 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool4.not.2 = icmp eq i32 %49, 0
  br i1 %tobool4.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %if.end6.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end6.2:                                        ; preds = %land.lhs.true.2
  %arrayidx.2 = getelementptr %struct.mixer_context, ptr %1, i32 0, i32 5, i32 2
  %call8.2 = tail call i32 @exynos_plane_init(ptr noundef %data, ptr noundef %arrayidx.2, i32 noundef 2, ptr noundef getelementptr inbounds ([3 x %struct.exynos_drm_plane_config], ptr @plane_configs, i32 0, i32 2)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %tobool9.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool9.not.2, label %if.end6.2.for.inc.2_crit_edge, label %if.end6.2.cleanup_crit_edge

if.end6.2.cleanup_crit_edge:                      ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.2.for.inc.2_crit_edge:                    ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end6.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge
  %planes12 = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 5
  %call14 = tail call ptr @exynos_drm_crtc_create(ptr noundef %data, ptr noundef %planes12, i32 noundef 2, ptr noundef nonnull @mixer_crtc_ops, ptr noundef %1) #6
  %crtc = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call14, ptr %crtc, align 8
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %drm_dev1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %drm_dev1.i, align 8
  %dev.i46 = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %dev.i46 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i46, align 4
  %dma_priv.i47 = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 3
  tail call void @exynos_drm_unregister_dma(ptr noundef %52, ptr noundef %54, ptr noundef %dma_priv.i47) #6
  %55 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %crtc, align 8
  %57 = ptrtoint ptr %56 to i32
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %for.inc.2.cleanup_crit_edge, %if.end6.2.cleanup_crit_edge, %if.end6.1.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %mixer_initialize.exit.cleanup_crit_edge, %mixer_initialize.exit.thread
  %retval.0 = phi i32 [ %57, %if.then17 ], [ %retval.0.i, %mixer_initialize.exit.cleanup_crit_edge ], [ 0, %for.inc.2.cleanup_crit_edge ], [ %retval.0.ph.i.i, %mixer_initialize.exit.thread ], [ %call8, %if.end6.cleanup_crit_edge ], [ %call8.1, %if.end6.1.cleanup_crit_edge ], [ %call8.2, %if.end6.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mixer_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm_dev.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %drm_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %dma_priv.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 3
  tail call void @exynos_drm_unregister_dma(ptr noundef %3, ptr noundef %5, ptr noundef %dma_priv.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_crtc_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_register_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixer_irq_handler(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_slock = getelementptr inbounds %struct.mixer_context, ptr %arg, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %reg_slock) #6
  %mixer_regs.i = getelementptr inbounds %struct.mixer_context, ptr %arg, i32 0, i32 8
  %0 = ptrtoint ptr %mixer_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !220
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.then

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then:                                          ; preds = %entry
  %or = and i32 %3, -2050
  %and1 = or i32 %or, 2048
  %flags = getelementptr inbounds %struct.mixer_context, ptr %arg, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call4 = tail call fastcc zeroext i1 @mixer_is_synced(ptr noundef %arg)
  br i1 %call4, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %crtc = getelementptr inbounds %struct.mixer_context, ptr %arg, i32 0, i32 4
  %7 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %crtc, align 8
  %call6 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %8) #6
  br label %out

out:                                              ; preds = %if.end, %land.lhs.true.out_crit_edge, %entry.out_crit_edge
  %val.0 = phi i32 [ %and1, %if.end ], [ %and1, %land.lhs.true.out_crit_edge ], [ %3, %entry.out_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %val.0) #6
  %10 = ptrtoint ptr %mixer_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mixer_regs.i, align 8
  %add.ptr.i19 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %9) #6, !srcloc !223
  tail call void @_raw_spin_unlock(ptr noundef %reg_slock) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mixer_is_synced(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mxr_ver = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 17
  %0 = ptrtoint ptr %mxr_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mxr_ver, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mixer_regs.i = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %mixer_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %5 = and i32 %4, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %vp_regs.i = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 9
  %9 = ptrtoint ptr %vp_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vp_regs.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %mixer_regs.i40 = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 8
  %12 = ptrtoint ptr %mixer_regs.i40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mixer_regs.i40, align 8
  %add.ptr.i41 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %15 = ptrtoint ptr %mixer_regs.i40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mixer_regs.i40, align 8
  %add.ptr.i43 = getelementptr i8, ptr %16, i32 8196
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %17)
  %cmp11.not = icmp eq i32 %14, %17
  br i1 %cmp11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %18 = ptrtoint ptr %mixer_regs.i40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mixer_regs.i40, align 8
  %add.ptr.i45 = getelementptr i8, ptr %19, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %21 = ptrtoint ptr %mixer_regs.i40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mixer_regs.i40, align 8
  %add.ptr.i47 = getelementptr i8, ptr %22, i32 8228
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %23)
  %cmp16.not = icmp eq i32 %20, %23
  br i1 %cmp16.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %mixer_regs.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mixer_regs.i40, align 8
  %add.ptr.i49 = getelementptr i8, ptr %25, i32 68
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %27 = ptrtoint ptr %mixer_regs.i40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mixer_regs.i40, align 8
  %add.ptr.i51 = getelementptr i8, ptr %28, i32 8260
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %29)
  %cmp21.not = icmp eq i32 %26, %29
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ %tobool.not, %if.then ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %if.end13.cleanup_crit_edge ], [ %cmp21.not, %if.end18 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mixer_atomic_enable(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %flags = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end5

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !225
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !226
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !227
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.44) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pipe_clk.i = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 4
  %9 = ptrtoint ptr %pipe_clk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pipe_clk.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end5.exynos_drm_pipe_clk_enable.exit_crit_edge, label %if.then.i26

if.end5.exynos_drm_pipe_clk_enable.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_drm_pipe_clk_enable.exit

if.then.i26:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void %12(ptr noundef nonnull %10, i1 noundef zeroext true) #6
  br label %exynos_drm_pipe_clk_enable.exit

exynos_drm_pipe_clk_enable.exit:                  ; preds = %if.then.i26, %if.end5.exynos_drm_pipe_clk_enable.exit_crit_edge
  %mixer_regs.i.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %16 = and i32 %15, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mixer_regs.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !223
  %19 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %22 = or i32 %21, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mixer_regs.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !223
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool8.not = icmp eq i32 %27, 0
  br i1 %tobool8.not, label %exynos_drm_pipe_clk_enable.exit.if.end10_crit_edge, label %if.then9

exynos_drm_pipe_clk_enable.exit.if.end10_crit_edge: ; preds = %exynos_drm_pipe_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %exynos_drm_pipe_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %31 = or i32 %30, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %33, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %31) #6, !srcloc !223
  %34 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i.i32 = getelementptr i8, ptr %35, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %37 = or i32 %36, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i35 = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %37) #6, !srcloc !223
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %exynos_drm_pipe_clk_enable.exit.if.end10_crit_edge
  %reg_slock.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_slock.i) #6
  %40 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %43 = or i32 %42, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i.i37 = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i37, i32 %43) #6, !srcloc !223
  %46 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i.i34.i = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %49 = or i32 %48, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i37.i = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 %49) #6, !srcloc !223
  %52 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %55 = or i32 %54, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %56 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mixer_regs.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i41.i = getelementptr i8, ptr %59, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 0) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i43.i = getelementptr i8, ptr %61, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 -2139095040) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %62 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i45.i = getelementptr i8, ptr %63, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 -2139095040) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i47.i = getelementptr i8, ptr %65, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 -2139095040) #6, !srcloc !223
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %flags, align 4
  %68 = and i32 %67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i38 = icmp eq i32 %68, 0
  br i1 %tobool.not.i38, label %if.end10.if.end.i_crit_edge, label %if.then.i39

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i39:                                      ; preds = %if.end10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %vp_regs.i.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 9
  %69 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i.i48.i = getelementptr i8, ptr %70, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48.i, i32 16777216) #6, !srcloc !223
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body5.preheader.i.i.while.body.i.i_crit_edge, %if.then.i39
  %dec34.i.i = phi i32 [ 99, %if.then.i39 ], [ %dec.i.i, %while.body5.preheader.i.i.while.body.i.i_crit_edge ]
  %71 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i32.i.i = getelementptr i8, ptr %72, i32 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  %74 = and i32 %73, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool1.not.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool1.not.not.i.i, label %while.body.i.i.for.body.i.i.i.preheader_crit_edge, label %while.body5.preheader.i.i

while.body.i.i.for.body.i.i.i.preheader_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.preheader

while.body5.preheader.i.i:                        ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748000) #6
  %dec.i.i = add nsw i32 %dec34.i.i, -1
  %cond.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cond.i.i, label %do.end.i.i, label %while.body5.preheader.i.i.while.body.i.i_crit_edge, !prof !230

while.body5.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.body5.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

do.end.i.i:                                       ; preds = %while.body5.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 696, i32 noundef 9, ptr noundef nonnull @.str.46) #6
  br label %for.body.i.i.i.preheader

for.body.i.i.i.preheader:                         ; preds = %do.end.i.i, %while.body.i.i.for.body.i.i.i.preheader_crit_edge
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.i.preheader
  %reg_id.addr.028.i.i.i = phi i32 [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 108, %for.body.i.i.i.preheader ]
  %size.addr.027.i.i.i = phi i32 [ %sub.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 64, %for.body.i.i.i.preheader ]
  %data.addr.026.i.i.i = phi ptr [ %add.ptr.i.i49.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ @filter_y_horiz_tap8, %for.body.i.i.i.preheader ]
  %85 = ptrtoint ptr %data.addr.026.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %data.addr.026.i.i.i, align 1
  %conv.i.i.i = zext i8 %86 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx8.i.i.i = getelementptr i8, ptr %data.addr.026.i.i.i, i32 1
  %87 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %88 to i32
  %shl10.i.i.i = shl nuw nsw i32 %conv9.i.i.i, 16
  %or.i.i.i = or i32 %shl10.i.i.i, %shl.i.i.i
  %arrayidx11.i.i.i = getelementptr i8, ptr %data.addr.026.i.i.i, i32 2
  %89 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx11.i.i.i, align 1
  %conv12.i.i.i = zext i8 %90 to i32
  %shl13.i.i.i = shl nuw nsw i32 %conv12.i.i.i, 8
  %or14.i.i.i = or i32 %or.i.i.i, %shl13.i.i.i
  %arrayidx15.i.i.i = getelementptr i8, ptr %data.addr.026.i.i.i, i32 3
  %91 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx15.i.i.i, align 1
  %conv16.i.i.i = zext i8 %92 to i32
  %or17.i.i.i = or i32 %or14.i.i.i, %conv16.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %93 = tail call i32 @llvm.bswap.i32(i32 %or17.i.i.i) #6
  %94 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %95, i32 %reg_id.addr.028.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %93) #6, !srcloc !223
  %sub.i.i.i = add nsw i32 %size.addr.027.i.i.i, -4
  %add.i.i.i = add nuw nsw i32 %reg_id.addr.028.i.i.i, 4
  %add.ptr.i.i49.i = getelementptr i8, ptr %data.addr.026.i.i.i, i32 4
  %tobool7.not.i.i.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %for.body.i.i.i.for.body.i25.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.body.i.i.i.for.body.i25.i.i_crit_edge:        ; preds = %for.body.i.i.i
  br label %for.body.i25.i.i

for.body.i25.i.i:                                 ; preds = %for.body.i25.i.i.for.body.i25.i.i_crit_edge, %for.body.i.i.i.for.body.i25.i.i_crit_edge
  %reg_id.addr.028.i4.i.i = phi i32 [ %add.i22.i.i, %for.body.i25.i.i.for.body.i25.i.i_crit_edge ], [ 236, %for.body.i.i.i.for.body.i25.i.i_crit_edge ]
  %size.addr.027.i5.i.i = phi i32 [ %sub.i21.i.i, %for.body.i25.i.i.for.body.i25.i.i_crit_edge ], [ 64, %for.body.i.i.i.for.body.i25.i.i_crit_edge ]
  %data.addr.026.i6.i.i = phi ptr [ %add.ptr.i23.i.i, %for.body.i25.i.i.for.body.i25.i.i_crit_edge ], [ @filter_y_vert_tap4, %for.body.i.i.i.for.body.i25.i.i_crit_edge ]
  %96 = ptrtoint ptr %data.addr.026.i6.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %data.addr.026.i6.i.i, align 1
  %conv.i7.i.i = zext i8 %97 to i32
  %shl.i8.i.i = shl nuw i32 %conv.i7.i.i, 24
  %arrayidx8.i9.i.i = getelementptr i8, ptr %data.addr.026.i6.i.i, i32 1
  %98 = ptrtoint ptr %arrayidx8.i9.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx8.i9.i.i, align 1
  %conv9.i10.i.i = zext i8 %99 to i32
  %shl10.i11.i.i = shl nuw nsw i32 %conv9.i10.i.i, 16
  %or.i12.i.i = or i32 %shl10.i11.i.i, %shl.i8.i.i
  %arrayidx11.i13.i.i = getelementptr i8, ptr %data.addr.026.i6.i.i, i32 2
  %100 = ptrtoint ptr %arrayidx11.i13.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx11.i13.i.i, align 1
  %conv12.i14.i.i = zext i8 %101 to i32
  %shl13.i15.i.i = shl nuw nsw i32 %conv12.i14.i.i, 8
  %or14.i16.i.i = or i32 %or.i12.i.i, %shl13.i15.i.i
  %arrayidx15.i17.i.i = getelementptr i8, ptr %data.addr.026.i6.i.i, i32 3
  %102 = ptrtoint ptr %arrayidx15.i17.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx15.i17.i.i, align 1
  %conv16.i18.i.i = zext i8 %103 to i32
  %or17.i19.i.i = or i32 %or14.i16.i.i, %conv16.i18.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %104 = tail call i32 @llvm.bswap.i32(i32 %or17.i19.i.i) #6
  %105 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i.i20.i.i = getelementptr i8, ptr %106, i32 %reg_id.addr.028.i4.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i20.i.i, i32 %104) #6, !srcloc !223
  %sub.i21.i.i = add nsw i32 %size.addr.027.i5.i.i, -4
  %add.i22.i.i = add nuw nsw i32 %reg_id.addr.028.i4.i.i, 4
  %add.ptr.i23.i.i = getelementptr i8, ptr %data.addr.026.i6.i.i, i32 4
  %tobool7.not.i24.i.i = icmp eq i32 %sub.i21.i.i, 0
  br i1 %tobool7.not.i24.i.i, label %vp_default_filter.exit.i, label %for.body.i25.i.i.for.body.i25.i.i_crit_edge

for.body.i25.i.i.for.body.i25.i.i_crit_edge:      ; preds = %for.body.i25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i25.i.i

vp_default_filter.exit.i:                         ; preds = %for.body.i25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %107 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i.i44.i.i = getelementptr i8, ptr %108, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44.i.i, i32 -117768960) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %109 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i.i44.1.i.i = getelementptr i8, ptr %110, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44.1.i.i, i32 -101123848) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %111 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i.i44.2.i.i = getelementptr i8, ptr %112, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44.2.i.i, i32 -33752070) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %113 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i.i44.3.i.i = getelementptr i8, ptr %114, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44.3.i.i, i32 16777214) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %115 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i.i44.4.i.i = getelementptr i8, ptr %116, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44.4.i.i, i32 1987870335) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %117 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i.i44.5.i.i = getelementptr i8, ptr %118, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44.5.i.i, i32 1365010031) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %119 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i.i44.6.i.i = getelementptr i8, ptr %120, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44.6.i.i, i32 623917894) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %121 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i.i44.7.i.i = getelementptr i8, ptr %122, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44.7.i.i, i32 84611867) #6, !srcloc !223
  br label %if.end.i

if.end.i:                                         ; preds = %vp_default_filter.exit.i, %if.end10.if.end.i_crit_edge
  %123 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i.i51.i = getelementptr i8, ptr %124, i32 4
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %126 = and i32 %125, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %127 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i53.i = getelementptr i8, ptr %128, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %126) #6, !srcloc !223
  %129 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i.i55.i = getelementptr i8, ptr %130, i32 4
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %132 = and i32 %131, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %133 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i57.i = getelementptr i8, ptr %134, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 %132) #6, !srcloc !223
  %135 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %flags, align 4
  %137 = and i32 %136, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool9.not.i = icmp eq i32 %137, 0
  br i1 %tobool9.not.i, label %if.end.i.mixer_win_reset.exit_crit_edge, label %if.then10.i

if.end.i.mixer_win_reset.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_win_reset.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %138 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i.i59.i = getelementptr i8, ptr %139, i32 4
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i59.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %141 = and i32 %140, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %142 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i61.i = getelementptr i8, ptr %143, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %141) #6, !srcloc !223
  br label %mixer_win_reset.exit

mixer_win_reset.exit:                             ; preds = %if.then10.i, %if.end.i.mixer_win_reset.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %144 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i63.i = getelementptr i8, ptr %145, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 0) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %146 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i65.i = getelementptr i8, ptr %147, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 0) #6, !srcloc !223
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_slock.i, i32 noundef %call2.i) #6
  %crtc.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 4
  %148 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %crtc.i, align 8
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %149, i32 0, i32 22
  %150 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %state.i, align 4
  %adjusted_mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %151, i32 0, i32 7
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %151, i32 0, i32 7, i32 1
  %152 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %hdisplay.i, align 4
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %151, i32 0, i32 7, i32 6
  %154 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %vdisplay.i, align 2
  %156 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %flags, align 4
  %158 = and i32 %157, 4
  %159 = xor i32 %158, 4
  %mxr_ver.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 17
  %160 = ptrtoint ptr %mxr_ver.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %mxr_ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %161)
  %cmp.i.i = icmp eq i32 %161, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %mixer_win_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i = zext i16 %155 to i32
  %shl.i.i = shl nuw i32 %conv1.i, 16
  %and.i.i = and i32 %shl.i.i, 134152192
  %162 = and i16 %153, 2047
  %and2.i.i = zext i16 %162 to i32
  %or.i.i = or i32 %and.i.i, %and2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %163 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %164 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i.i.i41 = getelementptr i8, ptr %165, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i41, i32 %163) #6, !srcloc !223
  br label %mixer_cfg_scan.exit.i

if.else.i.i:                                      ; preds = %mixer_win_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  %scan_value.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 18
  %166 = ptrtoint ptr %scan_value.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %scan_value.i.i, align 8
  %or3.i.i = or i32 %167, %159
  br label %mixer_cfg_scan.exit.i

mixer_cfg_scan.exit.i:                            ; preds = %if.else.i.i, %if.then.i.i
  %val.0.i.i = phi i32 [ %159, %if.then.i.i ], [ %or3.i.i, %if.else.i.i ]
  %168 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i.i.i.i42 = getelementptr i8, ptr %169, i32 4
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i42) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %and.i.i.i = and i32 %val.0.i.i, 71
  %171 = and i32 %170, -1191182337
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #6
  %or.i.i.i43 = or i32 %172, %and.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %173 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i43) #6
  %174 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %175, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %173) #6, !srcloc !223
  %call.i.i = tail call i32 @drm_default_rgb_quant_range(ptr noundef %adjusted_mode.i) #6
  %176 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %vdisplay.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %177)
  %cmp.i7.i = icmp ult i16 %177, 720
  br i1 %cmp.i7.i, label %mixer_cfg_scan.exit.i.mixer_commit.exit_crit_edge, label %if.else.i10.i

mixer_cfg_scan.exit.i.mixer_commit.exit_crit_edge: ; preds = %mixer_cfg_scan.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_commit.exit

if.else.i10.i:                                    ; preds = %mixer_cfg_scan.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %178 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i.i9.i = getelementptr i8, ptr %179, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i, i32 552133701) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %180 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i15.i.i = getelementptr i8, ptr %181, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i, i32 -515060420) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %182 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i17.i.i = getelementptr i8, ptr %183, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 -321709042) #6, !srcloc !223
  br label %mixer_commit.exit

mixer_commit.exit:                                ; preds = %if.else.i10.i, %mixer_cfg_scan.exit.i.mixer_commit.exit_crit_edge
  %val.0.i11.i = phi i32 [ 1024, %if.else.i10.i ], [ 0, %mixer_cfg_scan.exit.i.mixer_commit.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp2.i.i = icmp eq i32 %call.i.i, 2
  %or6.i.i = or i32 %val.0.i11.i, 512
  %val.1.i.i = select i1 %cmp2.i.i, i32 %val.0.i11.i, i32 %or6.i.i
  %184 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i.i.i13.i = getelementptr i8, ptr %185, i32 4
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i13.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %187 = and i32 %186, -393217
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #6
  %or.i.i14.i = or i32 %188, %val.1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %189 = tail call i32 @llvm.bswap.i32(i32 %or.i.i14.i) #6
  %190 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i18.i.i = getelementptr i8, ptr %191, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 %189) #6, !srcloc !223
  %192 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %195 = or i32 %194, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %196 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mixer_regs.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %195) #6, !srcloc !223
  tail call fastcc void @mixer_enable_sync(ptr noundef %1)
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #6
  br label %cleanup

cleanup:                                          ; preds = %mixer_commit.exit, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mixer_atomic_disable(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %flags = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mixer_regs.i.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mixer_regs.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !223
  %10 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %13 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not3.i = icmp eq i32 %13, 0
  br i1 %tobool.not3.i, label %if.end.land.rhs.i_crit_edge, label %if.end.mixer_stop.exit_crit_edge

if.end.mixer_stop.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_stop.exit

if.end.land.rhs.i_crit_edge:                      ; preds = %if.end
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.land.rhs.i_crit_edge
  %timeout.04.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 20, %if.end.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.04.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i.mixer_stop.exit_crit_edge, label %while.body.i

land.rhs.i.mixer_stop.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_stop.exit

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #6
  %14 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %17 = and i32 %16, 33554432
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.mixer_stop.exit_crit_edge

while.body.i.mixer_stop.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_stop.exit

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

mixer_stop.exit:                                  ; preds = %while.body.i.mixer_stop.exit_crit_edge, %land.rhs.i.mixer_stop.exit_crit_edge, %if.end.mixer_stop.exit_crit_edge
  tail call fastcc void @mixer_regs_dump(ptr noundef %1)
  %18 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx1, align 8
  %dev.i = getelementptr inbounds %struct.mixer_context, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %index.i = getelementptr %struct.mixer_context, ptr %1, i32 0, i32 5, i32 0, i32 2
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %21, i32 noundef 4, ptr noundef nonnull @.str.68, i32 noundef %23) #6
  %flags1.i = getelementptr inbounds %struct.mixer_context, ptr %19, i32 0, i32 6
  %24 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags1.i, align 4
  %and1.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i14 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i14, label %mixer_stop.exit.mixer_disable_plane.exit_crit_edge, label %do.body2.i

mixer_stop.exit.mixer_disable_plane.exit_crit_edge: ; preds = %mixer_stop.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_disable_plane.exit

do.body2.i:                                       ; preds = %mixer_stop.exit
  call void @__sanitizer_cov_trace_pc() #8
  %reg_slock.i = getelementptr inbounds %struct.mixer_context, ptr %19, i32 0, i32 10
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_slock.i) #6
  %26 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i, align 4
  tail call fastcc void @mixer_cfg_layer(ptr noundef %19, i32 noundef %27, i32 noundef 0, i1 noundef zeroext false) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_slock.i, i32 noundef %call4.i) #6
  br label %mixer_disable_plane.exit

mixer_disable_plane.exit:                         ; preds = %do.body2.i, %mixer_stop.exit.mixer_disable_plane.exit_crit_edge
  %28 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx1, align 8
  %dev.i.1 = getelementptr inbounds %struct.mixer_context, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %dev.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.1, align 4
  %index.i.1 = getelementptr %struct.mixer_context, ptr %1, i32 0, i32 5, i32 1, i32 2
  %32 = ptrtoint ptr %index.i.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index.i.1, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %31, i32 noundef 4, ptr noundef nonnull @.str.68, i32 noundef %33) #6
  %flags1.i.1 = getelementptr inbounds %struct.mixer_context, ptr %29, i32 0, i32 6
  %34 = ptrtoint ptr %flags1.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags1.i.1, align 4
  %and1.i.i.1 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.1)
  %tobool.not.i14.1 = icmp eq i32 %and1.i.i.1, 0
  br i1 %tobool.not.i14.1, label %mixer_disable_plane.exit.mixer_disable_plane.exit.1_crit_edge, label %do.body2.i.1

mixer_disable_plane.exit.mixer_disable_plane.exit.1_crit_edge: ; preds = %mixer_disable_plane.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_disable_plane.exit.1

do.body2.i.1:                                     ; preds = %mixer_disable_plane.exit
  call void @__sanitizer_cov_trace_pc() #8
  %reg_slock.i.1 = getelementptr inbounds %struct.mixer_context, ptr %29, i32 0, i32 10
  %call4.i.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_slock.i.1) #6
  %36 = ptrtoint ptr %index.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index.i.1, align 4
  tail call fastcc void @mixer_cfg_layer(ptr noundef %29, i32 noundef %37, i32 noundef 0, i1 noundef zeroext false) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_slock.i.1, i32 noundef %call4.i.1) #6
  br label %mixer_disable_plane.exit.1

mixer_disable_plane.exit.1:                       ; preds = %do.body2.i.1, %mixer_disable_plane.exit.mixer_disable_plane.exit.1_crit_edge
  %38 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx1, align 8
  %dev.i.2 = getelementptr inbounds %struct.mixer_context, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %dev.i.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i.2, align 4
  %index.i.2 = getelementptr %struct.mixer_context, ptr %1, i32 0, i32 5, i32 2, i32 2
  %42 = ptrtoint ptr %index.i.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index.i.2, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %41, i32 noundef 4, ptr noundef nonnull @.str.68, i32 noundef %43) #6
  %flags1.i.2 = getelementptr inbounds %struct.mixer_context, ptr %39, i32 0, i32 6
  %44 = ptrtoint ptr %flags1.i.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags1.i.2, align 4
  %and1.i.i.2 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.2)
  %tobool.not.i14.2 = icmp eq i32 %and1.i.i.2, 0
  br i1 %tobool.not.i14.2, label %mixer_disable_plane.exit.1.mixer_disable_plane.exit.2_crit_edge, label %do.body2.i.2

mixer_disable_plane.exit.1.mixer_disable_plane.exit.2_crit_edge: ; preds = %mixer_disable_plane.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_disable_plane.exit.2

do.body2.i.2:                                     ; preds = %mixer_disable_plane.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  %reg_slock.i.2 = getelementptr inbounds %struct.mixer_context, ptr %39, i32 0, i32 10
  %call4.i.2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_slock.i.2) #6
  %46 = ptrtoint ptr %index.i.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i.2, align 4
  tail call fastcc void @mixer_cfg_layer(ptr noundef %39, i32 noundef %47, i32 noundef 0, i1 noundef zeroext false) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_slock.i.2, i32 noundef %call4.i.2) #6
  br label %mixer_disable_plane.exit.2

mixer_disable_plane.exit.2:                       ; preds = %do.body2.i.2, %mixer_disable_plane.exit.1.mixer_disable_plane.exit.2_crit_edge
  %pipe_clk.i = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 4
  %48 = ptrtoint ptr %pipe_clk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pipe_clk.i, align 4
  %tobool.not.i15 = icmp eq ptr %49, null
  br i1 %tobool.not.i15, label %mixer_disable_plane.exit.2.exynos_drm_pipe_clk_enable.exit_crit_edge, label %if.then.i

mixer_disable_plane.exit.2.exynos_drm_pipe_clk_enable.exit_crit_edge: ; preds = %mixer_disable_plane.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_drm_pipe_clk_enable.exit

if.then.i:                                        ; preds = %mixer_disable_plane.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  tail call void %51(ptr noundef nonnull %49, i1 noundef zeroext false) #6
  br label %exynos_drm_pipe_clk_enable.exit

exynos_drm_pipe_clk_enable.exit:                  ; preds = %if.then.i, %mixer_disable_plane.exit.2.exynos_drm_pipe_clk_enable.exit_crit_edge
  %dev = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %53, i32 noundef 5) #6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #6
  br label %cleanup

cleanup:                                          ; preds = %exynos_drm_pipe_clk_enable.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixer_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %flags = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or.i = or i32 %3, 2
  store i32 %or.i, ptr %flags, align 4
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mixer_regs.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mixer_regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %8 = or i32 %7, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mixer_regs.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !223
  %11 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mixer_regs.i.i, align 8
  %add.ptr.i.i8 = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %14 = or i32 %13, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mixer_regs.i.i, align 8
  %add.ptr.i11 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %14) #6, !srcloc !223
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mixer_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %flags = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and.i = and i32 %3, -3
  store i32 %and.i, ptr %flags, align 4
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mixer_regs.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mixer_regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %8 = or i32 %7, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mixer_regs.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !223
  %11 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mixer_regs.i.i, align 8
  %add.ptr.i.i7 = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %14 = and i32 %13, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mixer_regs.i.i, align 8
  %add.ptr.i9 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %14) #6, !srcloc !223
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixer_mode_valid(ptr nocapture noundef readonly %crtc, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %3 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %4 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay, align 2
  %conv2 = zext i16 %5 to i32
  %dev = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #6
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = lshr i32 %9, 4
  %and.lobit = and i32 %and, 1
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str.65, i32 noundef %conv, i32 noundef %conv2, i32 noundef %call, i32 noundef %and.lobit) #6
  %mxr_ver = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %mxr_ver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mxr_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = add i16 %3, -464
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %12)
  %13 = icmp ult i16 %12, 257
  call void @__sanitizer_cov_trace_const_cmp2(i16 260, i16 %5)
  %cmp10 = icmp ugt i16 %5, 260
  %or.cond83 = select i1 %13, i1 %cmp10, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 577, i16 %5)
  %cmp13 = icmp ult i16 %5, 577
  %or.cond84 = select i1 %or.cond83, i1 %cmp13, i1 false
  br i1 %or.cond84, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %14 = add i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %14)
  %15 = icmp ult i16 %14, 257
  call void @__sanitizer_cov_trace_const_cmp2(i16 575, i16 %5)
  %cmp21 = icmp ugt i16 %5, 575
  %or.cond86 = select i1 %15, i1 %cmp21, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 721, i16 %5)
  %cmp24 = icmp ult i16 %5, 721
  %or.cond87 = select i1 %or.cond86, i1 %cmp24, i1 false
  br i1 %or.cond87, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false26

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %16 = add i16 %3, -1664
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %16)
  %17 = icmp ult i16 %16, 257
  call void @__sanitizer_cov_trace_const_cmp2(i16 935, i16 %5)
  %cmp33 = icmp ugt i16 %5, 935
  %or.cond89 = select i1 %17, i1 %cmp33, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 1081, i16 %5)
  %cmp36 = icmp ult i16 %5, 1081
  %or.cond90 = select i1 %or.cond89, i1 %cmp36, i1 false
  br i1 %or.cond90, label %lor.lhs.false26.cleanup_crit_edge, label %if.end39

lor.lhs.false26.cleanup_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %3)
  %cmp40 = icmp eq i16 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %5)
  %cmp43 = icmp eq i16 %5, 768
  %or.cond91 = select i1 %cmp40, i1 %cmp43, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 1366, i16 %3)
  %cmp46 = icmp eq i16 %3, 1366
  %or.cond92 = select i1 %cmp46, i1 %cmp43, i1 false
  %or.cond94 = select i1 %or.cond91, i1 true, i1 %or.cond92
  br i1 %or.cond94, label %if.end39.cleanup_crit_edge, label %lor.lhs.false51

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false51:                                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %3)
  %cmp52 = icmp eq i16 %3, 1280
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %5)
  %cmp55 = icmp eq i16 %5, 1024
  %or.cond93 = select i1 %cmp52, i1 %cmp55, i1 false
  %spec.select = select i1 %or.cond93, i32 0, i32 -2
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false51, %if.end39.cleanup_crit_edge, %lor.lhs.false26.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false26.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false51 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mixer_mode_fixup(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %mode, ptr nocapture noundef writeonly %adjusted_mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %3 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %4 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay, align 2
  %conv2 = zext i16 %5 to i32
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %flags4 = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags4, align 4
  %and.i = and i32 %9, -5
  %and = lshr i32 %7, 2
  %10 = and i32 %and, 4
  %and.i.sink = or i32 %and.i, %10
  store i32 %and.i.sink, ptr %flags4, align 4
  %mxr_ver = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %mxr_ver to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mxr_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %3)
  %cmp11.not = icmp ugt i16 %3, 720
  br i1 %cmp11.not, label %for.inc.1, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp2(i16 480, i16 %5)
  %cmp15.not = icmp ugt i16 %5, 480
  br i1 %cmp15.not, label %land.lhs.true.1, label %land.lhs.true.if.then17_crit_edge

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then17:                                        ; preds = %land.lhs.true.3.if.then17_crit_edge, %for.inc.2.if.then17_crit_edge, %land.lhs.true.2.if.then17_crit_edge, %land.lhs.true.1.if.then17_crit_edge, %land.lhs.true.if.then17_crit_edge
  %i.089.lcssa = phi i32 [ 0, %land.lhs.true.if.then17_crit_edge ], [ 1, %land.lhs.true.1.if.then17_crit_edge ], [ 2, %land.lhs.true.2.if.then17_crit_edge ], [ 3, %land.lhs.true.3.if.then17_crit_edge ], [ 3, %for.inc.2.if.then17_crit_edge ]
  %.lcssa91 = phi i32 [ 720, %land.lhs.true.if.then17_crit_edge ], [ 720, %land.lhs.true.1.if.then17_crit_edge ], [ 1280, %land.lhs.true.2.if.then17_crit_edge ], [ 1920, %land.lhs.true.3.if.then17_crit_edge ], [ 1920, %for.inc.2.if.then17_crit_edge ]
  %.lcssa = phi i32 [ 480, %land.lhs.true.if.then17_crit_edge ], [ 576, %land.lhs.true.1.if.then17_crit_edge ], [ 720, %land.lhs.true.2.if.then17_crit_edge ], [ 1080, %land.lhs.true.3.if.then17_crit_edge ], [ 1080, %for.inc.2.if.then17_crit_edge ]
  %scan_val = getelementptr [4 x %struct.anon.90], ptr @mixer_mode_fixup.modes, i32 0, i32 %i.089.lcssa, i32 4
  %13 = ptrtoint ptr %scan_val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scan_val, align 4
  %scan_value = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %scan_value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %scan_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa91, i32 %conv)
  %cmp21 = icmp ugt i32 %.lcssa91, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %conv2)
  %cmp25 = icmp ugt i32 %.lcssa, %conv2
  %or.cond = select i1 %cmp21, i1 true, i1 %cmp25
  br i1 %or.cond, label %if.then27, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %conv30 = trunc i32 %.lcssa91 to i16
  %hdisplay31 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %16 = ptrtoint ptr %hdisplay31 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv30, ptr %hdisplay31, align 4
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 2
  %17 = ptrtoint ptr %hsync_start to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv30, ptr %hsync_start, align 2
  %htotal = getelementptr [4 x %struct.anon.90], ptr @mixer_mode_fixup.modes, i32 0, i32 %i.089.lcssa, i32 2
  %18 = ptrtoint ptr %htotal to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %htotal, align 4
  %conv36 = trunc i32 %19 to i16
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 3
  %20 = ptrtoint ptr %hsync_end to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv36, ptr %hsync_end, align 4
  %htotal40 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 4
  %21 = ptrtoint ptr %htotal40 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv36, ptr %htotal40, align 2
  %conv43 = trunc i32 %.lcssa to i16
  %vdisplay44 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %22 = ptrtoint ptr %vdisplay44 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv43, ptr %vdisplay44, align 2
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 7
  %23 = ptrtoint ptr %vsync_start to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv43, ptr %vsync_start, align 4
  %vtotal = getelementptr [4 x %struct.anon.90], ptr @mixer_mode_fixup.modes, i32 0, i32 %i.089.lcssa, i32 3
  %24 = ptrtoint ptr %vtotal to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vtotal, align 4
  %conv49 = trunc i32 %25 to i16
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 8
  %26 = ptrtoint ptr %vsync_end to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv49, ptr %vsync_end, align 2
  %vtotal53 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 9
  %27 = ptrtoint ptr %vtotal53 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv49, ptr %vtotal53, align 4
  br label %cleanup

land.lhs.true.1:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 576, i16 %5)
  %cmp15.not.1 = icmp ugt i16 %5, 576
  br i1 %cmp15.not.1, label %land.lhs.true.1.land.lhs.true.2_crit_edge, label %land.lhs.true.1.if.then17_crit_edge

land.lhs.true.1.if.then17_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

land.lhs.true.1.land.lhs.true.2_crit_edge:        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.2

for.inc.1:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %3)
  %cmp11.not.2 = icmp ugt i16 %3, 1280
  br i1 %cmp11.not.2, label %for.inc.2, label %for.inc.1.land.lhs.true.2_crit_edge

for.inc.1.land.lhs.true.2_crit_edge:              ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %for.inc.1.land.lhs.true.2_crit_edge, %land.lhs.true.1.land.lhs.true.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %5)
  %cmp15.not.2 = icmp ugt i16 %5, 720
  br i1 %cmp15.not.2, label %land.lhs.true.3, label %land.lhs.true.2.if.then17_crit_edge

land.lhs.true.2.if.then17_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1920, i16 %3)
  %cmp11.not.3 = icmp ugt i16 %3, 1920
  call void @__sanitizer_cov_trace_const_cmp2(i16 1080, i16 %5)
  %cmp15.not.3 = icmp ugt i16 %5, 1080
  %or.cond96 = select i1 %cmp11.not.3, i1 true, i1 %cmp15.not.3
  br i1 %or.cond96, label %for.inc.2.cleanup_crit_edge, label %for.inc.2.if.then17_crit_edge

for.inc.2.if.then17_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1080, i16 %5)
  %cmp15.not.3.old = icmp ugt i16 %5, 1080
  br i1 %cmp15.not.3.old, label %land.lhs.true.3.cleanup_crit_edge, label %land.lhs.true.3.if.then17_crit_edge

land.lhs.true.3.if.then17_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %if.then27, %if.then17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %if.then27 ], [ true, %if.then17.cleanup_crit_edge ], [ false, %land.lhs.true.3.cleanup_crit_edge ], [ false, %for.inc.2.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mixer_atomic_begin(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 8
  %flags = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call.i, 100000000
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %call2.i = tail call fastcc zeroext i1 @mixer_is_synced(ptr noundef %1) #6
  br i1 %call2.i, label %while.cond.i.if.end5_crit_edge, label %while.body.i

while.cond.i.if.end5_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

while.body.i:                                     ; preds = %while.cond.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %call3.i = tail call i64 @ktime_get() #6
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %do.end, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

do.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.66) #9
  br label %if.end5

if.end5:                                          ; preds = %do.end, %while.cond.i.if.end5_crit_edge
  %mixer_regs.i.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %9 = and i32 %8, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mixer_regs.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !223
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mixer_update_plane(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dev = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %index = getelementptr inbounds %struct.exynos_drm_plane, ptr %plane, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.68, i32 noundef %5) #6
  %flags = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  %state1.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %10 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state1.i, align 4
  %fb3.i = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %fb3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb3.i, align 4
  %normalized_zpos.i = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 16
  %14 = ptrtoint ptr %normalized_zpos.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %normalized_zpos.i, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %format.i, align 8
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825382478, i32 %19)
  %cmp.i = icmp eq i32 %19, 825382478
  %modifier.i = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 8
  %20 = ptrtoint ptr %modifier.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %modifier.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 288230376151711745, i64 %21)
  %cmp6.i = icmp eq i64 %21, 288230376151711745
  %call8.i = tail call i32 @exynos_drm_fb_dma_addr(ptr noundef %13, i32 noundef 0) #6
  %call9.i = tail call i32 @exynos_drm_fb_dma_addr(ptr noundef %13, i32 noundef 1) #6
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.then2.do.body34.i_crit_edge, label %if.then.i

if.then2.do.body34.i_crit_edge:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34.i

if.then.i:                                        ; preds = %if.then2
  br i1 %cmp6.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %add16.i = add i32 %call8.i, 64
  %add19.i = add i32 %call9.i, 64
  br label %do.body34.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 6
  %25 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pitches.i, align 8
  %add23.i = add i32 %26, %call8.i
  %arrayidx27.i = getelementptr %struct.drm_framebuffer, ptr %13, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx27.i, align 4
  %add28.i = add i32 %28, %call9.i
  br label %do.body34.i

do.body34.i:                                      ; preds = %if.else.i, %if.then14.i, %if.then2.do.body34.i_crit_edge
  %luma_addr.sroa.7.0.i = phi i32 [ %add16.i, %if.then14.i ], [ %add23.i, %if.else.i ], [ 0, %if.then2.do.body34.i_crit_edge ]
  %chroma_addr.sroa.7.0.i = phi i32 [ %add19.i, %if.then14.i ], [ %add28.i, %if.else.i ], [ 0, %if.then2.do.body34.i_crit_edge ]
  %reg_slock.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 10
  %call37.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_slock.i) #6
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags, align 4
  %vp_regs.i.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 16
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  %.mask.i = shl i32 %30, 3
  %34 = and i32 %.mask.i, 32
  %35 = and i32 %33, -536870913
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  %or.i.i = or i32 %36, %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !231
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %38 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %37) #6, !srcloc !223
  %cond45.i = select i1 %cmp.i, i32 64, i32 0
  %cond48.i = select i1 %cmp6.i, i32 16, i32 0
  %or.i = or i32 %cond48.i, %cond45.i
  %40 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i.i174.i = getelementptr i8, ptr %41, i32 16
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i174.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  %43 = and i32 %42, -1342177281
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  %or.i176.i = or i32 %or.i, %44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !231
  tail call void @arm_heavy_mb() #6
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i176.i) #6
  %46 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i177.i = getelementptr i8, ptr %47, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177.i, i32 %45) #6, !srcloc !223
  %pitches49.i = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 6
  %48 = ptrtoint ptr %pitches49.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pitches49.i, align 8
  %shl.i = shl i32 %49, 16
  %and.i = and i32 %shl.i, 1073676288
  %height.i = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 10
  %50 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height.i, align 4
  %and52.i = and i32 %51, 16383
  %or53.i = or i32 %and.i, %and52.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %52 = tail call i32 @llvm.bswap.i32(i32 %or53.i) #6
  %53 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %54, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178.i, i32 %52) #6, !srcloc !223
  %arrayidx55.i = getelementptr %struct.drm_framebuffer, ptr %13, i32 0, i32 6, i32 1
  %55 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx55.i, align 4
  %shl56.i = shl i32 %56, 16
  %and57.i = and i32 %shl56.i, 1073676288
  %57 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %height.i, align 4
  %div163.i = lshr i32 %58, 1
  %and60.i = and i32 %div163.i, 16383
  %or61.i = or i32 %and60.i, %and57.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %59 = tail call i32 @llvm.bswap.i32(i32 %or61.i) #6
  %60 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i180.i = getelementptr i8, ptr %61, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180.i, i32 %59) #6, !srcloc !223
  %src.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 2
  %w.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 2, i32 2
  %62 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %w.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  %65 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %66, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182.i, i32 %64) #6, !srcloc !223
  %67 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %src.i, align 4
  %shl63.i = shl i32 %68, 4
  %and64.i = and i32 %shl63.i, 32752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %69 = tail call i32 @llvm.bswap.i32(i32 %and64.i) #6
  %70 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %71, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.i, i32 %69) #6, !srcloc !223
  %crtc.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 1
  %w65.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 1, i32 2
  %72 = ptrtoint ptr %w65.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %w65.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  %75 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i186.i = getelementptr i8, ptr %76, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186.i, i32 %74) #6, !srcloc !223
  %77 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %crtc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #6
  %80 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i188.i = getelementptr i8, ptr %81, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188.i, i32 %79) #6, !srcloc !223
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %flags, align 4
  %84 = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool70.not.i = icmp eq i32 %84, 0
  %h84.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 2, i32 3
  %85 = ptrtoint ptr %h84.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %h84.i, align 4
  br i1 %tobool70.not.i, label %if.else82.i, label %if.then71.i

if.then71.i:                                      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  %div73164.i = lshr i32 %86, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %87 = tail call i32 @llvm.bswap.i32(i32 %div73164.i) #6
  %88 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i190.i = getelementptr i8, ptr %89, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190.i, i32 %87) #6, !srcloc !223
  %y.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 2, i32 1
  %90 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %y.i, align 4
  %div75165.i = lshr i32 %91, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %92 = tail call i32 @llvm.bswap.i32(i32 %div75165.i) #6
  %93 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i192.i = getelementptr i8, ptr %94, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192.i, i32 %92) #6, !srcloc !223
  %h77.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 1, i32 3
  %95 = ptrtoint ptr %h77.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %h77.i, align 4
  %div78166.i = lshr i32 %96, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %97 = tail call i32 @llvm.bswap.i32(i32 %div78166.i) #6
  %98 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i194.i = getelementptr i8, ptr %99, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194.i, i32 %97) #6, !srcloc !223
  %y80.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 1, i32 1
  %100 = ptrtoint ptr %y80.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %y80.i, align 4
  %div81167.i = lshr i32 %101, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %102 = tail call i32 @llvm.bswap.i32(i32 %div81167.i) #6
  %103 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i196.i = getelementptr i8, ptr %104, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196.i, i32 %102) #6, !srcloc !223
  br label %vp_video_buffer.exit

if.else82.i:                                      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %105 = tail call i32 @llvm.bswap.i32(i32 %86) #6
  %106 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i198.i = getelementptr i8, ptr %107, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198.i, i32 %105) #6, !srcloc !223
  %y86.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 2, i32 1
  %108 = ptrtoint ptr %y86.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %y86.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #6
  %111 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i200.i = getelementptr i8, ptr %112, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200.i, i32 %110) #6, !srcloc !223
  %h88.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 1, i32 3
  %113 = ptrtoint ptr %h88.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %h88.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #6
  %116 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i202.i = getelementptr i8, ptr %117, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202.i, i32 %115) #6, !srcloc !223
  %y90.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 1, i32 1
  %118 = ptrtoint ptr %y90.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %y90.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #6
  %121 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i204.i = getelementptr i8, ptr %122, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204.i, i32 %120) #6, !srcloc !223
  br label %vp_video_buffer.exit

vp_video_buffer.exit:                             ; preds = %if.else82.i, %if.then71.i
  %add.i = add i32 %15, 1
  %h_ratio.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 3
  %123 = ptrtoint ptr %h_ratio.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %h_ratio.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #6
  %126 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i206.i = getelementptr i8, ptr %127, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206.i, i32 %125) #6, !srcloc !223
  %v_ratio.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 4
  %128 = ptrtoint ptr %v_ratio.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %v_ratio.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #6
  %131 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i208.i = getelementptr i8, ptr %132, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208.i, i32 %130) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %133 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i210.i = getelementptr i8, ptr %134, i32 972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i210.i, i32 16777216) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %135 = tail call i32 @llvm.bswap.i32(i32 %call8.i) #6
  %136 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i212.i = getelementptr i8, ptr %137, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212.i, i32 %135) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %138 = tail call i32 @llvm.bswap.i32(i32 %luma_addr.sroa.7.0.i) #6
  %139 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i214.i = getelementptr i8, ptr %140, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214.i, i32 %138) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %141 = tail call i32 @llvm.bswap.i32(i32 %call9.i) #6
  %142 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i216.i = getelementptr i8, ptr %143, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216.i, i32 %141) #6, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %144 = tail call i32 @llvm.bswap.i32(i32 %chroma_addr.sroa.7.0.i) #6
  %145 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr.i218.i = getelementptr i8, ptr %146, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218.i, i32 %144) #6, !srcloc !223
  %147 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %index, align 4
  tail call fastcc void @mixer_cfg_layer(ptr noundef %1, i32 noundef %148, i32 noundef %add.i, i1 noundef zeroext true) #6
  %alpha.i = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 12
  %149 = ptrtoint ptr %alpha.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %alpha.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %150)
  %cmp.not.i.i = icmp eq i16 %150, -1
  %151 = lshr i16 %150, 8
  %shr.i219.i = zext i16 %151 to i32
  %or1.i.i = or i32 %shr.i219.i, 65536
  %val.0.i.i = select i1 %cmp.not.i.i, i32 0, i32 %or1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %152 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #6
  %mixer_regs.i.i.i = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 8
  %153 = ptrtoint ptr %mixer_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mixer_regs.i.i.i, align 8
  %add.ptr.i.i220.i = getelementptr i8, ptr %154, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i220.i, i32 %152) #6, !srcloc !223
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_slock.i, i32 noundef %call37.i) #6
  tail call fastcc void @mixer_regs_dump(ptr noundef %1) #6
  %155 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev, align 4
  %157 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %vp_regs.i.i.i, align 4
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #6, !srcloc !220
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %156, i32 noundef 4, ptr noundef nonnull @.str.69, i32 noundef %160) #6
  %161 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev, align 4
  %163 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %164, i32 4
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #6, !srcloc !220
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %162, i32 noundef 4, ptr noundef nonnull @.str.70, i32 noundef %166) #6
  %167 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev, align 4
  %169 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %170, i32 8
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #6, !srcloc !220
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %168, i32 noundef 4, ptr noundef nonnull @.str.71, i32 noundef %172) #6
  %173 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev, align 4
  %175 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %176, i32 12
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i.i) #6, !srcloc !220
  %178 = tail call i32 @llvm.bswap.i32(i32 %177) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %174, i32 noundef 4, ptr noundef nonnull @.str.72, i32 noundef %178) #6
  %179 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev, align 4
  %181 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr37.i.i = getelementptr i8, ptr %182, i32 16
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i.i) #6, !srcloc !220
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %180, i32 noundef 4, ptr noundef nonnull @.str.73, i32 noundef %184) #6
  %185 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev, align 4
  %187 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr47.i.i = getelementptr i8, ptr %188, i32 20
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i.i) #6, !srcloc !220
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !237
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %186, i32 noundef 4, ptr noundef nonnull @.str.74, i32 noundef %190) #6
  %191 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev, align 4
  %193 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr57.i.i = getelementptr i8, ptr %194, i32 24
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57.i.i) #6, !srcloc !220
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !238
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %192, i32 noundef 4, ptr noundef nonnull @.str.75, i32 noundef %196) #6
  %197 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev, align 4
  %199 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr67.i.i = getelementptr i8, ptr %200, i32 28
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67.i.i) #6, !srcloc !220
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !239
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %198, i32 noundef 4, ptr noundef nonnull @.str.76, i32 noundef %202) #6
  %203 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev, align 4
  %205 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr77.i.i = getelementptr i8, ptr %206, i32 40
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77.i.i) #6, !srcloc !220
  %208 = tail call i32 @llvm.bswap.i32(i32 %207) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !240
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %204, i32 noundef 4, ptr noundef nonnull @.str.77, i32 noundef %208) #6
  %209 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev, align 4
  %211 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr87.i.i = getelementptr i8, ptr %212, i32 44
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87.i.i) #6, !srcloc !220
  %214 = tail call i32 @llvm.bswap.i32(i32 %213) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !241
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %210, i32 noundef 4, ptr noundef nonnull @.str.78, i32 noundef %214) #6
  %215 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev, align 4
  %217 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr97.i.i = getelementptr i8, ptr %218, i32 48
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97.i.i) #6, !srcloc !220
  %220 = tail call i32 @llvm.bswap.i32(i32 %219) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !242
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %216, i32 noundef 4, ptr noundef nonnull @.str.79, i32 noundef %220) #6
  %221 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev, align 4
  %223 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr107.i.i = getelementptr i8, ptr %224, i32 52
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107.i.i) #6, !srcloc !220
  %226 = tail call i32 @llvm.bswap.i32(i32 %225) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !243
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %222, i32 noundef 4, ptr noundef nonnull @.str.80, i32 noundef %226) #6
  %227 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev, align 4
  %229 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr117.i.i = getelementptr i8, ptr %230, i32 972
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117.i.i) #6, !srcloc !220
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %228, i32 noundef 4, ptr noundef nonnull @.str.81, i32 noundef %232) #6
  %233 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev, align 4
  %235 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr127.i.i = getelementptr i8, ptr %236, i32 68
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127.i.i) #6, !srcloc !220
  %238 = tail call i32 @llvm.bswap.i32(i32 %237) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %234, i32 noundef 4, ptr noundef nonnull @.str.82, i32 noundef %238) #6
  %239 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev, align 4
  %241 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr137.i.i = getelementptr i8, ptr %242, i32 72
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137.i.i) #6, !srcloc !220
  %244 = tail call i32 @llvm.bswap.i32(i32 %243) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !246
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %240, i32 noundef 4, ptr noundef nonnull @.str.83, i32 noundef %244) #6
  %245 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev, align 4
  %247 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr147.i.i = getelementptr i8, ptr %248, i32 76
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147.i.i) #6, !srcloc !220
  %250 = tail call i32 @llvm.bswap.i32(i32 %249) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !247
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %246, i32 noundef 4, ptr noundef nonnull @.str.84, i32 noundef %250) #6
  %251 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dev, align 4
  %253 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr157.i.i = getelementptr i8, ptr %254, i32 80
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157.i.i) #6, !srcloc !220
  %256 = tail call i32 @llvm.bswap.i32(i32 %255) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !248
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %252, i32 noundef 4, ptr noundef nonnull @.str.85, i32 noundef %256) #6
  %257 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %dev, align 4
  %259 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr167.i.i = getelementptr i8, ptr %260, i32 84
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167.i.i) #6, !srcloc !220
  %262 = tail call i32 @llvm.bswap.i32(i32 %261) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %258, i32 noundef 4, ptr noundef nonnull @.str.86, i32 noundef %262) #6
  %263 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dev, align 4
  %265 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr177.i.i = getelementptr i8, ptr %266, i32 88
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr177.i.i) #6, !srcloc !220
  %268 = tail call i32 @llvm.bswap.i32(i32 %267) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %264, i32 noundef 4, ptr noundef nonnull @.str.87, i32 noundef %268) #6
  %269 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dev, align 4
  %271 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr187.i.i = getelementptr i8, ptr %272, i32 92
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr187.i.i) #6, !srcloc !220
  %274 = tail call i32 @llvm.bswap.i32(i32 %273) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !251
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %270, i32 noundef 4, ptr noundef nonnull @.str.88, i32 noundef %274) #6
  %275 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev, align 4
  %277 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr197.i.i = getelementptr i8, ptr %278, i32 96
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr197.i.i) #6, !srcloc !220
  %280 = tail call i32 @llvm.bswap.i32(i32 %279) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !252
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %276, i32 noundef 4, ptr noundef nonnull @.str.89, i32 noundef %280) #6
  %281 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %dev, align 4
  %283 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr207.i.i = getelementptr i8, ptr %284, i32 100
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr207.i.i) #6, !srcloc !220
  %286 = tail call i32 @llvm.bswap.i32(i32 %285) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !253
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %282, i32 noundef 4, ptr noundef nonnull @.str.90, i32 noundef %286) #6
  %287 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %dev, align 4
  %289 = ptrtoint ptr %vp_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %vp_regs.i.i.i, align 4
  %add.ptr217.i.i = getelementptr i8, ptr %290, i32 104
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr217.i.i) #6, !srcloc !220
  %292 = tail call i32 @llvm.bswap.i32(i32 %291) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !254
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %288, i32 noundef 4, ptr noundef nonnull @.str.91, i32 noundef %292) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  %has_alpha.i = getelementptr inbounds %struct.drm_format_info, ptr %17, i32 0, i32 8
  %293 = ptrtoint ptr %has_alpha.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %has_alpha.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %tobool.not.i15 = icmp eq i8 %294, 0
  br i1 %tobool.not.i15, label %if.else.if.end.i_crit_edge, label %if.then.i16

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i16:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %pixel_blend_mode.i = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 13
  %295 = ptrtoint ptr %pixel_blend_mode.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %pixel_blend_mode.i, align 2
  %conv.i = zext i16 %296 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i16, %if.else.if.end.i_crit_edge
  %pixel_alpha.0.i = phi i32 [ %conv.i, %if.then.i16 ], [ 2, %if.else.if.end.i_crit_edge ]
  %297 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %17, align 4
  %299 = zext i32 %298 to i64
  call void @__sanitizer_cov_trace_switch(i64 %299, ptr @__sancov_gen_cov_switch_values)
  switch i32 %298, label %sw.default.i [
    i32 842093144, label %if.end.i.mixer_graph_buffer.exit_crit_edge
    i32 842093121, label %if.end.i.mixer_graph_buffer.exit_crit_edge35
    i32 892424792, label %if.end.i.sw.bb8.i_crit_edge
    i32 892424769, label %if.end.i.sw.bb8.i_crit_edge36
    i32 909199186, label %sw.bb9.i
  ]

if.end.i.sw.bb8.i_crit_edge36:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

if.end.i.sw.bb8.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

if.end.i.mixer_graph_buffer.exit_crit_edge35:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_graph_buffer.exit

if.end.i.mixer_graph_buffer.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_graph_buffer.exit

sw.bb8.i:                                         ; preds = %if.end.i.sw.bb8.i_crit_edge, %if.end.i.sw.bb8.i_crit_edge36
  br label %mixer_graph_buffer.exit

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_graph_buffer.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixer_graph_buffer.exit

mixer_graph_buffer.exit:                          ; preds = %sw.default.i, %sw.bb9.i, %sw.bb8.i, %if.end.i.mixer_graph_buffer.exit_crit_edge, %if.end.i.mixer_graph_buffer.exit_crit_edge35
  %fmt.0.i = phi i32 [ 1792, %sw.default.i ], [ 1024, %sw.bb9.i ], [ 1280, %sw.bb8.i ], [ 1536, %if.end.i.mixer_graph_buffer.exit_crit_edge ], [ 1536, %if.end.i.mixer_graph_buffer.exit_crit_edge35 ]
  %add.i17 = add i32 %15, 1
  %h_ratio.i18 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 3
  %300 = ptrtoint ptr %h_ratio.i18 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %h_ratio.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %301)
  %cmp.i19 = icmp eq i32 %301, 32768
  %v_ratio.i20 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 4
  %302 = ptrtoint ptr %v_ratio.i20 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %v_ratio.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %303)
  %cmp12.i = icmp eq i32 %303, 32768
  %crtc.i21 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 1
  %304 = ptrtoint ptr %crtc.i21 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %crtc.i21, align 4
  %y.i22 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 1, i32 1
  %306 = ptrtoint ptr %y.i22 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %y.i22, align 4
  %call15.i = tail call i32 @exynos_drm_fb_dma_addr(ptr noundef %13, i32 noundef 0) #6
  %src.i23 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 2
  %308 = ptrtoint ptr %src.i23 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %src.i23, align 4
  %310 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %format.i, align 8
  %312 = getelementptr inbounds %struct.drm_format_info, ptr %311, i32 0, i32 3
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %312, align 2
  %conv18.i = zext i8 %314 to i32
  %mul.i = mul i32 %309, %conv18.i
  %add19.i24 = add i32 %mul.i, %call15.i
  %y21.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 2, i32 1
  %315 = ptrtoint ptr %y21.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %y21.i, align 4
  %pitches.i25 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 6
  %317 = ptrtoint ptr %pitches.i25 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %pitches.i25, align 8
  %mul23.i = mul i32 %318, %316
  %add24.i = add i32 %add19.i24, %mul23.i
  %reg_slock.i26 = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 10
  %call29.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_slock.i26) #6
  %mul32.i = shl i32 %9, 5
  %add33.i = add i32 %mul32.i, 32
  %mixer_regs.i.i.i27 = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 8
  %319 = ptrtoint ptr %mixer_regs.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %mixer_regs.i.i.i27, align 8
  %add.ptr.i.i.i28 = getelementptr i8, ptr %320, i32 %add33.i
  %321 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i28) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %322 = and i32 %321, -983041
  %323 = tail call i32 @llvm.bswap.i32(i32 %322) #6
  %or.i.i29 = or i32 %323, %fmt.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %324 = tail call i32 @llvm.bswap.i32(i32 %or.i.i29) #6
  %325 = ptrtoint ptr %mixer_regs.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %mixer_regs.i.i.i27, align 8
  %add.ptr.i.i30 = getelementptr i8, ptr %326, i32 %add33.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30, i32 %324) #6, !srcloc !223
  %add35.i = add i32 %mul32.i, 40
  %327 = ptrtoint ptr %pitches.i25 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %pitches.i25, align 8
  %329 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %format.i, align 8
  %331 = getelementptr inbounds %struct.drm_format_info, ptr %330, i32 0, i32 3
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %331, align 2
  %conv40.i = zext i8 %333 to i32
  %div.i = udiv i32 %328, %conv40.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %334 = tail call i32 @llvm.bswap.i32(i32 %div.i) #6
  %335 = ptrtoint ptr %mixer_regs.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %mixer_regs.i.i.i27, align 8
  %add.ptr.i105.i = getelementptr i8, ptr %336, i32 %add35.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i, i32 %334) #6, !srcloc !223
  %w.i31 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 2, i32 2
  %337 = ptrtoint ptr %w.i31 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %w.i31, align 4
  %shl42.i = shl i32 %338, 16
  %and43.i = and i32 %shl42.i, 134152192
  %h.i = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %11, i32 0, i32 2, i32 3
  %339 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %h.i, align 4
  %and46.i = and i32 %340, 2047
  %shl47.i = select i1 %cmp.i19, i32 268435456, i32 0
  %shl50.i = select i1 %cmp12.i, i32 4096, i32 0
  %or.i32 = or i32 %shl50.i, %shl47.i
  %or49.i = or i32 %or.i32, %and46.i
  %or52.i = or i32 %or49.i, %and43.i
  %add54.i = add i32 %mul32.i, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %341 = tail call i32 @llvm.bswap.i32(i32 %or52.i) #6
  %342 = ptrtoint ptr %mixer_regs.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %mixer_regs.i.i.i27, align 8
  %add.ptr.i107.i = getelementptr i8, ptr %343, i32 %add54.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 %341) #6, !srcloc !223
  %shl55.i = shl i32 %305, 16
  %and56.i = and i32 %shl55.i, 134152192
  %and58.i = and i32 %307, 2047
  %or59.i = or i32 %and56.i, %and58.i
  %add61.i = add i32 %mul32.i, 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %344 = tail call i32 @llvm.bswap.i32(i32 %or59.i) #6
  %345 = ptrtoint ptr %mixer_regs.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %mixer_regs.i.i.i27, align 8
  %add.ptr.i109.i = getelementptr i8, ptr %346, i32 %add61.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 %344) #6, !srcloc !223
  %add63.i = add i32 %mul32.i, 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %347 = tail call i32 @llvm.bswap.i32(i32 %add24.i) #6
  %348 = ptrtoint ptr %mixer_regs.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %mixer_regs.i.i.i27, align 8
  %add.ptr.i111.i = getelementptr i8, ptr %349, i32 %add63.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 %347) #6, !srcloc !223
  tail call fastcc void @mixer_cfg_layer(ptr noundef %1, i32 noundef %9, i32 noundef %add.i17, i1 noundef zeroext true) #6
  %alpha.i33 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 12
  %350 = ptrtoint ptr %alpha.i33 to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %alpha.i33, align 4
  %352 = lshr i16 %351, 8
  %shr.i.i = zext i16 %352 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pixel_alpha.0.i)
  %switch.selectcmp.i.i = icmp eq i32 %pixel_alpha.0.i, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 2162688, i32 3211264
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pixel_alpha.0.i)
  %switch.selectcmp12.i.i = icmp eq i32 %pixel_alpha.0.i, 2
  %switch.select13.i.i = select i1 %switch.selectcmp12.i.i, i32 2097152, i32 %switch.select.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %351)
  %cmp.not.i.i34 = icmp eq i16 %351, -1
  %or4.i.i = or i32 %switch.select13.i.i, %shr.i.i
  %or5.i.i = or i32 %or4.i.i, 131072
  %val.1.i.i = select i1 %cmp.not.i.i34, i32 %switch.select13.i.i, i32 %or5.i.i
  %353 = ptrtoint ptr %mixer_regs.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %mixer_regs.i.i.i27, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %354, i32 %add33.i
  %355 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %356 = and i32 %355, 16764159
  %357 = tail call i32 @llvm.bswap.i32(i32 %356) #6
  %or.i.i.i = or i32 %357, %val.1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %358 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #6
  %359 = ptrtoint ptr %mixer_regs.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %mixer_regs.i.i.i27, align 8
  %add.ptr.i.i112.i = getelementptr i8, ptr %360, i32 %add33.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i112.i, i32 %358) #6, !srcloc !223
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_slock.i26, i32 noundef %call29.i) #6
  tail call fastcc void @mixer_regs_dump(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %mixer_graph_buffer.exit, %vp_video_buffer.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mixer_disable_plane(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dev = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %index = getelementptr inbounds %struct.exynos_drm_plane, ptr %plane, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.68, i32 noundef %5) #6
  %flags1 = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags1, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reg_slock = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 10
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_slock) #6
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call fastcc void @mixer_cfg_layer(ptr noundef %1, i32 noundef %9, i32 noundef 0, i1 noundef zeroext false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_slock, i32 noundef %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mixer_atomic_flush(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.exynos_drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %flags = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mixer_enable_sync(ptr noundef %1)
  tail call void @exynos_crtc_handle_event(ptr noundef %crtc) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mixer_enable_sync(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mxr_ver = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 17
  %0 = ptrtoint ptr %mxr_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mxr_ver, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mixer_regs.i.i = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer_regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %5 = or i32 %4, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mixer_regs.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #6, !srcloc !223
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mixer_regs.i.i11 = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 8
  %8 = ptrtoint ptr %mixer_regs.i.i11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mixer_regs.i.i11, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %11 = or i32 %10, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %mixer_regs.i.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mixer_regs.i.i11, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !223
  %flags = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 6
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %vp_regs.i = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 9
  %17 = ptrtoint ptr %vp_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vp_regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 16777216) #6, !srcloc !223
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_default_rgb_quant_range(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mixer_regs_dump(ptr nocapture noundef readonly %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %mixer_regs = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer_regs, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !220
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !255
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.47, i32 noundef %5) #6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mixer_regs, align 8
  %add.ptr7 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !220
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !256
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str.48, i32 noundef %11) #6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mixer_regs, align 8
  %add.ptr17 = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #6, !srcloc !220
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %13, i32 noundef 4, ptr noundef nonnull @.str.49, i32 noundef %17) #6
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mixer_regs, align 8
  %add.ptr27 = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #6, !srcloc !220
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !258
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %19, i32 noundef 4, ptr noundef nonnull @.str.50, i32 noundef %23) #6
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mixer_regs, align 8
  %add.ptr37 = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #6, !srcloc !220
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %25, i32 noundef 4, ptr noundef nonnull @.str.51, i32 noundef %29) #6
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mixer_regs, align 8
  %add.ptr47 = getelementptr i8, ptr %33, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #6, !srcloc !220
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %31, i32 noundef 4, ptr noundef nonnull @.str.52, i32 noundef %35) #6
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %38 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mixer_regs, align 8
  %add.ptr57 = getelementptr i8, ptr %39, i32 32
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #6, !srcloc !220
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !261
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %37, i32 noundef 4, ptr noundef nonnull @.str.53, i32 noundef %41) #6
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mixer_regs, align 8
  %add.ptr67 = getelementptr i8, ptr %45, i32 36
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #6, !srcloc !220
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !262
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %43, i32 noundef 4, ptr noundef nonnull @.str.54, i32 noundef %47) #6
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %50 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mixer_regs, align 8
  %add.ptr77 = getelementptr i8, ptr %51, i32 40
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #6, !srcloc !220
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %49, i32 noundef 4, ptr noundef nonnull @.str.55, i32 noundef %53) #6
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %56 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mixer_regs, align 8
  %add.ptr87 = getelementptr i8, ptr %57, i32 48
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #6, !srcloc !220
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %55, i32 noundef 4, ptr noundef nonnull @.str.56, i32 noundef %59) #6
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %62 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mixer_regs, align 8
  %add.ptr97 = getelementptr i8, ptr %63, i32 44
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #6, !srcloc !220
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !265
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %61, i32 noundef 4, ptr noundef nonnull @.str.57, i32 noundef %65) #6
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %68 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mixer_regs, align 8
  %add.ptr107 = getelementptr i8, ptr %69, i32 52
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #6, !srcloc !220
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !266
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %67, i32 noundef 4, ptr noundef nonnull @.str.58, i32 noundef %71) #6
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  %74 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mixer_regs, align 8
  %add.ptr117 = getelementptr i8, ptr %75, i32 64
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #6, !srcloc !220
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !267
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %73, i32 noundef 4, ptr noundef nonnull @.str.59, i32 noundef %77) #6
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  %80 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mixer_regs, align 8
  %add.ptr127 = getelementptr i8, ptr %81, i32 68
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127) #6, !srcloc !220
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !268
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %79, i32 noundef 4, ptr noundef nonnull @.str.60, i32 noundef %83) #6
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 4
  %86 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mixer_regs, align 8
  %add.ptr137 = getelementptr i8, ptr %87, i32 72
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137) #6, !srcloc !220
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !269
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %85, i32 noundef 4, ptr noundef nonnull @.str.61, i32 noundef %89) #6
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 4
  %92 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mixer_regs, align 8
  %add.ptr147 = getelementptr i8, ptr %93, i32 80
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147) #6, !srcloc !220
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %91, i32 noundef 4, ptr noundef nonnull @.str.62, i32 noundef %95) #6
  %96 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev, align 4
  %98 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mixer_regs, align 8
  %add.ptr157 = getelementptr i8, ptr %99, i32 76
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157) #6, !srcloc !220
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %97, i32 noundef 4, ptr noundef nonnull @.str.63, i32 noundef %101) #6
  %102 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev, align 4
  %104 = ptrtoint ptr %mixer_regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mixer_regs, align 8
  %add.ptr167 = getelementptr i8, ptr %105, i32 84
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167) #6, !srcloc !220
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !272
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %103, i32 noundef 4, ptr noundef nonnull @.str.64, i32 noundef %107) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_fb_dma_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mixer_cfg_layer(ptr noundef %ctx, i32 noundef %win, i32 noundef %priority, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %win to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %win, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mixer_regs.i.i = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 8
  %1 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mixer_regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %and.i = select i1 %enable, i32 16, i32 0
  %4 = and i32 %3, -268435457
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %or.i = or i32 %5, %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %7 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mixer_regs.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #6, !srcloc !223
  %shl = shl i32 %priority, 4
  %and = and i32 %shl, 240
  %9 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mixer_regs.i.i, align 8
  %add.ptr.i.i22 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i22) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %12 = and i32 %11, 268435455
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %or.i24 = or i32 %13, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i24) #6
  %15 = ptrtoint ptr %mixer_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mixer_regs.i.i, align 8
  %add.ptr.i25 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %14) #6, !srcloc !223
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mixer_regs.i.i26 = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 8
  %17 = ptrtoint ptr %mixer_regs.i.i26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mixer_regs.i.i26, align 8
  %add.ptr.i.i27 = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %and.i28 = select i1 %enable, i32 32, i32 0
  %20 = and i32 %19, -536870913
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %or.i30 = or i32 %21, %and.i28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i30) #6
  %23 = ptrtoint ptr %mixer_regs.i.i26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mixer_regs.i.i26, align 8
  %add.ptr.i31 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %22) #6, !srcloc !223
  %shl2 = shl i32 %priority, 8
  %and3 = and i32 %shl2, 3840
  %25 = ptrtoint ptr %mixer_regs.i.i26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mixer_regs.i.i26, align 8
  %add.ptr.i.i33 = getelementptr i8, ptr %26, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %28 = and i32 %27, -983041
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %or.i35 = or i32 %29, %and3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i35) #6
  %31 = ptrtoint ptr %mixer_regs.i.i26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mixer_regs.i.i26, align 8
  %add.ptr.i36 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %30) #6, !srcloc !223
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 6
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags, align 4
  %35 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool5.not = icmp eq i32 %35, 0
  br i1 %tobool5.not, label %sw.bb4.sw.epilog_crit_edge, label %if.then

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %vp_regs.i.i = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 9
  %36 = ptrtoint ptr %vp_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vp_regs.i.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  %and.i37 = zext i1 %enable to i32
  %39 = and i32 %38, -16777217
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %or.i39 = or i32 %40, %and.i37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !231
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i39) #6
  %42 = ptrtoint ptr %vp_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vp_regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #6, !srcloc !223
  %mixer_regs.i.i40 = getelementptr inbounds %struct.mixer_context, ptr %ctx, i32 0, i32 8
  %44 = ptrtoint ptr %mixer_regs.i.i40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mixer_regs.i.i40, align 8
  %add.ptr.i.i41 = getelementptr i8, ptr %45, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i41) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %and.i42 = select i1 %enable, i32 8, i32 0
  %47 = and i32 %46, -134217729
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %or.i44 = or i32 %48, %and.i42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i44) #6
  %50 = ptrtoint ptr %mixer_regs.i.i40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mixer_regs.i.i40, align 8
  %add.ptr.i45 = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %49) #6, !srcloc !223
  %and7 = and i32 %priority, 15
  %52 = ptrtoint ptr %mixer_regs.i.i40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mixer_regs.i.i40, align 8
  %add.ptr.i.i47 = getelementptr i8, ptr %53, i32 16
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i47) #6, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %55 = and i32 %54, -251658241
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %or.i49 = or i32 %56, %and7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i49) #6
  %58 = ptrtoint ptr %mixer_regs.i.i40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mixer_regs.i.i40, align 8
  %add.ptr.i50 = getelementptr i8, ptr %59, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %57) #6, !srcloc !223
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb4.sw.epilog_crit_edge, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_crtc_handle_event(ptr noundef) local_unnamed_addr #1

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
define internal i32 @exynos_mixer_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hdmi = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %mixer = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mixer, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %flags = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %vp = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vp, align 8
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then5

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sclk_mixer = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %sclk_mixer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sclk_mixer, align 8
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_mixer_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mixer = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %if.then, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev2 = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.92, i32 noundef %retval.0.i) #6
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %hdmi = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdmi, align 4
  %call.i46 = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool.not.i47 = icmp eq i32 %call.i46, 0
  br i1 %tobool.not.i47, label %if.end.i50, label %if.end.clk_prepare_enable.exit53_crit_edge

if.end.clk_prepare_enable.exit53_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit53

if.end.i50:                                       ; preds = %if.end
  %call1.i48 = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool2.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool2.not.i49, label %if.end.i50.if.end6_crit_edge, label %if.then3.i51

if.end.i50.if.end6_crit_edge:                     ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3.i51:                                     ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %clk_prepare_enable.exit53

clk_prepare_enable.exit53:                        ; preds = %if.then3.i51, %if.end.clk_prepare_enable.exit53_crit_edge
  %retval.0.i52 = phi i32 [ %call.i46, %if.end.clk_prepare_enable.exit53_crit_edge ], [ %call1.i48, %if.then3.i51 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i52)
  %cmp4 = icmp slt i32 %retval.0.i52, 0
  br i1 %cmp4, label %if.then5, label %clk_prepare_enable.exit53.if.end6_crit_edge

clk_prepare_enable.exit53.if.end6_crit_edge:      ; preds = %clk_prepare_enable.exit53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %clk_prepare_enable.exit53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.93, i32 noundef %retval.0.i52) #6
  br label %cleanup

if.end6:                                          ; preds = %clk_prepare_enable.exit53.if.end6_crit_edge, %if.end.i50.if.end6_crit_edge
  %flags = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %vp = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vp, align 8
  %call.i54 = tail call i32 @clk_prepare(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool.not.i55 = icmp eq i32 %call.i54, 0
  br i1 %tobool.not.i55, label %if.end.i58, label %if.then8.clk_prepare_enable.exit61_crit_edge

if.then8.clk_prepare_enable.exit61_crit_edge:     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit61

if.end.i58:                                       ; preds = %if.then8
  %call1.i56 = tail call i32 @clk_enable(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %tobool2.not.i57 = icmp eq i32 %call1.i56, 0
  br i1 %tobool2.not.i57, label %if.end.i58.if.end12_crit_edge, label %if.then3.i59

if.end.i58.if.end12_crit_edge:                    ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then3.i59:                                     ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %12) #6
  br label %clk_prepare_enable.exit61

clk_prepare_enable.exit61:                        ; preds = %if.then3.i59, %if.then8.clk_prepare_enable.exit61_crit_edge
  %retval.0.i60 = phi i32 [ %call.i54, %if.then8.clk_prepare_enable.exit61_crit_edge ], [ %call1.i56, %if.then3.i59 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i60)
  %cmp10 = icmp slt i32 %retval.0.i60, 0
  br i1 %cmp10, label %if.then11, label %clk_prepare_enable.exit61.if.end12_crit_edge

clk_prepare_enable.exit61.if.end12_crit_edge:     ; preds = %clk_prepare_enable.exit61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then11:                                        ; preds = %clk_prepare_enable.exit61
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.94, i32 noundef %retval.0.i60) #6
  br label %cleanup

if.end12:                                         ; preds = %clk_prepare_enable.exit61.if.end12_crit_edge, %if.end.i58.if.end12_crit_edge
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not = icmp eq i32 %15, 0
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.then16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  %sclk_mixer = getelementptr inbounds %struct.mixer_context, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %sclk_mixer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sclk_mixer, align 8
  %call.i62 = tail call i32 @clk_prepare(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %if.end.i66, label %if.then16.clk_prepare_enable.exit69_crit_edge

if.then16.clk_prepare_enable.exit69_crit_edge:    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit69

if.end.i66:                                       ; preds = %if.then16
  %call1.i64 = tail call i32 @clk_enable(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool2.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool2.not.i65, label %if.end.i66.cleanup_crit_edge, label %if.then3.i67

if.end.i66.cleanup_crit_edge:                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i67:                                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %clk_prepare_enable.exit69

clk_prepare_enable.exit69:                        ; preds = %if.then3.i67, %if.then16.clk_prepare_enable.exit69_crit_edge
  %retval.0.i68 = phi i32 [ %call.i62, %if.then16.clk_prepare_enable.exit69_crit_edge ], [ %call1.i64, %if.then3.i67 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i68)
  %cmp18 = icmp slt i32 %retval.0.i68, 0
  br i1 %cmp18, label %if.then19, label %clk_prepare_enable.exit69.cleanup_crit_edge

clk_prepare_enable.exit69.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %clk_prepare_enable.exit69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.95, i32 noundef %retval.0.i68) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %clk_prepare_enable.exit69.cleanup_crit_edge, %if.end.i66.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then11, %if.end6.cleanup_crit_edge, %if.then5, %if.then
  %retval.0 = phi i32 [ %retval.0.i, %if.then ], [ %retval.0.i52, %if.then5 ], [ %retval.0.i60, %if.then11 ], [ %retval.0.i68, %if.then19 ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %clk_prepare_enable.exit69.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end.i66.cleanup_crit_edge ]
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !63, !64, !66, !68, !69, !70, !72, !73, !75, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !141, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1333, i32 11}
!2 = !{ptr @mixer_driver, !3, !"mixer_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1331, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1233, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mixer_component_ops, !8, !"mixer_component_ops", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1219, i32 35}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 881, i32 3}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 890, i32 4}
!13 = !{ptr @mixer_resources_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 780, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 782, i32 39}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 784, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mixer_resources_init._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @mixer_resources_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 788, i32 38}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 790, i32 3}
!29 = !{ptr @mixer_resources_init._entry.12, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mixer_resources_init._entry_ptr.14, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 794, i32 43}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 796, i32 3}
!35 = !{ptr @mixer_resources_init._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mixer_resources_init._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 801, i32 3}
!39 = !{ptr @mixer_resources_init._entry.19, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mixer_resources_init._entry_ptr.21, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 808, i32 3}
!43 = !{ptr @mixer_resources_init._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mixer_resources_init._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 818, i32 14}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 820, i32 3}
!49 = !{ptr @mixer_resources_init._entry.26, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mixer_resources_init._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 832, i32 36}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 834, i32 3}
!55 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @vp_resources_init._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @vp_resources_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 839, i32 45}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 841, i32 4}
!62 = !{ptr @vp_resources_init._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @vp_resources_init._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 844, i32 45}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 846, i32 4}
!68 = !{ptr @vp_resources_init._entry.37, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @vp_resources_init._entry_ptr.39, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @vp_resources_init._entry.40, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 857, i32 3}
!72 = !{ptr @vp_resources_init._entry_ptr.41, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @vp_resources_init._entry.42, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 864, i32 3}
!75 = !{ptr @vp_resources_init._entry_ptr.43, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @plane_configs, !77, !"plane_configs", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 122, i32 45}
!78 = !{ptr @mixer_formats, !79, !"mixer_formats", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 78, i32 23}
!80 = !{ptr @vp_formats, !81, !"vp_formats", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 88, i32 23}
!82 = !{ptr @mixer_crtc_ops, !83, !"mixer_crtc_ops", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1117, i32 41}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1000, i32 3}
!86 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mixer_atomic_enable._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @mixer_atomic_enable._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 696, i32 2}
!91 = !{ptr @filter_y_horiz_tap8, !92, !"filter_y_horiz_tap8", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 153, i32 17}
!93 = !{ptr @filter_y_vert_tap4, !94, !"filter_y_vert_tap4", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 164, i32 17}
!95 = distinct !{null, !96, !"filter_cr_horiz_tap4", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 175, i32 17}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 230, i32 2}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 231, i32 2}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 232, i32 2}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 233, i32 2}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 235, i32 2}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 236, i32 2}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 238, i32 2}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 239, i32 2}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 240, i32 2}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 241, i32 2}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 242, i32 2}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 243, i32 2}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 245, i32 2}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 246, i32 2}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 247, i32 2}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 248, i32 2}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 249, i32 2}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 250, i32 2}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1051, i32 2}
!135 = !{ptr @mixer_mode_fixup.modes, !136, !"modes", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1080, i32 4}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 943, i32 3}
!139 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @mixer_atomic_begin._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @mixer_atomic_begin._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 952, i32 2}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 262, i32 2}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 263, i32 2}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 264, i32 2}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 265, i32 2}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 266, i32 2}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 267, i32 2}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 268, i32 2}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 269, i32 2}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 270, i32 2}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 271, i32 2}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 272, i32 2}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 273, i32 2}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 274, i32 2}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 275, i32 2}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 276, i32 2}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 277, i32 2}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 278, i32 2}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 279, i32 2}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 280, i32 2}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 281, i32 2}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 282, i32 2}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 283, i32 2}
!188 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 284, i32 2}
!190 = !{ptr @mixer_match_types, !191, !"mixer_match_types", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1151, i32 34}
!192 = !{ptr @exynos4210_mxr_drv_data, !193, !"exynos4210_mxr_drv_data", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1145, i32 36}
!194 = !{ptr @exynos4212_mxr_drv_data, !195, !"exynos4212_mxr_drv_data", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1140, i32 36}
!196 = !{ptr @exynos5250_mxr_drv_data, !197, !"exynos5250_mxr_drv_data", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1135, i32 36}
!198 = !{ptr @exynos5420_mxr_drv_data, !199, !"exynos5420_mxr_drv_data", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1130, i32 36}
!200 = !{ptr @exynos_mixer_pm_ops, !201, !"exynos_mixer_pm_ops", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1325, i32 32}
!202 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1290, i32 3}
!204 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1297, i32 3}
!206 = !{ptr @.str.94, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1305, i32 4}
!208 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/exynos/exynos_mixer.c", i32 1313, i32 5}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"min_enum_size", i32 4}
!212 = !{i32 8, !"branch-target-enforcement", i32 0}
!213 = !{i32 8, !"sign-return-address", i32 0}
!214 = !{i32 8, !"sign-return-address-all", i32 0}
!215 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!219 = !{i8 0, i8 2}
!220 = !{i64 6900022}
!221 = !{i64 2156768267}
!222 = !{i64 2156768657}
!223 = !{i64 6899604}
!224 = !{i64 2156766452}
!225 = !{i64 2148272281}
!226 = !{i64 757104, i64 757129, i64 757151, i64 757167, i64 757179, i64 757199, i64 757223, i64 757239, i64 757251}
!227 = !{i64 2148272469}
!228 = !{i64 2156769229}
!229 = !{i64 2156766839}
!230 = !{!"branch_weights", i32 1, i32 1}
!231 = !{i64 2156767405}
!232 = !{i64 2156784375}
!233 = !{i64 2156785137}
!234 = !{i64 2156785913}
!235 = !{i64 2156786679}
!236 = !{i64 2156787437}
!237 = !{i64 2156788207}
!238 = !{i64 2156788977}
!239 = !{i64 2156789753}
!240 = !{i64 2156790521}
!241 = !{i64 2156791289}
!242 = !{i64 2156792057}
!243 = !{i64 2156792825}
!244 = !{i64 2156793597}
!245 = !{i64 2156794375}
!246 = !{i64 2156795153}
!247 = !{i64 2156795921}
!248 = !{i64 2156796691}
!249 = !{i64 2156797469}
!250 = !{i64 2156798247}
!251 = !{i64 2156799015}
!252 = !{i64 2156799785}
!253 = !{i64 2156800549}
!254 = !{i64 2156801313}
!255 = !{i64 2156770191}
!256 = !{i64 2156770965}
!257 = !{i64 2156771745}
!258 = !{i64 2156772533}
!259 = !{i64 2156773319}
!260 = !{i64 2156774105}
!261 = !{i64 2156774897}
!262 = !{i64 2156775691}
!263 = !{i64 2156776485}
!264 = !{i64 2156777275}
!265 = !{i64 2156778067}
!266 = !{i64 2156778859}
!267 = !{i64 2156779651}
!268 = !{i64 2156780445}
!269 = !{i64 2156781239}
!270 = !{i64 2156782029}
!271 = !{i64 2156782821}
!272 = !{i64 2156783613}
