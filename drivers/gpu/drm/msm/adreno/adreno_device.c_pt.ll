; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/adreno/adreno_device.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/adreno_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.adreno_info = type { %struct.adreno_rev, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, i32, ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adreno_reglist = type { i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.adreno_platform_config = type { %struct.adreno_rev }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.88, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.94, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.88 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.94 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.109, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.109 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@hang_debug = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_hang_debug338 = internal constant [72 x i8] c"msm.parm=hang_debug:Dump registers when hang is detected (can be slow!)\00", section ".modinfo", align 1
@__param_str_hang_debug = internal constant [15 x i8] c"msm.hang_debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_hang_debug = internal constant %struct.kernel_param { ptr @__param_str_hang_debug, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @hang_debug } }, section "__param", align 4
@__UNIQUE_ID_hang_debugtype339 = internal constant [29 x i8] c"msm.parmtype=hang_debug:bool\00", section ".modinfo", align 1
@snapshot_debugbus = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_snapshot_debugbus340 = internal constant [91 x i8] c"msm.parm=snapshot_debugbus:Include debugbus sections in GPU devcoredump (if not fused off)\00", section ".modinfo", align 1
@__param_str_snapshot_debugbus = internal constant [22 x i8] c"msm.snapshot_debugbus\00", align 1
@__param_snapshot_debugbus = internal constant %struct.kernel_param { ptr @__param_str_snapshot_debugbus, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @snapshot_debugbus } }, section "__param", align 4
@__UNIQUE_ID_snapshot_debugbustype341 = internal constant [36 x i8] c"msm.parmtype=snapshot_debugbus:bool\00", section ".modinfo", align 1
@allow_vram_carveout = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_allow_vram_carveout342 = internal constant [74 x i8] c"msm.parm=allow_vram_carveout:Allow using VRAM Carveout, in place of IOMMU\00", section ".modinfo", align 1
@__param_str_allow_vram_carveout = internal constant [24 x i8] c"msm.allow_vram_carveout\00", align 1
@__param_allow_vram_carveout = internal constant %struct.kernel_param { ptr @__param_str_allow_vram_carveout, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @allow_vram_carveout } }, section "__param", align 4
@__UNIQUE_ID_allow_vram_carveouttype343 = internal constant [38 x i8] c"msm.parmtype=allow_vram_carveout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [30 x i8] c"msm.firmware=qcom/a300_pm4.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [30 x i8] c"msm.firmware=qcom/a300_pfp.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [30 x i8] c"msm.firmware=qcom/a330_pm4.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [30 x i8] c"msm.firmware=qcom/a330_pfp.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [30 x i8] c"msm.firmware=qcom/a420_pm4.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [30 x i8] c"msm.firmware=qcom/a420_pfp.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [30 x i8] c"msm.firmware=qcom/a530_pm4.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [30 x i8] c"msm.firmware=qcom/a530_pfp.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [34 x i8] c"msm.firmware=qcom/a530v3_gpmu.fw2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware353 = internal constant [31 x i8] c"msm.firmware=qcom/a530_zap.mdt\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [31 x i8] c"msm.firmware=qcom/a530_zap.b00\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [31 x i8] c"msm.firmware=qcom/a530_zap.b01\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware356 = internal constant [31 x i8] c"msm.firmware=qcom/a530_zap.b02\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware357 = internal constant [30 x i8] c"msm.firmware=qcom/a630_sqe.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware358 = internal constant [31 x i8] c"msm.firmware=qcom/a630_gmu.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware359 = internal constant [31 x i8] c"msm.firmware=qcom/a630_zap.mbn\00", section ".modinfo", align 1
@gpulist = internal constant { [24 x %struct.adreno_info], [288 x i8] } { [24 x %struct.adreno_info] [%struct.adreno_info { %struct.adreno_rev { i8 2, i8 0, i8 0, i8 0 }, i32 200, ptr @.str.7, [3 x ptr] [ptr @.str.8, ptr @.str.9, ptr null], i32 262144, i32 0, ptr @a2xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 2, i8 0, i8 0, i8 1 }, i32 201, ptr @.str.7, [3 x ptr] [ptr @.str.8, ptr @.str.9, ptr null], i32 131072, i32 0, ptr @a2xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 2, i8 2, i8 0, i8 -1 }, i32 220, ptr @.str.10, [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr null], i32 524288, i32 0, ptr @a2xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 3, i8 0, i8 5, i8 -1 }, i32 305, ptr @.str.13, [3 x ptr] [ptr @.str.14, ptr @.str.15, ptr null], i32 262144, i32 0, ptr @a3xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 3, i8 0, i8 6, i8 0 }, i32 307, ptr @.str.16, [3 x ptr] [ptr @.str.14, ptr @.str.15, ptr null], i32 131072, i32 0, ptr @a3xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 3, i8 2, i8 -1, i8 -1 }, i32 320, ptr @.str.17, [3 x ptr] [ptr @.str.14, ptr @.str.15, ptr null], i32 524288, i32 0, ptr @a3xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 3, i8 3, i8 0, i8 -1 }, i32 330, ptr @.str.18, [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr null], i32 1048576, i32 0, ptr @a3xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 4, i8 0, i8 5, i8 -1 }, i32 405, ptr @.str.21, [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr null], i32 262144, i32 0, ptr @a4xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 4, i8 2, i8 0, i8 -1 }, i32 420, ptr @.str.24, [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr null], i32 1572864, i32 0, ptr @a4xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 4, i8 3, i8 0, i8 -1 }, i32 430, ptr @.str.25, [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr null], i32 1572864, i32 0, ptr @a4xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 5, i8 0, i8 6, i8 -1 }, i32 506, ptr @.str.26, [3 x ptr] [ptr @.str.27, ptr @.str.28, ptr null], i32 139264, i32 3, ptr @a5xx_gpu_init, ptr @.str.29, i32 250, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 5, i8 0, i8 8, i8 -1 }, i32 508, ptr @.str.30, [3 x ptr] [ptr @.str.27, ptr @.str.28, ptr null], i32 139264, i32 3, ptr @a5xx_gpu_init, ptr @.str.31, i32 250, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 5, i8 0, i8 9, i8 -1 }, i32 509, ptr @.str.32, [3 x ptr] [ptr @.str.27, ptr @.str.28, ptr null], i32 278528, i32 3, ptr @a5xx_gpu_init, ptr @.str.33, i32 250, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 5, i8 1, i8 0, i8 -1 }, i32 510, ptr @.str.34, [3 x ptr] [ptr @.str.27, ptr @.str.28, ptr null], i32 262144, i32 0, ptr @a5xx_gpu_init, ptr null, i32 250, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 5, i8 1, i8 2, i8 -1 }, i32 512, ptr @.str.35, [3 x ptr] [ptr @.str.27, ptr @.str.28, ptr null], i32 278528, i32 3, ptr @a5xx_gpu_init, ptr @.str.33, i32 250, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 5, i8 3, i8 0, i8 2 }, i32 530, ptr @.str.36, [3 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.37], i32 1048576, i32 3, ptr @a5xx_gpu_init, ptr @.str.38, i32 250, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 5, i8 4, i8 0, i8 -1 }, i32 540, ptr @.str.39, [3 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.40], i32 1048576, i32 3, ptr @a5xx_gpu_init, ptr @.str.41, i32 250, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 6, i8 1, i8 8, i8 -1 }, i32 618, ptr @.str.42, [3 x ptr] [ptr @.str.43, ptr @.str.44, ptr null], i32 524288, i32 0, ptr @a6xx_gpu_init, ptr null, i32 66, ptr null }, %struct.adreno_info { %struct.adreno_rev { i8 6, i8 3, i8 0, i8 -1 }, i32 630, ptr @.str.45, [3 x ptr] [ptr @.str.43, ptr @.str.44, ptr null], i32 1048576, i32 0, ptr @a6xx_gpu_init, ptr @.str.46, i32 66, ptr @a630_hwcg }, %struct.adreno_info { %struct.adreno_rev { i8 6, i8 4, i8 0, i8 -1 }, i32 640, ptr @.str.47, [3 x ptr] [ptr @.str.43, ptr @.str.48, ptr null], i32 1048576, i32 0, ptr @a6xx_gpu_init, ptr @.str.49, i32 66, ptr @a640_hwcg }, %struct.adreno_info { %struct.adreno_rev { i8 6, i8 5, i8 0, i8 -1 }, i32 650, ptr @.str.50, [3 x ptr] [ptr @.str.51, ptr @.str.52, ptr null], i32 1179648, i32 0, ptr @a6xx_gpu_init, ptr @.str.53, i32 66, ptr @a650_hwcg }, %struct.adreno_info { %struct.adreno_rev { i8 6, i8 6, i8 0, i8 -1 }, i32 660, ptr @.str.54, [3 x ptr] [ptr @.str.55, ptr @.str.56, ptr null], i32 1572864, i32 0, ptr @a6xx_gpu_init, ptr @.str.57, i32 66, ptr @a660_hwcg }, %struct.adreno_info { %struct.adreno_rev { i8 6, i8 3, i8 5, i8 -1 }, i32 0, ptr @.str.58, [3 x ptr] [ptr @.str.55, ptr @.str.56, ptr null], i32 524288, i32 0, ptr @a6xx_gpu_init, ptr null, i32 66, ptr @a660_hwcg }, %struct.adreno_info { %struct.adreno_rev { i8 6, i8 8, i8 0, i8 -1 }, i32 680, ptr @.str.59, [3 x ptr] [ptr @.str.43, ptr @.str.48, ptr null], i32 2097152, i32 0, ptr @a6xx_gpu_init, ptr @.str.49, i32 66, ptr @a640_hwcg }], [288 x i8] zeroinitializer }, align 32
@adreno_load_gpu.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@adreno_load_gpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 403, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no GPU device was found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adreno_load_gpu\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/msm/adreno/adreno_device.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adreno_load_gpu._entry_ptr = internal global ptr @adreno_load_gpu._entry, section ".printk_index", align 4
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* Couldn't power up the GPU: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* gpu hw init failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@adreno_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @adreno_probe, ptr @adreno_remove, ptr @adreno_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.60, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adreno_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A200\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"yamato_pm4.fw\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"yamato_pfp.fw\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A220\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"leia_pm4_470.fw\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"leia_pfp_470.fw\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A305\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a300_pm4.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a300_pfp.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A306\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A320\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A330\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a330_pm4.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a330_pfp.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A405\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a420_pm4.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a420_pfp.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A420\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A430\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A506\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a530_pm4.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a530_pfp.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a506_zap.mdt\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A508\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a508_zap.mdt\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A509\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a512_zap.mdt\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A510\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A512\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A530\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"a530v3_gpmu.fw2\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a530_zap.mdt\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A540\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"a540_gpmu.fw2\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a540_zap.mdt\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A618\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a630_sqe.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a630_gmu.bin\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A630\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a630_zap.mdt\00", [19 x i8] zeroinitializer }, align 32
@a630_hwcg = external dso_local constant [0 x %struct.adreno_reglist], align 4
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A640\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a640_gmu.bin\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a640_zap.mdt\00", [19 x i8] zeroinitializer }, align 32
@a640_hwcg = external dso_local constant [0 x %struct.adreno_reglist], align 4
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A650\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a650_sqe.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a650_gmu.bin\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a650_zap.mdt\00", [19 x i8] zeroinitializer }, align 32
@a650_hwcg = external dso_local constant [0 x %struct.adreno_reglist], align 4
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A660\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a660_sqe.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a660_gmu.bin\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a660_zap.mdt\00", [19 x i8] zeroinitializer }, align 32
@a660_hwcg = external dso_local constant [0 x %struct.adreno_reglist], align 4
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Adreno 7c Gen 3\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A680\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"adreno\00", [25 x i8] zeroinitializer }, align 32
@dt_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,adreno\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,adreno-3xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amd,imageon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,kgsl-3d0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@adreno_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adreno_suspend, ptr @adreno_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@a3xx_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @adreno_bind, ptr @adreno_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amd,imageon\00", [20 x i8] zeroinitializer }, align 32
@adreno_bind.config = internal global { %struct.adreno_platform_config, [28 x i8] } zeroinitializer, align 32
@adreno_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 513, ptr @.str.64, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unknown GPU revision: %u.%u.%u.%u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adreno_bind\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@adreno_bind._entry_ptr = internal global ptr @adreno_bind._entry, section ".printk_index", align 4
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Found GPU: %u.%u.%u.%u\0A\00", [40 x i8] zeroinitializer }, align 32
@adreno_bind._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.63, ptr @.str.2, i32 525, ptr @.str.64, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to load adreno gpu\0A\00", [37 x i8] zeroinitializer }, align 32
@adreno_bind._entry_ptr.68 = internal global ptr @adreno_bind._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,adreno-%u.%u\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amd,imageon-%u.%u\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom,chipid\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* could not parse qcom,chipid: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@find_chipid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 485, ptr @.str.64, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Using legacy qcom,chipid binding!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"find_chipid\00", [20 x i8] zeroinitializer }, align 32
@find_chipid._entry_ptr = internal global ptr @find_chipid._entry, section ".printk_index", align 4
@find_chipid._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 487, ptr @.str.64, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Use compatible qcom,adreno-%u%u%u.%u instead.\0A\00", [49 x i8] zeroinitializer }, align 32
@find_chipid._entry_ptr.78 = internal global ptr @find_chipid._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@__const.adreno_device_register_headless.dummy_info = private unnamed_addr constant { ptr, ptr, i8, [3 x i8], ptr, i32, ptr, i32, ptr, i32, [4 x i8], i64, ptr, [4 x i8] } { ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, ptr @.str.79, i32 -1, ptr null, i32 0, ptr null, i32 0, [4 x i8] zeroinitializer, i64 -1, ptr null, [4 x i8] zeroinitializer }, align 8
@adreno_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 629, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Timeout waiting for GPU to suspend\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adreno_suspend\00", [17 x i8] zeroinitializer }, align 32
@adreno_suspend._entry_ptr = internal global ptr @adreno_suspend._entry, section ".printk_index", align 4
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"hang_debug\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 11, i32 6 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"snapshot_debugbus\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 15, i32 6 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"allow_vram_carveout\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 19, i32 6 }
@___asan_gen_.91 = private unnamed_addr constant [8 x i8] c"gpulist\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 23, i32 33 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 403, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 425, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 434, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"adreno_driver\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 642, i32 31 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 27, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 29, i32 22 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 30, i32 22 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 49, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 51, i32 22 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 52, i32 22 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 60, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 62, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 63, i32 22 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 71, i32 12 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 82, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 93, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 95, i32 22 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 96, i32 22 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 104, i32 12 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 106, i32 22 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 107, i32 22 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 115, i32 12 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 126, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 137, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 139, i32 22 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 140, i32 22 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 151, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 155, i32 11 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 168, i32 12 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 172, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 186, i32 12 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 190, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 205, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 222, i32 11 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 226, i32 23 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 237, i32 12 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 241, i32 11 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 245, i32 23 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 255, i32 12 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 259, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 261, i32 22 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 262, i32 22 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 270, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 278, i32 12 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 283, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 286, i32 22 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 291, i32 12 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 296, i32 11 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 298, i32 22 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 299, i32 22 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 304, i32 12 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 309, i32 11 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 311, i32 22 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 312, i32 22 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 317, i32 12 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 321, i32 11 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 333, i32 11 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 647, i32 11 }
@___asan_gen_.283 = private unnamed_addr constant [9 x i8] c"dt_match\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 593, i32 34 }
@___asan_gen_.286 = private unnamed_addr constant [14 x i8] c"adreno_pm_ops\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 637, i32 32 }
@___asan_gen_.289 = private unnamed_addr constant [9 x i8] c"a3xx_ops\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 544, i32 35 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 576, i32 49 }
@___asan_gen_.295 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 494, i32 39 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 511, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 517, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 525, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 456, i32 44 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 460, i32 22 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 461, i32 22 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 474, i32 35 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 476, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 485, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 486, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 556, i32 11 }
@___asan_gen_.352 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.359 = private constant [46 x i8] c"../drivers/gpu/drm/msm/adreno/adreno_device.c\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 629, i32 3 }
@llvm.compiler.used = appending global [125 x ptr] [ptr @__UNIQUE_ID_allow_vram_carveout342, ptr @__UNIQUE_ID_allow_vram_carveouttype343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_firmware352, ptr @__UNIQUE_ID_firmware353, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_firmware356, ptr @__UNIQUE_ID_firmware357, ptr @__UNIQUE_ID_firmware358, ptr @__UNIQUE_ID_firmware359, ptr @__UNIQUE_ID_hang_debug338, ptr @__UNIQUE_ID_hang_debugtype339, ptr @__UNIQUE_ID_snapshot_debugbus340, ptr @__UNIQUE_ID_snapshot_debugbustype341, ptr @__param_allow_vram_carveout, ptr @__param_hang_debug, ptr @__param_snapshot_debugbus, ptr @adreno_bind._entry, ptr @adreno_bind._entry.66, ptr @adreno_bind._entry_ptr, ptr @adreno_bind._entry_ptr.68, ptr @adreno_load_gpu._entry, ptr @adreno_load_gpu._entry_ptr, ptr @adreno_suspend._entry, ptr @adreno_suspend._entry_ptr, ptr @adreno_unregister, ptr @find_chipid._entry, ptr @find_chipid._entry.76, ptr @find_chipid._entry_ptr, ptr @find_chipid._entry_ptr.78, ptr @hang_debug, ptr @snapshot_debugbus, ptr @allow_vram_carveout, ptr @gpulist, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @adreno_driver, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @dt_match, ptr @adreno_pm_ops, ptr @a3xx_ops, ptr @.str.61, ptr @adreno_bind.config, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hang_debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_debugbus to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allow_vram_carveout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpulist to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adreno_load_gpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adreno_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adreno_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3xx_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adreno_bind.config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adreno_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adreno_bind._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_chipid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_chipid._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adreno_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @adreno_cmp_rev([1 x i32] %rev1.coerce, [1 x i32] %rev2.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rev1.coerce.fca.0.extract = extractvalue [1 x i32] %rev1.coerce, 0
  %rev1.sroa.0.0.extract.shift = lshr i32 %rev1.coerce.fca.0.extract, 24
  %rev1.sroa.0.0.extract.trunc = trunc i32 %rev1.sroa.0.0.extract.shift to i8
  %rev1.sroa.3.0.extract.shift = lshr i32 %rev1.coerce.fca.0.extract, 8
  %rev1.sroa.3.0.extract.trunc = trunc i32 %rev1.sroa.3.0.extract.shift to i8
  %rev1.sroa.4.0.extract.trunc = trunc i32 %rev1.coerce.fca.0.extract to i8
  %rev2.coerce.fca.0.extract = extractvalue [1 x i32] %rev2.coerce, 0
  %rev2.sroa.0.0.extract.shift = lshr i32 %rev2.coerce.fca.0.extract, 24
  %rev2.sroa.0.0.extract.trunc = trunc i32 %rev2.sroa.0.0.extract.shift to i8
  %rev2.sroa.3.0.extract.shift = lshr i32 %rev2.coerce.fca.0.extract, 8
  %rev2.sroa.3.0.extract.trunc = trunc i32 %rev2.sroa.3.0.extract.shift to i8
  %rev2.sroa.4.0.extract.trunc = trunc i32 %rev2.coerce.fca.0.extract to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %rev1.sroa.0.0.extract.trunc)
  %cmp.i = icmp eq i8 %rev1.sroa.0.0.extract.trunc, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %rev1.sroa.0.0.extract.trunc, i8 %rev2.sroa.0.0.extract.trunc)
  %cmp5.i = icmp eq i8 %rev1.sroa.0.0.extract.trunc, %rev2.sroa.0.0.extract.trunc
  %spec.select.i = or i1 %cmp.i, %cmp5.i
  br i1 %spec.select.i, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %rev2.sroa.2.0.extract.shift = lshr i32 %rev2.coerce.fca.0.extract, 16
  %rev2.sroa.2.0.extract.trunc = trunc i32 %rev2.sroa.2.0.extract.shift to i8
  %rev1.sroa.2.0.extract.shift = lshr i32 %rev1.coerce.fca.0.extract, 16
  %rev1.sroa.2.0.extract.trunc = trunc i32 %rev1.sroa.2.0.extract.shift to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %rev1.sroa.2.0.extract.trunc)
  %cmp.i9 = icmp eq i8 %rev1.sroa.2.0.extract.trunc, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %rev1.sroa.2.0.extract.trunc, i8 %rev2.sroa.2.0.extract.trunc)
  %cmp5.i10 = icmp eq i8 %rev1.sroa.2.0.extract.trunc, %rev2.sroa.2.0.extract.trunc
  %spec.select.i11 = or i1 %cmp.i9, %cmp5.i10
  br i1 %spec.select.i11, label %land.lhs.true4, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %rev1.sroa.3.0.extract.trunc)
  %cmp.i12 = icmp eq i8 %rev1.sroa.3.0.extract.trunc, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %rev1.sroa.3.0.extract.trunc, i8 %rev2.sroa.3.0.extract.trunc)
  %cmp5.i13 = icmp eq i8 %rev1.sroa.3.0.extract.trunc, %rev2.sroa.3.0.extract.trunc
  %spec.select.i14 = or i1 %cmp.i12, %cmp5.i13
  br i1 %spec.select.i14, label %land.rhs, label %land.lhs.true4.land.end_crit_edge

land.lhs.true4.land.end_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %rev1.sroa.4.0.extract.trunc)
  %cmp.i15 = icmp eq i8 %rev1.sroa.4.0.extract.trunc, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %rev1.sroa.4.0.extract.trunc, i8 %rev2.sroa.4.0.extract.trunc)
  %cmp5.i16 = icmp eq i8 %rev1.sroa.4.0.extract.trunc, %rev2.sroa.4.0.extract.trunc
  %spec.select.i17 = or i1 %cmp.i15, %cmp5.i16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %0 = phi i1 [ false, %land.lhs.true4.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %spec.select.i17, %land.rhs ]
  ret i1 %0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @adreno_info([1 x i32] %rev.coerce) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rev2.coerce.fca.0.extract.i = extractvalue [1 x i32] %rev.coerce, 0
  %rev2.sroa.0.0.extract.shift.i = lshr i32 %rev2.coerce.fca.0.extract.i, 24
  %rev2.sroa.0.0.extract.trunc.i = trunc i32 %rev2.sroa.0.0.extract.shift.i to i8
  %rev2.sroa.3.0.extract.shift.i = lshr i32 %rev2.coerce.fca.0.extract.i, 8
  %rev2.sroa.3.0.extract.trunc.i = trunc i32 %rev2.sroa.3.0.extract.shift.i to i8
  %rev2.sroa.4.0.extract.trunc.i = trunc i32 %rev2.coerce.fca.0.extract.i to i8
  %rev2.sroa.2.0.extract.shift.i = lshr i32 %rev2.coerce.fca.0.extract.i, 16
  %rev2.sroa.2.0.extract.trunc.i = trunc i32 %rev2.sroa.2.0.extract.shift.i to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [24 x %struct.adreno_info], ptr @gpulist, i32 0, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %arrayidx, align 4
  %rev1.sroa.0.0.extract.shift.i = lshr i32 %.unpack, 24
  %rev1.sroa.0.0.extract.trunc.i = trunc i32 %rev1.sroa.0.0.extract.shift.i to i8
  %rev1.sroa.3.0.extract.shift.i = lshr i32 %.unpack, 8
  %rev1.sroa.3.0.extract.trunc.i = trunc i32 %rev1.sroa.3.0.extract.shift.i to i8
  %rev1.sroa.4.0.extract.trunc.i = trunc i32 %.unpack to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %rev1.sroa.0.0.extract.trunc.i)
  %cmp.i.i = icmp eq i8 %rev1.sroa.0.0.extract.trunc.i, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %rev1.sroa.0.0.extract.trunc.i, i8 %rev2.sroa.0.0.extract.trunc.i)
  %cmp5.i.i = icmp eq i8 %rev1.sroa.0.0.extract.trunc.i, %rev2.sroa.0.0.extract.trunc.i
  %spec.select.i.i = or i1 %cmp.i.i, %cmp5.i.i
  br i1 %spec.select.i.i, label %land.lhs.true.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %rev1.sroa.2.0.extract.shift.i = lshr i32 %.unpack, 16
  %rev1.sroa.2.0.extract.trunc.i = trunc i32 %rev1.sroa.2.0.extract.shift.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %rev1.sroa.2.0.extract.trunc.i)
  %cmp.i9.i = icmp eq i8 %rev1.sroa.2.0.extract.trunc.i, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %rev1.sroa.2.0.extract.trunc.i, i8 %rev2.sroa.2.0.extract.trunc.i)
  %cmp5.i10.i = icmp eq i8 %rev1.sroa.2.0.extract.trunc.i, %rev2.sroa.2.0.extract.trunc.i
  %spec.select.i11.i = or i1 %cmp.i9.i, %cmp5.i10.i
  br i1 %spec.select.i11.i, label %land.lhs.true4.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %rev1.sroa.3.0.extract.trunc.i)
  %cmp.i12.i = icmp eq i8 %rev1.sroa.3.0.extract.trunc.i, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %rev1.sroa.3.0.extract.trunc.i, i8 %rev2.sroa.3.0.extract.trunc.i)
  %cmp5.i13.i = icmp eq i8 %rev1.sroa.3.0.extract.trunc.i, %rev2.sroa.3.0.extract.trunc.i
  %spec.select.i14.i = or i1 %cmp.i12.i, %cmp5.i13.i
  br i1 %spec.select.i14.i, label %adreno_cmp_rev.exit, label %land.lhs.true4.i.for.inc_crit_edge

land.lhs.true4.i.for.inc_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

adreno_cmp_rev.exit:                              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %rev1.sroa.4.0.extract.trunc.i)
  %cmp.i15.i = icmp eq i8 %rev1.sroa.4.0.extract.trunc.i, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %rev1.sroa.4.0.extract.trunc.i, i8 %rev2.sroa.4.0.extract.trunc.i)
  %cmp5.i16.i = icmp eq i8 %rev1.sroa.4.0.extract.trunc.i, %rev2.sroa.4.0.extract.trunc.i
  %spec.select.i17.i = or i1 %cmp.i15.i, %cmp5.i16.i
  br i1 %spec.select.i17.i, label %adreno_cmp_rev.exit.cleanup2_crit_edge, label %adreno_cmp_rev.exit.for.inc_crit_edge

adreno_cmp_rev.exit.for.inc_crit_edge:            ; preds = %adreno_cmp_rev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

adreno_cmp_rev.exit.cleanup2_crit_edge:           ; preds = %adreno_cmp_rev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup2

for.inc:                                          ; preds = %adreno_cmp_rev.exit.for.inc_crit_edge, %land.lhs.true4.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.inc.cleanup2_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup2_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup2

cleanup2:                                         ; preds = %for.inc.cleanup2_crit_edge, %adreno_cmp_rev.exit.cleanup2_crit_edge
  %retval.2 = phi ptr [ null, %for.inc.cleanup2_crit_edge ], [ %arrayidx, %adreno_cmp_rev.exit.cleanup2_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @adreno_load_gpu(ptr nocapture noundef readonly %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %gpu_pdev = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpu_pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpu_pdev, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -16
  %tobool2.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %if.end11

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %.b69 = load i1, ptr @adreno_load_gpu.__print_once, align 1
  br i1 %.b69, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @adreno_load_gpu.__print_once, align 1
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @adreno_load_fw(ptr noundef nonnull %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev16, i32 noundef 0) #8
  %call.i70 = tail call i32 @__pm_runtime_resume(ptr noundef %dev16, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp = icmp slt i32 %call.i70, 0
  br i1 %cmp, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call.i71 = tail call i32 @__pm_runtime_idle(ptr noundef %dev16, i32 noundef 4) #8
  %dev23 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef %call.i70) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %lock = getelementptr i8, ptr %5, i32 156
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call25 = tail call i32 @msm_gpu_hw_init(ptr noundef nonnull %add.ptr.i) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %call.i72 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev16, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool29.not = icmp eq i32 %call25, 0
  br i1 %tobool29.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %dev31 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef %call25) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %funcs = getelementptr i8, ptr %5, i32 -4
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %debugfs_init = getelementptr inbounds %struct.msm_gpu_funcs, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %debugfs_init to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debugfs_init, align 4
  %tobool33.not = icmp eq ptr %15, null
  br i1 %tobool33.not, label %if.end32.cleanup_crit_edge, label %if.then34

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %primary = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 6
  %16 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %primary, align 4
  tail call void %15(ptr noundef nonnull %add.ptr.i, ptr noundef %17) #8
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs, align 4
  %debugfs_init38 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %debugfs_init38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debugfs_init38, align 4
  %render = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 7
  %22 = ptrtoint ptr %render to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %render, align 4
  tail call void %21(ptr noundef nonnull %add.ptr.i, ptr noundef %23) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end32.cleanup_crit_edge, %if.then30, %if.then20, %if.end11.cleanup_crit_edge, %if.then5, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then20 ], [ null, %if.then30 ], [ null, %if.then5 ], [ null, %do.body.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ], [ %add.ptr.i, %if.then34 ], [ %add.ptr.i, %if.end32.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_load_fw(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_hw_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @adreno_register() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @adreno_driver, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @adreno_unregister() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @adreno_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @a2xx_gpu_init(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @a3xx_gpu_init(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @a4xx_gpu_init(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @a5xx_gpu_init(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @a6xx_gpu_init(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adreno_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %dummy_info.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @a3xx_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.61) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dummy_info.i) #8
  %2 = call ptr @memcpy(ptr %dummy_info.i, ptr @__const.adreno_device_register_headless.dummy_info, i32 56)
  %call.i = call ptr @platform_device_register_full(ptr noundef nonnull %dummy_info.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dummy_info.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adreno_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @a3xx_ops) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adreno_shutdown(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adreno_bind(ptr noundef %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  %compat.i = alloca ptr, align 4
  %chipid.i = alloca i32, align 4
  %r.i = alloca i32, align 4
  %patch.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compat.i) #8
  %6 = ptrtoint ptr %compat.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %compat.i, align 4, !annotation !238
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chipid.i) #8
  %7 = ptrtoint ptr %chipid.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %chipid.i, align 4, !annotation !238
  %call.i.i = call i32 @of_property_read_string_helper(ptr noundef %5, ptr noundef nonnull @.str.69, ptr noundef nonnull %compat.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end12.i_crit_edge

entry.if.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r.i) #8
  %8 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %r.i, align 4, !annotation !238
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %patch.i) #8
  %9 = ptrtoint ptr %patch.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %patch.i, align 4, !annotation !238
  %10 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %compat.i, align 4
  %call1.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %11, ptr noundef nonnull @.str.70, ptr noundef nonnull %r.i, ptr noundef nonnull %patch.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 2
  br i1 %cmp2.i, label %if.then.i.if.then5.i_crit_edge, label %lor.lhs.false.i

if.then.i.if.then5.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %12 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %compat.i, align 4
  %call3.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %13, ptr noundef nonnull @.str.71, ptr noundef nonnull %r.i, ptr noundef nonnull %patch.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 2
  br i1 %cmp4.i, label %lor.lhs.false.i.if.then5.i_crit_edge, label %cleanup.i

lor.lhs.false.i.if.then5.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

if.then5.i:                                       ; preds = %lor.lhs.false.i.if.then5.i_crit_edge, %if.then.i.if.then5.i_crit_edge
  %14 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %r.i, align 4
  %.frozen = freeze i32 %15
  %div.i = udiv i32 %.frozen, 100
  %conv.i = trunc i32 %div.i to i8
  store i8 %conv.i, ptr @adreno_bind.config, align 4
  %16 = mul i32 %div.i, 100
  %rem.i.decomposed = sub i32 %.frozen, %16
  %div6.lhs.trunc.i = trunc i32 %rem.i.decomposed to i8
  %div61.i = udiv i8 %div6.lhs.trunc.i, 10
  store i8 %div61.i, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 1), align 1
  %17 = mul i8 %div61.i, 10
  %rem82.i.decomposed = sub i8 %div6.lhs.trunc.i, %17
  store i8 %rem82.i.decomposed, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 2), align 2
  %18 = ptrtoint ptr %patch.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %patch.i, align 4
  %conv10.i = trunc i32 %19 to i8
  store i8 %conv10.i, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 3), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %patch.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r.i) #8
  br label %if.end

cleanup.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %patch.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r.i) #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %cleanup.i, %entry.if.end12.i_crit_edge
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.72, ptr noundef nonnull %chipid.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end15.i, label %find_chipid.exit

if.end15.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %chipid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chipid.i, align 4
  %shr.i = lshr i32 %21, 24
  %conv16.i = trunc i32 %shr.i to i8
  store i8 %conv16.i, ptr @adreno_bind.config, align 4
  %shr18.i = lshr i32 %21, 16
  %conv20.i = trunc i32 %shr18.i to i8
  store i8 %conv20.i, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 1), align 1
  %shr22.i = lshr i32 %21, 8
  %conv24.i = trunc i32 %shr22.i to i8
  store i8 %conv24.i, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 2), align 2
  %conv27.i = trunc i32 %21 to i8
  store i8 %conv27.i, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 3), align 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.74) #11
  %22 = load i8, ptr @adreno_bind.config, align 4
  %conv33.i = zext i8 %22 to i32
  %23 = load i8, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 1), align 1
  %conv35.i = zext i8 %23 to i32
  %24 = load i8, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 2), align 2
  %conv37.i = zext i8 %24 to i32
  %25 = load i8, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 3), align 1
  %conv39.i = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.77, i32 noundef %conv33.i, i32 noundef %conv35.i, i32 noundef %conv37.i, i32 noundef %conv39.i) #11
  br label %if.end

find_chipid.exit:                                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.73, i32 noundef %call.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chipid.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compat.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end15.i, %if.then5.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chipid.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compat.i) #8
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %26 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @adreno_bind.config, ptr %platform_data, align 8
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %gpu_pdev = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %gpu_pdev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %gpu_pdev, align 8
  %.unpack = load i32, ptr @adreno_bind.config, align 4
  %rev2.sroa.0.0.extract.shift.i.i = lshr i32 %.unpack, 24
  %rev2.sroa.0.0.extract.trunc.i.i = trunc i32 %rev2.sroa.0.0.extract.shift.i.i to i8
  %rev2.sroa.3.0.extract.shift.i.i = lshr i32 %.unpack, 8
  %rev2.sroa.3.0.extract.trunc.i.i = trunc i32 %rev2.sroa.3.0.extract.shift.i.i to i8
  %rev2.sroa.4.0.extract.trunc.i.i = trunc i32 %.unpack to i8
  %rev2.sroa.2.0.extract.shift.i.i = lshr i32 %.unpack, 16
  %rev2.sroa.2.0.extract.trunc.i.i = trunc i32 %rev2.sroa.2.0.extract.shift.i.i to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.06.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [24 x %struct.adreno_info], ptr @gpulist, i32 0, i32 %i.06.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack.i = load i32, ptr %arrayidx.i, align 4
  %rev1.sroa.0.0.extract.shift.i.i = lshr i32 %.unpack.i, 24
  %rev1.sroa.0.0.extract.trunc.i.i = trunc i32 %rev1.sroa.0.0.extract.shift.i.i to i8
  %rev1.sroa.3.0.extract.shift.i.i = lshr i32 %.unpack.i, 8
  %rev1.sroa.3.0.extract.trunc.i.i = trunc i32 %rev1.sroa.3.0.extract.shift.i.i to i8
  %rev1.sroa.4.0.extract.trunc.i.i = trunc i32 %.unpack.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %rev1.sroa.0.0.extract.trunc.i.i)
  %cmp.i.i.i = icmp eq i8 %rev1.sroa.0.0.extract.trunc.i.i, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %rev1.sroa.0.0.extract.trunc.i.i, i8 %rev2.sroa.0.0.extract.trunc.i.i)
  %cmp5.i.i.i = icmp eq i8 %rev1.sroa.0.0.extract.trunc.i.i, %rev2.sroa.0.0.extract.trunc.i.i
  %spec.select.i.i.i = or i1 %cmp.i.i.i, %cmp5.i.i.i
  br i1 %spec.select.i.i.i, label %land.lhs.true.i.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %rev1.sroa.2.0.extract.shift.i.i = lshr i32 %.unpack.i, 16
  %rev1.sroa.2.0.extract.trunc.i.i = trunc i32 %rev1.sroa.2.0.extract.shift.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %rev1.sroa.2.0.extract.trunc.i.i)
  %cmp.i9.i.i = icmp eq i8 %rev1.sroa.2.0.extract.trunc.i.i, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %rev1.sroa.2.0.extract.trunc.i.i, i8 %rev2.sroa.2.0.extract.trunc.i.i)
  %cmp5.i10.i.i = icmp eq i8 %rev1.sroa.2.0.extract.trunc.i.i, %rev2.sroa.2.0.extract.trunc.i.i
  %spec.select.i11.i.i = or i1 %cmp.i9.i.i, %cmp5.i10.i.i
  br i1 %spec.select.i11.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %rev1.sroa.3.0.extract.trunc.i.i)
  %cmp.i12.i.i = icmp eq i8 %rev1.sroa.3.0.extract.trunc.i.i, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %rev1.sroa.3.0.extract.trunc.i.i, i8 %rev2.sroa.3.0.extract.trunc.i.i)
  %cmp5.i13.i.i = icmp eq i8 %rev1.sroa.3.0.extract.trunc.i.i, %rev2.sroa.3.0.extract.trunc.i.i
  %spec.select.i14.i.i = or i1 %cmp.i12.i.i, %cmp5.i13.i.i
  br i1 %spec.select.i14.i.i, label %adreno_cmp_rev.exit.i, label %land.lhs.true4.i.i.for.inc.i_crit_edge

land.lhs.true4.i.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

adreno_cmp_rev.exit.i:                            ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %rev1.sroa.4.0.extract.trunc.i.i)
  %cmp.i15.i.i = icmp eq i8 %rev1.sroa.4.0.extract.trunc.i.i, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %rev1.sroa.4.0.extract.trunc.i.i, i8 %rev2.sroa.4.0.extract.trunc.i.i)
  %cmp5.i16.i.i = icmp eq i8 %rev1.sroa.4.0.extract.trunc.i.i, %rev2.sroa.4.0.extract.trunc.i.i
  %spec.select.i17.i.i = or i1 %cmp.i15.i.i, %cmp5.i16.i.i
  br i1 %spec.select.i17.i.i, label %adreno_info.exit, label %adreno_cmp_rev.exit.i.for.inc.i_crit_edge

adreno_cmp_rev.exit.i.for.inc.i_crit_edge:        ; preds = %adreno_cmp_rev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %adreno_cmp_rev.exit.i.for.inc.i_crit_edge, %land.lhs.true4.i.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

adreno_info.exit:                                 ; preds = %adreno_cmp_rev.exit.i
  %tobool4.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool4.not, label %adreno_info.exit.do.end_crit_edge, label %if.end10

adreno_info.exit.do.end_crit_edge:                ; preds = %adreno_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %adreno_info.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev6, align 4
  %31 = load i8, ptr @adreno_bind.config, align 4
  %conv = zext i8 %31 to i32
  %32 = load i8, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 1), align 1
  %conv7 = zext i8 %32 to i32
  %33 = load i8, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 2), align 2
  %conv8 = zext i8 %33 to i32
  %34 = load i8, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 3), align 1
  %conv9 = zext i8 %34 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.62, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9) #11
  br label %cleanup

if.end10:                                         ; preds = %adreno_info.exit
  %35 = load i8, ptr @adreno_bind.config, align 4
  %conv11 = zext i8 %35 to i32
  %36 = load i8, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 1), align 1
  %conv12 = zext i8 %36 to i32
  %37 = load i8, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 2), align 2
  %conv13 = zext i8 %37 to i32
  %38 = load i8, ptr getelementptr inbounds (%struct.adreno_platform_config, ptr @adreno_bind.config, i32 0, i32 0, i32 3), align 1
  %conv14 = zext i8 %38 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.65, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14) #8
  %39 = load i8, ptr @adreno_bind.config, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp = icmp eq i8 %39, 2
  %is_a2xx = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 8
  %frombool = zext i1 %cmp to i8
  %40 = ptrtoint ptr %is_a2xx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %frombool, ptr %is_a2xx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %39)
  %cmp18 = icmp ugt i8 %39, 5
  %has_cached_coherent = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 9
  %frombool20 = zext i1 %cmp18 to i8
  %41 = ptrtoint ptr %has_cached_coherent to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %frombool20, ptr %has_cached_coherent, align 1
  %init = getelementptr [24 x %struct.adreno_info], ptr @gpulist, i32 0, i32 %i.06.i, i32 6
  %42 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init, align 4
  %call21 = call ptr %43(ptr noundef %3) #8
  %cmp.i44 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %do.end26, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end26:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dev27 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %44 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev27, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.67) #11
  %46 = ptrtoint ptr %call21 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end10.cleanup_crit_edge, %do.end, %find_chipid.exit
  %retval.0 = phi i32 [ %46, %do.end26 ], [ -6, %do.end ], [ %call.i.i.i, %find_chipid.exit ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adreno_unbind(ptr noundef %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -16
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  %funcs = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %destroy = getelementptr inbounds %struct.msm_gpu_funcs, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destroy, align 4
  tail call void %7(ptr noundef %add.ptr.i) #8
  %gpu_pdev = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %gpu_pdev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %gpu_pdev, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adreno_suspend(ptr noundef %dev) #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 627) #8
  %active_lock.i = getelementptr i8, ptr %1, i32 252
  tail call void @mutex_lock_nested(ptr noundef %active_lock.i, i32 noundef 0) #8
  %active_submits1.i = getelementptr i8, ptr %1, i32 248
  %2 = ptrtoint ptr %active_submits1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_submits1.i, align 8
  tail call void @mutex_unlock(ptr noundef %active_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.if.end43_crit_edge, label %if.then10

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then10:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %retire_event = getelementptr i8, ptr %1, i32 512
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then10
  %__ret11.0 = phi i32 [ 100, %if.then10 ], [ %call33, %cleanup ]
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %retire_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  call void @mutex_lock_nested(ptr noundef %active_lock.i, i32 noundef 0) #8
  %5 = ptrtoint ptr %active_submits1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active_submits1.i, align 8
  call void @mutex_unlock(ptr noundef %active_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp16 = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.0)
  %tobool20.not = icmp eq i32 %__ret11.0, 0
  %7 = select i1 %cmp16, i1 %tobool20.not, i1 false
  %__ret11.1 = select i1 %7, i32 1, i32 %__ret11.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1)
  %tobool26.not = icmp eq i32 %__ret11.1, 0
  %8 = select i1 %cmp16, i1 true, i1 %tobool26.not
  br i1 %8, label %if.end36, label %cleanup

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = call i32 @schedule_timeout(i32 noundef %__ret11.1) #8
  br label %for.cond

if.end36:                                         ; preds = %for.cond
  call void @finish_wait(ptr noundef %retire_event, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br i1 %tobool26.not, label %do.end42, label %if.end36.if.end43_crit_edge

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #11
  br label %cleanup45

if.end43:                                         ; preds = %if.end36.if.end43_crit_edge, %entry.if.end43_crit_edge
  %funcs = getelementptr i8, ptr %1, i32 -4
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs, align 4
  %pm_suspend = getelementptr inbounds %struct.msm_gpu_funcs, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %pm_suspend to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pm_suspend, align 4
  %call44 = call i32 %12(ptr noundef %add.ptr.i) #8
  br label %cleanup45

cleanup45:                                        ; preds = %if.end43, %do.end42
  %retval.0 = phi i32 [ -16, %do.end42 ], [ %call44, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adreno_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %funcs = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %pm_resume = getelementptr inbounds %struct.msm_gpu_funcs, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pm_resume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pm_resume, align 4
  %call1 = tail call i32 %5(ptr noundef %add.ptr.i) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !59, !60, !61, !62, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !190, !191, !192, !193, !195, !197, !198, !199, !201, !203, !205, !207, !209, !211, !212, !213, !214, !216, !217, !218, !220, !222, !224, !226, !227, !228}
!llvm.module.flags = !{!229, !230, !231, !232, !233, !234, !235, !236}
!llvm.ident = !{!237}

!0 = !{ptr @hang_debug, !1, !"hang_debug", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 11, i32 6}
!2 = !{ptr @__UNIQUE_ID_hang_debug338, !3, !"__UNIQUE_ID_hang_debug338", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 12, i32 1}
!4 = !{ptr @__param_hang_debug, !5, !"__param_hang_debug", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 13, i32 1}
!6 = !{ptr @__UNIQUE_ID_hang_debugtype339, !5, !"__UNIQUE_ID_hang_debugtype339", i1 false, i1 false}
!7 = !{ptr @snapshot_debugbus, !8, !"snapshot_debugbus", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 15, i32 6}
!9 = !{ptr @__UNIQUE_ID_snapshot_debugbus340, !10, !"__UNIQUE_ID_snapshot_debugbus340", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 16, i32 1}
!11 = !{ptr @__param_snapshot_debugbus, !12, !"__param_snapshot_debugbus", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 17, i32 1}
!13 = !{ptr @__UNIQUE_ID_snapshot_debugbustype341, !12, !"__UNIQUE_ID_snapshot_debugbustype341", i1 false, i1 false}
!14 = !{ptr @allow_vram_carveout, !15, !"allow_vram_carveout", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 19, i32 6}
!16 = !{ptr @__UNIQUE_ID_allow_vram_carveout342, !17, !"__UNIQUE_ID_allow_vram_carveout342", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 20, i32 1}
!18 = !{ptr @__param_allow_vram_carveout, !19, !"__param_allow_vram_carveout", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 21, i32 1}
!20 = !{ptr @__UNIQUE_ID_allow_vram_carveouttype343, !19, !"__UNIQUE_ID_allow_vram_carveouttype343", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_firmware344, !22, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 346, i32 1}
!23 = !{ptr @__UNIQUE_ID_firmware345, !24, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 347, i32 1}
!25 = !{ptr @__UNIQUE_ID_firmware346, !26, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 348, i32 1}
!27 = !{ptr @__UNIQUE_ID_firmware347, !28, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 349, i32 1}
!29 = !{ptr @__UNIQUE_ID_firmware348, !30, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 350, i32 1}
!31 = !{ptr @__UNIQUE_ID_firmware349, !32, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 351, i32 1}
!33 = !{ptr @__UNIQUE_ID_firmware350, !34, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 352, i32 1}
!35 = !{ptr @__UNIQUE_ID_firmware351, !36, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 353, i32 1}
!37 = !{ptr @__UNIQUE_ID_firmware352, !38, !"__UNIQUE_ID_firmware352", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 354, i32 1}
!39 = !{ptr @__UNIQUE_ID_firmware353, !40, !"__UNIQUE_ID_firmware353", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 355, i32 1}
!41 = !{ptr @__UNIQUE_ID_firmware354, !42, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 356, i32 1}
!43 = !{ptr @__UNIQUE_ID_firmware355, !44, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 357, i32 1}
!45 = !{ptr @__UNIQUE_ID_firmware356, !46, !"__UNIQUE_ID_firmware356", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 358, i32 1}
!47 = !{ptr @__UNIQUE_ID_firmware357, !48, !"__UNIQUE_ID_firmware357", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 359, i32 1}
!49 = !{ptr @__UNIQUE_ID_firmware358, !50, !"__UNIQUE_ID_firmware358", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 360, i32 1}
!51 = !{ptr @__UNIQUE_ID_firmware359, !52, !"__UNIQUE_ID_firmware359", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 361, i32 1}
!53 = distinct !{null, !54, !"__print_once", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 403, i32 3}
!55 = !{ptr @.str, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.1, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.2, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.4, !54, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @adreno_load_gpu._entry, !54, !"_entry", i1 false, i1 false}
!61 = !{ptr @adreno_load_gpu._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.5, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 425, i32 3}
!64 = !{ptr @.str.6, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 434, i32 3}
!66 = !{ptr @__param_str_hang_debug, !5, !"__param_str_hang_debug", i1 false, i1 false}
!67 = !{ptr @__param_str_snapshot_debugbus, !12, !"__param_str_snapshot_debugbus", i1 false, i1 false}
!68 = !{ptr @__param_str_allow_vram_carveout, !19, !"__param_str_allow_vram_carveout", i1 false, i1 false}
!69 = !{ptr @.str.7, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 27, i32 12}
!71 = !{ptr @.str.8, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 29, i32 22}
!73 = !{ptr @.str.9, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 30, i32 22}
!75 = !{ptr @.str.10, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 49, i32 12}
!77 = !{ptr @.str.11, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 51, i32 22}
!79 = !{ptr @.str.12, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 52, i32 22}
!81 = !{ptr @.str.13, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 60, i32 12}
!83 = !{ptr @.str.14, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 62, i32 22}
!85 = !{ptr @.str.15, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 63, i32 22}
!87 = !{ptr @.str.16, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 71, i32 12}
!89 = !{ptr @.str.17, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 82, i32 12}
!91 = !{ptr @.str.18, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 93, i32 12}
!93 = !{ptr @.str.19, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 95, i32 22}
!95 = !{ptr @.str.20, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 96, i32 22}
!97 = !{ptr @.str.21, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 104, i32 12}
!99 = !{ptr @.str.22, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 106, i32 22}
!101 = !{ptr @.str.23, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 107, i32 22}
!103 = !{ptr @.str.24, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 115, i32 12}
!105 = !{ptr @.str.25, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 126, i32 12}
!107 = !{ptr @.str.26, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 137, i32 11}
!109 = !{ptr @.str.27, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 139, i32 22}
!111 = !{ptr @.str.28, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 140, i32 22}
!113 = !{ptr @.str.29, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 151, i32 12}
!115 = !{ptr @.str.30, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 155, i32 11}
!117 = !{ptr @.str.31, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 168, i32 12}
!119 = !{ptr @.str.32, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 172, i32 11}
!121 = !{ptr @.str.33, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 186, i32 12}
!123 = !{ptr @.str.34, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 190, i32 11}
!125 = !{ptr @.str.35, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 205, i32 11}
!127 = !{ptr @.str.36, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 222, i32 11}
!129 = !{ptr @.str.37, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 226, i32 23}
!131 = !{ptr @.str.38, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 237, i32 12}
!133 = !{ptr @.str.39, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 241, i32 11}
!135 = !{ptr @.str.40, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 245, i32 23}
!137 = !{ptr @.str.41, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 255, i32 12}
!139 = !{ptr @.str.42, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 259, i32 11}
!141 = !{ptr @.str.43, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 261, i32 22}
!143 = !{ptr @.str.44, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 262, i32 22}
!145 = !{ptr @.str.45, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 270, i32 11}
!147 = !{ptr @.str.46, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 278, i32 12}
!149 = !{ptr @.str.47, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 283, i32 11}
!151 = !{ptr @.str.48, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 286, i32 22}
!153 = !{ptr @.str.49, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 291, i32 12}
!155 = !{ptr @.str.50, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 296, i32 11}
!157 = !{ptr @.str.51, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 298, i32 22}
!159 = !{ptr @.str.52, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 299, i32 22}
!161 = !{ptr @.str.53, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 304, i32 12}
!163 = !{ptr @.str.54, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 309, i32 11}
!165 = !{ptr @.str.55, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 311, i32 22}
!167 = !{ptr @.str.56, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 312, i32 22}
!169 = !{ptr @.str.57, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 317, i32 12}
!171 = !{ptr @.str.58, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 321, i32 11}
!173 = !{ptr @.str.59, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 333, i32 11}
!175 = !{ptr @gpulist, !176, !"gpulist", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 23, i32 33}
!177 = !{ptr @.str.60, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 647, i32 11}
!179 = !{ptr @adreno_driver, !180, !"adreno_driver", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 642, i32 31}
!181 = !{ptr @.str.61, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 576, i32 49}
!183 = !{ptr @a3xx_ops, !184, !"a3xx_ops", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 544, i32 35}
!185 = !{ptr @adreno_bind.config, !186, !"config", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 494, i32 39}
!187 = !{ptr @.str.62, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 511, i32 3}
!189 = !{ptr @.str.63, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.64, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @adreno_bind._entry, !188, !"_entry", i1 false, i1 false}
!192 = !{ptr @adreno_bind._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.65, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 517, i32 2}
!195 = !{ptr @.str.67, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 525, i32 3}
!197 = !{ptr @adreno_bind._entry.66, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @adreno_bind._entry_ptr.68, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.69, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 456, i32 44}
!201 = !{ptr @.str.70, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 460, i32 22}
!203 = !{ptr @.str.71, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 461, i32 22}
!205 = !{ptr @.str.72, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 474, i32 35}
!207 = !{ptr @.str.73, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 476, i32 3}
!209 = !{ptr @.str.74, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 485, i32 2}
!211 = !{ptr @.str.75, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @find_chipid._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @find_chipid._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.77, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 486, i32 2}
!216 = !{ptr @find_chipid._entry.76, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @find_chipid._entry_ptr.78, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.79, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 556, i32 11}
!220 = !{ptr @dt_match, !221, !"dt_match", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 593, i32 34}
!222 = !{ptr @adreno_pm_ops, !223, !"adreno_pm_ops", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 637, i32 32}
!224 = !{ptr @.str.80, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/msm/adreno/adreno_device.c", i32 629, i32 3}
!226 = !{ptr @.str.81, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @adreno_suspend._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @adreno_suspend._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{i32 1, !"wchar_size", i32 2}
!230 = !{i32 1, !"min_enum_size", i32 4}
!231 = !{i32 8, !"branch-target-enforcement", i32 0}
!232 = !{i32 8, !"sign-return-address", i32 0}
!233 = !{i32 8, !"sign-return-address-all", i32 0}
!234 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!235 = !{i32 7, !"uwtable", i32 1}
!236 = !{i32 7, !"frame-pointer", i32 2}
!237 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!238 = !{!"auto-init"}
