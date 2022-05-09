; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/adreno/a5xx_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a5xx_gpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.adreno_five_hwcg_regs = type { i32, i32 }
%struct.adreno_gpu_funcs = type { %struct.msm_gpu_funcs, ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.110 = type { i32, i32, i32 }
%struct.a5xx_gpu = type { %struct.adreno_gpu, ptr, i64, ptr, i64, ptr, i64, i32, i32, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x i64], %struct.atomic_t, %struct.timer_list, ptr, i64, ptr, i8 }
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.106, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.106 = type { i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.81, ptr }
%union.anon.81 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.109, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.109 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.msm_mmu = type { ptr, ptr, ptr, ptr, i32 }
%struct.adreno_info = type { %struct.adreno_rev, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, i32, ptr }
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
%struct.anon.94 = type { i32, i32, i64, i32, i32, i32, ptr }
%struct.msm_gpu_submitqueue = type { i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.idr, %struct.mutex, %struct.kref, ptr }
%struct.msm_file_private = type { %struct.rwlock_t, %struct.list_head, i32, ptr, %struct.kref, i32, [12 x ptr] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.msm_rbmemptrs = type { i32, i32, [64 x %struct.msm_gpu_submit_stats], i64 }
%struct.msm_gpu_submit_stats = type { i64, i64, i64, i64 }
%struct.a5xx_gpu_state = type { %struct.msm_gpu_state, ptr }
%struct.msm_gpu_state = type { %struct.kref, %struct.timespec64, [4 x %struct.anon.97], i32, ptr, i32, ptr, ptr, %struct.msm_gpu_fault_info, i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.anon.97 = type { i64, i32, i32, i32, i32, ptr, i32, i8 }
%struct.a5xx_crashdumper = type { ptr, ptr, i64 }

@a50x_hwcg = internal constant { [38 x %struct.adreno_five_hwcg_regs], [80 x i8] } { [38 x %struct.adreno_five_hwcg_regs] [%struct.adreno_five_hwcg_regs { i32 104, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 108, i32 35791392 }, %struct.adreno_five_hwcg_regs { i32 112, i32 62415 }, %struct.adreno_five_hwcg_regs { i32 116, i32 128 }, %struct.adreno_five_hwcg_regs { i32 74, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 78, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 82, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 176, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 180, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 184, i32 30583 }, %struct.adreno_five_hwcg_regs { i32 164, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 168, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 172, i32 4369 }, %struct.adreno_five_hwcg_regs { i32 91, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 92, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 93, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 90, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 94, i32 16777204 }, %struct.adreno_five_hwcg_regs { i32 95, i32 2 }, %struct.adreno_five_hwcg_regs { i32 120, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 124, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 130, i32 139808 }, %struct.adreno_five_hwcg_regs { i32 138, i32 89268770 }, %struct.adreno_five_hwcg_regs { i32 139, i32 5264725 }, %struct.adreno_five_hwcg_regs { i32 134, i32 67372036 }, %struct.adreno_five_hwcg_regs { i32 128, i32 121913412 }, %struct.adreno_five_hwcg_regs { i32 140, i32 2 }, %struct.adreno_five_hwcg_regs { i32 129, i32 65553 }, %struct.adreno_five_hwcg_regs { i32 99, i32 69345826 }, %struct.adreno_five_hwcg_regs { i32 96, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 145, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 100, i32 0 }, %struct.adreno_five_hwcg_regs { i32 98, i32 68173828 }, %struct.adreno_five_hwcg_regs { i32 144, i32 0 }, %struct.adreno_five_hwcg_regs { i32 102, i32 0 }, %struct.adreno_five_hwcg_regs { i32 101, i32 16384 }, %struct.adreno_five_hwcg_regs { i32 97, i32 512 }, %struct.adreno_five_hwcg_regs { i32 146, i32 8738 }], [80 x i8] zeroinitializer }, align 32
@a512_hwcg = internal constant { [56 x %struct.adreno_five_hwcg_regs], [96 x i8] } { [56 x %struct.adreno_five_hwcg_regs] [%struct.adreno_five_hwcg_regs { i32 104, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 105, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 108, i32 35791392 }, %struct.adreno_five_hwcg_regs { i32 109, i32 35791392 }, %struct.adreno_five_hwcg_regs { i32 112, i32 62415 }, %struct.adreno_five_hwcg_regs { i32 113, i32 62415 }, %struct.adreno_five_hwcg_regs { i32 116, i32 128 }, %struct.adreno_five_hwcg_regs { i32 117, i32 128 }, %struct.adreno_five_hwcg_regs { i32 74, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 75, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 78, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 79, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 82, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 83, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 176, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 177, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 180, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 181, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 184, i32 30583 }, %struct.adreno_five_hwcg_regs { i32 185, i32 30583 }, %struct.adreno_five_hwcg_regs { i32 164, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 165, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 168, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 169, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 172, i32 4369 }, %struct.adreno_five_hwcg_regs { i32 173, i32 4369 }, %struct.adreno_five_hwcg_regs { i32 90, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 91, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 92, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 93, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 94, i32 4473924 }, %struct.adreno_five_hwcg_regs { i32 95, i32 2 }, %struct.adreno_five_hwcg_regs { i32 120, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 121, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 124, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 125, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 130, i32 139808 }, %struct.adreno_five_hwcg_regs { i32 131, i32 139808 }, %struct.adreno_five_hwcg_regs { i32 138, i32 89268770 }, %struct.adreno_five_hwcg_regs { i32 139, i32 5264725 }, %struct.adreno_five_hwcg_regs { i32 134, i32 67372036 }, %struct.adreno_five_hwcg_regs { i32 135, i32 67372036 }, %struct.adreno_five_hwcg_regs { i32 128, i32 121913412 }, %struct.adreno_five_hwcg_regs { i32 140, i32 2 }, %struct.adreno_five_hwcg_regs { i32 141, i32 2 }, %struct.adreno_five_hwcg_regs { i32 129, i32 65553 }, %struct.adreno_five_hwcg_regs { i32 99, i32 69345826 }, %struct.adreno_five_hwcg_regs { i32 96, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 145, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 100, i32 0 }, %struct.adreno_five_hwcg_regs { i32 98, i32 68173828 }, %struct.adreno_five_hwcg_regs { i32 144, i32 0 }, %struct.adreno_five_hwcg_regs { i32 102, i32 0 }, %struct.adreno_five_hwcg_regs { i32 101, i32 16384 }, %struct.adreno_five_hwcg_regs { i32 97, i32 512 }, %struct.adreno_five_hwcg_regs { i32 146, i32 8738 }], [96 x i8] zeroinitializer }, align 32
@a5xx_hwcg = internal constant { [92 x %struct.adreno_five_hwcg_regs], [160 x i8] } { [92 x %struct.adreno_five_hwcg_regs] [%struct.adreno_five_hwcg_regs { i32 104, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 105, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 106, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 107, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 108, i32 35791392 }, %struct.adreno_five_hwcg_regs { i32 109, i32 35791392 }, %struct.adreno_five_hwcg_regs { i32 110, i32 35791392 }, %struct.adreno_five_hwcg_regs { i32 111, i32 35791392 }, %struct.adreno_five_hwcg_regs { i32 112, i32 62415 }, %struct.adreno_five_hwcg_regs { i32 113, i32 62415 }, %struct.adreno_five_hwcg_regs { i32 114, i32 62415 }, %struct.adreno_five_hwcg_regs { i32 115, i32 62415 }, %struct.adreno_five_hwcg_regs { i32 116, i32 128 }, %struct.adreno_five_hwcg_regs { i32 117, i32 128 }, %struct.adreno_five_hwcg_regs { i32 118, i32 128 }, %struct.adreno_five_hwcg_regs { i32 119, i32 128 }, %struct.adreno_five_hwcg_regs { i32 74, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 75, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 76, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 77, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 78, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 79, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 80, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 81, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 82, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 83, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 84, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 85, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 176, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 177, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 178, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 179, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 180, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 181, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 182, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 183, i32 2004318071 }, %struct.adreno_five_hwcg_regs { i32 184, i32 30583 }, %struct.adreno_five_hwcg_regs { i32 185, i32 30583 }, %struct.adreno_five_hwcg_regs { i32 186, i32 30583 }, %struct.adreno_five_hwcg_regs { i32 187, i32 30583 }, %struct.adreno_five_hwcg_regs { i32 164, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 165, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 166, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 167, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 168, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 169, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 170, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 171, i32 286331153 }, %struct.adreno_five_hwcg_regs { i32 172, i32 4369 }, %struct.adreno_five_hwcg_regs { i32 173, i32 4369 }, %struct.adreno_five_hwcg_regs { i32 174, i32 4369 }, %struct.adreno_five_hwcg_regs { i32 175, i32 4369 }, %struct.adreno_five_hwcg_regs { i32 90, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 91, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 92, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 93, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 94, i32 4473924 }, %struct.adreno_five_hwcg_regs { i32 95, i32 2 }, %struct.adreno_five_hwcg_regs { i32 120, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 121, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 122, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 123, i32 572662306 }, %struct.adreno_five_hwcg_regs { i32 124, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 125, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 126, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 127, i32 2236962 }, %struct.adreno_five_hwcg_regs { i32 130, i32 139808 }, %struct.adreno_five_hwcg_regs { i32 131, i32 139808 }, %struct.adreno_five_hwcg_regs { i32 132, i32 139808 }, %struct.adreno_five_hwcg_regs { i32 133, i32 139808 }, %struct.adreno_five_hwcg_regs { i32 138, i32 89268770 }, %struct.adreno_five_hwcg_regs { i32 139, i32 5264725 }, %struct.adreno_five_hwcg_regs { i32 134, i32 67372036 }, %struct.adreno_five_hwcg_regs { i32 135, i32 67372036 }, %struct.adreno_five_hwcg_regs { i32 136, i32 67372036 }, %struct.adreno_five_hwcg_regs { i32 137, i32 67372036 }, %struct.adreno_five_hwcg_regs { i32 128, i32 121913412 }, %struct.adreno_five_hwcg_regs { i32 140, i32 2 }, %struct.adreno_five_hwcg_regs { i32 141, i32 2 }, %struct.adreno_five_hwcg_regs { i32 142, i32 2 }, %struct.adreno_five_hwcg_regs { i32 143, i32 2 }, %struct.adreno_five_hwcg_regs { i32 129, i32 65553 }, %struct.adreno_five_hwcg_regs { i32 99, i32 69345826 }, %struct.adreno_five_hwcg_regs { i32 96, i32 35791394 }, %struct.adreno_five_hwcg_regs { i32 145, i32 8738 }, %struct.adreno_five_hwcg_regs { i32 100, i32 0 }, %struct.adreno_five_hwcg_regs { i32 98, i32 68173828 }, %struct.adreno_five_hwcg_regs { i32 144, i32 0 }, %struct.adreno_five_hwcg_regs { i32 102, i32 0 }, %struct.adreno_five_hwcg_regs { i32 101, i32 16384 }, %struct.adreno_five_hwcg_regs { i32 97, i32 512 }, %struct.adreno_five_hwcg_regs { i32 146, i32 8738 }], [160 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/msm/adreno/a5xx_gpu.c\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Tried to idle a non-current ringbuffer\0A\00", [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.2 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s: %ps: timeout waiting for GPU to idle: status %8.8X irq %8.8X rptr/wptr %d/%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* No A5XX device is defined\0A\00", [61 x i8] zeroinitializer }, align 32
@a5xx_registers = internal constant { [219 x i32], [212 x i8] } { [219 x i32] [i32 0, i32 2, i32 4, i32 32, i32 34, i32 38, i32 41, i32 43, i32 46, i32 53, i32 56, i32 66, i32 68, i32 68, i32 71, i32 149, i32 151, i32 187, i32 928, i32 1124, i32 1129, i32 1135, i32 1234, i32 1235, i32 1248, i32 1331, i32 1344, i32 1365, i32 2048, i32 2074, i32 2079, i32 2113, i32 2144, i32 2144, i32 2176, i32 2208, i32 2816, i32 2834, i32 2837, i32 2856, i32 2936, i32 2943, i32 2992, i32 3005, i32 3008, i32 3014, i32 3024, i32 3155, i32 3168, i32 3169, i32 3200, i32 3202, i32 3204, i32 3205, i32 3216, i32 3224, i32 3232, i32 3232, i32 3248, i32 3250, i32 8576, i32 8581, i32 9600, i32 9605, i32 3265, i32 3265, i32 3268, i32 3271, i32 3276, i32 3276, i32 3280, i32 3288, i32 3296, i32 3301, i32 3304, i32 3304, i32 3308, i32 3313, i32 3323, i32 3342, i32 8448, i32 8478, i32 8512, i32 8517, i32 9472, i32 9502, i32 9536, i32 9541, i32 3344, i32 3351, i32 3360, i32 3363, i32 3376, i32 3376, i32 8384, i32 8384, i32 9408, i32 9408, i32 3648, i32 3651, i32 3658, i32 3658, i32 3664, i32 3671, i32 3680, i32 3708, i32 3712, i32 3726, i32 3728, i32 3734, i32 3744, i32 3752, i32 3760, i32 3762, i32 57664, i32 57671, i32 57680, i32 57735, i32 57760, i32 57769, i32 57776, i32 57782, i32 57792, i32 57799, i32 57808, i32 57809, i32 57856, i32 57857, i32 57872, i32 57884, i32 57920, i32 57960, i32 57344, i32 57350, i32 57360, i32 57498, i32 57504, i32 57508, i32 57514, i32 57579, i32 57600, i32 57605, i32 58240, i32 58255, i32 58288, i32 58288, i32 58368, i32 58373, i32 58376, i32 58601, i32 58608, i32 58608, i32 57984, i32 57984, i32 57986, i32 58019, i32 58021, i32 58050, i32 59712, i32 59719, i32 59728, i32 59783, i32 59808, i32 59817, i32 59824, i32 59830, i32 59840, i32 59847, i32 59856, i32 59857, i32 59904, i32 59905, i32 59920, i32 59932, i32 59968, i32 60008, i32 59392, i32 59398, i32 59408, i32 59546, i32 59552, i32 59556, i32 59562, i32 59627, i32 59648, i32 59653, i32 60288, i32 60303, i32 60336, i32 60336, i32 60416, i32 60421, i32 60424, i32 60649, i32 60656, i32 60656, i32 60032, i32 60032, i32 60034, i32 60067, i32 60069, i32 60098, i32 43008, i32 43008, i32 43040, i32 43048, i32 43072, i32 43133, i32 43136, i32 43149, i32 43152, i32 43171, i32 43216, i32 43224, i32 43232, i32 43253, i32 44128, i32 44128, i32 -1], [212 x i8] zeroinitializer }, align 32
@funcs = internal constant { %struct.adreno_gpu_funcs, [44 x i8] } { %struct.adreno_gpu_funcs { %struct.msm_gpu_funcs { ptr @adreno_get_param, ptr @a5xx_hw_init, ptr @a5xx_pm_suspend, ptr @a5xx_pm_resume, ptr @a5xx_submit, ptr null, ptr @a5xx_irq, ptr @a5xx_active_ring, ptr @a5xx_recover, ptr @a5xx_destroy, ptr @a5xx_show, ptr @a5xx_debugfs_init, ptr @a5xx_gpu_busy, ptr @a5xx_gpu_state_get, ptr @a5xx_gpu_state_put, ptr null, ptr null, ptr @adreno_iommu_create_address_space, ptr null, ptr @a5xx_get_rptr }, ptr @a5xx_get_timestamp }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"speed_bin\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shadow\00", [25 x i8] zeroinitializer }, align 32
@a5xx_hw_init.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@a5xx_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 998, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Zap shader not enabled - using SECVID_TRUST_CNTL instead\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a5xx_hw_init\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@a5xx_hw_init._entry_ptr = internal global ptr @a5xx_hw_init._entry, section ".printk_index", align 4
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* could not allocate PM4: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pm4fw\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* could not allocate PFP: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pfpfw\00", [26 x i8] zeroinitializer }, align 32
@a5xx_zap_shader_init.loaded = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: zap-shader resume failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: timeout waiting for RBCCU GDSC enable: %X\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: timeout waiting for SP GDSC enable\0A\00", [56 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.a5xx_rbbm_err_irq = private unnamed_addr constant [18 x i8] c"a5xx_rbbm_err_irq\00", align 1
@a5xx_rbbm_err_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.a5xx_rbbm_err_irq, ptr @.str, i32 1176, ptr @.str.3, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"RBBM | AHB bus error | %s | addr=0x%X | ports=0x%X:0x%X\0A\00", [39 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._entry_ptr = internal global ptr @a5xx_rbbm_err_irq._entry, section ".printk_index", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.a5xx_rbbm_err_irq, ptr @.str, i32 1187, ptr @.str.3, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RBBM | AHB transfer timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._entry_ptr.25 = internal global ptr @a5xx_rbbm_err_irq._entry.23, section ".printk_index", align 4
@a5xx_rbbm_err_irq._rs.26 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.a5xx_rbbm_err_irq, ptr @.str, i32 1191, ptr @.str.3, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RBBM | ME master split | status=0x%X\0A\00", [58 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._entry_ptr.29 = internal global ptr @a5xx_rbbm_err_irq._entry.27, section ".printk_index", align 4
@a5xx_rbbm_err_irq._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.a5xx_rbbm_err_irq, ptr @.str, i32 1195, ptr @.str.3, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RBBM | PFP master split | status=0x%X\0A\00", [57 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._entry_ptr.33 = internal global ptr @a5xx_rbbm_err_irq._entry.31, section ".printk_index", align 4
@a5xx_rbbm_err_irq._rs.34 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__.a5xx_rbbm_err_irq, ptr @.str, i32 1199, ptr @.str.3, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RBBM | ETS master split | status=0x%X\0A\00", [57 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._entry_ptr.37 = internal global ptr @a5xx_rbbm_err_irq._entry.35, section ".printk_index", align 4
@a5xx_rbbm_err_irq._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.a5xx_rbbm_err_irq, ptr @.str, i32 1202, ptr @.str.3, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RBBM | ATB ASYNC overflow\0A\00", [37 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._entry_ptr.41 = internal global ptr @a5xx_rbbm_err_irq._entry.39, section ".printk_index", align 4
@a5xx_rbbm_err_irq._rs.42 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.a5xx_rbbm_err_irq, ptr @.str, i32 1205, ptr @.str.3, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RBBM | ATB bus overflow\0A\00", [39 x i8] zeroinitializer }, align 32
@a5xx_rbbm_err_irq._entry_ptr.45 = internal global ptr @a5xx_rbbm_err_irq._entry.43, section ".printk_index", align 4
@a5xx_cp_err_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.a5xx_cp_err_irq = private unnamed_addr constant [16 x i8] c"a5xx_cp_err_irq\00", align 1
@a5xx_cp_err_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @__func__.a5xx_cp_err_irq, ptr @.str, i32 1134, ptr @.str.3, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CP | opcode error | possible opcode=0x%8.8X\0A\00", [51 x i8] zeroinitializer }, align 32
@a5xx_cp_err_irq._entry_ptr = internal global ptr @a5xx_cp_err_irq._entry, section ".printk_index", align 4
@a5xx_cp_err_irq._rs.47 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a5xx_cp_err_irq._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.a5xx_cp_err_irq, ptr @.str, i32 1139, ptr @.str.3, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CP | HW fault | status=0x%8.8X\0A\00", [32 x i8] zeroinitializer }, align 32
@a5xx_cp_err_irq._entry_ptr.50 = internal global ptr @a5xx_cp_err_irq._entry.48, section ".printk_index", align 4
@a5xx_cp_err_irq._rs.51 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a5xx_cp_err_irq._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.a5xx_cp_err_irq, ptr @.str, i32 1142, ptr @.str.3, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CP | DMA error\0A\00", [16 x i8] zeroinitializer }, align 32
@a5xx_cp_err_irq._entry_ptr.54 = internal global ptr @a5xx_cp_err_irq._entry.52, section ".printk_index", align 4
@a5xx_cp_err_irq._rs.55 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a5xx_cp_err_irq._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @__func__.a5xx_cp_err_irq, ptr @.str, i32 1150, ptr @.str.3, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"CP | protected mode error | %s | addr=0x%8.8X | status=0x%8.8X\0A\00", [32 x i8] zeroinitializer }, align 32
@a5xx_cp_err_irq._entry_ptr.58 = internal global ptr @a5xx_cp_err_irq._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timestamp lo\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timestamp hi\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pfp read\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pfp write\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"me read\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"me write\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"crashdump read\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"crashdump write\00", [16 x i8] zeroinitializer }, align 32
@__const.a5xx_cp_err_irq.access = private unnamed_addr constant [16 x ptr] [ptr @.str.59, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.64, ptr @.str.64, ptr @.str.67, ptr @.str.68, ptr null, ptr null], align 4
@a5xx_cp_err_irq._rs.69 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a5xx_cp_err_irq._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @__func__.a5xx_cp_err_irq, ptr @.str, i32 1163, ptr @.str.3, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"CP | AHB error | addr=%X access=%s error=%d | status=0x%8.8X\0A\00", [34 x i8] zeroinitializer }, align 32
@a5xx_cp_err_irq._entry_ptr.72 = internal global ptr @a5xx_cp_err_irq._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"*ERROR* gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\0A\00", [56 x i8] zeroinitializer }, align 32
@a5xx_uche_err_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.a5xx_uche_err_irq = private unnamed_addr constant [18 x i8] c"a5xx_uche_err_irq\00", align 1
@a5xx_uche_err_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @__func__.a5xx_uche_err_irq, ptr @.str, i32 1215, ptr @.str.3, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UCHE | Out of bounds access | addr=0x%llX\0A\00", [53 x i8] zeroinitializer }, align 32
@a5xx_uche_err_irq._entry_ptr = internal global ptr @a5xx_uche_err_irq._entry, section ".printk_index", align 4
@a5xx_gpmu_err_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.a5xx_gpmu_err_irq = private unnamed_addr constant [18 x i8] c"a5xx_gpmu_err_irq\00", align 1
@a5xx_gpmu_err_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @__func__.a5xx_gpmu_err_irq, ptr @.str, i32 1220, ptr @.str.3, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPMU | voltage droop\0A\00", [42 x i8] zeroinitializer }, align 32
@a5xx_gpmu_err_irq._entry_ptr = internal global ptr @a5xx_gpmu_err_irq._entry, section ".printk_index", align 4
@a5xx_recover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CP_SCRATCH_REG%d: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a5xx_recover\00", [19 x i8] zeroinitializer }, align 32
@a5xx_recover._entry_ptr = internal global ptr @a5xx_recover._entry, section ".printk_index", align 4
@hang_debug = external dso_local local_unnamed_addr global i8, align 1
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"status:   %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"registers-hlsq:\0A\00", [47 x i8] zeroinitializer }, align 32
@a5xx_hlsq_aperture_regs = internal constant { [15 x %struct.anon.110], [44 x i8] } { [15 x %struct.anon.110] [%struct.anon.110 { i32 53, i32 3584, i32 50 }, %struct.anon.110 { i32 49, i32 8320, i32 1 }, %struct.anon.110 { i32 51, i32 9344, i32 1 }, %struct.anon.110 { i32 50, i32 59264, i32 98 }, %struct.anon.110 { i32 52, i32 61312, i32 98 }, %struct.anon.110 { i32 63, i32 3776, i32 64 }, %struct.anon.110 { i32 61, i32 8256, i32 1 }, %struct.anon.110 { i32 59, i32 9280, i32 1 }, %struct.anon.110 { i32 62, i32 58752, i32 368 }, %struct.anon.110 { i32 60, i32 60800, i32 368 }, %struct.anon.110 { i32 58, i32 3840, i32 28 }, %struct.anon.110 { i32 56, i32 8192, i32 10 }, %struct.anon.110 { i32 54, i32 9216, i32 10 }, %struct.anon.110 { i32 57, i32 59136, i32 128 }, %struct.anon.110 { i32 55, i32 61184, i32 128 }], [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"  - { offset: 0x%04x, value: 0x%08x }\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"crashdump\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@a5xx_fault_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.a5xx_fault_handler = private unnamed_addr constant [19 x i8] c"a5xx_fault_handler\00", align 1
@a5xx_fault_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @__func__.a5xx_fault_handler, ptr @.str, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014*** gpu fault: iova=%08lx, flags=%d (%u,%u,%u,%u)\0A\00", [43 x i8] zeroinitializer }, align 32
@a5xx_fault_handler._entry_ptr = internal global ptr @a5xx_fault_handler._entry, section ".printk_index", align 4
@switch.table.a5xx_hw_init = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1074266112, i32 -1071644672, i32 1074266112, i32 -2146435072, i32 -2146435072, i32 -1071644672, i32 -2146435072], [36 x i8] zeroinitializer }, align 32
@switch.table.a5xx_pm_suspend = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 7, i32 15, i32 7, i32 15, i32 7], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 506, i64 508, i64 509]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 509, i64 512, i64 540]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 506, i64 508, i64 510]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 506, i64 508, i64 509, i64 512]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 509, i64 512, i64 540]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 530, i64 540]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 506, i64 510, i64 530]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 510, i64 530]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 530, i64 540]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.96 = private unnamed_addr constant [10 x i8] c"a50x_hwcg\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 338, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [10 x i8] c"a512_hwcg\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 377, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [10 x i8] c"a5xx_hwcg\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 245, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1082, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1091, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1768, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"a5xx_registers\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1305, i32 18 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"funcs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1700, i32 38 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1740, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 935, i32 49 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 997, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 584, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 589, i32 45 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 599, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 604, i32 45 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 641, i32 14 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 633, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1372, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1383, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1172, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1187, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1190, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1194, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1198, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1202, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1205, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1133, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1138, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1142, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1147, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1155, i32 30 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1156, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1156, i32 20 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1156, i32 36 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1156, i32 48 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1157, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1157, i32 12 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1157, i32 23 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1157, i32 43 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1158, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1160, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1237, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1214, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1220, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1017, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1338, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1633, i32 16 }
@___asan_gen_.357 = private unnamed_addr constant [24 x i8] c"a5xx_hlsq_aperture_regs\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1486, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1650, i32 18 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1455, i32 39 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1035, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.376 = private constant [41 x i8] c"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1106, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant [26 x i8] c"switch.table.a5xx_hw_init\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [29 x i8] c"switch.table.a5xx_pm_suspend\00", align 1
@llvm.compiler.used = appending global [113 x ptr] [ptr @a5xx_cp_err_irq._entry, ptr @a5xx_cp_err_irq._entry.48, ptr @a5xx_cp_err_irq._entry.52, ptr @a5xx_cp_err_irq._entry.56, ptr @a5xx_cp_err_irq._entry.70, ptr @a5xx_cp_err_irq._entry_ptr, ptr @a5xx_cp_err_irq._entry_ptr.50, ptr @a5xx_cp_err_irq._entry_ptr.54, ptr @a5xx_cp_err_irq._entry_ptr.58, ptr @a5xx_cp_err_irq._entry_ptr.72, ptr @a5xx_fault_handler._entry, ptr @a5xx_fault_handler._entry_ptr, ptr @a5xx_gpmu_err_irq._entry, ptr @a5xx_gpmu_err_irq._entry_ptr, ptr @a5xx_hw_init._entry, ptr @a5xx_hw_init._entry_ptr, ptr @a5xx_rbbm_err_irq._entry, ptr @a5xx_rbbm_err_irq._entry.23, ptr @a5xx_rbbm_err_irq._entry.27, ptr @a5xx_rbbm_err_irq._entry.31, ptr @a5xx_rbbm_err_irq._entry.35, ptr @a5xx_rbbm_err_irq._entry.39, ptr @a5xx_rbbm_err_irq._entry.43, ptr @a5xx_rbbm_err_irq._entry_ptr, ptr @a5xx_rbbm_err_irq._entry_ptr.25, ptr @a5xx_rbbm_err_irq._entry_ptr.29, ptr @a5xx_rbbm_err_irq._entry_ptr.33, ptr @a5xx_rbbm_err_irq._entry_ptr.37, ptr @a5xx_rbbm_err_irq._entry_ptr.41, ptr @a5xx_rbbm_err_irq._entry_ptr.45, ptr @a5xx_recover._entry, ptr @a5xx_recover._entry_ptr, ptr @a5xx_uche_err_irq._entry, ptr @a5xx_uche_err_irq._entry_ptr, ptr @a50x_hwcg, ptr @a512_hwcg, ptr @a5xx_hwcg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @a5xx_registers, ptr @funcs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @a5xx_zap_shader_init.loaded, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @a5xx_rbbm_err_irq._rs, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @a5xx_rbbm_err_irq._rs.22, ptr @.str.24, ptr @a5xx_rbbm_err_irq._rs.26, ptr @.str.28, ptr @a5xx_rbbm_err_irq._rs.30, ptr @.str.32, ptr @a5xx_rbbm_err_irq._rs.34, ptr @.str.36, ptr @a5xx_rbbm_err_irq._rs.38, ptr @.str.40, ptr @a5xx_rbbm_err_irq._rs.42, ptr @.str.44, ptr @a5xx_cp_err_irq._rs, ptr @.str.46, ptr @a5xx_cp_err_irq._rs.47, ptr @.str.49, ptr @a5xx_cp_err_irq._rs.51, ptr @.str.53, ptr @a5xx_cp_err_irq._rs.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @a5xx_cp_err_irq._rs.69, ptr @.str.71, ptr @.str.73, ptr @a5xx_uche_err_irq._rs, ptr @.str.74, ptr @a5xx_gpmu_err_irq._rs, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @a5xx_hlsq_aperture_regs, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @a5xx_fault_handler._rs, ptr @.str.84, ptr @switch.table.a5xx_hw_init, ptr @switch.table.a5xx_pm_suspend], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a50x_hwcg to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a512_hwcg to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_hwcg to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_registers to i32), i32 876, i32 1088, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_zap_shader_init.loaded to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_rbbm_err_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_rbbm_err_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_rbbm_err_irq._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_rbbm_err_irq._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_rbbm_err_irq._rs.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_rbbm_err_irq._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_rbbm_err_irq._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_rbbm_err_irq._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_rbbm_err_irq._rs.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_rbbm_err_irq._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_rbbm_err_irq._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_rbbm_err_irq._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_rbbm_err_irq._rs.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_rbbm_err_irq._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_cp_err_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_cp_err_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_cp_err_irq._rs.47 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_cp_err_irq._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_cp_err_irq._rs.51 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_cp_err_irq._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_cp_err_irq._rs.55 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_cp_err_irq._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_cp_err_irq._rs.69 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_cp_err_irq._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_uche_err_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_uche_err_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_gpmu_err_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_gpmu_err_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_recover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_hlsq_aperture_regs to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_fault_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_fault_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.a5xx_hw_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.a5xx_pm_suspend to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a5xx_flush(ptr noundef %gpu, ptr noundef %ring, i1 noundef zeroext %sync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %sync, label %if.then, label %entry.do.body4_crit_edge

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

if.then:                                          ; preds = %entry
  %has_whereami.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 20
  %0 = ptrtoint ptr %has_whereami.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_whereami.i, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.do.body4_crit_edge, label %if.then.i

if.then.do.body4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

if.then.i:                                        ; preds = %if.then
  tail call void @adreno_wait_ring(ptr noundef %ring, i32 noundef 3) #9
  %next.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 6
  %2 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next.i.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 4
  %4 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %3, %5
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.i.OUT_PKT7.exit.i_crit_edge

if.then.i.OUT_PKT7.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 3
  %6 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %start.i.i.i, align 4
  %8 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %next.i.i.i, align 8
  br label %OUT_PKT7.exit.i

OUT_PKT7.exit.i:                                  ; preds = %if.then.i.i.i, %if.then.i.OUT_PKT7.exit.i_crit_edge
  %9 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %10, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %next.i.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1885470722, ptr %10, align 4
  %shadow_iova.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 18
  %12 = ptrtoint ptr %shadow_iova.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %shadow_iova.i, align 8
  %id.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 1
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %15, 2
  %16 = trunc i64 %13 to i32
  %conv4.i = add i32 %mul.i, %16
  %17 = load ptr, ptr %next.i.i.i, align 8
  %18 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i = icmp eq ptr %17, %19
  br i1 %cmp.i.i, label %if.then.i.i, label %OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge

OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge:        ; preds = %OUT_PKT7.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit.i

if.then.i.i:                                      ; preds = %OUT_PKT7.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 3
  %20 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %start.i.i, align 4
  %22 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit.i

OUT_RING.exit.i:                                  ; preds = %if.then.i.i, %OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge
  %23 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %24, i32 1
  store ptr %incdec.ptr.i.i, ptr %next.i.i.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv4.i, ptr %24, align 4
  %26 = ptrtoint ptr %shadow_iova.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %shadow_iova.i, align 8
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i, align 4
  %mul7.i = shl i32 %29, 2
  %conv8.i = zext i32 %mul7.i to i64
  %add9.i = add i64 %27, %conv8.i
  %shr.i = lshr i64 %add9.i, 32
  %conv11.i = trunc i64 %shr.i to i32
  %30 = load ptr, ptr %next.i.i.i, align 8
  %31 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i20.i = icmp eq ptr %30, %32
  br i1 %cmp.i20.i, label %if.then.i22.i, label %OUT_RING.exit.i.OUT_RING.exit24.i_crit_edge

OUT_RING.exit.i.OUT_RING.exit24.i_crit_edge:      ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit24.i

if.then.i22.i:                                    ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %start.i21.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 3
  %33 = ptrtoint ptr %start.i21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %start.i21.i, align 4
  %35 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit24.i

OUT_RING.exit24.i:                                ; preds = %if.then.i22.i, %OUT_RING.exit.i.OUT_RING.exit24.i_crit_edge
  %36 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i23.i = getelementptr i32, ptr %37, i32 1
  store ptr %incdec.ptr.i23.i, ptr %next.i.i.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv11.i, ptr %37, align 4
  br label %do.body4

do.body4:                                         ; preds = %OUT_RING.exit24.i, %if.then.do.body4_crit_edge, %entry.do.body4_crit_edge
  %preempt_lock = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 16
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %preempt_lock) #9
  %next = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 6
  %39 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %next, align 8
  %cur = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 5
  %41 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %cur, align 4
  %start.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 3
  %42 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %start.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  %rem.i = srem i32 %sub.ptr.div.i, 8192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %preempt_lock, i32 noundef %call6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @arm_heavy_mb() #9
  %cur_ring = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 9
  %44 = ptrtoint ptr %cur_ring to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur_ring, align 8
  %cmp14 = icmp eq ptr %45, %ring
  br i1 %cmp14, label %land.lhs.true, label %do.body4.if.end18_crit_edge

do.body4.if.end18_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %do.body4
  %preempt_state1.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %preempt_state1.i, i32 noundef 4) #9
  %46 = ptrtoint ptr %preempt_state1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_state1.i, align 4
  %48 = and i32 %47, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %.not = icmp eq i32 %48, 0
  br i1 %.not, label %if.then17, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %49 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %50, i32 8220
  tail call void @msm_writel(i32 noundef %rem.i, ptr noundef %add.ptr.i) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true.if.end18_crit_edge, %do.body4.if.end18_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a5xx_set_hwcg(ptr nocapture noundef readonly %gpu, i1 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %0 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revn.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %lor.lhs.false5 [
    i32 506, label %entry.if.end10_crit_edge
    i32 508, label %entry.if.end10_crit_edge65
    i32 509, label %if.end10.fold.split
  ]

entry.if.end10_crit_edge65:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

lor.lhs.false5:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp.i50.not = icmp eq i32 %1, 512
  %spec.select = select i1 %cmp.i50.not, ptr @a512_hwcg, ptr @a5xx_hwcg
  %spec.select42 = select i1 %cmp.i50.not, i32 56, i32 92
  br label %if.end10

if.end10.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %if.end10.fold.split, %lor.lhs.false5, %entry.if.end10_crit_edge, %entry.if.end10_crit_edge65
  %regs.0 = phi ptr [ @a50x_hwcg, %entry.if.end10_crit_edge ], [ %spec.select, %lor.lhs.false5 ], [ @a50x_hwcg, %entry.if.end10_crit_edge65 ], [ @a512_hwcg, %if.end10.fold.split ]
  %sz.0 = phi i32 [ 38, %entry.if.end10_crit_edge ], [ %spec.select42, %lor.lhs.false5 ], [ 38, %entry.if.end10_crit_edge65 ], [ 56, %if.end10.fold.split ]
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %if.end10
  %i.063 = phi i32 [ 0, %if.end10 ], [ %inc, %cond.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adreno_five_hwcg_regs, ptr %regs.0, i32 %i.063
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  br i1 %state, label %cond.true, label %for.body.cond.end_crit_edge

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %value = getelementptr %struct.adreno_five_hwcg_regs, ptr %regs.0, i32 %i.063, i32 1
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ 0, %for.body.cond.end_crit_edge ]
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 8
  %shl.i = shl i32 %4, 2
  %add.ptr.i = getelementptr i8, ptr %8, i32 %shl.i
  tail call void @msm_writel(i32 noundef %cond, ptr noundef %add.ptr.i) #9
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, %sz.0
  br i1 %exitcond.not, label %for.end, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cond.end
  %9 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 540, i32 %10)
  %cmp.i53.not = icmp eq i32 %10, 540
  br i1 %cmp.i53.not, label %if.then15, label %for.end.if.end20_crit_edge

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %cond17 = select i1 %state, i32 1904, i32 0
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %12, i32 804
  tail call void @msm_writel(i32 noundef %cond17, ptr noundef %add.ptr.i56) #9
  %cond19 = select i1 %state, i32 4, i32 0
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i58 = getelementptr i8, ptr %14, i32 808
  tail call void @msm_writel(i32 noundef %cond19, ptr noundef %add.ptr.i58) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %for.end.if.end20_crit_edge
  %cond22 = select i1 %state, i32 -1431787008, i32 0
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i60 = getelementptr i8, ptr %16, i32 412
  tail call void @msm_writel(i32 noundef %cond22, ptr noundef %add.ptr.i60) #9
  %cond24 = select i1 %state, i32 386, i32 384
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i62 = getelementptr i8, ptr %18, i32 5324
  tail call void @msm_writel(i32 noundef %cond24, ptr noundef %add.ptr.i62) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @a5xx_idle(ptr noundef %gpu, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_ring = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 9
  %0 = ptrtoint ptr %cur_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_ring, align 8
  %cmp.not = icmp eq ptr %1, %ring
  br i1 %cmp.not, label %if.end20, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1082, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end20:                                         ; preds = %entry
  %call = tail call zeroext i1 @adreno_idle(ptr noundef %gpu, ptr noundef %ring) #9
  br i1 %call, label %if.end22, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %mmio.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %add.neg = sub i32 -100, %2
  br label %do.body24

do.body24:                                        ; preds = %do.cond28.do.body24_crit_edge, %if.end22
  %3 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 5076
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i, label %_a5xx_check_idle.exit, label %do.body24.do.cond28_crit_edge

do.body24.do.cond28_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond28

_a5xx_check_idle.exit:                            ; preds = %do.body24
  %5 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %6, i32 4996
  %call.i7.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i6.i) #9
  %and2.i = and i32 %call.i7.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %_a5xx_check_idle.exit.cleanup_crit_edge, label %_a5xx_check_idle.exit.do.cond28_crit_edge

_a5xx_check_idle.exit.do.cond28_crit_edge:        ; preds = %_a5xx_check_idle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond28

_a5xx_check_idle.exit.cleanup_crit_edge:          ; preds = %_a5xx_check_idle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond28:                                        ; preds = %_a5xx_check_idle.exit.do.cond28_crit_edge, %do.body24.do.cond28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %7
  %cmp29 = icmp slt i32 %sub, 0
  br i1 %cmp29, label %do.cond28.do.body24_crit_edge, label %if.then33.critedge

do.cond28.do.body24_crit_edge:                    ; preds = %do.cond28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

if.then33.critedge:                               ; preds = %do.cond28
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpu, align 8
  %10 = tail call ptr @llvm.returnaddress(i32 0)
  %11 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 5076
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #9
  %13 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i50 = getelementptr i8, ptr %14, i32 4996
  %call.i51 = tail call i32 @msm_readl(ptr noundef %add.ptr.i50) #9
  %15 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i53 = getelementptr i8, ptr %16, i32 8216
  %call.i54 = tail call i32 @msm_readl(ptr noundef %add.ptr.i53) #9
  %17 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %18, i32 8220
  %call.i57 = tail call i32 @msm_readl(ptr noundef %add.ptr.i56) #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef %9, ptr noundef %10, i32 noundef %call.i, i32 noundef %call.i51, i32 noundef %call.i54, i32 noundef %call.i57) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then33.critedge, %_a5xx_check_idle.exit.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %if.then33.critedge ], [ false, %if.end20.cleanup_crit_edge ], [ true, %_a5xx_check_idle.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_idle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @a5xx_gpu_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1136) #12
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %registers = getelementptr inbounds %struct.adreno_gpu, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %registers to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @a5xx_registers, ptr %registers, align 4
  %lm_leakage = getelementptr inbounds %struct.a5xx_gpu, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %lm_leakage to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5111834, ptr %lm_leakage, align 4
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 128, ptr %val.i, align 4
  %call.i = tail call ptr @nvmem_cell_get(ptr noundef %dev8, ptr noundef nonnull @.str.5) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end6.check_speed_bin.exit_crit_edge, label %if.then.i

if.end6.check_speed_bin.exit_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_speed_bin.exit

if.then.i:                                        ; preds = %if.end6
  %call2.i = tail call ptr @nvmem_cell_read(ptr noundef %call.i, ptr noundef null) #9
  %cmp.i12.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i12.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call2.i, align 1
  %conv.i = zext i8 %11 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl.i, ptr %val.i, align 4
  tail call void @kfree(ptr noundef %call2.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  tail call void @nvmem_cell_put(ptr noundef %call.i) #9
  br label %check_speed_bin.exit

check_speed_bin.exit:                             ; preds = %if.end.i, %if.end6.check_speed_bin.exit_crit_edge
  %call6.i = call i32 @devm_pm_opp_set_supported_hw(ptr noundef %dev8, ptr noundef nonnull %val.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %call9 = call i32 @adreno_gpu_init(ptr noundef %dev, ptr noundef nonnull %3, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @funcs, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %check_speed_bin.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @a5xx_destroy(ptr noundef nonnull %call7.i.i)
  %13 = inttoptr i32 %call9 to ptr
  br label %cleanup

if.end15:                                         ; preds = %check_speed_bin.exit
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 24
  %14 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aspace, align 8
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %mmu = getelementptr inbounds %struct.msm_gem_address_space, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmu, align 4
  %arg1.i = getelementptr inbounds %struct.msm_mmu, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %arg1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %arg1.i, align 4
  %handler2.i = getelementptr inbounds %struct.msm_mmu, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %handler2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @a5xx_fault_handler, ptr %handler2.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  call void @a5xx_preempt_init(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then11, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %13, %if.then11 ], [ %call7.i.i, %if.end19 ], [ inttoptr (i32 -6 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a5xx_destroy(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.83, ptr noundef %1) #9
  tail call void @a5xx_preempt_fini(ptr noundef %gpu) #9
  %pm4_bo = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 1
  %2 = ptrtoint ptr %pm4_bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm4_bo, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %4 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aspace, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %3, ptr noundef %5) #9
  %6 = ptrtoint ptr %pm4_bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pm4_bo, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #9, !srcloc !181
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !182

if.end5.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #9
  br label %if.end

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void @drm_gem_object_free(ptr noundef nonnull %7) #9, !callees !184
  br label %if.end

if.end:                                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %pfp_bo = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 3
  %9 = ptrtoint ptr %pfp_bo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pfp_bo, align 8
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then7:                                         ; preds = %if.end
  %aspace9 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %11 = ptrtoint ptr %aspace9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aspace9, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %10, ptr noundef %12) #9
  %13 = ptrtoint ptr %pfp_bo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pfp_bo, align 8
  %tobool.not.i46 = icmp eq ptr %14, null
  br i1 %tobool.not.i46, label %if.then7.if.end11_crit_edge, label %if.then.i50

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then.i50:                                      ; preds = %if.then7
  %call.i.i.i.i.i.i.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %14, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @llvm.prefetch.p0(ptr nonnull %14, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #9, !srcloc !181
  %asmresult.i.i.i.i.i.i.i.i.i48 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i48)
  %cmp.i.i.i.i.i.i49 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i48, 1
  br i1 %cmp.i.i.i.i.i.i49, label %if.then.i.i.i54, label %if.end5.i.i.i.i.i.i52

if.end5.i.i.i.i.i.i52:                            ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i48)
  %.not.i.i.i.i.i.i51 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i48, 0
  br i1 %.not.i.i.i.i.i.i51, label %if.end5.i.i.i.i.i.i52.if.end11_crit_edge, label %if.then10.i.i.i.i.i.i53, !prof !182

if.end5.i.i.i.i.i.i52.if.end11_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10.i.i.i.i.i.i53:                          ; preds = %if.end5.i.i.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef 3) #9
  br label %if.end11

if.then.i.i.i54:                                  ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void @drm_gem_object_free(ptr noundef nonnull %14) #9, !callees !184
  br label %if.end11

if.end11:                                         ; preds = %if.then.i.i.i54, %if.then10.i.i.i.i.i.i53, %if.end5.i.i.i.i.i.i52.if.end11_crit_edge, %if.then7.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %gpmu_bo = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 5
  %16 = ptrtoint ptr %gpmu_bo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpmu_bo, align 8
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %if.end11.if.end17_crit_edge, label %if.then13

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %if.end11
  %aspace15 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %18 = ptrtoint ptr %aspace15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aspace15, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %17, ptr noundef %19) #9
  %20 = ptrtoint ptr %gpmu_bo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpmu_bo, align 8
  %tobool.not.i56 = icmp eq ptr %21, null
  br i1 %tobool.not.i56, label %if.then13.if.end17_crit_edge, label %if.then.i60

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then.i60:                                      ; preds = %if.then13
  %call.i.i.i.i.i.i.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %21, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @llvm.prefetch.p0(ptr nonnull %21, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %21, ptr nonnull %21, i32 1, ptr nonnull elementtype(i32) %21) #9, !srcloc !181
  %asmresult.i.i.i.i.i.i.i.i.i58 = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i58)
  %cmp.i.i.i.i.i.i59 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i58, 1
  br i1 %cmp.i.i.i.i.i.i59, label %if.then.i.i.i64, label %if.end5.i.i.i.i.i.i62

if.end5.i.i.i.i.i.i62:                            ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i58)
  %.not.i.i.i.i.i.i61 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i58, 0
  br i1 %.not.i.i.i.i.i.i61, label %if.end5.i.i.i.i.i.i62.if.end17_crit_edge, label %if.then10.i.i.i.i.i.i63, !prof !182

if.end5.i.i.i.i.i.i62.if.end17_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then10.i.i.i.i.i.i63:                          ; preds = %if.end5.i.i.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %21, i32 noundef 3) #9
  br label %if.end17

if.then.i.i.i64:                                  ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void @drm_gem_object_free(ptr noundef nonnull %21) #9, !callees !184
  br label %if.end17

if.end17:                                         ; preds = %if.then.i.i.i64, %if.then10.i.i.i.i.i.i63, %if.end5.i.i.i.i.i.i62.if.end17_crit_edge, %if.then13.if.end17_crit_edge, %if.end11.if.end17_crit_edge
  %shadow_bo = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 17
  %23 = ptrtoint ptr %shadow_bo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shadow_bo, align 4
  %tobool18.not = icmp eq ptr %24, null
  br i1 %tobool18.not, label %if.end17.if.end23_crit_edge, label %if.then19

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then19:                                        ; preds = %if.end17
  %aspace21 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %25 = ptrtoint ptr %aspace21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aspace21, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %24, ptr noundef %26) #9
  %27 = ptrtoint ptr %shadow_bo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shadow_bo, align 4
  %tobool.not.i66 = icmp eq ptr %28, null
  br i1 %tobool.not.i66, label %if.then19.if.end23_crit_edge, label %if.then.i70

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then.i70:                                      ; preds = %if.then19
  %call.i.i.i.i.i.i.i.i67 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %28, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @llvm.prefetch.p0(ptr nonnull %28, i32 1, i32 3, i32 1) #9
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #9, !srcloc !181
  %asmresult.i.i.i.i.i.i.i.i.i68 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i68)
  %cmp.i.i.i.i.i.i69 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i68, 1
  br i1 %cmp.i.i.i.i.i.i69, label %if.then.i.i.i74, label %if.end5.i.i.i.i.i.i72

if.end5.i.i.i.i.i.i72:                            ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i68)
  %.not.i.i.i.i.i.i71 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i68, 0
  br i1 %.not.i.i.i.i.i.i71, label %if.end5.i.i.i.i.i.i72.if.end23_crit_edge, label %if.then10.i.i.i.i.i.i73, !prof !182

if.end5.i.i.i.i.i.i72.if.end23_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then10.i.i.i.i.i.i73:                          ; preds = %if.end5.i.i.i.i.i.i72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %28, i32 noundef 3) #9
  br label %if.end23

if.then.i.i.i74:                                  ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void @drm_gem_object_free(ptr noundef nonnull %28) #9, !callees !184
  br label %if.end23

if.end23:                                         ; preds = %if.then.i.i.i74, %if.then10.i.i.i.i.i.i73, %if.end5.i.i.i.i.i.i72.if.end23_crit_edge, %if.then19.if.end23_crit_edge, %if.end17.if.end23_crit_edge
  tail call void @adreno_gpu_cleanup(ptr noundef %gpu) #9
  tail call void @kfree(ptr noundef %gpu) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a5xx_fault_handler(ptr nocapture noundef readonly %arg, i32 noundef %iova, i32 noundef %flags, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_fault_handler._rs, ptr noundef nonnull @__func__.a5xx_fault_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %arg, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 11760
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #9
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %3, i32 11764
  %call.i15 = tail call i32 @msm_readl(ptr noundef %add.ptr.i14) #9
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 11768
  %call.i18 = tail call i32 @msm_readl(ptr noundef %add.ptr.i17) #9
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i20 = getelementptr i8, ptr %7, i32 11772
  %call.i21 = tail call i32 @msm_readl(ptr noundef %add.ptr.i20) #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %iova, i32 noundef %flags, i32 noundef %call.i, i32 noundef %call.i15, i32 noundef %call.i18, i32 noundef %call.i21) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_preempt_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_wait_ring(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_supported_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_get_param(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a5xx_hw_init(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 49444
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i) #9
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %2 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revn.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 509, label %entry.if.then_crit_edge
    i32 512, label %entry.if.then_crit_edge690
    i32 540, label %entry.if.then_crit_edge691
  ]

entry.if.then_crit_edge691:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge690:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge690, %entry.if.then_crit_edge691
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i397 = getelementptr i8, ptr %6, i32 49320
  tail call void @msm_writel(i32 noundef 9, ptr noundef %add.ptr.i397) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i399 = getelementptr i8, ptr %8, i32 4540
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i399) #9
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i401 = getelementptr i8, ptr %10, i32 588
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i401) #9
  %info = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 2
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %quirks = getelementptr inbounds %struct.adreno_info, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %quirks, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i403 = getelementptr i8, ptr %16, i32 624
  tail call void @msm_writel(i32 noundef -268435456, ptr noundef %add.ptr.i403) #9
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i405 = getelementptr i8, ptr %18, i32 628
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i405) #9
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i407 = getelementptr i8, ptr %20, i32 632
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i407) #9
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i409 = getelementptr i8, ptr %22, i32 636
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i409) #9
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i411 = getelementptr i8, ptr %24, i32 640
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i411) #9
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i413 = getelementptr i8, ptr %26, i32 644
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i413) #9
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i415 = getelementptr i8, ptr %28, i32 648
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i415) #9
  %29 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i417 = getelementptr i8, ptr %30, i32 652
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i417) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i419 = getelementptr i8, ptr %32, i32 188
  tail call void @msm_writel(i32 noundef 1073807359, ptr noundef %add.ptr.i419) #9
  %33 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i421 = getelementptr i8, ptr %34, i32 4496
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i421) #9
  %35 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i423 = getelementptr i8, ptr %36, i32 11968
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i423) #9
  %37 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i425 = getelementptr i8, ptr %38, i32 4524
  tail call void @msm_writel(i32 noundef 6, ptr noundef %add.ptr.i425) #9
  %39 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i427 = getelementptr i8, ptr %40, i32 14936
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i427) #9
  %41 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i429 = getelementptr i8, ptr %42, i32 14884
  tail call void @msm_writel(i32 noundef -65536, ptr noundef %add.ptr.i429) #9
  %43 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i431 = getelementptr i8, ptr %44, i32 14888
  tail call void @msm_writel(i32 noundef 131071, ptr noundef %add.ptr.i431) #9
  %45 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i433 = getelementptr i8, ptr %46, i32 14876
  tail call void @msm_writel(i32 noundef -65536, ptr noundef %add.ptr.i433) #9
  %47 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i435 = getelementptr i8, ptr %48, i32 14880
  tail call void @msm_writel(i32 noundef 131071, ptr noundef %add.ptr.i435) #9
  %49 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i437 = getelementptr i8, ptr %50, i32 14892
  tail call void @msm_writel(i32 noundef 1048576, ptr noundef %add.ptr.i437) #9
  %51 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i439 = getelementptr i8, ptr %52, i32 14896
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i439) #9
  %gmem = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 3
  %53 = ptrtoint ptr %gmem to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %gmem, align 8
  %sub = add i32 %54, 1048575
  %55 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i441 = getelementptr i8, ptr %56, i32 14900
  tail call void @msm_writel(i32 noundef %sub, ptr noundef %add.ptr.i441) #9
  %57 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i443 = getelementptr i8, ptr %58, i32 14904
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i443) #9
  %59 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %revn.i, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %60, label %if.else28 [
    i32 506, label %if.end11.if.then20_crit_edge
    i32 508, label %if.end11.if.then20_crit_edge692
    i32 510, label %if.end11.if.then20_crit_edge693
  ]

if.end11.if.then20_crit_edge693:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.end11.if.then20_crit_edge692:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.end11.if.then20_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.then20:                                        ; preds = %if.end11.if.then20_crit_edge, %if.end11.if.then20_crit_edge692, %if.end11.if.then20_crit_edge693
  %62 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i454 = getelementptr i8, ptr %63, i32 8340
  tail call void @msm_writel(i32 noundef 32, ptr noundef %add.ptr.i454) #9
  %64 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %revn.i, align 4
  %66 = add i32 %65, -506
  %switch.and = and i32 %66, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %67 = select i1 %switch.selectcmp, i32 1024, i32 32
  %68 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i464 = getelementptr i8, ptr %69, i32 8344
  tail call void @msm_writel(i32 noundef %67, ptr noundef %add.ptr.i464) #9
  br label %if.end34

if.else28:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i470 = getelementptr i8, ptr %71, i32 8340
  tail call void @msm_writel(i32 noundef 64, ptr noundef %add.ptr.i470) #9
  %72 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 530, i32 %73)
  %cmp.i472.not = icmp eq i32 %73, 530
  %74 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i475 = getelementptr i8, ptr %75, i32 8344
  %.689 = select i1 %cmp.i472.not, i32 64, i32 1024
  tail call void @msm_writel(i32 noundef %.689, ptr noundef %add.ptr.i475) #9
  br label %if.end34

if.end34:                                         ; preds = %if.else28, %if.then20
  %.sink685 = phi i32 [ -2147483552, %if.else28 ], [ 1073741872, %if.then20 ]
  %.sink683 = phi i32 [ 1075845910, %if.else28 ], [ 537922826, %if.then20 ]
  %76 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i479 = getelementptr i8, ptr %77, i32 8320
  tail call void @msm_writel(i32 noundef %.sink685, ptr noundef %add.ptr.i479) #9
  %78 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i481 = getelementptr i8, ptr %79, i32 8316
  tail call void @msm_writel(i32 noundef %.sink683, ptr noundef %add.ptr.i481) #9
  %80 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %revn.i, align 4
  %switch.tableidx = add i32 %81, -506
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %82 = icmp ult i32 %switch.tableidx, 7
  br i1 %82, label %switch.lookup, label %if.end34.if.end53_crit_edge

if.end34.if.end53_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

switch.lookup:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.a5xx_hw_init, i32 0, i32 %switch.tableidx
  %83 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %83)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end53

if.end53:                                         ; preds = %switch.lookup, %if.end34.if.end53_crit_edge
  %.sink687 = phi i32 [ %switch.load, %switch.lookup ], [ -1071644672, %if.end34.if.end53_crit_edge ]
  %84 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i500 = getelementptr i8, ptr %85, i32 13312
  tail call void @msm_writel(i32 noundef %.sink687, ptr noundef %add.ptr.i500) #9
  %86 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %info, align 4
  %quirks55 = getelementptr inbounds %struct.adreno_info, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %quirks55 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %quirks55, align 4
  %and56 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end53.if.end59_crit_edge, label %if.then58

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i504 = getelementptr i8, ptr %91, i32 13312
  tail call void @msm_rmw(ptr noundef %add.ptr.i504, i32 noundef 0, i32 noundef 256) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end53.if.end59_crit_edge
  %92 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %revn.i, align 4
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %93, label %if.end59.if.end72_crit_edge [
    i32 506, label %if.end59.if.then71_crit_edge
    i32 508, label %if.end59.if.then71_crit_edge694
    i32 509, label %if.end59.if.then71_crit_edge695
    i32 512, label %if.end59.if.then71_crit_edge696
  ]

if.end59.if.then71_crit_edge696:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

if.end59.if.then71_crit_edge695:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

if.end59.if.then71_crit_edge694:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

if.end59.if.then71_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

if.end59.if.end72_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then71:                                        ; preds = %if.end59.if.then71_crit_edge, %if.end59.if.then71_crit_edge694, %if.end59.if.then71_crit_edge695, %if.end59.if.then71_crit_edge696
  %95 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i518 = getelementptr i8, ptr %96, i32 13072
  tail call void @msm_rmw(ptr noundef %add.ptr.i518, i32 noundef 0, i32 noundef 512) #9
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end59.if.end72_crit_edge
  %97 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i520 = getelementptr i8, ptr %98, i32 14852
  tail call void @msm_writel(i32 noundef 536870912, ptr noundef %add.ptr.i520) #9
  %99 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i522 = getelementptr i8, ptr %100, i32 8396
  tail call void @msm_writel(i32 noundef 33554432, ptr noundef %add.ptr.i522) #9
  %101 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i524 = getelementptr i8, ptr %102, i32 592
  tail call void @msm_writel(i32 noundef -1493172225, ptr noundef %add.ptr.i524) #9
  %103 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %104)
  %cmp.i526.not = icmp eq i32 %104, 510
  br i1 %cmp.i526.not, label %if.then75, label %if.end72.if.end76_crit_edge

if.end72.if.end76_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i529 = getelementptr i8, ptr %106, i32 13072
  tail call void @msm_rmw(ptr noundef %add.ptr.i529, i32 noundef 2048, i32 noundef 0) #9
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end72.if.end76_crit_edge
  tail call void @a5xx_set_hwcg(ptr noundef %gpu, i1 noundef zeroext true)
  %107 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i531 = getelementptr i8, ptr %108, i32 596
  tail call void @msm_writel(i32 noundef 63, ptr noundef %add.ptr.i531) #9
  %109 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 540, i32 %110)
  %cmp.i533.not = icmp eq i32 %110, 540
  %. = select i1 %cmp.i533.not, i32 2, i32 1
  %shl = shl nuw nsw i32 %., 7
  %111 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i536 = getelementptr i8, ptr %112, i32 15368
  tail call void @msm_writel(i32 noundef %shl, ptr noundef %add.ptr.i536) #9
  %shl82 = shl nuw nsw i32 %., 1
  %113 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i538 = getelementptr i8, ptr %114, i32 13080
  tail call void @msm_writel(i32 noundef %shl82, ptr noundef %add.ptr.i538) #9
  %115 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %revn.i, align 4
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %116, label %if.end76.if.end92_crit_edge [
    i32 509, label %if.end76.if.then91_crit_edge
    i32 512, label %if.end76.if.then91_crit_edge697
    i32 540, label %if.end76.if.then91_crit_edge698
  ]

if.end76.if.then91_crit_edge698:                  ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

if.end76.if.then91_crit_edge697:                  ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

if.end76.if.then91_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

if.end76.if.end92_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then91:                                        ; preds = %if.end76.if.then91_crit_edge, %if.end76.if.then91_crit_edge697, %if.end76.if.then91_crit_edge698
  %118 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i549 = getelementptr i8, ptr %119, i32 14908
  tail call void @msm_writel(i32 noundef %., ptr noundef %add.ptr.i549) #9
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end76.if.end92_crit_edge
  %120 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i551 = getelementptr i8, ptr %121, i32 14720
  tail call void @msm_rmw(ptr noundef %add.ptr.i551, i32 noundef 0, i32 noundef 1024) #9
  %122 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i553 = getelementptr i8, ptr %123, i32 8832
  tail call void @msm_writel(i32 noundef 7, ptr noundef %add.ptr.i553) #9
  %124 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i555 = getelementptr i8, ptr %125, i32 8704
  tail call void @msm_writel(i32 noundef 1644167184, ptr noundef %add.ptr.i555) #9
  %126 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i557 = getelementptr i8, ptr %127, i32 8708
  tail call void @msm_writel(i32 noundef 1660944416, ptr noundef %add.ptr.i557) #9
  %128 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i559 = getelementptr i8, ptr %129, i32 8712
  tail call void @msm_writel(i32 noundef 1677721664, ptr noundef %add.ptr.i559) #9
  %130 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i561 = getelementptr i8, ptr %131, i32 8716
  tail call void @msm_writel(i32 noundef 1694498944, ptr noundef %add.ptr.i561) #9
  %132 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i563 = getelementptr i8, ptr %133, i32 8720
  tail call void @msm_writel(i32 noundef 1711276288, ptr noundef %add.ptr.i563) #9
  %134 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i565 = getelementptr i8, ptr %135, i32 8724
  tail call void @msm_writel(i32 noundef 1711276544, ptr noundef %add.ptr.i565) #9
  %136 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i567 = getelementptr i8, ptr %137, i32 8728
  tail call void @msm_writel(i32 noundef 1677975552, ptr noundef %add.ptr.i567) #9
  %138 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i569 = getelementptr i8, ptr %139, i32 8732
  tail call void @msm_writel(i32 noundef 1627639808, ptr noundef %add.ptr.i569) #9
  %140 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i571 = getelementptr i8, ptr %141, i32 8736
  tail call void @msm_writel(i32 noundef 1711284224, ptr noundef %add.ptr.i571) #9
  %142 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i573 = getelementptr i8, ptr %143, i32 8740
  tail call void @msm_writel(i32 noundef 1660952832, ptr noundef %add.ptr.i573) #9
  %144 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i575 = getelementptr i8, ptr %145, i32 8744
  tail call void @msm_writel(i32 noundef 1694507520, ptr noundef %add.ptr.i575) #9
  %146 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i577 = getelementptr i8, ptr %147, i32 8748
  tail call void @msm_writel(i32 noundef 1610623616, ptr noundef %add.ptr.i577) #9
  %148 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i579 = getelementptr i8, ptr %149, i32 8752
  tail call void @msm_writel(i32 noundef 1610625792, ptr noundef %add.ptr.i579) #9
  %150 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i581 = getelementptr i8, ptr %151, i32 8756
  tail call void @msm_writel(i32 noundef 1627403200, ptr noundef %add.ptr.i581) #9
  %152 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i583 = getelementptr i8, ptr %153, i32 8760
  tail call void @msm_writel(i32 noundef 1660959136, ptr noundef %add.ptr.i583) #9
  %154 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i585 = getelementptr i8, ptr %155, i32 8764
  tail call void @msm_writel(i32 noundef 1677736384, ptr noundef %add.ptr.i585) #9
  %156 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i587 = getelementptr i8, ptr %157, i32 8768
  tail call void @msm_writel(i32 noundef 1677736448, ptr noundef %add.ptr.i587) #9
  %158 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i589 = getelementptr i8, ptr %159, i32 8772
  tail call void @msm_writel(i32 noundef 1862533120, ptr noundef %add.ptr.i589) #9
  %160 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i591 = getelementptr i8, ptr %161, i32 253964
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i591) #9
  %162 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i593 = getelementptr i8, ptr %163, i32 253952
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i593) #9
  %164 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mmio.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %165, i32 253956
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5.i) #9
  %166 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i595 = getelementptr i8, ptr %167, i32 253960
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i595) #9
  %168 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i597 = getelementptr i8, ptr %169, i32 8576
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i597) #9
  %170 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i599 = getelementptr i8, ptr %171, i32 12036
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i599) #9
  %172 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i601 = getelementptr i8, ptr %173, i32 12804
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i601) #9
  %174 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i603 = getelementptr i8, ptr %175, i32 13076
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i603) #9
  %176 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i605 = getelementptr i8, ptr %177, i32 13316
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i605) #9
  %178 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i607 = getelementptr i8, ptr %179, i32 14356
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i607) #9
  %180 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i609 = getelementptr i8, ptr %181, i32 14596
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i609) #9
  %182 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i611 = getelementptr i8, ptr %183, i32 14724
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i611) #9
  %184 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i613 = getelementptr i8, ptr %185, i32 14848
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i613) #9
  %186 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i615 = getelementptr i8, ptr %187, i32 15108
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i615) #9
  %188 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i617 = getelementptr i8, ptr %189, i32 15364
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i617) #9
  %190 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i619 = getelementptr i8, ptr %191, i32 254016
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i619) #9
  %192 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %info, align 4
  %quirks112 = getelementptr inbounds %struct.adreno_info, ptr %193, i32 0, i32 5
  %194 = ptrtoint ptr %quirks112 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %quirks112, align 4
  %and113 = and i32 %195, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end92.if.end116_crit_edge, label %if.then115

if.end92.if.end116_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.then115:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %196 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i621 = getelementptr i8, ptr %197, i32 14720
  tail call void @msm_rmw(ptr noundef %add.ptr.i621, i32 noundef 0, i32 noundef 8388608) #9
  %198 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i623 = getelementptr i8, ptr %199, i32 14352
  tail call void @msm_rmw(ptr noundef %add.ptr.i623, i32 noundef 262144, i32 noundef 0) #9
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end92.if.end116_crit_edge
  %call117 = tail call i32 @adreno_hw_init(ptr noundef %gpu) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end120:                                        ; preds = %if.end116
  %200 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %revn.i, align 4
  %202 = zext i32 %201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %201, label %if.end120.if.end127_crit_edge [
    i32 530, label %if.end120.if.then126_crit_edge
    i32 540, label %if.end120.if.then126_crit_edge699
  ]

if.end120.if.then126_crit_edge699:                ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

if.end120.if.then126_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

if.end120.if.end127_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then126:                                       ; preds = %if.end120.if.then126_crit_edge, %if.end120.if.then126_crit_edge699
  tail call void @a5xx_gpmu_ucode_init(ptr noundef %gpu) #9
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %if.end120.if.end127_crit_edge
  %pm4_bo.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 1
  %203 = ptrtoint ptr %pm4_bo.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pm4_bo.i, align 8
  %tobool.not.i = icmp eq ptr %204, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end127.if.end13.i_crit_edge

if.end127.if.end13.i_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then.i:                                        ; preds = %if.end127
  %fw.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 8
  %205 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %fw.i, align 4
  %pm4_iova.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 2
  %call.i = tail call ptr @adreno_fw_create_bo(ptr noundef %gpu, ptr noundef %206, ptr noundef %pm4_iova.i) #9
  %207 = ptrtoint ptr %pm4_bo.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call.i, ptr %pm4_bo.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7.i, label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %208 = ptrtoint ptr %call.i to i32
  %209 = ptrtoint ptr %pm4_bo.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr null, ptr %pm4_bo.i, align 8
  %dev.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %210 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev.i, align 4
  %dev11.i = getelementptr inbounds %struct.drm_device, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev11.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %213, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, i32 noundef %208) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %call.i, ptr noundef nonnull @.str.12) #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i, %if.end127.if.end13.i_crit_edge
  %pfp_bo.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 3
  %214 = ptrtoint ptr %pfp_bo.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %pfp_bo.i, align 8
  %tobool14.not.i = icmp eq ptr %215, null
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end13.i.a5xx_ucode_init.exit.thread_crit_edge

if.end13.i.a5xx_ucode_init.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a5xx_ucode_init.exit.thread

if.then15.i:                                      ; preds = %if.end13.i
  %arrayidx17.i = getelementptr %struct.adreno_gpu, ptr %gpu, i32 0, i32 8, i32 1
  %216 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx17.i, align 4
  %pfp_iova.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 4
  %call18.i = tail call ptr @adreno_fw_create_bo(ptr noundef %gpu, ptr noundef %217, ptr noundef %pfp_iova.i) #9
  %218 = ptrtoint ptr %pfp_bo.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call18.i, ptr %pfp_bo.i, align 8
  %cmp.i64.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64.i, label %if.then22.i, label %if.end28.i

if.then22.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %219 = ptrtoint ptr %call18.i to i32
  %220 = ptrtoint ptr %pfp_bo.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr null, ptr %pfp_bo.i, align 8
  %dev26.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %221 = ptrtoint ptr %dev26.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev26.i, align 4
  %dev27.i = getelementptr inbounds %struct.drm_device, ptr %222, i32 0, i32 2
  %223 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev27.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %224, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, i32 noundef %219) #9
  br label %cleanup

if.end28.i:                                       ; preds = %if.then15.i
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %call18.i, ptr noundef nonnull @.str.14) #9
  %225 = ptrtoint ptr %pfp_bo.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pfp_bo.i, align 8
  %call.i.i = tail call ptr @msm_gem_get_vaddr(ptr noundef %226) #9
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end28.i.a5xx_ucode_init.exit.thread_crit_edge, label %if.end.i.i

if.end28.i.a5xx_ucode_init.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a5xx_ucode_init.exit.thread

if.end.i.i:                                       ; preds = %if.end28.i
  %227 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %call.i.i, align 4
  %and.i.i = and i32 %228, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.i.i)
  %cmp.i65.i = icmp eq i32 %and.i.i, 10
  br i1 %cmp.i65.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end6.i.i_crit_edge

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %arrayidx2.i.i = getelementptr i32, ptr %call.i.i, i32 2
  %229 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx2.i.i, align 4
  %and3.i.i = and i32 %230, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %cmp4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %cmp4.not.i.i, label %land.lhs.true.i.i.if.end6.i.i_crit_edge, label %if.then5.i.i

land.lhs.true.i.i.if.end6.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %has_whereami.i.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 20
  %231 = ptrtoint ptr %has_whereami.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 1, ptr %has_whereami.i.i, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then5.i.i, %land.lhs.true.i.i.if.end6.i.i_crit_edge, %if.end.i.i.if.end6.i.i_crit_edge
  tail call void @msm_gem_put_vaddr(ptr noundef %226) #9
  br label %a5xx_ucode_init.exit.thread

a5xx_ucode_init.exit.thread:                      ; preds = %if.end6.i.i, %if.end28.i.a5xx_ucode_init.exit.thread_crit_edge, %if.end13.i.a5xx_ucode_init.exit.thread_crit_edge
  %pm4_iova32.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 2
  %232 = ptrtoint ptr %pm4_iova32.i to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %pm4_iova32.i, align 8
  %conv.i.i = trunc i64 %233 to i32
  %234 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %235, i32 8416
  tail call void @msm_writel(i32 noundef %conv.i.i, ptr noundef %add.ptr.i.i) #9
  %shr.i.i = lshr i64 %233, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %236 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %mmio.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %237, i32 8420
  tail call void @msm_writel(i32 noundef %conv2.i.i, ptr noundef %add.ptr5.i.i) #9
  %pfp_iova33.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 4
  %238 = ptrtoint ptr %pfp_iova33.i to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %pfp_iova33.i, align 8
  %conv.i66.i = trunc i64 %239 to i32
  %240 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i68.i = getelementptr i8, ptr %241, i32 8404
  tail call void @msm_writel(i32 noundef %conv.i66.i, ptr noundef %add.ptr.i68.i) #9
  %shr.i69.i = lshr i64 %239, 32
  %conv2.i70.i = trunc i64 %shr.i69.i to i32
  %242 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %mmio.i, align 8
  %add.ptr5.i71.i = getelementptr i8, ptr %243, i32 8408
  tail call void @msm_writel(i32 noundef %conv2.i70.i, ptr noundef %add.ptr5.i71.i) #9
  %rb = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 13
  %244 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %rb, align 4
  %iova = getelementptr inbounds %struct.msm_ringbuffer, ptr %245, i32 0, i32 10
  %246 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %246)
  %247 = load i64, ptr %iova, align 8
  %conv.i630 = trunc i64 %247 to i32
  %248 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i632 = getelementptr i8, ptr %249, i32 8192
  tail call void @msm_writel(i32 noundef %conv.i630, ptr noundef %add.ptr.i632) #9
  %shr.i = lshr i64 %247, 32
  %conv2.i = trunc i64 %shr.i to i32
  %250 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %mmio.i, align 8
  %add.ptr5.i633 = getelementptr i8, ptr %251, i32 8196
  tail call void @msm_writel(i32 noundef %conv2.i, ptr noundef %add.ptr5.i633) #9
  %252 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i635 = getelementptr i8, ptr %253, i32 8200
  tail call void @msm_writel(i32 noundef 134218252, ptr noundef %add.ptr.i635) #9
  %has_whereami = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 20
  %254 = ptrtoint ptr %has_whereami to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %has_whereami, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool135.not = icmp eq i8 %255, 0
  br i1 %tobool135.not, label %if.else154, label %if.then136

if.then136:                                       ; preds = %a5xx_ucode_init.exit.thread
  %shadow_bo = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 17
  %256 = ptrtoint ptr %shadow_bo to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %shadow_bo, align 4
  %tobool137.not = icmp eq ptr %257, null
  br i1 %tobool137.not, label %if.then138, label %if.then136.if.end148_crit_edge

if.then136.if.end148_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.then138:                                       ; preds = %if.then136
  %dev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %258 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev, align 4
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %260 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %nr_rings, align 4
  %mul = shl i32 %261, 2
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %262 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %aspace, align 8
  %shadow_iova = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 18
  %call140 = tail call ptr @msm_gem_kernel_new(ptr noundef %259, i32 noundef %mul, i32 noundef 537001984, ptr noundef %263, ptr noundef %shadow_bo, ptr noundef %shadow_iova) #9
  %shadow = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 19
  %264 = ptrtoint ptr %shadow to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %call140, ptr %shadow, align 8
  %cmp.i636 = icmp ugt ptr %call140, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i636, label %if.then143, label %if.end146

if.then143:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #11
  %265 = ptrtoint ptr %call140 to i32
  br label %cleanup

if.end146:                                        ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #11
  %266 = ptrtoint ptr %shadow_bo to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %shadow_bo, align 4
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %267, ptr noundef nonnull @.str.6) #9
  br label %if.end148

if.end148:                                        ; preds = %if.end146, %if.then136.if.end148_crit_edge
  %shadow_iova149 = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 18
  %268 = ptrtoint ptr %shadow_iova149 to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %shadow_iova149, align 8
  %270 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %rb, align 4
  %id = getelementptr inbounds %struct.msm_ringbuffer, ptr %271, i32 0, i32 1
  %272 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %id, align 4
  %mul152 = shl i32 %273, 2
  %conv = zext i32 %mul152 to i64
  %add153 = add i64 %269, %conv
  %conv.i637 = trunc i64 %add153 to i32
  %274 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i639 = getelementptr i8, ptr %275, i32 8208
  tail call void @msm_writel(i32 noundef %conv.i637, ptr noundef %add.ptr.i639) #9
  %shr.i640 = lshr i64 %add153, 32
  %conv2.i641 = trunc i64 %shr.i640 to i32
  %276 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %mmio.i, align 8
  %add.ptr5.i642 = getelementptr i8, ptr %277, i32 8212
  tail call void @msm_writel(i32 noundef %conv2.i641, ptr noundef %add.ptr5.i642) #9
  br label %if.end160

if.else154:                                       ; preds = %a5xx_ucode_init.exit.thread
  %nr_rings155 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %278 = ptrtoint ptr %nr_rings155 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %nr_rings155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %279)
  %cmp = icmp sgt i32 %279, 1
  br i1 %cmp, label %if.then157, label %if.else154.if.end160_crit_edge

if.else154.if.end160_crit_edge:                   ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.then157:                                       ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @a5xx_preempt_fini(ptr noundef %gpu) #9
  %280 = ptrtoint ptr %nr_rings155 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 1, ptr %nr_rings155, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then157, %if.else154.if.end160_crit_edge, %if.end148
  tail call void @a5xx_preempt_hw_init(ptr noundef %gpu) #9
  %281 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i644 = getelementptr i8, ptr %282, i32 224
  tail call void @msm_writel(i32 noundef 294650750, ptr noundef %add.ptr.i644) #9
  %283 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i646 = getelementptr i8, ptr %284, i32 8392
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i646) #9
  %285 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %rb, align 4
  tail call void @adreno_wait_ring(ptr noundef %286, i32 noundef 9) #9
  %next.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %286, i32 0, i32 6
  %287 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %next.i.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %286, i32 0, i32 4
  %289 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i.i647 = icmp eq ptr %288, %290
  br i1 %cmp.i.i.i647, label %if.then.i.i.i, label %if.end160.OUT_PKT7.exit.i_crit_edge

if.end160.OUT_PKT7.exit.i_crit_edge:              ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit.i

if.then.i.i.i:                                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %286, i32 0, i32 3
  %291 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %start.i.i.i, align 4
  %293 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %292, ptr %next.i.i.i, align 8
  br label %OUT_PKT7.exit.i

OUT_PKT7.exit.i:                                  ; preds = %if.then.i.i.i, %if.end160.OUT_PKT7.exit.i_crit_edge
  %294 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %295, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %next.i.i.i, align 8
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 1892155400, ptr %295, align 4
  %297 = load ptr, ptr %next.i.i.i, align 8
  %298 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i648 = icmp eq ptr %297, %299
  br i1 %cmp.i.i648, label %if.then.i.i, label %OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge

OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge:        ; preds = %OUT_PKT7.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit.i

if.then.i.i:                                      ; preds = %OUT_PKT7.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %286, i32 0, i32 3
  %300 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %start.i.i, align 4
  %302 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %301, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit.i

OUT_RING.exit.i:                                  ; preds = %if.then.i.i, %OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge
  %303 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %304, i32 1
  store ptr %incdec.ptr.i.i, ptr %next.i.i.i, align 8
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 47, ptr %304, align 4
  %306 = load ptr, ptr %next.i.i.i, align 8
  %307 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i28.i = icmp eq ptr %306, %308
  br i1 %cmp.i28.i, label %if.then.i30.i, label %OUT_RING.exit.i.OUT_RING.exit32.i_crit_edge

OUT_RING.exit.i.OUT_RING.exit32.i_crit_edge:      ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit32.i

if.then.i30.i:                                    ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %start.i29.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %286, i32 0, i32 3
  %309 = ptrtoint ptr %start.i29.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %start.i29.i, align 4
  %311 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %310, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit32.i

OUT_RING.exit32.i:                                ; preds = %if.then.i30.i, %OUT_RING.exit.i.OUT_RING.exit32.i_crit_edge
  %312 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i31.i = getelementptr i32, ptr %313, i32 1
  store ptr %incdec.ptr.i31.i, ptr %next.i.i.i, align 8
  %314 = ptrtoint ptr %313 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 3, ptr %313, align 4
  %315 = load ptr, ptr %next.i.i.i, align 8
  %316 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i35.i = icmp eq ptr %315, %317
  br i1 %cmp.i35.i, label %if.then.i37.i, label %OUT_RING.exit32.i.OUT_RING.exit39.i_crit_edge

OUT_RING.exit32.i.OUT_RING.exit39.i_crit_edge:    ; preds = %OUT_RING.exit32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit39.i

if.then.i37.i:                                    ; preds = %OUT_RING.exit32.i
  call void @__sanitizer_cov_trace_pc() #11
  %start.i36.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %286, i32 0, i32 3
  %318 = ptrtoint ptr %start.i36.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %start.i36.i, align 4
  %320 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr %319, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit39.i

OUT_RING.exit39.i:                                ; preds = %if.then.i37.i, %OUT_RING.exit32.i.OUT_RING.exit39.i_crit_edge
  %321 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i38.i = getelementptr i32, ptr %322, i32 1
  store ptr %incdec.ptr.i38.i, ptr %next.i.i.i, align 8
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 536870912, ptr %322, align 4
  %324 = load ptr, ptr %next.i.i.i, align 8
  %325 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i42.i = icmp eq ptr %324, %326
  br i1 %cmp.i42.i, label %if.then.i44.i, label %OUT_RING.exit39.i.OUT_RING.exit46.i_crit_edge

OUT_RING.exit39.i.OUT_RING.exit46.i_crit_edge:    ; preds = %OUT_RING.exit39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit46.i

if.then.i44.i:                                    ; preds = %OUT_RING.exit39.i
  call void @__sanitizer_cov_trace_pc() #11
  %start.i43.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %286, i32 0, i32 3
  %327 = ptrtoint ptr %start.i43.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %start.i43.i, align 4
  %329 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %328, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit46.i

OUT_RING.exit46.i:                                ; preds = %if.then.i44.i, %OUT_RING.exit39.i.OUT_RING.exit46.i_crit_edge
  %330 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i45.i = getelementptr i32, ptr %331, i32 1
  store ptr %incdec.ptr.i45.i, ptr %next.i.i.i, align 8
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 0, ptr %331, align 4
  %333 = load ptr, ptr %next.i.i.i, align 8
  %334 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i49.i = icmp eq ptr %333, %335
  br i1 %cmp.i49.i, label %if.then.i51.i, label %OUT_RING.exit46.i.OUT_RING.exit53.i_crit_edge

OUT_RING.exit46.i.OUT_RING.exit53.i_crit_edge:    ; preds = %OUT_RING.exit46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit53.i

if.then.i51.i:                                    ; preds = %OUT_RING.exit46.i
  call void @__sanitizer_cov_trace_pc() #11
  %start.i50.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %286, i32 0, i32 3
  %336 = ptrtoint ptr %start.i50.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %start.i50.i, align 4
  %338 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %337, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit53.i

OUT_RING.exit53.i:                                ; preds = %if.then.i51.i, %OUT_RING.exit46.i.OUT_RING.exit53.i_crit_edge
  %339 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i52.i = getelementptr i32, ptr %340, i32 1
  store ptr %incdec.ptr.i52.i, ptr %next.i.i.i, align 8
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 0, ptr %340, align 4
  %342 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %revn.i, align 4
  %344 = zext i32 %343 to i64
  call void @__sanitizer_cov_trace_switch(i64 %344, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %343, label %if.else6.i [
    i32 506, label %OUT_RING.exit53.i.if.then.i649_crit_edge
    i32 530, label %OUT_RING.exit53.i.if.then.i649_crit_edge700
    i32 510, label %if.then5.i
  ]

OUT_RING.exit53.i.if.then.i649_crit_edge700:      ; preds = %OUT_RING.exit53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i649

OUT_RING.exit53.i.if.then.i649_crit_edge:         ; preds = %OUT_RING.exit53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i649

if.then.i649:                                     ; preds = %OUT_RING.exit53.i.if.then.i649_crit_edge, %OUT_RING.exit53.i.if.then.i649_crit_edge700
  %345 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %next.i.i.i, align 8
  %347 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i60.i = icmp eq ptr %346, %348
  br i1 %cmp.i60.i, label %if.then.i62.i, label %if.then.i649.OUT_RING.exit64.i_crit_edge

if.then.i649.OUT_RING.exit64.i_crit_edge:         ; preds = %if.then.i649
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit64.i

if.then.i62.i:                                    ; preds = %if.then.i649
  call void @__sanitizer_cov_trace_pc() #11
  %start.i61.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %286, i32 0, i32 3
  %349 = ptrtoint ptr %start.i61.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %start.i61.i, align 4
  %351 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %350, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit64.i

OUT_RING.exit64.i:                                ; preds = %if.then.i62.i, %if.then.i649.OUT_RING.exit64.i_crit_edge
  %352 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i63.i = getelementptr i32, ptr %353, i32 1
  store ptr %incdec.ptr.i63.i, ptr %next.i.i.i, align 8
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 11, ptr %353, align 4
  br label %if.end7.i

if.then5.i:                                       ; preds = %OUT_RING.exit53.i
  %355 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %next.i.i.i, align 8
  %357 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i70.i = icmp eq ptr %356, %358
  br i1 %cmp.i70.i, label %if.then.i72.i, label %if.then5.i.OUT_RING.exit74.i_crit_edge

if.then5.i.OUT_RING.exit74.i_crit_edge:           ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit74.i

if.then.i72.i:                                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  %start.i71.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %286, i32 0, i32 3
  %359 = ptrtoint ptr %start.i71.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %start.i71.i, align 4
  %361 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %360, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit74.i

OUT_RING.exit74.i:                                ; preds = %if.then.i72.i, %if.then5.i.OUT_RING.exit74.i_crit_edge
  %362 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i73.i = getelementptr i32, ptr %363, i32 1
  store ptr %incdec.ptr.i73.i, ptr %next.i.i.i, align 8
  %364 = ptrtoint ptr %363 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 1, ptr %363, align 4
  br label %if.end7.i

if.else6.i:                                       ; preds = %OUT_RING.exit53.i
  %365 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %next.i.i.i, align 8
  %367 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i77.i = icmp eq ptr %366, %368
  br i1 %cmp.i77.i, label %if.then.i79.i, label %if.else6.i.OUT_RING.exit81.i_crit_edge

if.else6.i.OUT_RING.exit81.i_crit_edge:           ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit81.i

if.then.i79.i:                                    ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  %start.i78.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %286, i32 0, i32 3
  %369 = ptrtoint ptr %start.i78.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %start.i78.i, align 4
  %371 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %370, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit81.i

OUT_RING.exit81.i:                                ; preds = %if.then.i79.i, %if.else6.i.OUT_RING.exit81.i_crit_edge
  %372 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i80.i = getelementptr i32, ptr %373, i32 1
  store ptr %incdec.ptr.i80.i, ptr %next.i.i.i, align 8
  %374 = ptrtoint ptr %373 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 0, ptr %373, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %OUT_RING.exit81.i, %OUT_RING.exit74.i, %OUT_RING.exit64.i
  %375 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %next.i.i.i, align 8
  %377 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i84.i = icmp eq ptr %376, %378
  br i1 %cmp.i84.i, label %if.then.i86.i, label %if.end7.i.OUT_RING.exit88.i_crit_edge

if.end7.i.OUT_RING.exit88.i_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit88.i

if.then.i86.i:                                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %start.i85.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %286, i32 0, i32 3
  %379 = ptrtoint ptr %start.i85.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %start.i85.i, align 4
  %381 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr %380, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit88.i

OUT_RING.exit88.i:                                ; preds = %if.then.i86.i, %if.end7.i.OUT_RING.exit88.i_crit_edge
  %382 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i87.i = getelementptr i32, ptr %383, i32 1
  store ptr %incdec.ptr.i87.i, ptr %next.i.i.i, align 8
  %384 = ptrtoint ptr %383 to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 0, ptr %383, align 4
  %385 = load ptr, ptr %next.i.i.i, align 8
  %386 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i91.i = icmp eq ptr %385, %387
  br i1 %cmp.i91.i, label %if.then.i93.i, label %OUT_RING.exit88.i.a5xx_me_init.exit_crit_edge

OUT_RING.exit88.i.a5xx_me_init.exit_crit_edge:    ; preds = %OUT_RING.exit88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a5xx_me_init.exit

if.then.i93.i:                                    ; preds = %OUT_RING.exit88.i
  call void @__sanitizer_cov_trace_pc() #11
  %start.i92.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %286, i32 0, i32 3
  %388 = ptrtoint ptr %start.i92.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %start.i92.i, align 4
  %390 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr %389, ptr %next.i.i.i, align 8
  br label %a5xx_me_init.exit

a5xx_me_init.exit:                                ; preds = %if.then.i93.i, %OUT_RING.exit88.i.a5xx_me_init.exit_crit_edge
  %391 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i94.i = getelementptr i32, ptr %392, i32 1
  store ptr %incdec.ptr.i94.i, ptr %next.i.i.i, align 8
  %393 = ptrtoint ptr %392 to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 0, ptr %392, align 4
  tail call void @a5xx_flush(ptr noundef %gpu, ptr noundef %286, i1 noundef zeroext true) #9
  %call8.i = tail call zeroext i1 @a5xx_idle(ptr noundef %gpu, ptr noundef %286) #9
  br i1 %call8.i, label %if.end164, label %a5xx_me_init.exit.cleanup_crit_edge

a5xx_me_init.exit.cleanup_crit_edge:              ; preds = %a5xx_me_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end164:                                        ; preds = %a5xx_me_init.exit
  %call165 = tail call i32 @a5xx_power_init(ptr noundef %gpu) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end168, label %if.end164.cleanup_crit_edge

if.end164.cleanup_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end168:                                        ; preds = %if.end164
  %394 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 530, i32 %395)
  %cmp.i651.not = icmp eq i32 %395, 530
  br i1 %cmp.i651.not, label %if.then171, label %if.end168.if.end184_crit_edge

if.end168.if.end184_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then171:                                       ; preds = %if.end168
  %396 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %rb, align 4
  tail call void @adreno_wait_ring(ptr noundef %397, i32 noundef 2) #9
  %next.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %397, i32 0, i32 6
  %398 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %next.i.i, align 8
  %end.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %397, i32 0, i32 4
  %400 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %end.i.i, align 8
  %cmp.i.i653 = icmp eq ptr %399, %401
  br i1 %cmp.i.i653, label %if.then.i.i655, label %if.then171.OUT_PKT7.exit_crit_edge

if.then171.OUT_PKT7.exit_crit_edge:               ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit

if.then.i.i655:                                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i654 = getelementptr inbounds %struct.msm_ringbuffer, ptr %397, i32 0, i32 3
  %402 = ptrtoint ptr %start.i.i654 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %start.i.i654, align 4
  %404 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store ptr %403, ptr %next.i.i, align 8
  br label %OUT_PKT7.exit

OUT_PKT7.exit:                                    ; preds = %if.then.i.i655, %if.then171.OUT_PKT7.exit_crit_edge
  %405 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i.i656 = getelementptr i32, ptr %406, i32 1
  store ptr %incdec.ptr.i.i656, ptr %next.i.i, align 8
  %407 = ptrtoint ptr %406 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 1883635713, ptr %406, align 4
  %408 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %rb, align 4
  %next.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %409, i32 0, i32 6
  %410 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %next.i, align 8
  %end.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %409, i32 0, i32 4
  %412 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %end.i, align 8
  %cmp.i658 = icmp eq ptr %411, %413
  br i1 %cmp.i658, label %if.then.i659, label %OUT_PKT7.exit.OUT_RING.exit_crit_edge

OUT_PKT7.exit.OUT_RING.exit_crit_edge:            ; preds = %OUT_PKT7.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit

if.then.i659:                                     ; preds = %OUT_PKT7.exit
  call void @__sanitizer_cov_trace_pc() #11
  %start.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %409, i32 0, i32 3
  %414 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %start.i, align 4
  %416 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store ptr %415, ptr %next.i, align 8
  br label %OUT_RING.exit

OUT_RING.exit:                                    ; preds = %if.then.i659, %OUT_PKT7.exit.OUT_RING.exit_crit_edge
  %417 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %next.i, align 8
  %incdec.ptr.i = getelementptr i32, ptr %418, i32 1
  store ptr %incdec.ptr.i, ptr %next.i, align 8
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 16, ptr %418, align 4
  %420 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %rb, align 4
  tail call void @a5xx_flush(ptr noundef %gpu, ptr noundef %421, i1 noundef zeroext true)
  %422 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %rb, align 4
  %call181 = tail call zeroext i1 @a5xx_idle(ptr noundef %gpu, ptr noundef %423)
  br i1 %call181, label %OUT_RING.exit.if.end184_crit_edge, label %OUT_RING.exit.cleanup_crit_edge

OUT_RING.exit.cleanup_crit_edge:                  ; preds = %OUT_RING.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

OUT_RING.exit.if.end184_crit_edge:                ; preds = %OUT_RING.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.end184:                                        ; preds = %OUT_RING.exit.if.end184_crit_edge, %if.end168.if.end184_crit_edge
  %call185 = tail call fastcc i32 @a5xx_zap_shader_init(ptr noundef %gpu)
  %424 = zext i32 %call185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %424, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call185, label %if.end184.cleanup_crit_edge [
    i32 0, label %if.then187
    i32 -19, label %do.body
  ]

if.end184.cleanup_crit_edge:                      ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then187:                                       ; preds = %if.end184
  %425 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %rb, align 4
  tail call void @adreno_wait_ring(ptr noundef %426, i32 noundef 2) #9
  %next.i.i661 = getelementptr inbounds %struct.msm_ringbuffer, ptr %426, i32 0, i32 6
  %427 = ptrtoint ptr %next.i.i661 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %next.i.i661, align 8
  %end.i.i662 = getelementptr inbounds %struct.msm_ringbuffer, ptr %426, i32 0, i32 4
  %429 = ptrtoint ptr %end.i.i662 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %end.i.i662, align 8
  %cmp.i.i663 = icmp eq ptr %428, %430
  br i1 %cmp.i.i663, label %if.then.i.i665, label %if.then187.OUT_PKT7.exit668_crit_edge

if.then187.OUT_PKT7.exit668_crit_edge:            ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit668

if.then.i.i665:                                   ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i664 = getelementptr inbounds %struct.msm_ringbuffer, ptr %426, i32 0, i32 3
  %431 = ptrtoint ptr %start.i.i664 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %start.i.i664, align 4
  %433 = ptrtoint ptr %next.i.i661 to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %432, ptr %next.i.i661, align 8
  br label %OUT_PKT7.exit668

OUT_PKT7.exit668:                                 ; preds = %if.then.i.i665, %if.then187.OUT_PKT7.exit668_crit_edge
  %434 = ptrtoint ptr %next.i.i661 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %next.i.i661, align 8
  %incdec.ptr.i.i666 = getelementptr i32, ptr %435, i32 1
  store ptr %incdec.ptr.i.i666, ptr %next.i.i661, align 8
  %436 = ptrtoint ptr %435 to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 1894121473, ptr %435, align 4
  %437 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %rb, align 4
  %next.i669 = getelementptr inbounds %struct.msm_ringbuffer, ptr %438, i32 0, i32 6
  %439 = ptrtoint ptr %next.i669 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %next.i669, align 8
  %end.i670 = getelementptr inbounds %struct.msm_ringbuffer, ptr %438, i32 0, i32 4
  %441 = ptrtoint ptr %end.i670 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %end.i670, align 8
  %cmp.i671 = icmp eq ptr %440, %442
  br i1 %cmp.i671, label %if.then.i673, label %OUT_PKT7.exit668.OUT_RING.exit676_crit_edge

OUT_PKT7.exit668.OUT_RING.exit676_crit_edge:      ; preds = %OUT_PKT7.exit668
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit676

if.then.i673:                                     ; preds = %OUT_PKT7.exit668
  call void @__sanitizer_cov_trace_pc() #11
  %start.i672 = getelementptr inbounds %struct.msm_ringbuffer, ptr %438, i32 0, i32 3
  %443 = ptrtoint ptr %start.i672 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %start.i672, align 4
  %445 = ptrtoint ptr %next.i669 to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr %444, ptr %next.i669, align 8
  br label %OUT_RING.exit676

OUT_RING.exit676:                                 ; preds = %if.then.i673, %OUT_PKT7.exit668.OUT_RING.exit676_crit_edge
  %446 = ptrtoint ptr %next.i669 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %next.i669, align 8
  %incdec.ptr.i674 = getelementptr i32, ptr %447, i32 1
  store ptr %incdec.ptr.i674, ptr %next.i669, align 8
  %448 = ptrtoint ptr %447 to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 0, ptr %447, align 4
  %449 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %rb, align 4
  tail call void @a5xx_flush(ptr noundef %gpu, ptr noundef %450, i1 noundef zeroext true)
  %451 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %rb, align 4
  %call196 = tail call zeroext i1 @a5xx_idle(ptr noundef %gpu, ptr noundef %452)
  br i1 %call196, label %OUT_RING.exit676.if.end213_crit_edge, label %OUT_RING.exit676.cleanup_crit_edge

OUT_RING.exit676.cleanup_crit_edge:               ; preds = %OUT_RING.exit676
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

OUT_RING.exit676.if.end213_crit_edge:             ; preds = %OUT_RING.exit676
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end213

do.body:                                          ; preds = %if.end184
  %.b389 = load i1, ptr @a5xx_hw_init.__print_once, align 1
  br i1 %.b389, label %do.body.do.end210_crit_edge, label %if.then204

do.body.do.end210_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end210

if.then204:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @a5xx_hw_init.__print_once, align 1
  %dev206 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %453 = ptrtoint ptr %dev206 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %dev206, align 4
  %dev207 = getelementptr inbounds %struct.drm_device, ptr %454, i32 0, i32 2
  %455 = ptrtoint ptr %dev207 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %dev207, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %456, ptr noundef nonnull @.str.7) #13
  br label %do.end210

do.end210:                                        ; preds = %if.then204, %do.body.do.end210_crit_edge
  %457 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i678 = getelementptr i8, ptr %458, i32 249856
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i678) #9
  br label %if.end213

if.end213:                                        ; preds = %do.end210, %OUT_RING.exit676.if.end213_crit_edge
  tail call fastcc void @a5xx_preempt_start(ptr noundef %gpu)
  br label %cleanup

cleanup:                                          ; preds = %if.end213, %OUT_RING.exit676.cleanup_crit_edge, %if.end184.cleanup_crit_edge, %OUT_RING.exit.cleanup_crit_edge, %if.end164.cleanup_crit_edge, %a5xx_me_init.exit.cleanup_crit_edge, %if.then143, %if.then22.i, %if.then7.i, %if.end116.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end213 ], [ %265, %if.then143 ], [ %call117, %if.end116.cleanup_crit_edge ], [ -22, %a5xx_me_init.exit.cleanup_crit_edge ], [ %call165, %if.end164.cleanup_crit_edge ], [ -22, %OUT_RING.exit.cleanup_crit_edge ], [ -22, %OUT_RING.exit676.cleanup_crit_edge ], [ %call185, %if.end184.cleanup_crit_edge ], [ %219, %if.then22.i ], [ %208, %if.then7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a5xx_pm_suspend(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %0 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revn.i, align 4
  %switch.tableidx = add i32 %1, -506
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.lookup, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.a5xx_pm_suspend, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %entry.if.end_crit_edge
  %mask.0 = phi i32 [ 15, %entry.if.end_crit_edge ], [ %switch.load, %switch.lookup ]
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 49664
  tail call void @msm_writel(i32 noundef %mask.0, ptr noundef %add.ptr.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -100, %6
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i59 = getelementptr i8, ptr %8, i32 49668
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i59) #9
  %and = and i32 %call.i, %mask.0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %mask.0)
  %cmp = icmp eq i32 %and, %mask.0
  br i1 %cmp, label %do.body.do.end_crit_edge, label %do.cond

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.cond:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %9
  %cmp13 = icmp slt i32 %sub, 0
  br i1 %cmp13, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i61 = getelementptr i8, ptr %11, i32 49664
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i61) #9
  %12 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %revn.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %13, label %do.end.if.end21_crit_edge [
    i32 510, label %do.end.if.then20_crit_edge
    i32 530, label %do.end.if.then20_crit_edge74
  ]

do.end.if.then20_crit_edge74:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

do.end.if.then20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %do.end.if.then20_crit_edge, %do.end.if.then20_crit_edge74
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i69 = getelementptr i8, ptr %16, i32 276
  tail call void @msm_writel(i32 noundef 3932160, ptr noundef %add.ptr.i69) #9
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i71 = getelementptr i8, ptr %18, i32 276
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i71) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %do.end.if.end21_crit_edge
  %call22 = tail call i32 @msm_gpu_pm_suspend(ptr noundef %gpu) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %has_whereami = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 20
  %19 = ptrtoint ptr %has_whereami to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_whereami, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26.not = icmp eq i8 %20, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %for.cond.preheader

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end25
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %21 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp2872 = icmp sgt i32 %22, 0
  br i1 %cmp2872, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %shadow = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %23 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shadow, align 8
  %arrayidx = getelementptr i32, ptr %24, i32 %i.073
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.073, 1
  %26 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_rings, align 4
  %cmp28 = icmp slt i32 %inc, %27
  br i1 %cmp28, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end21.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a5xx_pm_resume(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @msm_gpu_pm_resume(ptr noundef %gpu) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %0 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revn.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %1, label %if.then5 [
    i32 530, label %if.end.if.end6_crit_edge
    i32 540, label %if.end.if.end6_crit_edge62
  ]

if.end.if.end6_crit_edge62:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 412
  tail call void @msm_writel(i32 noundef 85, ptr noundef %add.ptr.i) #9
  tail call void @a5xx_set_hwcg(ptr noundef %gpu, i1 noundef zeroext true)
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i39 = getelementptr i8, ptr %6, i32 412
  tail call void @msm_rmw(ptr noundef %add.ptr.i39, i32 noundef 255, i32 noundef 0) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %if.end.if.end6_crit_edge62
  %mmio.i40 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %7 = ptrtoint ptr %mmio.i40 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i40, align 8
  %add.ptr.i41 = getelementptr i8, ptr %8, i32 172572
  tail call void @msm_writel(i32 noundef 7831552, ptr noundef %add.ptr.i41) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 644244) #9
  br label %while.body.i

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %if.end6
  %dec1.i = phi i32 [ 19, %if.end6 ], [ %dec.i, %do.end.i.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #9
  %11 = ptrtoint ptr %mmio.i40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i40, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 172596
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #9
  %and.i = and i32 %call.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %if.end11

do.end.i:                                         ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !185
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !186
  %dec.i = add nsw i32 %dec1.i, -1
  %tobool.not.i = icmp eq i32 %dec1.i, 0
  br i1 %tobool.not.i, label %if.then9, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.then9:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpu, align 8
  %15 = ptrtoint ptr %mmio.i40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i40, align 8
  %add.ptr.i43 = getelementptr i8, ptr %16, i32 172596
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i43) #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, ptr noundef %14, i32 noundef %call.i) #9
  br label %cleanup

if.end11:                                         ; preds = %while.body.i
  %17 = ptrtoint ptr %mmio.i40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i40, align 8
  %add.ptr.i45 = getelementptr i8, ptr %18, i32 172548
  tail call void @msm_writel(i32 noundef 7831552, ptr noundef %add.ptr.i45) #9
  br label %while.body.i52

while.body.i52:                                   ; preds = %do.end.i55.while.body.i52_crit_edge, %if.end11
  %dec1.i47 = phi i32 [ 19, %if.end11 ], [ %dec.i53, %do.end.i55.while.body.i52_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #9
  %20 = ptrtoint ptr %mmio.i40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i40, align 8
  %add.ptr.i.i48 = getelementptr i8, ptr %21, i32 172588
  %call.i.i49 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i48) #9
  %and.i50 = and i32 %call.i.i49, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %cmp.not.i51 = icmp eq i32 %and.i50, 0
  br i1 %cmp.not.i51, label %do.end.i55, label %while.body.i52.cleanup_crit_edge

while.body.i52.cleanup_crit_edge:                 ; preds = %while.body.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i55:                                       ; preds = %while.body.i52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !185
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !186
  %dec.i53 = add nsw i32 %dec1.i47, -1
  %tobool.not.i54 = icmp eq i32 %dec1.i47, 0
  br i1 %tobool.not.i54, label %if.then14, label %do.end.i55.while.body.i52_crit_edge

do.end.i55.while.body.i52_crit_edge:              ; preds = %do.end.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i52

if.then14:                                        ; preds = %do.end.i55
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpu, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, ptr noundef %23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %while.body.i52.cleanup_crit_edge, %if.then9, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then9 ], [ 0, %if.then5 ], [ %call, %entry.cleanup_crit_edge ], [ -110, %if.then14 ], [ 0, %while.body.i52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a5xx_submit(ptr noundef %gpu, ptr nocapture noundef readonly %submit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ring4 = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 16
  %0 = ptrtoint ptr %ring4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring4, align 4
  %in_rb = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 15
  %2 = ptrtoint ptr %in_rb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_rb, align 2, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cur_ctx_seqno = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 15
  %4 = ptrtoint ptr %cur_ctx_seqno to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cur_ctx_seqno, align 8
  %5 = ptrtoint ptr %ring4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring4, align 4
  %nr_cmds.i = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 18
  %7 = ptrtoint ptr %nr_cmds.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp75.not.i = icmp eq i32 %8, 0
  br i1 %cmp75.not.i, label %if.then.for.end41.i_crit_edge, label %for.body.lr.ph.i

if.then.for.end41.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end41.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %cmd.i = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 21
  %queue.i = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 11
  %next.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %6, i32 0, i32 6
  %end.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %6, i32 0, i32 4
  %start.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %6, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc39.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.076.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc40.i, %for.inc39.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd.i, align 8
  %arrayidx.i = getelementptr %struct.anon.94, ptr %10, i32 %i.076.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %12, label %for.body.i.for.inc39.i_crit_edge [
    i32 1, label %for.body.i.sw.bb3.i_crit_edge
    i32 3, label %sw.bb.i
  ]

for.body.i.sw.bb3.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

for.body.i.for.inc39.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc39.i

sw.bb.i:                                          ; preds = %for.body.i
  %14 = ptrtoint ptr %cur_ctx_seqno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_ctx_seqno, align 8
  %16 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queue.i, align 8
  %ctx.i = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx.i, align 4
  %seqno.i = getelementptr inbounds %struct.msm_file_private, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seqno.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %21)
  %cmp2.i = icmp eq i32 %15, %21
  br i1 %cmp2.i, label %sw.bb.i.for.inc39.i_crit_edge, label %sw.bb.i.sw.bb3.i_crit_edge

sw.bb.i.sw.bb3.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

sw.bb.i.for.inc39.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc39.i

sw.bb3.i:                                         ; preds = %sw.bb.i.sw.bb3.i_crit_edge, %for.body.i.sw.bb3.i_crit_edge
  %idx.i = getelementptr %struct.anon.94, ptr %10, i32 %i.076.i, i32 4
  %22 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx.i, align 4
  %24 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %23, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %size.i = getelementptr %struct.anon.94, ptr %10, i32 %i.076.i, i32 1
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i, align 4
  %call.i = tail call ptr @msm_gem_get_vaddr(ptr noundef %26) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %for.cond34.preheader.i, !prof !187

for.cond34.preheader.i:                           ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp3573.not.i = icmp eq i32 %28, 0
  br i1 %cmp3573.not.i, label %for.cond34.preheader.i.for.end.i_crit_edge, label %for.cond34.preheader.i.for.body36.i_crit_edge

for.cond34.preheader.i.for.body36.i_crit_edge:    ; preds = %for.cond34.preheader.i
  br label %for.body36.i

for.cond34.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond34.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

do.end.i:                                         ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 92, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

for.body36.i:                                     ; preds = %OUT_RING.exit.i.for.body36.i_crit_edge, %for.cond34.preheader.i.for.body36.i_crit_edge
  %i.174.i = phi i32 [ %inc.i, %OUT_RING.exit.i.for.body36.i_crit_edge ], [ 0, %for.cond34.preheader.i.for.body36.i_crit_edge ]
  tail call void @adreno_wait_ring(ptr noundef %6, i32 noundef 1) #9
  %arrayidx37.i = getelementptr i32, ptr %call.i, i32 %i.174.i
  %29 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx37.i, align 4
  %31 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %next.i.i, align 8
  %33 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i.i, align 8
  %cmp.i.i = icmp eq ptr %32, %34
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body36.i.OUT_RING.exit.i_crit_edge

for.body36.i.OUT_RING.exit.i_crit_edge:           ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit.i

if.then.i.i:                                      ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %start.i.i, align 4
  %37 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %next.i.i, align 8
  br label %OUT_RING.exit.i

OUT_RING.exit.i:                                  ; preds = %if.then.i.i, %for.body36.i.OUT_RING.exit.i_crit_edge
  %38 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %39, i32 1
  store ptr %incdec.ptr.i.i, ptr %next.i.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %30, ptr %39, align 4
  %inc.i = add nuw i32 %i.174.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %28
  br i1 %exitcond.not.i, label %OUT_RING.exit.i.for.end.i_crit_edge, label %OUT_RING.exit.i.for.body36.i_crit_edge

OUT_RING.exit.i.for.body36.i_crit_edge:           ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36.i

OUT_RING.exit.i.for.end.i_crit_edge:              ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %OUT_RING.exit.i.for.end.i_crit_edge, %for.cond34.preheader.i.for.end.i_crit_edge
  tail call void @msm_gem_put_vaddr(ptr noundef %26) #9
  br label %for.inc39.i

for.inc39.i:                                      ; preds = %for.end.i, %sw.bb.i.for.inc39.i_crit_edge, %for.body.i.for.inc39.i_crit_edge
  %i.2.i = phi i32 [ %i.076.i, %for.body.i.for.inc39.i_crit_edge ], [ %i.076.i, %sw.bb.i.for.inc39.i_crit_edge ], [ %28, %for.end.i ]
  %inc40.i = add i32 %i.2.i, 1
  %41 = ptrtoint ptr %nr_cmds.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_cmds.i, align 4
  %cmp.i = icmp ult i32 %inc40.i, %42
  br i1 %cmp.i, label %for.inc39.i.for.body.i_crit_edge, label %for.inc39.i.for.end41.i_crit_edge

for.inc39.i.for.end41.i_crit_edge:                ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end41.i

for.inc39.i.for.body.i_crit_edge:                 ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end41.i:                                      ; preds = %for.inc39.i.for.end41.i_crit_edge, %if.then.for.end41.i_crit_edge
  tail call void @a5xx_flush(ptr noundef %gpu, ptr noundef %6, i1 noundef zeroext true) #9
  tail call void @a5xx_preempt_trigger(ptr noundef %gpu) #9
  %call42.i = tail call zeroext i1 @a5xx_idle(ptr noundef %gpu, ptr noundef %6) #9
  %seqno43.i = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 7
  %43 = ptrtoint ptr %seqno43.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %seqno43.i, align 8
  %memptrs.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %6, i32 0, i32 13
  %45 = ptrtoint ptr %memptrs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %memptrs.i, align 8
  %fence.i = getelementptr inbounds %struct.msm_rbmemptrs, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %44, ptr %fence.i, align 4
  tail call void @msm_gpu_retire(ptr noundef %gpu) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 2) #9
  %next.i.i117 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %next.i.i117, align 8
  %end.i.i118 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %end.i.i118, align 8
  %cmp.i.i119 = icmp eq ptr %49, %51
  br i1 %cmp.i.i119, label %if.then.i.i121, label %if.end.OUT_PKT7.exit_crit_edge

if.end.OUT_PKT7.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit

if.then.i.i121:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i120 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %start.i.i120 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %start.i.i120, align 4
  %54 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %next.i.i117, align 8
  br label %OUT_PKT7.exit

OUT_PKT7.exit:                                    ; preds = %if.then.i.i121, %if.end.OUT_PKT7.exit_crit_edge
  %55 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i.i122 = getelementptr i32, ptr %56, i32 1
  store ptr %incdec.ptr.i.i122, ptr %next.i.i117, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1894318081, ptr %56, align 4
  %58 = load ptr, ptr %next.i.i117, align 8
  %59 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i.i118, align 8
  %cmp.i124 = icmp eq ptr %58, %60
  br i1 %cmp.i124, label %if.then.i, label %OUT_PKT7.exit.OUT_RING.exit_crit_edge

OUT_PKT7.exit.OUT_RING.exit_crit_edge:            ; preds = %OUT_PKT7.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit

if.then.i:                                        ; preds = %OUT_PKT7.exit
  call void @__sanitizer_cov_trace_pc() #11
  %start.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %start.i, align 4
  %63 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %next.i.i117, align 8
  br label %OUT_RING.exit

OUT_RING.exit:                                    ; preds = %if.then.i, %OUT_PKT7.exit.OUT_RING.exit_crit_edge
  %64 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i = getelementptr i32, ptr %65, i32 1
  store ptr %incdec.ptr.i, ptr %next.i.i117, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %65, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 2) #9
  %67 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %next.i.i117, align 8
  %69 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %end.i.i118, align 8
  %cmp.i.i127 = icmp eq ptr %68, %70
  br i1 %cmp.i.i127, label %if.then.i.i129, label %OUT_RING.exit.OUT_PKT7.exit132_crit_edge

OUT_RING.exit.OUT_PKT7.exit132_crit_edge:         ; preds = %OUT_RING.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit132

if.then.i.i129:                                   ; preds = %OUT_RING.exit
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i128 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %71 = ptrtoint ptr %start.i.i128 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %start.i.i128, align 4
  %73 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %next.i.i117, align 8
  br label %OUT_PKT7.exit132

OUT_PKT7.exit132:                                 ; preds = %if.then.i.i129, %OUT_RING.exit.OUT_PKT7.exit132_crit_edge
  %74 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i.i130 = getelementptr i32, ptr %75, i32 1
  store ptr %incdec.ptr.i.i130, ptr %next.i.i117, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1893662721, ptr %75, align 4
  %77 = load ptr, ptr %next.i.i117, align 8
  %78 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i.i118, align 8
  %cmp.i135 = icmp eq ptr %77, %79
  br i1 %cmp.i135, label %if.then.i137, label %OUT_PKT7.exit132.OUT_RING.exit139_crit_edge

OUT_PKT7.exit132.OUT_RING.exit139_crit_edge:      ; preds = %OUT_PKT7.exit132
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit139

if.then.i137:                                     ; preds = %OUT_PKT7.exit132
  call void @__sanitizer_cov_trace_pc() #11
  %start.i136 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %80 = ptrtoint ptr %start.i136 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %start.i136, align 4
  %82 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %next.i.i117, align 8
  br label %OUT_RING.exit139

OUT_RING.exit139:                                 ; preds = %if.then.i137, %OUT_PKT7.exit132.OUT_RING.exit139_crit_edge
  %83 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i138 = getelementptr i32, ptr %84, i32 1
  store ptr %incdec.ptr.i138, ptr %next.i.i117, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %84, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 3) #9
  %86 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %next.i.i117, align 8
  %88 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %end.i.i118, align 8
  %cmp.i.i142 = icmp eq ptr %87, %89
  br i1 %cmp.i.i142, label %if.then.i.i144, label %OUT_RING.exit139.OUT_PKT4.exit_crit_edge

OUT_RING.exit139.OUT_PKT4.exit_crit_edge:         ; preds = %OUT_RING.exit139
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT4.exit

if.then.i.i144:                                   ; preds = %OUT_RING.exit139
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i143 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %90 = ptrtoint ptr %start.i.i143 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %start.i.i143, align 4
  %92 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %next.i.i117, align 8
  br label %OUT_PKT4.exit

OUT_PKT4.exit:                                    ; preds = %if.then.i.i144, %OUT_RING.exit139.OUT_PKT4.exit_crit_edge
  %93 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i.i145 = getelementptr i32, ptr %94, i32 1
  store ptr %incdec.ptr.i.i145, ptr %next.i.i117, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1208499714, ptr %94, align 4
  %96 = ptrtoint ptr %ring4 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ring4, align 4
  %id = getelementptr inbounds %struct.msm_ringbuffer, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 14, i32 %99
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %101 to i32
  %102 = load ptr, ptr %next.i.i117, align 8
  %103 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %end.i.i118, align 8
  %cmp.i149 = icmp eq ptr %102, %104
  br i1 %cmp.i149, label %if.then.i151, label %OUT_PKT4.exit.OUT_RING.exit153_crit_edge

OUT_PKT4.exit.OUT_RING.exit153_crit_edge:         ; preds = %OUT_PKT4.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit153

if.then.i151:                                     ; preds = %OUT_PKT4.exit
  call void @__sanitizer_cov_trace_pc() #11
  %start.i150 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %105 = ptrtoint ptr %start.i150 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %start.i150, align 4
  %107 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %next.i.i117, align 8
  br label %OUT_RING.exit153

OUT_RING.exit153:                                 ; preds = %if.then.i151, %OUT_PKT4.exit.OUT_RING.exit153_crit_edge
  %108 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i152 = getelementptr i32, ptr %109, i32 1
  store ptr %incdec.ptr.i152, ptr %next.i.i117, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv, ptr %109, align 4
  %111 = ptrtoint ptr %ring4 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ring4, align 4
  %id8 = getelementptr inbounds %struct.msm_ringbuffer, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %id8, align 4
  %arrayidx9 = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 14, i32 %114
  %115 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx9, align 8
  %shr = lshr i64 %116, 32
  %conv11 = trunc i64 %shr to i32
  %117 = load ptr, ptr %next.i.i117, align 8
  %118 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %end.i.i118, align 8
  %cmp.i156 = icmp eq ptr %117, %119
  br i1 %cmp.i156, label %if.then.i158, label %OUT_RING.exit153.OUT_RING.exit160_crit_edge

OUT_RING.exit153.OUT_RING.exit160_crit_edge:      ; preds = %OUT_RING.exit153
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit160

if.then.i158:                                     ; preds = %OUT_RING.exit153
  call void @__sanitizer_cov_trace_pc() #11
  %start.i157 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %120 = ptrtoint ptr %start.i157 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %start.i157, align 4
  %122 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %next.i.i117, align 8
  br label %OUT_RING.exit160

OUT_RING.exit160:                                 ; preds = %if.then.i158, %OUT_RING.exit153.OUT_RING.exit160_crit_edge
  %123 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i159 = getelementptr i32, ptr %124, i32 1
  store ptr %incdec.ptr.i159, ptr %next.i.i117, align 8
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv11, ptr %124, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 2) #9
  %126 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %next.i.i117, align 8
  %128 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %end.i.i118, align 8
  %cmp.i.i163 = icmp eq ptr %127, %129
  br i1 %cmp.i.i163, label %if.then.i.i165, label %OUT_RING.exit160.OUT_PKT7.exit168_crit_edge

OUT_RING.exit160.OUT_PKT7.exit168_crit_edge:      ; preds = %OUT_RING.exit160
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit168

if.then.i.i165:                                   ; preds = %OUT_RING.exit160
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i164 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %130 = ptrtoint ptr %start.i.i164 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %start.i.i164, align 4
  %132 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %131, ptr %next.i.i117, align 8
  br label %OUT_PKT7.exit168

OUT_PKT7.exit168:                                 ; preds = %if.then.i.i165, %OUT_RING.exit160.OUT_PKT7.exit168_crit_edge
  %133 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i.i166 = getelementptr i32, ptr %134, i32 1
  store ptr %incdec.ptr.i.i166, ptr %next.i.i117, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 1893662721, ptr %134, align 4
  %136 = load ptr, ptr %next.i.i117, align 8
  %137 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %end.i.i118, align 8
  %cmp.i171 = icmp eq ptr %136, %138
  br i1 %cmp.i171, label %if.then.i173, label %OUT_PKT7.exit168.OUT_RING.exit175_crit_edge

OUT_PKT7.exit168.OUT_RING.exit175_crit_edge:      ; preds = %OUT_PKT7.exit168
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit175

if.then.i173:                                     ; preds = %OUT_PKT7.exit168
  call void @__sanitizer_cov_trace_pc() #11
  %start.i172 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %139 = ptrtoint ptr %start.i172 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %start.i172, align 4
  %141 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %140, ptr %next.i.i117, align 8
  br label %OUT_RING.exit175

OUT_RING.exit175:                                 ; preds = %if.then.i173, %OUT_PKT7.exit168.OUT_RING.exit175_crit_edge
  %142 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i174 = getelementptr i32, ptr %143, i32 1
  store ptr %incdec.ptr.i174, ptr %next.i.i117, align 8
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %143, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 2) #9
  %145 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %next.i.i117, align 8
  %147 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %end.i.i118, align 8
  %cmp.i.i178 = icmp eq ptr %146, %148
  br i1 %cmp.i.i178, label %if.then.i.i180, label %OUT_RING.exit175.OUT_PKT7.exit183_crit_edge

OUT_RING.exit175.OUT_PKT7.exit183_crit_edge:      ; preds = %OUT_RING.exit175
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit183

if.then.i.i180:                                   ; preds = %OUT_RING.exit175
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i179 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %149 = ptrtoint ptr %start.i.i179 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %start.i.i179, align 4
  %151 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %150, ptr %next.i.i117, align 8
  br label %OUT_PKT7.exit183

OUT_PKT7.exit183:                                 ; preds = %if.then.i.i180, %OUT_RING.exit175.OUT_PKT7.exit183_crit_edge
  %152 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i.i181 = getelementptr i32, ptr %153, i32 1
  store ptr %incdec.ptr.i.i181, ptr %next.i.i117, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1894318081, ptr %153, align 4
  %155 = load ptr, ptr %next.i.i117, align 8
  %156 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %end.i.i118, align 8
  %cmp.i186 = icmp eq ptr %155, %157
  br i1 %cmp.i186, label %if.then.i188, label %OUT_PKT7.exit183.OUT_RING.exit190_crit_edge

OUT_PKT7.exit183.OUT_RING.exit190_crit_edge:      ; preds = %OUT_PKT7.exit183
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit190

if.then.i188:                                     ; preds = %OUT_PKT7.exit183
  call void @__sanitizer_cov_trace_pc() #11
  %start.i187 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %158 = ptrtoint ptr %start.i187 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %start.i187, align 4
  %160 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %159, ptr %next.i.i117, align 8
  br label %OUT_RING.exit190

OUT_RING.exit190:                                 ; preds = %if.then.i188, %OUT_PKT7.exit183.OUT_RING.exit190_crit_edge
  %161 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i189 = getelementptr i32, ptr %162, i32 1
  store ptr %incdec.ptr.i189, ptr %next.i.i117, align 8
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 2, ptr %162, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 2) #9
  %164 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %next.i.i117, align 8
  %166 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %end.i.i118, align 8
  %cmp.i.i193 = icmp eq ptr %165, %167
  br i1 %cmp.i.i193, label %if.then.i.i195, label %OUT_RING.exit190.OUT_PKT7.exit198_crit_edge

OUT_RING.exit190.OUT_PKT7.exit198_crit_edge:      ; preds = %OUT_RING.exit190
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit198

if.then.i.i195:                                   ; preds = %OUT_RING.exit190
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i194 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %168 = ptrtoint ptr %start.i.i194 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %start.i.i194, align 4
  %170 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %169, ptr %next.i.i117, align 8
  br label %OUT_PKT7.exit198

OUT_PKT7.exit198:                                 ; preds = %if.then.i.i195, %OUT_RING.exit190.OUT_PKT7.exit198_crit_edge
  %171 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i.i196 = getelementptr i32, ptr %172, i32 1
  store ptr %incdec.ptr.i.i196, ptr %next.i.i117, align 8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 1880883201, ptr %172, align 4
  %174 = load ptr, ptr %next.i.i117, align 8
  %175 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %end.i.i118, align 8
  %cmp.i201 = icmp eq ptr %174, %176
  br i1 %cmp.i201, label %if.then.i203, label %OUT_PKT7.exit198.OUT_RING.exit205_crit_edge

OUT_PKT7.exit198.OUT_RING.exit205_crit_edge:      ; preds = %OUT_PKT7.exit198
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit205

if.then.i203:                                     ; preds = %OUT_PKT7.exit198
  call void @__sanitizer_cov_trace_pc() #11
  %start.i202 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %177 = ptrtoint ptr %start.i202 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %start.i202, align 4
  %179 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %178, ptr %next.i.i117, align 8
  br label %OUT_RING.exit205

OUT_RING.exit205:                                 ; preds = %if.then.i203, %OUT_PKT7.exit198.OUT_RING.exit205_crit_edge
  %180 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i204 = getelementptr i32, ptr %181, i32 1
  store ptr %incdec.ptr.i204, ptr %next.i.i117, align 8
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 2, ptr %181, align 4
  %nr_cmds = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 18
  %183 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %nr_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp389.not = icmp eq i32 %184, 0
  br i1 %cmp389.not, label %OUT_RING.exit205.for.end_crit_edge, label %for.body.lr.ph

OUT_RING.exit205.for.end_crit_edge:               ; preds = %OUT_RING.exit205
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %OUT_RING.exit205
  %cmd = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 21
  %cur_ctx_seqno14 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 15
  %queue = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 11
  %start.i.i209 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %has_whereami.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 20
  %shadow_iova.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 18
  %id.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ibs.0392 = phi i32 [ 0, %for.body.lr.ph ], [ %ibs.1, %for.inc.for.body_crit_edge ]
  %i.0390 = phi i32 [ 0, %for.body.lr.ph ], [ %inc36, %for.inc.for.body_crit_edge ]
  %185 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cmd, align 8
  %arrayidx13 = getelementptr %struct.anon.94, ptr %186, i32 %i.0390
  %187 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx13, align 8
  %189 = zext i32 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %188, label %for.body.sw.epilog_crit_edge [
    i32 1, label %for.body.sw.bb19_crit_edge
    i32 3, label %sw.bb
  ]

for.body.sw.bb19_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb19

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %190 = ptrtoint ptr %cur_ctx_seqno14 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %cur_ctx_seqno14, align 8
  %192 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %queue, align 8
  %ctx = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %193, i32 0, i32 5
  %194 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ctx, align 4
  %seqno = getelementptr inbounds %struct.msm_file_private, ptr %195, i32 0, i32 5
  %196 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %seqno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %191, i32 %197)
  %cmp15 = icmp eq i32 %191, %197
  br i1 %cmp15, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.bb19_crit_edge

sw.bb.sw.bb19_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb19

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb19:                                          ; preds = %sw.bb.sw.bb19_crit_edge, %for.body.sw.bb19_crit_edge
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 4) #9
  %198 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %next.i.i117, align 8
  %200 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %end.i.i118, align 8
  %cmp.i.i208 = icmp eq ptr %199, %201
  br i1 %cmp.i.i208, label %if.then.i.i210, label %sw.bb19.OUT_PKT7.exit213_crit_edge

sw.bb19.OUT_PKT7.exit213_crit_edge:               ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit213

if.then.i.i210:                                   ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %202 = ptrtoint ptr %start.i.i209 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %start.i.i209, align 4
  %204 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %203, ptr %next.i.i117, align 8
  br label %OUT_PKT7.exit213

OUT_PKT7.exit213:                                 ; preds = %if.then.i.i210, %sw.bb19.OUT_PKT7.exit213_crit_edge
  %205 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i.i211 = getelementptr i32, ptr %206, i32 1
  store ptr %incdec.ptr.i.i211, ptr %next.i.i117, align 8
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 1891598339, ptr %206, align 4
  %208 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %cmd, align 8
  %iova = getelementptr %struct.anon.94, ptr %209, i32 %i.0390, i32 2
  %210 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %iova, align 8
  %conv23 = trunc i64 %211 to i32
  %212 = load ptr, ptr %next.i.i117, align 8
  %213 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %end.i.i118, align 8
  %cmp.i216 = icmp eq ptr %212, %214
  br i1 %cmp.i216, label %if.then.i218, label %OUT_PKT7.exit213.OUT_RING.exit220_crit_edge

OUT_PKT7.exit213.OUT_RING.exit220_crit_edge:      ; preds = %OUT_PKT7.exit213
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit220

if.then.i218:                                     ; preds = %OUT_PKT7.exit213
  call void @__sanitizer_cov_trace_pc() #11
  %215 = ptrtoint ptr %start.i.i209 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %start.i.i209, align 4
  %217 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %216, ptr %next.i.i117, align 8
  br label %OUT_RING.exit220

OUT_RING.exit220:                                 ; preds = %if.then.i218, %OUT_PKT7.exit213.OUT_RING.exit220_crit_edge
  %218 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i219 = getelementptr i32, ptr %219, i32 1
  store ptr %incdec.ptr.i219, ptr %next.i.i117, align 8
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %conv23, ptr %219, align 4
  %221 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %cmd, align 8
  %iova26 = getelementptr %struct.anon.94, ptr %222, i32 %i.0390, i32 2
  %223 = ptrtoint ptr %iova26 to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %iova26, align 8
  %shr27 = lshr i64 %224, 32
  %conv29 = trunc i64 %shr27 to i32
  %225 = load ptr, ptr %next.i.i117, align 8
  %226 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %end.i.i118, align 8
  %cmp.i223 = icmp eq ptr %225, %227
  br i1 %cmp.i223, label %if.then.i225, label %OUT_RING.exit220.OUT_RING.exit227_crit_edge

OUT_RING.exit220.OUT_RING.exit227_crit_edge:      ; preds = %OUT_RING.exit220
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit227

if.then.i225:                                     ; preds = %OUT_RING.exit220
  call void @__sanitizer_cov_trace_pc() #11
  %228 = ptrtoint ptr %start.i.i209 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %start.i.i209, align 4
  %230 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %229, ptr %next.i.i117, align 8
  br label %OUT_RING.exit227

OUT_RING.exit227:                                 ; preds = %if.then.i225, %OUT_RING.exit220.OUT_RING.exit227_crit_edge
  %231 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i226 = getelementptr i32, ptr %232, i32 1
  store ptr %incdec.ptr.i226, ptr %next.i.i117, align 8
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %conv29, ptr %232, align 4
  %234 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %cmd, align 8
  %size = getelementptr %struct.anon.94, ptr %235, i32 %i.0390, i32 1
  %236 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %size, align 4
  %238 = load ptr, ptr %next.i.i117, align 8
  %239 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %end.i.i118, align 8
  %cmp.i230 = icmp eq ptr %238, %240
  br i1 %cmp.i230, label %if.then.i232, label %OUT_RING.exit227.OUT_RING.exit234_crit_edge

OUT_RING.exit227.OUT_RING.exit234_crit_edge:      ; preds = %OUT_RING.exit227
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit234

if.then.i232:                                     ; preds = %OUT_RING.exit227
  call void @__sanitizer_cov_trace_pc() #11
  %241 = ptrtoint ptr %start.i.i209 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %start.i.i209, align 4
  %243 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %242, ptr %next.i.i117, align 8
  br label %OUT_RING.exit234

OUT_RING.exit234:                                 ; preds = %if.then.i232, %OUT_RING.exit227.OUT_RING.exit234_crit_edge
  %244 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i233 = getelementptr i32, ptr %245, i32 1
  store ptr %incdec.ptr.i233, ptr %next.i.i117, align 8
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %237, ptr %245, align 4
  %inc = add i32 %ibs.0392, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %OUT_RING.exit234, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %ibs.1 = phi i32 [ %ibs.0392, %for.body.sw.epilog_crit_edge ], [ %ibs.0392, %sw.bb.sw.epilog_crit_edge ], [ %inc, %OUT_RING.exit234 ]
  %rem = and i32 %ibs.1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp32 = icmp eq i32 %rem, 0
  br i1 %cmp32, label %if.then34, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then34:                                        ; preds = %sw.epilog
  %247 = ptrtoint ptr %has_whereami.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %has_whereami.i, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool.not.i235 = icmp eq i8 %248, 0
  br i1 %tobool.not.i235, label %if.then34.for.inc_crit_edge, label %if.then.i236

if.then34.for.inc_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then.i236:                                     ; preds = %if.then34
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 3) #9
  %249 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %next.i.i117, align 8
  %251 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %end.i.i118, align 8
  %cmp.i.i.i = icmp eq ptr %250, %252
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.i236.OUT_PKT7.exit.i_crit_edge

if.then.i236.OUT_PKT7.exit.i_crit_edge:           ; preds = %if.then.i236
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i236
  call void @__sanitizer_cov_trace_pc() #11
  %253 = ptrtoint ptr %start.i.i209 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %start.i.i209, align 4
  %255 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %254, ptr %next.i.i117, align 8
  br label %OUT_PKT7.exit.i

OUT_PKT7.exit.i:                                  ; preds = %if.then.i.i.i, %if.then.i236.OUT_PKT7.exit.i_crit_edge
  %256 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %257, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %next.i.i117, align 8
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 1885470722, ptr %257, align 4
  %259 = ptrtoint ptr %shadow_iova.i to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %shadow_iova.i, align 8
  %261 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %262, 2
  %263 = trunc i64 %260 to i32
  %conv4.i = add i32 %mul.i, %263
  %264 = load ptr, ptr %next.i.i117, align 8
  %265 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %end.i.i118, align 8
  %cmp.i.i237 = icmp eq ptr %264, %266
  br i1 %cmp.i.i237, label %if.then.i.i239, label %OUT_PKT7.exit.i.OUT_RING.exit.i241_crit_edge

OUT_PKT7.exit.i.OUT_RING.exit.i241_crit_edge:     ; preds = %OUT_PKT7.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit.i241

if.then.i.i239:                                   ; preds = %OUT_PKT7.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %267 = ptrtoint ptr %start.i.i209 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %start.i.i209, align 4
  %269 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %268, ptr %next.i.i117, align 8
  br label %OUT_RING.exit.i241

OUT_RING.exit.i241:                               ; preds = %if.then.i.i239, %OUT_PKT7.exit.i.OUT_RING.exit.i241_crit_edge
  %270 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i.i240 = getelementptr i32, ptr %271, i32 1
  store ptr %incdec.ptr.i.i240, ptr %next.i.i117, align 8
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %conv4.i, ptr %271, align 4
  %273 = ptrtoint ptr %shadow_iova.i to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %shadow_iova.i, align 8
  %275 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %id.i, align 4
  %mul7.i = shl i32 %276, 2
  %conv8.i = zext i32 %mul7.i to i64
  %add9.i = add i64 %274, %conv8.i
  %shr.i = lshr i64 %add9.i, 32
  %conv11.i = trunc i64 %shr.i to i32
  %277 = load ptr, ptr %next.i.i117, align 8
  %278 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %end.i.i118, align 8
  %cmp.i20.i = icmp eq ptr %277, %279
  br i1 %cmp.i20.i, label %if.then.i22.i, label %OUT_RING.exit.i241.OUT_RING.exit24.i_crit_edge

OUT_RING.exit.i241.OUT_RING.exit24.i_crit_edge:   ; preds = %OUT_RING.exit.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit24.i

if.then.i22.i:                                    ; preds = %OUT_RING.exit.i241
  call void @__sanitizer_cov_trace_pc() #11
  %280 = ptrtoint ptr %start.i.i209 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %start.i.i209, align 4
  %282 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %281, ptr %next.i.i117, align 8
  br label %OUT_RING.exit24.i

OUT_RING.exit24.i:                                ; preds = %if.then.i22.i, %OUT_RING.exit.i241.OUT_RING.exit24.i_crit_edge
  %283 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i23.i = getelementptr i32, ptr %284, i32 1
  store ptr %incdec.ptr.i23.i, ptr %next.i.i117, align 8
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %conv11.i, ptr %284, align 4
  br label %for.inc

for.inc:                                          ; preds = %OUT_RING.exit24.i, %if.then34.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge
  %inc36 = add nuw i32 %i.0390, 1
  %286 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %nr_cmds, align 4
  %cmp = icmp ult i32 %inc36, %287
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %OUT_RING.exit205.for.end_crit_edge
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 6) #9
  %288 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %next.i.i117, align 8
  %290 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %end.i.i118, align 8
  %cmp.i.i244 = icmp eq ptr %289, %291
  br i1 %cmp.i.i244, label %if.then.i.i246, label %for.end.OUT_PKT7.exit249_crit_edge

for.end.OUT_PKT7.exit249_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit249

if.then.i.i246:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i245 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %292 = ptrtoint ptr %start.i.i245 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %start.i.i245, align 4
  %294 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %293, ptr %next.i.i117, align 8
  br label %OUT_PKT7.exit249

OUT_PKT7.exit249:                                 ; preds = %if.then.i.i246, %for.end.OUT_PKT7.exit249_crit_edge
  %295 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i.i247 = getelementptr i32, ptr %296, i32 1
  store ptr %incdec.ptr.i.i247, ptr %next.i.i117, align 8
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 1894547461, ptr %296, align 4
  %298 = load ptr, ptr %next.i.i117, align 8
  %299 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %end.i.i118, align 8
  %cmp.i252 = icmp eq ptr %298, %300
  br i1 %cmp.i252, label %if.then.i254, label %OUT_PKT7.exit249.OUT_RING.exit256_crit_edge

OUT_PKT7.exit249.OUT_RING.exit256_crit_edge:      ; preds = %OUT_PKT7.exit249
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit256

if.then.i254:                                     ; preds = %OUT_PKT7.exit249
  call void @__sanitizer_cov_trace_pc() #11
  %start.i253 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %301 = ptrtoint ptr %start.i253 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %start.i253, align 4
  %303 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %302, ptr %next.i.i117, align 8
  br label %OUT_RING.exit256

OUT_RING.exit256:                                 ; preds = %if.then.i254, %OUT_PKT7.exit249.OUT_RING.exit256_crit_edge
  %304 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i255 = getelementptr i32, ptr %305, i32 1
  store ptr %incdec.ptr.i255, ptr %next.i.i117, align 8
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 0, ptr %305, align 4
  %307 = load ptr, ptr %next.i.i117, align 8
  %308 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %end.i.i118, align 8
  %cmp.i259 = icmp eq ptr %307, %309
  br i1 %cmp.i259, label %if.then.i261, label %OUT_RING.exit256.OUT_RING.exit263_crit_edge

OUT_RING.exit256.OUT_RING.exit263_crit_edge:      ; preds = %OUT_RING.exit256
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit263

if.then.i261:                                     ; preds = %OUT_RING.exit256
  call void @__sanitizer_cov_trace_pc() #11
  %start.i260 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %310 = ptrtoint ptr %start.i260 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %start.i260, align 4
  %312 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %311, ptr %next.i.i117, align 8
  br label %OUT_RING.exit263

OUT_RING.exit263:                                 ; preds = %if.then.i261, %OUT_RING.exit256.OUT_RING.exit263_crit_edge
  %313 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i262 = getelementptr i32, ptr %314, i32 1
  store ptr %incdec.ptr.i262, ptr %next.i.i117, align 8
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 0, ptr %314, align 4
  %316 = load ptr, ptr %next.i.i117, align 8
  %317 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %end.i.i118, align 8
  %cmp.i266 = icmp eq ptr %316, %318
  br i1 %cmp.i266, label %if.then.i268, label %OUT_RING.exit263.OUT_RING.exit270_crit_edge

OUT_RING.exit263.OUT_RING.exit270_crit_edge:      ; preds = %OUT_RING.exit263
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit270

if.then.i268:                                     ; preds = %OUT_RING.exit263
  call void @__sanitizer_cov_trace_pc() #11
  %start.i267 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %319 = ptrtoint ptr %start.i267 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %start.i267, align 4
  %321 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %320, ptr %next.i.i117, align 8
  br label %OUT_RING.exit270

OUT_RING.exit270:                                 ; preds = %if.then.i268, %OUT_RING.exit263.OUT_RING.exit270_crit_edge
  %322 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i269 = getelementptr i32, ptr %323, i32 1
  store ptr %incdec.ptr.i269, ptr %next.i.i117, align 8
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 0, ptr %323, align 4
  %325 = load ptr, ptr %next.i.i117, align 8
  %326 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %end.i.i118, align 8
  %cmp.i273 = icmp eq ptr %325, %327
  br i1 %cmp.i273, label %if.then.i275, label %OUT_RING.exit270.OUT_RING.exit277_crit_edge

OUT_RING.exit270.OUT_RING.exit277_crit_edge:      ; preds = %OUT_RING.exit270
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit277

if.then.i275:                                     ; preds = %OUT_RING.exit270
  call void @__sanitizer_cov_trace_pc() #11
  %start.i274 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %328 = ptrtoint ptr %start.i274 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %start.i274, align 4
  %330 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr %329, ptr %next.i.i117, align 8
  br label %OUT_RING.exit277

OUT_RING.exit277:                                 ; preds = %if.then.i275, %OUT_RING.exit270.OUT_RING.exit277_crit_edge
  %331 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i276 = getelementptr i32, ptr %332, i32 1
  store ptr %incdec.ptr.i276, ptr %next.i.i117, align 8
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 0, ptr %332, align 4
  %334 = load ptr, ptr %next.i.i117, align 8
  %335 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %end.i.i118, align 8
  %cmp.i280 = icmp eq ptr %334, %336
  br i1 %cmp.i280, label %if.then.i282, label %OUT_RING.exit277.OUT_RING.exit284_crit_edge

OUT_RING.exit277.OUT_RING.exit284_crit_edge:      ; preds = %OUT_RING.exit277
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit284

if.then.i282:                                     ; preds = %OUT_RING.exit277
  call void @__sanitizer_cov_trace_pc() #11
  %start.i281 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %337 = ptrtoint ptr %start.i281 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %start.i281, align 4
  %339 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %338, ptr %next.i.i117, align 8
  br label %OUT_RING.exit284

OUT_RING.exit284:                                 ; preds = %if.then.i282, %OUT_RING.exit277.OUT_RING.exit284_crit_edge
  %340 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i283 = getelementptr i32, ptr %341, i32 1
  store ptr %incdec.ptr.i283, ptr %next.i.i117, align 8
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 0, ptr %341, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 2) #9
  %343 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %next.i.i117, align 8
  %345 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %end.i.i118, align 8
  %cmp.i.i287 = icmp eq ptr %344, %346
  br i1 %cmp.i.i287, label %if.then.i.i289, label %OUT_RING.exit284.OUT_PKT7.exit292_crit_edge

OUT_RING.exit284.OUT_PKT7.exit292_crit_edge:      ; preds = %OUT_RING.exit284
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit292

if.then.i.i289:                                   ; preds = %OUT_RING.exit284
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i288 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %347 = ptrtoint ptr %start.i.i288 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %start.i.i288, align 4
  %349 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %348, ptr %next.i.i117, align 8
  br label %OUT_PKT7.exit292

OUT_PKT7.exit292:                                 ; preds = %if.then.i.i289, %OUT_RING.exit284.OUT_PKT7.exit292_crit_edge
  %350 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i.i290 = getelementptr i32, ptr %351, i32 1
  store ptr %incdec.ptr.i.i290, ptr %next.i.i117, align 8
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 1880883201, ptr %351, align 4
  %353 = load ptr, ptr %next.i.i117, align 8
  %354 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %end.i.i118, align 8
  %cmp.i295 = icmp eq ptr %353, %355
  br i1 %cmp.i295, label %if.then.i297, label %OUT_PKT7.exit292.OUT_RING.exit299_crit_edge

OUT_PKT7.exit292.OUT_RING.exit299_crit_edge:      ; preds = %OUT_PKT7.exit292
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit299

if.then.i297:                                     ; preds = %OUT_PKT7.exit292
  call void @__sanitizer_cov_trace_pc() #11
  %start.i296 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %356 = ptrtoint ptr %start.i296 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %start.i296, align 4
  %358 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr %357, ptr %next.i.i117, align 8
  br label %OUT_RING.exit299

OUT_RING.exit299:                                 ; preds = %if.then.i297, %OUT_PKT7.exit292.OUT_RING.exit299_crit_edge
  %359 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i298 = getelementptr i32, ptr %360, i32 1
  store ptr %incdec.ptr.i298, ptr %next.i.i117, align 8
  %361 = ptrtoint ptr %360 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 1, ptr %360, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 2) #9
  %362 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %next.i.i117, align 8
  %364 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %end.i.i118, align 8
  %cmp.i.i302 = icmp eq ptr %363, %365
  br i1 %cmp.i.i302, label %if.then.i.i304, label %OUT_RING.exit299.OUT_PKT4.exit307_crit_edge

OUT_RING.exit299.OUT_PKT4.exit307_crit_edge:      ; preds = %OUT_RING.exit299
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT4.exit307

if.then.i.i304:                                   ; preds = %OUT_RING.exit299
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i303 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %366 = ptrtoint ptr %start.i.i303 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %start.i.i303, align 4
  %368 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %367, ptr %next.i.i117, align 8
  br label %OUT_PKT4.exit307

OUT_PKT4.exit307:                                 ; preds = %if.then.i.i304, %OUT_RING.exit299.OUT_PKT4.exit307_crit_edge
  %369 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i.i305 = getelementptr i32, ptr %370, i32 1
  store ptr %incdec.ptr.i.i305, ptr %next.i.i117, align 8
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 1208711681, ptr %370, align 4
  %seqno38 = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 7
  %372 = ptrtoint ptr %seqno38 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %seqno38, align 8
  %374 = load ptr, ptr %next.i.i117, align 8
  %375 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %end.i.i118, align 8
  %cmp.i310 = icmp eq ptr %374, %376
  br i1 %cmp.i310, label %if.then.i312, label %OUT_PKT4.exit307.OUT_RING.exit314_crit_edge

OUT_PKT4.exit307.OUT_RING.exit314_crit_edge:      ; preds = %OUT_PKT4.exit307
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit314

if.then.i312:                                     ; preds = %OUT_PKT4.exit307
  call void @__sanitizer_cov_trace_pc() #11
  %start.i311 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %377 = ptrtoint ptr %start.i311 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %start.i311, align 4
  %379 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %378, ptr %next.i.i117, align 8
  br label %OUT_RING.exit314

OUT_RING.exit314:                                 ; preds = %if.then.i312, %OUT_PKT4.exit307.OUT_RING.exit314_crit_edge
  %380 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i313 = getelementptr i32, ptr %381, i32 1
  store ptr %incdec.ptr.i313, ptr %next.i.i117, align 8
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %373, ptr %381, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 5) #9
  %383 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %next.i.i117, align 8
  %385 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %end.i.i118, align 8
  %cmp.i.i317 = icmp eq ptr %384, %386
  br i1 %cmp.i.i317, label %if.then.i.i319, label %OUT_RING.exit314.OUT_PKT7.exit322_crit_edge

OUT_RING.exit314.OUT_PKT7.exit322_crit_edge:      ; preds = %OUT_RING.exit314
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit322

if.then.i.i319:                                   ; preds = %OUT_RING.exit314
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i318 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %387 = ptrtoint ptr %start.i.i318 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %start.i.i318, align 4
  %389 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr %388, ptr %next.i.i117, align 8
  br label %OUT_PKT7.exit322

OUT_PKT7.exit322:                                 ; preds = %if.then.i.i319, %OUT_RING.exit314.OUT_PKT7.exit322_crit_edge
  %390 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i.i320 = getelementptr i32, ptr %391, i32 1
  store ptr %incdec.ptr.i.i320, ptr %next.i.i117, align 8
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 1883635716, ptr %391, align 4
  %393 = load ptr, ptr %next.i.i117, align 8
  %394 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %end.i.i118, align 8
  %cmp.i325 = icmp eq ptr %393, %395
  br i1 %cmp.i325, label %if.then.i327, label %OUT_PKT7.exit322.OUT_RING.exit329_crit_edge

OUT_PKT7.exit322.OUT_RING.exit329_crit_edge:      ; preds = %OUT_PKT7.exit322
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit329

if.then.i327:                                     ; preds = %OUT_PKT7.exit322
  call void @__sanitizer_cov_trace_pc() #11
  %start.i326 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %396 = ptrtoint ptr %start.i326 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %start.i326, align 4
  %398 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr %397, ptr %next.i.i117, align 8
  br label %OUT_RING.exit329

OUT_RING.exit329:                                 ; preds = %if.then.i327, %OUT_PKT7.exit322.OUT_RING.exit329_crit_edge
  %399 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i328 = getelementptr i32, ptr %400, i32 1
  store ptr %incdec.ptr.i328, ptr %next.i.i117, align 8
  %401 = ptrtoint ptr %400 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 -2147483644, ptr %400, align 4
  %memptrs_iova = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 14
  %402 = ptrtoint ptr %memptrs_iova to i32
  call void @__asan_load8_noabort(i32 %402)
  %403 = load i64, ptr %memptrs_iova, align 8
  %404 = trunc i64 %403 to i32
  %conv41 = add i32 %404, 4
  %405 = load ptr, ptr %next.i.i117, align 8
  %406 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %end.i.i118, align 8
  %cmp.i332 = icmp eq ptr %405, %407
  br i1 %cmp.i332, label %if.then.i334, label %OUT_RING.exit329.OUT_RING.exit336_crit_edge

OUT_RING.exit329.OUT_RING.exit336_crit_edge:      ; preds = %OUT_RING.exit329
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit336

if.then.i334:                                     ; preds = %OUT_RING.exit329
  call void @__sanitizer_cov_trace_pc() #11
  %start.i333 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %408 = ptrtoint ptr %start.i333 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %start.i333, align 4
  %410 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %410)
  store ptr %409, ptr %next.i.i117, align 8
  br label %OUT_RING.exit336

OUT_RING.exit336:                                 ; preds = %if.then.i334, %OUT_RING.exit329.OUT_RING.exit336_crit_edge
  %411 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i335 = getelementptr i32, ptr %412, i32 1
  store ptr %incdec.ptr.i335, ptr %next.i.i117, align 8
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %conv41, ptr %412, align 4
  %414 = ptrtoint ptr %memptrs_iova to i32
  call void @__asan_load8_noabort(i32 %414)
  %415 = load i64, ptr %memptrs_iova, align 8
  %add43 = add i64 %415, 4
  %shr44 = lshr i64 %add43, 32
  %conv46 = trunc i64 %shr44 to i32
  %416 = load ptr, ptr %next.i.i117, align 8
  %417 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %end.i.i118, align 8
  %cmp.i339 = icmp eq ptr %416, %418
  br i1 %cmp.i339, label %if.then.i341, label %OUT_RING.exit336.OUT_RING.exit343_crit_edge

OUT_RING.exit336.OUT_RING.exit343_crit_edge:      ; preds = %OUT_RING.exit336
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit343

if.then.i341:                                     ; preds = %OUT_RING.exit336
  call void @__sanitizer_cov_trace_pc() #11
  %start.i340 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %419 = ptrtoint ptr %start.i340 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %start.i340, align 4
  %421 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr %420, ptr %next.i.i117, align 8
  br label %OUT_RING.exit343

OUT_RING.exit343:                                 ; preds = %if.then.i341, %OUT_RING.exit336.OUT_RING.exit343_crit_edge
  %422 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i342 = getelementptr i32, ptr %423, i32 1
  store ptr %incdec.ptr.i342, ptr %next.i.i117, align 8
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %conv46, ptr %423, align 4
  %425 = ptrtoint ptr %seqno38 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %seqno38, align 8
  %427 = load ptr, ptr %next.i.i117, align 8
  %428 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %end.i.i118, align 8
  %cmp.i346 = icmp eq ptr %427, %429
  br i1 %cmp.i346, label %if.then.i348, label %OUT_RING.exit343.OUT_RING.exit350_crit_edge

OUT_RING.exit343.OUT_RING.exit350_crit_edge:      ; preds = %OUT_RING.exit343
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit350

if.then.i348:                                     ; preds = %OUT_RING.exit343
  call void @__sanitizer_cov_trace_pc() #11
  %start.i347 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %430 = ptrtoint ptr %start.i347 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %start.i347, align 4
  %432 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %432)
  store ptr %431, ptr %next.i.i117, align 8
  br label %OUT_RING.exit350

OUT_RING.exit350:                                 ; preds = %if.then.i348, %OUT_RING.exit343.OUT_RING.exit350_crit_edge
  %433 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i349 = getelementptr i32, ptr %434, i32 1
  store ptr %incdec.ptr.i349, ptr %next.i.i117, align 8
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 %426, ptr %434, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 5) #9
  %436 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %next.i.i117, align 8
  %438 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %end.i.i118, align 8
  %cmp.i.i353 = icmp eq ptr %437, %439
  br i1 %cmp.i.i353, label %if.then.i.i355, label %OUT_RING.exit350.OUT_PKT7.exit358_crit_edge

OUT_RING.exit350.OUT_PKT7.exit358_crit_edge:      ; preds = %OUT_RING.exit350
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit358

if.then.i.i355:                                   ; preds = %OUT_RING.exit350
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i354 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %440 = ptrtoint ptr %start.i.i354 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %start.i.i354, align 4
  %442 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr %441, ptr %next.i.i117, align 8
  br label %OUT_PKT7.exit358

OUT_PKT7.exit358:                                 ; preds = %if.then.i.i355, %OUT_RING.exit350.OUT_PKT7.exit358_crit_edge
  %443 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i.i356 = getelementptr i32, ptr %444, i32 1
  store ptr %incdec.ptr.i.i356, ptr %next.i.i117, align 8
  %445 = ptrtoint ptr %444 to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 1886060548, ptr %444, align 4
  %446 = load ptr, ptr %next.i.i117, align 8
  %447 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %end.i.i118, align 8
  %cmp.i361 = icmp eq ptr %446, %448
  br i1 %cmp.i361, label %if.then.i363, label %OUT_PKT7.exit358.OUT_RING.exit365_crit_edge

OUT_PKT7.exit358.OUT_RING.exit365_crit_edge:      ; preds = %OUT_PKT7.exit358
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit365

if.then.i363:                                     ; preds = %OUT_PKT7.exit358
  call void @__sanitizer_cov_trace_pc() #11
  %start.i362 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %449 = ptrtoint ptr %start.i362 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %start.i362, align 4
  %451 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %450, ptr %next.i.i117, align 8
  br label %OUT_RING.exit365

OUT_RING.exit365:                                 ; preds = %if.then.i363, %OUT_PKT7.exit358.OUT_RING.exit365_crit_edge
  %452 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i364 = getelementptr i32, ptr %453, i32 1
  store ptr %incdec.ptr.i364, ptr %next.i.i117, align 8
  %454 = ptrtoint ptr %453 to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 0, ptr %453, align 4
  %455 = load ptr, ptr %next.i.i117, align 8
  %456 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %end.i.i118, align 8
  %cmp.i368 = icmp eq ptr %455, %457
  br i1 %cmp.i368, label %if.then.i370, label %OUT_RING.exit365.OUT_RING.exit372_crit_edge

OUT_RING.exit365.OUT_RING.exit372_crit_edge:      ; preds = %OUT_RING.exit365
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit372

if.then.i370:                                     ; preds = %OUT_RING.exit365
  call void @__sanitizer_cov_trace_pc() #11
  %start.i369 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %458 = ptrtoint ptr %start.i369 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %start.i369, align 4
  %460 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr %459, ptr %next.i.i117, align 8
  br label %OUT_RING.exit372

OUT_RING.exit372:                                 ; preds = %if.then.i370, %OUT_RING.exit365.OUT_RING.exit372_crit_edge
  %461 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i371 = getelementptr i32, ptr %462, i32 1
  store ptr %incdec.ptr.i371, ptr %next.i.i117, align 8
  %463 = ptrtoint ptr %462 to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 0, ptr %462, align 4
  %464 = load ptr, ptr %next.i.i117, align 8
  %465 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %end.i.i118, align 8
  %cmp.i375 = icmp eq ptr %464, %466
  br i1 %cmp.i375, label %if.then.i377, label %OUT_RING.exit372.OUT_RING.exit379_crit_edge

OUT_RING.exit372.OUT_RING.exit379_crit_edge:      ; preds = %OUT_RING.exit372
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit379

if.then.i377:                                     ; preds = %OUT_RING.exit372
  call void @__sanitizer_cov_trace_pc() #11
  %start.i376 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %467 = ptrtoint ptr %start.i376 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %start.i376, align 4
  %469 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr %468, ptr %next.i.i117, align 8
  br label %OUT_RING.exit379

OUT_RING.exit379:                                 ; preds = %if.then.i377, %OUT_RING.exit372.OUT_RING.exit379_crit_edge
  %470 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i378 = getelementptr i32, ptr %471, i32 1
  store ptr %incdec.ptr.i378, ptr %next.i.i117, align 8
  %472 = ptrtoint ptr %471 to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 1, ptr %471, align 4
  %473 = load ptr, ptr %next.i.i117, align 8
  %474 = ptrtoint ptr %end.i.i118 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %end.i.i118, align 8
  %cmp.i382 = icmp eq ptr %473, %475
  br i1 %cmp.i382, label %if.then.i384, label %OUT_RING.exit379.OUT_RING.exit386_crit_edge

OUT_RING.exit379.OUT_RING.exit386_crit_edge:      ; preds = %OUT_RING.exit379
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit386

if.then.i384:                                     ; preds = %OUT_RING.exit379
  call void @__sanitizer_cov_trace_pc() #11
  %start.i383 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %476 = ptrtoint ptr %start.i383 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %start.i383, align 4
  %478 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_store4_noabort(i32 %478)
  store ptr %477, ptr %next.i.i117, align 8
  br label %OUT_RING.exit386

OUT_RING.exit386:                                 ; preds = %if.then.i384, %OUT_RING.exit379.OUT_RING.exit386_crit_edge
  %479 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %next.i.i117, align 8
  %incdec.ptr.i385 = getelementptr i32, ptr %480, i32 1
  store ptr %incdec.ptr.i385, ptr %next.i.i117, align 8
  %481 = ptrtoint ptr %480 to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 1, ptr %480, align 4
  %preempt_lock.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 16
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %preempt_lock.i) #9
  %482 = ptrtoint ptr %next.i.i117 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %next.i.i117, align 8
  %cur.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 5
  %484 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %484)
  store ptr %483, ptr %cur.i, align 4
  %start.i.i388 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %485 = ptrtoint ptr %start.i.i388 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %start.i.i388, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %483 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %486 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 2
  %rem.i.i = srem i32 %sub.ptr.div.i.i, 8192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %preempt_lock.i, i32 noundef %call6.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @arm_heavy_mb() #9
  %cur_ring.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 9
  %487 = ptrtoint ptr %cur_ring.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %cur_ring.i, align 8
  %cmp14.i = icmp eq ptr %488, %1
  br i1 %cmp14.i, label %land.lhs.true.i, label %OUT_RING.exit386.a5xx_flush.exit_crit_edge

OUT_RING.exit386.a5xx_flush.exit_crit_edge:       ; preds = %OUT_RING.exit386
  call void @__sanitizer_cov_trace_pc() #11
  br label %a5xx_flush.exit

land.lhs.true.i:                                  ; preds = %OUT_RING.exit386
  %preempt_state1.i.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %preempt_state1.i.i, i32 noundef 4) #9
  %489 = ptrtoint ptr %preempt_state1.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load volatile i32, ptr %preempt_state1.i.i, align 4
  %491 = and i32 %490, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %491)
  %.not.i = icmp eq i32 %491, 0
  br i1 %.not.i, label %if.then17.i, label %land.lhs.true.i.a5xx_flush.exit_crit_edge

land.lhs.true.i.a5xx_flush.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a5xx_flush.exit

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %492 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %493, i32 8220
  tail call void @msm_writel(i32 noundef %rem.i.i, ptr noundef %add.ptr.i.i) #9
  br label %a5xx_flush.exit

a5xx_flush.exit:                                  ; preds = %if.then17.i, %land.lhs.true.i.a5xx_flush.exit_crit_edge, %OUT_RING.exit386.a5xx_flush.exit_crit_edge
  tail call void @a5xx_preempt_trigger(ptr noundef %gpu) #9
  br label %cleanup

cleanup:                                          ; preds = %a5xx_flush.exit, %for.end41.i, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a5xx_irq(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %add.ptr.i = getelementptr i8, ptr %5, i32 4996
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #9
  %and = and i32 %call.i, -3
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i50 = getelementptr i8, ptr %7, i32 220
  tail call void @msm_writel(i32 noundef %and, ptr noundef %add.ptr.i50) #9
  %disable_err_irq = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 40
  %8 = ptrtoint ptr %disable_err_irq to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %disable_err_irq, align 8, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %and1 = and i32 %call.i, 1048832
  %spec.select = select i1 %tobool.not, i32 %call.i, i32 %and1
  %and2 = and i32 %spec.select, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %entry.if.end5_crit_edge, label %if.then4

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %entry
  %and.i = and i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then4.if.end15.i_crit_edge, label %if.then.i

if.then4.if.end15.i_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then.i:                                        ; preds = %if.then4
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 5072
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #9
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_rbbm_err_irq._rs, ptr noundef nonnull @__func__.a5xx_rbbm_err_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.do.end14.i_crit_edge, label %do.end.i

if.then.i.do.end14.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dev5.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev5.i, align 4
  %and6.i = and i32 %call.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond.i = select i1 %tobool7.not.i, ptr @.str.21, ptr @.str.20
  %and8.i = lshr i32 %call.i.i, 2
  %shr.i = and i32 %and8.i, 262143
  %shr9.i = lshr i32 %call.i.i, 20
  %and10.i = and i32 %shr9.i, 3
  %shr11.i = lshr i32 %call.i.i, 24
  %and12.i = and i32 %shr11.i, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond.i, i32 noundef %shr.i, i32 noundef %and10.i, i32 noundef %and12.i) #13
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i, %if.then.i.do.end14.i_crit_edge
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i137.i = getelementptr i8, ptr %17, i32 600
  tail call void @msm_writel(i32 noundef 16, ptr noundef %add.ptr.i137.i) #9
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i139.i = getelementptr i8, ptr %19, i32 220
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i139.i) #9
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end14.i, %if.then4.if.end15.i_crit_edge
  %and16.i = and i32 %spec.select, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end31.i_crit_edge, label %do.body19.i

if.end15.i.if.end31.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

do.body19.i:                                      ; preds = %if.end15.i
  %call20.i = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_rbbm_err_irq._rs.22, ptr noundef nonnull @__func__.a5xx_rbbm_err_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %do.body19.i.if.end31.i_crit_edge, label %do.end25.i

do.body19.i.if.end31.i_crit_edge:                 ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %dev27.i = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev27.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.24) #13
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end25.i, %do.body19.i.if.end31.i_crit_edge, %if.end15.i.if.end31.i_crit_edge
  %and32.i = and i32 %spec.select, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.if.end48.i_crit_edge, label %do.body35.i

if.end31.i.if.end48.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

do.body35.i:                                      ; preds = %if.end31.i
  %call36.i = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_rbbm_err_irq._rs.26, ptr noundef nonnull @__func__.a5xx_rbbm_err_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %do.body35.i.if.end48.i_crit_edge, label %do.end41.i

do.body35.i.if.end48.i_crit_edge:                 ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

do.end41.i:                                       ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %dev43.i = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev43.i, align 4
  %28 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i141.i = getelementptr i8, ptr %29, i32 5056
  %call.i142.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i141.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.28, i32 noundef %call.i142.i) #13
  br label %if.end48.i

if.end48.i:                                       ; preds = %do.end41.i, %do.body35.i.if.end48.i_crit_edge, %if.end31.i.if.end48.i_crit_edge
  %and49.i = and i32 %spec.select, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end48.i.if.end65.i_crit_edge, label %do.body52.i

if.end48.i.if.end65.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

do.body52.i:                                      ; preds = %if.end48.i
  %call53.i = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_rbbm_err_irq._rs.30, ptr noundef nonnull @__func__.a5xx_rbbm_err_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %do.body52.i.if.end65.i_crit_edge, label %do.end58.i

do.body52.i.if.end65.i_crit_edge:                 ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

do.end58.i:                                       ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %dev60.i = getelementptr inbounds %struct.drm_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev60.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev60.i, align 4
  %34 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i144.i = getelementptr i8, ptr %35, i32 5060
  %call.i145.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i144.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.32, i32 noundef %call.i145.i) #13
  br label %if.end65.i

if.end65.i:                                       ; preds = %do.end58.i, %do.body52.i.if.end65.i_crit_edge, %if.end48.i.if.end65.i_crit_edge
  %and66.i = and i32 %spec.select, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.end65.i.if.end82.i_crit_edge, label %do.body69.i

if.end65.i.if.end82.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82.i

do.body69.i:                                      ; preds = %if.end65.i
  %call70.i = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_rbbm_err_irq._rs.34, ptr noundef nonnull @__func__.a5xx_rbbm_err_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %do.body69.i.if.end82.i_crit_edge, label %do.end75.i

do.body69.i.if.end82.i_crit_edge:                 ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82.i

do.end75.i:                                       ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %dev77.i = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dev77.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev77.i, align 4
  %40 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i147.i = getelementptr i8, ptr %41, i32 5068
  %call.i148.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i147.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.36, i32 noundef %call.i148.i) #13
  br label %if.end82.i

if.end82.i:                                       ; preds = %do.end75.i, %do.body69.i.if.end82.i_crit_edge, %if.end65.i.if.end82.i_crit_edge
  %and83.i = and i32 %spec.select, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %if.end82.i.if.end98.i_crit_edge, label %do.body86.i

if.end82.i.if.end98.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.i

do.body86.i:                                      ; preds = %if.end82.i
  %call87.i = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_rbbm_err_irq._rs.38, ptr noundef nonnull @__func__.a5xx_rbbm_err_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %do.body86.i.if.end98.i_crit_edge, label %do.end92.i

do.body86.i.if.end98.i_crit_edge:                 ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.i

do.end92.i:                                       ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %dev94.i = getelementptr inbounds %struct.drm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev94.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev94.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.40) #13
  br label %if.end98.i

if.end98.i:                                       ; preds = %do.end92.i, %do.body86.i.if.end98.i_crit_edge, %if.end82.i.if.end98.i_crit_edge
  %and99.i = and i32 %spec.select, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %if.end98.i.if.end5_crit_edge, label %do.body102.i

if.end98.i.if.end5_crit_edge:                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.body102.i:                                     ; preds = %if.end98.i
  %call103.i = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_rbbm_err_irq._rs.42, ptr noundef nonnull @__func__.a5xx_rbbm_err_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i)
  %tobool104.not.i = icmp eq i32 %call103.i, 0
  br i1 %tobool104.not.i, label %do.body102.i.if.end5_crit_edge, label %do.end108.i

do.body102.i.if.end5_crit_edge:                   ; preds = %do.body102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.end108.i:                                      ; preds = %do.body102.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %dev110.i = getelementptr inbounds %struct.drm_device, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %dev110.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev110.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.44) #13
  br label %if.end5

if.end5:                                          ; preds = %do.end108.i, %do.body102.i.if.end5_crit_edge, %if.end98.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %and6 = and i32 %spec.select, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  %50 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i52 = getelementptr i8, ptr %51, i32 11360
  %call.i.i53 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i52) #9
  %and.i54 = and i32 %call.i.i53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %tobool.not.i55 = icmp eq i32 %and.i54, 0
  br i1 %tobool.not.i55, label %if.then8.if.end10.i_crit_edge, label %if.then.i56

if.then8.if.end10.i_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then.i56:                                      ; preds = %if.then8
  %52 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i108.i = getelementptr i8, ptr %53, i32 8224
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i108.i) #9
  %54 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i110.i = getelementptr i8, ptr %55, i32 8228
  %call.i111.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i110.i) #9
  %56 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i113.i = getelementptr i8, ptr %57, i32 8228
  %call.i114.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i113.i) #9
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_cp_err_irq._rs, ptr noundef nonnull @__func__.a5xx_cp_err_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then.i56.if.end10.i_crit_edge, label %do.end.i58

if.then.i56.if.end10.i_crit_edge:                 ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

do.end.i58:                                       ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %dev7.i = getelementptr inbounds %struct.drm_device, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.46, i32 noundef %call.i114.i) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i58, %if.then.i56.if.end10.i_crit_edge, %if.then8.if.end10.i_crit_edge
  %and11.i = and i32 %call.i.i53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end27.i_crit_edge, label %do.body14.i

if.end10.i.if.end27.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

do.body14.i:                                      ; preds = %if.end10.i
  %call15.i = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_cp_err_irq._rs.47, ptr noundef nonnull @__func__.a5xx_cp_err_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.body14.i.if.end27.i_crit_edge, label %do.end20.i

do.body14.i.if.end27.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

do.end20.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %dev22.i = getelementptr inbounds %struct.drm_device, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev22.i, align 4
  %66 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i116.i = getelementptr i8, ptr %67, i32 11368
  %call.i117.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i116.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.49, i32 noundef %call.i117.i) #13
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end20.i, %do.body14.i.if.end27.i_crit_edge, %if.end10.i.if.end27.i_crit_edge
  %and28.i = and i32 %call.i.i53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.if.end43.i_crit_edge, label %do.body31.i

if.end27.i.if.end43.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

do.body31.i:                                      ; preds = %if.end27.i
  %call32.i = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_cp_err_irq._rs.51, ptr noundef nonnull @__func__.a5xx_cp_err_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i59 = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i59, label %do.body31.i.if.end43.i_crit_edge, label %do.end37.i

do.body31.i.if.end43.i_crit_edge:                 ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

do.end37.i:                                       ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %dev39.i = getelementptr inbounds %struct.drm_device, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %dev39.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev39.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.53) #13
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end37.i, %do.body31.i.if.end43.i_crit_edge, %if.end27.i.if.end43.i_crit_edge
  %and44.i = and i32 %call.i.i53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.end64.i_crit_edge, label %if.then46.i

if.end43.i.if.end64.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

if.then46.i:                                      ; preds = %if.end43.i
  %72 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i119.i = getelementptr i8, ptr %73, i32 11376
  %call.i120.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i119.i) #9
  %call50.i = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_cp_err_irq._rs.55, ptr noundef nonnull @__func__.a5xx_cp_err_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.then46.i.if.end64.i_crit_edge, label %do.end55.i

if.then46.i.if.end64.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

do.end55.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %dev57.i = getelementptr inbounds %struct.drm_device, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %dev57.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev57.i, align 4
  %and58.i = and i32 %call.i120.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  %cond.i60 = select i1 %tobool59.not.i, ptr @.str.21, ptr @.str.20
  %and60.i = lshr i32 %call.i120.i, 2
  %shr.i61 = and i32 %and60.i, 262143
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.57, ptr noundef nonnull %cond.i60, i32 noundef %shr.i61, i32 noundef %call.i120.i) #13
  br label %if.end64.i

if.end64.i:                                       ; preds = %do.end55.i, %if.then46.i.if.end64.i_crit_edge, %if.end43.i.if.end64.i_crit_edge
  %and65.i = and i32 %call.i.i53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %if.end64.i.if.end9_crit_edge, label %if.then67.i

if.end64.i.if.end9_crit_edge:                     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then67.i:                                      ; preds = %if.end64.i
  %78 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i122.i = getelementptr i8, ptr %79, i32 11372
  %call.i123.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i122.i) #9
  %call71.i = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_cp_err_irq._rs.69, ptr noundef nonnull @__func__.a5xx_cp_err_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.then67.i.if.end9_crit_edge, label %do.end76.i

if.then67.i.if.end9_crit_edge:                    ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end76.i:                                       ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  %dev78.i = getelementptr inbounds %struct.drm_device, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev78.i, align 4
  %and79.i = and i32 %call.i123.i, 1048575
  %shr80.i = lshr i32 %call.i123.i, 24
  %and81.i = and i32 %shr80.i, 15
  %arrayidx.i = getelementptr [16 x ptr], ptr @__const.a5xx_cp_err_irq.access, i32 0, i32 %and81.i
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i, align 4
  %and82.i = and i32 %call.i123.i, -2147483648
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.71, i32 noundef %and79.i, ptr noundef %85, i32 noundef %and82.i, i32 noundef %call.i123.i) #13
  br label %if.end9

if.end9:                                          ; preds = %do.end76.i, %if.then67.i.if.end9_crit_edge, %if.end64.i.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %and10 = and i32 %spec.select, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 4
  %funcs.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  %88 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %funcs.i, align 4
  %active_ring.i = getelementptr inbounds %struct.msm_gpu_funcs, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %active_ring.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %active_ring.i, align 4
  %call.i63 = tail call ptr %91(ptr noundef %gpu) #9
  %92 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i65 = getelementptr i8, ptr %93, i32 5312
  %call.i.i66 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i65) #9
  %and.i67 = and i32 %call.i.i66, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool.not.i68 = icmp eq i32 %and.i67, 0
  br i1 %tobool.not.i68, label %if.end.i, label %if.then12.if.end13_crit_edge

if.then12.if.end13_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end.i:                                         ; preds = %if.then12
  %dev3.i = getelementptr inbounds %struct.drm_device, ptr %87, i32 0, i32 2
  %94 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev3.i, align 4
  %tobool4.not.i69 = icmp eq ptr %call.i63, null
  br i1 %tobool4.not.i69, label %if.end.i.cond.end8.i_crit_edge, label %cond.true6.i

if.end.i.cond.end8.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end8.i

cond.true6.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %id.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %call.i63, i32 0, i32 1
  %96 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %id.i, align 4
  %seqno.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %call.i63, i32 0, i32 11
  %98 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %seqno.i, align 8
  br label %cond.end8.i

cond.end8.i:                                      ; preds = %cond.true6.i, %if.end.i.cond.end8.i_crit_edge
  %cond64.i = phi i32 [ %97, %cond.true6.i ], [ -1, %if.end.i.cond.end8.i_crit_edge ]
  %cond9.i = phi i32 [ %99, %cond.true6.i ], [ 0, %if.end.i.cond.end8.i_crit_edge ]
  %100 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i37.i = getelementptr i8, ptr %101, i32 5076
  %call.i38.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i37.i) #9
  %102 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i40.i = getelementptr i8, ptr %103, i32 8216
  %call.i41.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i40.i) #9
  %104 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i43.i = getelementptr i8, ptr %105, i32 8220
  %call.i44.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i43.i) #9
  %106 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i46.i = getelementptr i8, ptr %107, i32 11388
  %call.i47.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i46.i) #9
  %conv.i.i = zext i32 %call.i47.i to i64
  %108 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %109, i32 11392
  %call4.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr3.i.i) #9
  %conv5.i.i = zext i32 %call4.i.i to i64
  %shl6.i.i = shl nuw i64 %conv5.i.i, 32
  %or.i.i = or i64 %shl6.i.i, %conv.i.i
  %110 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i49.i = getelementptr i8, ptr %111, i32 11396
  %call.i50.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i49.i) #9
  %112 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i52.i = getelementptr i8, ptr %113, i32 11400
  %call.i53.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i52.i) #9
  %conv.i54.i = zext i32 %call.i53.i to i64
  %114 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio.i, align 8
  %add.ptr3.i55.i = getelementptr i8, ptr %115, i32 11404
  %call4.i56.i = tail call i32 @msm_readl(ptr noundef %add.ptr3.i55.i) #9
  %conv5.i57.i = zext i32 %call4.i56.i to i64
  %shl6.i58.i = shl nuw i64 %conv5.i57.i, 32
  %or.i59.i = or i64 %shl6.i58.i, %conv.i54.i
  %116 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i61.i = getelementptr i8, ptr %117, i32 11408
  %call.i62.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i61.i) #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %95, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.73, i32 noundef %cond64.i, i32 noundef %cond9.i, i32 noundef %call.i38.i, i32 noundef %call.i41.i, i32 noundef %call.i44.i, i64 noundef %or.i.i, i32 noundef %call.i50.i, i64 noundef %or.i59.i, i32 noundef %call.i62.i) #9
  %hangcheck_timer.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 33
  %call17.i = tail call i32 @del_timer(ptr noundef %hangcheck_timer.i) #9
  %worker.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 39
  %118 = ptrtoint ptr %worker.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %worker.i, align 8
  %recover_work.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 36
  %call18.i = tail call zeroext i1 @kthread_queue_work(ptr noundef %119, ptr noundef %recover_work.i) #9
  br label %if.end13

if.end13:                                         ; preds = %cond.end8.i, %if.then12.if.end13_crit_edge, %if.end9.if.end13_crit_edge
  %and14 = and i32 %spec.select, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  %120 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i71 = getelementptr i8, ptr %121, i32 15048
  %call.i.i72 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i71) #9
  %122 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i13.i = getelementptr i8, ptr %123, i32 15044
  %call.i14.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i13.i) #9
  %call3.i73 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_uche_err_irq._rs, ptr noundef nonnull @__func__.a5xx_uche_err_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i73)
  %tobool.not.i74 = icmp eq i32 %call3.i73, 0
  br i1 %tobool.not.i74, label %if.then16.if.end17_crit_edge, label %do.end.i77

if.then16.if.end17_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end.i77:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %or11.i = or i32 %call.i14.i, %call.i.i72
  %or.i = zext i32 %or11.i to i64
  %124 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev, align 4
  %dev5.i76 = getelementptr inbounds %struct.drm_device, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %dev5.i76 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev5.i76, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.74, i64 noundef %or.i) #13
  br label %if.end17

if.end17:                                         ; preds = %do.end.i77, %if.then16.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %and18 = and i32 %spec.select, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  %call.i78 = tail call i32 @___ratelimit(ptr noundef nonnull @a5xx_gpmu_err_irq._rs, ptr noundef nonnull @__func__.a5xx_gpmu_err_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %if.then20.if.end21_crit_edge, label %do.end.i81

if.then20.if.end21_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.end.i81:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev, align 4
  %dev2.i = getelementptr inbounds %struct.drm_device, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev2.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.75) #13
  br label %if.end21

if.end21:                                         ; preds = %do.end.i81, %if.then20.if.end21_crit_edge, %if.end17.if.end21_crit_edge
  %and22 = and i32 %spec.select, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end25_crit_edge, label %if.then24

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @a5xx_preempt_trigger(ptr noundef %gpu) #9
  tail call void @msm_gpu_retire(ptr noundef %gpu) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  %and26 = and i32 %spec.select, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end29_crit_edge, label %if.then28

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @a5xx_preempt_irq(ptr noundef %gpu) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25.if.end29_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @a5xx_active_ring(ptr nocapture noundef readonly %gpu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_ring = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 9
  %0 = ptrtoint ptr %cur_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_ring, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a5xx_recover(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @adreno_dump_info(ptr noundef %gpu) #9
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 11744
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 0, i32 noundef %call.i) #13
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %3, i32 11748
  %call.i.1 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.1) #9
  %call2.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %call.i.1) #13
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.2 = getelementptr i8, ptr %5, i32 11752
  %call.i.2 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.2) #9
  %call2.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %call.i.2) #13
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.3 = getelementptr i8, ptr %7, i32 11756
  %call.i.3 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.3) #9
  %call2.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 3, i32 noundef %call.i.3) #13
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.4 = getelementptr i8, ptr %9, i32 11760
  %call.i.4 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.4) #9
  %call2.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 4, i32 noundef %call.i.4) #13
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.5 = getelementptr i8, ptr %11, i32 11764
  %call.i.5 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.5) #9
  %call2.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 5, i32 noundef %call.i.5) #13
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.6 = getelementptr i8, ptr %13, i32 11768
  %call.i.6 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.6) #9
  %call2.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 6, i32 noundef %call.i.6) #13
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.7 = getelementptr i8, ptr %15, i32 11772
  %call.i.7 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.7) #9
  %call2.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 7, i32 noundef %call.i.7) #13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @hang_debug to i32))
  %16 = load i8, ptr @hang_debug, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i, align 4
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 5076
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %20, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %call.i.i) #9
  tail call void @adreno_dump(ptr noundef %gpu) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %24, i32 268
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i14) #9
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i16 = getelementptr i8, ptr %26, i32 268
  %call.i17 = tail call i32 @msm_readl(ptr noundef %add.ptr.i16) #9
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i19 = getelementptr i8, ptr %28, i32 268
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i19) #9
  tail call void @adreno_recover(ptr noundef %gpu) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a5xx_show(ptr noundef %gpu, ptr noundef %state, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %state, null
  %cmp.i = icmp ugt ptr %state, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @adreno_show(ptr noundef %gpu, ptr noundef nonnull %state, ptr noundef %p) #9
  %hlsqregs = getelementptr inbounds %struct.a5xx_gpu_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %hlsqregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hlsqregs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.80) #9
  br label %for.body6.preheader

for.body6.preheader:                              ; preds = %for.end.for.body6.preheader_crit_edge, %if.end2
  %i.041 = phi i32 [ 0, %if.end2 ], [ %inc17, %for.end.for.body6.preheader_crit_edge ]
  %pos.040 = phi i32 [ 0, %if.end2 ], [ %6, %for.end.for.body6.preheader_crit_edge ]
  %count = getelementptr [15 x %struct.anon.110], ptr @a5xx_hlsq_aperture_regs, i32 0, i32 %i.041, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %regoffset = getelementptr [15 x %struct.anon.110], ptr @a5xx_hlsq_aperture_regs, i32 0, i32 %i.041, i32 1
  %4 = ptrtoint ptr %regoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regoffset, align 4
  %umax = call i32 @llvm.umax.i32(i32 %3, i32 1)
  %6 = add i32 %pos.040, %umax
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body6.preheader
  %o.038 = phi i32 [ %inc15, %for.inc.for.body6_crit_edge ], [ %5, %for.body6.preheader ]
  %pos.136 = phi i32 [ %inc14, %for.inc.for.body6_crit_edge ], [ %pos.040, %for.body6.preheader ]
  %7 = ptrtoint ptr %hlsqregs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hlsqregs, align 8
  %arrayidx8 = getelementptr i32, ptr %8, i32 %pos.136
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %10)
  %cmp9 = icmp eq i32 %10, -559038737
  br i1 %cmp9, label %for.body6.for.inc_crit_edge, label %if.end11

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end11:                                         ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i32 %o.038, 2
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.81, i32 noundef %shl, i32 noundef %10) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %for.body6.for.inc_crit_edge
  %inc14 = add i32 %pos.136, 1
  %inc15 = add i32 %o.038, 1
  %exitcond.not = icmp eq i32 %inc14, %6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

for.end:                                          ; preds = %for.inc
  %inc17 = add nuw nsw i32 %i.041, 1
  %exitcond42.not = icmp eq i32 %inc17, 15
  br i1 %exitcond42.not, label %for.end.cleanup_crit_edge, label %for.end.for.body6.preheader_crit_edge

for.end.for.body6.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_debugfs_init(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a5xx_gpu_busy(ptr nocapture noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 3776
  %call.i314 = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #9
  %conv.i = zext i32 %call.i314 to i64
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %5, i32 3780
  %call4.i = tail call i32 @msm_readl(ptr noundef %add.ptr3.i) #9
  %conv5.i = zext i32 %call4.i to i64
  %shl6.i = shl nuw i64 %conv5.i, 32
  %or.i = or i64 %shl6.i, %conv.i
  %busy_cycles2 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 3
  %6 = ptrtoint ptr %busy_cycles2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %busy_cycles2, align 8
  %sub = sub i64 %or.i, %7
  %core_clk = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 30
  %8 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_clk, align 8
  %call3 = tail call i32 @clk_get_rate(ptr noundef %9) #9
  %div = udiv i32 %call3, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp173 = icmp ult i64 %sub, 4294967296
  br i1 %cmp173, label %if.then177, label %if.else183, !prof !182

if.then177:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv178 = trunc i64 %sub to i32
  %div181 = udiv i32 %conv178, %div
  %conv182 = zext i32 %div181 to i64
  br label %if.end187

if.else183:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub) #14, !srcloc !188
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  br label %if.end187

if.end187:                                        ; preds = %if.else183, %if.then177
  %busy_time.0 = phi i64 [ %conv182, %if.then177 ], [ %asmresult1.i, %if.else183 ]
  %11 = ptrtoint ptr %busy_cycles2 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %or.i, ptr %busy_cycles2, align 8
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev192 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %call.i316 = tail call i32 @__pm_runtime_idle(ptr noundef %dev192, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %busy_time.0)
  %cmp194 = icmp ugt i64 %busy_time.0, 4294967295
  br i1 %cmp194, label %do.end, label %if.end224, !prof !187

do.end:                                           ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1683, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end224:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  %conv225 = trunc i64 %busy_time.0 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end224, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ %conv225, %if.end224 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @a5xx_gpu_state_get(ptr noundef %gpu) #0 align 64 {
entry:
  %dumper.i = alloca %struct.a5xx_crashdumper, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 248) #12
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %1 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 5312
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #9
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void @a5xx_set_hwcg(ptr noundef %gpu, i1 noundef zeroext false)
  %call5 = tail call i32 @adreno_gpu_state_get(ptr noundef %gpu, ptr noundef nonnull %call7.i.i) #9
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i23 = getelementptr i8, ptr %4, i32 5076
  %call.i24 = tail call i32 @msm_readl(ptr noundef %add.ptr.i23) #9
  %rbbm_status = getelementptr inbounds %struct.msm_gpu_state, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %rbbm_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i24, ptr %rbbm_status, align 8
  br i1 %tobool.not, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dumper.i) #9
  %6 = call ptr @memset(ptr %dumper.i, i32 0, i32 16)
  %dev.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %aspace.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %9 = ptrtoint ptr %aspace.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aspace.i.i, align 8
  %bo.i.i = getelementptr inbounds %struct.a5xx_crashdumper, ptr %dumper.i, i32 0, i32 1
  %iova.i.i = getelementptr inbounds %struct.a5xx_crashdumper, ptr %dumper.i, i32 0, i32 2
  %call.i.i = call ptr @msm_gem_kernel_new(ptr noundef %8, i32 noundef 1048576, i32 noundef 131072, ptr noundef %10, ptr noundef %bo.i.i, ptr noundef %iova.i.i) #9
  %11 = ptrtoint ptr %dumper.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %dumper.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then9.a5xx_crashdumper_init.exit.i_crit_edge, label %if.then.i.i

if.then9.a5xx_crashdumper_init.exit.i_crit_edge:  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %a5xx_crashdumper_init.exit.i

if.then.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %bo.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bo.i.i, align 4
  call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %13, ptr noundef nonnull @.str.82) #9
  %14 = ptrtoint ptr %dumper.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load ptr, ptr %dumper.i, align 8
  br label %a5xx_crashdumper_init.exit.i

a5xx_crashdumper_init.exit.i:                     ; preds = %if.then.i.i, %if.then9.a5xx_crashdumper_init.exit.i_crit_edge
  %15 = phi ptr [ %call.i.i, %if.then9.a5xx_crashdumper_init.exit.i_crit_edge ], [ %.pr.i, %if.then.i.i ]
  %cmp.i.i.i.not.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.not.i, label %a5xx_crashdumper_init.exit.i.a5xx_gpu_state_get_hlsq_regs.exit_crit_edge, label %kcalloc.exit.i

a5xx_crashdumper_init.exit.i.a5xx_gpu_state_get_hlsq_regs.exit_crit_edge: ; preds = %a5xx_crashdumper_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a5xx_gpu_state_get_hlsq_regs.exit

kcalloc.exit.i:                                   ; preds = %a5xx_crashdumper_init.exit.i
  %16 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %iova.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 5416) #12
  %hlsqregs.i = getelementptr inbounds %struct.a5xx_gpu_state, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %hlsqregs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i.i.i, ptr %hlsqregs.i, align 8
  %tobool7.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool7.not.i, label %kcalloc.exit.i.a5xx_gpu_state_get_hlsq_regs.exit_crit_edge, label %for.body13.i.preheader

kcalloc.exit.i.a5xx_gpu_state_get_hlsq_regs.exit_crit_edge: ; preds = %kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a5xx_gpu_state_get_hlsq_regs.exit

for.body13.i.preheader:                           ; preds = %kcalloc.exit.i
  %20 = trunc i64 %17 to i32
  %conv.i = add i32 %20, 262144
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %for.body13.i.preheader
  %offset.079.i = phi i32 [ %add24.i, %for.body13.i.for.body13.i_crit_edge ], [ %conv.i, %for.body13.i.preheader ]
  %i.178.i = phi i32 [ %inc26.i, %for.body13.i.for.body13.i_crit_edge ], [ 0, %for.body13.i.preheader ]
  %ptr.077.i = phi ptr [ %incdec.ptr23.i, %for.body13.i.for.body13.i_crit_edge ], [ %15, %for.body13.i.preheader ]
  %arrayidx14.i = getelementptr [15 x %struct.anon.110], ptr @a5xx_hlsq_aperture_regs, i32 0, i32 %i.178.i
  %21 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx14.i, align 4
  %count17.i = getelementptr [15 x %struct.anon.110], ptr @a5xx_hlsq_aperture_regs, i32 0, i32 %i.178.i, i32 2
  %23 = ptrtoint ptr %count17.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count17.i, align 4
  %conv18.i = zext i32 %22 to i64
  %shl.i = shl nuw nsw i64 %conv18.i, 8
  %incdec.ptr.i = getelementptr i64, ptr %ptr.077.i, i32 1
  %25 = ptrtoint ptr %ptr.077.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %shl.i, ptr %ptr.077.i, align 8
  %incdec.ptr19.i = getelementptr i64, ptr %ptr.077.i, i32 2
  %26 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 846676729947750401, ptr %incdec.ptr.i, align 8
  %conv20.i = zext i32 %offset.079.i to i64
  %incdec.ptr21.i = getelementptr i64, ptr %ptr.077.i, i32 3
  %27 = ptrtoint ptr %incdec.ptr19.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv20.i, ptr %incdec.ptr19.i, align 8
  %conv22.i = zext i32 %24 to i64
  %or.i = or i64 %conv22.i, 720575940379279360
  %incdec.ptr23.i = getelementptr i64, ptr %ptr.077.i, i32 4
  %28 = ptrtoint ptr %incdec.ptr21.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %or.i, ptr %incdec.ptr21.i, align 8
  %mul.i = shl i32 %24, 2
  %add24.i = add i32 %mul.i, %offset.079.i
  %inc26.i = add nuw nsw i32 %i.178.i, 1
  %exitcond.not.i = icmp eq i32 %inc26.i, 15
  br i1 %exitcond.not.i, label %for.end27.i, label %for.body13.i.for.body13.i_crit_edge

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13.i

for.end27.i:                                      ; preds = %for.body13.i
  %29 = call ptr @memset(ptr %incdec.ptr23.i, i32 0, i32 16)
  %30 = ptrtoint ptr %dumper.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dumper.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %31, null
  %cmp.i.i66.i = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i67.i = or i1 %tobool.not.i.i.i, %cmp.i.i66.i
  br i1 %spec.select.i.i67.i, label %for.end27.i.if.then32.i_crit_edge, label %if.end.i.i

for.end27.i.if.then32.i_crit_edge:                ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32.i

if.end.i.i:                                       ; preds = %for.end27.i
  %32 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %iova.i.i, align 8
  %conv.i.i.i = trunc i64 %33 to i32
  %34 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 8284
  call void @msm_writel(i32 noundef %conv.i.i.i, ptr noundef %add.ptr.i.i.i) #9
  %shr.i.i.i = lshr i64 %33, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %36 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %37, i32 8288
  call void @msm_writel(i32 noundef %conv2.i.i.i, ptr noundef %add.ptr5.i.i.i) #9
  %38 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i44.i.i = getelementptr i8, ptr %39, i32 8292
  call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i44.i.i) #9
  %call1.i.i = call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call1.i.i, 10000000
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1474) #9
  %40 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i, align 8
  %add.ptr47.i.i = getelementptr i8, ptr %41, i32 8292
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i.i) #9, !srcloc !189
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %43 = and i32 %42, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not49.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not49.i.i, label %if.end.i.i.land.lhs.true.i.i_crit_edge, label %if.end.i.i.if.end34.i_crit_edge

if.end.i.i.if.end34.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.end.i.i.land.lhs.true.i.i_crit_edge:           ; preds = %if.end.i.i
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then29.i.i.land.lhs.true.i.i_crit_edge, %if.end.i.i.land.lhs.true.i.i_crit_edge
  %call16.i.i = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call16.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call16.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %44 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 8292
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !189
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %47 = and i32 %46, 67108864
  %tobool.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i.land.lhs.true.i.i_crit_edge, label %if.then29.i.i.if.end34.i_crit_edge

if.then29.i.i.if.end34.i_crit_edge:               ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then29.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %48 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i, align 8
  %add.ptr23.i.i = getelementptr i8, ptr %49, i32 8292
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #9, !srcloc !189
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  %51 = and i32 %50, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool33.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool33.not.i.i, label %for.end.i.i.if.then32.i_crit_edge, label %for.end.i.i.if.end34.i_crit_edge

for.end.i.i.if.end34.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.end.i.i.if.then32.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32.i

if.then32.i:                                      ; preds = %for.end.i.i.if.then32.i_crit_edge, %for.end27.i.if.then32.i_crit_edge
  %52 = ptrtoint ptr %hlsqregs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hlsqregs.i, align 8
  call void @kfree(ptr noundef %53) #9
  br label %cleanup.sink.split.i

if.end34.i:                                       ; preds = %for.end.i.i.if.end34.i_crit_edge, %if.then29.i.i.if.end34.i_crit_edge, %if.end.i.i.if.end34.i_crit_edge
  %54 = ptrtoint ptr %hlsqregs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hlsqregs.i, align 8
  %56 = ptrtoint ptr %dumper.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dumper.i, align 8
  %add.ptr.i25 = getelementptr i8, ptr %57, i32 262144
  %58 = call ptr @memcpy(ptr %55, ptr %add.ptr.i25, i32 5416)
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end34.i, %if.then32.i
  %59 = ptrtoint ptr %bo.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bo.i.i, align 4
  %61 = ptrtoint ptr %aspace.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %aspace.i.i, align 8
  call void @msm_gem_kernel_put(ptr noundef %60, ptr noundef %62) #9
  br label %a5xx_gpu_state_get_hlsq_regs.exit

a5xx_gpu_state_get_hlsq_regs.exit:                ; preds = %cleanup.sink.split.i, %kcalloc.exit.i.a5xx_gpu_state_get_hlsq_regs.exit_crit_edge, %a5xx_crashdumper_init.exit.i.a5xx_gpu_state_get_hlsq_regs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dumper.i) #9
  br label %if.end10

if.end10:                                         ; preds = %a5xx_gpu_state_get_hlsq_regs.exit, %if.end.if.end10_crit_edge
  call void @a5xx_set_hwcg(ptr noundef %gpu, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end10 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a5xx_gpu_state_put(ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %state, null
  %cmp.i = icmp ugt ptr %state, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %state, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @llvm.prefetch.p0(ptr nonnull %state, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %state, ptr nonnull %state, i32 1, ptr nonnull elementtype(i32) %state) #9, !srcloc !181
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !182

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %state, i32 noundef 3) #9
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !183
  %hlsqregs.i = getelementptr inbounds %struct.a5xx_gpu_state, ptr %state, i32 0, i32 1
  %1 = ptrtoint ptr %hlsqregs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hlsqregs.i, align 8
  tail call void @kfree(ptr noundef %2) #9
  tail call void @adreno_gpu_state_destroy(ptr noundef nonnull %state) #9
  tail call void @kfree(ptr noundef nonnull %state) #9
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 1, %if.then.i ], [ 0, %if.end5.i.i.i.i.return_crit_edge ], [ 0, %if.then10.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_iommu_create_address_space(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a5xx_get_rptr(ptr nocapture noundef readonly %gpu, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %has_whereami = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 20
  %0 = ptrtoint ptr %has_whereami to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_whereami, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shadow = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 19
  %2 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shadow, align 8
  %id = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 8216
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #9
  %memptrs = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %memptrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %memptrs, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %call.i, ptr %11, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %call.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a5xx_get_timestamp(ptr nocapture noundef readonly %gpu, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4936
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #9
  %conv.i = zext i32 %call.i to i64
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %3, i32 4940
  %call4.i = tail call i32 @msm_readl(ptr noundef %add.ptr3.i) #9
  %conv5.i = zext i32 %call4.i to i64
  %shl6.i = shl nuw i64 %conv5.i, 32
  %or.i = or i64 %shl6.i, %conv.i
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %or.i, ptr %value, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_gpmu_ucode_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_preempt_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_preempt_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a5xx_power_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a5xx_zap_shader_init(ptr noundef %gpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @a5xx_zap_shader_init.loaded, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %revn.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %1 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %revn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 506, i32 %2)
  %cmp.i.not.i = icmp eq i32 %2, 506
  br i1 %cmp.i.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @qcom_scm_set_remote_state(i32 noundef 0, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpu, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, ptr noundef %4, i32 noundef %call1.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @adreno_zap_shader_load(ptr noundef %gpu, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %frombool = zext i1 %tobool2.not to i8
  store i8 %frombool, ptr @a5xx_zap_shader_init.loaded, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %if.then.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @a5xx_preempt_start(ptr noundef %gpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %0 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rb = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 13
  %2 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb, align 4
  tail call void @adreno_wait_ring(ptr noundef %3, i32 noundef 2) #9
  %next.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next.i.i, align 8
  %end.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 8
  %cmp.i.i = icmp eq ptr %5, %7
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.OUT_PKT7.exit_crit_edge

if.end.OUT_PKT7.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %start.i.i, align 4
  %10 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %next.i.i, align 8
  br label %OUT_PKT7.exit

OUT_PKT7.exit:                                    ; preds = %if.then.i.i, %if.end.OUT_PKT7.exit_crit_edge
  %11 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %12, i32 1
  store ptr %incdec.ptr.i.i, ptr %next.i.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1893662721, ptr %12, align 4
  %14 = load ptr, ptr %next.i.i, align 8
  %15 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i, align 8
  %cmp.i = icmp eq ptr %14, %16
  br i1 %cmp.i, label %if.then.i, label %OUT_PKT7.exit.OUT_RING.exit_crit_edge

OUT_PKT7.exit.OUT_RING.exit_crit_edge:            ; preds = %OUT_PKT7.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit

if.then.i:                                        ; preds = %OUT_PKT7.exit
  call void @__sanitizer_cov_trace_pc() #11
  %start.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %start.i, align 4
  %19 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %next.i.i, align 8
  br label %OUT_RING.exit

OUT_RING.exit:                                    ; preds = %if.then.i, %OUT_PKT7.exit.OUT_RING.exit_crit_edge
  %20 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i = getelementptr i32, ptr %21, i32 1
  store ptr %incdec.ptr.i, ptr %next.i.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %21, align 4
  tail call void @adreno_wait_ring(ptr noundef %3, i32 noundef 3) #9
  %23 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next.i.i, align 8
  %25 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i.i, align 8
  %cmp.i.i3 = icmp eq ptr %24, %26
  br i1 %cmp.i.i3, label %if.then.i.i5, label %OUT_RING.exit.OUT_PKT4.exit_crit_edge

OUT_RING.exit.OUT_PKT4.exit_crit_edge:            ; preds = %OUT_RING.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT4.exit

if.then.i.i5:                                     ; preds = %OUT_RING.exit
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i4 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %start.i.i4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %start.i.i4, align 4
  %29 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %next.i.i, align 8
  br label %OUT_PKT4.exit

OUT_PKT4.exit:                                    ; preds = %if.then.i.i5, %OUT_RING.exit.OUT_PKT4.exit_crit_edge
  %30 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i.i6 = getelementptr i32, ptr %31, i32 1
  store ptr %incdec.ptr.i.i6, ptr %next.i.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1208499714, ptr %31, align 4
  %id = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id, align 4
  %arrayidx4 = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 14, i32 %34
  %35 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx4, align 8
  %conv = trunc i64 %36 to i32
  %37 = load ptr, ptr %next.i.i, align 8
  %38 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i.i, align 8
  %cmp.i9 = icmp eq ptr %37, %39
  br i1 %cmp.i9, label %if.then.i11, label %OUT_PKT4.exit.OUT_RING.exit13_crit_edge

OUT_PKT4.exit.OUT_RING.exit13_crit_edge:          ; preds = %OUT_PKT4.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit13

if.then.i11:                                      ; preds = %OUT_PKT4.exit
  call void @__sanitizer_cov_trace_pc() #11
  %start.i10 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %40 = ptrtoint ptr %start.i10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %start.i10, align 4
  %42 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %next.i.i, align 8
  br label %OUT_RING.exit13

OUT_RING.exit13:                                  ; preds = %if.then.i11, %OUT_PKT4.exit.OUT_RING.exit13_crit_edge
  %43 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i12 = getelementptr i32, ptr %44, i32 1
  store ptr %incdec.ptr.i12, ptr %next.i.i, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv, ptr %44, align 4
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id, align 4
  %arrayidx7 = getelementptr %struct.a5xx_gpu, ptr %gpu, i32 0, i32 14, i32 %47
  %48 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx7, align 8
  %shr = lshr i64 %49, 32
  %conv9 = trunc i64 %shr to i32
  %50 = load ptr, ptr %next.i.i, align 8
  %51 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %end.i.i, align 8
  %cmp.i16 = icmp eq ptr %50, %52
  br i1 %cmp.i16, label %if.then.i18, label %OUT_RING.exit13.OUT_RING.exit20_crit_edge

OUT_RING.exit13.OUT_RING.exit20_crit_edge:        ; preds = %OUT_RING.exit13
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit20

if.then.i18:                                      ; preds = %OUT_RING.exit13
  call void @__sanitizer_cov_trace_pc() #11
  %start.i17 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %53 = ptrtoint ptr %start.i17 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %start.i17, align 4
  %55 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %next.i.i, align 8
  br label %OUT_RING.exit20

OUT_RING.exit20:                                  ; preds = %if.then.i18, %OUT_RING.exit13.OUT_RING.exit20_crit_edge
  %56 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i19 = getelementptr i32, ptr %57, i32 1
  store ptr %incdec.ptr.i19, ptr %next.i.i, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv9, ptr %57, align 4
  tail call void @adreno_wait_ring(ptr noundef %3, i32 noundef 2) #9
  %59 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %next.i.i, align 8
  %61 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i.i, align 8
  %cmp.i.i23 = icmp eq ptr %60, %62
  br i1 %cmp.i.i23, label %if.then.i.i25, label %OUT_RING.exit20.OUT_PKT7.exit27_crit_edge

OUT_RING.exit20.OUT_PKT7.exit27_crit_edge:        ; preds = %OUT_RING.exit20
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit27

if.then.i.i25:                                    ; preds = %OUT_RING.exit20
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i24 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %63 = ptrtoint ptr %start.i.i24 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %start.i.i24, align 4
  %65 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %next.i.i, align 8
  br label %OUT_PKT7.exit27

OUT_PKT7.exit27:                                  ; preds = %if.then.i.i25, %OUT_RING.exit20.OUT_PKT7.exit27_crit_edge
  %66 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i.i26 = getelementptr i32, ptr %67, i32 1
  store ptr %incdec.ptr.i.i26, ptr %next.i.i, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1893662721, ptr %67, align 4
  %69 = load ptr, ptr %next.i.i, align 8
  %70 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %end.i.i, align 8
  %cmp.i30 = icmp eq ptr %69, %71
  br i1 %cmp.i30, label %if.then.i32, label %OUT_PKT7.exit27.OUT_RING.exit34_crit_edge

OUT_PKT7.exit27.OUT_RING.exit34_crit_edge:        ; preds = %OUT_PKT7.exit27
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit34

if.then.i32:                                      ; preds = %OUT_PKT7.exit27
  call void @__sanitizer_cov_trace_pc() #11
  %start.i31 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %72 = ptrtoint ptr %start.i31 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %start.i31, align 4
  %74 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %next.i.i, align 8
  br label %OUT_RING.exit34

OUT_RING.exit34:                                  ; preds = %if.then.i32, %OUT_PKT7.exit27.OUT_RING.exit34_crit_edge
  %75 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i33 = getelementptr i32, ptr %76, i32 1
  store ptr %incdec.ptr.i33, ptr %next.i.i, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %76, align 4
  tail call void @adreno_wait_ring(ptr noundef %3, i32 noundef 2) #9
  %78 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %next.i.i, align 8
  %80 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %end.i.i, align 8
  %cmp.i.i37 = icmp eq ptr %79, %81
  br i1 %cmp.i.i37, label %if.then.i.i39, label %OUT_RING.exit34.OUT_PKT7.exit41_crit_edge

OUT_RING.exit34.OUT_PKT7.exit41_crit_edge:        ; preds = %OUT_RING.exit34
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit41

if.then.i.i39:                                    ; preds = %OUT_RING.exit34
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i38 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %82 = ptrtoint ptr %start.i.i38 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %start.i.i38, align 4
  %84 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %next.i.i, align 8
  br label %OUT_PKT7.exit41

OUT_PKT7.exit41:                                  ; preds = %if.then.i.i39, %OUT_RING.exit34.OUT_PKT7.exit41_crit_edge
  %85 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i.i40 = getelementptr i32, ptr %86, i32 1
  store ptr %incdec.ptr.i.i40, ptr %next.i.i, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1894318081, ptr %86, align 4
  %88 = load ptr, ptr %next.i.i, align 8
  %89 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %end.i.i, align 8
  %cmp.i44 = icmp eq ptr %88, %90
  br i1 %cmp.i44, label %if.then.i46, label %OUT_PKT7.exit41.OUT_RING.exit48_crit_edge

OUT_PKT7.exit41.OUT_RING.exit48_crit_edge:        ; preds = %OUT_PKT7.exit41
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit48

if.then.i46:                                      ; preds = %OUT_PKT7.exit41
  call void @__sanitizer_cov_trace_pc() #11
  %start.i45 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %91 = ptrtoint ptr %start.i45 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %start.i45, align 4
  %93 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %next.i.i, align 8
  br label %OUT_RING.exit48

OUT_RING.exit48:                                  ; preds = %if.then.i46, %OUT_PKT7.exit41.OUT_RING.exit48_crit_edge
  %94 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i47 = getelementptr i32, ptr %95, i32 1
  store ptr %incdec.ptr.i47, ptr %next.i.i, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %95, align 4
  tail call void @adreno_wait_ring(ptr noundef %3, i32 noundef 2) #9
  %97 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %next.i.i, align 8
  %99 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %end.i.i, align 8
  %cmp.i.i51 = icmp eq ptr %98, %100
  br i1 %cmp.i.i51, label %if.then.i.i53, label %OUT_RING.exit48.OUT_PKT7.exit55_crit_edge

OUT_RING.exit48.OUT_PKT7.exit55_crit_edge:        ; preds = %OUT_RING.exit48
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit55

if.then.i.i53:                                    ; preds = %OUT_RING.exit48
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i52 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %101 = ptrtoint ptr %start.i.i52 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %start.i.i52, align 4
  %103 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %next.i.i, align 8
  br label %OUT_PKT7.exit55

OUT_PKT7.exit55:                                  ; preds = %if.then.i.i53, %OUT_RING.exit48.OUT_PKT7.exit55_crit_edge
  %104 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i.i54 = getelementptr i32, ptr %105, i32 1
  store ptr %incdec.ptr.i.i54, ptr %next.i.i, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1894383617, ptr %105, align 4
  %107 = load ptr, ptr %next.i.i, align 8
  %108 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %end.i.i, align 8
  %cmp.i58 = icmp eq ptr %107, %109
  br i1 %cmp.i58, label %if.then.i60, label %OUT_PKT7.exit55.OUT_RING.exit62_crit_edge

OUT_PKT7.exit55.OUT_RING.exit62_crit_edge:        ; preds = %OUT_PKT7.exit55
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit62

if.then.i60:                                      ; preds = %OUT_PKT7.exit55
  call void @__sanitizer_cov_trace_pc() #11
  %start.i59 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %110 = ptrtoint ptr %start.i59 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %start.i59, align 4
  %112 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %next.i.i, align 8
  br label %OUT_RING.exit62

OUT_RING.exit62:                                  ; preds = %if.then.i60, %OUT_PKT7.exit55.OUT_RING.exit62_crit_edge
  %113 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i61 = getelementptr i32, ptr %114, i32 1
  store ptr %incdec.ptr.i61, ptr %next.i.i, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %114, align 4
  tail call void @adreno_wait_ring(ptr noundef %3, i32 noundef 2) #9
  %116 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %next.i.i, align 8
  %118 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %end.i.i, align 8
  %cmp.i.i65 = icmp eq ptr %117, %119
  br i1 %cmp.i.i65, label %if.then.i.i67, label %OUT_RING.exit62.OUT_PKT7.exit69_crit_edge

OUT_RING.exit62.OUT_PKT7.exit69_crit_edge:        ; preds = %OUT_RING.exit62
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit69

if.then.i.i67:                                    ; preds = %OUT_RING.exit62
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i66 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %120 = ptrtoint ptr %start.i.i66 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %start.i.i66, align 4
  %122 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %next.i.i, align 8
  br label %OUT_PKT7.exit69

OUT_PKT7.exit69:                                  ; preds = %if.then.i.i67, %OUT_RING.exit62.OUT_PKT7.exit69_crit_edge
  %123 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i.i68 = getelementptr i32, ptr %124, i32 1
  store ptr %incdec.ptr.i.i68, ptr %next.i.i, align 8
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1880883201, ptr %124, align 4
  %126 = load ptr, ptr %next.i.i, align 8
  %127 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %end.i.i, align 8
  %cmp.i72 = icmp eq ptr %126, %128
  br i1 %cmp.i72, label %if.then.i74, label %OUT_PKT7.exit69.OUT_RING.exit76_crit_edge

OUT_PKT7.exit69.OUT_RING.exit76_crit_edge:        ; preds = %OUT_PKT7.exit69
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit76

if.then.i74:                                      ; preds = %OUT_PKT7.exit69
  call void @__sanitizer_cov_trace_pc() #11
  %start.i73 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %129 = ptrtoint ptr %start.i73 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %start.i73, align 4
  %131 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %130, ptr %next.i.i, align 8
  br label %OUT_RING.exit76

OUT_RING.exit76:                                  ; preds = %if.then.i74, %OUT_PKT7.exit69.OUT_RING.exit76_crit_edge
  %132 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i75 = getelementptr i32, ptr %133, i32 1
  store ptr %incdec.ptr.i75, ptr %next.i.i, align 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %133, align 4
  tail call void @adreno_wait_ring(ptr noundef %3, i32 noundef 5) #9
  %135 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %next.i.i, align 8
  %137 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %end.i.i, align 8
  %cmp.i.i79 = icmp eq ptr %136, %138
  br i1 %cmp.i.i79, label %if.then.i.i81, label %OUT_RING.exit76.OUT_PKT7.exit83_crit_edge

OUT_RING.exit76.OUT_PKT7.exit83_crit_edge:        ; preds = %OUT_RING.exit76
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_PKT7.exit83

if.then.i.i81:                                    ; preds = %OUT_RING.exit76
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i80 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %139 = ptrtoint ptr %start.i.i80 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %start.i.i80, align 4
  %141 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %140, ptr %next.i.i, align 8
  br label %OUT_PKT7.exit83

OUT_PKT7.exit83:                                  ; preds = %if.then.i.i81, %OUT_RING.exit76.OUT_PKT7.exit83_crit_edge
  %142 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i.i82 = getelementptr i32, ptr %143, i32 1
  store ptr %incdec.ptr.i.i82, ptr %next.i.i, align 8
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1886060548, ptr %143, align 4
  %145 = load ptr, ptr %next.i.i, align 8
  %146 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %end.i.i, align 8
  %cmp.i86 = icmp eq ptr %145, %147
  br i1 %cmp.i86, label %if.then.i88, label %OUT_PKT7.exit83.OUT_RING.exit90_crit_edge

OUT_PKT7.exit83.OUT_RING.exit90_crit_edge:        ; preds = %OUT_PKT7.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit90

if.then.i88:                                      ; preds = %OUT_PKT7.exit83
  call void @__sanitizer_cov_trace_pc() #11
  %start.i87 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %148 = ptrtoint ptr %start.i87 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %start.i87, align 4
  %150 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %149, ptr %next.i.i, align 8
  br label %OUT_RING.exit90

OUT_RING.exit90:                                  ; preds = %if.then.i88, %OUT_PKT7.exit83.OUT_RING.exit90_crit_edge
  %151 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i89 = getelementptr i32, ptr %152, i32 1
  store ptr %incdec.ptr.i89, ptr %next.i.i, align 8
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %152, align 4
  %154 = load ptr, ptr %next.i.i, align 8
  %155 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %end.i.i, align 8
  %cmp.i93 = icmp eq ptr %154, %156
  br i1 %cmp.i93, label %if.then.i95, label %OUT_RING.exit90.OUT_RING.exit97_crit_edge

OUT_RING.exit90.OUT_RING.exit97_crit_edge:        ; preds = %OUT_RING.exit90
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit97

if.then.i95:                                      ; preds = %OUT_RING.exit90
  call void @__sanitizer_cov_trace_pc() #11
  %start.i94 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %157 = ptrtoint ptr %start.i94 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %start.i94, align 4
  %159 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %158, ptr %next.i.i, align 8
  br label %OUT_RING.exit97

OUT_RING.exit97:                                  ; preds = %if.then.i95, %OUT_RING.exit90.OUT_RING.exit97_crit_edge
  %160 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i96 = getelementptr i32, ptr %161, i32 1
  store ptr %incdec.ptr.i96, ptr %next.i.i, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %161, align 4
  %163 = load ptr, ptr %next.i.i, align 8
  %164 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %end.i.i, align 8
  %cmp.i100 = icmp eq ptr %163, %165
  br i1 %cmp.i100, label %if.then.i102, label %OUT_RING.exit97.OUT_RING.exit104_crit_edge

OUT_RING.exit97.OUT_RING.exit104_crit_edge:       ; preds = %OUT_RING.exit97
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit104

if.then.i102:                                     ; preds = %OUT_RING.exit97
  call void @__sanitizer_cov_trace_pc() #11
  %start.i101 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %166 = ptrtoint ptr %start.i101 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %start.i101, align 4
  %168 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %167, ptr %next.i.i, align 8
  br label %OUT_RING.exit104

OUT_RING.exit104:                                 ; preds = %if.then.i102, %OUT_RING.exit97.OUT_RING.exit104_crit_edge
  %169 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i103 = getelementptr i32, ptr %170, i32 1
  store ptr %incdec.ptr.i103, ptr %next.i.i, align 8
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 1, ptr %170, align 4
  %172 = load ptr, ptr %next.i.i, align 8
  %173 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %end.i.i, align 8
  %cmp.i107 = icmp eq ptr %172, %174
  br i1 %cmp.i107, label %if.then.i109, label %OUT_RING.exit104.OUT_RING.exit111_crit_edge

OUT_RING.exit104.OUT_RING.exit111_crit_edge:      ; preds = %OUT_RING.exit104
  call void @__sanitizer_cov_trace_pc() #11
  br label %OUT_RING.exit111

if.then.i109:                                     ; preds = %OUT_RING.exit104
  call void @__sanitizer_cov_trace_pc() #11
  %start.i108 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %175 = ptrtoint ptr %start.i108 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %start.i108, align 4
  %177 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %176, ptr %next.i.i, align 8
  br label %OUT_RING.exit111

OUT_RING.exit111:                                 ; preds = %if.then.i109, %OUT_RING.exit104.OUT_RING.exit111_crit_edge
  %178 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i110 = getelementptr i32, ptr %179, i32 1
  store ptr %incdec.ptr.i110, ptr %next.i.i, align 8
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 1, ptr %179, align 4
  %preempt_lock.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 16
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %preempt_lock.i) #9
  %181 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %next.i.i, align 8
  %cur.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 5
  %183 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %182, ptr %cur.i, align 4
  %start.i.i113 = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %184 = ptrtoint ptr %start.i.i113 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %start.i.i113, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %182 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %185 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 2
  %rem.i.i = srem i32 %sub.ptr.div.i.i, 8192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %preempt_lock.i, i32 noundef %call6.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @arm_heavy_mb() #9
  %cur_ring.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 9
  %186 = ptrtoint ptr %cur_ring.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cur_ring.i, align 8
  %cmp14.i = icmp eq ptr %187, %3
  br i1 %cmp14.i, label %land.lhs.true.i, label %OUT_RING.exit111.a5xx_flush.exit_crit_edge

OUT_RING.exit111.a5xx_flush.exit_crit_edge:       ; preds = %OUT_RING.exit111
  call void @__sanitizer_cov_trace_pc() #11
  br label %a5xx_flush.exit

land.lhs.true.i:                                  ; preds = %OUT_RING.exit111
  %preempt_state1.i.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %preempt_state1.i.i, i32 noundef 4) #9
  %188 = ptrtoint ptr %preempt_state1.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile i32, ptr %preempt_state1.i.i, align 4
  %190 = and i32 %189, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %.not.i = icmp eq i32 %190, 0
  br i1 %.not.i, label %if.then17.i, label %land.lhs.true.i.a5xx_flush.exit_crit_edge

land.lhs.true.i.a5xx_flush.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a5xx_flush.exit

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %191 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %192, i32 8220
  tail call void @msm_writel(i32 noundef %rem.i.i, ptr noundef %add.ptr.i.i) #9
  br label %a5xx_flush.exit

a5xx_flush.exit:                                  ; preds = %if.then17.i, %land.lhs.true.i.a5xx_flush.exit_crit_edge, %OUT_RING.exit111.a5xx_flush.exit_crit_edge
  %call = tail call zeroext i1 @a5xx_idle(ptr noundef %gpu, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %a5xx_flush.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_rmw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_fw_create_bo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_zap_shader_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_set_remote_state(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_preempt_trigger(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_retire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_preempt_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_recover(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_show(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_state_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_kernel_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_gpu_state_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_gpu_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !133, !135, !136, !137, !138, !139, !141, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1082, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1091, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1768, i32 3}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @a50x_hwcg, !9, !"a50x_hwcg", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 338, i32 4}
!10 = !{ptr @a512_hwcg, !11, !"a512_hwcg", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 377, i32 4}
!12 = !{ptr @a5xx_hwcg, !13, !"a5xx_hwcg", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 245, i32 3}
!14 = !{ptr @a5xx_registers, !15, !"a5xx_registers", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1305, i32 18}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1740, i32 29}
!18 = !{ptr @funcs, !19, !"funcs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1700, i32 38}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 935, i32 49}
!22 = distinct !{null, !23, !"__print_once", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 997, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @a5xx_hw_init._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @a5xx_hw_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 584, i32 4}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 589, i32 45}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 599, i32 4}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 604, i32 45}
!38 = !{ptr @a5xx_zap_shader_init.loaded, !39, !"loaded", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 641, i32 14}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 633, i32 3}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1372, i32 3}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1383, i32 3}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1172, i32 3}
!48 = !{ptr @a5xx_rbbm_err_irq._rs, !47, !"_rs", i1 false, i1 false}
!49 = !{ptr @__func__.a5xx_rbbm_err_irq, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @a5xx_rbbm_err_irq._entry, !47, !"_entry", i1 false, i1 false}
!52 = !{ptr @a5xx_rbbm_err_irq._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @a5xx_rbbm_err_irq._rs.22, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1187, i32 3}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @a5xx_rbbm_err_irq._entry.23, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @a5xx_rbbm_err_irq._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @a5xx_rbbm_err_irq._rs.26, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1190, i32 3}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @a5xx_rbbm_err_irq._entry.27, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @a5xx_rbbm_err_irq._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @a5xx_rbbm_err_irq._rs.30, !66, !"_rs", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1194, i32 3}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @a5xx_rbbm_err_irq._entry.31, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @a5xx_rbbm_err_irq._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @a5xx_rbbm_err_irq._rs.34, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1198, i32 3}
!72 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @a5xx_rbbm_err_irq._entry.35, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @a5xx_rbbm_err_irq._entry_ptr.37, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @a5xx_rbbm_err_irq._rs.38, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1202, i32 3}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @a5xx_rbbm_err_irq._entry.39, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @a5xx_rbbm_err_irq._entry_ptr.41, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @a5xx_rbbm_err_irq._rs.42, !81, !"_rs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1205, i32 3}
!82 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @a5xx_rbbm_err_irq._entry.43, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @a5xx_rbbm_err_irq._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @a5xx_cp_err_irq._rs, !86, !"_rs", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1133, i32 3}
!87 = !{ptr @__func__.a5xx_cp_err_irq, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @a5xx_cp_err_irq._entry, !86, !"_entry", i1 false, i1 false}
!90 = !{ptr @a5xx_cp_err_irq._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @a5xx_cp_err_irq._rs.47, !92, !"_rs", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1138, i32 3}
!93 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @a5xx_cp_err_irq._entry.48, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @a5xx_cp_err_irq._entry_ptr.50, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @a5xx_cp_err_irq._rs.51, !97, !"_rs", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1142, i32 3}
!98 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @a5xx_cp_err_irq._entry.52, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @a5xx_cp_err_irq._entry_ptr.54, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @a5xx_cp_err_irq._rs.55, !102, !"_rs", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1147, i32 3}
!103 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @a5xx_cp_err_irq._entry.56, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @a5xx_cp_err_irq._entry_ptr.58, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1155, i32 30}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1156, i32 4}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1156, i32 20}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1156, i32 36}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1156, i32 48}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1157, i32 4}
!118 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1157, i32 12}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1157, i32 23}
!122 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1157, i32 43}
!124 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1158, i32 4}
!126 = !{ptr @a5xx_cp_err_irq._rs.69, !127, !"_rs", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1160, i32 3}
!128 = !{ptr @.str.71, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @a5xx_cp_err_irq._entry.70, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @a5xx_cp_err_irq._entry_ptr.72, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1237, i32 2}
!133 = !{ptr @a5xx_uche_err_irq._rs, !134, !"_rs", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1214, i32 2}
!135 = !{ptr @__func__.a5xx_uche_err_irq, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @a5xx_uche_err_irq._entry, !134, !"_entry", i1 false, i1 false}
!138 = !{ptr @a5xx_uche_err_irq._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @a5xx_gpmu_err_irq._rs, !140, !"_rs", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1220, i32 2}
!141 = !{ptr @__func__.a5xx_gpmu_err_irq, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.75, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @a5xx_gpmu_err_irq._entry, !140, !"_entry", i1 false, i1 false}
!144 = !{ptr @a5xx_gpmu_err_irq._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1017, i32 3}
!147 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @a5xx_recover._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @a5xx_recover._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.78, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1338, i32 2}
!152 = !{ptr @.str.79, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.80, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1633, i32 16}
!155 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1650, i32 18}
!157 = !{ptr @a5xx_hlsq_aperture_regs, !158, !"a5xx_hlsq_aperture_regs", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1486, i32 3}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1455, i32 39}
!161 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1035, i32 2}
!163 = !{ptr @a5xx_fault_handler._rs, !164, !"_rs", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_gpu.c", i32 1106, i32 2}
!165 = !{ptr @__func__.a5xx_fault_handler, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @a5xx_fault_handler._entry, !164, !"_entry", i1 false, i1 false}
!168 = !{ptr @a5xx_fault_handler._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{i8 0, i8 2}
!179 = !{i64 2157727140}
!180 = !{i64 2148353730}
!181 = !{i64 2148268194, i64 2148268226, i64 2148268255, i64 2148268289, i64 2148268320, i64 2148268343}
!182 = !{!"branch_weights", i32 2000, i32 1}
!183 = !{i64 2149683576}
!184 = distinct !{null, ptr @drm_gem_object_free}
!185 = !{i64 2157721217}
!186 = !{i64 2157721059}
!187 = !{!"branch_weights", i32 1, i32 2000}
!188 = !{i64 2148654733, i64 2148655013, i64 2148655347, i64 2148655681}
!189 = !{i64 6828390}
!190 = !{i64 2157823382}
!191 = !{i64 2157823948}
