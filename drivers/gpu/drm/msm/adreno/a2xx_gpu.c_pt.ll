; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/adreno/a2xx_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a2xx_gpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.msm_gpu_perfcntr = type { i32, i32, i32, ptr }
%struct.adreno_gpu_funcs = type { %struct.msm_gpu_funcs, ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.106, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.106 = type { i8, i64 }
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
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.firmware = type { i32, ptr, ptr }
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
%struct.msm_gpu_state = type { %struct.kref, %struct.timespec64, [4 x %struct.anon.97], i32, ptr, i32, ptr, ptr, %struct.msm_gpu_fault_info, i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.anon.97 = type { i64, i32, i32, i32, i32, ptr, i32, i8 }
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
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }

@a2xx_gpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 506, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no a2xx device\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"a2xx_gpu_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/msm/adreno/a2xx_gpu.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@a2xx_gpu_init._entry_ptr = internal global ptr @a2xx_gpu_init._entry, section ".printk_index", align 4
@perfcntrs = internal constant { [0 x %struct.msm_gpu_perfcntr], [32 x i8] } zeroinitializer, align 32
@a200_registers = internal constant { [201 x i32], [220 x i8] } { [201 x i32] [i32 0, i32 2, i32 4, i32 11, i32 59, i32 61, i32 64, i32 68, i32 70, i32 71, i32 448, i32 449, i32 451, i32 456, i32 469, i32 473, i32 476, i32 477, i32 490, i32 490, i32 494, i32 499, i32 502, i32 503, i32 508, i32 511, i32 913, i32 914, i32 923, i32 926, i32 946, i32 949, i32 951, i32 951, i32 1016, i32 1019, i32 1088, i32 1088, i32 1091, i32 1092, i32 1099, i32 1099, i32 1101, i32 1103, i32 1106, i32 1106, i32 1108, i32 1115, i32 1151, i32 1151, i32 1400, i32 1415, i32 1481, i32 1481, i32 1488, i32 1488, i32 1537, i32 1540, i32 1542, i32 1545, i32 1547, i32 1550, i32 1555, i32 1556, i32 2601, i32 2603, i32 2607, i32 2609, i32 2624, i32 2627, i32 2629, i32 2629, i32 2638, i32 2639, i32 3116, i32 3116, i32 3120, i32 3120, i32 3128, i32 3132, i32 3136, i32 3136, i32 3140, i32 3140, i32 3200, i32 3206, i32 3208, i32 3220, i32 3225, i32 3226, i32 3236, i32 3237, i32 3328, i32 3331, i32 3334, i32 3334, i32 3336, i32 3339, i32 3380, i32 3381, i32 3502, i32 3521, i32 3528, i32 3540, i32 3544, i32 3545, i32 3584, i32 3584, i32 3586, i32 3588, i32 3607, i32 3614, i32 3776, i32 3785, i32 3787, i32 3788, i32 3792, i32 3792, i32 3796, i32 3799, i32 3808, i32 3810, i32 3841, i32 3842, i32 3852, i32 3852, i32 3854, i32 3858, i32 3878, i32 3882, i32 3884, i32 3884, i32 8192, i32 8194, i32 8198, i32 8207, i32 8320, i32 8322, i32 8448, i32 8457, i32 8460, i32 8468, i32 8576, i32 8580, i32 8693, i32 8695, i32 8704, i32 8712, i32 8832, i32 8835, i32 8851, i32 8852, i32 8960, i32 8968, i32 8978, i32 8978, i32 8982, i32 8989, i32 8996, i32 8998, i32 9088, i32 9091, i32 9216, i32 9218, i32 9222, i32 9231, i32 9344, i32 9346, i32 9472, i32 9481, i32 9484, i32 9492, i32 9600, i32 9604, i32 9717, i32 9719, i32 9728, i32 9736, i32 9856, i32 9859, i32 9875, i32 9876, i32 9984, i32 9992, i32 10002, i32 10002, i32 10006, i32 10013, i32 10020, i32 10022, i32 10112, i32 10115, i32 16384, i32 16387, i32 18432, i32 18437, i32 18688, i32 18688, i32 18696, i32 18696, i32 -1], [220 x i8] zeroinitializer }, align 32
@a225_registers = internal constant { [219 x i32], [212 x i8] } { [219 x i32] [i32 0, i32 2, i32 4, i32 11, i32 59, i32 61, i32 64, i32 68, i32 70, i32 71, i32 316, i32 316, i32 320, i32 335, i32 448, i32 449, i32 451, i32 456, i32 469, i32 473, i32 476, i32 477, i32 490, i32 490, i32 494, i32 499, i32 502, i32 503, i32 508, i32 511, i32 913, i32 914, i32 923, i32 926, i32 946, i32 949, i32 951, i32 951, i32 1016, i32 1019, i32 1088, i32 1088, i32 1091, i32 1092, i32 1099, i32 1099, i32 1101, i32 1103, i32 1106, i32 1106, i32 1108, i32 1115, i32 1151, i32 1151, i32 1400, i32 1415, i32 1481, i32 1481, i32 1488, i32 1488, i32 1537, i32 1540, i32 1542, i32 1545, i32 1547, i32 1550, i32 1555, i32 1556, i32 2601, i32 2603, i32 2607, i32 2609, i32 2624, i32 2624, i32 2626, i32 2627, i32 2629, i32 2629, i32 2638, i32 2639, i32 3073, i32 3101, i32 3120, i32 3120, i32 3128, i32 3129, i32 3132, i32 3132, i32 3200, i32 3201, i32 3208, i32 3219, i32 3328, i32 3331, i32 3333, i32 3334, i32 3336, i32 3339, i32 3380, i32 3381, i32 3502, i32 3521, i32 3528, i32 3540, i32 3544, i32 3545, i32 3584, i32 3584, i32 3586, i32 3588, i32 3607, i32 3614, i32 3776, i32 3785, i32 3787, i32 3788, i32 3792, i32 3792, i32 3796, i32 3799, i32 3808, i32 3810, i32 3841, i32 3842, i32 8192, i32 8207, i32 8320, i32 8322, i32 8448, i32 8457, i32 8460, i32 8468, i32 8576, i32 8580, i32 8693, i32 8695, i32 8704, i32 8706, i32 8708, i32 8710, i32 8712, i32 8720, i32 8736, i32 8738, i32 8832, i32 8834, i32 8852, i32 8852, i32 8855, i32 8855, i32 8960, i32 8970, i32 8978, i32 8978, i32 8981, i32 8982, i32 8984, i32 8989, i32 8996, i32 8998, i32 9024, i32 9047, i32 9056, i32 9056, i32 9088, i32 9091, i32 9216, i32 9231, i32 9344, i32 9346, i32 9472, i32 9481, i32 9484, i32 9492, i32 9600, i32 9604, i32 9717, i32 9719, i32 9728, i32 9730, i32 9732, i32 9734, i32 9736, i32 9744, i32 9760, i32 9762, i32 9856, i32 9858, i32 9876, i32 9876, i32 9879, i32 9879, i32 9984, i32 9994, i32 10002, i32 10002, i32 10005, i32 10006, i32 10008, i32 10013, i32 10020, i32 10022, i32 10048, i32 10071, i32 10080, i32 10080, i32 10112, i32 10115, i32 16384, i32 16387, i32 18432, i32 18438, i32 18440, i32 18440, i32 18688, i32 18688, i32 18696, i32 18696, i32 -1], [212 x i8] zeroinitializer }, align 32
@a220_registers = internal constant { [205 x i32], [204 x i8] } { [205 x i32] [i32 0, i32 2, i32 4, i32 11, i32 59, i32 61, i32 64, i32 68, i32 70, i32 71, i32 448, i32 449, i32 451, i32 456, i32 469, i32 473, i32 476, i32 477, i32 490, i32 490, i32 494, i32 499, i32 502, i32 503, i32 508, i32 511, i32 913, i32 914, i32 923, i32 926, i32 946, i32 949, i32 951, i32 951, i32 1016, i32 1019, i32 1088, i32 1088, i32 1091, i32 1092, i32 1099, i32 1099, i32 1101, i32 1103, i32 1106, i32 1106, i32 1108, i32 1115, i32 1151, i32 1151, i32 1400, i32 1415, i32 1481, i32 1481, i32 1488, i32 1488, i32 1537, i32 1540, i32 1542, i32 1545, i32 1547, i32 1550, i32 1555, i32 1556, i32 2601, i32 2603, i32 2607, i32 2609, i32 2624, i32 2624, i32 2626, i32 2627, i32 2629, i32 2629, i32 2638, i32 2639, i32 3120, i32 3120, i32 3128, i32 3129, i32 3132, i32 3132, i32 3200, i32 3201, i32 3208, i32 3219, i32 3328, i32 3331, i32 3333, i32 3334, i32 3336, i32 3339, i32 3380, i32 3381, i32 3502, i32 3521, i32 3528, i32 3540, i32 3544, i32 3545, i32 3584, i32 3584, i32 3586, i32 3588, i32 3607, i32 3614, i32 3776, i32 3785, i32 3787, i32 3788, i32 3792, i32 3792, i32 3796, i32 3799, i32 3808, i32 3810, i32 3841, i32 3842, i32 8192, i32 8194, i32 8198, i32 8207, i32 8320, i32 8322, i32 8448, i32 8450, i32 8452, i32 8457, i32 8460, i32 8468, i32 8576, i32 8580, i32 8693, i32 8695, i32 8704, i32 8706, i32 8708, i32 8708, i32 8712, i32 8712, i32 8832, i32 8834, i32 8852, i32 8852, i32 8960, i32 8968, i32 8969, i32 8970, i32 8978, i32 8978, i32 8982, i32 8982, i32 8984, i32 8989, i32 8996, i32 8998, i32 9088, i32 9091, i32 9216, i32 9218, i32 9222, i32 9231, i32 9344, i32 9346, i32 9472, i32 9474, i32 9476, i32 9481, i32 9484, i32 9492, i32 9600, i32 9604, i32 9717, i32 9719, i32 9728, i32 9730, i32 9732, i32 9734, i32 9736, i32 9736, i32 9856, i32 9858, i32 9876, i32 9876, i32 9984, i32 9992, i32 10002, i32 10002, i32 10006, i32 10006, i32 10008, i32 10013, i32 10020, i32 10022, i32 10112, i32 10115, i32 16384, i32 16387, i32 18432, i32 18437, i32 18688, i32 18688, i32 18696, i32 18696, i32 -1], [204 x i8] zeroinitializer }, align 32
@funcs = internal constant { %struct.adreno_gpu_funcs, [44 x i8] } { %struct.adreno_gpu_funcs { %struct.msm_gpu_funcs { ptr @adreno_get_param, ptr @a2xx_hw_init, ptr @msm_gpu_pm_suspend, ptr @msm_gpu_pm_resume, ptr @a2xx_submit, ptr null, ptr @a2xx_irq, ptr @adreno_active_ring, ptr @a2xx_recover, ptr @a2xx_destroy, ptr @adreno_show, ptr null, ptr null, ptr @a2xx_gpu_state_get, ptr @adreno_gpu_state_put, ptr null, ptr null, ptr @a2xx_create_address_space, ptr null, ptr @a2xx_get_rptr }, ptr null }, [44 x i8] zeroinitializer }, align 32
@a2xx_gpu_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 535, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No memory protection without MMU\0A\00", [62 x i8] zeroinitializer }, align 32
@a2xx_gpu_init._entry_ptr.7 = internal global ptr @a2xx_gpu_init._entry.5, section ".printk_index", align 4
@allow_vram_carveout = external dso_local local_unnamed_addr global i8, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"loading PM4 ucode version: %x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"loading PFP ucode version: %x\0A\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: timeout waiting for GPU to idle!\0A\00", [58 x i8] zeroinitializer }, align 32
@a2xx_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 307, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MH_INT: %08X\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a2xx_irq\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@a2xx_irq._entry_ptr = internal global ptr @a2xx_irq._entry, section ".printk_index", align 4
@a2xx_irq._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 309, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MMU_PAGE_FAULT: %08X\0A\00", [42 x i8] zeroinitializer }, align 32
@a2xx_irq._entry_ptr.17 = internal global ptr @a2xx_irq._entry.15, section ".printk_index", align 4
@a2xx_irq._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.2, i32 319, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CP_INT: %08X\0A\00", [18 x i8] zeroinitializer }, align 32
@a2xx_irq._entry_ptr.20 = internal global ptr @a2xx_irq._entry.18, section ".printk_index", align 4
@a2xx_irq._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.2, i32 327, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RBBM_INT: %08X\0A\00", [16 x i8] zeroinitializer }, align 32
@a2xx_irq._entry_ptr.23 = internal global ptr @a2xx_irq._entry.21, section ".printk_index", align 4
@a2xx_recover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CP_SCRATCH_REG%d: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a2xx_recover\00", [19 x i8] zeroinitializer }, align 32
@a2xx_recover._entry_ptr = internal global ptr @a2xx_recover._entry, section ".printk_index", align 4
@hang_debug = external dso_local local_unnamed_addr global i8, align 1
@a2xx_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"status:   %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"a2xx_dump\00", [22 x i8] zeroinitializer }, align 32
@a2xx_dump._entry_ptr = internal global ptr @a2xx_dump._entry, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 131072, i64 262144, i64 524288]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 506, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [10 x i8] c"perfcntrs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 492, i32 38 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"a200_registers\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 337, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"a225_registers\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 396, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"a220_registers\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 366, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"funcs\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 471, i32 38 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 535, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 110, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 222, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 233, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 289, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 307, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 308, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 319, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 327, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 254, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 431, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [41 x i8] c"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 456, i32 45 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @a2xx_dump._entry, ptr @a2xx_dump._entry_ptr, ptr @a2xx_gpu_init._entry, ptr @a2xx_gpu_init._entry.5, ptr @a2xx_gpu_init._entry_ptr, ptr @a2xx_gpu_init._entry_ptr.7, ptr @a2xx_irq._entry, ptr @a2xx_irq._entry.15, ptr @a2xx_irq._entry.18, ptr @a2xx_irq._entry.21, ptr @a2xx_irq._entry_ptr, ptr @a2xx_irq._entry_ptr.17, ptr @a2xx_irq._entry_ptr.20, ptr @a2xx_irq._entry_ptr.23, ptr @a2xx_recover._entry, ptr @a2xx_recover._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @perfcntrs, ptr @a200_registers, ptr @a225_registers, ptr @a220_registers, ptr @funcs, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a2xx_gpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perfcntrs to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a200_registers to i32), i32 804, i32 1024, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a225_registers to i32), i32 876, i32 1088, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a220_registers to i32), i32 820, i32 1024, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a2xx_gpu_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a2xx_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a2xx_irq._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a2xx_irq._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a2xx_irq._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a2xx_recover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a2xx_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @a2xx_gpu_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str) #8
  br label %if.end33

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 928) #9
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.if.end33_crit_edge, label %if.end4

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end4:                                          ; preds = %if.end
  %perfcntrs = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 11
  %7 = ptrtoint ptr %perfcntrs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @perfcntrs, ptr %perfcntrs, align 4
  %num_perfcntrs = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %num_perfcntrs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %num_perfcntrs, align 8
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 210, i32 %10)
  %cmp.i = icmp ult i32 %10, 210
  br i1 %cmp.i, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %registers = getelementptr inbounds %struct.adreno_gpu, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %registers to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @a200_registers, ptr %registers, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 225, i32 %10)
  %cmp.i58 = icmp eq i32 %10, 225
  %registers10 = getelementptr inbounds %struct.adreno_gpu, ptr %call7.i.i, i32 0, i32 6
  br i1 %cmp.i58, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %registers10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @a225_registers, ptr %registers10, align 4
  br label %if.end14

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %registers10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @a220_registers, ptr %registers10, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then9, %if.then7
  %call15 = tail call i32 @adreno_gpu_init(ptr noundef %dev, ptr noundef nonnull %3, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @funcs, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.if.then30_crit_edge

if.end14.if.then30_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.end18:                                         ; preds = %if.end14
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 24
  %14 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aspace, align 8
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %do.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end23:                                         ; preds = %if.end18
  %dev24 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %16 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.6) #8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @allow_vram_carveout to i32))
  %18 = load i8, ptr @allow_vram_carveout, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool25.not = icmp eq i8 %18, 0
  br i1 %tobool25.not, label %do.end23.if.then30_crit_edge, label %do.end23.cleanup_crit_edge

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end23.if.then30_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.then30:                                        ; preds = %do.end23.if.then30_crit_edge, %if.end14.if.then30_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14.if.then30_crit_edge ], [ -6, %do.end23.if.then30_crit_edge ]
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7.i.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %20) #5
  tail call void @adreno_gpu_cleanup(ptr noundef nonnull %call7.i.i) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end.if.end33_crit_edge, %do.end
  %ret.062 = phi i32 [ %ret.0, %if.then30 ], [ -12, %if.end.if.end33_crit_edge ], [ -6, %do.end ]
  %21 = inttoptr i32 %ret.062 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  %retval.0 = phi ptr [ %21, %if.end33 ], [ %call7.i.i, %do.end23.cleanup_crit_edge ], [ %call7.i.i, %if.end18.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a2xx_destroy(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %1) #5
  tail call void @adreno_gpu_cleanup(ptr noundef %gpu) #5
  tail call void @kfree(ptr noundef %gpu) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_get_param(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a2xx_hw_init(ptr noundef %gpu) #0 align 64 {
entry:
  %pt_base = alloca i32, align 4
  %tran_error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pt_base) #5
  %0 = ptrtoint ptr %pt_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pt_base, align 4, !annotation !70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tran_error) #5
  %1 = ptrtoint ptr %tran_error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tran_error, align 4, !annotation !70
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %2 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aspace, align 8
  %mmu = getelementptr inbounds %struct.msm_gem_address_space, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmu, align 4
  call void @msm_gpummu_params(ptr noundef %5, ptr noundef nonnull %pt_base, ptr noundef nonnull %tran_error) #5
  %6 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpu, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %7) #5
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 2008
  call void @msm_writel(i32 noundef 268435456, ptr noundef %add.ptr.i) #5
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i151 = getelementptr i8, ptr %11, i32 3696
  call void @msm_writel(i32 noundef -2, ptr noundef %add.ptr.i151) #5
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i153 = getelementptr i8, ptr %13, i32 3700
  call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i153) #5
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i155 = getelementptr i8, ptr %15, i32 240
  call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i155) #5
  call void @msleep(i32 noundef 30) #5
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i157 = getelementptr i8, ptr %17, i32 240
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i157) #5
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %18 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 225, i32 %19)
  %cmp.i = icmp eq i32 %19, 225
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i159 = getelementptr i8, ptr %21, i32 13316
  call void @msm_writel(i32 noundef 402653184, ptr noundef %add.ptr.i159) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i161 = getelementptr i8, ptr %23, i32 236
  call void @msm_writel(i32 noundef 17474, ptr noundef %add.ptr.i161) #5
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i163 = getelementptr i8, ptr %25, i32 280
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i163) #5
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i165 = getelementptr i8, ptr %27, i32 284
  call void @msm_writel(i32 noundef -4096, ptr noundef %add.ptr.i165) #5
  %28 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i167 = getelementptr i8, ptr %29, i32 256
  call void @msm_writel(i32 noundef 22369617, ptr noundef %add.ptr.i167) #5
  %30 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i169 = getelementptr i8, ptr %31, i32 260
  call void @msm_writel(i32 noundef 16781311, ptr noundef %add.ptr.i169) #5
  %32 = ptrtoint ptr %pt_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pt_base, align 4
  %34 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i171 = getelementptr i8, ptr %35, i32 264
  call void @msm_writel(i32 noundef %33, ptr noundef %add.ptr.i171) #5
  %36 = ptrtoint ptr %tran_error to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tran_error, align 4
  %38 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i173 = getelementptr i8, ptr %39, i32 272
  call void @msm_writel(i32 noundef %37, ptr noundef %add.ptr.i173) #5
  %40 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i175 = getelementptr i8, ptr %41, i32 276
  call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i175) #5
  %42 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i177 = getelementptr i8, ptr %43, i32 10496
  call void @msm_writel(i32 noundef 130606480, ptr noundef %add.ptr.i177) #5
  %44 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 210, i32 %45)
  %cmp.i179 = icmp ult i32 %45, 210
  br i1 %cmp.i179, label %if.end.if.end41_crit_edge, label %if.then40

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i181 = getelementptr i8, ptr %47, i32 10576
  call void @msm_writel(i32 noundef 208647, ptr noundef %add.ptr.i181) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end.if.end41_crit_edge
  %48 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i183 = getelementptr i8, ptr %49, i32 34780
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i183) #5
  %50 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i185 = getelementptr i8, ptr %51, i32 34776
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i185) #5
  %52 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i187 = getelementptr i8, ptr %53, i32 3696
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i187) #5
  %54 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i189 = getelementptr i8, ptr %55, i32 3700
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i189) #5
  %56 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i191 = getelementptr i8, ptr %57, i32 3692
  call void @msm_writel(i32 noundef 524288, ptr noundef %add.ptr.i191) #5
  %58 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i193 = getelementptr i8, ptr %59, i32 3792
  call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i193) #5
  %60 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i195 = getelementptr i8, ptr %61, i32 1992
  call void @msm_writel(i32 noundef -813694976, ptr noundef %add.ptr.i195) #5
  %62 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i197 = getelementptr i8, ptr %63, i32 13520
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i197) #5
  %64 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i199 = getelementptr i8, ptr %65, i32 10504
  call void @msm_writel(i32 noundef 7, ptr noundef %add.ptr.i199) #5
  %gmem = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 3
  %66 = ptrtoint ptr %gmem to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %gmem, align 8
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i32 %67, label %for.inc.2 [
    i32 131072, label %if.end41.for.end_crit_edge
    i32 262144, label %for.end.fold.split
    i32 524288, label %for.end.fold.split228
  ]

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.2:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end.fold.split:                               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end.fold.split228:                            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split228, %for.end.fold.split, %for.inc.2, %if.end41.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 3, %if.end41.for.end_crit_edge ], [ 6, %for.inc.2 ], [ 4, %for.end.fold.split ], [ 5, %for.end.fold.split228 ]
  %69 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i201 = getelementptr i8, ptr %70, i32 15368
  call void @msm_writel(i32 noundef %i.0.lcssa, ptr noundef %add.ptr.i201) #5
  %call45 = call i32 @adreno_hw_init(ptr noundef %gpu) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool.not = icmp eq i32 %call45, 0
  br i1 %tobool.not, label %if.end47, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %for.end
  %71 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i203 = getelementptr i8, ptr %72, i32 1796
  call void @msm_writel(i32 noundef 134218252, ptr noundef %add.ptr.i203) #5
  %rb = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 13
  %73 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rb, align 4
  %iova = getelementptr inbounds %struct.msm_ringbuffer, ptr %74, i32 0, i32 10
  %75 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %iova, align 8
  %conv = trunc i64 %76 to i32
  %77 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i205 = getelementptr i8, ptr %78, i32 1792
  call void @msm_writel(i32 noundef %conv, ptr noundef %add.ptr.i205) #5
  %fw = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 8
  %79 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data, align 4
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %80, align 4
  %arrayidx55 = getelementptr i32, ptr %82, i32 1
  %85 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx55, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %86) #5
  %87 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i207 = getelementptr i8, ptr %88, i32 2032
  call void @msm_writel(i32 noundef 33554432, ptr noundef %add.ptr.i207) #5
  %89 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i209 = getelementptr i8, ptr %90, i32 2016
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i209) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %84)
  %cmp57222 = icmp ugt i32 %84, 7
  br i1 %cmp57222, label %for.body59.preheader, label %if.end47.for.end63_crit_edge

if.end47.for.end63_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end63

for.body59.preheader:                             ; preds = %if.end47
  %div148 = lshr i32 %84, 2
  br label %for.body59

for.body59:                                       ; preds = %for.body59.for.body59_crit_edge, %for.body59.preheader
  %i.1223 = phi i32 [ %inc62, %for.body59.for.body59_crit_edge ], [ 1, %for.body59.preheader ]
  %arrayidx60 = getelementptr i32, ptr %82, i32 %i.1223
  %91 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx60, align 4
  %93 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i211 = getelementptr i8, ptr %94, i32 2024
  call void @msm_writel(i32 noundef %92, ptr noundef %add.ptr.i211) #5
  %inc62 = add nuw nsw i32 %i.1223, 1
  %exitcond.not = icmp eq i32 %inc62, %div148
  br i1 %exitcond.not, label %for.body59.for.end63_crit_edge, label %for.body59.for.body59_crit_edge

for.body59.for.body59_crit_edge:                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body59

for.body59.for.end63_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end63

for.end63:                                        ; preds = %for.body59.for.end63_crit_edge, %if.end47.for.end63_crit_edge
  %arrayidx65 = getelementptr %struct.adreno_gpu, ptr %gpu, i32 0, i32 8, i32 1
  %95 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx65, align 4
  %data66 = getelementptr inbounds %struct.firmware, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %data66 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data66, align 4
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %96, align 4
  %arrayidx71 = getelementptr i32, ptr %98, i32 5
  %101 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx71, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %102) #5
  %103 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i213 = getelementptr i8, ptr %104, i32 768
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i213) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %100)
  %cmp73224 = icmp ugt i32 %100, 7
  br i1 %cmp73224, label %for.body75.preheader, label %for.end63.for.end79_crit_edge

for.end63.for.end79_crit_edge:                    ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end79

for.body75.preheader:                             ; preds = %for.end63
  %div70149 = lshr i32 %100, 2
  br label %for.body75

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %for.body75.preheader
  %i.2225 = phi i32 [ %inc78, %for.body75.for.body75_crit_edge ], [ 1, %for.body75.preheader ]
  %arrayidx76 = getelementptr i32, ptr %98, i32 %i.2225
  %105 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx76, align 4
  %107 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i215 = getelementptr i8, ptr %108, i32 772
  call void @msm_writel(i32 noundef %106, ptr noundef %add.ptr.i215) #5
  %inc78 = add nuw nsw i32 %i.2225, 1
  %exitcond227.not = icmp eq i32 %inc78, %div70149
  br i1 %exitcond227.not, label %for.body75.for.end79_crit_edge, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body75

for.body75.for.end79_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end79

for.end79:                                        ; preds = %for.body75.for.end79_crit_edge, %for.end63.for.end79_crit_edge
  %109 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i217 = getelementptr i8, ptr %110, i32 1876
  call void @msm_writel(i32 noundef 788484, ptr noundef %add.ptr.i217) #5
  %111 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i219 = getelementptr i8, ptr %112, i32 2008
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i219) #5
  %113 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rb, align 4
  call void @adreno_wait_ring(ptr noundef %114, i32 noundef 19) #5
  %next.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %next.i.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 4
  %117 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %116, %118
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.end79.OUT_PKT3.exit.i_crit_edge

for.end79.OUT_PKT3.exit.i_crit_edge:              ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_PKT3.exit.i

if.then.i.i.i:                                    ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #7
  %start.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %119 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %start.i.i.i, align 4
  %121 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %next.i.i.i, align 8
  br label %OUT_PKT3.exit.i

OUT_PKT3.exit.i:                                  ; preds = %if.then.i.i.i, %for.end79.OUT_PKT3.exit.i_crit_edge
  %122 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %123, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %next.i.i.i, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1072609280, ptr %123, align 4
  %125 = load ptr, ptr %next.i.i.i, align 8
  %126 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i = icmp eq ptr %125, %127
  br i1 %cmp.i.i, label %if.then.i.i, label %OUT_PKT3.exit.i.OUT_RING.exit.i_crit_edge

OUT_PKT3.exit.i.OUT_RING.exit.i_crit_edge:        ; preds = %OUT_PKT3.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit.i

if.then.i.i:                                      ; preds = %OUT_PKT3.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %128 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %start.i.i, align 4
  %130 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit.i

OUT_RING.exit.i:                                  ; preds = %if.then.i.i, %OUT_PKT3.exit.i.OUT_RING.exit.i_crit_edge
  %131 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %132, i32 1
  store ptr %incdec.ptr.i.i, ptr %next.i.i.i, align 8
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1023, ptr %132, align 4
  %134 = load ptr, ptr %next.i.i.i, align 8
  %135 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i26.i = icmp eq ptr %134, %136
  br i1 %cmp.i26.i, label %if.then.i28.i, label %OUT_RING.exit.i.OUT_RING.exit30.i_crit_edge

OUT_RING.exit.i.OUT_RING.exit30.i_crit_edge:      ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit30.i

if.then.i28.i:                                    ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i27.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %137 = ptrtoint ptr %start.i27.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %start.i27.i, align 4
  %139 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit30.i

OUT_RING.exit30.i:                                ; preds = %if.then.i28.i, %OUT_RING.exit.i.OUT_RING.exit30.i_crit_edge
  %140 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i29.i = getelementptr i32, ptr %141, i32 1
  store ptr %incdec.ptr.i29.i, ptr %next.i.i.i, align 8
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %141, align 4
  %143 = load ptr, ptr %next.i.i.i, align 8
  %144 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i33.i = icmp eq ptr %143, %145
  br i1 %cmp.i33.i, label %if.then.i35.i, label %OUT_RING.exit30.i.OUT_RING.exit37.i_crit_edge

OUT_RING.exit30.i.OUT_RING.exit37.i_crit_edge:    ; preds = %OUT_RING.exit30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit37.i

if.then.i35.i:                                    ; preds = %OUT_RING.exit30.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i34.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %146 = ptrtoint ptr %start.i34.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %start.i34.i, align 4
  %148 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %147, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit37.i

OUT_RING.exit37.i:                                ; preds = %if.then.i35.i, %OUT_RING.exit30.i.OUT_RING.exit37.i_crit_edge
  %149 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i36.i = getelementptr i32, ptr %150, i32 1
  store ptr %incdec.ptr.i36.i, ptr %next.i.i.i, align 8
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %150, align 4
  %152 = load ptr, ptr %next.i.i.i, align 8
  %153 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i40.i = icmp eq ptr %152, %154
  br i1 %cmp.i40.i, label %if.then.i42.i, label %OUT_RING.exit37.i.OUT_RING.exit44.i_crit_edge

OUT_RING.exit37.i.OUT_RING.exit44.i_crit_edge:    ; preds = %OUT_RING.exit37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit44.i

if.then.i42.i:                                    ; preds = %OUT_RING.exit37.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i41.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %155 = ptrtoint ptr %start.i41.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %start.i41.i, align 4
  %157 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %156, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit44.i

OUT_RING.exit44.i:                                ; preds = %if.then.i42.i, %OUT_RING.exit37.i.OUT_RING.exit44.i_crit_edge
  %158 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i43.i = getelementptr i32, ptr %159, i32 1
  store ptr %incdec.ptr.i43.i, ptr %next.i.i.i, align 8
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %159, align 4
  %161 = load ptr, ptr %next.i.i.i, align 8
  %162 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i47.i = icmp eq ptr %161, %163
  br i1 %cmp.i47.i, label %if.then.i49.i, label %OUT_RING.exit44.i.OUT_RING.exit51.i_crit_edge

OUT_RING.exit44.i.OUT_RING.exit51.i_crit_edge:    ; preds = %OUT_RING.exit44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit51.i

if.then.i49.i:                                    ; preds = %OUT_RING.exit44.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i48.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %164 = ptrtoint ptr %start.i48.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %start.i48.i, align 4
  %166 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %165, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit51.i

OUT_RING.exit51.i:                                ; preds = %if.then.i49.i, %OUT_RING.exit44.i.OUT_RING.exit51.i_crit_edge
  %167 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i50.i = getelementptr i32, ptr %168, i32 1
  store ptr %incdec.ptr.i50.i, ptr %next.i.i.i, align 8
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 128, ptr %168, align 4
  %170 = load ptr, ptr %next.i.i.i, align 8
  %171 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i54.i = icmp eq ptr %170, %172
  br i1 %cmp.i54.i, label %if.then.i56.i, label %OUT_RING.exit51.i.OUT_RING.exit58.i_crit_edge

OUT_RING.exit51.i.OUT_RING.exit58.i_crit_edge:    ; preds = %OUT_RING.exit51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit58.i

if.then.i56.i:                                    ; preds = %OUT_RING.exit51.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i55.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %173 = ptrtoint ptr %start.i55.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %start.i55.i, align 4
  %175 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %174, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit58.i

OUT_RING.exit58.i:                                ; preds = %if.then.i56.i, %OUT_RING.exit51.i.OUT_RING.exit58.i_crit_edge
  %176 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i57.i = getelementptr i32, ptr %177, i32 1
  store ptr %incdec.ptr.i57.i, ptr %next.i.i.i, align 8
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 256, ptr %177, align 4
  %179 = load ptr, ptr %next.i.i.i, align 8
  %180 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i61.i = icmp eq ptr %179, %181
  br i1 %cmp.i61.i, label %if.then.i63.i, label %OUT_RING.exit58.i.OUT_RING.exit65.i_crit_edge

OUT_RING.exit58.i.OUT_RING.exit65.i_crit_edge:    ; preds = %OUT_RING.exit58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit65.i

if.then.i63.i:                                    ; preds = %OUT_RING.exit58.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i62.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %182 = ptrtoint ptr %start.i62.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %start.i62.i, align 4
  %184 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %183, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit65.i

OUT_RING.exit65.i:                                ; preds = %if.then.i63.i, %OUT_RING.exit58.i.OUT_RING.exit65.i_crit_edge
  %185 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i64.i = getelementptr i32, ptr %186, i32 1
  store ptr %incdec.ptr.i64.i, ptr %next.i.i.i, align 8
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 384, ptr %186, align 4
  %188 = load ptr, ptr %next.i.i.i, align 8
  %189 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i68.i = icmp eq ptr %188, %190
  br i1 %cmp.i68.i, label %if.then.i70.i, label %OUT_RING.exit65.i.OUT_RING.exit72.i_crit_edge

OUT_RING.exit65.i.OUT_RING.exit72.i_crit_edge:    ; preds = %OUT_RING.exit65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit72.i

if.then.i70.i:                                    ; preds = %OUT_RING.exit65.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i69.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %191 = ptrtoint ptr %start.i69.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %start.i69.i, align 4
  %193 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %192, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit72.i

OUT_RING.exit72.i:                                ; preds = %if.then.i70.i, %OUT_RING.exit65.i.OUT_RING.exit72.i_crit_edge
  %194 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i71.i = getelementptr i32, ptr %195, i32 1
  store ptr %incdec.ptr.i71.i, ptr %next.i.i.i, align 8
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 512, ptr %195, align 4
  %197 = load ptr, ptr %next.i.i.i, align 8
  %198 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i75.i = icmp eq ptr %197, %199
  br i1 %cmp.i75.i, label %if.then.i77.i, label %OUT_RING.exit72.i.OUT_RING.exit79.i_crit_edge

OUT_RING.exit72.i.OUT_RING.exit79.i_crit_edge:    ; preds = %OUT_RING.exit72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit79.i

if.then.i77.i:                                    ; preds = %OUT_RING.exit72.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i76.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %200 = ptrtoint ptr %start.i76.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %start.i76.i, align 4
  %202 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %201, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit79.i

OUT_RING.exit79.i:                                ; preds = %if.then.i77.i, %OUT_RING.exit72.i.OUT_RING.exit79.i_crit_edge
  %203 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i78.i = getelementptr i32, ptr %204, i32 1
  store ptr %incdec.ptr.i78.i, ptr %next.i.i.i, align 8
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 640, ptr %204, align 4
  %206 = load ptr, ptr %next.i.i.i, align 8
  %207 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i82.i = icmp eq ptr %206, %208
  br i1 %cmp.i82.i, label %if.then.i84.i, label %OUT_RING.exit79.i.OUT_RING.exit86.i_crit_edge

OUT_RING.exit79.i.OUT_RING.exit86.i_crit_edge:    ; preds = %OUT_RING.exit79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit86.i

if.then.i84.i:                                    ; preds = %OUT_RING.exit79.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i83.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %209 = ptrtoint ptr %start.i83.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %start.i83.i, align 4
  %211 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %210, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit86.i

OUT_RING.exit86.i:                                ; preds = %if.then.i84.i, %OUT_RING.exit79.i.OUT_RING.exit86.i_crit_edge
  %212 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i85.i = getelementptr i32, ptr %213, i32 1
  store ptr %incdec.ptr.i85.i, ptr %next.i.i.i, align 8
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 768, ptr %213, align 4
  %215 = load ptr, ptr %next.i.i.i, align 8
  %216 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i89.i = icmp eq ptr %215, %217
  br i1 %cmp.i89.i, label %if.then.i91.i, label %OUT_RING.exit86.i.OUT_RING.exit93.i_crit_edge

OUT_RING.exit86.i.OUT_RING.exit93.i_crit_edge:    ; preds = %OUT_RING.exit86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit93.i

if.then.i91.i:                                    ; preds = %OUT_RING.exit86.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i90.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %218 = ptrtoint ptr %start.i90.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %start.i90.i, align 4
  %220 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %219, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit93.i

OUT_RING.exit93.i:                                ; preds = %if.then.i91.i, %OUT_RING.exit86.i.OUT_RING.exit93.i_crit_edge
  %221 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i92.i = getelementptr i32, ptr %222, i32 1
  store ptr %incdec.ptr.i92.i, ptr %next.i.i.i, align 8
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 896, ptr %222, align 4
  %224 = load ptr, ptr %next.i.i.i, align 8
  %225 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i96.i = icmp eq ptr %224, %226
  br i1 %cmp.i96.i, label %if.then.i98.i, label %OUT_RING.exit93.i.OUT_RING.exit100.i_crit_edge

OUT_RING.exit93.i.OUT_RING.exit100.i_crit_edge:   ; preds = %OUT_RING.exit93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit100.i

if.then.i98.i:                                    ; preds = %OUT_RING.exit93.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i97.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %227 = ptrtoint ptr %start.i97.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %start.i97.i, align 4
  %229 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %228, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit100.i

OUT_RING.exit100.i:                               ; preds = %if.then.i98.i, %OUT_RING.exit93.i.OUT_RING.exit100.i_crit_edge
  %230 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i99.i = getelementptr i32, ptr %231, i32 1
  store ptr %incdec.ptr.i99.i, ptr %next.i.i.i, align 8
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 -2147483264, ptr %231, align 4
  %233 = load ptr, ptr %next.i.i.i, align 8
  %234 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i103.i = icmp eq ptr %233, %235
  br i1 %cmp.i103.i, label %if.then.i105.i, label %OUT_RING.exit100.i.OUT_RING.exit107.i_crit_edge

OUT_RING.exit100.i.OUT_RING.exit107.i_crit_edge:  ; preds = %OUT_RING.exit100.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit107.i

if.then.i105.i:                                   ; preds = %OUT_RING.exit100.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i104.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %236 = ptrtoint ptr %start.i104.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %start.i104.i, align 4
  %238 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %237, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit107.i

OUT_RING.exit107.i:                               ; preds = %if.then.i105.i, %OUT_RING.exit100.i.OUT_RING.exit107.i_crit_edge
  %239 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i106.i = getelementptr i32, ptr %240, i32 1
  store ptr %incdec.ptr.i106.i, ptr %next.i.i.i, align 8
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 1, ptr %240, align 4
  %242 = load ptr, ptr %next.i.i.i, align 8
  %243 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i110.i = icmp eq ptr %242, %244
  br i1 %cmp.i110.i, label %if.then.i112.i, label %OUT_RING.exit107.i.OUT_RING.exit114.i_crit_edge

OUT_RING.exit107.i.OUT_RING.exit114.i_crit_edge:  ; preds = %OUT_RING.exit107.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit114.i

if.then.i112.i:                                   ; preds = %OUT_RING.exit107.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i111.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %245 = ptrtoint ptr %start.i111.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %start.i111.i, align 4
  %247 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %246, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit114.i

OUT_RING.exit114.i:                               ; preds = %if.then.i112.i, %OUT_RING.exit107.i.OUT_RING.exit114.i_crit_edge
  %248 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i113.i = getelementptr i32, ptr %249, i32 1
  store ptr %incdec.ptr.i113.i, ptr %next.i.i.i, align 8
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %249, align 4
  %251 = load ptr, ptr %next.i.i.i, align 8
  %252 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i117.i = icmp eq ptr %251, %253
  br i1 %cmp.i117.i, label %if.then.i119.i, label %OUT_RING.exit114.i.OUT_RING.exit121.i_crit_edge

OUT_RING.exit114.i.OUT_RING.exit121.i_crit_edge:  ; preds = %OUT_RING.exit114.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit121.i

if.then.i119.i:                                   ; preds = %OUT_RING.exit114.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i118.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %254 = ptrtoint ptr %start.i118.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %start.i118.i, align 4
  %256 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %255, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit121.i

OUT_RING.exit121.i:                               ; preds = %if.then.i119.i, %OUT_RING.exit114.i.OUT_RING.exit121.i_crit_edge
  %257 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i120.i = getelementptr i32, ptr %258, i32 1
  store ptr %incdec.ptr.i120.i, ptr %next.i.i.i, align 8
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 0, ptr %258, align 4
  %260 = load ptr, ptr %next.i.i.i, align 8
  %261 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i124.i = icmp eq ptr %260, %262
  br i1 %cmp.i124.i, label %if.then.i126.i, label %OUT_RING.exit121.i.OUT_RING.exit128.i_crit_edge

OUT_RING.exit121.i.OUT_RING.exit128.i_crit_edge:  ; preds = %OUT_RING.exit121.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit128.i

if.then.i126.i:                                   ; preds = %OUT_RING.exit121.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i125.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %263 = ptrtoint ptr %start.i125.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %start.i125.i, align 4
  %265 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %264, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit128.i

OUT_RING.exit128.i:                               ; preds = %if.then.i126.i, %OUT_RING.exit121.i.OUT_RING.exit128.i_crit_edge
  %266 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i127.i = getelementptr i32, ptr %267, i32 1
  store ptr %incdec.ptr.i127.i, ptr %next.i.i.i, align 8
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 536871410, ptr %267, align 4
  %269 = load ptr, ptr %next.i.i.i, align 8
  %270 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i131.i = icmp eq ptr %269, %271
  br i1 %cmp.i131.i, label %if.then.i133.i, label %OUT_RING.exit128.i.OUT_RING.exit135.i_crit_edge

OUT_RING.exit128.i.OUT_RING.exit135.i_crit_edge:  ; preds = %OUT_RING.exit128.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit135.i

if.then.i133.i:                                   ; preds = %OUT_RING.exit128.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i132.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %272 = ptrtoint ptr %start.i132.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %start.i132.i, align 4
  %274 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %273, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit135.i

OUT_RING.exit135.i:                               ; preds = %if.then.i133.i, %OUT_RING.exit128.i.OUT_RING.exit135.i_crit_edge
  %275 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i134.i = getelementptr i32, ptr %276, i32 1
  store ptr %incdec.ptr.i134.i, ptr %next.i.i.i, align 8
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 0, ptr %276, align 4
  %278 = load ptr, ptr %next.i.i.i, align 8
  %279 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i138.i = icmp eq ptr %278, %280
  br i1 %cmp.i138.i, label %if.then.i140.i, label %OUT_RING.exit135.i.OUT_RING.exit142.i_crit_edge

OUT_RING.exit135.i.OUT_RING.exit142.i_crit_edge:  ; preds = %OUT_RING.exit135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit142.i

if.then.i140.i:                                   ; preds = %OUT_RING.exit135.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i139.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %281 = ptrtoint ptr %start.i139.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %start.i139.i, align 4
  %283 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %282, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit142.i

OUT_RING.exit142.i:                               ; preds = %if.then.i140.i, %OUT_RING.exit135.i.OUT_RING.exit142.i_crit_edge
  %284 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i141.i = getelementptr i32, ptr %285, i32 1
  store ptr %incdec.ptr.i141.i, ptr %next.i.i.i, align 8
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 0, ptr %285, align 4
  call void @adreno_wait_ring(ptr noundef %114, i32 noundef 2) #5
  %287 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %next.i.i.i, align 8
  %289 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i145.i = icmp eq ptr %288, %290
  br i1 %cmp.i.i145.i, label %if.then.i.i147.i, label %OUT_RING.exit142.i.OUT_PKT3.exit149.i_crit_edge

OUT_RING.exit142.i.OUT_PKT3.exit149.i_crit_edge:  ; preds = %OUT_RING.exit142.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_PKT3.exit149.i

if.then.i.i147.i:                                 ; preds = %OUT_RING.exit142.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i.i146.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %291 = ptrtoint ptr %start.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %start.i.i146.i, align 4
  %293 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %292, ptr %next.i.i.i, align 8
  br label %OUT_PKT3.exit149.i

OUT_PKT3.exit149.i:                               ; preds = %if.then.i.i147.i, %OUT_RING.exit142.i.OUT_PKT3.exit149.i_crit_edge
  %294 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i148.i = getelementptr i32, ptr %295, i32 1
  store ptr %incdec.ptr.i.i148.i, ptr %next.i.i.i, align 8
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 -1073717504, ptr %295, align 4
  %297 = load ptr, ptr %next.i.i.i, align 8
  %298 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i152.i = icmp eq ptr %297, %299
  br i1 %cmp.i152.i, label %if.then.i154.i, label %OUT_PKT3.exit149.i.OUT_RING.exit156.i_crit_edge

OUT_PKT3.exit149.i.OUT_RING.exit156.i_crit_edge:  ; preds = %OUT_PKT3.exit149.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit156.i

if.then.i154.i:                                   ; preds = %OUT_PKT3.exit149.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i153.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %114, i32 0, i32 3
  %300 = ptrtoint ptr %start.i153.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %start.i153.i, align 4
  %302 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %301, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit156.i

OUT_RING.exit156.i:                               ; preds = %if.then.i154.i, %OUT_PKT3.exit149.i.OUT_RING.exit156.i_crit_edge
  %303 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i155.i = getelementptr i32, ptr %304, i32 1
  store ptr %incdec.ptr.i155.i, ptr %next.i.i.i, align 8
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 1, ptr %304, align 4
  call void @adreno_flush(ptr noundef %gpu, ptr noundef %114, i32 noundef 453) #5
  %306 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %rb, align 4
  %call.i.i = call zeroext i1 @adreno_idle(ptr noundef %gpu, ptr noundef %307) #5
  br i1 %call.i.i, label %if.end.i.i, label %OUT_RING.exit156.i.cleanup_crit_edge

OUT_RING.exit156.i.cleanup_crit_edge:             ; preds = %OUT_RING.exit156.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %OUT_RING.exit156.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %308 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -100, %308
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %309 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %310, i32 5952
  %call.i.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %do.cond.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.cond.i.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %311 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %311
  %cmp.i157.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i157.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %if.then6.critedge.i.i

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

if.then6.critedge.i.i:                            ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %312 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %gpu, align 8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, ptr noundef %313) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then6.critedge.i.i, %do.body.i.i.cleanup_crit_edge, %OUT_RING.exit156.i.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %for.end.cleanup_crit_edge ], [ -22, %if.then6.critedge.i.i ], [ -22, %OUT_RING.exit156.i.cleanup_crit_edge ], [ 0, %do.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tran_error) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pt_base) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_resume(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a2xx_submit(ptr noundef %gpu, ptr nocapture noundef readonly %submit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ring1 = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 16
  %0 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring1, align 4
  %nr_cmds = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 18
  %2 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp120.not = icmp eq i32 %3, 0
  br i1 %cmp120.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmd = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 21
  %cur_ctx_seqno = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 15
  %queue = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 11
  %next.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 6
  %end.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 4
  %start.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd, align 8
  %arrayidx = getelementptr %struct.anon.94, ptr %5, i32 %i.0121
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %7, label %for.body.for.inc_crit_edge [
    i32 1, label %for.body.sw.bb3_crit_edge
    i32 3, label %sw.bb
  ]

for.body.sw.bb3_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %9 = ptrtoint ptr %cur_ctx_seqno to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_ctx_seqno, align 8
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue, align 8
  %ctx = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 4
  %seqno = getelementptr inbounds %struct.msm_file_private, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seqno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp2 = icmp eq i32 %10, %16
  br i1 %cmp2, label %sw.bb.for.inc_crit_edge, label %sw.bb.sw.bb3_crit_edge

sw.bb.sw.bb3_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb3:                                           ; preds = %sw.bb.sw.bb3_crit_edge, %for.body.sw.bb3_crit_edge
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 3) #5
  %17 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next.i.i, align 8
  %19 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i.i, align 8
  %cmp.i.i = icmp eq ptr %18, %20
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb3.OUT_PKT3.exit_crit_edge

sw.bb3.OUT_PKT3.exit_crit_edge:                   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_PKT3.exit

if.then.i.i:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %start.i.i, align 4
  %23 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %next.i.i, align 8
  br label %OUT_PKT3.exit

OUT_PKT3.exit:                                    ; preds = %if.then.i.i, %sw.bb3.OUT_PKT3.exit_crit_edge
  %24 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %25, i32 1
  store ptr %incdec.ptr.i.i, ptr %next.i.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1073662208, ptr %25, align 4
  %27 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd, align 8
  %iova = getelementptr %struct.anon.94, ptr %28, i32 %i.0121, i32 2
  %29 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %iova, align 8
  %conv = trunc i64 %30 to i32
  %31 = load ptr, ptr %next.i.i, align 8
  %32 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %end.i.i, align 8
  %cmp.i = icmp eq ptr %31, %33
  br i1 %cmp.i, label %if.then.i, label %OUT_PKT3.exit.OUT_RING.exit_crit_edge

OUT_PKT3.exit.OUT_RING.exit_crit_edge:            ; preds = %OUT_PKT3.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit

if.then.i:                                        ; preds = %OUT_PKT3.exit
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %start.i.i, align 4
  %36 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %next.i.i, align 8
  br label %OUT_RING.exit

OUT_RING.exit:                                    ; preds = %if.then.i, %OUT_PKT3.exit.OUT_RING.exit_crit_edge
  %37 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i = getelementptr i32, ptr %38, i32 1
  store ptr %incdec.ptr.i, ptr %next.i.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv, ptr %38, align 4
  %40 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cmd, align 8
  %size = getelementptr %struct.anon.94, ptr %41, i32 %i.0121, i32 1
  %42 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size, align 4
  %44 = load ptr, ptr %next.i.i, align 8
  %45 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i.i, align 8
  %cmp.i40 = icmp eq ptr %44, %46
  br i1 %cmp.i40, label %if.then.i42, label %OUT_RING.exit.OUT_RING.exit44_crit_edge

OUT_RING.exit.OUT_RING.exit44_crit_edge:          ; preds = %OUT_RING.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit44

if.then.i42:                                      ; preds = %OUT_RING.exit
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %start.i.i, align 4
  %49 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %next.i.i, align 8
  br label %OUT_RING.exit44

OUT_RING.exit44:                                  ; preds = %if.then.i42, %OUT_RING.exit.OUT_RING.exit44_crit_edge
  %50 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i43 = getelementptr i32, ptr %51, i32 1
  store ptr %incdec.ptr.i43, ptr %next.i.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %43, ptr %51, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 1) #5
  %53 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %next.i.i, align 8
  %55 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i.i, align 8
  %cmp.i.i47 = icmp eq ptr %54, %56
  br i1 %cmp.i.i47, label %if.then.i.i49, label %OUT_RING.exit44.OUT_PKT2.exit_crit_edge

OUT_RING.exit44.OUT_PKT2.exit_crit_edge:          ; preds = %OUT_RING.exit44
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_PKT2.exit

if.then.i.i49:                                    ; preds = %OUT_RING.exit44
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %start.i.i, align 4
  %59 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %next.i.i, align 8
  br label %OUT_PKT2.exit

OUT_PKT2.exit:                                    ; preds = %if.then.i.i49, %OUT_RING.exit44.OUT_PKT2.exit_crit_edge
  %60 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %next.i.i, align 8
  %incdec.ptr.i.i50 = getelementptr i32, ptr %61, i32 1
  store ptr %incdec.ptr.i.i50, ptr %next.i.i, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -2147483648, ptr %61, align 4
  br label %for.inc

for.inc:                                          ; preds = %OUT_PKT2.exit, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0121, 1
  %63 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_cmds, align 4
  %cmp = icmp ult i32 %inc, %64
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 2) #5
  %next.i.i51 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 6
  %65 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %next.i.i51, align 8
  %end.i.i52 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 4
  %67 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i.i52, align 8
  %cmp.i.i53 = icmp eq ptr %66, %68
  br i1 %cmp.i.i53, label %if.then.i.i55, label %for.end.OUT_PKT0.exit_crit_edge

for.end.OUT_PKT0.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_PKT0.exit

if.then.i.i55:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %start.i.i54 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %69 = ptrtoint ptr %start.i.i54 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %start.i.i54, align 4
  %71 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %next.i.i51, align 8
  br label %OUT_PKT0.exit

OUT_PKT0.exit:                                    ; preds = %if.then.i.i55, %for.end.OUT_PKT0.exit_crit_edge
  %72 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %next.i.i51, align 8
  %incdec.ptr.i.i56 = getelementptr i32, ptr %73, i32 1
  store ptr %incdec.ptr.i.i56, ptr %next.i.i51, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1402, ptr %73, align 4
  %seqno8 = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 7
  %75 = ptrtoint ptr %seqno8 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %seqno8, align 8
  %77 = load ptr, ptr %next.i.i51, align 8
  %78 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i.i52, align 8
  %cmp.i59 = icmp eq ptr %77, %79
  br i1 %cmp.i59, label %if.then.i61, label %OUT_PKT0.exit.OUT_RING.exit63_crit_edge

OUT_PKT0.exit.OUT_RING.exit63_crit_edge:          ; preds = %OUT_PKT0.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit63

if.then.i61:                                      ; preds = %OUT_PKT0.exit
  call void @__sanitizer_cov_trace_pc() #7
  %start.i60 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %80 = ptrtoint ptr %start.i60 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %start.i60, align 4
  %82 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %next.i.i51, align 8
  br label %OUT_RING.exit63

OUT_RING.exit63:                                  ; preds = %if.then.i61, %OUT_PKT0.exit.OUT_RING.exit63_crit_edge
  %83 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %next.i.i51, align 8
  %incdec.ptr.i62 = getelementptr i32, ptr %84, i32 1
  store ptr %incdec.ptr.i62, ptr %next.i.i51, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %76, ptr %84, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 2) #5
  %86 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %next.i.i51, align 8
  %88 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %end.i.i52, align 8
  %cmp.i.i66 = icmp eq ptr %87, %89
  br i1 %cmp.i.i66, label %if.then.i.i68, label %OUT_RING.exit63.OUT_PKT3.exit70_crit_edge

OUT_RING.exit63.OUT_PKT3.exit70_crit_edge:        ; preds = %OUT_RING.exit63
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_PKT3.exit70

if.then.i.i68:                                    ; preds = %OUT_RING.exit63
  call void @__sanitizer_cov_trace_pc() #7
  %start.i.i67 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %90 = ptrtoint ptr %start.i.i67 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %start.i.i67, align 4
  %92 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %next.i.i51, align 8
  br label %OUT_PKT3.exit70

OUT_PKT3.exit70:                                  ; preds = %if.then.i.i68, %OUT_RING.exit63.OUT_PKT3.exit70_crit_edge
  %93 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %next.i.i51, align 8
  %incdec.ptr.i.i69 = getelementptr i32, ptr %94, i32 1
  store ptr %incdec.ptr.i.i69, ptr %next.i.i51, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1073732096, ptr %94, align 4
  %96 = load ptr, ptr %next.i.i51, align 8
  %97 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %end.i.i52, align 8
  %cmp.i73 = icmp eq ptr %96, %98
  br i1 %cmp.i73, label %if.then.i75, label %OUT_PKT3.exit70.OUT_RING.exit77_crit_edge

OUT_PKT3.exit70.OUT_RING.exit77_crit_edge:        ; preds = %OUT_PKT3.exit70
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit77

if.then.i75:                                      ; preds = %OUT_PKT3.exit70
  call void @__sanitizer_cov_trace_pc() #7
  %start.i74 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %99 = ptrtoint ptr %start.i74 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %start.i74, align 4
  %101 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %next.i.i51, align 8
  br label %OUT_RING.exit77

OUT_RING.exit77:                                  ; preds = %if.then.i75, %OUT_PKT3.exit70.OUT_RING.exit77_crit_edge
  %102 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %next.i.i51, align 8
  %incdec.ptr.i76 = getelementptr i32, ptr %103, i32 1
  store ptr %incdec.ptr.i76, ptr %next.i.i51, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %103, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 4) #5
  %105 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %next.i.i51, align 8
  %107 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %end.i.i52, align 8
  %cmp.i.i80 = icmp eq ptr %106, %108
  br i1 %cmp.i.i80, label %if.then.i.i82, label %OUT_RING.exit77.OUT_PKT3.exit84_crit_edge

OUT_RING.exit77.OUT_PKT3.exit84_crit_edge:        ; preds = %OUT_RING.exit77
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_PKT3.exit84

if.then.i.i82:                                    ; preds = %OUT_RING.exit77
  call void @__sanitizer_cov_trace_pc() #7
  %start.i.i81 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %109 = ptrtoint ptr %start.i.i81 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %start.i.i81, align 4
  %111 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %next.i.i51, align 8
  br label %OUT_PKT3.exit84

OUT_PKT3.exit84:                                  ; preds = %if.then.i.i82, %OUT_RING.exit77.OUT_PKT3.exit84_crit_edge
  %112 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %next.i.i51, align 8
  %incdec.ptr.i.i83 = getelementptr i32, ptr %113, i32 1
  store ptr %incdec.ptr.i.i83, ptr %next.i.i51, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1073592832, ptr %113, align 4
  %115 = load ptr, ptr %next.i.i51, align 8
  %116 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %end.i.i52, align 8
  %cmp.i87 = icmp eq ptr %115, %117
  br i1 %cmp.i87, label %if.then.i89, label %OUT_PKT3.exit84.OUT_RING.exit91_crit_edge

OUT_PKT3.exit84.OUT_RING.exit91_crit_edge:        ; preds = %OUT_PKT3.exit84
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit91

if.then.i89:                                      ; preds = %OUT_PKT3.exit84
  call void @__sanitizer_cov_trace_pc() #7
  %start.i88 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %118 = ptrtoint ptr %start.i88 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %start.i88, align 4
  %120 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %next.i.i51, align 8
  br label %OUT_RING.exit91

OUT_RING.exit91:                                  ; preds = %if.then.i89, %OUT_PKT3.exit84.OUT_RING.exit91_crit_edge
  %121 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %next.i.i51, align 8
  %incdec.ptr.i90 = getelementptr i32, ptr %122, i32 1
  store ptr %incdec.ptr.i90, ptr %next.i.i51, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 4, ptr %122, align 4
  %memptrs_iova = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 14
  %124 = ptrtoint ptr %memptrs_iova to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %memptrs_iova, align 8
  %126 = trunc i64 %125 to i32
  %conv9 = add i32 %126, 4
  %127 = load ptr, ptr %next.i.i51, align 8
  %128 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %end.i.i52, align 8
  %cmp.i94 = icmp eq ptr %127, %129
  br i1 %cmp.i94, label %if.then.i96, label %OUT_RING.exit91.OUT_RING.exit98_crit_edge

OUT_RING.exit91.OUT_RING.exit98_crit_edge:        ; preds = %OUT_RING.exit91
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit98

if.then.i96:                                      ; preds = %OUT_RING.exit91
  call void @__sanitizer_cov_trace_pc() #7
  %start.i95 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %130 = ptrtoint ptr %start.i95 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %start.i95, align 4
  %132 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %131, ptr %next.i.i51, align 8
  br label %OUT_RING.exit98

OUT_RING.exit98:                                  ; preds = %if.then.i96, %OUT_RING.exit91.OUT_RING.exit98_crit_edge
  %133 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %next.i.i51, align 8
  %incdec.ptr.i97 = getelementptr i32, ptr %134, i32 1
  store ptr %incdec.ptr.i97, ptr %next.i.i51, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv9, ptr %134, align 4
  %136 = ptrtoint ptr %seqno8 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %seqno8, align 8
  %138 = load ptr, ptr %next.i.i51, align 8
  %139 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %end.i.i52, align 8
  %cmp.i101 = icmp eq ptr %138, %140
  br i1 %cmp.i101, label %if.then.i103, label %OUT_RING.exit98.OUT_RING.exit105_crit_edge

OUT_RING.exit98.OUT_RING.exit105_crit_edge:       ; preds = %OUT_RING.exit98
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit105

if.then.i103:                                     ; preds = %OUT_RING.exit98
  call void @__sanitizer_cov_trace_pc() #7
  %start.i102 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %141 = ptrtoint ptr %start.i102 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %start.i102, align 4
  %143 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %142, ptr %next.i.i51, align 8
  br label %OUT_RING.exit105

OUT_RING.exit105:                                 ; preds = %if.then.i103, %OUT_RING.exit98.OUT_RING.exit105_crit_edge
  %144 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %next.i.i51, align 8
  %incdec.ptr.i104 = getelementptr i32, ptr %145, i32 1
  store ptr %incdec.ptr.i104, ptr %next.i.i51, align 8
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %137, ptr %145, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 2) #5
  %147 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %next.i.i51, align 8
  %149 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %end.i.i52, align 8
  %cmp.i.i108 = icmp eq ptr %148, %150
  br i1 %cmp.i.i108, label %if.then.i.i110, label %OUT_RING.exit105.OUT_PKT3.exit112_crit_edge

OUT_RING.exit105.OUT_PKT3.exit112_crit_edge:      ; preds = %OUT_RING.exit105
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_PKT3.exit112

if.then.i.i110:                                   ; preds = %OUT_RING.exit105
  call void @__sanitizer_cov_trace_pc() #7
  %start.i.i109 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %151 = ptrtoint ptr %start.i.i109 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %start.i.i109, align 4
  %153 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %152, ptr %next.i.i51, align 8
  br label %OUT_PKT3.exit112

OUT_PKT3.exit112:                                 ; preds = %if.then.i.i110, %OUT_RING.exit105.OUT_PKT3.exit112_crit_edge
  %154 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %next.i.i51, align 8
  %incdec.ptr.i.i111 = getelementptr i32, ptr %155, i32 1
  store ptr %incdec.ptr.i.i111, ptr %next.i.i51, align 8
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 -1073725440, ptr %155, align 4
  %157 = load ptr, ptr %next.i.i51, align 8
  %158 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %end.i.i52, align 8
  %cmp.i115 = icmp eq ptr %157, %159
  br i1 %cmp.i115, label %if.then.i117, label %OUT_PKT3.exit112.OUT_RING.exit119_crit_edge

OUT_PKT3.exit112.OUT_RING.exit119_crit_edge:      ; preds = %OUT_PKT3.exit112
  call void @__sanitizer_cov_trace_pc() #7
  br label %OUT_RING.exit119

if.then.i117:                                     ; preds = %OUT_PKT3.exit112
  call void @__sanitizer_cov_trace_pc() #7
  %start.i116 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %160 = ptrtoint ptr %start.i116 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %start.i116, align 4
  %162 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %161, ptr %next.i.i51, align 8
  br label %OUT_RING.exit119

OUT_RING.exit119:                                 ; preds = %if.then.i117, %OUT_PKT3.exit112.OUT_RING.exit119_crit_edge
  %163 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %next.i.i51, align 8
  %incdec.ptr.i118 = getelementptr i32, ptr %164, i32 1
  store ptr %incdec.ptr.i118, ptr %next.i.i51, align 8
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -2147483648, ptr %164, align 4
  tail call void @adreno_flush(ptr noundef %gpu, ptr noundef %1, i32 noundef 453) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a2xx_irq(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 3804
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #5
  %and = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i54 = getelementptr i8, ptr %3, i32 10508
  %call.i55 = tail call i32 @msm_readl(ptr noundef %add.ptr.i54) #5
  %dev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef %call.i55) #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i57 = getelementptr i8, ptr %13, i32 268
  %call.i58 = tail call i32 @msm_readl(ptr noundef %add.ptr.i57) #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef %call.i58) #8
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i60 = getelementptr i8, ptr %15, i32 10512
  tail call void @msm_writel(i32 noundef %call.i55, ptr noundef %add.ptr.i60) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and9 = and i32 %call.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end22_crit_edge, label %if.then11

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then11:                                        ; preds = %if.end
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i62 = getelementptr i8, ptr %17, i32 1996
  %call.i63 = tail call i32 @msm_readl(ptr noundef %add.ptr.i62) #5
  %and13 = and i32 %call.i63, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then11.if.end21_crit_edge, label %do.end18

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end18:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %dev19 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %18 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev19, align 4
  %dev20 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.19, i32 noundef %call.i63) #8
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %if.then11.if.end21_crit_edge
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %23, i32 2000
  tail call void @msm_writel(i32 noundef %call.i63, ptr noundef %add.ptr.i65) #5
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool24.not = icmp sgt i32 %call.i, -1
  br i1 %tobool24.not, label %if.end22.if.end32_crit_edge, label %if.then25

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %25, i32 3796
  %call.i68 = tail call i32 @msm_readl(ptr noundef %add.ptr.i67) #5
  %dev30 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %26 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev30, align 4
  %dev31 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.22, i32 noundef %call.i68) #8
  %30 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i70 = getelementptr i8, ptr %31, i32 3800
  tail call void @msm_writel(i32 noundef %call.i68, ptr noundef %add.ptr.i70) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.end22.if.end32_crit_edge
  tail call void @msm_gpu_retire(ptr noundef %gpu) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_active_ring(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a2xx_recover(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @adreno_dump_info(ptr noundef %gpu) #5
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 5600
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef %call.i) #8
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %3, i32 5604
  %call.i.1 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.1) #5
  %call1.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef %call.i.1) #8
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.2 = getelementptr i8, ptr %5, i32 5608
  %call.i.2 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.2) #5
  %call1.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef 2, i32 noundef %call.i.2) #8
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.3 = getelementptr i8, ptr %7, i32 5612
  %call.i.3 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.3) #5
  %call1.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef 3, i32 noundef %call.i.3) #8
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.4 = getelementptr i8, ptr %9, i32 5616
  %call.i.4 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.4) #5
  %call1.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef 4, i32 noundef %call.i.4) #8
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.5 = getelementptr i8, ptr %11, i32 5620
  %call.i.5 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.5) #5
  %call1.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef 5, i32 noundef %call.i.5) #8
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.6 = getelementptr i8, ptr %13, i32 5624
  %call.i.6 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.6) #5
  %call1.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef 6, i32 noundef %call.i.6) #8
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.7 = getelementptr i8, ptr %15, i32 5628
  %call.i.7 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.7) #5
  %call1.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef 7, i32 noundef %call.i.7) #8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @hang_debug to i32))
  %16 = load i8, ptr @hang_debug, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 5952
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #5
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call.i.i) #8
  tail call void @adreno_dump(ptr noundef %gpu) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %20, i32 240
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i13) #5
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %22, i32 240
  %call.i16 = tail call i32 @msm_readl(ptr noundef %add.ptr.i15) #5
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i18 = getelementptr i8, ptr %24, i32 240
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i18) #5
  tail call void @adreno_recover(ptr noundef %gpu) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @a2xx_gpu_state_get(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 240) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @adreno_gpu_state_get(ptr noundef %gpu, ptr noundef nonnull %call7.i.i) #5
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %1 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 5952
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #5
  %rbbm_status = getelementptr inbounds %struct.msm_gpu_state, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %rbbm_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i, ptr %rbbm_status, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_state_put(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @a2xx_create_address_space(ptr noundef %gpu, ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @msm_gpummu_new(ptr noundef %dev, ptr noundef %gpu) #5
  %call1 = tail call ptr @msm_gem_address_space_create(ptr noundef %call, ptr noundef nonnull @.str.28, i64 noundef 16777216, i64 noundef 268369920) #5
  %cmp.i = icmp ule ptr %call1, inttoptr (i32 -4096 to ptr)
  %cmp.i8 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %cmp.i8, %cmp.i
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %destroy = getelementptr inbounds %struct.msm_mmu_funcs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destroy, align 4
  tail call void %3(ptr noundef %call) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a2xx_get_rptr(ptr nocapture noundef readonly %gpu, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1808
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #5
  %memptrs = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 13
  %2 = ptrtoint ptr %memptrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memptrs, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %call.i, ptr %3, align 8
  %5 = load ptr, ptr %memptrs, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 8
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpummu_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_hw_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_wait_ring(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_idle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_retire(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_recover(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_state_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gpummu_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_create(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_gpu_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 506, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @a2xx_gpu_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @a2xx_gpu_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 535, i32 3}
!10 = !{ptr @a2xx_gpu_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @a2xx_gpu_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @perfcntrs, !13, !"perfcntrs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 492, i32 38}
!14 = !{ptr @a200_registers, !15, !"a200_registers", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 337, i32 27}
!16 = !{ptr @a225_registers, !17, !"a225_registers", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 396, i32 27}
!18 = !{ptr @a220_registers, !19, !"a220_registers", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 366, i32 27}
!20 = !{ptr @funcs, !21, !"funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 471, i32 38}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 110, i32 2}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 222, i32 2}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 233, i32 2}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 289, i32 3}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 307, i32 3}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @a2xx_irq._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @a2xx_irq._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 308, i32 3}
!38 = !{ptr @a2xx_irq._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @a2xx_irq._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 319, i32 4}
!42 = !{ptr @a2xx_irq._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @a2xx_irq._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 327, i32 3}
!46 = !{ptr @a2xx_irq._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @a2xx_irq._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 254, i32 3}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @a2xx_recover._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @a2xx_recover._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 431, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @a2xx_dump._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @a2xx_dump._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/adreno/a2xx_gpu.c", i32 456, i32 45}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i8 0, i8 2}
!70 = !{!"auto-init"}
