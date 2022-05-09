; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_mic.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_mic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.exynos_mic = type { ptr, ptr, ptr, [2 x ptr], i8, %struct.videomode, ptr, %struct.drm_bridge, i8 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.exynos_drm_crtc = type { %struct.drm_crtc, i32, ptr, ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos-mic\00", [21 x i8] zeroinitializer }, align 32
@exynos_mic_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-mic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@exynos_mic_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_mic_suspend, ptr @exynos_mic_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mic_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_mic_probe, ptr @exynos_mic_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_mic_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_mic_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"*ERROR* mic: Failed to allocate memory for MIC object\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"*ERROR* mic: Failed to get mem region for MIC\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* mic: Failed to remap for MIC\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung,disp-syscon\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* mic: Failed to get system register.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* mic: Failed to get clock (%s)\0A\00", [57 x i8] zeroinitializer }, align 32
@mic_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr null, ptr null, ptr null, ptr null, ptr @mic_disable, ptr @mic_post_disable, ptr @mic_mode_set, ptr @mic_pre_enable, ptr @mic_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@exynos_mic_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @exynos_mic_bind, ptr @exynos_mic_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MIC has been probed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_mic0\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sclk_rgb_vclk_to_mic0\00", [42 x i8] zeroinitializer }, align 32
@mic_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mic_mutex, i64 52), ptr getelementptr (i8, ptr @mic_mutex, i64 52) }, ptr @mic_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mic_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mic_mutex\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* mic: Failed to read system register\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"*ERROR* Failed to reset\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"w: %u, h: %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* Failed to enable clock (%s)\0A\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 468, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"exynos_mic_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 458, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"exynos_mic_pm_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 370, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"mic_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 464, i32 24 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 385, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 395, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 400, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 406, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 408, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 416, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"mic_bridge_funcs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 301, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"exynos_mic_component_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 334, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 436, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 91, i32 42 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 91, i32 55 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"mic_mutex\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 93, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 116, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 279, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 195, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [43 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_mic.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 359, i32 4 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @.str, ptr @exynos_mic_of_match, ptr @exynos_mic_pm_ops, ptr @mic_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mic_bridge_funcs, ptr @exynos_mic_component_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mic_mutex, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_mic_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_mic_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_mic_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_mic_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 352, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call3 = call i32 @of_address_to_resource(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %6
  %add.i = add i32 %sub.i, %8
  %call8 = call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %6, i32 noundef %add.i) #7
  %reg = getelementptr inbounds %struct.exynos_mic, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %reg, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call14 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %11, ptr noundef nonnull @.str.5) #7
  %sysreg = getelementptr inbounds %struct.exynos_mic, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %sysreg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call14, ptr %sysreg, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end12
  %call21 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #7
  %arrayidx22 = getelementptr %struct.exynos_mic, ptr %call.i, i32 0, i32 3, i32 0
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call21, ptr %arrayidx22, align 4
  %cmp.i81 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %for.body.preheader.if.then26_crit_edge, label %for.cond

for.body.preheader.if.then26_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #7
  %14 = ptrtoint ptr %sysreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sysreg, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %call21.1 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #7
  %arrayidx22.1 = getelementptr %struct.exynos_mic, ptr %call.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call21.1, ptr %arrayidx22.1, align 4
  %cmp.i81.1 = icmp ugt ptr %call21.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81.1, label %for.cond.if.then26_crit_edge, label %for.cond.1

for.cond.if.then26_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

for.cond.1:                                       ; preds = %for.cond
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.exynos_mic, ptr %call.i, i32 0, i32 7
  %funcs = getelementptr inbounds %struct.exynos_mic, ptr %call.i, i32 0, i32 7, i32 7
  %19 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mic_bridge_funcs, ptr %funcs, align 4
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %of_node34 = getelementptr inbounds %struct.exynos_mic, ptr %call.i, i32 0, i32 7, i32 4
  %22 = ptrtoint ptr %of_node34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %of_node34, align 4
  call void @drm_bridge_add(ptr noundef %bridge) #7
  call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call36 = call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @exynos_mic_component_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %err_pm

if.then26:                                        ; preds = %for.cond.if.then26_crit_edge, %for.body.preheader.if.then26_crit_edge
  %.lcssa = phi ptr [ @.str.9, %for.body.preheader.if.then26_crit_edge ], [ @.str.10, %for.cond.if.then26_crit_edge ]
  %arrayidx22.lcssa = phi ptr [ %arrayidx22, %for.body.preheader.if.then26_crit_edge ], [ %arrayidx22.1, %for.cond.if.then26_crit_edge ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, ptr noundef nonnull %.lcssa) #7
  %23 = ptrtoint ptr %arrayidx22.lcssa to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx22.lcssa, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

if.end39:                                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 4, ptr noundef nonnull @.str.8) #7
  br label %cleanup

err_pm:                                           ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %err_pm, %if.end39, %if.then26, %if.then17, %if.then11, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.end39 ], [ %call3, %if.then5 ], [ %16, %if.then17 ], [ %25, %if.then26 ], [ %call36, %err_pm ], [ -12, %if.then11 ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_mic_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @exynos_mic_component_ops) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %bridge = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 7
  tail call void @drm_bridge_remove(ptr noundef %bridge) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mic_disable(ptr nocapture noundef %bridge) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mic_post_disable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 8
  %0 = ptrtoint ptr %driver_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_private, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @mic_mutex, i32 noundef 0) #7
  %enabled = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.already_disabled_crit_edge, label %if.end

entry.already_disabled_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %already_disabled

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !55
  %sysreg.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %sysreg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sysreg.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 4100, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup.sink.split.i_crit_edge

if.end.cleanup.sink.split.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %and.i = and i32 %8, -36
  store i32 %and.i, ptr %val.i, align 4
  %9 = ptrtoint ptr %sysreg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sysreg.i, align 4
  %call11.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 4100, i32 noundef %and.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end.i.mic_set_path.exit_crit_edge, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i.mic_set_path.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mic_set_path.exit

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %if.end.cleanup.sink.split.i_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #7
  br label %mic_set_path.exit

mic_set_path.exit:                                ; preds = %cleanup.sink.split.i, %if.end.i.mic_set_path.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i5 = call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 5) #7
  %15 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %enabled, align 4
  br label %already_disabled

already_disabled:                                 ; preds = %mic_set_path.exit, %entry.already_disabled_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @mic_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mic_mode_set(ptr nocapture noundef readonly %bridge, ptr noundef %mode, ptr nocapture noundef readnone %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 8
  %0 = ptrtoint ptr %driver_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_private, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @mic_mutex, i32 noundef 0) #7
  %vm = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 5
  tail call void @drm_display_mode_to_videomode(ptr noundef %mode, ptr noundef %vm) #7
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  %i80_mode = getelementptr inbounds %struct.exynos_drm_crtc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %i80_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %i80_mode, align 8
  %i80_mode1 = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  %7 = ptrtoint ptr %i80_mode1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.load.lobit, ptr %i80_mode1, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @mic_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mic_pre_enable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 8
  %0 = ptrtoint ptr %driver_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_private, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @mic_mutex, i32 noundef 0) #7
  %enabled = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end2

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !57
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i, align 4, !annotation !55
  %sysreg.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %sysreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sysreg.i, align 4
  %call.i27 = call i32 @regmap_read(ptr noundef %9, i32 noundef 4100, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end2.cleanup.sink.split.i_crit_edge

if.end2.cleanup.sink.split.i_crit_edge:           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end2
  %i80_mode.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %i80_mode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i80_mode.i, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.i = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  %..i = select i1 %tobool3.not.i, i32 1, i32 2
  %or5.i = or i32 %13, %..i
  %or7.i = or i32 %or5.i, 32
  store i32 %or7.i, ptr %val.i, align 4
  %14 = ptrtoint ptr %sysreg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sysreg.i, align 4
  %call11.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 4100, i32 noundef %or7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end.i.mic_set_path.exit_crit_edge, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i.mic_set_path.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mic_set_path.exit

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %if.end2.cleanup.sink.split.i_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #7
  br label %mic_set_path.exit

mic_set_path.exit:                                ; preds = %cleanup.sink.split.i, %if.end.i.mic_set_path.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @arm_heavy_mb() #7
  %reg.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 268435456) #7, !srcloc !60
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i29.while.body.i_crit_edge, %mic_set_path.exit
  %dec6.i = phi i32 [ 99, %mic_set_path.exit ], [ %dec.i, %if.end.i29.while.body.i_crit_edge ]
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i, align 4
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !61
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %23 = and i32 %22, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i28 = icmp eq i32 %23, 0
  br i1 %tobool.not.i28, label %if.end7, label %if.end.i29

if.end.i29:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 2147480) #7
  %dec.i = add nsw i32 %dec6.i, -1
  %cmp.not.i = icmp eq i32 %dec6.i, 0
  br i1 %cmp.not.i, label %if.then5, label %if.end.i29.while.body.i_crit_edge

if.end.i29.while.body.i_crit_edge:                ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.then5:                                         ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %26, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #7
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i31 = call i32 @__pm_runtime_idle(ptr noundef %28, i32 noundef 5) #7
  br label %cleanup

if.end7:                                          ; preds = %while.body.i
  %i80_mode = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %i80_mode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %i80_mode, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool8.not = icmp eq i8 %30, 0
  br i1 %tobool8.not, label %if.then9, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %vm.sroa.4.0.vm1.sroa_idx.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %vm.sroa.4.0.vm1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %vm.sroa.4.0.copyload.i = load i32, ptr %vm.sroa.4.0.vm1.sroa_idx.i, align 4
  %vm.sroa.5.0.vm1.sroa_idx.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 5, i32 2
  %32 = ptrtoint ptr %vm.sroa.5.0.vm1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %vm.sroa.5.0.copyload.i = load i32, ptr %vm.sroa.5.0.vm1.sroa_idx.i, align 4
  %vm.sroa.7.0.vm1.sroa_idx.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 5, i32 3
  %33 = ptrtoint ptr %vm.sroa.7.0.vm1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %vm.sroa.7.0.copyload.i = load i32, ptr %vm.sroa.7.0.vm1.sroa_idx.i, align 4
  %vm.sroa.9.0.vm1.sroa_idx.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 5, i32 4
  %34 = ptrtoint ptr %vm.sroa.9.0.vm1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %vm.sroa.9.0.copyload.i = load i32, ptr %vm.sroa.9.0.vm1.sroa_idx.i, align 4
  %vm.sroa.11.0.vm1.sroa_idx.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 5, i32 5
  %35 = ptrtoint ptr %vm.sroa.11.0.vm1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %vm.sroa.11.0.copyload.i = load i32, ptr %vm.sroa.11.0.vm1.sroa_idx.i, align 4
  %vm.sroa.12.0.vm1.sroa_idx.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 5, i32 6
  %36 = ptrtoint ptr %vm.sroa.12.0.vm1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %vm.sroa.12.0.copyload.i = load i32, ptr %vm.sroa.12.0.vm1.sroa_idx.i, align 4
  %vm.sroa.14.0.vm1.sroa_idx.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 5, i32 7
  %37 = ptrtoint ptr %vm.sroa.14.0.vm1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %vm.sroa.14.0.copyload.i = load i32, ptr %vm.sroa.14.0.vm1.sroa_idx.i, align 4
  %vm.sroa.16.0.vm1.sroa_idx.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 5, i32 8
  %38 = ptrtoint ptr %vm.sroa.16.0.vm1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %vm.sroa.16.0.copyload.i = load i32, ptr %vm.sroa.16.0.vm1.sroa_idx.i, align 4
  %and.i = shl i32 %vm.sroa.16.0.copyload.i, 16
  %shl.i = and i32 %and.i, 1073676288
  %add.i = add i32 %vm.sroa.12.0.copyload.i, %vm.sroa.11.0.copyload.i
  %add3.i = add i32 %add.i, %vm.sroa.14.0.copyload.i
  %add4.i = add i32 %add3.i, %vm.sroa.16.0.copyload.i
  %and5.i = and i32 %add4.i, 16383
  %add6.i = or i32 %and5.i, %shl.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @arm_heavy_mb() #7
  %39 = call i32 @llvm.bswap.i32(i32 %add6.i) #7
  %40 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %39) #7, !srcloc !60
  %and9.i = shl i32 %vm.sroa.14.0.copyload.i, 16
  %shl10.i = and i32 %and9.i, 1073676288
  %and12.i = and i32 %vm.sroa.12.0.copyload.i, 16383
  %add13.i = or i32 %shl10.i, %and12.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @arm_heavy_mb() #7
  %42 = call i32 @llvm.bswap.i32(i32 %add13.i) #7
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %44, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %42) #7, !srcloc !60
  %and19.i = shl i32 %vm.sroa.9.0.copyload.i, 16
  %shl20.i = and i32 %and19.i, 1073676288
  %add22.i = add i32 %vm.sroa.5.0.copyload.i, %vm.sroa.4.0.copyload.i
  %add23.i = add i32 %add22.i, %vm.sroa.7.0.copyload.i
  %add24.i = add i32 %add23.i, %vm.sroa.9.0.copyload.i
  %and25.i = and i32 %add24.i, 16383
  %add26.i = or i32 %and25.i, %shl20.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @arm_heavy_mb() #7
  %45 = call i32 @llvm.bswap.i32(i32 %add26.i) #7
  %46 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %47, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %45) #7, !srcloc !60
  %and33.i = shl i32 %vm.sroa.7.0.copyload.i, 16
  %shl34.i = and i32 %and33.i, 1073676288
  %and36.i = and i32 %vm.sroa.5.0.copyload.i, 16383
  %add37.i = or i32 %shl34.i, %and36.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  call void @arm_heavy_mb() #7
  %48 = call i32 @llvm.bswap.i32(i32 %add37.i) #7
  %49 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg.i, align 4
  %add.ptr42.i = getelementptr i8, ptr %50, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %48) #7, !srcloc !60
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %hactive.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %hactive.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hactive.i, align 4
  %and.i32 = and i32 %52, 16383
  %vactive.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 5, i32 5
  %53 = ptrtoint ptr %vactive.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vactive.i, align 4
  %and2.i = shl i32 %54, 16
  %shl.i33 = and i32 %and2.i, 1073676288
  %add.i34 = or i32 %shl.i33, %and.i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  call void @arm_heavy_mb() #7
  %55 = call i32 @llvm.bswap.i32(i32 %add.i34) #7
  %56 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %57, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %55) #7, !srcloc !60
  %58 = ptrtoint ptr %hactive.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %vm.sroa.4.0.copyload.i37 = load i32, ptr %hactive.i, align 4
  %vm.sroa.6.0.vm1.sroa_idx.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 5, i32 2
  %59 = ptrtoint ptr %vm.sroa.6.0.vm1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %vm.sroa.6.0.copyload.i = load i32, ptr %vm.sroa.6.0.vm1.sroa_idx.i, align 4
  %vm.sroa.8.0.vm1.sroa_idx.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 5, i32 3
  %60 = ptrtoint ptr %vm.sroa.8.0.vm1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %vm.sroa.8.0.copyload.i = load i32, ptr %vm.sroa.8.0.vm1.sroa_idx.i, align 4
  %vm.sroa.10.0.vm1.sroa_idx.i = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 5, i32 4
  %61 = ptrtoint ptr %vm.sroa.10.0.vm1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %vm.sroa.10.0.copyload.i = load i32, ptr %vm.sroa.10.0.vm1.sroa_idx.i, align 4
  %62 = ptrtoint ptr %vactive.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %vm.sroa.12.0.copyload.i39 = load i32, ptr %vactive.i, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %64, i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %vm.sroa.4.0.copyload.i37, i32 noundef %vm.sroa.12.0.copyload.i39) #7
  %65 = lshr i32 %vm.sroa.4.0.copyload.i37, 1
  %shl.i40 = and i32 %65, 2147483646
  %rem.i = and i32 %vm.sroa.12.0.copyload.i39, 3
  %add.i41 = add nuw i32 %rem.i, %shl.i40
  %and.i42 = and i32 %add.i41, 16383
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  call void @arm_heavy_mb() #7
  %66 = call i32 @llvm.bswap.i32(i32 %and.i42) #7
  %67 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %68, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %66) #7, !srcloc !60
  %69 = ptrtoint ptr %i80_mode to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %i80_mode, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i45 = icmp eq i8 %70, 0
  br i1 %tobool.not.i45, label %if.then.i50, label %if.end10.mic_set_output_timing.exit_crit_edge

if.end10.mic_set_output_timing.exit_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %mic_set_output_timing.exit

if.then.i50:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %and5.i46 = shl i32 %vm.sroa.10.0.copyload.i, 16
  %shl6.i = and i32 %and5.i46, 1073676288
  %add8.i = add i32 %vm.sroa.8.0.copyload.i, %vm.sroa.6.0.copyload.i
  %add9.i = add i32 %add8.i, %vm.sroa.10.0.copyload.i
  %add10.i = add i32 %add9.i, %add.i41
  %and11.i = and i32 %add10.i, 16383
  %add12.i = or i32 %and11.i, %shl6.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  call void @arm_heavy_mb() #7
  %71 = call i32 @llvm.bswap.i32(i32 %add12.i) #7
  %72 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %73, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %71) #7, !srcloc !60
  %and19.i47 = shl i32 %vm.sroa.8.0.copyload.i, 16
  %shl20.i48 = and i32 %and19.i47, 1073676288
  %and22.i = and i32 %vm.sroa.6.0.copyload.i, 16383
  %add23.i49 = or i32 %shl20.i48, %and22.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  call void @arm_heavy_mb() #7
  %74 = call i32 @llvm.bswap.i32(i32 %add23.i49) #7
  %75 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %76, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %74) #7, !srcloc !60
  br label %mic_set_output_timing.exit

mic_set_output_timing.exit:                       ; preds = %if.then.i50, %if.end10.mic_set_output_timing.exit_crit_edge
  %77 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg.i, align 4
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #7, !srcloc !61
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  %80 = and i32 %79, -654311745
  %81 = or i32 %80, 16777536
  %82 = call i32 @llvm.bswap.i32(i32 %81) #7
  %83 = ptrtoint ptr %i80_mode to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %i80_mode, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool4.not.i = icmp eq i8 %84, 0
  %or6.i = or i32 %82, 2
  %reg.0.i = select i1 %tobool4.not.i, i32 %82, i32 %or6.i
  %or9.i = or i32 %reg.0.i, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  call void @arm_heavy_mb() #7
  %85 = call i32 @llvm.bswap.i32(i32 %or9.i) #7
  %86 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #7, !srcloc !60
  %88 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %mic_set_output_timing.exit, %if.then5, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @mic_mutex) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mic_enable(ptr nocapture noundef %bridge) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @exynos_mic_bind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_private = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver_private, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_mic_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @mic_mutex, i32 noundef 0) #7
  %enabled = getelementptr inbounds %struct.exynos_mic, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.already_disabled_crit_edge, label %if.end

entry.already_disabled_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %already_disabled

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #7
  br label %already_disabled

already_disabled:                                 ; preds = %if.end, %entry.already_disabled_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mic_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_mic_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.exynos_mic, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %arrayidx.1 = getelementptr %struct.exynos_mic, ptr %1, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_mic_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.exynos_mic, ptr %1, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %if.then.thread, label %clk_prepare_enable.exit.for.inc_crit_edge

clk_prepare_enable.exit.for.inc_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then.thread:                                   ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.9) #7
  br label %cleanup

while.body:                                       ; preds = %clk_prepare_enable.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10) #7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %cleanup

for.inc:                                          ; preds = %clk_prepare_enable.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.exynos_mic, ptr %1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %call.i.1 = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %for.inc.clk_prepare_enable.exit.1_crit_edge

for.inc.clk_prepare_enable.exit.1_crit_edge:      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.1

if.end.i.1:                                       ; preds = %for.inc
  %call1.i.1 = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %if.end.i.1.cleanup_crit_edge, label %if.then3.i.1

if.end.i.1.cleanup_crit_edge:                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %clk_prepare_enable.exit.1

clk_prepare_enable.exit.1:                        ; preds = %if.then3.i.1, %for.inc.clk_prepare_enable.exit.1_crit_edge
  %retval.0.i.1 = phi i32 [ %call.i.1, %for.inc.clk_prepare_enable.exit.1_crit_edge ], [ %call1.i.1, %if.then3.i.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.1)
  %cmp2.1 = icmp slt i32 %retval.0.i.1, 0
  br i1 %cmp2.1, label %while.body, label %clk_prepare_enable.exit.1.cleanup_crit_edge

clk_prepare_enable.exit.1.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %clk_prepare_enable.exit.1.cleanup_crit_edge, %if.end.i.1.cleanup_crit_edge, %while.body, %if.then.thread
  %retval.0 = phi i32 [ %retval.0.i.1, %while.body ], [ %retval.0.i, %if.then.thread ], [ 0, %clk_prepare_enable.exit.1.cleanup_crit_edge ], [ 0, %if.end.i.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 468, i32 11}
!2 = !{ptr @mic_driver, !3, !"mic_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 464, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 385, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 395, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 400, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 406, i32 8}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 408, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 416, i32 4}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 436, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 91, i32 42}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 91, i32 55}
!23 = distinct !{null, !24, !"clk_names", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 91, i32 26}
!25 = !{ptr @mic_bridge_funcs, !26, !"mic_bridge_funcs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 301, i32 38}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 93, i32 8}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mic_mutex, !28, !"mic_mutex", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 116, i32 3}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 279, i32 3}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 195, i32 2}
!37 = !{ptr @exynos_mic_component_ops, !38, !"exynos_mic_component_ops", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 334, i32 35}
!39 = !{ptr @exynos_mic_of_match, !40, !"exynos_mic_of_match", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 458, i32 34}
!41 = !{ptr @exynos_mic_pm_ops, !42, !"exynos_mic_pm_ops", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 370, i32 32}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/exynos/exynos_drm_mic.c", i32 359, i32 4}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i8 0, i8 2}
!55 = !{!"auto-init"}
!56 = !{i64 2148248477}
!57 = !{i64 733300, i64 733325, i64 733347, i64 733363, i64 733375, i64 733395, i64 733419, i64 733435, i64 733447}
!58 = !{i64 2148248665}
!59 = !{i64 2156679668}
!60 = !{i64 4720638}
!61 = !{i64 4721056}
!62 = !{i64 2156680333}
!63 = !{i64 2156681225}
!64 = !{i64 2156681690}
!65 = !{i64 2156682202}
!66 = !{i64 2156682667}
!67 = !{i64 2156683125}
!68 = !{i64 2156683646}
!69 = !{i64 2156684159}
!70 = !{i64 2156684624}
!71 = !{i64 2156685277}
!72 = !{i64 2156685585}
