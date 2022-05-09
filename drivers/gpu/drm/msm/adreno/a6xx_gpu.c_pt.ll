; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/adreno/a6xx_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a6xx_gpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.adreno_reglist = type { i32, i32 }
%struct.adreno_gpu_funcs = type { %struct.msm_gpu_funcs, ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.92 = type { i32, ptr }
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
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.106, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.106 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.81, ptr }
%union.anon.81 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.adreno_info = type { %struct.adreno_rev, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, i32, ptr }
%struct.a6xx_gpu = type { %struct.adreno_gpu, ptr, i64, ptr, %struct.a6xx_gmu, ptr, i64, ptr, i8, ptr, ptr, ptr, i8 }
%struct.a6xx_gmu = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, i32, ptr, i32, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, i32, ptr, ptr, ptr, i32, i32, [16 x i32], [16 x i32], i32, [4 x i32], [4 x i32], i32, [2 x %struct.a6xx_hfi_queue], i8, i8, i8 }
%struct.a6xx_gmu_bo = type { ptr, ptr, i32, i64 }
%struct.a6xx_hfi_queue = type { ptr, %struct.spinlock, ptr, %struct.atomic_t, [8 x i32], i8 }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.msm_mmu = type { ptr, ptr, ptr, ptr, i32 }
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.adreno_smmu_fault_info = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.msm_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, %struct.list_head, %struct.ww_acquire_ctx, i32, ptr, ptr, i32, ptr, ptr, i8, i8, i8, ptr, ptr, i32, i32, i32, ptr, [0 x %struct.anon.95] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.93, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.93 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.anon.95 = type { i32, %union.anon.96, i64 }
%union.anon.96 = type { ptr }
%struct.msm_gpu_submitqueue = type { i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.idr, %struct.mutex, %struct.kref, ptr }
%struct.msm_file_private = type { %struct.rwlock_t, %struct.list_head, i32, ptr, %struct.kref, i32, [12 x ptr] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.94 = type { i32, i32, i64, i32, i32, i32, ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@a630_hwcg = dso_local constant { [106 x %struct.adreno_reglist], [208 x i8] } { [106 x %struct.adreno_reglist] [%struct.adreno_reglist { i32 176, i32 572662306 }, %struct.adreno_reglist { i32 177, i32 572662306 }, %struct.adreno_reglist { i32 178, i32 572662306 }, %struct.adreno_reglist { i32 179, i32 572662306 }, %struct.adreno_reglist { i32 180, i32 33694240 }, %struct.adreno_reglist { i32 181, i32 33694240 }, %struct.adreno_reglist { i32 182, i32 33694240 }, %struct.adreno_reglist { i32 183, i32 33694240 }, %struct.adreno_reglist { i32 184, i32 128 }, %struct.adreno_reglist { i32 185, i32 128 }, %struct.adreno_reglist { i32 186, i32 128 }, %struct.adreno_reglist { i32 187, i32 128 }, %struct.adreno_reglist { i32 188, i32 62415 }, %struct.adreno_reglist { i32 189, i32 62415 }, %struct.adreno_reglist { i32 190, i32 62415 }, %struct.adreno_reglist { i32 191, i32 62415 }, %struct.adreno_reglist { i32 192, i32 35791394 }, %struct.adreno_reglist { i32 193, i32 35791394 }, %struct.adreno_reglist { i32 194, i32 35791394 }, %struct.adreno_reglist { i32 195, i32 35791394 }, %struct.adreno_reglist { i32 196, i32 572662306 }, %struct.adreno_reglist { i32 197, i32 572662306 }, %struct.adreno_reglist { i32 198, i32 572662306 }, %struct.adreno_reglist { i32 199, i32 572662306 }, %struct.adreno_reglist { i32 200, i32 572662306 }, %struct.adreno_reglist { i32 201, i32 572662306 }, %struct.adreno_reglist { i32 202, i32 572662306 }, %struct.adreno_reglist { i32 203, i32 572662306 }, %struct.adreno_reglist { i32 204, i32 139810 }, %struct.adreno_reglist { i32 205, i32 139810 }, %struct.adreno_reglist { i32 206, i32 139810 }, %struct.adreno_reglist { i32 207, i32 139810 }, %struct.adreno_reglist { i32 224, i32 2004318071 }, %struct.adreno_reglist { i32 225, i32 2004318071 }, %struct.adreno_reglist { i32 226, i32 2004318071 }, %struct.adreno_reglist { i32 227, i32 2004318071 }, %struct.adreno_reglist { i32 228, i32 2004318071 }, %struct.adreno_reglist { i32 229, i32 2004318071 }, %struct.adreno_reglist { i32 230, i32 2004318071 }, %struct.adreno_reglist { i32 231, i32 2004318071 }, %struct.adreno_reglist { i32 232, i32 2004318071 }, %struct.adreno_reglist { i32 233, i32 2004318071 }, %struct.adreno_reglist { i32 234, i32 2004318071 }, %struct.adreno_reglist { i32 235, i32 2004318071 }, %struct.adreno_reglist { i32 236, i32 489335 }, %struct.adreno_reglist { i32 237, i32 489335 }, %struct.adreno_reglist { i32 238, i32 489335 }, %struct.adreno_reglist { i32 239, i32 489335 }, %struct.adreno_reglist { i32 208, i32 286331153 }, %struct.adreno_reglist { i32 209, i32 286331153 }, %struct.adreno_reglist { i32 210, i32 286331153 }, %struct.adreno_reglist { i32 211, i32 286331153 }, %struct.adreno_reglist { i32 212, i32 286331153 }, %struct.adreno_reglist { i32 213, i32 286331153 }, %struct.adreno_reglist { i32 214, i32 286331153 }, %struct.adreno_reglist { i32 215, i32 286331153 }, %struct.adreno_reglist { i32 216, i32 286331153 }, %struct.adreno_reglist { i32 217, i32 286331153 }, %struct.adreno_reglist { i32 218, i32 286331153 }, %struct.adreno_reglist { i32 219, i32 286331153 }, %struct.adreno_reglist { i32 220, i32 69905 }, %struct.adreno_reglist { i32 221, i32 69905 }, %struct.adreno_reglist { i32 222, i32 69905 }, %struct.adreno_reglist { i32 223, i32 69905 }, %struct.adreno_reglist { i32 267, i32 572662306 }, %struct.adreno_reglist { i32 268, i32 572662306 }, %struct.adreno_reglist { i32 269, i32 572662306 }, %struct.adreno_reglist { i32 270, i32 2236962 }, %struct.adreno_reglist { i32 272, i32 4 }, %struct.adreno_reglist { i32 271, i32 2 }, %struct.adreno_reglist { i32 240, i32 572662306 }, %struct.adreno_reglist { i32 241, i32 572662306 }, %struct.adreno_reglist { i32 242, i32 572662306 }, %struct.adreno_reglist { i32 243, i32 572662306 }, %struct.adreno_reglist { i32 244, i32 8738 }, %struct.adreno_reglist { i32 245, i32 8738 }, %struct.adreno_reglist { i32 246, i32 8738 }, %struct.adreno_reglist { i32 247, i32 8738 }, %struct.adreno_reglist { i32 248, i32 8736 }, %struct.adreno_reglist { i32 249, i32 8736 }, %struct.adreno_reglist { i32 250, i32 8736 }, %struct.adreno_reglist { i32 251, i32 8736 }, %struct.adreno_reglist { i32 256, i32 265984 }, %struct.adreno_reglist { i32 257, i32 265984 }, %struct.adreno_reglist { i32 258, i32 265984 }, %struct.adreno_reglist { i32 259, i32 265984 }, %struct.adreno_reglist { i32 260, i32 84025378 }, %struct.adreno_reglist { i32 261, i32 21845 }, %struct.adreno_reglist { i32 262, i32 17 }, %struct.adreno_reglist { i32 263, i32 4476996 }, %struct.adreno_reglist { i32 264, i32 69345826 }, %struct.adreno_reglist { i32 276, i32 2236962 }, %struct.adreno_reglist { i32 273, i32 8738 }, %struct.adreno_reglist { i32 266, i32 0 }, %struct.adreno_reglist { i32 278, i32 68173828 }, %struct.adreno_reglist { i32 275, i32 0 }, %struct.adreno_reglist { i32 284, i32 0 }, %struct.adreno_reglist { i32 265, i32 16384 }, %struct.adreno_reglist { i32 277, i32 512 }, %struct.adreno_reglist { i32 274, i32 8738 }, %struct.adreno_reglist { i32 279, i32 2 }, %struct.adreno_reglist { i32 283, i32 8738 }, %struct.adreno_reglist { i32 280, i32 546 }, %struct.adreno_reglist { i32 281, i32 273 }, %struct.adreno_reglist { i32 282, i32 1365 }, %struct.adreno_reglist zeroinitializer], [208 x i8] zeroinitializer }, align 32
@a640_hwcg = dso_local constant { [50 x %struct.adreno_reglist], [112 x i8] } { [50 x %struct.adreno_reglist] [%struct.adreno_reglist { i32 176, i32 35791394 }, %struct.adreno_reglist { i32 180, i32 35791392 }, %struct.adreno_reglist { i32 184, i32 128 }, %struct.adreno_reglist { i32 188, i32 62415 }, %struct.adreno_reglist { i32 192, i32 35791394 }, %struct.adreno_reglist { i32 196, i32 572662306 }, %struct.adreno_reglist { i32 200, i32 572662306 }, %struct.adreno_reglist { i32 204, i32 139810 }, %struct.adreno_reglist { i32 208, i32 286331153 }, %struct.adreno_reglist { i32 212, i32 286331153 }, %struct.adreno_reglist { i32 216, i32 286331153 }, %struct.adreno_reglist { i32 220, i32 69905 }, %struct.adreno_reglist { i32 224, i32 2004318071 }, %struct.adreno_reglist { i32 228, i32 2004318071 }, %struct.adreno_reglist { i32 232, i32 2004318071 }, %struct.adreno_reglist { i32 236, i32 489335 }, %struct.adreno_reglist { i32 240, i32 572662306 }, %struct.adreno_reglist { i32 244, i32 16785954 }, %struct.adreno_reglist { i32 248, i32 8736 }, %struct.adreno_reglist { i32 256, i32 265984 }, %struct.adreno_reglist { i32 260, i32 86122530 }, %struct.adreno_reglist { i32 261, i32 21845 }, %struct.adreno_reglist { i32 262, i32 17 }, %struct.adreno_reglist { i32 263, i32 4476996 }, %struct.adreno_reglist { i32 264, i32 69345826 }, %struct.adreno_reglist { i32 273, i32 8738 }, %struct.adreno_reglist { i32 276, i32 2236962 }, %struct.adreno_reglist { i32 279, i32 2 }, %struct.adreno_reglist { i32 283, i32 8738 }, %struct.adreno_reglist { i32 265, i32 16384 }, %struct.adreno_reglist { i32 274, i32 8738 }, %struct.adreno_reglist { i32 277, i32 512 }, %struct.adreno_reglist { i32 284, i32 0 }, %struct.adreno_reglist { i32 266, i32 0 }, %struct.adreno_reglist { i32 275, i32 0 }, %struct.adreno_reglist { i32 278, i32 68173828 }, %struct.adreno_reglist { i32 285, i32 0 }, %struct.adreno_reglist { i32 288, i32 546 }, %struct.adreno_reglist { i32 289, i32 273 }, %struct.adreno_reglist { i32 290, i32 0 }, %struct.adreno_reglist { i32 267, i32 572662306 }, %struct.adreno_reglist { i32 272, i32 4 }, %struct.adreno_reglist { i32 271, i32 2 }, %struct.adreno_reglist { i32 1331, i32 386 }, %struct.adreno_reglist { i32 68, i32 0 }, %struct.adreno_reglist { i32 66, i32 0 }, %struct.adreno_reglist { i32 280, i32 546 }, %struct.adreno_reglist { i32 281, i32 273 }, %struct.adreno_reglist { i32 282, i32 1365 }, %struct.adreno_reglist zeroinitializer], [112 x i8] zeroinitializer }, align 32
@a650_hwcg = dso_local constant { [50 x %struct.adreno_reglist], [112 x i8] } { [50 x %struct.adreno_reglist] [%struct.adreno_reglist { i32 176, i32 35791394 }, %struct.adreno_reglist { i32 180, i32 35791392 }, %struct.adreno_reglist { i32 184, i32 128 }, %struct.adreno_reglist { i32 188, i32 62415 }, %struct.adreno_reglist { i32 192, i32 35791394 }, %struct.adreno_reglist { i32 196, i32 572662306 }, %struct.adreno_reglist { i32 200, i32 572662306 }, %struct.adreno_reglist { i32 204, i32 139810 }, %struct.adreno_reglist { i32 208, i32 286331153 }, %struct.adreno_reglist { i32 212, i32 286331153 }, %struct.adreno_reglist { i32 216, i32 286331153 }, %struct.adreno_reglist { i32 220, i32 69905 }, %struct.adreno_reglist { i32 224, i32 2004318071 }, %struct.adreno_reglist { i32 228, i32 2004318071 }, %struct.adreno_reglist { i32 232, i32 2004318071 }, %struct.adreno_reglist { i32 236, i32 489335 }, %struct.adreno_reglist { i32 240, i32 572662306 }, %struct.adreno_reglist { i32 244, i32 16785954 }, %struct.adreno_reglist { i32 248, i32 8736 }, %struct.adreno_reglist { i32 256, i32 265984 }, %struct.adreno_reglist { i32 260, i32 622993442 }, %struct.adreno_reglist { i32 261, i32 21845 }, %struct.adreno_reglist { i32 262, i32 17 }, %struct.adreno_reglist { i32 263, i32 4476996 }, %struct.adreno_reglist { i32 264, i32 69345826 }, %struct.adreno_reglist { i32 273, i32 8738 }, %struct.adreno_reglist { i32 276, i32 2236962 }, %struct.adreno_reglist { i32 279, i32 2 }, %struct.adreno_reglist { i32 283, i32 8738 }, %struct.adreno_reglist { i32 265, i32 16384 }, %struct.adreno_reglist { i32 274, i32 8738 }, %struct.adreno_reglist { i32 277, i32 512 }, %struct.adreno_reglist { i32 284, i32 0 }, %struct.adreno_reglist { i32 266, i32 0 }, %struct.adreno_reglist { i32 275, i32 0 }, %struct.adreno_reglist { i32 278, i32 68173828 }, %struct.adreno_reglist { i32 285, i32 0 }, %struct.adreno_reglist { i32 288, i32 546 }, %struct.adreno_reglist { i32 289, i32 273 }, %struct.adreno_reglist { i32 290, i32 1911 }, %struct.adreno_reglist { i32 267, i32 572662306 }, %struct.adreno_reglist { i32 272, i32 4 }, %struct.adreno_reglist { i32 271, i32 2 }, %struct.adreno_reglist { i32 1331, i32 386 }, %struct.adreno_reglist { i32 68, i32 0 }, %struct.adreno_reglist { i32 66, i32 0 }, %struct.adreno_reglist { i32 280, i32 546 }, %struct.adreno_reglist { i32 281, i32 273 }, %struct.adreno_reglist { i32 282, i32 1365 }, %struct.adreno_reglist zeroinitializer], [112 x i8] zeroinitializer }, align 32
@a660_hwcg = dso_local constant { [50 x %struct.adreno_reglist], [112 x i8] } { [50 x %struct.adreno_reglist] [%struct.adreno_reglist { i32 176, i32 35791394 }, %struct.adreno_reglist { i32 180, i32 35791392 }, %struct.adreno_reglist { i32 184, i32 128 }, %struct.adreno_reglist { i32 188, i32 62415 }, %struct.adreno_reglist { i32 192, i32 572662306 }, %struct.adreno_reglist { i32 196, i32 572662306 }, %struct.adreno_reglist { i32 200, i32 572662306 }, %struct.adreno_reglist { i32 204, i32 139810 }, %struct.adreno_reglist { i32 208, i32 286331153 }, %struct.adreno_reglist { i32 212, i32 286331153 }, %struct.adreno_reglist { i32 216, i32 286331153 }, %struct.adreno_reglist { i32 220, i32 69905 }, %struct.adreno_reglist { i32 224, i32 2004318071 }, %struct.adreno_reglist { i32 228, i32 2004318071 }, %struct.adreno_reglist { i32 232, i32 2004318071 }, %struct.adreno_reglist { i32 236, i32 489335 }, %struct.adreno_reglist { i32 240, i32 572662306 }, %struct.adreno_reglist { i32 244, i32 16785954 }, %struct.adreno_reglist { i32 248, i32 8736 }, %struct.adreno_reglist { i32 256, i32 265984 }, %struct.adreno_reglist { i32 260, i32 622993442 }, %struct.adreno_reglist { i32 261, i32 21845 }, %struct.adreno_reglist { i32 262, i32 17 }, %struct.adreno_reglist { i32 263, i32 4476996 }, %struct.adreno_reglist { i32 264, i32 69345826 }, %struct.adreno_reglist { i32 273, i32 8738 }, %struct.adreno_reglist { i32 276, i32 2236962 }, %struct.adreno_reglist { i32 279, i32 2 }, %struct.adreno_reglist { i32 283, i32 8738 }, %struct.adreno_reglist { i32 265, i32 16384 }, %struct.adreno_reglist { i32 274, i32 8738 }, %struct.adreno_reglist { i32 277, i32 512 }, %struct.adreno_reglist { i32 284, i32 0 }, %struct.adreno_reglist { i32 266, i32 0 }, %struct.adreno_reglist { i32 275, i32 0 }, %struct.adreno_reglist { i32 278, i32 68173828 }, %struct.adreno_reglist { i32 285, i32 0 }, %struct.adreno_reglist { i32 288, i32 546 }, %struct.adreno_reglist { i32 289, i32 273 }, %struct.adreno_reglist { i32 290, i32 0 }, %struct.adreno_reglist { i32 267, i32 572662306 }, %struct.adreno_reglist { i32 272, i32 4 }, %struct.adreno_reglist { i32 271, i32 2 }, %struct.adreno_reglist { i32 1331, i32 386 }, %struct.adreno_reglist { i32 68, i32 0 }, %struct.adreno_reglist { i32 66, i32 0 }, %struct.adreno_reglist { i32 280, i32 546 }, %struct.adreno_reglist { i32 281, i32 273 }, %struct.adreno_reglist { i32 282, i32 1365 }, %struct.adreno_reglist zeroinitializer], [112 x i8] zeroinitializer }, align 32
@funcs = internal constant { %struct.adreno_gpu_funcs, [44 x i8] } { %struct.adreno_gpu_funcs { %struct.msm_gpu_funcs { ptr @adreno_get_param, ptr @a6xx_hw_init, ptr @a6xx_pm_suspend, ptr @a6xx_pm_resume, ptr @a6xx_submit, ptr null, ptr @a6xx_irq, ptr @a6xx_active_ring, ptr @a6xx_recover, ptr @a6xx_destroy, ptr @a6xx_show, ptr null, ptr @a6xx_gpu_busy, ptr @a6xx_gpu_state_get, ptr @a6xx_gpu_state_put, ptr @a6xx_gmu_get_freq, ptr @a6xx_gpu_set_freq, ptr @a6xx_create_address_space, ptr @a6xx_create_private_address_space, ptr @a6xx_get_rptr }, ptr @a6xx_get_timestamp }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom,gmu\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iommus\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arm,mmu-500\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cx_mem\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpu_cx\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"speed_bin\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"*ERROR* failed to read speed-bin (%d). Some OPPs may not be supported by hardware\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"*ERROR* missing support for speed-bin: %u. Some OPPs may not be supported by hardware\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shadow\00", [25 x i8] zeroinitializer }, align 32
@hw_init.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 1115, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Zap shader not enabled - using SECVID_TRUST_CNTL instead\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hw_init\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/msm/adreno/a6xx_gpu.c\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hw_init._entry_ptr = internal global ptr @hw_init._entry, section ".printk_index", align 4
@a6xx_protect = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 335282176, i32 1312001, i32 198182155, i32 -2147482354, i32 -2147482352, i32 -2147482316, i32 -2113402880, i32 -2145384288, i32 -2138044245, i32 45615326, i32 -2127296256, i32 -1983379059, i32 -2147217920, i32 -2144334333, i32 -2096350208, i32 2147237060, i32 -2026076624, i32 -2147447296, i32 -2147447288, i32 -2139320752, i32 -2022926812, i32 -2147180944, i32 -2044944776, i32 -2026068432, i32 -2147439102, i32 -1933791664, i32 -2147437052, i32 -2147172862, i32 -545472992, i32 -1342377984, i32 2147286016, i32 -2147410944], [32 x i8] zeroinitializer }, align 32
@a650_protect = internal constant { [39 x i32], [36 x i8] } { [39 x i32] [i32 335282176, i32 1312001, i32 198182155, i32 -2147482354, i32 -2147482352, i32 -2147482316, i32 -2113402880, i32 -2145384288, i32 -2138044245, i32 45615326, i32 -2127296256, i32 -1983379059, i32 -2147217920, i32 -2144334333, i32 -2096350208, i32 2147237060, i32 -2026076624, i32 -2147447296, i32 -2147447288, i32 -2139320752, i32 -1979937152, i32 -2022926812, i32 -2142986656, i32 -2044944776, i32 -2026068432, i32 -2147439102, i32 -1933791664, i32 -2147437052, i32 -2145602040, i32 -2147172862, i32 -545472992, i32 -1342377984, i32 2147286016, i32 -162816, i32 -153600, i32 -1861356544, i32 32372804, i32 -2140276601, i32 -2147354432], [36 x i8] zeroinitializer }, align 32
@a660_protect = internal constant { [41 x i32], [60 x i8] } { [41 x i32] [i32 335282176, i32 1312001, i32 198182155, i32 -2147482354, i32 -2147482352, i32 -2147482316, i32 -2113402880, i32 -2145384288, i32 -2138044245, i32 45615326, i32 -2127296256, i32 -1983379059, i32 -2147217920, i32 -2144334333, i32 -2096350208, i32 2147237060, i32 -2026076624, i32 -2147447296, i32 -2147447288, i32 -2139320752, i32 -1979937152, i32 -2022926812, i32 -2142986656, i32 -2044944776, i32 -2026068432, i32 -2147439102, i32 -2068009392, i32 -2147437052, i32 -2145864184, i32 -2147172862, i32 -2055422432, i32 -1745039360, i32 -1342377984, i32 2147286016, i32 -162816, i32 -154624, i32 -1861356544, i32 32372804, i32 -2147354528, i32 -2140276601, i32 -2147354432], [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* Could not allocate SQE ucode: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sqefw\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a630_sqe.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"*ERROR* a630 SQE ucode is too old. Have version %x need at least %x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a650_sqe.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"*ERROR* a650 SQE ucode is too old. Have version %x need at least %x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a660_sqe.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"*ERROR* unknown GPU, add it to a6xx_ucode_check_version()!!\0A\00", [35 x i8] zeroinitializer }, align 32
@a6xx_zap_shader_init.loaded = internal global { i8, [31 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.23 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s: %ps: timeout waiting for GPU to idle: status %8.8X irq %8.8X rptr/wptr %d/%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_msm_gpu_suspend = external dso_local global %struct.tracepoint, align 4
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/msm/msm_gpu_trace.h\00", [60 x i8] zeroinitializer }, align 32
@trace_msm_gpu_suspend.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_msm_gpu_resume = external dso_local global %struct.tracepoint, align 4
@trace_msm_gpu_resume.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_msm_gpu_submit_flush = external dso_local global %struct.tracepoint, align 4
@trace_msm_gpu_submit_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@a6xx_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.a6xx_irq = private unnamed_addr constant [9 x i8] c"a6xx_irq\00", align 1
@a6xx_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.a6xx_irq, ptr @.str.12, i32 1390, ptr @.str.6, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CP | AHB bus error\0A\00", [44 x i8] zeroinitializer }, align 32
@a6xx_irq._entry_ptr = internal global ptr @a6xx_irq._entry, section ".printk_index", align 4
@a6xx_irq._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a6xx_irq._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.a6xx_irq, ptr @.str.12, i32 1396, ptr @.str.6, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RBBM | ATB ASYNC overflow\0A\00", [37 x i8] zeroinitializer }, align 32
@a6xx_irq._entry_ptr.32 = internal global ptr @a6xx_irq._entry.30, section ".printk_index", align 4
@a6xx_irq._rs.33 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a6xx_irq._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.a6xx_irq, ptr @.str.12, i32 1399, ptr @.str.6, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RBBM | ATB bus overflow\0A\00", [39 x i8] zeroinitializer }, align 32
@a6xx_irq._entry_ptr.36 = internal global ptr @a6xx_irq._entry.34, section ".printk_index", align 4
@a6xx_irq._rs.37 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a6xx_irq._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.a6xx_irq, ptr @.str.12, i32 1402, ptr @.str.6, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"UCHE | Out of bounds access\0A\00", [35 x i8] zeroinitializer }, align 32
@a6xx_irq._entry_ptr.40 = internal global ptr @a6xx_irq._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"*ERROR* gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\0A\00", [56 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.a6xx_cp_hw_err_irq = private unnamed_addr constant [19 x i8] c"a6xx_cp_hw_err_irq\00", align 1
@a6xx_cp_hw_err_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @__func__.a6xx_cp_hw_err_irq, ptr @.str.12, i32 1307, ptr @.str.6, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CP | opcode error | possible opcode=0x%8.8X\0A\00", [51 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._entry_ptr = internal global ptr @a6xx_cp_hw_err_irq._entry, section ".printk_index", align 4
@a6xx_cp_hw_err_irq._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @__func__.a6xx_cp_hw_err_irq, ptr @.str.12, i32 1312, ptr @.str.6, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CP ucode error interrupt\0A\00", [38 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._entry_ptr.46 = internal global ptr @a6xx_cp_hw_err_irq._entry.44, section ".printk_index", align 4
@a6xx_cp_hw_err_irq._rs.47 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.a6xx_cp_hw_err_irq, ptr @.str.12, i32 1316, ptr @.str.6, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CP | HW fault | status=0x%8.8X\0A\00", [32 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._entry_ptr.50 = internal global ptr @a6xx_cp_hw_err_irq._entry.48, section ".printk_index", align 4
@a6xx_cp_hw_err_irq._rs.51 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.a6xx_cp_hw_err_irq, ptr @.str.12, i32 1324, ptr @.str.6, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"CP | protected mode error | %s | addr=0x%8.8X | status=0x%8.8X\0A\00", [32 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._entry_ptr.54 = internal global ptr @a6xx_cp_hw_err_irq._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._rs.57 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @__func__.a6xx_cp_hw_err_irq, ptr @.str.12, i32 1328, ptr @.str.6, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CP AHB error interrupt\0A\00", [40 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._entry_ptr.60 = internal global ptr @a6xx_cp_hw_err_irq._entry.58, section ".printk_index", align 4
@a6xx_cp_hw_err_irq._rs.61 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.a6xx_cp_hw_err_irq, ptr @.str.12, i32 1331, ptr @.str.6, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CP VSD decoder parity error\0A\00", [35 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._entry_ptr.64 = internal global ptr @a6xx_cp_hw_err_irq._entry.62, section ".printk_index", align 4
@a6xx_cp_hw_err_irq._rs.65 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @__func__.a6xx_cp_hw_err_irq, ptr @.str.12, i32 1334, ptr @.str.6, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CP illegal instruction error\0A\00", [34 x i8] zeroinitializer }, align 32
@a6xx_cp_hw_err_irq._entry_ptr.68 = internal global ptr @a6xx_cp_hw_err_irq._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CP_SCRATCH_REG%d: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@hang_debug = external dso_local local_unnamed_addr global i8, align 1
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"status:   %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@a6xx_fault_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.a6xx_fault_handler = private unnamed_addr constant [19 x i8] c"a6xx_fault_handler\00", align 1
@a6xx_fault_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @__func__.a6xx_fault_handler, ptr @.str.12, i32 1257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014*** gpu fault: iova=%.16lx flags=%d (%u,%u,%u,%u)\0A\00", [43 x i8] zeroinitializer }, align 32
@a6xx_fault_handler._entry_ptr = internal global ptr @a6xx_fault_handler._entry, section ".printk_index", align 4
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TRANSLATION\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PERMISSION\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EXTERNAL\00", [23 x i8] zeroinitializer }, align 32
@a6xx_fault_handler._rs.78 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a6xx_fault_handler._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @__func__.a6xx_fault_handler, ptr @.str.12, i32 1278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014*** gpu fault: ttbr0=%.16llx iova=%.16lx dir=%s type=%s source=%s (%u,%u,%u,%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@a6xx_fault_handler._entry_ptr.81 = internal global ptr @a6xx_fault_handler._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CP\00", [29 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CCU\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CDP Prefetch\00", [19 x i8] zeroinitializer }, align 32
@a6xx_uche_fault_block.uche_clients = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VFD\00", [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SP\00", [29 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VSC\00", [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VPC\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HLSQ\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PC\00", [29 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LRZ\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TP\00", [29 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TP|VFD\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UCHE\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 650, i64 660]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 169, i64 174]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 6]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.99 = internal global [7 x i64] [i64 5, i64 32, i64 620, i64 640, i64 650, i64 660, i64 680]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 620, i64 650, i64 660]
@__sancov_gen_cov_switch_values.101 = internal global [7 x i64] [i64 5, i64 32, i64 620, i64 640, i64 650, i64 660, i64 680]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 32, i64 640, i64 650, i64 660, i64 680]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 618, i64 650]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 32, i64 620, i64 650, i64 660]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 650, i64 660]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.108 = private unnamed_addr constant [10 x i8] c"a630_hwcg\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 227, i32 29 }
@___asan_gen_.111 = private unnamed_addr constant [10 x i8] c"a640_hwcg\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 336, i32 29 }
@___asan_gen_.114 = private unnamed_addr constant [10 x i8] c"a650_hwcg\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 389, i32 29 }
@___asan_gen_.117 = private unnamed_addr constant [10 x i8] c"a660_hwcg\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 442, i32 29 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"funcs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1786, i32 38 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1868, i32 45 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1501, i32 48 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1503, i32 36 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1509, i32 42 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1509, i32 52 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1762, i32 45 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1770, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1747, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1072, i32 49 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1114, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [13 x i8] c"a6xx_protect\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 531, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant [13 x i8] c"a650_protect\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 567, i32 18 }
@___asan_gen_.177 = private unnamed_addr constant [13 x i8] c"a660_protect\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 610, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 833, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 839, i32 45 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 779, i32 24 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 797, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 800, i32 31 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 806, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 809, i32 31 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 812, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 857, i32 14 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 43, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [39 x i8] c"../drivers/gpu/drm/msm/msm_gpu_trace.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 157, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 108, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1390, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1396, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1399, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1402, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1359, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1305, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1311, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1315, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1321, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1328, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1331, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1334, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1169, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1152, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1693, i32 45 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1235, i32 21 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1252, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1263, i32 10 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1265, i32 10 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1267, i32 10 }
@___asan_gen_.363 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1271, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1218, i32 10 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1220, i32 10 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1222, i32 10 }
@___asan_gen_.381 = private unnamed_addr constant [13 x i8] c"uche_clients\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1189, i32 21 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1190, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1190, i32 10 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1190, i32 16 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1190, i32 23 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1190, i32 30 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1190, i32 38 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1190, i32 44 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1209, i32 29 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1209, i32 36 }
@___asan_gen_.411 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.412 = private constant [41 x i8] c"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1212, i32 9 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @a6xx_cp_hw_err_irq._entry, ptr @a6xx_cp_hw_err_irq._entry.44, ptr @a6xx_cp_hw_err_irq._entry.48, ptr @a6xx_cp_hw_err_irq._entry.52, ptr @a6xx_cp_hw_err_irq._entry.58, ptr @a6xx_cp_hw_err_irq._entry.62, ptr @a6xx_cp_hw_err_irq._entry.66, ptr @a6xx_cp_hw_err_irq._entry_ptr, ptr @a6xx_cp_hw_err_irq._entry_ptr.46, ptr @a6xx_cp_hw_err_irq._entry_ptr.50, ptr @a6xx_cp_hw_err_irq._entry_ptr.54, ptr @a6xx_cp_hw_err_irq._entry_ptr.60, ptr @a6xx_cp_hw_err_irq._entry_ptr.64, ptr @a6xx_cp_hw_err_irq._entry_ptr.68, ptr @a6xx_fault_handler._entry, ptr @a6xx_fault_handler._entry.79, ptr @a6xx_fault_handler._entry_ptr, ptr @a6xx_fault_handler._entry_ptr.81, ptr @a6xx_irq._entry, ptr @a6xx_irq._entry.30, ptr @a6xx_irq._entry.34, ptr @a6xx_irq._entry.38, ptr @a6xx_irq._entry_ptr, ptr @a6xx_irq._entry_ptr.32, ptr @a6xx_irq._entry_ptr.36, ptr @a6xx_irq._entry_ptr.40, ptr @hw_init._entry, ptr @hw_init._entry_ptr, ptr @a630_hwcg, ptr @a640_hwcg, ptr @a650_hwcg, ptr @a660_hwcg, ptr @funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @a6xx_protect, ptr @a650_protect, ptr @a660_protect, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @a6xx_zap_shader_init.loaded, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @a6xx_irq._rs, ptr @.str.27, ptr @.str.28, ptr @a6xx_irq._rs.29, ptr @.str.31, ptr @a6xx_irq._rs.33, ptr @.str.35, ptr @a6xx_irq._rs.37, ptr @.str.39, ptr @.str.41, ptr @a6xx_cp_hw_err_irq._rs, ptr @.str.42, ptr @a6xx_cp_hw_err_irq._rs.43, ptr @.str.45, ptr @a6xx_cp_hw_err_irq._rs.47, ptr @.str.49, ptr @a6xx_cp_hw_err_irq._rs.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @a6xx_cp_hw_err_irq._rs.57, ptr @.str.59, ptr @a6xx_cp_hw_err_irq._rs.61, ptr @.str.63, ptr @a6xx_cp_hw_err_irq._rs.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @a6xx_fault_handler._rs, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @a6xx_fault_handler._rs.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @a6xx_uche_fault_block.uche_clients, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a630_hwcg to i32), i32 848, i32 1056, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a640_hwcg to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a650_hwcg to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a660_hwcg to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_protect to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a650_protect to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a660_protect to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_zap_shader_init.loaded to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_irq._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_irq._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_irq._rs.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_irq._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_irq._rs.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_irq._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_hw_err_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_hw_err_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_hw_err_irq._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_hw_err_irq._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_hw_err_irq._rs.47 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_hw_err_irq._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_hw_err_irq._rs.51 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_hw_err_irq._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_hw_err_irq._rs.57 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_hw_err_irq._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_hw_err_irq._rs.61 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_hw_err_irq._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_hw_err_irq._rs.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_hw_err_irq._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_fault_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_fault_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_fault_handler._rs.78 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_fault_handler._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_uche_fault_block.uche_clients to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @a6xx_gpu_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %supp_hw.i = alloca i32, align 4
  %speedbin.i = alloca i32, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %gpu_pdev = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpu_pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpu_pdev, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1640) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %registers = getelementptr inbounds %struct.adreno_gpu, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %registers to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %registers, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %.unpack = load i32, ptr %5, align 1
  %9 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call4 = tail call ptr @adreno_info([1 x i32] %9) #12
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.if.end19_crit_edge, label %land.lhs.true

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %revn = getelementptr inbounds %struct.adreno_info, ptr %call4, i32 0, i32 1
  %10 = ptrtoint ptr %revn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %revn, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %lor.lhs.false8 [
    i32 650, label %land.lhs.true.if.then11_crit_edge
    i32 660, label %land.lhs.true.if.then11_crit_edge115
  ]

land.lhs.true.if.then11_crit_edge115:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

lor.lhs.false8:                                   ; preds = %land.lhs.true
  %13 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack101 = load i32, ptr %call4, align 4
  %14 = insertvalue [1 x i32] undef, i32 %.unpack101, 0
  %call10 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %14) #12
  br i1 %call10, label %lor.lhs.false8.if.then11_crit_edge, label %lor.lhs.false8.land.lhs.true15_crit_edge

lor.lhs.false8.land.lhs.true15_crit_edge:         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true15

lor.lhs.false8.if.then11_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false8.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge115
  %hw_apriv = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 45
  %15 = ptrtoint ptr %hw_apriv to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %hw_apriv, align 1
  br label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.then11, %lor.lhs.false8.land.lhs.true15_crit_edge
  %16 = ptrtoint ptr %revn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %revn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 618, i32 %17)
  %cmp17 = icmp eq i32 %17, 618
  br i1 %cmp17, label %if.then18, label %land.lhs.true15.if.end19_crit_edge

land.lhs.true15.if.end19_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  %clamp_to_idle = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 44
  %18 = ptrtoint ptr %clamp_to_idle to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %clamp_to_idle, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %land.lhs.true15.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #12
  %21 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #12
  br label %land.end.i.thread

of_parse_phandle.exit.i:                          ; preds = %if.end19
  %22 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #12
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.land.end.i.thread_crit_edge, label %land.end.i

of_parse_phandle.exit.i.land.end.i.thread_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i.thread

land.end.i.thread:                                ; preds = %of_parse_phandle.exit.i.land.end.i.thread_crit_edge, %of_parse_phandle.exit.thread.i
  %have_mmu500.i113 = getelementptr inbounds %struct.a6xx_gpu, ptr %call7.i.i, i32 0, i32 12
  %24 = ptrtoint ptr %have_mmu500.i113 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %have_mmu500.i113, align 4
  call void @of_node_put(ptr noundef null) #12
  br label %if.else.i

land.end.i:                                       ; preds = %of_parse_phandle.exit.i
  %call1.i = call i32 @of_device_is_compatible(ptr noundef nonnull %23, ptr noundef nonnull @.str.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.i = icmp ne i32 %call1.i, 0
  %have_mmu500.i = getelementptr inbounds %struct.a6xx_gpu, ptr %call7.i.i, i32 0, i32 12
  %frombool.i = zext i1 %tobool2.i to i8
  %25 = ptrtoint ptr %have_mmu500.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool.i, ptr %have_mmu500.i, align 4
  call void @of_node_put(ptr noundef nonnull %23) #12
  br i1 %tobool2.i, label %land.end.i.if.end.i_crit_edge, label %land.end.i.if.else.i_crit_edge

land.end.i.if.else.i_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.end.i.if.end.i_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.else.i:                                        ; preds = %land.end.i.if.else.i_crit_edge, %land.end.i.thread
  %call5.i = call ptr @msm_ioremap(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.end.i.if.end.i_crit_edge
  %.sink.i = phi ptr [ %call5.i, %if.else.i ], [ null, %land.end.i.if.end.i_crit_edge ]
  %26 = getelementptr inbounds %struct.a6xx_gpu, ptr %call7.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %.sink.i, ptr %26, align 8
  %call7.i = call ptr @llcc_slice_getd(i32 noundef 12) #12
  %llc_slice.i = getelementptr inbounds %struct.a6xx_gpu, ptr %call7.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %llc_slice.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i, ptr %llc_slice.i, align 4
  %call8.i = call ptr @llcc_slice_getd(i32 noundef 11) #12
  %htw_llc_slice.i = getelementptr inbounds %struct.a6xx_gpu, ptr %call7.i.i, i32 0, i32 11
  %29 = ptrtoint ptr %htw_llc_slice.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call8.i, ptr %htw_llc_slice.i, align 8
  %tobool.not.i28.i = icmp eq ptr %call7.i, null
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i28.i, %cmp.i.i
  br i1 %spec.select.i.i, label %land.lhs.true.i, label %if.end.i.a6xx_llc_slices_init.exit_crit_edge

if.end.i.a6xx_llc_slices_init.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_llc_slices_init.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %tobool.not.i29.i = icmp eq ptr %call8.i, null
  %cmp.i30.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i31.i = or i1 %tobool.not.i29.i, %cmp.i30.i
  br i1 %spec.select.i31.i, label %if.then13.i, label %land.lhs.true.i.a6xx_llc_slices_init.exit_crit_edge

land.lhs.true.i.a6xx_llc_slices_init.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_llc_slices_init.exit

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -22 to ptr), ptr %26, align 8
  br label %a6xx_llc_slices_init.exit

a6xx_llc_slices_init.exit:                        ; preds = %if.then13.i, %land.lhs.true.i.a6xx_llc_slices_init.exit_crit_edge, %if.end.i.a6xx_llc_slices_init.exit_crit_edge
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %.unpack100 = load i32, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supp_hw.i) #12
  %32 = ptrtoint ptr %supp_hw.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %supp_hw.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speedbin.i) #12
  %33 = ptrtoint ptr %speedbin.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %speedbin.i, align 4, !annotation !204
  %call.i = call i32 @nvmem_cell_read_variable_le_u32(ptr noundef %dev1, ptr noundef nonnull @.str.5, ptr noundef nonnull %speedbin.i) #12
  %34 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %call.i, label %if.then1.i [
    i32 -2, label %a6xx_set_supported_hw.exit.thread
    i32 0, label %if.end2.i
  ]

a6xx_set_supported_hw.exit.thread:                ; preds = %a6xx_llc_slices_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speedbin.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supp_hw.i) #12
  br label %if.end28

if.then1.i:                                       ; preds = %a6xx_llc_slices_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %call.i) #12
  br label %a6xx_set_supported_hw.exit

if.end2.i:                                        ; preds = %a6xx_llc_slices_init.exit
  %35 = insertvalue [1 x i32] undef, i32 %.unpack100, 0
  %36 = ptrtoint ptr %speedbin.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %speedbin.i, align 4
  %call.i.i103 = call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100731135], [1 x i32] %35) #12
  br i1 %call.i.i103, label %if.then.i.i, label %if.end2.i.if.then2.i.i_crit_edge

if.end2.i.if.then2.i.i_crit_edge:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i.i

if.then.i.i:                                      ; preds = %if.end2.i
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %37, label %if.then.i.i.if.then2.i.i_crit_edge [
    i32 0, label %if.then.i.i.if.end3.i.i_crit_edge
    i32 169, label %if.then2.i.i.i
    i32 174, label %if.then5.i.i.i
  ]

if.then.i.i.if.end3.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

if.then.i.i.if.then2.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

if.then5.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i.if.then2.i.i_crit_edge, %if.end2.i.if.then2.i.i_crit_edge
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef %37) #12
  br label %fuse_to_supp_hw.exit.i

if.end3.i.i:                                      ; preds = %if.then5.i.i.i, %if.then2.i.i.i, %if.then.i.i.if.end3.i.i_crit_edge
  %val.0.ph.i.i = phi i32 [ %37, %if.then.i.i.if.end3.i.i_crit_edge ], [ 2, %if.then5.i.i.i ], [ 1, %if.then2.i.i.i ]
  %shl.i.i = shl nuw nsw i32 1, %val.0.ph.i.i
  br label %fuse_to_supp_hw.exit.i

fuse_to_supp_hw.exit.i:                           ; preds = %if.end3.i.i, %if.then2.i.i
  %retval.0.i.i = phi i32 [ -1, %if.then2.i.i ], [ %shl.i.i, %if.end3.i.i ]
  %39 = ptrtoint ptr %supp_hw.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i.i, ptr %supp_hw.i, align 4
  br label %a6xx_set_supported_hw.exit

a6xx_set_supported_hw.exit:                       ; preds = %fuse_to_supp_hw.exit.i, %if.then1.i
  %call4.i = call i32 @devm_pm_opp_set_supported_hw(ptr noundef %dev1, ptr noundef nonnull %supp_hw.i, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speedbin.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supp_hw.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool23.not = icmp eq i32 %call4.i, 0
  br i1 %tobool23.not, label %a6xx_set_supported_hw.exit.if.end28_crit_edge, label %if.then24

a6xx_set_supported_hw.exit.if.end28_crit_edge:    ; preds = %a6xx_set_supported_hw.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then24:                                        ; preds = %a6xx_set_supported_hw.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @a6xx_destroy(ptr noundef nonnull %call7.i.i)
  %40 = inttoptr i32 %call4.i to ptr
  br label %cleanup

if.end28:                                         ; preds = %a6xx_set_supported_hw.exit.if.end28_crit_edge, %a6xx_set_supported_hw.exit.thread
  %call29 = call i32 @adreno_gpu_init(ptr noundef %dev, ptr noundef %3, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @funcs, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end35, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  call void @a6xx_destroy(ptr noundef nonnull %call7.i.i)
  %41 = inttoptr i32 %call29 to ptr
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %42 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #12
  %44 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i104 = call i32 @__of_parse_phandle_with_args(ptr noundef %43, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not.i105 = icmp eq i32 %call.i104, 0
  br i1 %tobool.not.i105, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #12
  br label %do.body43

of_parse_phandle.exit:                            ; preds = %if.end35
  %45 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #12
  %tobool38.not = icmp eq ptr %46, null
  br i1 %tobool38.not, label %of_parse_phandle.exit.do.body43_crit_edge, label %do.end49, !prof !205

of_parse_phandle.exit.do.body43_crit_edge:        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43

do.body43:                                        ; preds = %of_parse_phandle.exit.do.body43_crit_edge, %of_parse_phandle.exit.thread
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/adreno/a6xx_gpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1871, 0\0A.popsection", ""() #12, !srcloc !206
  unreachable

do.end49:                                         ; preds = %of_parse_phandle.exit
  %call50 = call i32 @a6xx_gmu_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end56, label %if.then52

if.then52:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  call void @a6xx_destroy(ptr noundef nonnull %call7.i.i)
  %47 = inttoptr i32 %call50 to ptr
  br label %cleanup

if.end56:                                         ; preds = %do.end49
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 24
  %48 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %aspace, align 8
  %tobool57.not = icmp eq ptr %49, null
  br i1 %tobool57.not, label %if.end56.cleanup_crit_edge, label %if.then58

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %mmu = getelementptr inbounds %struct.msm_gem_address_space, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmu, align 4
  %arg1.i = getelementptr inbounds %struct.msm_mmu, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %arg1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %arg1.i, align 4
  %handler2.i = getelementptr inbounds %struct.msm_mmu, ptr %51, i32 0, i32 2
  %53 = ptrtoint ptr %handler2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @a6xx_fault_handler, ptr %handler2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.end56.cleanup_crit_edge, %if.then52, %if.then31, %if.then24, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %40, %if.then24 ], [ %41, %if.then31 ], [ %47, %if.then52 ], [ %call7.i.i, %if.then58 ], [ %call7.i.i, %if.end56.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_info([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_cmp_rev([1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a6xx_destroy(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sqe_bo = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 1
  %0 = ptrtoint ptr %sqe_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sqe_bo, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %2 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aspace, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %1, ptr noundef %3) #12
  %4 = ptrtoint ptr %sqe_bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sqe_bo, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !207
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #12, !srcloc !208
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !209

if.end5.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #12
  br label %if.end

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !210
  tail call void @drm_gem_object_free(ptr noundef nonnull %5) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %shadow_bo = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 5
  %7 = ptrtoint ptr %shadow_bo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shadow_bo, align 8
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then7:                                         ; preds = %if.end
  %aspace9 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %9 = ptrtoint ptr %aspace9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aspace9, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %8, ptr noundef %10) #12
  %11 = ptrtoint ptr %shadow_bo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shadow_bo, align 8
  %tobool.not.i24 = icmp eq ptr %12, null
  br i1 %tobool.not.i24, label %if.then7.if.end11_crit_edge, label %if.then.i28

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then.i28:                                      ; preds = %if.then7
  %call.i.i.i.i.i.i.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %12, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !207
  tail call void @llvm.prefetch.p0(ptr nonnull %12, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #12, !srcloc !208
  %asmresult.i.i.i.i.i.i.i.i.i26 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i26)
  %cmp.i.i.i.i.i.i27 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i26, 1
  br i1 %cmp.i.i.i.i.i.i27, label %if.then.i.i.i32, label %if.end5.i.i.i.i.i.i30

if.end5.i.i.i.i.i.i30:                            ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i26)
  %.not.i.i.i.i.i.i29 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i26, 0
  br i1 %.not.i.i.i.i.i.i29, label %if.end5.i.i.i.i.i.i30.if.end11_crit_edge, label %if.then10.i.i.i.i.i.i31, !prof !209

if.end5.i.i.i.i.i.i30.if.end11_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10.i.i.i.i.i.i31:                          ; preds = %if.end5.i.i.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %12, i32 noundef 3) #12
  br label %if.end11

if.then.i.i.i32:                                  ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !210
  tail call void @drm_gem_object_free(ptr noundef nonnull %12) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then.i.i.i32, %if.then10.i.i.i.i.i.i31, %if.end5.i.i.i.i.i.i30.if.end11_crit_edge, %if.then7.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %llc_slice.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 10
  %14 = ptrtoint ptr %llc_slice.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %llc_slice.i, align 4
  tail call void @llcc_slice_putd(ptr noundef %15) #12
  %htw_llc_slice.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 11
  %16 = ptrtoint ptr %htw_llc_slice.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %htw_llc_slice.i, align 8
  tail call void @llcc_slice_putd(ptr noundef %17) #12
  tail call void @a6xx_gmu_remove(ptr noundef %gpu) #12
  tail call void @adreno_gpu_cleanup(ptr noundef %gpu) #12
  tail call void @kfree(ptr noundef %gpu) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_gmu_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a6xx_fault_handler(ptr noundef %arg, i32 noundef %iova, i32 noundef %flags, ptr noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %if.then6.critedge, label %land.end

land.end:                                         ; preds = %entry
  %crashstate = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 43
  %0 = ptrtoint ptr %crashstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %crashstate, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.end.if.end23_crit_edge, label %if.end23.critedge

land.end.if.end23_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then6.critedge:                                ; preds = %entry
  %aspace.c = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 24
  %2 = ptrtoint ptr %aspace.c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aspace.c, align 8
  %mmu.c = getelementptr inbounds %struct.msm_gem_address_space, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmu.c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmu.c, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %resume_translation.c = getelementptr inbounds %struct.msm_mmu_funcs, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %resume_translation.c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume_translation.c, align 4
  tail call void %9(ptr noundef %5) #12
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_fault_handler._rs, ptr noundef nonnull @__func__.a6xx_fault_handler) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then6.critedge.cleanup_crit_edge, label %do.end11

if.then6.critedge.cleanup_crit_edge:              ; preds = %if.then6.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11:                                         ; preds = %if.then6.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 22
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 8732
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #12
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i112 = getelementptr i8, ptr %13, i32 8736
  %call.i113 = tail call i32 @msm_readl(ptr noundef %add.ptr.i112) #12
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i115 = getelementptr i8, ptr %15, i32 8740
  %call.i116 = tail call i32 @msm_readl(ptr noundef %add.ptr.i115) #12
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i118 = getelementptr i8, ptr %17, i32 8744
  %call.i119 = tail call i32 @msm_readl(ptr noundef %add.ptr.i118) #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %iova, i32 noundef %flags, i32 noundef %call.i, i32 noundef %call.i113, i32 noundef %call.i116, i32 noundef %call.i119) #16
  br label %cleanup

if.end23.critedge:                                ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  %aspace.c132 = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 24
  %18 = ptrtoint ptr %aspace.c132 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aspace.c132, align 8
  %mmu.c133 = getelementptr inbounds %struct.msm_gem_address_space, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %mmu.c133 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmu.c133, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %resume_translation.c134 = getelementptr inbounds %struct.msm_mmu_funcs, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %resume_translation.c134 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resume_translation.c134, align 4
  tail call void %25(ptr noundef %21) #12
  br label %if.end23

if.end23:                                         ; preds = %if.end23.critedge, %land.end.if.end23_crit_edge
  %fsr = getelementptr inbounds %struct.adreno_smmu_fault_info, ptr %data, i32 0, i32 3
  %26 = ptrtoint ptr %fsr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fsr, align 4
  %and = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.else, label %if.end23.if.end37_crit_edge

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.else:                                          ; preds = %if.end23
  %and27 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else30, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.else30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %and32 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %spec.select = select i1 %tobool33.not, ptr @.str.73, ptr @.str.77
  br label %if.end37

if.end37:                                         ; preds = %if.else30, %if.else.if.end37_crit_edge, %if.end23.if.end37_crit_edge
  %type.0 = phi ptr [ @.str.75, %if.end23.if.end37_crit_edge ], [ @.str.76, %if.else.if.end37_crit_edge ], [ %spec.select, %if.else30 ]
  %fsynr1 = getelementptr inbounds %struct.adreno_smmu_fault_info, ptr %data, i32 0, i32 5
  %28 = ptrtoint ptr %fsynr1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fsynr1, align 4
  %trunc = trunc i32 %29 to i8
  %30 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %trunc, label %if.end7.i [
    i8 0, label %if.end37.a6xx_fault_block.exit_crit_edge
    i8 4, label %if.then2.i
    i8 6, label %if.then5.i
  ]

if.end37.a6xx_fault_block.exit_crit_edge:         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_fault_block.exit

if.then2.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_fault_block.exit

if.then5.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_fault_block.exit

if.end7.i:                                        ; preds = %if.end37
  %and38 = and i32 %29, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %cmp1.i.i.not = icmp eq i32 %and38, 0
  br i1 %cmp1.i.i.not, label %if.end.i.i, label %if.end7.i.a6xx_fault_block.exit_crit_edge

if.end7.i.a6xx_fault_block.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_fault_block.exit

if.end.i.i:                                       ; preds = %if.end7.i
  %mmio.i.i.i = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 22
  %31 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 14436
  %call.i.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i.i) #12
  %33 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %trunc, label %if.end.i.i.a6xx_fault_block.exit_crit_edge [
    i8 3, label %if.then3.i.i
    i8 2, label %if.then6.i.i
  ]

if.end.i.i.a6xx_fault_block.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_fault_block.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i = and i32 %call.i.i.i, 7
  %arrayidx.i.i = getelementptr [7 x ptr], ptr @a6xx_uche_fault_block.uche_clients, i32 0, i32 %and.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  br label %a6xx_fault_block.exit

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and7.i.i = and i32 %call.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %cmp8.i.i = icmp eq i32 %and7.i.i, 0
  %cond.i.i = select i1 %cmp8.i.i, ptr @.str.92, ptr @.str.93
  br label %a6xx_fault_block.exit

a6xx_fault_block.exit:                            ; preds = %if.then6.i.i, %if.then3.i.i, %if.end.i.i.a6xx_fault_block.exit_crit_edge, %if.end7.i.a6xx_fault_block.exit_crit_edge, %if.then5.i, %if.then2.i, %if.end37.a6xx_fault_block.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.83, %if.then2.i ], [ @.str.84, %if.then5.i ], [ @.str.82, %if.end37.a6xx_fault_block.exit_crit_edge ], [ %35, %if.then3.i.i ], [ %cond.i.i, %if.then6.i.i ], [ @.str.73, %if.end7.i.a6xx_fault_block.exit_crit_edge ], [ @.str.94, %if.end.i.i.a6xx_fault_block.exit_crit_edge ]
  %call40 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_fault_handler._rs.78, ptr noundef nonnull @__func__.a6xx_fault_handler) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %a6xx_fault_block.exit.if.end58_crit_edge, label %do.end45

a6xx_fault_block.exit.if.end58_crit_edge:         ; preds = %a6xx_fault_block.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

do.end45:                                         ; preds = %a6xx_fault_block.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ttbr0 = getelementptr inbounds %struct.adreno_smmu_fault_info, ptr %data, i32 0, i32 1
  %36 = ptrtoint ptr %ttbr0 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ttbr0, align 8
  %and47 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %cond = select i1 %tobool48.not, ptr @.str.55, ptr @.str.56
  %mmio.i120 = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 22
  %38 = ptrtoint ptr %mmio.i120 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i120, align 8
  %add.ptr.i121 = getelementptr i8, ptr %39, i32 8732
  %call.i122 = tail call i32 @msm_readl(ptr noundef %add.ptr.i121) #12
  %40 = ptrtoint ptr %mmio.i120 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i120, align 8
  %add.ptr.i124 = getelementptr i8, ptr %41, i32 8736
  %call.i125 = tail call i32 @msm_readl(ptr noundef %add.ptr.i124) #12
  %42 = ptrtoint ptr %mmio.i120 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i120, align 8
  %add.ptr.i127 = getelementptr i8, ptr %43, i32 8740
  %call.i128 = tail call i32 @msm_readl(ptr noundef %add.ptr.i127) #12
  %44 = ptrtoint ptr %mmio.i120 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i120, align 8
  %add.ptr.i130 = getelementptr i8, ptr %45, i32 8744
  %call.i131 = tail call i32 @msm_readl(ptr noundef %add.ptr.i130) #12
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i64 noundef %37, i32 noundef %iova, ptr noundef nonnull %cond, ptr noundef nonnull %type.0, ptr noundef %retval.0.i, i32 noundef %call.i122, i32 noundef %call.i125, i32 noundef %call.i128, i32 noundef %call.i131) #16
  br label %if.end58

if.end58:                                         ; preds = %do.end45, %a6xx_fault_block.exit.if.end58_crit_edge
  br i1 %tobool1.not, label %if.then60, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %hangcheck_timer = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 33
  %call61 = tail call i32 @del_timer(ptr noundef %hangcheck_timer) #12
  %ttbr062 = getelementptr inbounds %struct.adreno_smmu_fault_info, ptr %data, i32 0, i32 1
  %46 = ptrtoint ptr %ttbr062 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ttbr062, align 8
  %fault_info = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 34
  %48 = ptrtoint ptr %fault_info to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %fault_info, align 8
  %iova65 = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 34, i32 1
  %49 = ptrtoint ptr %iova65 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %iova, ptr %iova65, align 8
  %flags67 = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 34, i32 2
  %50 = ptrtoint ptr %flags67 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %flags, ptr %flags67, align 4
  %type69 = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 34, i32 3
  %51 = ptrtoint ptr %type69 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %type.0, ptr %type69, align 8
  %block71 = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 34, i32 4
  %52 = ptrtoint ptr %block71 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %retval.0.i, ptr %block71, align 4
  %worker = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 39
  %53 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %worker, align 8
  %fault_work = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 35
  %call72 = tail call zeroext i1 @kthread_queue_work(ptr noundef %54, ptr noundef %fault_work) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end58.cleanup_crit_edge, %do.end11, %if.then6.critedge.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llcc_slice_getd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_cell_read_variable_le_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_supported_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a6xx_gmu_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_gpu_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @llcc_slice_putd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_get_param(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a6xx_hw_init(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %gmu.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4
  %call.i = tail call i32 @a6xx_gmu_set_oob(ptr noundef %gmu.i, i32 noundef 1) #12
  %mmio.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 253964
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i.i) #12
  %2 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i281.i = getelementptr i8, ptr %3, i32 253952
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i281.i) #12
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %5, i32 253956
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5.i.i) #12
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i283.i = getelementptr i8, ptr %7, i32 253960
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i283.i) #12
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i285.i = getelementptr i8, ptr %9, i32 8456
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i285.i) #12
  %10 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i287.i = getelementptr i8, ptr %11, i32 12292
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i287.i) #12
  %12 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i289.i = getelementptr i8, ptr %13, i32 137220
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i289.i) #12
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i291.i = getelementptr i8, ptr %15, i32 145428
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i291.i) #12
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i293.i = getelementptr i8, ptr %17, i32 161796
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i293.i) #12
  %18 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i295.i = getelementptr i8, ptr %19, i32 194580
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i295.i) #12
  %20 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i297.i = getelementptr i8, ptr %21, i32 169988
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i297.i) #12
  %22 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i299.i = getelementptr i8, ptr %23, i32 153604
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i299.i) #12
  %24 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i301.i = getelementptr i8, ptr %25, i32 14336
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i301.i) #12
  %26 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i303.i = getelementptr i8, ptr %27, i32 178180
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i303.i) #12
  %28 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i305.i = getelementptr i8, ptr %29, i32 186372
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i305.i) #12
  %30 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i307.i = getelementptr i8, ptr %31, i32 254016
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i307.i) #12
  %info.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 2
  %32 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info.i.i, align 4
  %hwcg.i.i = getelementptr inbounds %struct.adreno_info, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %hwcg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hwcg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %entry.a6xx_set_hwcg.exit.i_crit_edge, label %if.end.i.i

entry.a6xx_set_hwcg.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_set_hwcg.exit.i

if.end.i.i:                                       ; preds = %entry
  %revn.i.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %36 = ptrtoint ptr %revn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %revn.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 630, i32 %37)
  %cmp.i.not.i.i = icmp eq i32 %37, 630
  %..i.i = select i1 %cmp.i.not.i.i, i32 -1968657918, i32 -1968657790
  %38 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 696
  %call.i.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %..i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, %..i.i
  br i1 %cmp.i.i, label %if.end.i.i.a6xx_set_hwcg.exit.i_crit_edge, label %if.end14.i.i

if.end.i.i.a6xx_set_hwcg.exit.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_set_hwcg.exit.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  %mmio.i.i.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 3
  %40 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %41, i32 512
  %call.i.i.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i.i.i) #12
  %and.i.i.i = and i32 %call.i.i.i.i, -2
  %42 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %43, i32 512
  tail call void @msm_writel(i32 noundef %and.i.i.i, ptr noundef %add.ptr.i2.i.i.i) #12
  %44 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info.i.i, align 4
  %hwcg169.i.i = getelementptr inbounds %struct.adreno_info, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %hwcg169.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hwcg169.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool17.not10.i.i = icmp eq i32 %49, 0
  br i1 %tobool17.not10.i.i, label %if.end14.i.i.for.end.i.i_crit_edge, label %if.end14.i.i.cond.end.i.i_crit_edge

if.end14.i.i.cond.end.i.i_crit_edge:              ; preds = %if.end14.i.i
  br label %cond.end.i.i

if.end14.i.i.for.end.i.i_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

cond.end.i.i:                                     ; preds = %cond.end.i.i.cond.end.i.i_crit_edge, %if.end14.i.i.cond.end.i.i_crit_edge
  %50 = phi i32 [ %61, %cond.end.i.i.cond.end.i.i_crit_edge ], [ %49, %if.end14.i.i.cond.end.i.i_crit_edge ]
  %51 = phi ptr [ %59, %cond.end.i.i.cond.end.i.i_crit_edge ], [ %47, %if.end14.i.i.cond.end.i.i_crit_edge ]
  %i.011.i.i = phi i32 [ %inc.i.i, %cond.end.i.i.cond.end.i.i_crit_edge ], [ 0, %if.end14.i.i.cond.end.i.i_crit_edge ]
  %value.i.i = getelementptr %struct.adreno_reglist, ptr %51, i32 %i.011.i.i, i32 1
  %52 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %value.i.i, align 4
  %54 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i.i, align 8
  %shl.i.i.i = shl i32 %50, 2
  %add.ptr.i2.i.i = getelementptr i8, ptr %55, i32 %shl.i.i.i
  tail call void @msm_writel(i32 noundef %53, ptr noundef %add.ptr.i2.i.i) #12
  %inc.i.i = add i32 %i.011.i.i, 1
  %56 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %info.i.i, align 4
  %hwcg16.i.i = getelementptr inbounds %struct.adreno_info, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %hwcg16.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hwcg16.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.adreno_reglist, ptr %59, i32 %inc.i.i
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i, align 4
  %tobool17.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool17.not.i.i, label %cond.end.i.i.for.end.i.i_crit_edge, label %cond.end.i.i.cond.end.i.i_crit_edge

cond.end.i.i.cond.end.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.end.i.i.for.end.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cond.end.i.i.for.end.i.i_crit_edge, %if.end14.i.i.for.end.i.i_crit_edge
  %62 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr.i.i4.i.i = getelementptr i8, ptr %63, i32 512
  %call.i.i5.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i4.i.i) #12
  %or1.i.i.i = or i32 %call.i.i5.i.i, 1
  %64 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr.i2.i6.i.i = getelementptr i8, ptr %65, i32 512
  tail call void @msm_writel(i32 noundef %or1.i.i.i, ptr noundef %add.ptr.i2.i6.i.i) #12
  %66 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i8.i.i = getelementptr i8, ptr %67, i32 696
  tail call void @msm_writel(i32 noundef %..i.i, ptr noundef %add.ptr.i8.i.i) #12
  br label %a6xx_set_hwcg.exit.i

a6xx_set_hwcg.exit.i:                             ; preds = %for.end.i.i, %if.end.i.i.a6xx_set_hwcg.exit.i_crit_edge, %entry.a6xx_set_hwcg.exit.i_crit_edge
  %revn.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %68 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %revn.i.i, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %69, label %adreno_is_a650_family.exit.i [
    i32 680, label %a6xx_set_hwcg.exit.i.if.then.i_crit_edge
    i32 640, label %a6xx_set_hwcg.exit.i.if.then.i_crit_edge8
    i32 650, label %a6xx_set_hwcg.exit.i.if.then.i_crit_edge9
    i32 620, label %a6xx_set_hwcg.exit.i.if.then.i_crit_edge10
    i32 660, label %a6xx_set_hwcg.exit.i.if.then.i_crit_edge11
  ]

a6xx_set_hwcg.exit.i.if.then.i_crit_edge11:       ; preds = %a6xx_set_hwcg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

a6xx_set_hwcg.exit.i.if.then.i_crit_edge10:       ; preds = %a6xx_set_hwcg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

a6xx_set_hwcg.exit.i.if.then.i_crit_edge9:        ; preds = %a6xx_set_hwcg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

a6xx_set_hwcg.exit.i.if.then.i_crit_edge8:        ; preds = %a6xx_set_hwcg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

a6xx_set_hwcg.exit.i.if.then.i_crit_edge:         ; preds = %a6xx_set_hwcg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

adreno_is_a650_family.exit.i:                     ; preds = %a6xx_set_hwcg.exit.i
  %rev.i.i.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %71 = ptrtoint ptr %rev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.unpack.i.i.i.i = load i32, ptr %rev.i.i.i.i, align 8
  %72 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i.i, 0
  %call.i.i.i310.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %72) #12
  br i1 %call.i.i.i310.i, label %adreno_is_a650_family.exit.i.if.then.i_crit_edge, label %adreno_is_a650_family.exit.i.if.end.i_crit_edge

adreno_is_a650_family.exit.i.if.end.i_crit_edge:  ; preds = %adreno_is_a650_family.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

adreno_is_a650_family.exit.i.if.then.i_crit_edge: ; preds = %adreno_is_a650_family.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %adreno_is_a650_family.exit.i.if.then.i_crit_edge, %a6xx_set_hwcg.exit.i.if.then.i_crit_edge, %a6xx_set_hwcg.exit.i.if.then.i_crit_edge8, %a6xx_set_hwcg.exit.i.if.then.i_crit_edge9, %a6xx_set_hwcg.exit.i.if.then.i_crit_edge10, %a6xx_set_hwcg.exit.i.if.then.i_crit_edge11
  %73 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i312.i = getelementptr i8, ptr %74, i32 61452
  tail call void @msm_writel(i32 noundef 464416, ptr noundef %add.ptr.i312.i) #12
  %75 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i314.i = getelementptr i8, ptr %76, i32 61456
  tail call void @msm_writel(i32 noundef 464416, ptr noundef %add.ptr.i314.i) #12
  %77 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i316.i = getelementptr i8, ptr %78, i32 61460
  tail call void @msm_writel(i32 noundef 464416, ptr noundef %add.ptr.i316.i) #12
  %79 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i318.i = getelementptr i8, ptr %80, i32 61464
  tail call void @msm_writel(i32 noundef 464416, ptr noundef %add.ptr.i318.i) #12
  %81 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i320.i = getelementptr i8, ptr %82, i32 61464
  tail call void @msm_writel(i32 noundef 464416, ptr noundef %add.ptr.i320.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %adreno_is_a650_family.exit.i.if.end.i_crit_edge
  %.sink530.i = phi i32 [ 68, %if.then.i ], [ 64, %adreno_is_a650_family.exit.i.if.end.i_crit_edge ]
  %83 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i324.i = getelementptr i8, ptr %84, i32 %.sink530.i
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i324.i) #12
  %85 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %revn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 630, i32 %86)
  %cmp.i326.not.i = icmp eq i32 %86, 630
  br i1 %cmp.i326.not.i, label %if.then9.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i328.i = getelementptr i8, ptr %88, i32 49320
  tail call void @msm_writel(i32 noundef 9, ptr noundef %add.ptr.i328.i) #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end.i.if.end10.i_crit_edge
  %89 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i330.i = getelementptr i8, ptr %90, i32 5164
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i330.i) #12
  %91 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i332.i = getelementptr i8, ptr %92, i32 14356
  tail call void @msm_writel(i32 noundef -64, ptr noundef %add.ptr.i332.i) #12
  %93 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i334.i = getelementptr i8, ptr %94, i32 14360
  tail call void @msm_writel(i32 noundef 131071, ptr noundef %add.ptr.i334.i) #12
  %95 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i336.i = getelementptr i8, ptr %96, i32 14372
  tail call void @msm_writel(i32 noundef -4096, ptr noundef %add.ptr.i336.i) #12
  %97 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i338.i = getelementptr i8, ptr %98, i32 14376
  tail call void @msm_writel(i32 noundef 131071, ptr noundef %add.ptr.i338.i) #12
  %99 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i340.i = getelementptr i8, ptr %100, i32 14364
  tail call void @msm_writel(i32 noundef -4096, ptr noundef %add.ptr.i340.i) #12
  %101 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i342.i = getelementptr i8, ptr %102, i32 14368
  tail call void @msm_writel(i32 noundef 131071, ptr noundef %add.ptr.i342.i) #12
  %103 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %revn.i.i, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %104, label %adreno_is_a650_family.exit349.i [
    i32 650, label %if.end10.i.if.end14.i_crit_edge
    i32 620, label %if.end10.i.if.end14.i_crit_edge12
    i32 660, label %if.end10.i.if.end14.i_crit_edge13
  ]

if.end10.i.if.end14.i_crit_edge13:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.end10.i.if.end14.i_crit_edge12:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

adreno_is_a650_family.exit349.i:                  ; preds = %if.end10.i
  %rev.i.i.i344.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %106 = ptrtoint ptr %rev.i.i.i344.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %.unpack.i.i.i345.i = load i32, ptr %rev.i.i.i344.i, align 8
  %107 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i345.i, 0
  %call.i.i.i346.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %107) #12
  br i1 %call.i.i.i346.i, label %adreno_is_a650_family.exit349.i.if.end14.i_crit_edge, label %if.then13.i

adreno_is_a650_family.exit349.i.if.end14.i_crit_edge: ; preds = %adreno_is_a650_family.exit349.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then13.i:                                      ; preds = %adreno_is_a650_family.exit349.i
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i351.i = getelementptr i8, ptr %109, i32 14380
  tail call void @msm_writel(i32 noundef 1048576, ptr noundef %add.ptr.i351.i) #12
  %110 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr5.i352.i = getelementptr i8, ptr %111, i32 14384
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5.i352.i) #12
  %gmem.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 3
  %112 = ptrtoint ptr %gmem.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %gmem.i, align 8
  %sub.i = add i32 %113, 1048575
  %114 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i354.i = getelementptr i8, ptr %115, i32 14388
  tail call void @msm_writel(i32 noundef %sub.i, ptr noundef %add.ptr.i354.i) #12
  %116 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr5.i355.i = getelementptr i8, ptr %117, i32 14392
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5.i355.i) #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %adreno_is_a650_family.exit349.i.if.end14.i_crit_edge, %if.end10.i.if.end14.i_crit_edge, %if.end10.i.if.end14.i_crit_edge12, %if.end10.i.if.end14.i_crit_edge13
  %118 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i357.i = getelementptr i8, ptr %119, i32 14432
  tail call void @msm_writel(i32 noundef 2052, ptr noundef %add.ptr.i357.i) #12
  %120 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i359.i = getelementptr i8, ptr %121, i32 14428
  tail call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr.i359.i) #12
  %122 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %revn.i.i, align 4
  %124 = zext i32 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %123, label %adreno_is_a650_family.exit370.i [
    i32 680, label %if.end14.i.if.end22.i_crit_edge
    i32 640, label %if.end14.i.if.end22.i_crit_edge14
    i32 650, label %if.end14.i.if.end22.i_crit_edge15
    i32 620, label %if.end14.i.if.end22.i_crit_edge16
    i32 660, label %if.end14.i.if.end22.i_crit_edge17
  ]

if.end14.i.if.end22.i_crit_edge17:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.end14.i.if.end22.i_crit_edge16:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.end14.i.if.end22.i_crit_edge15:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.end14.i.if.end22.i_crit_edge14:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.end14.i.if.end22.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

adreno_is_a650_family.exit370.i:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %rev.i.i.i365.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %125 = ptrtoint ptr %rev.i.i.i365.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.unpack.i.i.i366.i = load i32, ptr %rev.i.i.i365.i, align 8
  %126 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i366.i, 0
  %call.i.i.i367.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %126) #12
  %spec.select.i = select i1 %call.i.i.i367.i, i32 33554752, i32 16777408
  br label %if.end22.i

if.end22.i:                                       ; preds = %adreno_is_a650_family.exit370.i, %if.end14.i.if.end22.i_crit_edge, %if.end14.i.if.end22.i_crit_edge14, %if.end14.i.if.end22.i_crit_edge15, %if.end14.i.if.end22.i_crit_edge16, %if.end14.i.if.end22.i_crit_edge17
  %.sink.i = phi i32 [ 33554752, %if.end14.i.if.end22.i_crit_edge ], [ 33554752, %if.end14.i.if.end22.i_crit_edge14 ], [ 33554752, %if.end14.i.if.end22.i_crit_edge15 ], [ 33554752, %if.end14.i.if.end22.i_crit_edge16 ], [ 33554752, %if.end14.i.if.end22.i_crit_edge17 ], [ %spec.select.i, %adreno_is_a650_family.exit370.i ]
  %127 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i374.i = getelementptr i8, ptr %128, i32 8968
  tail call void @msm_writel(i32 noundef %.sink.i, ptr noundef %add.ptr.i374.i) #12
  %129 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i376.i = getelementptr i8, ptr %130, i32 8964
  tail call void @msm_writel(i32 noundef -2143275476, ptr noundef %add.ptr.i376.i) #12
  %131 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %revn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 660, i32 %132)
  %cmp.i.not.i378.i = icmp eq i32 %132, 660
  br i1 %cmp.i.not.i378.i, label %if.end22.i.if.then25.i_crit_edge, label %adreno_is_a660_family.exit.i

if.end22.i.if.then25.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i

adreno_is_a660_family.exit.i:                     ; preds = %if.end22.i
  %rev.i.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %133 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %.unpack.i.i.i = load i32, ptr %rev.i.i.i, align 8
  %134 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i, 0
  %call.i.i379.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %134) #12
  br i1 %call.i.i379.i, label %adreno_is_a660_family.exit.i.if.then25.i_crit_edge, label %adreno_is_a660_family.exit.i.if.end26.i_crit_edge

adreno_is_a660_family.exit.i.if.end26.i_crit_edge: ; preds = %adreno_is_a660_family.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

adreno_is_a660_family.exit.i.if.then25.i_crit_edge: ; preds = %adreno_is_a660_family.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i

if.then25.i:                                      ; preds = %adreno_is_a660_family.exit.i.if.then25.i_crit_edge, %if.end22.i.if.then25.i_crit_edge
  %135 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i381.i = getelementptr i8, ptr %136, i32 11472
  tail call void @msm_writel(i32 noundef 32, ptr noundef %add.ptr.i381.i) #12
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %adreno_is_a660_family.exit.i.if.end26.i_crit_edge
  %137 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i383.i = getelementptr i8, ptr %138, i32 8972
  tail call void @msm_writel(i32 noundef 128, ptr noundef %add.ptr.i383.i) #12
  %139 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %revn.i.i, align 4
  %141 = zext i32 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %140, label %lor.lhs.false36.i [
    i32 650, label %if.end26.i.if.end50.i_crit_edge
    i32 660, label %if.end26.i.if.end50.i_crit_edge18
    i32 680, label %if.end26.i.if.then39.i_crit_edge
    i32 640, label %if.end26.i.if.then39.i_crit_edge19
  ]

if.end26.i.if.then39.i_crit_edge19:               ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39.i

if.end26.i.if.then39.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39.i

if.end26.i.if.end50.i_crit_edge18:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

if.end26.i.if.end50.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

lor.lhs.false36.i:                                ; preds = %if.end26.i
  %rev.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %142 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %.unpack.i.i = load i32, ptr %rev.i.i, align 8
  %143 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call.i.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %143) #12
  br i1 %call.i.i, label %lor.lhs.false36.i.if.then39.i_crit_edge, label %if.else40.i

lor.lhs.false36.i.if.then39.i_crit_edge:          ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39.i

if.then39.i:                                      ; preds = %lor.lhs.false36.i.if.then39.i_crit_edge, %if.end26.i.if.then39.i_crit_edge, %if.end26.i.if.then39.i_crit_edge19
  br label %if.end50.i

if.else40.i:                                      ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #14
  %144 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %revn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 650, i32 %145)
  %switch.selectcmp.case1.i = icmp eq i32 %145, 650
  call void @__sanitizer_cov_trace_const_cmp4(i32 660, i32 %145)
  %switch.selectcmp.case2.i = icmp eq i32 %145, 660
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %146 = select i1 %switch.selectcmp.i, i32 3146240, i32 1572864
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else40.i, %if.then39.i, %if.end26.i.if.end50.i_crit_edge, %if.end26.i.if.end50.i_crit_edge18
  %.sink532.i = phi i32 [ 2097664, %if.then39.i ], [ 3146240, %if.end26.i.if.end50.i_crit_edge ], [ 3146240, %if.end26.i.if.end50.i_crit_edge18 ], [ %146, %if.else40.i ]
  %147 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i398.i = getelementptr i8, ptr %148, i32 161792
  tail call void @msm_writel(i32 noundef %.sink532.i, ptr noundef %add.ptr.i398.i) #12
  %149 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i410.i = getelementptr i8, ptr %150, i32 9780
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i410.i) #12
  %151 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i412.i = getelementptr i8, ptr %152, i32 5120
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i412.i) #12
  %153 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i414.i = getelementptr i8, ptr %154, i32 9024
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i414.i) #12
  %155 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %revn.i.i, align 4
  %157 = zext i32 %156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %156, label %lor.lhs.false.i.i [
    i32 618, label %if.end50.i.a6xx_set_ubwc_config.exit.i_crit_edge
    i32 650, label %if.end50.i.if.then9.i.i_crit_edge
  ]

if.end50.i.if.then9.i.i_crit_edge:                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i.i

if.end50.i.a6xx_set_ubwc_config.exit.i_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_set_ubwc_config.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %156)
  %cmp.i39.i.i = icmp ne i32 %156, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 680, i32 %156)
  %cmp2.i.i.i = icmp ne i32 %156, 680
  %tobool2.not.i.i = and i1 %cmp.i39.i.i, %cmp2.i.i.i
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 660, i32 %156)
  %cmp.i44.not.i.i = icmp eq i32 %156, 660
  br i1 %cmp.i44.not.i.i, label %lor.lhs.false.i.i.if.then9.i.i_crit_edge, label %lor.lhs.false.i.i.if.end10.i.i_crit_edge

lor.lhs.false.i.i.if.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i

lor.lhs.false.i.i.if.then9.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i.i

if.then9.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then9.i.i_crit_edge, %if.end50.i.if.then9.i.i_crit_edge
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then9.i.i, %lor.lhs.false.i.i.if.end10.i.i_crit_edge
  %lower_bit.0.i.i = phi i32 [ 3, %if.then9.i.i ], [ 2, %lor.lhs.false.i.i.if.end10.i.i_crit_edge ]
  %amsbc.1.i.i = phi i32 [ 16, %if.then9.i.i ], [ %spec.select.i.i, %lor.lhs.false.i.i.if.end10.i.i_crit_edge ]
  %rgb565_predicator.0.i.i = phi i32 [ 2048, %if.then9.i.i ], [ 0, %lor.lhs.false.i.i.if.end10.i.i_crit_edge ]
  %uavflagprd_inv.0.i.i = phi i32 [ 32, %if.then9.i.i ], [ 0, %lor.lhs.false.i.i.if.end10.i.i_crit_edge ]
  %rev.i.i416.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %158 = ptrtoint ptr %rev.i.i416.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %.unpack.i.i417.i = load i32, ptr %rev.i.i416.i, align 8
  %159 = insertvalue [1 x i32] undef, i32 %.unpack.i.i417.i, 0
  %call.i.i418.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %159) #12
  br i1 %call.i.i418.i, label %if.then13.i.i, label %if.end10.i.i.if.end14.i421.i_crit_edge

if.end10.i.i.if.end14.i421.i_crit_edge:           ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i421.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i421.i

if.end14.i421.i:                                  ; preds = %if.then13.i.i, %if.end10.i.i.if.end14.i421.i_crit_edge
  %lower_bit.1.i.i = phi i32 [ 1, %if.then13.i.i ], [ %lower_bit.0.i.i, %if.end10.i.i.if.end14.i421.i_crit_edge ]
  %amsbc.2.i.i = phi i32 [ 16, %if.then13.i.i ], [ %amsbc.1.i.i, %if.end10.i.i.if.end14.i421.i_crit_edge ]
  %rgb565_predicator.1.i.i = phi i32 [ 2048, %if.then13.i.i ], [ %rgb565_predicator.0.i.i, %if.end10.i.i.if.end14.i421.i_crit_edge ]
  %uavflagprd_inv.1.i.i = phi i32 [ 32, %if.then13.i.i ], [ %uavflagprd_inv.0.i.i, %if.end10.i.i.if.end14.i421.i_crit_edge ]
  %shl16.i.i = shl nuw nsw i32 %lower_bit.1.i.i, 1
  %or.i.i = or i32 %shl16.i.i, %amsbc.2.i.i
  %or17.i.i = or i32 %or.i.i, %rgb565_predicator.1.i.i
  %160 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i420.i = getelementptr i8, ptr %161, i32 145440
  tail call void @msm_writel(i32 noundef %or17.i.i, ptr noundef %add.ptr.i.i420.i) #12
  %162 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i48.i.i = getelementptr i8, ptr %163, i32 186384
  tail call void @msm_writel(i32 noundef %shl16.i.i, ptr noundef %add.ptr.i48.i.i) #12
  %or21.i.i = or i32 %uavflagprd_inv.1.i.i, %shl16.i.i
  %164 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i50.i.i = getelementptr i8, ptr %165, i32 178184
  tail call void @msm_writel(i32 noundef %or21.i.i, ptr noundef %add.ptr.i50.i.i) #12
  %shl22.i.i = shl nuw nsw i32 %lower_bit.1.i.i, 21
  %166 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i52.i.i = getelementptr i8, ptr %167, i32 14340
  tail call void @msm_writel(i32 noundef %shl22.i.i, ptr noundef %add.ptr.i52.i.i) #12
  br label %a6xx_set_ubwc_config.exit.i

a6xx_set_ubwc_config.exit.i:                      ; preds = %if.end14.i421.i, %if.end50.i.a6xx_set_ubwc_config.exit.i_crit_edge
  %168 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i423.i = getelementptr i8, ptr %169, i32 124
  tail call void @msm_writel(i32 noundef 1075838975, ptr noundef %add.ptr.i423.i) #12
  %170 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i425.i = getelementptr i8, ptr %171, i32 14436
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i425.i) #12
  %172 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %revn.i.i, align 4
  %174 = zext i32 %173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %173, label %adreno_is_a650_family.exit432.i [
    i32 650, label %a6xx_set_ubwc_config.exit.i.if.then54.i_crit_edge
    i32 620, label %a6xx_set_ubwc_config.exit.i.if.then54.i_crit_edge20
    i32 660, label %a6xx_set_ubwc_config.exit.i.if.then54.i_crit_edge21
  ]

a6xx_set_ubwc_config.exit.i.if.then54.i_crit_edge21: ; preds = %a6xx_set_ubwc_config.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54.i

a6xx_set_ubwc_config.exit.i.if.then54.i_crit_edge20: ; preds = %a6xx_set_ubwc_config.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54.i

a6xx_set_ubwc_config.exit.i.if.then54.i_crit_edge: ; preds = %a6xx_set_ubwc_config.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54.i

adreno_is_a650_family.exit432.i:                  ; preds = %a6xx_set_ubwc_config.exit.i
  %rev.i.i.i427.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %175 = ptrtoint ptr %rev.i.i.i427.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %.unpack.i.i.i428.i = load i32, ptr %rev.i.i.i427.i, align 8
  %176 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i428.i, 0
  %call.i.i.i429.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %176) #12
  br i1 %call.i.i.i429.i, label %adreno_is_a650_family.exit432.i.if.then54.i_crit_edge, label %adreno_is_a650_family.exit432.i.if.end55.i_crit_edge

adreno_is_a650_family.exit432.i.if.end55.i_crit_edge: ; preds = %adreno_is_a650_family.exit432.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

adreno_is_a650_family.exit432.i.if.then54.i_crit_edge: ; preds = %adreno_is_a650_family.exit432.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54.i

if.then54.i:                                      ; preds = %adreno_is_a650_family.exit432.i.if.then54.i_crit_edge, %a6xx_set_ubwc_config.exit.i.if.then54.i_crit_edge, %a6xx_set_ubwc_config.exit.i.if.then54.i_crit_edge20, %a6xx_set_ubwc_config.exit.i.if.then54.i_crit_edge21
  %177 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i434.i = getelementptr i8, ptr %178, i32 186400
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i434.i) #12
  %179 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i436.i = getelementptr i8, ptr %180, i32 186404
  tail call void @msm_writel(i32 noundef 1071669236, ptr noundef %add.ptr.i436.i) #12
  %181 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i438.i = getelementptr i8, ptr %182, i32 186408
  tail call void @msm_writel(i32 noundef 1067510766, ptr noundef %add.ptr.i438.i) #12
  %183 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i440.i = getelementptr i8, ptr %184, i32 186412
  tail call void @msm_writel(i32 noundef 1062310893, ptr noundef %add.ptr.i440.i) #12
  %185 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i442.i = getelementptr i8, ptr %186, i32 186416
  tail call void @msm_writel(i32 noundef 1057113072, ptr noundef %add.ptr.i442.i) #12
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then54.i, %adreno_is_a650_family.exit432.i.if.end55.i_crit_edge
  %187 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %revn.i.i, align 4
  %189 = zext i32 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %188, label %adreno_is_a660_family.exit.i.i [
    i32 650, label %if.end55.i.if.end7.i.i_crit_edge
    i32 660, label %if.end55.i.if.then6.i.i_crit_edge
  ]

if.end55.i.if.then6.i.i_crit_edge:                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.i.i

if.end55.i.if.end7.i.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

adreno_is_a660_family.exit.i.i:                   ; preds = %if.end55.i
  %rev.i.i.i444.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %190 = ptrtoint ptr %rev.i.i.i444.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %.unpack.i.i.i445.i = load i32, ptr %rev.i.i.i444.i, align 8
  %191 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i445.i, 0
  %call.i.i.i446.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %191) #12
  br i1 %call.i.i.i446.i, label %adreno_is_a660_family.exit.i.i.if.then6.i.i_crit_edge, label %adreno_is_a660_family.exit.i.i.if.end7.i.i_crit_edge

adreno_is_a660_family.exit.i.i.if.end7.i.i_crit_edge: ; preds = %adreno_is_a660_family.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

adreno_is_a660_family.exit.i.i.if.then6.i.i_crit_edge: ; preds = %adreno_is_a660_family.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.i.i

if.then6.i.i:                                     ; preds = %adreno_is_a660_family.exit.i.i.if.then6.i.i_crit_edge, %if.end55.i.if.then6.i.i_crit_edge
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then6.i.i, %adreno_is_a660_family.exit.i.i.if.end7.i.i_crit_edge, %if.end55.i.if.end7.i.i_crit_edge
  %regs.0.i.i = phi ptr [ @a660_protect, %if.then6.i.i ], [ @a6xx_protect, %adreno_is_a660_family.exit.i.i.if.end7.i.i_crit_edge ], [ @a650_protect, %if.end55.i.if.end7.i.i_crit_edge ]
  %count.0.i.i = phi i32 [ 40, %if.then6.i.i ], [ 31, %adreno_is_a660_family.exit.i.i.if.end7.i.i_crit_edge ], [ 38, %if.end55.i.if.end7.i.i_crit_edge ]
  %count_max.0.i.i = phi i32 [ 8700, %if.then6.i.i ], [ 8636, %adreno_is_a660_family.exit.i.i.if.end7.i.i_crit_edge ], [ 8700, %if.end55.i.if.end7.i.i_crit_edge ]
  %192 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i448.i = getelementptr i8, ptr %193, i32 8508
  tail call void @msm_writel(i32 noundef 11, ptr noundef %add.ptr.i.i448.i) #12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end7.i.i
  %i.028.i.i = phi i32 [ 0, %if.end7.i.i ], [ %inc.i451.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i449.i = getelementptr i32, ptr %regs.0.i.i, i32 %i.028.i.i
  %194 = ptrtoint ptr %arrayidx.i449.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx.i449.i, align 4
  %196 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mmio.i.i, align 8
  %add.i.i.i = shl i32 %i.028.i.i, 2
  %shl.i.i450.i = add nuw nsw i32 %add.i.i.i, 8512
  %add.ptr.i22.i.i = getelementptr i8, ptr %197, i32 %shl.i.i450.i
  tail call void @msm_writel(i32 noundef %195, ptr noundef %add.ptr.i22.i.i) #12
  %inc.i451.i = add nuw nsw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i451.i, %count.0.i.i
  br i1 %exitcond.not.i.i, label %a6xx_set_cp_protect.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

a6xx_set_cp_protect.exit.i:                       ; preds = %for.body.i.i
  %arrayidx11.i.i = getelementptr i32, ptr %regs.0.i.i, i32 %count.0.i.i
  %198 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx11.i.i, align 4
  %200 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i26.i.i = getelementptr i8, ptr %201, i32 %count_max.0.i.i
  tail call void @msm_writel(i32 noundef %199, ptr noundef %add.ptr.i26.i.i) #12
  %202 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %revn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 660, i32 %203)
  %cmp.i.not.i454.i = icmp eq i32 %203, 660
  br i1 %cmp.i.not.i454.i, label %a6xx_set_cp_protect.exit.i.if.then58.i_crit_edge, label %adreno_is_a660_family.exit460.i

a6xx_set_cp_protect.exit.i.if.then58.i_crit_edge: ; preds = %a6xx_set_cp_protect.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58.i

adreno_is_a660_family.exit460.i:                  ; preds = %a6xx_set_cp_protect.exit.i
  %rev.i.i455.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %204 = ptrtoint ptr %rev.i.i455.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %.unpack.i.i456.i = load i32, ptr %rev.i.i455.i, align 8
  %205 = insertvalue [1 x i32] undef, i32 %.unpack.i.i456.i, 0
  %call.i.i457.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %205) #12
  br i1 %call.i.i457.i, label %adreno_is_a660_family.exit460.i.if.then58.i_crit_edge, label %adreno_is_a660_family.exit460.i.if.end59.i_crit_edge

adreno_is_a660_family.exit460.i.if.end59.i_crit_edge: ; preds = %adreno_is_a660_family.exit460.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

adreno_is_a660_family.exit460.i.if.then58.i_crit_edge: ; preds = %adreno_is_a660_family.exit460.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58.i

if.then58.i:                                      ; preds = %adreno_is_a660_family.exit460.i.if.then58.i_crit_edge, %a6xx_set_cp_protect.exit.i.if.then58.i_crit_edge
  %206 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i462.i = getelementptr i8, ptr %207, i32 8452
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i462.i) #12
  %208 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i464.i = getelementptr i8, ptr %209, i32 68
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i464.i) #12
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then58.i, %adreno_is_a660_family.exit460.i.if.end59.i_crit_edge
  %210 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %revn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 660, i32 %211)
  %cmp.i466.not.i = icmp eq i32 %211, 660
  br i1 %cmp.i466.not.i, label %if.then62.i, label %if.end59.i.if.end63.i_crit_edge

if.end59.i.if.end63.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63.i

if.then62.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  %212 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i469.i = getelementptr i8, ptr %213, i32 14576
  tail call void @msm_writel(i32 noundef 420102, ptr noundef %add.ptr.i469.i) #12
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then62.i, %if.end59.i.if.end63.i_crit_edge
  %hw_apriv.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 45
  %214 = ptrtoint ptr %hw_apriv.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %hw_apriv.i, align 1, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool64.not.i = icmp eq i8 %215, 0
  br i1 %tobool64.not.i, label %if.end63.i.if.end66.i_crit_edge, label %if.then65.i

if.end63.i.if.end66.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.i

if.then65.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  %216 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i471.i = getelementptr i8, ptr %217, i32 8464
  tail call void @msm_writel(i32 noundef 110, ptr noundef %add.ptr.i471.i) #12
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then65.i, %if.end63.i.if.end66.i_crit_edge
  %218 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i473.i = getelementptr i8, ptr %219, i32 224
  tail call void @msm_writel(i32 noundef 64021058, ptr noundef %add.ptr.i473.i) #12
  %call67.i = tail call i32 @adreno_hw_init(ptr noundef %gpu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end70.i, label %if.end66.i.out.i_crit_edge

if.end66.i.out.i_crit_edge:                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end70.i:                                       ; preds = %if.end66.i
  %sqe_bo.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 1
  %220 = ptrtoint ptr %sqe_bo.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %sqe_bo.i.i, align 8
  %tobool.not.i474.i = icmp eq ptr %221, null
  br i1 %tobool.not.i474.i, label %if.then.i.i, label %if.end70.i.a6xx_ucode_init.exit.thread.i_crit_edge

if.end70.i.a6xx_ucode_init.exit.thread.i_crit_edge: ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_ucode_init.exit.thread.i

if.then.i.i:                                      ; preds = %if.end70.i
  %fw.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 8
  %222 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %fw.i.i, align 4
  %sqe_iova.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 2
  %call.i475.i = tail call ptr @adreno_fw_create_bo(ptr noundef %gpu, ptr noundef %223, ptr noundef %sqe_iova.i.i) #12
  %224 = ptrtoint ptr %sqe_bo.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call.i475.i, ptr %sqe_bo.i.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call.i475.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %a6xx_ucode_init.exit.i, label %if.end.i477.i

if.end.i477.i:                                    ; preds = %if.then.i.i
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %call.i475.i, ptr noundef nonnull @.str.16) #12
  %225 = ptrtoint ptr %sqe_bo.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %sqe_bo.i.i, align 8
  %227 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %info.i.i, align 4
  %fw.i.i.i = getelementptr inbounds %struct.adreno_info, ptr %228, i32 0, i32 3
  %229 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %fw.i.i.i, align 4
  %call.i.i476.i = tail call ptr @msm_gem_get_vaddr(ptr noundef %226) #12
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i476.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end.i477.i.if.then14.i.i_crit_edge, label %if.end.i.i.i

if.end.i477.i.if.then14.i.i_crit_edge:            ; preds = %if.end.i477.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i.i

if.end.i.i.i:                                     ; preds = %if.end.i477.i
  %call3.i.i.i = tail call i32 @strcmp(ptr noundef %230, ptr noundef nonnull dereferenceable(12) @.str.17) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i, label %if.else.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %231 = ptrtoint ptr %call.i.i476.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %call.i.i476.i, align 4
  %and.i.i478.i = and i32 %232, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.i.i478.i)
  %cmp.i40.i.i = icmp eq i32 %and.i.i478.i, 10
  br i1 %cmp.i40.i.i, label %land.lhs.true.i.i.i, label %if.then4.i.i.i.lor.lhs.false.i.i.i_crit_edge

if.then4.i.i.i.lor.lhs.false.i.i.i_crit_edge:     ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then4.i.i.i
  %arrayidx6.i.i.i = getelementptr i32, ptr %call.i.i476.i, i32 2
  %233 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx6.i.i.i, align 4
  %and7.i.i.i = and i32 %234, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %cmp8.not.i.i.i = icmp eq i32 %and7.i.i.i, 0
  br i1 %cmp8.not.i.i.i, label %land.lhs.true.i.i.i.lor.lhs.false.i.i.i_crit_edge, label %land.lhs.true.i.i.i.if.then12.i.i.i_crit_edge

land.lhs.true.i.i.i.if.then12.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i.i.i

land.lhs.true.i.i.i.lor.lhs.false.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i.i.lor.lhs.false.i.i.i_crit_edge, %if.then4.i.i.i.lor.lhs.false.i.i.i_crit_edge
  %and10.i.i.i = and i32 %232, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 399, i32 %and10.i.i.i)
  %cmp11.i.i.i = icmp ugt i32 %and10.i.i.i, 399
  br i1 %cmp11.i.i.i, label %lor.lhs.false.i.i.i.if.then12.i.i.i_crit_edge, label %if.end13.i.i.i

lor.lhs.false.i.i.i.if.then12.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i.i.i

if.then12.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.if.then12.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then12.i.i.i_crit_edge
  %has_whereami.i.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 8
  %235 = ptrtoint ptr %has_whereami.i.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 1, ptr %has_whereami.i.i.i, align 4
  br label %a6xx_ucode_check_version.exit.thread44.i.i

if.end13.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %236 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %pdev.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.platform_device, ptr %237, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.18, i32 noundef %and10.i.i.i, i32 noundef 400) #12
  br label %a6xx_ucode_check_version.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %call16.i.i.i = tail call i32 @strcmp(ptr noundef %230, ptr noundef nonnull dereferenceable(12) @.str.19) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %call16.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %if.then18.i.i.i, label %if.else28.i.i.i

if.then18.i.i.i:                                  ; preds = %if.else.i.i.i
  %238 = ptrtoint ptr %call.i.i476.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %call.i.i476.i, align 4
  %and20.i.i.i = and i32 %239, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 148, i32 %and20.i.i.i)
  %cmp21.i.i.i = icmp ugt i32 %and20.i.i.i, 148
  br i1 %cmp21.i.i.i, label %if.then18.i.i.i.a6xx_ucode_check_version.exit.thread44.i.i_crit_edge, label %if.end23.i.i.i

if.then18.i.i.i.a6xx_ucode_check_version.exit.thread44.i.i_crit_edge: ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_ucode_check_version.exit.thread44.i.i

if.end23.i.i.i:                                   ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev24.i.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %240 = ptrtoint ptr %pdev24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %pdev24.i.i.i, align 8
  %dev25.i.i.i = getelementptr inbounds %struct.platform_device, ptr %241, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev25.i.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, i32 noundef %and20.i.i.i, i32 noundef 149) #12
  br label %a6xx_ucode_check_version.exit.i.i

if.else28.i.i.i:                                  ; preds = %if.else.i.i.i
  %call29.i.i.i = tail call i32 @strcmp(ptr noundef %230, ptr noundef nonnull dereferenceable(12) @.str.21) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %call29.i.i.i, 0
  br i1 %tobool30.not.i.i.i, label %if.else28.i.i.i.a6xx_ucode_check_version.exit.thread44.i.i_crit_edge, label %if.else32.i.i.i

if.else28.i.i.i.a6xx_ucode_check_version.exit.thread44.i.i_crit_edge: ; preds = %if.else28.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_ucode_check_version.exit.thread44.i.i

if.else32.i.i.i:                                  ; preds = %if.else28.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev33.i.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %242 = ptrtoint ptr %pdev33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %pdev33.i.i.i, align 8
  %dev34.i.i.i = getelementptr inbounds %struct.platform_device, ptr %243, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev34.i.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.22) #12
  br label %a6xx_ucode_check_version.exit.i.i

a6xx_ucode_check_version.exit.thread44.i.i:       ; preds = %if.else28.i.i.i.a6xx_ucode_check_version.exit.thread44.i.i_crit_edge, %if.then18.i.i.i.a6xx_ucode_check_version.exit.thread44.i.i_crit_edge, %if.then12.i.i.i
  tail call void @msm_gem_put_vaddr(ptr noundef %226) #12
  br label %a6xx_ucode_init.exit.thread.i

a6xx_ucode_check_version.exit.i.i:                ; preds = %if.else32.i.i.i, %if.end23.i.i.i, %if.end13.i.i.i
  tail call void @msm_gem_put_vaddr(ptr noundef %226) #12
  br label %if.then14.i.i

if.then14.i.i:                                    ; preds = %a6xx_ucode_check_version.exit.i.i, %if.end.i477.i.if.then14.i.i_crit_edge
  %244 = ptrtoint ptr %sqe_bo.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %sqe_bo.i.i, align 8
  %aspace.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %246 = ptrtoint ptr %aspace.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %aspace.i.i, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef %245, ptr noundef %247) #12
  %248 = ptrtoint ptr %sqe_bo.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %sqe_bo.i.i, align 8
  %tobool.not.i41.i.i = icmp eq ptr %249, null
  br i1 %tobool.not.i41.i.i, label %if.then14.i.i.a6xx_ucode_init.exit.thread526.i_crit_edge, label %if.then.i.i.i

if.then14.i.i.a6xx_ucode_init.exit.thread526.i_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_ucode_init.exit.thread526.i

if.then.i.i.i:                                    ; preds = %if.then14.i.i
  %call.i.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %249, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !207
  tail call void @llvm.prefetch.p0(ptr nonnull %249, i32 1, i32 3, i32 1) #12
  %250 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %249, ptr nonnull %249, i32 1, ptr nonnull elementtype(i32) %249) #12, !srcloc !208
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %250, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i.i:                          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i.a6xx_ucode_init.exit.thread526.i_crit_edge, label %if.then10.i.i.i.i.i.i.i.i, !prof !209

if.end5.i.i.i.i.i.i.i.i.a6xx_ucode_init.exit.thread526.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_ucode_init.exit.thread526.i

if.then10.i.i.i.i.i.i.i.i:                        ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %249, i32 noundef 3) #12
  br label %a6xx_ucode_init.exit.thread526.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !210
  tail call void @drm_gem_object_free(ptr noundef nonnull %249) #12
  br label %a6xx_ucode_init.exit.thread526.i

a6xx_ucode_init.exit.thread526.i:                 ; preds = %if.then.i.i.i.i.i, %if.then10.i.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.i.a6xx_ucode_init.exit.thread526.i_crit_edge, %if.then14.i.i.a6xx_ucode_init.exit.thread526.i_crit_edge
  %251 = ptrtoint ptr %sqe_bo.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr null, ptr %sqe_bo.i.i, align 8
  br label %out.i

a6xx_ucode_init.exit.thread.i:                    ; preds = %a6xx_ucode_check_version.exit.thread44.i.i, %if.end70.i.a6xx_ucode_init.exit.thread.i_crit_edge
  %sqe_iova20.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 2
  %252 = ptrtoint ptr %sqe_iova20.i.i to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %sqe_iova20.i.i, align 8
  %conv.i.i.i = trunc i64 %253 to i32
  %254 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i480.i = getelementptr i8, ptr %255, i32 8384
  tail call void @msm_writel(i32 noundef %conv.i.i.i, ptr noundef %add.ptr.i.i480.i) #12
  %shr.i.i.i = lshr i64 %253, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %256 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %257, i32 8388
  tail call void @msm_writel(i32 noundef %conv2.i.i.i, ptr noundef %add.ptr5.i.i.i) #12
  %rb.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 13
  %258 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %rb.i, align 4
  %iova.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %259, i32 0, i32 10
  %260 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %iova.i, align 8
  %conv.i481.i = trunc i64 %261 to i32
  %262 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i483.i = getelementptr i8, ptr %263, i32 8192
  tail call void @msm_writel(i32 noundef %conv.i481.i, ptr noundef %add.ptr.i483.i) #12
  %shr.i484.i = lshr i64 %261, 32
  %conv2.i485.i = trunc i64 %shr.i484.i to i32
  %264 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr5.i486.i = getelementptr i8, ptr %265, i32 8196
  tail call void @msm_writel(i32 noundef %conv2.i485.i, ptr noundef %add.ptr5.i486.i) #12
  %266 = ptrtoint ptr %hw_apriv.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %hw_apriv.i, align 1, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool76.not.i = icmp eq i8 %267, 0
  %268 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i490.i = getelementptr i8, ptr %269, i32 8200
  %..i = select i1 %tobool76.not.i, i32 134218252, i32 524
  tail call void @msm_writel(i32 noundef %..i, ptr noundef %add.ptr.i490.i) #12
  %270 = ptrtoint ptr %hw_apriv.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %hw_apriv.i, align 1, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool88.not.i = icmp eq i8 %271, 0
  br i1 %tobool88.not.i, label %lor.lhs.false90.i, label %a6xx_ucode_init.exit.thread.i.if.then93.i_crit_edge

a6xx_ucode_init.exit.thread.i.if.then93.i_crit_edge: ; preds = %a6xx_ucode_init.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then93.i

a6xx_ucode_init.exit.i:                           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %272 = ptrtoint ptr %call.i475.i to i32
  %273 = ptrtoint ptr %sqe_bo.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr null, ptr %sqe_bo.i.i, align 8
  %pdev.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %274 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %275, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.15, i32 noundef %272) #12
  br label %out.i

lor.lhs.false90.i:                                ; preds = %a6xx_ucode_init.exit.thread.i
  %has_whereami.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 8
  %276 = ptrtoint ptr %has_whereami.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %has_whereami.i, align 4, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool91.not.i = icmp eq i8 %277, 0
  br i1 %tobool91.not.i, label %lor.lhs.false90.i.if.end112.i_crit_edge, label %lor.lhs.false90.i.if.then93.i_crit_edge

lor.lhs.false90.i.if.then93.i_crit_edge:          ; preds = %lor.lhs.false90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then93.i

lor.lhs.false90.i.if.end112.i_crit_edge:          ; preds = %lor.lhs.false90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112.i

if.then93.i:                                      ; preds = %lor.lhs.false90.i.if.then93.i_crit_edge, %a6xx_ucode_init.exit.thread.i.if.then93.i_crit_edge
  %shadow_bo.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 5
  %278 = ptrtoint ptr %shadow_bo.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %shadow_bo.i, align 8
  %tobool94.not.i = icmp eq ptr %279, null
  br i1 %tobool94.not.i, label %if.then95.i, label %if.then93.i.if.end105.i_crit_edge

if.then93.i.if.end105.i_crit_edge:                ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105.i

if.then95.i:                                      ; preds = %if.then93.i
  %dev.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %280 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dev.i, align 4
  %nr_rings.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %282 = ptrtoint ptr %nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %nr_rings.i, align 4
  %mul.i = shl i32 %283, 2
  %aspace.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %284 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %aspace.i, align 8
  %shadow_iova.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 6
  %call97.i = tail call ptr @msm_gem_kernel_new(ptr noundef %281, i32 noundef %mul.i, i32 noundef 537001984, ptr noundef %285, ptr noundef %shadow_bo.i, ptr noundef %shadow_iova.i) #12
  %shadow.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 7
  %286 = ptrtoint ptr %shadow.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %call97.i, ptr %shadow.i, align 8
  %cmp.i491.i = icmp ugt ptr %call97.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i491.i, label %if.then100.i, label %if.end103.i

if.then100.i:                                     ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  %287 = ptrtoint ptr %call97.i to i32
  br label %hw_init.exit

if.end103.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  %288 = ptrtoint ptr %shadow_bo.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %shadow_bo.i, align 8
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %289, ptr noundef nonnull @.str.9) #12
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.end103.i, %if.then93.i.if.end105.i_crit_edge
  %shadow_iova106.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 6
  %290 = ptrtoint ptr %shadow_iova106.i to i32
  call void @__asan_load8_noabort(i32 %290)
  %291 = load i64, ptr %shadow_iova106.i, align 8
  %292 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %rb.i, align 4
  %id.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %id.i, align 4
  %mul109.i = shl i32 %295, 2
  %conv110.i = zext i32 %mul109.i to i64
  %add111.i = add i64 %291, %conv110.i
  %conv.i492.i = trunc i64 %add111.i to i32
  %296 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i494.i = getelementptr i8, ptr %297, i32 8208
  tail call void @msm_writel(i32 noundef %conv.i492.i, ptr noundef %add.ptr.i494.i) #12
  %shr.i495.i = lshr i64 %add111.i, 32
  %conv2.i496.i = trunc i64 %shr.i495.i to i32
  %298 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr5.i497.i = getelementptr i8, ptr %299, i32 8212
  tail call void @msm_writel(i32 noundef %conv2.i496.i, ptr noundef %add.ptr5.i497.i) #12
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.end105.i, %lor.lhs.false90.i.if.end112.i_crit_edge
  %300 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %rb.i, align 4
  %cur_ring.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 3
  %302 = ptrtoint ptr %cur_ring.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %301, ptr %cur_ring.i, align 8
  %cur_ctx_seqno.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 15
  %303 = ptrtoint ptr %cur_ctx_seqno.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 0, ptr %cur_ctx_seqno.i, align 8
  %304 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i499.i = getelementptr i8, ptr %305, i32 8224
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i499.i) #12
  %306 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %rb.i, align 4
  tail call void @adreno_wait_ring(ptr noundef %307, i32 noundef 9) #12
  %next.i.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %307, i32 0, i32 6
  %308 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %next.i.i.i.i, align 8
  %end.i.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %307, i32 0, i32 4
  %310 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %end.i.i.i.i, align 8
  %cmp.i.i.i500.i = icmp eq ptr %309, %311
  br i1 %cmp.i.i.i500.i, label %if.then.i.i.i.i, label %if.end112.i.OUT_PKT7.exit.i.i_crit_edge

if.end112.i.OUT_PKT7.exit.i.i_crit_edge:          ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %307, i32 0, i32 3
  %312 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %start.i.i.i.i, align 4
  %314 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %313, ptr %next.i.i.i.i, align 8
  br label %OUT_PKT7.exit.i.i

OUT_PKT7.exit.i.i:                                ; preds = %if.then.i.i.i.i, %if.end112.i.OUT_PKT7.exit.i.i_crit_edge
  %315 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %next.i.i.i.i, align 8
  %incdec.ptr.i.i.i.i = getelementptr i32, ptr %316, i32 1
  store ptr %incdec.ptr.i.i.i.i, ptr %next.i.i.i.i, align 8
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 1892155400, ptr %316, align 4
  %318 = load ptr, ptr %next.i.i.i.i, align 8
  %319 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %end.i.i.i.i, align 8
  %cmp.i.i501.i = icmp eq ptr %318, %320
  br i1 %cmp.i.i501.i, label %if.then.i.i502.i, label %OUT_PKT7.exit.i.i.OUT_RING.exit.i.i_crit_edge

OUT_PKT7.exit.i.i.OUT_RING.exit.i.i_crit_edge:    ; preds = %OUT_PKT7.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit.i.i

if.then.i.i502.i:                                 ; preds = %OUT_PKT7.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %307, i32 0, i32 3
  %321 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %start.i.i.i, align 4
  %323 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %322, ptr %next.i.i.i.i, align 8
  br label %OUT_RING.exit.i.i

OUT_RING.exit.i.i:                                ; preds = %if.then.i.i502.i, %OUT_PKT7.exit.i.i.OUT_RING.exit.i.i_crit_edge
  %324 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %next.i.i.i.i, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %325, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %next.i.i.i.i, align 8
  %326 = ptrtoint ptr %325 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 47, ptr %325, align 4
  %327 = load ptr, ptr %next.i.i.i.i, align 8
  %328 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %end.i.i.i.i, align 8
  %cmp.i15.i.i = icmp eq ptr %327, %329
  br i1 %cmp.i15.i.i, label %if.then.i17.i.i, label %OUT_RING.exit.i.i.OUT_RING.exit19.i.i_crit_edge

OUT_RING.exit.i.i.OUT_RING.exit19.i.i_crit_edge:  ; preds = %OUT_RING.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit19.i.i

if.then.i17.i.i:                                  ; preds = %OUT_RING.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i16.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %307, i32 0, i32 3
  %330 = ptrtoint ptr %start.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %start.i16.i.i, align 4
  %332 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %331, ptr %next.i.i.i.i, align 8
  br label %OUT_RING.exit19.i.i

OUT_RING.exit19.i.i:                              ; preds = %if.then.i17.i.i, %OUT_RING.exit.i.i.OUT_RING.exit19.i.i_crit_edge
  %333 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %next.i.i.i.i, align 8
  %incdec.ptr.i18.i.i = getelementptr i32, ptr %334, i32 1
  store ptr %incdec.ptr.i18.i.i, ptr %next.i.i.i.i, align 8
  %335 = ptrtoint ptr %334 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 3, ptr %334, align 4
  %336 = load ptr, ptr %next.i.i.i.i, align 8
  %337 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %end.i.i.i.i, align 8
  %cmp.i22.i.i = icmp eq ptr %336, %338
  br i1 %cmp.i22.i.i, label %if.then.i24.i.i, label %OUT_RING.exit19.i.i.OUT_RING.exit26.i.i_crit_edge

OUT_RING.exit19.i.i.OUT_RING.exit26.i.i_crit_edge: ; preds = %OUT_RING.exit19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit26.i.i

if.then.i24.i.i:                                  ; preds = %OUT_RING.exit19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i23.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %307, i32 0, i32 3
  %339 = ptrtoint ptr %start.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %start.i23.i.i, align 4
  %341 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %340, ptr %next.i.i.i.i, align 8
  br label %OUT_RING.exit26.i.i

OUT_RING.exit26.i.i:                              ; preds = %if.then.i24.i.i, %OUT_RING.exit19.i.i.OUT_RING.exit26.i.i_crit_edge
  %342 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %next.i.i.i.i, align 8
  %incdec.ptr.i25.i.i = getelementptr i32, ptr %343, i32 1
  store ptr %incdec.ptr.i25.i.i, ptr %next.i.i.i.i, align 8
  %344 = ptrtoint ptr %343 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 536870912, ptr %343, align 4
  %345 = load ptr, ptr %next.i.i.i.i, align 8
  %346 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %end.i.i.i.i, align 8
  %cmp.i29.i.i = icmp eq ptr %345, %347
  br i1 %cmp.i29.i.i, label %if.then.i31.i.i, label %OUT_RING.exit26.i.i.OUT_RING.exit33.i.i_crit_edge

OUT_RING.exit26.i.i.OUT_RING.exit33.i.i_crit_edge: ; preds = %OUT_RING.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit33.i.i

if.then.i31.i.i:                                  ; preds = %OUT_RING.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i30.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %307, i32 0, i32 3
  %348 = ptrtoint ptr %start.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %start.i30.i.i, align 4
  %350 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr %349, ptr %next.i.i.i.i, align 8
  br label %OUT_RING.exit33.i.i

OUT_RING.exit33.i.i:                              ; preds = %if.then.i31.i.i, %OUT_RING.exit26.i.i.OUT_RING.exit33.i.i_crit_edge
  %351 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %next.i.i.i.i, align 8
  %incdec.ptr.i32.i.i = getelementptr i32, ptr %352, i32 1
  store ptr %incdec.ptr.i32.i.i, ptr %next.i.i.i.i, align 8
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 0, ptr %352, align 4
  %354 = load ptr, ptr %next.i.i.i.i, align 8
  %355 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %end.i.i.i.i, align 8
  %cmp.i36.i.i = icmp eq ptr %354, %356
  br i1 %cmp.i36.i.i, label %if.then.i38.i.i, label %OUT_RING.exit33.i.i.OUT_RING.exit40.i.i_crit_edge

OUT_RING.exit33.i.i.OUT_RING.exit40.i.i_crit_edge: ; preds = %OUT_RING.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit40.i.i

if.then.i38.i.i:                                  ; preds = %OUT_RING.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i37.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %307, i32 0, i32 3
  %357 = ptrtoint ptr %start.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %start.i37.i.i, align 4
  %359 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %358, ptr %next.i.i.i.i, align 8
  br label %OUT_RING.exit40.i.i

OUT_RING.exit40.i.i:                              ; preds = %if.then.i38.i.i, %OUT_RING.exit33.i.i.OUT_RING.exit40.i.i_crit_edge
  %360 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %next.i.i.i.i, align 8
  %incdec.ptr.i39.i.i = getelementptr i32, ptr %361, i32 1
  store ptr %incdec.ptr.i39.i.i, ptr %next.i.i.i.i, align 8
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 0, ptr %361, align 4
  %363 = load ptr, ptr %next.i.i.i.i, align 8
  %364 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %end.i.i.i.i, align 8
  %cmp.i43.i.i = icmp eq ptr %363, %365
  br i1 %cmp.i43.i.i, label %if.then.i45.i.i, label %OUT_RING.exit40.i.i.OUT_RING.exit47.i.i_crit_edge

OUT_RING.exit40.i.i.OUT_RING.exit47.i.i_crit_edge: ; preds = %OUT_RING.exit40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit47.i.i

if.then.i45.i.i:                                  ; preds = %OUT_RING.exit40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i44.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %307, i32 0, i32 3
  %366 = ptrtoint ptr %start.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %start.i44.i.i, align 4
  %368 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %367, ptr %next.i.i.i.i, align 8
  br label %OUT_RING.exit47.i.i

OUT_RING.exit47.i.i:                              ; preds = %if.then.i45.i.i, %OUT_RING.exit40.i.i.OUT_RING.exit47.i.i_crit_edge
  %369 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %next.i.i.i.i, align 8
  %incdec.ptr.i46.i.i = getelementptr i32, ptr %370, i32 1
  store ptr %incdec.ptr.i46.i.i, ptr %next.i.i.i.i, align 8
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 0, ptr %370, align 4
  %372 = load ptr, ptr %next.i.i.i.i, align 8
  %373 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %end.i.i.i.i, align 8
  %cmp.i50.i.i = icmp eq ptr %372, %374
  br i1 %cmp.i50.i.i, label %if.then.i52.i.i, label %OUT_RING.exit47.i.i.OUT_RING.exit54.i.i_crit_edge

OUT_RING.exit47.i.i.OUT_RING.exit54.i.i_crit_edge: ; preds = %OUT_RING.exit47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit54.i.i

if.then.i52.i.i:                                  ; preds = %OUT_RING.exit47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i51.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %307, i32 0, i32 3
  %375 = ptrtoint ptr %start.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %start.i51.i.i, align 4
  %377 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr %376, ptr %next.i.i.i.i, align 8
  br label %OUT_RING.exit54.i.i

OUT_RING.exit54.i.i:                              ; preds = %if.then.i52.i.i, %OUT_RING.exit47.i.i.OUT_RING.exit54.i.i_crit_edge
  %378 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %next.i.i.i.i, align 8
  %incdec.ptr.i53.i.i = getelementptr i32, ptr %379, i32 1
  store ptr %incdec.ptr.i53.i.i, ptr %next.i.i.i.i, align 8
  %380 = ptrtoint ptr %379 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 0, ptr %379, align 4
  %381 = load ptr, ptr %next.i.i.i.i, align 8
  %382 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %end.i.i.i.i, align 8
  %cmp.i57.i.i = icmp eq ptr %381, %383
  br i1 %cmp.i57.i.i, label %if.then.i59.i.i, label %OUT_RING.exit54.i.i.a6xx_cp_init.exit.i_crit_edge

OUT_RING.exit54.i.i.a6xx_cp_init.exit.i_crit_edge: ; preds = %OUT_RING.exit54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_cp_init.exit.i

if.then.i59.i.i:                                  ; preds = %OUT_RING.exit54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i58.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %307, i32 0, i32 3
  %384 = ptrtoint ptr %start.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %start.i58.i.i, align 4
  %386 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr %385, ptr %next.i.i.i.i, align 8
  br label %a6xx_cp_init.exit.i

a6xx_cp_init.exit.i:                              ; preds = %if.then.i59.i.i, %OUT_RING.exit54.i.i.a6xx_cp_init.exit.i_crit_edge
  %387 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %next.i.i.i.i, align 8
  %incdec.ptr.i60.i.i = getelementptr i32, ptr %388, i32 1
  store ptr %incdec.ptr.i60.i.i, ptr %next.i.i.i.i, align 8
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 0, ptr %388, align 4
  tail call fastcc void @a6xx_flush(ptr noundef %gpu, ptr noundef %307) #12
  %call.i503.i = tail call fastcc zeroext i1 @a6xx_idle(ptr noundef %gpu, ptr noundef %307) #12
  br i1 %call.i503.i, label %if.end118.i, label %a6xx_cp_init.exit.i.out.i_crit_edge

a6xx_cp_init.exit.i.out.i_crit_edge:              ; preds = %a6xx_cp_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end118.i:                                      ; preds = %a6xx_cp_init.exit.i
  %390 = load i8, ptr @a6xx_zap_shader_init.loaded, align 1, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %390)
  %tobool.not.i504.i = icmp eq i8 %390, 0
  br i1 %tobool.not.i504.i, label %a6xx_zap_shader_init.exit.i, label %if.end118.i.if.then121.i_crit_edge

if.end118.i.if.then121.i_crit_edge:               ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then121.i

a6xx_zap_shader_init.exit.i:                      ; preds = %if.end118.i
  %call.i505.i = tail call i32 @adreno_zap_shader_load(ptr noundef %gpu, i32 noundef 13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i505.i)
  %tobool1.not.i.i = icmp eq i32 %call.i505.i, 0
  %frombool.i.i = zext i1 %tobool1.not.i.i to i8
  store i8 %frombool.i.i, ptr @a6xx_zap_shader_init.loaded, align 1
  %391 = zext i32 %call.i505.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %391, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %call.i505.i, label %a6xx_zap_shader_init.exit.i.hw_init.exit_crit_edge [
    i32 0, label %a6xx_zap_shader_init.exit.i.if.then121.i_crit_edge
    i32 -19, label %do.body.i
  ]

a6xx_zap_shader_init.exit.i.if.then121.i_crit_edge: ; preds = %a6xx_zap_shader_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then121.i

a6xx_zap_shader_init.exit.i.hw_init.exit_crit_edge: ; preds = %a6xx_zap_shader_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hw_init.exit

if.then121.i:                                     ; preds = %a6xx_zap_shader_init.exit.i.if.then121.i_crit_edge, %if.end118.i.if.then121.i_crit_edge
  %392 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %rb.i, align 4
  tail call void @adreno_wait_ring(ptr noundef %393, i32 noundef 2) #12
  %next.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %393, i32 0, i32 6
  %394 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %next.i.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %393, i32 0, i32 4
  %396 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i508.i = icmp eq ptr %395, %397
  br i1 %cmp.i.i508.i, label %if.then.i.i510.i, label %if.then121.i.OUT_PKT7.exit.i_crit_edge

if.then121.i.OUT_PKT7.exit.i_crit_edge:           ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit.i

if.then.i.i510.i:                                 ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i509.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %393, i32 0, i32 3
  %398 = ptrtoint ptr %start.i.i509.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %start.i.i509.i, align 4
  %400 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr %399, ptr %next.i.i.i, align 8
  br label %OUT_PKT7.exit.i

OUT_PKT7.exit.i:                                  ; preds = %if.then.i.i510.i, %if.then121.i.OUT_PKT7.exit.i_crit_edge
  %401 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i511.i = getelementptr i32, ptr %402, i32 1
  store ptr %incdec.ptr.i.i511.i, ptr %next.i.i.i, align 8
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 1894121473, ptr %402, align 4
  %404 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %rb.i, align 4
  %next.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %405, i32 0, i32 6
  %406 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %next.i.i, align 8
  %end.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %405, i32 0, i32 4
  %408 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %end.i.i, align 8
  %cmp.i513.i = icmp eq ptr %407, %409
  br i1 %cmp.i513.i, label %if.then.i514.i, label %OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge

OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge:        ; preds = %OUT_PKT7.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit.i

if.then.i514.i:                                   ; preds = %OUT_PKT7.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %405, i32 0, i32 3
  %410 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %start.i.i, align 4
  %412 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %411, ptr %next.i.i, align 8
  br label %OUT_RING.exit.i

OUT_RING.exit.i:                                  ; preds = %if.then.i514.i, %OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge
  %413 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %414, i32 1
  store ptr %incdec.ptr.i.i, ptr %next.i.i, align 8
  %415 = ptrtoint ptr %414 to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 0, ptr %414, align 4
  %416 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %rb.i, align 4
  tail call fastcc void @a6xx_flush(ptr noundef %gpu, ptr noundef %417) #12
  %418 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %rb.i, align 4
  %call130.i = tail call fastcc zeroext i1 @a6xx_idle(ptr noundef %gpu, ptr noundef %419) #12
  br i1 %call130.i, label %OUT_RING.exit.i.out.i_crit_edge, label %OUT_RING.exit.i.hw_init.exit_crit_edge

OUT_RING.exit.i.hw_init.exit_crit_edge:           ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hw_init.exit

OUT_RING.exit.i.out.i_crit_edge:                  ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

do.body.i:                                        ; preds = %a6xx_zap_shader_init.exit.i
  %.b279.i = load i1, ptr @hw_init.__print_once, align 1
  br i1 %.b279.i, label %do.body.i.do.end143.i_crit_edge, label %if.then137.i

do.body.i.do.end143.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end143.i

if.then137.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hw_init.__print_once, align 1
  %dev139.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %420 = ptrtoint ptr %dev139.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %dev139.i, align 4
  %dev140.i = getelementptr inbounds %struct.drm_device, ptr %421, i32 0, i32 2
  %422 = ptrtoint ptr %dev140.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %dev140.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %423, ptr noundef nonnull @.str.10) #16
  br label %do.end143.i

do.end143.i:                                      ; preds = %if.then137.i, %do.body.i.do.end143.i_crit_edge
  %424 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i517.i = getelementptr i8, ptr %425, i32 249856
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i517.i) #12
  br label %out.i

out.i:                                            ; preds = %do.end143.i, %OUT_RING.exit.i.out.i_crit_edge, %a6xx_cp_init.exit.i.out.i_crit_edge, %a6xx_ucode_init.exit.i, %a6xx_ucode_init.exit.thread526.i, %if.end66.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call67.i, %if.end66.i.out.i_crit_edge ], [ %272, %a6xx_ucode_init.exit.i ], [ -22, %a6xx_cp_init.exit.i.out.i_crit_edge ], [ 0, %do.end143.i ], [ 0, %OUT_RING.exit.i.out.i_crit_edge ], [ -1, %a6xx_ucode_init.exit.thread526.i ]
  tail call void @a6xx_gmu_clear_oob(ptr noundef %gmu.i, i32 noundef 1) #12
  %legacy.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 30
  %426 = ptrtoint ptr %legacy.i to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %legacy.i, align 2, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %427)
  %tobool149.not.i = icmp eq i8 %427, 0
  br i1 %tobool149.not.i, label %out.i.hw_init.exit_crit_edge, label %if.then150.i

out.i.hw_init.exit_crit_edge:                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hw_init.exit

if.then150.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @a6xx_gmu_clear_oob(ptr noundef %gmu.i, i32 noundef 0) #12
  br label %hw_init.exit

hw_init.exit:                                     ; preds = %if.then150.i, %out.i.hw_init.exit_crit_edge, %OUT_RING.exit.i.hw_init.exit_crit_edge, %a6xx_zap_shader_init.exit.i.hw_init.exit_crit_edge, %if.then100.i
  %retval.0.i = phi i32 [ %287, %if.then100.i ], [ -22, %OUT_RING.exit.i.hw_init.exit_crit_edge ], [ %call.i505.i, %a6xx_zap_shader_init.exit.i.hw_init.exit_crit_edge ], [ %ret.0.i, %if.then150.i ], [ %ret.0.i, %out.i.hw_init.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a6xx_pm_suspend(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_msm_gpu_suspend()
  %llc_slice.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 10
  %0 = ptrtoint ptr %llc_slice.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %llc_slice.i, align 4
  %call.i = tail call i32 @llcc_slice_deactivate(ptr noundef %1) #12
  %htw_llc_slice.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 11
  %2 = ptrtoint ptr %htw_llc_slice.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %htw_llc_slice.i, align 8
  %call1.i = tail call i32 @llcc_slice_deactivate(ptr noundef %3) #12
  tail call void @msm_devfreq_suspend(ptr noundef %gpu) #12
  %lock = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %call = tail call i32 @a6xx_gmu_stop(ptr noundef %gpu) #12
  tail call void @mutex_unlock(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %shadow_bo = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 5
  %4 = ptrtoint ptr %shadow_bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shadow_bo, align 8
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %for.cond.preheader

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

for.cond.preheader:                               ; preds = %if.end
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %6 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp24 = icmp sgt i32 %7, 0
  br i1 %cmp24, label %for.body.lr.ph, label %for.cond.preheader.if.end8_crit_edge

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %shadow = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shadow, align 8
  %arrayidx = getelementptr i32, ptr %9, i32 %i.025
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.025, 1
  %11 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_rings, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end8:                                          ; preds = %for.body.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %suspend_count = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 42
  %13 = ptrtoint ptr %suspend_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %suspend_count, align 8
  %inc9 = add i32 %14, 1
  store i32 %inc9, ptr %suspend_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a6xx_pm_resume(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %needs_hw_init = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 20
  %0 = ptrtoint ptr %needs_hw_init to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %needs_hw_init, align 8
  tail call fastcc void @trace_msm_gpu_resume()
  %lock = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %call = tail call i32 @a6xx_gmu_resume(ptr noundef %gpu) #12
  tail call void @mutex_unlock(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msm_devfreq_resume(ptr noundef %gpu) #12
  %llc_mmio.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 9
  %1 = ptrtoint ptr %llc_mmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %llc_mmio.i, align 8
  %cmp.i.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %llc_slice.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 10
  %3 = ptrtoint ptr %llc_slice.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %llc_slice.i, align 4
  %call2.i = tail call i32 @llcc_slice_activate(ptr noundef %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then3.i:                                       ; preds = %if.end.i
  %5 = ptrtoint ptr %llc_slice.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %llc_slice.i, align 4
  %call5.i = tail call i32 @llcc_get_slice_id(ptr noundef %6) #12
  %and.i = and i32 %call5.i, 31
  %shl7.i = shl nuw nsw i32 %and.i, 10
  %or12.i = mul nuw nsw i32 %and.i, 1082401
  %revn.i.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %7 = ptrtoint ptr %revn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %revn.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 660, i32 %8)
  %cmp.i.not.i.i = icmp eq i32 %8, 660
  br i1 %cmp.i.not.i.i, label %if.then3.i.if.then15.i_crit_edge, label %adreno_is_a660_family.exit.i

if.then3.i.if.then15.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

adreno_is_a660_family.exit.i:                     ; preds = %if.then3.i
  %rev.i.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %9 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack.i.i.i = load i32, ptr %rev.i.i.i, align 8
  %10 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i, 0
  %call.i.i.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %10) #12
  br i1 %call.i.i.i, label %adreno_is_a660_family.exit.i.if.then15.i_crit_edge, label %adreno_is_a660_family.exit.i.if.end19.i_crit_edge

adreno_is_a660_family.exit.i.if.end19.i_crit_edge: ; preds = %adreno_is_a660_family.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

adreno_is_a660_family.exit.i.if.then15.i_crit_edge: ; preds = %adreno_is_a660_family.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

if.then15.i:                                      ; preds = %adreno_is_a660_family.exit.i.if.then15.i_crit_edge, %if.then3.i.if.then15.i_crit_edge
  %or17.i = or i32 %shl7.i, 256
  %mmio.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %11 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 61444
  tail call void @msm_rmw(ptr noundef %add.ptr.i.i, i32 noundef 32000, i32 noundef %or17.i) #12
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %adreno_is_a660_family.exit.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %cntl1_regval.0.i = phi i32 [ 0, %if.end.i.if.end19.i_crit_edge ], [ %or12.i, %if.then15.i ], [ %or12.i, %adreno_is_a660_family.exit.i.if.end19.i_crit_edge ]
  %htw_llc_slice.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 11
  %13 = ptrtoint ptr %htw_llc_slice.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %htw_llc_slice.i, align 8
  %call20.i = tail call i32 @llcc_slice_activate(ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end19.i.if.end48.i_crit_edge

if.end19.i.if.end48.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.then22.i:                                      ; preds = %if.end19.i
  %have_mmu500.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 12
  %15 = ptrtoint ptr %have_mmu500.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %have_mmu500.i, align 4, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool23.not.i = icmp eq i8 %16, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.then22.i.if.end48.i_crit_edge

if.then22.i.if.end48.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.then24.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %htw_llc_slice.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %htw_llc_slice.i, align 8
  %call26.i = tail call i32 @llcc_get_slice_id(ptr noundef %18) #12
  %and27.i = shl i32 %call26.i, 25
  %shl44.i = and i32 %and27.i, 1040187392
  %or46.i = or i32 %shl44.i, %cntl1_regval.0.i
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then24.i, %if.then22.i.if.end48.i_crit_edge, %if.end19.i.if.end48.i_crit_edge
  %cntl1_regval.1.i = phi i32 [ %cntl1_regval.0.i, %if.end19.i.if.end48.i_crit_edge ], [ %cntl1_regval.0.i, %if.then22.i.if.end48.i_crit_edge ], [ %or46.i, %if.then24.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cntl1_regval.1.i)
  %tobool49.not.i = icmp eq i32 %cntl1_regval.1.i, 0
  br i1 %tobool49.not.i, label %if.end48.i.cleanup_crit_edge, label %if.end51.i

if.end48.i.cleanup_crit_edge:                     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end51.i:                                       ; preds = %if.end48.i
  %have_mmu50052.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 12
  %19 = ptrtoint ptr %have_mmu50052.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %have_mmu50052.i, align 4, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool53.not.i = icmp eq i8 %20, 0
  br i1 %tobool53.not.i, label %if.then54.i, label %if.end55.i

if.then54.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %llc_mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %llc_mmio.i, align 8
  %add.ptr.i81.i = getelementptr i8, ptr %22, i32 8
  tail call void @msm_writel(i32 noundef %cntl1_regval.1.i, ptr noundef %add.ptr.i81.i) #12
  %23 = ptrtoint ptr %llc_mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %llc_mmio.i, align 8
  %add.ptr.i83.i = getelementptr i8, ptr %24, i32 4
  tail call void @msm_rmw(ptr noundef %add.ptr.i83.i, i32 noundef 15, i32 noundef 3) #12
  br label %cleanup

if.end55.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  %mmio.i84.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %25 = ptrtoint ptr %mmio.i84.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i84.i, align 8
  %add.ptr.i85.i = getelementptr i8, ptr %26, i32 61448
  tail call void @msm_rmw(ptr noundef %add.ptr.i85.i, i32 noundef 33554431, i32 noundef %cntl1_regval.1.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end55.i, %if.then54.i, %if.end48.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a6xx_submit(ptr nocapture noundef readonly %gpu, ptr noundef %submit) #0 align 64 {
entry:
  %ttbr.i = alloca i32, align 4
  %asid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %seqno = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 7
  %0 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seqno, align 8
  %ring4 = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 16
  %2 = ptrtoint ptr %ring4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring4, align 4
  %queue = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 11
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 8
  %ctx = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ttbr.i) #12
  %8 = ptrtoint ptr %ttbr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ttbr.i, align 4, !annotation !204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %asid.i) #12
  %9 = ptrtoint ptr %asid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %asid.i, align 4, !annotation !204
  %memptrs_iova.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %memptrs_iova.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %memptrs_iova.i, align 8
  %add.i = add i64 %11, 2056
  %seqno.i = getelementptr inbounds %struct.msm_file_private, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seqno.i, align 4
  %cur_ctx_seqno.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 15
  %14 = ptrtoint ptr %cur_ctx_seqno.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_ctx_seqno.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i = icmp eq i32 %13, %15
  br i1 %cmp.i, label %entry.a6xx_set_pagetable.exit_crit_edge, label %if.end.i

entry.a6xx_set_pagetable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_set_pagetable.exit

if.end.i:                                         ; preds = %entry
  %aspace.i = getelementptr inbounds %struct.msm_file_private, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aspace.i, align 4
  %mmu.i = getelementptr inbounds %struct.msm_gem_address_space, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmu.i, align 4
  %call.i = call i32 @msm_iommu_pagetable_params(ptr noundef %19, ptr noundef nonnull %ttbr.i, ptr noundef nonnull %asid.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.a6xx_set_pagetable.exit_crit_edge

if.end.i.a6xx_set_pagetable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %a6xx_set_pagetable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @adreno_wait_ring(ptr noundef %3, i32 noundef 5) #12
  %next.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next.i.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %21, %23
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end3.i.OUT_PKT7.exit.i_crit_edge

if.end3.i.OUT_PKT7.exit.i_crit_edge:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit.i

if.then.i.i.i:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %start.i.i.i, align 4
  %26 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %next.i.i.i, align 8
  br label %OUT_PKT7.exit.i

OUT_PKT7.exit.i:                                  ; preds = %if.then.i.i.i, %if.end3.i.OUT_PKT7.exit.i_crit_edge
  %27 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %28, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %next.i.i.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1892876292, ptr %28, align 4
  %30 = ptrtoint ptr %ttbr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ttbr.i, align 4
  %32 = load ptr, ptr %next.i.i.i, align 8
  %33 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i = icmp eq ptr %32, %34
  br i1 %cmp.i.i, label %if.then.i.i, label %OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge

OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge:        ; preds = %OUT_PKT7.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit.i

if.then.i.i:                                      ; preds = %OUT_PKT7.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %start.i.i, align 4
  %37 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit.i

OUT_RING.exit.i:                                  ; preds = %if.then.i.i, %OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge
  %38 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %39, i32 1
  store ptr %incdec.ptr.i.i, ptr %next.i.i.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %31, ptr %39, align 4
  %41 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %asid.i, align 4
  %shl.i.i = shl i32 %42, 16
  %43 = load ptr, ptr %next.i.i.i, align 8
  %44 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i38.i = icmp eq ptr %43, %45
  br i1 %cmp.i38.i, label %if.then.i40.i, label %OUT_RING.exit.i.OUT_RING.exit42.i_crit_edge

OUT_RING.exit.i.OUT_RING.exit42.i_crit_edge:      ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit42.i

if.then.i40.i:                                    ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i39.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %46 = ptrtoint ptr %start.i39.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %start.i39.i, align 4
  %48 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit42.i

OUT_RING.exit42.i:                                ; preds = %if.then.i40.i, %OUT_RING.exit.i.OUT_RING.exit42.i_crit_edge
  %49 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i41.i = getelementptr i32, ptr %50, i32 1
  store ptr %incdec.ptr.i41.i, ptr %next.i.i.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shl.i.i, ptr %50, align 4
  %52 = load ptr, ptr %next.i.i.i, align 8
  %53 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i45.i = icmp eq ptr %52, %54
  br i1 %cmp.i45.i, label %if.then.i47.i, label %OUT_RING.exit42.i.OUT_RING.exit49.i_crit_edge

OUT_RING.exit42.i.OUT_RING.exit49.i_crit_edge:    ; preds = %OUT_RING.exit42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit49.i

if.then.i47.i:                                    ; preds = %OUT_RING.exit42.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i46.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %55 = ptrtoint ptr %start.i46.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %start.i46.i, align 4
  %57 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit49.i

OUT_RING.exit49.i:                                ; preds = %if.then.i47.i, %OUT_RING.exit42.i.OUT_RING.exit49.i_crit_edge
  %58 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i48.i = getelementptr i32, ptr %59, i32 1
  store ptr %incdec.ptr.i48.i, ptr %next.i.i.i, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %59, align 4
  %61 = load ptr, ptr %next.i.i.i, align 8
  %62 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i52.i = icmp eq ptr %61, %63
  br i1 %cmp.i52.i, label %if.then.i54.i, label %OUT_RING.exit49.i.OUT_RING.exit56.i_crit_edge

OUT_RING.exit49.i.OUT_RING.exit56.i_crit_edge:    ; preds = %OUT_RING.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit56.i

if.then.i54.i:                                    ; preds = %OUT_RING.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i53.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %64 = ptrtoint ptr %start.i53.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %start.i53.i, align 4
  %66 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit56.i

OUT_RING.exit56.i:                                ; preds = %if.then.i54.i, %OUT_RING.exit49.i.OUT_RING.exit56.i_crit_edge
  %67 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i55.i = getelementptr i32, ptr %68, i32 1
  store ptr %incdec.ptr.i55.i, ptr %next.i.i.i, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %68, align 4
  call void @adreno_wait_ring(ptr noundef %3, i32 noundef 5) #12
  %70 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %next.i.i.i, align 8
  %72 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i59.i = icmp eq ptr %71, %73
  br i1 %cmp.i.i59.i, label %if.then.i.i61.i, label %OUT_RING.exit56.i.OUT_PKT7.exit63.i_crit_edge

OUT_RING.exit56.i.OUT_PKT7.exit63.i_crit_edge:    ; preds = %OUT_RING.exit56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit63.i

if.then.i.i61.i:                                  ; preds = %OUT_RING.exit56.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i60.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %74 = ptrtoint ptr %start.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %start.i.i60.i, align 4
  %76 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %next.i.i.i, align 8
  br label %OUT_PKT7.exit63.i

OUT_PKT7.exit63.i:                                ; preds = %if.then.i.i61.i, %OUT_RING.exit56.i.OUT_PKT7.exit63.i_crit_edge
  %77 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i62.i = getelementptr i32, ptr %78, i32 1
  store ptr %incdec.ptr.i.i62.i, ptr %next.i.i.i, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1883045892, ptr %78, align 4
  %conv.i = trunc i64 %add.i to i32
  %80 = load ptr, ptr %next.i.i.i, align 8
  %81 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i66.i = icmp eq ptr %80, %82
  br i1 %cmp.i66.i, label %if.then.i68.i, label %OUT_PKT7.exit63.i.OUT_RING.exit70.i_crit_edge

OUT_PKT7.exit63.i.OUT_RING.exit70.i_crit_edge:    ; preds = %OUT_PKT7.exit63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit70.i

if.then.i68.i:                                    ; preds = %OUT_PKT7.exit63.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i67.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %83 = ptrtoint ptr %start.i67.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %start.i67.i, align 4
  %85 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit70.i

OUT_RING.exit70.i:                                ; preds = %if.then.i68.i, %OUT_PKT7.exit63.i.OUT_RING.exit70.i_crit_edge
  %86 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i69.i = getelementptr i32, ptr %87, i32 1
  store ptr %incdec.ptr.i69.i, ptr %next.i.i.i, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv.i, ptr %87, align 4
  %shr12.i = lshr i64 %add.i, 32
  %conv14.i = trunc i64 %shr12.i to i32
  %89 = load ptr, ptr %next.i.i.i, align 8
  %90 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i73.i = icmp eq ptr %89, %91
  br i1 %cmp.i73.i, label %if.then.i75.i, label %OUT_RING.exit70.i.OUT_RING.exit77.i_crit_edge

OUT_RING.exit70.i.OUT_RING.exit77.i_crit_edge:    ; preds = %OUT_RING.exit70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit77.i

if.then.i75.i:                                    ; preds = %OUT_RING.exit70.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i74.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %92 = ptrtoint ptr %start.i74.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %start.i74.i, align 4
  %94 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit77.i

OUT_RING.exit77.i:                                ; preds = %if.then.i75.i, %OUT_RING.exit70.i.OUT_RING.exit77.i_crit_edge
  %95 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i76.i = getelementptr i32, ptr %96, i32 1
  store ptr %incdec.ptr.i76.i, ptr %next.i.i.i, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv14.i, ptr %96, align 4
  %98 = ptrtoint ptr %ttbr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ttbr.i, align 4
  %100 = load ptr, ptr %next.i.i.i, align 8
  %101 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i80.i = icmp eq ptr %100, %102
  br i1 %cmp.i80.i, label %if.then.i82.i, label %OUT_RING.exit77.i.OUT_RING.exit84.i_crit_edge

OUT_RING.exit77.i.OUT_RING.exit84.i_crit_edge:    ; preds = %OUT_RING.exit77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit84.i

if.then.i82.i:                                    ; preds = %OUT_RING.exit77.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i81.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %103 = ptrtoint ptr %start.i81.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %start.i81.i, align 4
  %105 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit84.i

OUT_RING.exit84.i:                                ; preds = %if.then.i82.i, %OUT_RING.exit77.i.OUT_RING.exit84.i_crit_edge
  %106 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i83.i = getelementptr i32, ptr %107, i32 1
  store ptr %incdec.ptr.i83.i, ptr %next.i.i.i, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %99, ptr %107, align 4
  %109 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %asid.i, align 4
  %shl.i = shl i32 %110, 16
  %111 = load ptr, ptr %next.i.i.i, align 8
  %112 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i87.i = icmp eq ptr %111, %113
  br i1 %cmp.i87.i, label %if.then.i89.i, label %OUT_RING.exit84.i.OUT_RING.exit91.i_crit_edge

OUT_RING.exit84.i.OUT_RING.exit91.i_crit_edge:    ; preds = %OUT_RING.exit84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit91.i

if.then.i89.i:                                    ; preds = %OUT_RING.exit84.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i88.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %114 = ptrtoint ptr %start.i88.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %start.i88.i, align 4
  %116 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit91.i

OUT_RING.exit91.i:                                ; preds = %if.then.i89.i, %OUT_RING.exit84.i.OUT_RING.exit91.i_crit_edge
  %117 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i90.i = getelementptr i32, ptr %118, i32 1
  store ptr %incdec.ptr.i90.i, ptr %next.i.i.i, align 8
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %shl.i, ptr %118, align 4
  call void @adreno_wait_ring(ptr noundef %3, i32 noundef 2) #12
  %120 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %next.i.i.i, align 8
  %122 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i94.i = icmp eq ptr %121, %123
  br i1 %cmp.i.i94.i, label %if.then.i.i96.i, label %OUT_RING.exit91.i.OUT_PKT7.exit98.i_crit_edge

OUT_RING.exit91.i.OUT_PKT7.exit98.i_crit_edge:    ; preds = %OUT_RING.exit91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit98.i

if.then.i.i96.i:                                  ; preds = %OUT_RING.exit91.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i95.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %124 = ptrtoint ptr %start.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %start.i.i95.i, align 4
  %126 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %next.i.i.i, align 8
  br label %OUT_PKT7.exit98.i

OUT_PKT7.exit98.i:                                ; preds = %if.then.i.i96.i, %OUT_RING.exit91.i.OUT_PKT7.exit98.i_crit_edge
  %127 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i97.i = getelementptr i32, ptr %128, i32 1
  store ptr %incdec.ptr.i.i97.i, ptr %next.i.i.i, align 8
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1883635713, ptr %128, align 4
  %130 = load ptr, ptr %next.i.i.i, align 8
  %131 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i101.i = icmp eq ptr %130, %132
  br i1 %cmp.i101.i, label %if.then.i103.i, label %OUT_PKT7.exit98.i.OUT_RING.exit105.i_crit_edge

OUT_PKT7.exit98.i.OUT_RING.exit105.i_crit_edge:   ; preds = %OUT_PKT7.exit98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit105.i

if.then.i103.i:                                   ; preds = %OUT_PKT7.exit98.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i102.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %133 = ptrtoint ptr %start.i102.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %start.i102.i, align 4
  %135 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %134, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit105.i

OUT_RING.exit105.i:                               ; preds = %if.then.i103.i, %OUT_PKT7.exit98.i.OUT_RING.exit105.i_crit_edge
  %136 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i104.i = getelementptr i32, ptr %137, i32 1
  store ptr %incdec.ptr.i104.i, ptr %next.i.i.i, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 49, ptr %137, align 4
  br label %a6xx_set_pagetable.exit

a6xx_set_pagetable.exit:                          ; preds = %OUT_RING.exit105.i, %if.end.i.a6xx_set_pagetable.exit_crit_edge, %entry.a6xx_set_pagetable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %asid.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ttbr.i) #12
  %139 = ptrtoint ptr %memptrs_iova.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %memptrs_iova.i, align 8
  %rem = shl i32 %1, 5
  %mul = and i32 %rem, 2016
  %conv = zext i32 %mul to i64
  %add = or i64 %conv, 8
  %add5 = add i64 %add, %140
  call void @adreno_wait_ring(ptr noundef %3, i32 noundef 4) #12
  %next.i.i.i117 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 6
  %141 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %next.i.i.i117, align 8
  %end.i.i.i118 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 4
  %143 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i.i119 = icmp eq ptr %142, %144
  br i1 %cmp.i.i.i119, label %if.then.i.i.i121, label %a6xx_set_pagetable.exit.OUT_PKT7.exit.i124_crit_edge

a6xx_set_pagetable.exit.OUT_PKT7.exit.i124_crit_edge: ; preds = %a6xx_set_pagetable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit.i124

if.then.i.i.i121:                                 ; preds = %a6xx_set_pagetable.exit
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i.i120 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %145 = ptrtoint ptr %start.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %start.i.i.i120, align 4
  %147 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %146, ptr %next.i.i.i117, align 8
  br label %OUT_PKT7.exit.i124

OUT_PKT7.exit.i124:                               ; preds = %if.then.i.i.i121, %a6xx_set_pagetable.exit.OUT_PKT7.exit.i124_crit_edge
  %148 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i.i122 = getelementptr i32, ptr %149, i32 1
  store ptr %incdec.ptr.i.i.i122, ptr %next.i.i.i117, align 8
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1883144195, ptr %149, align 4
  %151 = load ptr, ptr %next.i.i.i117, align 8
  %152 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i123 = icmp eq ptr %151, %153
  br i1 %cmp.i.i123, label %if.then.i.i126, label %OUT_PKT7.exit.i124.OUT_RING.exit.i129_crit_edge

OUT_PKT7.exit.i124.OUT_RING.exit.i129_crit_edge:  ; preds = %OUT_PKT7.exit.i124
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit.i129

if.then.i.i126:                                   ; preds = %OUT_PKT7.exit.i124
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i125 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %154 = ptrtoint ptr %start.i.i125 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %start.i.i125, align 4
  %156 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %155, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit.i129

OUT_RING.exit.i129:                               ; preds = %if.then.i.i126, %OUT_PKT7.exit.i124.OUT_RING.exit.i129_crit_edge
  %157 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i127 = getelementptr i32, ptr %158, i32 1
  store ptr %incdec.ptr.i.i127, ptr %next.i.i.i117, align 8
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 1074267136, ptr %158, align 4
  %conv.i128 = trunc i64 %add5 to i32
  %160 = load ptr, ptr %next.i.i.i117, align 8
  %161 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i11.i = icmp eq ptr %160, %162
  br i1 %cmp.i11.i, label %if.then.i13.i, label %OUT_RING.exit.i129.OUT_RING.exit15.i_crit_edge

OUT_RING.exit.i129.OUT_RING.exit15.i_crit_edge:   ; preds = %OUT_RING.exit.i129
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit15.i

if.then.i13.i:                                    ; preds = %OUT_RING.exit.i129
  call void @__sanitizer_cov_trace_pc() #14
  %start.i12.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %163 = ptrtoint ptr %start.i12.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %start.i12.i, align 4
  %165 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %164, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit15.i

OUT_RING.exit15.i:                                ; preds = %if.then.i13.i, %OUT_RING.exit.i129.OUT_RING.exit15.i_crit_edge
  %166 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i14.i = getelementptr i32, ptr %167, i32 1
  store ptr %incdec.ptr.i14.i, ptr %next.i.i.i117, align 8
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %conv.i128, ptr %167, align 4
  %169 = load ptr, ptr %next.i.i.i117, align 8
  %170 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i18.i = icmp eq ptr %169, %171
  br i1 %cmp.i18.i, label %if.then.i20.i, label %OUT_RING.exit15.i.get_stats_counter.exit_crit_edge

OUT_RING.exit15.i.get_stats_counter.exit_crit_edge: ; preds = %OUT_RING.exit15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_stats_counter.exit

if.then.i20.i:                                    ; preds = %OUT_RING.exit15.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i19.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %172 = ptrtoint ptr %start.i19.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %start.i19.i, align 4
  %174 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %173, ptr %next.i.i.i117, align 8
  br label %get_stats_counter.exit

get_stats_counter.exit:                           ; preds = %if.then.i20.i, %OUT_RING.exit15.i.get_stats_counter.exit_crit_edge
  %shr.i = lshr i64 %add5, 32
  %conv4.i = trunc i64 %shr.i to i32
  %175 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i21.i = getelementptr i32, ptr %176, i32 1
  store ptr %incdec.ptr.i21.i, ptr %next.i.i.i117, align 8
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %conv4.i, ptr %176, align 4
  %178 = ptrtoint ptr %memptrs_iova.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %memptrs_iova.i, align 8
  %add11 = or i64 %conv, 24
  %add12 = add i64 %add11, %179
  call void @adreno_wait_ring(ptr noundef %3, i32 noundef 4) #12
  %180 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %next.i.i.i117, align 8
  %182 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i.i132 = icmp eq ptr %181, %183
  br i1 %cmp.i.i.i132, label %if.then.i.i.i134, label %get_stats_counter.exit.OUT_PKT7.exit.i137_crit_edge

get_stats_counter.exit.OUT_PKT7.exit.i137_crit_edge: ; preds = %get_stats_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit.i137

if.then.i.i.i134:                                 ; preds = %get_stats_counter.exit
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i.i133 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %184 = ptrtoint ptr %start.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %start.i.i.i133, align 4
  %186 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %185, ptr %next.i.i.i117, align 8
  br label %OUT_PKT7.exit.i137

OUT_PKT7.exit.i137:                               ; preds = %if.then.i.i.i134, %get_stats_counter.exit.OUT_PKT7.exit.i137_crit_edge
  %187 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i.i135 = getelementptr i32, ptr %188, i32 1
  store ptr %incdec.ptr.i.i.i135, ptr %next.i.i.i117, align 8
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 1883144195, ptr %188, align 4
  %190 = load ptr, ptr %next.i.i.i117, align 8
  %191 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i136 = icmp eq ptr %190, %192
  br i1 %cmp.i.i136, label %if.then.i.i139, label %OUT_PKT7.exit.i137.OUT_RING.exit.i143_crit_edge

OUT_PKT7.exit.i137.OUT_RING.exit.i143_crit_edge:  ; preds = %OUT_PKT7.exit.i137
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit.i143

if.then.i.i139:                                   ; preds = %OUT_PKT7.exit.i137
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i138 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %193 = ptrtoint ptr %start.i.i138 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %start.i.i138, align 4
  %195 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %194, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit.i143

OUT_RING.exit.i143:                               ; preds = %if.then.i.i139, %OUT_PKT7.exit.i137.OUT_RING.exit.i143_crit_edge
  %196 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i140 = getelementptr i32, ptr %197, i32 1
  store ptr %incdec.ptr.i.i140, ptr %next.i.i.i117, align 8
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 1074268544, ptr %197, align 4
  %conv.i141 = trunc i64 %add12 to i32
  %199 = load ptr, ptr %next.i.i.i117, align 8
  %200 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i11.i142 = icmp eq ptr %199, %201
  br i1 %cmp.i11.i142, label %if.then.i13.i145, label %OUT_RING.exit.i143.OUT_RING.exit15.i148_crit_edge

OUT_RING.exit.i143.OUT_RING.exit15.i148_crit_edge: ; preds = %OUT_RING.exit.i143
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit15.i148

if.then.i13.i145:                                 ; preds = %OUT_RING.exit.i143
  call void @__sanitizer_cov_trace_pc() #14
  %start.i12.i144 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %202 = ptrtoint ptr %start.i12.i144 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %start.i12.i144, align 4
  %204 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %203, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit15.i148

OUT_RING.exit15.i148:                             ; preds = %if.then.i13.i145, %OUT_RING.exit.i143.OUT_RING.exit15.i148_crit_edge
  %205 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i14.i146 = getelementptr i32, ptr %206, i32 1
  store ptr %incdec.ptr.i14.i146, ptr %next.i.i.i117, align 8
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %conv.i141, ptr %206, align 4
  %208 = load ptr, ptr %next.i.i.i117, align 8
  %209 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i18.i147 = icmp eq ptr %208, %210
  br i1 %cmp.i18.i147, label %if.then.i20.i150, label %OUT_RING.exit15.i148.get_stats_counter.exit154_crit_edge

OUT_RING.exit15.i148.get_stats_counter.exit154_crit_edge: ; preds = %OUT_RING.exit15.i148
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_stats_counter.exit154

if.then.i20.i150:                                 ; preds = %OUT_RING.exit15.i148
  call void @__sanitizer_cov_trace_pc() #14
  %start.i19.i149 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %211 = ptrtoint ptr %start.i19.i149 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %start.i19.i149, align 4
  %213 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %212, ptr %next.i.i.i117, align 8
  br label %get_stats_counter.exit154

get_stats_counter.exit154:                        ; preds = %if.then.i20.i150, %OUT_RING.exit15.i148.get_stats_counter.exit154_crit_edge
  %shr.i151 = lshr i64 %add12, 32
  %conv4.i152 = trunc i64 %shr.i151 to i32
  %214 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i21.i153 = getelementptr i32, ptr %215, i32 1
  store ptr %incdec.ptr.i21.i153, ptr %next.i.i.i117, align 8
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %conv4.i152, ptr %215, align 4
  call void @adreno_wait_ring(ptr noundef %3, i32 noundef 2) #12
  %217 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %next.i.i.i117, align 8
  %219 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i155 = icmp eq ptr %218, %220
  br i1 %cmp.i.i155, label %if.then.i.i157, label %get_stats_counter.exit154.OUT_PKT7.exit_crit_edge

get_stats_counter.exit154.OUT_PKT7.exit_crit_edge: ; preds = %get_stats_counter.exit154
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit

if.then.i.i157:                                   ; preds = %get_stats_counter.exit154
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i156 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %221 = ptrtoint ptr %start.i.i156 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %start.i.i156, align 4
  %223 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %222, ptr %next.i.i.i117, align 8
  br label %OUT_PKT7.exit

OUT_PKT7.exit:                                    ; preds = %if.then.i.i157, %get_stats_counter.exit154.OUT_PKT7.exit_crit_edge
  %224 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i158 = getelementptr i32, ptr %225, i32 1
  store ptr %incdec.ptr.i.i158, ptr %next.i.i.i117, align 8
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 1883635713, ptr %225, align 4
  %227 = load ptr, ptr %next.i.i.i117, align 8
  %228 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i160 = icmp eq ptr %227, %229
  br i1 %cmp.i160, label %if.then.i, label %OUT_PKT7.exit.OUT_RING.exit_crit_edge

OUT_PKT7.exit.OUT_RING.exit_crit_edge:            ; preds = %OUT_PKT7.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit

if.then.i:                                        ; preds = %OUT_PKT7.exit
  call void @__sanitizer_cov_trace_pc() #14
  %start.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %230 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %start.i, align 4
  %232 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %231, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit

OUT_RING.exit:                                    ; preds = %if.then.i, %OUT_PKT7.exit.OUT_RING.exit_crit_edge
  %233 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i = getelementptr i32, ptr %234, i32 1
  store ptr %incdec.ptr.i, ptr %next.i.i.i117, align 8
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 24, ptr %234, align 4
  call void @adreno_wait_ring(ptr noundef %3, i32 noundef 2) #12
  %236 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %next.i.i.i117, align 8
  %238 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i164 = icmp eq ptr %237, %239
  br i1 %cmp.i.i164, label %if.then.i.i166, label %OUT_RING.exit.OUT_PKT7.exit169_crit_edge

OUT_RING.exit.OUT_PKT7.exit169_crit_edge:         ; preds = %OUT_RING.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit169

if.then.i.i166:                                   ; preds = %OUT_RING.exit
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i165 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %240 = ptrtoint ptr %start.i.i165 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %start.i.i165, align 4
  %242 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %241, ptr %next.i.i.i117, align 8
  br label %OUT_PKT7.exit169

OUT_PKT7.exit169:                                 ; preds = %if.then.i.i166, %OUT_RING.exit.OUT_PKT7.exit169_crit_edge
  %243 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i167 = getelementptr i32, ptr %244, i32 1
  store ptr %incdec.ptr.i.i167, ptr %next.i.i.i117, align 8
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 1883635713, ptr %244, align 4
  %246 = load ptr, ptr %next.i.i.i117, align 8
  %247 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i172 = icmp eq ptr %246, %248
  br i1 %cmp.i172, label %if.then.i174, label %OUT_PKT7.exit169.OUT_RING.exit177_crit_edge

OUT_PKT7.exit169.OUT_RING.exit177_crit_edge:      ; preds = %OUT_PKT7.exit169
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit177

if.then.i174:                                     ; preds = %OUT_PKT7.exit169
  call void @__sanitizer_cov_trace_pc() #14
  %start.i173 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %249 = ptrtoint ptr %start.i173 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %start.i173, align 4
  %251 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %250, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit177

OUT_RING.exit177:                                 ; preds = %if.then.i174, %OUT_PKT7.exit169.OUT_RING.exit177_crit_edge
  %252 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i175 = getelementptr i32, ptr %253, i32 1
  store ptr %incdec.ptr.i175, ptr %next.i.i.i117, align 8
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 25, ptr %253, align 4
  %nr_cmds = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 18
  %255 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %nr_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %cmp336.not = icmp eq i32 %256, 0
  br i1 %cmp336.not, label %OUT_RING.exit177.for.end_crit_edge, label %for.body.lr.ph

OUT_RING.exit177.for.end_crit_edge:               ; preds = %OUT_RING.exit177
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %OUT_RING.exit177
  %cmd = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 21
  %start.i.i181 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %has_whereami.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 8
  %hw_apriv.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 45
  %shadow_iova.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 6
  %id.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ibs.0339 = phi i32 [ 0, %for.body.lr.ph ], [ %ibs.1, %for.inc.for.body_crit_edge ]
  %i.0337 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %for.inc.for.body_crit_edge ]
  %257 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %cmd, align 8
  %arrayidx = getelementptr %struct.anon.94, ptr %258, i32 %i.0337
  %259 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %arrayidx, align 8
  %261 = zext i32 %260 to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %260, label %for.body.sw.epilog_crit_edge [
    i32 1, label %for.body.sw.bb21_crit_edge
    i32 3, label %sw.bb
  ]

for.body.sw.bb21_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %262 = ptrtoint ptr %cur_ctx_seqno.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %cur_ctx_seqno.i, align 8
  %264 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %queue, align 8
  %ctx17 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %265, i32 0, i32 5
  %266 = ptrtoint ptr %ctx17 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %ctx17, align 4
  %seqno18 = getelementptr inbounds %struct.msm_file_private, ptr %267, i32 0, i32 5
  %268 = ptrtoint ptr %seqno18 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %seqno18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %263, i32 %269)
  %cmp19 = icmp eq i32 %263, %269
  br i1 %cmp19, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.bb21_crit_edge

sw.bb.sw.bb21_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb21:                                          ; preds = %sw.bb.sw.bb21_crit_edge, %for.body.sw.bb21_crit_edge
  call void @adreno_wait_ring(ptr noundef %3, i32 noundef 4) #12
  %270 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %next.i.i.i117, align 8
  %272 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i180 = icmp eq ptr %271, %273
  br i1 %cmp.i.i180, label %if.then.i.i182, label %sw.bb21.OUT_PKT7.exit185_crit_edge

sw.bb21.OUT_PKT7.exit185_crit_edge:               ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit185

if.then.i.i182:                                   ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #14
  %274 = ptrtoint ptr %start.i.i181 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %start.i.i181, align 4
  %276 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %275, ptr %next.i.i.i117, align 8
  br label %OUT_PKT7.exit185

OUT_PKT7.exit185:                                 ; preds = %if.then.i.i182, %sw.bb21.OUT_PKT7.exit185_crit_edge
  %277 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i183 = getelementptr i32, ptr %278, i32 1
  store ptr %incdec.ptr.i.i183, ptr %next.i.i.i117, align 8
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 1891598339, ptr %278, align 4
  %280 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %cmd, align 8
  %iova = getelementptr %struct.anon.94, ptr %281, i32 %i.0337, i32 2
  %282 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %282)
  %283 = load i64, ptr %iova, align 8
  %conv24 = trunc i64 %283 to i32
  %284 = load ptr, ptr %next.i.i.i117, align 8
  %285 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i188 = icmp eq ptr %284, %286
  br i1 %cmp.i188, label %if.then.i190, label %OUT_PKT7.exit185.OUT_RING.exit193_crit_edge

OUT_PKT7.exit185.OUT_RING.exit193_crit_edge:      ; preds = %OUT_PKT7.exit185
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit193

if.then.i190:                                     ; preds = %OUT_PKT7.exit185
  call void @__sanitizer_cov_trace_pc() #14
  %287 = ptrtoint ptr %start.i.i181 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %start.i.i181, align 4
  %289 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %288, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit193

OUT_RING.exit193:                                 ; preds = %if.then.i190, %OUT_PKT7.exit185.OUT_RING.exit193_crit_edge
  %290 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i191 = getelementptr i32, ptr %291, i32 1
  store ptr %incdec.ptr.i191, ptr %next.i.i.i117, align 8
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %conv24, ptr %291, align 4
  %293 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %cmd, align 8
  %iova27 = getelementptr %struct.anon.94, ptr %294, i32 %i.0337, i32 2
  %295 = ptrtoint ptr %iova27 to i32
  call void @__asan_load8_noabort(i32 %295)
  %296 = load i64, ptr %iova27, align 8
  %shr = lshr i64 %296, 32
  %conv29 = trunc i64 %shr to i32
  %297 = load ptr, ptr %next.i.i.i117, align 8
  %298 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i196 = icmp eq ptr %297, %299
  br i1 %cmp.i196, label %if.then.i198, label %OUT_RING.exit193.OUT_RING.exit201_crit_edge

OUT_RING.exit193.OUT_RING.exit201_crit_edge:      ; preds = %OUT_RING.exit193
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit201

if.then.i198:                                     ; preds = %OUT_RING.exit193
  call void @__sanitizer_cov_trace_pc() #14
  %300 = ptrtoint ptr %start.i.i181 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %start.i.i181, align 4
  %302 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %301, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit201

OUT_RING.exit201:                                 ; preds = %if.then.i198, %OUT_RING.exit193.OUT_RING.exit201_crit_edge
  %303 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i199 = getelementptr i32, ptr %304, i32 1
  store ptr %incdec.ptr.i199, ptr %next.i.i.i117, align 8
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %conv29, ptr %304, align 4
  %306 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %cmd, align 8
  %size = getelementptr %struct.anon.94, ptr %307, i32 %i.0337, i32 1
  %308 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %size, align 4
  %310 = load ptr, ptr %next.i.i.i117, align 8
  %311 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i204 = icmp eq ptr %310, %312
  br i1 %cmp.i204, label %if.then.i206, label %OUT_RING.exit201.OUT_RING.exit209_crit_edge

OUT_RING.exit201.OUT_RING.exit209_crit_edge:      ; preds = %OUT_RING.exit201
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit209

if.then.i206:                                     ; preds = %OUT_RING.exit201
  call void @__sanitizer_cov_trace_pc() #14
  %313 = ptrtoint ptr %start.i.i181 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %start.i.i181, align 4
  %315 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %314, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit209

OUT_RING.exit209:                                 ; preds = %if.then.i206, %OUT_RING.exit201.OUT_RING.exit209_crit_edge
  %316 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i207 = getelementptr i32, ptr %317, i32 1
  store ptr %incdec.ptr.i207, ptr %next.i.i.i117, align 8
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %309, ptr %317, align 4
  %inc = add i32 %ibs.0339, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %OUT_RING.exit209, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %ibs.1 = phi i32 [ %ibs.0339, %for.body.sw.epilog_crit_edge ], [ %ibs.0339, %sw.bb.sw.epilog_crit_edge ], [ %inc, %OUT_RING.exit209 ]
  %rem32 = and i32 %ibs.1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem32)
  %cmp33 = icmp eq i32 %rem32, 0
  br i1 %cmp33, label %if.then35, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then35:                                        ; preds = %sw.epilog
  %319 = ptrtoint ptr %has_whereami.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %has_whereami.i, align 4, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %tobool.not.i210 = icmp eq i8 %320, 0
  br i1 %tobool.not.i210, label %if.then35.for.inc_crit_edge, label %land.lhs.true.i

if.then35.for.inc_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.then35
  %321 = ptrtoint ptr %hw_apriv.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %hw_apriv.i, align 1, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool4.not.i = icmp eq i8 %322, 0
  br i1 %tobool4.not.i, label %if.then.i214, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.i214:                                     ; preds = %land.lhs.true.i
  call void @adreno_wait_ring(ptr noundef %3, i32 noundef 3) #12
  %323 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %next.i.i.i117, align 8
  %325 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i.i213 = icmp eq ptr %324, %326
  br i1 %cmp.i.i.i213, label %if.then.i.i.i216, label %if.then.i214.OUT_PKT7.exit.i219_crit_edge

if.then.i214.OUT_PKT7.exit.i219_crit_edge:        ; preds = %if.then.i214
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit.i219

if.then.i.i.i216:                                 ; preds = %if.then.i214
  call void @__sanitizer_cov_trace_pc() #14
  %327 = ptrtoint ptr %start.i.i181 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %start.i.i181, align 4
  %329 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %328, ptr %next.i.i.i117, align 8
  br label %OUT_PKT7.exit.i219

OUT_PKT7.exit.i219:                               ; preds = %if.then.i.i.i216, %if.then.i214.OUT_PKT7.exit.i219_crit_edge
  %330 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i.i217 = getelementptr i32, ptr %331, i32 1
  store ptr %incdec.ptr.i.i.i217, ptr %next.i.i.i117, align 8
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 1885470722, ptr %331, align 4
  %333 = ptrtoint ptr %shadow_iova.i to i32
  call void @__asan_load8_noabort(i32 %333)
  %334 = load i64, ptr %shadow_iova.i, align 8
  %335 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %336, 2
  %337 = trunc i64 %334 to i32
  %conv5.i = add i32 %mul.i, %337
  %338 = load ptr, ptr %next.i.i.i117, align 8
  %339 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i218 = icmp eq ptr %338, %340
  br i1 %cmp.i.i218, label %if.then.i.i221, label %OUT_PKT7.exit.i219.OUT_RING.exit.i224_crit_edge

OUT_PKT7.exit.i219.OUT_RING.exit.i224_crit_edge:  ; preds = %OUT_PKT7.exit.i219
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit.i224

if.then.i.i221:                                   ; preds = %OUT_PKT7.exit.i219
  call void @__sanitizer_cov_trace_pc() #14
  %341 = ptrtoint ptr %start.i.i181 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %start.i.i181, align 4
  %343 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %342, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit.i224

OUT_RING.exit.i224:                               ; preds = %if.then.i.i221, %OUT_PKT7.exit.i219.OUT_RING.exit.i224_crit_edge
  %344 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i222 = getelementptr i32, ptr %345, i32 1
  store ptr %incdec.ptr.i.i222, ptr %next.i.i.i117, align 8
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %conv5.i, ptr %345, align 4
  %347 = ptrtoint ptr %shadow_iova.i to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %shadow_iova.i, align 8
  %349 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %id.i, align 4
  %mul8.i = shl i32 %350, 2
  %conv9.i = zext i32 %mul8.i to i64
  %add10.i = add i64 %348, %conv9.i
  %shr.i223 = lshr i64 %add10.i, 32
  %conv12.i = trunc i64 %shr.i223 to i32
  %351 = load ptr, ptr %next.i.i.i117, align 8
  %352 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i22.i = icmp eq ptr %351, %353
  br i1 %cmp.i22.i, label %if.then.i24.i, label %OUT_RING.exit.i224.OUT_RING.exit26.i_crit_edge

OUT_RING.exit.i224.OUT_RING.exit26.i_crit_edge:   ; preds = %OUT_RING.exit.i224
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit26.i

if.then.i24.i:                                    ; preds = %OUT_RING.exit.i224
  call void @__sanitizer_cov_trace_pc() #14
  %354 = ptrtoint ptr %start.i.i181 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %start.i.i181, align 4
  %356 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr %355, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit26.i

OUT_RING.exit26.i:                                ; preds = %if.then.i24.i, %OUT_RING.exit.i224.OUT_RING.exit26.i_crit_edge
  %357 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i25.i = getelementptr i32, ptr %358, i32 1
  store ptr %incdec.ptr.i25.i, ptr %next.i.i.i117, align 8
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %conv12.i, ptr %358, align 4
  br label %for.inc

for.inc:                                          ; preds = %OUT_RING.exit26.i, %land.lhs.true.i.for.inc_crit_edge, %if.then35.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge
  %inc37 = add nuw i32 %i.0337, 1
  %360 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %nr_cmds, align 4
  %cmp = icmp ult i32 %inc37, %361
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %OUT_RING.exit177.for.end_crit_edge
  %362 = ptrtoint ptr %memptrs_iova.i to i32
  call void @__asan_load8_noabort(i32 %362)
  %363 = load i64, ptr %memptrs_iova.i, align 8
  %add43 = or i64 %conv, 16
  %add44 = add i64 %add43, %363
  call void @adreno_wait_ring(ptr noundef %3, i32 noundef 4) #12
  %364 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %next.i.i.i117, align 8
  %366 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i.i228 = icmp eq ptr %365, %367
  br i1 %cmp.i.i.i228, label %if.then.i.i.i230, label %for.end.OUT_PKT7.exit.i233_crit_edge

for.end.OUT_PKT7.exit.i233_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit.i233

if.then.i.i.i230:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i.i229 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %368 = ptrtoint ptr %start.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %start.i.i.i229, align 4
  %370 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr %369, ptr %next.i.i.i117, align 8
  br label %OUT_PKT7.exit.i233

OUT_PKT7.exit.i233:                               ; preds = %if.then.i.i.i230, %for.end.OUT_PKT7.exit.i233_crit_edge
  %371 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i.i231 = getelementptr i32, ptr %372, i32 1
  store ptr %incdec.ptr.i.i.i231, ptr %next.i.i.i117, align 8
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 1883144195, ptr %372, align 4
  %374 = load ptr, ptr %next.i.i.i117, align 8
  %375 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i232 = icmp eq ptr %374, %376
  br i1 %cmp.i.i232, label %if.then.i.i235, label %OUT_PKT7.exit.i233.OUT_RING.exit.i239_crit_edge

OUT_PKT7.exit.i233.OUT_RING.exit.i239_crit_edge:  ; preds = %OUT_PKT7.exit.i233
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit.i239

if.then.i.i235:                                   ; preds = %OUT_PKT7.exit.i233
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i234 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %377 = ptrtoint ptr %start.i.i234 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %start.i.i234, align 4
  %379 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %378, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit.i239

OUT_RING.exit.i239:                               ; preds = %if.then.i.i235, %OUT_PKT7.exit.i233.OUT_RING.exit.i239_crit_edge
  %380 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i236 = getelementptr i32, ptr %381, i32 1
  store ptr %incdec.ptr.i.i236, ptr %next.i.i.i117, align 8
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 1074267136, ptr %381, align 4
  %conv.i237 = trunc i64 %add44 to i32
  %383 = load ptr, ptr %next.i.i.i117, align 8
  %384 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i11.i238 = icmp eq ptr %383, %385
  br i1 %cmp.i11.i238, label %if.then.i13.i241, label %OUT_RING.exit.i239.OUT_RING.exit15.i244_crit_edge

OUT_RING.exit.i239.OUT_RING.exit15.i244_crit_edge: ; preds = %OUT_RING.exit.i239
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit15.i244

if.then.i13.i241:                                 ; preds = %OUT_RING.exit.i239
  call void @__sanitizer_cov_trace_pc() #14
  %start.i12.i240 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %386 = ptrtoint ptr %start.i12.i240 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %start.i12.i240, align 4
  %388 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr %387, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit15.i244

OUT_RING.exit15.i244:                             ; preds = %if.then.i13.i241, %OUT_RING.exit.i239.OUT_RING.exit15.i244_crit_edge
  %389 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i14.i242 = getelementptr i32, ptr %390, i32 1
  store ptr %incdec.ptr.i14.i242, ptr %next.i.i.i117, align 8
  %391 = ptrtoint ptr %390 to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %conv.i237, ptr %390, align 4
  %392 = load ptr, ptr %next.i.i.i117, align 8
  %393 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i18.i243 = icmp eq ptr %392, %394
  br i1 %cmp.i18.i243, label %if.then.i20.i246, label %OUT_RING.exit15.i244.get_stats_counter.exit250_crit_edge

OUT_RING.exit15.i244.get_stats_counter.exit250_crit_edge: ; preds = %OUT_RING.exit15.i244
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_stats_counter.exit250

if.then.i20.i246:                                 ; preds = %OUT_RING.exit15.i244
  call void @__sanitizer_cov_trace_pc() #14
  %start.i19.i245 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %395 = ptrtoint ptr %start.i19.i245 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %start.i19.i245, align 4
  %397 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr %396, ptr %next.i.i.i117, align 8
  br label %get_stats_counter.exit250

get_stats_counter.exit250:                        ; preds = %if.then.i20.i246, %OUT_RING.exit15.i244.get_stats_counter.exit250_crit_edge
  %shr.i247 = lshr i64 %add44, 32
  %conv4.i248 = trunc i64 %shr.i247 to i32
  %398 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i21.i249 = getelementptr i32, ptr %399, i32 1
  store ptr %incdec.ptr.i21.i249, ptr %next.i.i.i117, align 8
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %conv4.i248, ptr %399, align 4
  %401 = ptrtoint ptr %memptrs_iova.i to i32
  call void @__asan_load8_noabort(i32 %401)
  %402 = load i64, ptr %memptrs_iova.i, align 8
  %add49 = add nuw nsw i64 %conv, 32
  %add50 = add i64 %add49, %402
  call void @adreno_wait_ring(ptr noundef %3, i32 noundef 4) #12
  %403 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %next.i.i.i117, align 8
  %405 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i.i253 = icmp eq ptr %404, %406
  br i1 %cmp.i.i.i253, label %if.then.i.i.i255, label %get_stats_counter.exit250.OUT_PKT7.exit.i258_crit_edge

get_stats_counter.exit250.OUT_PKT7.exit.i258_crit_edge: ; preds = %get_stats_counter.exit250
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit.i258

if.then.i.i.i255:                                 ; preds = %get_stats_counter.exit250
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i.i254 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %407 = ptrtoint ptr %start.i.i.i254 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %start.i.i.i254, align 4
  %409 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %408, ptr %next.i.i.i117, align 8
  br label %OUT_PKT7.exit.i258

OUT_PKT7.exit.i258:                               ; preds = %if.then.i.i.i255, %get_stats_counter.exit250.OUT_PKT7.exit.i258_crit_edge
  %410 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i.i256 = getelementptr i32, ptr %411, i32 1
  store ptr %incdec.ptr.i.i.i256, ptr %next.i.i.i117, align 8
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 1883144195, ptr %411, align 4
  %413 = load ptr, ptr %next.i.i.i117, align 8
  %414 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i257 = icmp eq ptr %413, %415
  br i1 %cmp.i.i257, label %if.then.i.i260, label %OUT_PKT7.exit.i258.OUT_RING.exit.i264_crit_edge

OUT_PKT7.exit.i258.OUT_RING.exit.i264_crit_edge:  ; preds = %OUT_PKT7.exit.i258
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit.i264

if.then.i.i260:                                   ; preds = %OUT_PKT7.exit.i258
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i259 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %416 = ptrtoint ptr %start.i.i259 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %start.i.i259, align 4
  %418 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %417, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit.i264

OUT_RING.exit.i264:                               ; preds = %if.then.i.i260, %OUT_PKT7.exit.i258.OUT_RING.exit.i264_crit_edge
  %419 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i261 = getelementptr i32, ptr %420, i32 1
  store ptr %incdec.ptr.i.i261, ptr %next.i.i.i117, align 8
  %421 = ptrtoint ptr %420 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 1074268544, ptr %420, align 4
  %conv.i262 = trunc i64 %add50 to i32
  %422 = load ptr, ptr %next.i.i.i117, align 8
  %423 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i11.i263 = icmp eq ptr %422, %424
  br i1 %cmp.i11.i263, label %if.then.i13.i266, label %OUT_RING.exit.i264.OUT_RING.exit15.i269_crit_edge

OUT_RING.exit.i264.OUT_RING.exit15.i269_crit_edge: ; preds = %OUT_RING.exit.i264
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit15.i269

if.then.i13.i266:                                 ; preds = %OUT_RING.exit.i264
  call void @__sanitizer_cov_trace_pc() #14
  %start.i12.i265 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %425 = ptrtoint ptr %start.i12.i265 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %start.i12.i265, align 4
  %427 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr %426, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit15.i269

OUT_RING.exit15.i269:                             ; preds = %if.then.i13.i266, %OUT_RING.exit.i264.OUT_RING.exit15.i269_crit_edge
  %428 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i14.i267 = getelementptr i32, ptr %429, i32 1
  store ptr %incdec.ptr.i14.i267, ptr %next.i.i.i117, align 8
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %conv.i262, ptr %429, align 4
  %431 = load ptr, ptr %next.i.i.i117, align 8
  %432 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i18.i268 = icmp eq ptr %431, %433
  br i1 %cmp.i18.i268, label %if.then.i20.i271, label %OUT_RING.exit15.i269.get_stats_counter.exit275_crit_edge

OUT_RING.exit15.i269.get_stats_counter.exit275_crit_edge: ; preds = %OUT_RING.exit15.i269
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_stats_counter.exit275

if.then.i20.i271:                                 ; preds = %OUT_RING.exit15.i269
  call void @__sanitizer_cov_trace_pc() #14
  %start.i19.i270 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %434 = ptrtoint ptr %start.i19.i270 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %start.i19.i270, align 4
  %436 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %436)
  store ptr %435, ptr %next.i.i.i117, align 8
  br label %get_stats_counter.exit275

get_stats_counter.exit275:                        ; preds = %if.then.i20.i271, %OUT_RING.exit15.i269.get_stats_counter.exit275_crit_edge
  %shr.i272 = lshr i64 %add50, 32
  %conv4.i273 = trunc i64 %shr.i272 to i32
  %437 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i21.i274 = getelementptr i32, ptr %438, i32 1
  store ptr %incdec.ptr.i21.i274, ptr %next.i.i.i117, align 8
  %439 = ptrtoint ptr %438 to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %conv4.i273, ptr %438, align 4
  call void @adreno_wait_ring(ptr noundef %3, i32 noundef 2) #12
  %440 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %next.i.i.i117, align 8
  %442 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i278 = icmp eq ptr %441, %443
  br i1 %cmp.i.i278, label %if.then.i.i280, label %get_stats_counter.exit275.OUT_PKT4.exit_crit_edge

get_stats_counter.exit275.OUT_PKT4.exit_crit_edge: ; preds = %get_stats_counter.exit275
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT4.exit

if.then.i.i280:                                   ; preds = %get_stats_counter.exit275
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i279 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %444 = ptrtoint ptr %start.i.i279 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %start.i.i279, align 4
  %446 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %446)
  store ptr %445, ptr %next.i.i.i117, align 8
  br label %OUT_PKT4.exit

OUT_PKT4.exit:                                    ; preds = %if.then.i.i280, %get_stats_counter.exit275.OUT_PKT4.exit_crit_edge
  %447 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i282 = getelementptr i32, ptr %448, i32 1
  store ptr %incdec.ptr.i.i282, ptr %next.i.i.i117, align 8
  %449 = ptrtoint ptr %448 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 1208517889, ptr %448, align 4
  %450 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %seqno, align 8
  %452 = load ptr, ptr %next.i.i.i117, align 8
  %453 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i286 = icmp eq ptr %452, %454
  br i1 %cmp.i286, label %if.then.i288, label %OUT_PKT4.exit.OUT_RING.exit291_crit_edge

OUT_PKT4.exit.OUT_RING.exit291_crit_edge:         ; preds = %OUT_PKT4.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit291

if.then.i288:                                     ; preds = %OUT_PKT4.exit
  call void @__sanitizer_cov_trace_pc() #14
  %start.i287 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %455 = ptrtoint ptr %start.i287 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %start.i287, align 4
  %457 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %457)
  store ptr %456, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit291

OUT_RING.exit291:                                 ; preds = %if.then.i288, %OUT_PKT4.exit.OUT_RING.exit291_crit_edge
  %458 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i289 = getelementptr i32, ptr %459, i32 1
  store ptr %incdec.ptr.i289, ptr %next.i.i.i117, align 8
  %460 = ptrtoint ptr %459 to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 %451, ptr %459, align 4
  call void @adreno_wait_ring(ptr noundef %3, i32 noundef 5) #12
  %461 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %next.i.i.i117, align 8
  %463 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i.i294 = icmp eq ptr %462, %464
  br i1 %cmp.i.i294, label %if.then.i.i296, label %OUT_RING.exit291.OUT_PKT7.exit299_crit_edge

OUT_RING.exit291.OUT_PKT7.exit299_crit_edge:      ; preds = %OUT_RING.exit291
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit299

if.then.i.i296:                                   ; preds = %OUT_RING.exit291
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i295 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %465 = ptrtoint ptr %start.i.i295 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %start.i.i295, align 4
  %467 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr %466, ptr %next.i.i.i117, align 8
  br label %OUT_PKT7.exit299

OUT_PKT7.exit299:                                 ; preds = %if.then.i.i296, %OUT_RING.exit291.OUT_PKT7.exit299_crit_edge
  %468 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i.i297 = getelementptr i32, ptr %469, i32 1
  store ptr %incdec.ptr.i.i297, ptr %next.i.i.i117, align 8
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 1883635716, ptr %469, align 4
  %471 = load ptr, ptr %next.i.i.i117, align 8
  %472 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i302 = icmp eq ptr %471, %473
  br i1 %cmp.i302, label %if.then.i304, label %OUT_PKT7.exit299.OUT_RING.exit307_crit_edge

OUT_PKT7.exit299.OUT_RING.exit307_crit_edge:      ; preds = %OUT_PKT7.exit299
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit307

if.then.i304:                                     ; preds = %OUT_PKT7.exit299
  call void @__sanitizer_cov_trace_pc() #14
  %start.i303 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %474 = ptrtoint ptr %start.i303 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %start.i303, align 4
  %476 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %476)
  store ptr %475, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit307

OUT_RING.exit307:                                 ; preds = %if.then.i304, %OUT_PKT7.exit299.OUT_RING.exit307_crit_edge
  %477 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i305 = getelementptr i32, ptr %478, i32 1
  store ptr %incdec.ptr.i305, ptr %next.i.i.i117, align 8
  %479 = ptrtoint ptr %478 to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 -2147483644, ptr %478, align 4
  %480 = ptrtoint ptr %memptrs_iova.i to i32
  call void @__asan_load8_noabort(i32 %480)
  %481 = load i64, ptr %memptrs_iova.i, align 8
  %482 = trunc i64 %481 to i32
  %conv58 = add i32 %482, 4
  %483 = load ptr, ptr %next.i.i.i117, align 8
  %484 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i310 = icmp eq ptr %483, %485
  br i1 %cmp.i310, label %if.then.i312, label %OUT_RING.exit307.OUT_RING.exit315_crit_edge

OUT_RING.exit307.OUT_RING.exit315_crit_edge:      ; preds = %OUT_RING.exit307
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit315

if.then.i312:                                     ; preds = %OUT_RING.exit307
  call void @__sanitizer_cov_trace_pc() #14
  %start.i311 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %486 = ptrtoint ptr %start.i311 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %start.i311, align 4
  %488 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %488)
  store ptr %487, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit315

OUT_RING.exit315:                                 ; preds = %if.then.i312, %OUT_RING.exit307.OUT_RING.exit315_crit_edge
  %489 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i313 = getelementptr i32, ptr %490, i32 1
  store ptr %incdec.ptr.i313, ptr %next.i.i.i117, align 8
  %491 = ptrtoint ptr %490 to i32
  call void @__asan_store4_noabort(i32 %491)
  store i32 %conv58, ptr %490, align 4
  %492 = ptrtoint ptr %memptrs_iova.i to i32
  call void @__asan_load8_noabort(i32 %492)
  %493 = load i64, ptr %memptrs_iova.i, align 8
  %add60 = add i64 %493, 4
  %shr61 = lshr i64 %add60, 32
  %conv63 = trunc i64 %shr61 to i32
  %494 = load ptr, ptr %next.i.i.i117, align 8
  %495 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i318 = icmp eq ptr %494, %496
  br i1 %cmp.i318, label %if.then.i320, label %OUT_RING.exit315.OUT_RING.exit323_crit_edge

OUT_RING.exit315.OUT_RING.exit323_crit_edge:      ; preds = %OUT_RING.exit315
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit323

if.then.i320:                                     ; preds = %OUT_RING.exit315
  call void @__sanitizer_cov_trace_pc() #14
  %start.i319 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %497 = ptrtoint ptr %start.i319 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %start.i319, align 4
  %499 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %499)
  store ptr %498, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit323

OUT_RING.exit323:                                 ; preds = %if.then.i320, %OUT_RING.exit315.OUT_RING.exit323_crit_edge
  %500 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i321 = getelementptr i32, ptr %501, i32 1
  store ptr %incdec.ptr.i321, ptr %next.i.i.i117, align 8
  %502 = ptrtoint ptr %501 to i32
  call void @__asan_store4_noabort(i32 %502)
  store i32 %conv63, ptr %501, align 4
  %503 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %seqno, align 8
  %505 = load ptr, ptr %next.i.i.i117, align 8
  %506 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %end.i.i.i118, align 8
  %cmp.i326 = icmp eq ptr %505, %507
  br i1 %cmp.i326, label %if.then.i328, label %OUT_RING.exit323.OUT_RING.exit331_crit_edge

OUT_RING.exit323.OUT_RING.exit331_crit_edge:      ; preds = %OUT_RING.exit323
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit331

if.then.i328:                                     ; preds = %OUT_RING.exit323
  call void @__sanitizer_cov_trace_pc() #14
  %start.i327 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %508 = ptrtoint ptr %start.i327 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %start.i327, align 4
  %510 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %510)
  store ptr %509, ptr %next.i.i.i117, align 8
  br label %OUT_RING.exit331

OUT_RING.exit331:                                 ; preds = %if.then.i328, %OUT_RING.exit323.OUT_RING.exit331_crit_edge
  %511 = ptrtoint ptr %next.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %next.i.i.i117, align 8
  %incdec.ptr.i329 = getelementptr i32, ptr %512, i32 1
  store ptr %incdec.ptr.i329, ptr %next.i.i.i117, align 8
  %513 = ptrtoint ptr %512 to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 %504, ptr %512, align 4
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %514 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %515, i32 9728
  %call.i332 = call i32 @msm_readl(ptr noundef %add.ptr.i) #12
  %conv.i333 = zext i32 %call.i332 to i64
  %516 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %mmio.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %517, i32 9732
  %call4.i = call i32 @msm_readl(ptr noundef %add.ptr3.i) #12
  %conv5.i334 = zext i32 %call4.i to i64
  %shl6.i335 = shl nuw i64 %conv5.i334, 32
  %or.i = or i64 %shl6.i335, %conv.i333
  call fastcc void @trace_msm_gpu_submit_flush(ptr noundef %submit, i64 noundef %or.i)
  call fastcc void @a6xx_flush(ptr noundef %gpu, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a6xx_irq(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 2052
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #12
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i91 = getelementptr i8, ptr %7, i32 220
  tail call void @msm_writel(i32 noundef %call.i, ptr noundef %add.ptr.i91) #12
  %disable_err_irq = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 40
  %8 = ptrtoint ptr %disable_err_irq to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %disable_err_irq, align 8, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %and = and i32 %call.i, 1048576
  %spec.select = select i1 %tobool.not, i32 %call.i, i32 %and
  %and1 = and i32 %spec.select, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %entry.if.end4_crit_edge, label %if.then3

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  %10 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs.i, align 4
  %active_ring.i = getelementptr inbounds %struct.msm_gpu_funcs, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %active_ring.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %active_ring.i, align 4
  %call.i92 = tail call ptr %13(ptr noundef %gpu) #12
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 2124
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #12
  %and.i = and i32 %call.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end.i:                                         ; preds = %if.then3
  %mmio.i39.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %mmio.i39.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i39.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %17, i32 82700
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i40.i) #12
  %pdev.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %tobool5.not.i = icmp eq ptr %call.i92, null
  br i1 %tobool5.not.i, label %if.end.i.cond.end9.i_crit_edge, label %cond.true7.i

if.end.i.cond.end9.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end9.i

cond.true7.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %id.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %call.i92, i32 0, i32 1
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 4
  %seqno.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %call.i92, i32 0, i32 11
  %22 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %seqno.i, align 8
  br label %cond.end9.i

cond.end9.i:                                      ; preds = %cond.true7.i, %if.end.i.cond.end9.i_crit_edge
  %cond69.i = phi i32 [ %21, %cond.true7.i ], [ -1, %if.end.i.cond.end9.i_crit_edge ]
  %cond10.i = phi i32 [ %23, %cond.true7.i ], [ 0, %if.end.i.cond.end9.i_crit_edge ]
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i42.i = getelementptr i8, ptr %25, i32 2112
  %call.i43.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i42.i) #12
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i45.i = getelementptr i8, ptr %27, i32 8216
  %call.i46.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i45.i) #12
  %28 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i48.i = getelementptr i8, ptr %29, i32 8220
  %call.i49.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i48.i) #12
  %30 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i51.i = getelementptr i8, ptr %31, i32 9376
  %call.i52.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i51.i) #12
  %conv.i.i = zext i32 %call.i52.i to i64
  %32 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %33, i32 9380
  %call4.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr3.i.i) #12
  %conv5.i.i = zext i32 %call4.i.i to i64
  %shl6.i.i = shl nuw i64 %conv5.i.i, 32
  %or.i.i = or i64 %shl6.i.i, %conv.i.i
  %34 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i54.i = getelementptr i8, ptr %35, i32 9384
  %call.i55.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i54.i) #12
  %36 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i57.i = getelementptr i8, ptr %37, i32 9388
  %call.i58.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i57.i) #12
  %conv.i59.i = zext i32 %call.i58.i to i64
  %38 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i, align 8
  %add.ptr3.i60.i = getelementptr i8, ptr %39, i32 9392
  %call4.i61.i = tail call i32 @msm_readl(ptr noundef %add.ptr3.i60.i) #12
  %conv5.i62.i = zext i32 %call4.i61.i to i64
  %shl6.i63.i = shl nuw i64 %conv5.i62.i, 32
  %or.i64.i = or i64 %shl6.i63.i, %conv.i59.i
  %40 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i66.i = getelementptr i8, ptr %41, i32 9396
  %call.i67.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i66.i) #12
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.41, i32 noundef %cond69.i, i32 noundef %cond10.i, i32 noundef %call.i43.i, i32 noundef %call.i46.i, i32 noundef %call.i49.i, i64 noundef %or.i.i, i32 noundef %call.i55.i, i64 noundef %or.i64.i, i32 noundef %call.i67.i) #12
  %hangcheck_timer.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 33
  %call18.i = tail call i32 @del_timer(ptr noundef %hangcheck_timer.i) #12
  %worker.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 39
  %42 = ptrtoint ptr %worker.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %worker.i, align 8
  %recover_work.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 36
  %call19.i = tail call zeroext i1 @kthread_queue_work(ptr noundef %43, ptr noundef %recover_work.i) #12
  br label %if.end4

if.end4:                                          ; preds = %cond.end9.i, %if.then3.if.end4_crit_edge, %entry.if.end4_crit_edge
  %and5 = and i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end16_crit_edge, label %do.body

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.body:                                          ; preds = %if.end4
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_irq._rs, ptr noundef nonnull @__func__.a6xx_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.if.end16_crit_edge, label %do.end

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %44 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.28) #16
  br label %if.end16

if.end16:                                         ; preds = %do.end, %do.body.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  %and17 = and i32 %spec.select, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  %46 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i94 = getelementptr i8, ptr %47, i32 8332
  %call.i.i95 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i94) #12
  %and.i96 = and i32 %call.i.i95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %tobool.not.i97 = icmp eq i32 %and.i96, 0
  br i1 %tobool.not.i97, label %if.then19.if.end8.i_crit_edge, label %if.then.i

if.then19.if.end8.i_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then19
  %48 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i131.i = getelementptr i8, ptr %49, i32 9248
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i131.i) #12
  %50 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i133.i = getelementptr i8, ptr %51, i32 9252
  %call.i134.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i133.i) #12
  %call2.i = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_cp_hw_err_irq._rs, ptr noundef nonnull @__func__.a6xx_cp_hw_err_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end8.i_crit_edge, label %do.end.i

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i98 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %52 = ptrtoint ptr %pdev.i98 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev.i98, align 8
  %dev.i99 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i99, ptr noundef nonnull @.str.42, i32 noundef %call.i134.i) #16
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i, %if.then.i.if.end8.i_crit_edge, %if.then19.if.end8.i_crit_edge
  %and9.i = and i32 %call.i.i95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end24.i_crit_edge, label %do.body12.i

if.end8.i.if.end24.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

do.body12.i:                                      ; preds = %if.end8.i
  %call13.i = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_cp_hw_err_irq._rs.43, ptr noundef nonnull @__func__.a6xx_cp_hw_err_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %do.body12.i.if.end24.i_crit_edge, label %do.end18.i

do.body12.i.if.end24.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

do.end18.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev19.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %54 = ptrtoint ptr %pdev19.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev19.i, align 8
  %dev20.i = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.45) #16
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end18.i, %do.body12.i.if.end24.i_crit_edge, %if.end8.i.if.end24.i_crit_edge
  %and25.i = and i32 %call.i.i95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.end41.i_crit_edge, label %do.body28.i

if.end24.i.if.end41.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

do.body28.i:                                      ; preds = %if.end24.i
  %call29.i = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_cp_hw_err_irq._rs.47, ptr noundef nonnull @__func__.a6xx_cp_hw_err_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %do.body28.i.if.end41.i_crit_edge, label %do.end34.i

do.body28.i.if.end41.i_crit_edge:                 ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

do.end34.i:                                       ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev35.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %56 = ptrtoint ptr %pdev35.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev35.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i136.i = getelementptr i8, ptr %59, i32 8324
  %call.i137.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i136.i) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36.i, ptr noundef nonnull @.str.49, i32 noundef %call.i137.i) #16
  br label %if.end41.i

if.end41.i:                                       ; preds = %do.end34.i, %do.body28.i.if.end41.i_crit_edge, %if.end24.i.if.end41.i_crit_edge
  %and42.i = and i32 %call.i.i95, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end41.i.if.end62.i_crit_edge, label %if.then44.i

if.end41.i.if.end62.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.i

if.then44.i:                                      ; preds = %if.end41.i
  %60 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i139.i = getelementptr i8, ptr %61, i32 8336
  %call.i140.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i139.i) #12
  %call48.i = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_cp_hw_err_irq._rs.51, ptr noundef nonnull @__func__.a6xx_cp_hw_err_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.then44.i.if.end62.i_crit_edge, label %do.end53.i

if.then44.i.if.end62.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.i

do.end53.i:                                       ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev54.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %62 = ptrtoint ptr %pdev54.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev54.i, align 8
  %dev55.i = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3
  %and56.i = and i32 %call.i140.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  %cond.i = select i1 %tobool57.not.i, ptr @.str.56, ptr @.str.55
  %and58.i = and i32 %call.i140.i, 262143
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55.i, ptr noundef nonnull @.str.53, ptr noundef nonnull %cond.i, i32 noundef %and58.i, i32 noundef %call.i140.i) #16
  br label %if.end62.i

if.end62.i:                                       ; preds = %do.end53.i, %if.then44.i.if.end62.i_crit_edge, %if.end41.i.if.end62.i_crit_edge
  %and63.i = and i32 %call.i.i95, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.end62.i.if.end78.i_crit_edge, label %do.body66.i

if.end62.i.if.end78.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78.i

do.body66.i:                                      ; preds = %if.end62.i
  %call67.i = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_cp_hw_err_irq._rs.57, ptr noundef nonnull @__func__.a6xx_cp_hw_err_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %do.body66.i.if.end78.i_crit_edge, label %do.end72.i

do.body66.i.if.end78.i_crit_edge:                 ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78.i

do.end72.i:                                       ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev73.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %64 = ptrtoint ptr %pdev73.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev73.i, align 8
  %dev74.i = getelementptr inbounds %struct.platform_device, ptr %65, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74.i, ptr noundef nonnull @.str.59) #16
  br label %if.end78.i

if.end78.i:                                       ; preds = %do.end72.i, %do.body66.i.if.end78.i_crit_edge, %if.end62.i.if.end78.i_crit_edge
  %and79.i = and i32 %call.i.i95, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end78.i.if.end94.i_crit_edge, label %do.body82.i

if.end78.i.if.end94.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.i

do.body82.i:                                      ; preds = %if.end78.i
  %call83.i = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_cp_hw_err_irq._rs.61, ptr noundef nonnull @__func__.a6xx_cp_hw_err_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %do.body82.i.if.end94.i_crit_edge, label %do.end88.i

do.body82.i.if.end94.i_crit_edge:                 ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.i

do.end88.i:                                       ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev89.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %66 = ptrtoint ptr %pdev89.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev89.i, align 8
  %dev90.i = getelementptr inbounds %struct.platform_device, ptr %67, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev90.i, ptr noundef nonnull @.str.63) #16
  br label %if.end94.i

if.end94.i:                                       ; preds = %do.end88.i, %do.body82.i.if.end94.i_crit_edge, %if.end78.i.if.end94.i_crit_edge
  %and95.i = and i32 %call.i.i95, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %if.end94.i.if.end20_crit_edge, label %do.body98.i

if.end94.i.if.end20_crit_edge:                    ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.body98.i:                                      ; preds = %if.end94.i
  %call99.i = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_cp_hw_err_irq._rs.65, ptr noundef nonnull @__func__.a6xx_cp_hw_err_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %tobool100.not.i = icmp eq i32 %call99.i, 0
  br i1 %tobool100.not.i, label %do.body98.i.if.end20_crit_edge, label %do.end104.i

do.body98.i.if.end20_crit_edge:                   ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.end104.i:                                      ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev105.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %68 = ptrtoint ptr %pdev105.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev105.i, align 8
  %dev106.i = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev106.i, ptr noundef nonnull @.str.67) #16
  br label %if.end20

if.end20:                                         ; preds = %do.end104.i, %do.body98.i.if.end20_crit_edge, %if.end94.i.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  %and21 = and i32 %spec.select, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end36_crit_edge, label %do.body24

if.end20.if.end36_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.body24:                                        ; preds = %if.end20
  %call25 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_irq._rs.29, ptr noundef nonnull @__func__.a6xx_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.body24.if.end36_crit_edge, label %do.end30

do.body24.if.end36_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  %pdev31 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %70 = ptrtoint ptr %pdev31 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev31, align 8
  %dev32 = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.31) #16
  br label %if.end36

if.end36:                                         ; preds = %do.end30, %do.body24.if.end36_crit_edge, %if.end20.if.end36_crit_edge
  %and37 = and i32 %spec.select, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end52_crit_edge, label %do.body40

if.end36.if.end52_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

do.body40:                                        ; preds = %if.end36
  %call41 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_irq._rs.33, ptr noundef nonnull @__func__.a6xx_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.body40.if.end52_crit_edge, label %do.end46

do.body40.if.end52_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  %pdev47 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %72 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev47, align 8
  %dev48 = getelementptr inbounds %struct.platform_device, ptr %73, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.35) #16
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %do.body40.if.end52_crit_edge, %if.end36.if.end52_crit_edge
  %and53 = and i32 %spec.select, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end68_crit_edge, label %do.body56

if.end52.if.end68_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

do.body56:                                        ; preds = %if.end52
  %call57 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_irq._rs.37, ptr noundef nonnull @__func__.a6xx_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.body56.if.end68_crit_edge, label %do.end62

do.body56.if.end68_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  %pdev63 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %74 = ptrtoint ptr %pdev63 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev63, align 8
  %dev64 = getelementptr inbounds %struct.platform_device, ptr %75, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.39) #16
  br label %if.end68

if.end68:                                         ; preds = %do.end62, %do.body56.if.end68_crit_edge, %if.end52.if.end68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool70.not = icmp eq i32 %and, 0
  br i1 %tobool70.not, label %if.end68.if.end72_crit_edge, label %if.then71

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msm_gpu_retire(ptr noundef %gpu) #12
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end68.if.end72_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @a6xx_active_ring(ptr nocapture noundef readonly %gpu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_ring = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 3
  %0 = ptrtoint ptr %cur_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_ring, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a6xx_recover(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @adreno_dump_info(ptr noundef %gpu) #12
  %pdev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 8716
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #12
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef %call.i) #12
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev.1 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %7, i32 8720
  %call.i.1 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.1) #12
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.1, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 1, i32 noundef %call.i.1) #12
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev.2 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.2 = getelementptr i8, ptr %11, i32 8724
  %call.i.2 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.2) #12
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.2, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 2, i32 noundef %call.i.2) #12
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev.3 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.3 = getelementptr i8, ptr %15, i32 8728
  %call.i.3 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.3) #12
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 3, i32 noundef %call.i.3) #12
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev.4 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.4 = getelementptr i8, ptr %19, i32 8732
  %call.i.4 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.4) #12
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.4, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 4, i32 noundef %call.i.4) #12
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev.5 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.5 = getelementptr i8, ptr %23, i32 8736
  %call.i.5 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.5) #12
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.5, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 5, i32 noundef %call.i.5) #12
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %dev.6 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.6 = getelementptr i8, ptr %27, i32 8740
  %call.i.6 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.6) #12
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.6, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 6, i32 noundef %call.i.6) #12
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 8
  %dev.7 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.7 = getelementptr i8, ptr %31, i32 8744
  %call.i.7 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.7) #12
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.7, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 7, i32 noundef %call.i.7) #12
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @hang_debug to i32))
  %32 = load i8, ptr @hang_debug, align 1, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 2112
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #12
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.71, i32 noundef %call.i.i) #12
  tail call void @adreno_dump(ptr noundef %gpu) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mmio.i21 = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 3
  %37 = ptrtoint ptr %mmio.i21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i21, align 4
  %add.ptr.i22 = getelementptr i8, ptr %38, i32 82700
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i22) #12
  %funcs = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  %39 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %funcs, align 4
  %pm_suspend = getelementptr inbounds %struct.msm_gpu_funcs, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %pm_suspend to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pm_suspend, align 4
  %call5 = tail call i32 %42(ptr noundef %gpu) #12
  %43 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %funcs, align 4
  %pm_resume = getelementptr inbounds %struct.msm_gpu_funcs, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %pm_resume to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pm_resume, align 4
  %call7 = tail call i32 %46(ptr noundef %gpu) #12
  %call8 = tail call i32 @msm_gpu_hw_init(ptr noundef %gpu) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @a6xx_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a6xx_gpu_busy(ptr nocapture noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gmu = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4
  %0 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gmu, align 8
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %1, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 82192
  %call.i319 = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #12
  %conv.i = zext i32 %call.i319 to i64
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 82196
  %call4.i = tail call i32 @msm_readl(ptr noundef %add.ptr3.i) #12
  %conv5.i = zext i32 %call4.i to i64
  %shl6.i = shl nuw i64 %conv5.i, 32
  %or.i = or i64 %shl6.i, %conv.i
  %busy_cycles6 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 3
  %6 = ptrtoint ptr %busy_cycles6 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %busy_cycles6, align 8
  %sub = sub i64 %or.i, %7
  %mul = mul i64 %sub, 10
  %div90318 = lshr i64 %mul, 6
  %8 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div90318, i64 6148914691236517205) #18, !srcloc !212
  %9 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div90318, i64 %8) #18, !srcloc !213
  %10 = ptrtoint ptr %busy_cycles6 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %or.i, ptr %busy_cycles6, align 8
  %11 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gmu, align 8
  %call.i320 = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %9)
  %cmp198 = icmp ugt i64 %9, 4294967295
  br i1 %cmp198, label %do.end, label %if.end228, !prof !205

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1642, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end228:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv229 = trunc i64 %9 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end228, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ %conv229, %if.end228 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @a6xx_gpu_state_get(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_gpu_state_put(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_gmu_get_freq(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a6xx_gpu_set_freq(ptr noundef %gpu, ptr noundef %opp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  tail call void @a6xx_gmu_set_freq(ptr noundef %gpu, ptr noundef %opp) #12
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @a6xx_create_address_space(ptr nocapture noundef readonly %gpu, ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %htw_llc_slice = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 11
  %0 = ptrtoint ptr %htw_llc_slice to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htw_llc_slice, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @adreno_set_llc_attributes(ptr noundef nonnull %call) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call7 = tail call ptr @msm_iommu_new(ptr noundef %dev, ptr noundef nonnull %call) #12
  %cmp.i42 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iommu_domain_free(ptr noundef nonnull %call) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %geometry = getelementptr inbounds %struct.iommu_domain, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %geometry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %geometry, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 16777216)
  %cond = zext i32 %4 to i64
  %aperture_end = getelementptr inbounds %struct.iommu_domain, ptr %call, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %aperture_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %aperture_end, align 4
  %conv15 = zext i32 %6 to i64
  %sub = sub nsw i64 1, %cond
  %add = add nsw i64 %sub, %conv15
  %call16 = tail call ptr @msm_gem_address_space_create(ptr noundef %call7, ptr noundef nonnull @.str.72, i64 noundef %cond, i64 noundef %add) #12
  %cmp.i43 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43, label %if.then20, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call7, align 4
  %destroy = getelementptr inbounds %struct.msm_mmu_funcs, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %destroy, align 4
  tail call void %10(ptr noundef %call7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end11.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %if.then9 ], [ null, %entry.cleanup_crit_edge ], [ %call16, %if.then20 ], [ %call16, %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @a6xx_create_private_address_space(ptr nocapture noundef readonly %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %0 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aspace, align 8
  %mmu1 = getelementptr inbounds %struct.msm_gem_address_space, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu1, align 4
  %call = tail call ptr @msm_iommu_pagetable_create(ptr noundef %3) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call ptr @msm_gem_address_space_create(ptr noundef %call, ptr noundef nonnull @.str.72, i64 noundef 4294967296, i64 noundef 8589934591) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a6xx_get_rptr(ptr nocapture noundef readonly %gpu, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_apriv = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 45
  %0 = ptrtoint ptr %hw_apriv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_apriv, align 1, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %has_whereami = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 8
  %2 = ptrtoint ptr %has_whereami to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_whereami, align 4, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %shadow = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 7
  %4 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shadow, align 8
  %id = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 8216
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #12
  %memptrs = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 13
  %12 = ptrtoint ptr %memptrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memptrs, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %call.i, ptr %13, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %call.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a6xx_get_timestamp(ptr noundef %gpu, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gmu = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4
  %lock = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %call = tail call i32 @a6xx_gmu_set_oob(ptr noundef %gmu, i32 noundef 3) #12
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 9728
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #12
  %conv.i = zext i32 %call.i to i64
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %3, i32 9732
  %call4.i = tail call i32 @msm_readl(ptr noundef %add.ptr3.i) #12
  %conv5.i = zext i32 %call4.i to i64
  %shl6.i = shl nuw i64 %conv5.i, 32
  %or.i = or i64 %shl6.i, %conv.i
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %or.i, ptr %value, align 8
  tail call void @a6xx_gmu_clear_oob(ptr noundef %gmu, i32 noundef 3) #12
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_gmu_set_oob(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @a6xx_flush(ptr nocapture noundef readonly %gpu, ptr noundef %ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %has_whereami.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 8
  %0 = ptrtoint ptr %has_whereami.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_whereami.i, align 4, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.update_shadow_rptr.exit_crit_edge, label %land.lhs.true.i

entry.update_shadow_rptr.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_shadow_rptr.exit

land.lhs.true.i:                                  ; preds = %entry
  %hw_apriv.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 45
  %2 = ptrtoint ptr %hw_apriv.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_apriv.i, align 1, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not.i = icmp eq i8 %3, 0
  br i1 %tobool4.not.i, label %if.then.i, label %land.lhs.true.i.update_shadow_rptr.exit_crit_edge

land.lhs.true.i.update_shadow_rptr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_shadow_rptr.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  tail call void @adreno_wait_ring(ptr noundef %ring, i32 noundef 3) #12
  %next.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 6
  %4 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next.i.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 4
  %6 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %5, %7
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.i.OUT_PKT7.exit.i_crit_edge

if.then.i.OUT_PKT7.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_PKT7.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 3
  %8 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %start.i.i.i, align 4
  %10 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %next.i.i.i, align 8
  br label %OUT_PKT7.exit.i

OUT_PKT7.exit.i:                                  ; preds = %if.then.i.i.i, %if.then.i.OUT_PKT7.exit.i_crit_edge
  %11 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %12, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %next.i.i.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1885470722, ptr %12, align 4
  %shadow_iova.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 6
  %14 = ptrtoint ptr %shadow_iova.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %shadow_iova.i, align 8
  %id.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 1
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %17, 2
  %18 = trunc i64 %15 to i32
  %conv5.i = add i32 %mul.i, %18
  %19 = load ptr, ptr %next.i.i.i, align 8
  %20 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i = icmp eq ptr %19, %21
  br i1 %cmp.i.i, label %if.then.i.i, label %OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge

OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge:        ; preds = %OUT_PKT7.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit.i

if.then.i.i:                                      ; preds = %OUT_PKT7.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 3
  %22 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %start.i.i, align 4
  %24 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit.i

OUT_RING.exit.i:                                  ; preds = %if.then.i.i, %OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge
  %25 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %26, i32 1
  store ptr %incdec.ptr.i.i, ptr %next.i.i.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv5.i, ptr %26, align 4
  %28 = ptrtoint ptr %shadow_iova.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %shadow_iova.i, align 8
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id.i, align 4
  %mul8.i = shl i32 %31, 2
  %conv9.i = zext i32 %mul8.i to i64
  %add10.i = add i64 %29, %conv9.i
  %shr.i = lshr i64 %add10.i, 32
  %conv12.i = trunc i64 %shr.i to i32
  %32 = load ptr, ptr %next.i.i.i, align 8
  %33 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i22.i = icmp eq ptr %32, %34
  br i1 %cmp.i22.i, label %if.then.i24.i, label %OUT_RING.exit.i.OUT_RING.exit26.i_crit_edge

OUT_RING.exit.i.OUT_RING.exit26.i_crit_edge:      ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %OUT_RING.exit26.i

if.then.i24.i:                                    ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i23.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 3
  %35 = ptrtoint ptr %start.i23.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %start.i23.i, align 4
  %37 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit26.i

OUT_RING.exit26.i:                                ; preds = %if.then.i24.i, %OUT_RING.exit.i.OUT_RING.exit26.i_crit_edge
  %38 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i25.i = getelementptr i32, ptr %39, i32 1
  store ptr %incdec.ptr.i25.i, ptr %next.i.i.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv12.i, ptr %39, align 4
  br label %update_shadow_rptr.exit

update_shadow_rptr.exit:                          ; preds = %OUT_RING.exit26.i, %land.lhs.true.i.update_shadow_rptr.exit_crit_edge, %entry.update_shadow_rptr.exit_crit_edge
  %preempt_lock = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 16
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %preempt_lock) #12
  %next = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 6
  %41 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %next, align 8
  %cur = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 5
  %43 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %cur, align 4
  %start.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 3
  %44 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %start.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  %rem.i = srem i32 %sub.ptr.div.i, 8192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %preempt_lock, i32 noundef %call2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !214
  tail call void @arm_heavy_mb() #12
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %46 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %47, i32 8220
  tail call void @msm_writel(i32 noundef %rem.i, ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @a6xx_idle(ptr noundef %gpu, ptr noundef %ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @adreno_idle(ptr noundef %gpu, ptr noundef %ring) #12
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %gmu.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4
  %mmio.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %add.neg = sub i32 -100, %0
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %call.i = tail call zeroext i1 @a6xx_gmu_isidle(ptr noundef %gmu.i) #12
  br i1 %call.i, label %if.end.i, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

if.end.i:                                         ; preds = %do.body
  %1 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 2112
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i, label %_a6xx_check_idle.exit, label %if.end.i.do.cond_crit_edge

if.end.i.do.cond_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

_a6xx_check_idle.exit:                            ; preds = %if.end.i
  %3 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %4, i32 2052
  %call.i15.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i14.i) #12
  %and8.i = and i32 %call.i15.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %_a6xx_check_idle.exit.return_crit_edge, label %_a6xx_check_idle.exit.do.cond_crit_edge

_a6xx_check_idle.exit.do.cond_crit_edge:          ; preds = %_a6xx_check_idle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

_a6xx_check_idle.exit.return_crit_edge:           ; preds = %_a6xx_check_idle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.cond:                                          ; preds = %_a6xx_check_idle.exit.do.cond_crit_edge, %if.end.i.do.cond_crit_edge, %do.body.do.cond_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %5
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.cond.do.body_crit_edge, label %if.then5.critedge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then5.critedge:                                ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpu, align 8
  %8 = tail call ptr @llvm.returnaddress(i32 0)
  %9 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 2112
  %call.i17 = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #12
  %11 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i19 = getelementptr i8, ptr %12, i32 2052
  %call.i20 = tail call i32 @msm_readl(ptr noundef %add.ptr.i19) #12
  %13 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i22 = getelementptr i8, ptr %14, i32 8216
  %call.i23 = tail call i32 @msm_readl(ptr noundef %add.ptr.i22) #12
  %15 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i25 = getelementptr i8, ptr %16, i32 8220
  %call.i26 = tail call i32 @msm_readl(ptr noundef %add.ptr.i25) #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, ptr noundef %7, ptr noundef %8, i32 noundef %call.i17, i32 noundef %call.i20, i32 noundef %call.i23, i32 noundef %call.i26) #12
  br label %return

return:                                           ; preds = %if.then5.critedge, %_a6xx_check_idle.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then5.critedge ], [ false, %entry.return_crit_edge ], [ true, %_a6xx_check_idle.exit.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @a6xx_gmu_clear_oob(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_fw_create_bo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_zap_shader_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_wait_ring(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_idle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @a6xx_gmu_isidle(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_gpu_suspend() unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_suspend, i32 0, i32 1), ptr blockaddress(@trace_msm_gpu_suspend, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !215

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !209

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !216
  %call42 = tail call i32 @__traceiter_msm_gpu_suspend(ptr noundef null, i32 noundef 0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !217
  %13 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !209

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_suspend, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_suspend, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_msm_gpu_suspend.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_msm_gpu_suspend.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 167, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !219
  %31 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_devfreq_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_gmu_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llcc_slice_deactivate(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_gpu_resume() unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_resume, i32 0, i32 1), ptr blockaddress(@trace_msm_gpu_resume, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !215

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !209

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !220
  %call42 = tail call i32 @__traceiter_msm_gpu_resume(ptr noundef null, i32 noundef 0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !221
  %13 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !209

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_resume, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_resume, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_msm_gpu_resume.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_msm_gpu_resume.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 180, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !219
  %31 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_gmu_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_devfreq_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llcc_slice_activate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llcc_get_slice_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_rmw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_gpu_submit_flush(ptr noundef %submit, i64 noundef %ticks) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit_flush, i32 0, i32 1), ptr blockaddress(@trace_msm_gpu_submit_flush, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !215

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !209

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !222
  %call42 = tail call i32 @__traceiter_msm_gpu_submit_flush(ptr noundef null, ptr noundef %submit, i64 noundef %ticks) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !223
  %13 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !209

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit_flush, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_msm_gpu_submit_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_msm_gpu_submit_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 53, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !219
  %31 = tail call i32 @llvm.read_register.i32(metadata !194) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_iommu_pagetable_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_submit_flush(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_retire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a6xx_gmu_set_freq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_set_llc_attributes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_iommu_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_create(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_iommu_pagetable_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !104, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !145, !147, !149, !151, !152, !153, !154, !155, !157, !159, !161, !163, !164, !165, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192}
!llvm.named.register.sp = !{!194}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @a630_hwcg, !1, !"a630_hwcg", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 227, i32 29}
!2 = !{ptr @a640_hwcg, !3, !"a640_hwcg", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 336, i32 29}
!4 = !{ptr @a650_hwcg, !5, !"a650_hwcg", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 389, i32 29}
!6 = !{ptr @a660_hwcg, !7, !"a660_hwcg", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 442, i32 29}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1868, i32 45}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1501, i32 48}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1503, i32 36}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1509, i32 42}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1509, i32 52}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1762, i32 45}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1770, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1747, i32 3}
!25 = !{ptr @funcs, !26, !"funcs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1786, i32 38}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1072, i32 49}
!29 = distinct !{null, !30, !"__print_once", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1114, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @hw_init._entry, !30, !"_entry", i1 false, i1 false}
!37 = !{ptr @hw_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @a6xx_protect, !39, !"a6xx_protect", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 531, i32 18}
!40 = !{ptr @a650_protect, !41, !"a650_protect", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 567, i32 18}
!42 = !{ptr @a660_protect, !43, !"a660_protect", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 610, i32 18}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 833, i32 4}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 839, i32 45}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 779, i32 24}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 797, i32 3}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 800, i32 31}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 806, i32 3}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 809, i32 31}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 812, i32 3}
!60 = !{ptr @a6xx_zap_shader_init.loaded, !61, !"loaded", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 857, i32 14}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 43, i32 3}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 157, i32 1}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!68 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!71 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 170, i32 1}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 33, i32 1}
!77 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1390, i32 3}
!80 = !{ptr @a6xx_irq._rs, !79, !"_rs", i1 false, i1 false}
!81 = !{ptr @__func__.a6xx_irq, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @a6xx_irq._entry, !79, !"_entry", i1 false, i1 false}
!84 = !{ptr @a6xx_irq._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @a6xx_irq._rs.29, !86, !"_rs", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1396, i32 3}
!87 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @a6xx_irq._entry.30, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @a6xx_irq._entry_ptr.32, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @a6xx_irq._rs.33, !91, !"_rs", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1399, i32 3}
!92 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @a6xx_irq._entry.34, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @a6xx_irq._entry_ptr.36, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @a6xx_irq._rs.37, !96, !"_rs", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1402, i32 3}
!97 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @a6xx_irq._entry.38, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @a6xx_irq._entry_ptr.40, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1359, i32 2}
!102 = !{ptr @a6xx_cp_hw_err_irq._rs, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1305, i32 3}
!104 = !{ptr @__func__.a6xx_cp_hw_err_irq, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @a6xx_cp_hw_err_irq._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @a6xx_cp_hw_err_irq._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @a6xx_cp_hw_err_irq._rs.43, !109, !"_rs", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1311, i32 3}
!110 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @a6xx_cp_hw_err_irq._entry.44, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @a6xx_cp_hw_err_irq._entry_ptr.46, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @a6xx_cp_hw_err_irq._rs.47, !114, !"_rs", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1315, i32 3}
!115 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @a6xx_cp_hw_err_irq._entry.48, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @a6xx_cp_hw_err_irq._entry_ptr.50, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @a6xx_cp_hw_err_irq._rs.51, !119, !"_rs", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1321, i32 3}
!120 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @a6xx_cp_hw_err_irq._entry.52, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @a6xx_cp_hw_err_irq._entry_ptr.54, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @a6xx_cp_hw_err_irq._rs.57, !126, !"_rs", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1328, i32 3}
!127 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @a6xx_cp_hw_err_irq._entry.58, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @a6xx_cp_hw_err_irq._entry_ptr.60, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @a6xx_cp_hw_err_irq._rs.61, !131, !"_rs", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1331, i32 3}
!132 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @a6xx_cp_hw_err_irq._entry.62, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @a6xx_cp_hw_err_irq._entry_ptr.64, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @a6xx_cp_hw_err_irq._rs.65, !136, !"_rs", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1334, i32 3}
!137 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @a6xx_cp_hw_err_irq._entry.66, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @a6xx_cp_hw_err_irq._entry_ptr.68, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1169, i32 3}
!142 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1152, i32 2}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1693, i32 45}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1235, i32 21}
!149 = !{ptr @a6xx_fault_handler._rs, !150, !"_rs", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1252, i32 3}
!151 = !{ptr @__func__.a6xx_fault_handler, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @a6xx_fault_handler._entry, !150, !"_entry", i1 false, i1 false}
!154 = !{ptr @a6xx_fault_handler._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1263, i32 10}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1265, i32 10}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1267, i32 10}
!161 = !{ptr @a6xx_fault_handler._rs.78, !162, !"_rs", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1271, i32 2}
!163 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @a6xx_fault_handler._entry.79, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @a6xx_fault_handler._entry_ptr.81, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1218, i32 10}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1220, i32 10}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1222, i32 10}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1190, i32 3}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1190, i32 10}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1190, i32 16}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1190, i32 23}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1190, i32 30}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1190, i32 38}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1190, i32 44}
!186 = !{ptr @a6xx_uche_fault_block.uche_clients, !187, !"uche_clients", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1189, i32 21}
!188 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1209, i32 29}
!190 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1209, i32 36}
!192 = !{ptr @.str.94, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu.c", i32 1212, i32 9}
!194 = !{!"sp"}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{!"auto-init"}
!205 = !{!"branch_weights", i32 1, i32 2000}
!206 = !{i64 2158405574, i64 2158406077, i64 2158405611, i64 2158405667, i64 2158405701, i64 2158405725, i64 2158405766, i64 2158405787, i64 2158405815, i64 2158405849}
!207 = !{i64 2148637833}
!208 = !{i64 2148552273, i64 2148552305, i64 2148552334, i64 2148552368, i64 2148552399, i64 2148552422}
!209 = !{!"branch_weights", i32 2000, i32 1}
!210 = !{i64 2149272557}
!211 = !{i8 0, i8 2}
!212 = !{i64 912402, i64 912429}
!213 = !{i64 912742, i64 912769, i64 912803, i64 912824}
!214 = !{i64 2158239300}
!215 = !{i64 2148372876, i64 2148372881, i64 2148372894, i64 2148372938, i64 2148372972, i64 2148372993}
!216 = !{i64 2157371783}
!217 = !{i64 2157371986}
!218 = !{i64 2149555740}
!219 = !{i64 2149556776}
!220 = !{i64 2157387627}
!221 = !{i64 2157387828}
!222 = !{i64 2157248610}
!223 = !{i64 2157248839}
