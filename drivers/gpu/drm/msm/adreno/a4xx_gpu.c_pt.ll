; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/adreno/a4xx_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a4xx_gpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.adreno_gpu_funcs = type { %struct.msm_gpu_funcs, ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.a4xx_gpu = type { %struct.adreno_gpu, %struct.adreno_ocmem }
%struct.adreno_ocmem = type { ptr, i32, ptr }
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

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"*ERROR* no a4xx device\0A\00", [40 x i8] zeroinitializer }, align 32
@funcs = internal constant { %struct.adreno_gpu_funcs, [44 x i8] } { %struct.adreno_gpu_funcs { %struct.msm_gpu_funcs { ptr @adreno_get_param, ptr @a4xx_hw_init, ptr @a4xx_pm_suspend, ptr @a4xx_pm_resume, ptr @a4xx_submit, ptr null, ptr @a4xx_irq, ptr @adreno_active_ring, ptr @a4xx_recover, ptr @a4xx_destroy, ptr @adreno_show, ptr null, ptr null, ptr @a4xx_gpu_state_get, ptr @adreno_gpu_state_put, ptr null, ptr null, ptr @adreno_iommu_create_address_space, ptr null, ptr @a4xx_get_rptr }, ptr @a4xx_get_timestamp }, [44 x i8] zeroinitializer }, align 32
@a405_registers = internal constant { [165 x i32], [172 x i8] } { [165 x i32] [i32 0, i32 2, i32 4, i32 33, i32 35, i32 36, i32 38, i32 38, i32 40, i32 43, i32 46, i32 52, i32 55, i32 68, i32 71, i32 102, i32 104, i32 149, i32 156, i32 368, i32 372, i32 431, i32 512, i32 563, i32 576, i32 592, i32 1216, i32 1245, i32 1280, i32 1291, i32 1400, i32 1423, i32 3072, i32 3075, i32 3080, i32 3137, i32 3152, i32 3153, i32 3200, i32 3201, i32 3208, i32 3215, i32 3264, i32 3264, i32 3268, i32 3282, i32 3328, i32 3340, i32 3344, i32 3351, i32 3360, i32 3363, i32 3648, i32 3658, i32 3680, i32 3681, i32 3683, i32 3688, i32 3712, i32 3716, i32 3720, i32 3733, i32 8192, i32 8196, i32 8200, i32 8295, i32 8304, i32 8312, i32 8315, i32 8558, i32 8640, i32 8646, i32 8656, i32 8656, i32 8665, i32 8665, i32 8677, i32 8679, i32 8704, i32 8708, i32 8712, i32 8873, i32 9216, i32 9220, i32 9224, i32 9319, i32 9328, i32 9336, i32 9339, i32 9582, i32 9664, i32 9670, i32 9680, i32 9680, i32 9689, i32 9689, i32 9701, i32 9703, i32 9728, i32 9732, i32 9736, i32 9897, i32 12288, i32 12295, i32 12332, i32 12332, i32 12336, i32 12336, i32 12340, i32 12342, i32 12344, i32 12344, i32 12348, i32 12349, i32 12352, i32 12352, i32 12361, i32 12361, i32 12376, i32 12376, i32 12379, i32 12385, i32 12388, i32 12392, i32 12396, i32 12397, i32 12416, i32 12424, i32 12427, i32 12428, i32 12432, i32 12436, i32 12440, i32 12440, i32 12444, i32 12444, i32 12480, i32 12480, i32 12488, i32 12488, i32 12496, i32 12496, i32 12504, i32 12504, i32 12512, i32 12512, i32 12544, i32 12544, i32 12552, i32 12552, i32 12560, i32 12560, i32 12568, i32 12568, i32 12576, i32 12576, i32 12580, i32 12581, i32 12585, i32 12585, i32 13324, i32 13324, i32 13328, i32 13328, i32 -1], [172 x i8] zeroinitializer }, align 32
@a4xx_registers = internal constant { [431 x i32], [420 x i8] } { [431 x i32] [i32 0, i32 2, i32 4, i32 33, i32 35, i32 36, i32 38, i32 38, i32 40, i32 43, i32 46, i32 52, i32 55, i32 68, i32 71, i32 102, i32 104, i32 149, i32 156, i32 368, i32 372, i32 431, i32 512, i32 563, i32 576, i32 592, i32 1216, i32 1245, i32 1280, i32 1291, i32 1400, i32 1423, i32 3072, i32 3075, i32 3080, i32 3137, i32 3152, i32 3153, i32 3200, i32 3201, i32 3208, i32 3215, i32 3264, i32 3264, i32 3268, i32 3282, i32 3328, i32 3340, i32 3344, i32 3351, i32 3360, i32 3363, i32 3648, i32 3658, i32 3680, i32 3681, i32 3683, i32 3688, i32 3712, i32 3716, i32 3720, i32 3733, i32 4096, i32 4096, i32 4098, i32 4098, i32 4100, i32 4100, i32 4104, i32 4106, i32 4108, i32 4109, i32 4111, i32 4112, i32 4114, i32 4118, i32 4132, i32 4132, i32 4135, i32 4135, i32 4352, i32 4352, i32 4354, i32 4354, i32 4356, i32 4356, i32 4368, i32 4368, i32 4370, i32 4374, i32 4388, i32 4388, i32 4864, i32 4864, i32 4992, i32 4992, i32 8192, i32 8196, i32 8200, i32 8295, i32 8304, i32 8312, i32 8315, i32 8558, i32 8640, i32 8646, i32 8656, i32 8656, i32 8665, i32 8665, i32 8677, i32 8679, i32 8704, i32 8708, i32 8712, i32 8873, i32 9216, i32 9220, i32 9224, i32 9319, i32 9328, i32 9336, i32 9339, i32 9582, i32 9664, i32 9670, i32 9680, i32 9680, i32 9689, i32 9689, i32 9701, i32 9703, i32 9728, i32 9732, i32 9736, i32 9897, i32 11264, i32 11265, i32 11280, i32 11280, i32 11282, i32 11286, i32 11293, i32 11296, i32 11304, i32 11304, i32 11312, i32 11312, i32 11314, i32 11318, i32 11328, i32 11328, i32 11344, i32 11344, i32 11346, i32 11350, i32 11392, i32 11392, i32 11412, i32 11413, i32 12288, i32 12295, i32 12300, i32 12308, i32 12312, i32 12317, i32 12320, i32 12322, i32 12324, i32 12326, i32 12328, i32 12330, i32 12332, i32 12333, i32 12336, i32 12337, i32 12340, i32 12342, i32 12344, i32 12344, i32 12348, i32 12349, i32 12352, i32 12352, i32 12361, i32 12361, i32 12376, i32 12376, i32 12379, i32 12385, i32 12388, i32 12392, i32 12396, i32 12397, i32 12416, i32 12424, i32 12427, i32 12428, i32 12432, i32 12436, i32 12440, i32 12440, i32 12444, i32 12444, i32 12480, i32 12480, i32 12488, i32 12488, i32 12496, i32 12496, i32 12504, i32 12504, i32 12512, i32 12512, i32 12544, i32 12544, i32 12552, i32 12552, i32 12560, i32 12560, i32 12568, i32 12568, i32 12576, i32 12576, i32 12580, i32 12581, i32 12585, i32 12585, i32 12593, i32 12593, i32 13068, i32 13068, i32 13072, i32 13072, i32 13312, i32 13313, i32 13328, i32 13328, i32 13330, i32 13334, i32 13341, i32 13344, i32 13352, i32 13352, i32 13360, i32 13360, i32 13362, i32 13366, i32 13376, i32 13376, i32 13392, i32 13392, i32 13394, i32 13398, i32 13440, i32 13440, i32 13460, i32 13461, i32 16384, i32 16384, i32 16386, i32 16386, i32 16388, i32 16388, i32 16392, i32 16394, i32 16396, i32 16397, i32 16399, i32 16402, i32 16404, i32 16406, i32 16413, i32 16413, i32 16416, i32 16423, i32 16480, i32 16482, i32 16896, i32 16896, i32 17152, i32 17152, i32 17408, i32 17408, i32 17664, i32 17664, i32 18432, i32 18434, i32 18447, i32 18447, i32 18449, i32 18449, i32 18451, i32 18451, i32 18453, i32 18454, i32 18475, i32 18475, i32 18519, i32 18519, i32 18563, i32 18563, i32 18607, i32 18607, i32 18629, i32 18629, i32 18661, i32 18661, i32 18693, i32 18693, i32 18725, i32 18725, i32 18757, i32 18757, i32 18768, i32 18768, i32 18779, i32 18779, i32 18816, i32 18830, i32 19200, i32 19200, i32 19456, i32 19456, i32 19712, i32 19712, i32 19968, i32 19968, i32 20096, i32 20096, i32 20224, i32 20224, i32 20232, i32 20232, i32 20240, i32 20240, i32 20248, i32 20248, i32 20256, i32 20256, i32 20272, i32 20272, i32 20320, i32 20320, i32 20352, i32 20353, i32 20360, i32 20361, i32 20462, i32 20462, i32 20467, i32 20467, i32 24576, i32 24577, i32 24584, i32 24591, i32 24596, i32 24598, i32 24600, i32 24603, i32 25085, i32 25085, i32 25148, i32 25148, i32 25472, i32 25472, i32 25504, i32 25504, i32 25536, i32 25537, i32 25544, i32 25545, i32 25552, i32 25556, i32 25558, i32 25558, i32 25582, i32 25582, i32 25600, i32 25601, i32 25608, i32 25615, i32 25620, i32 25622, i32 25624, i32 25627, i32 26109, i32 26109, i32 26172, i32 26172, i32 26496, i32 26496, i32 26528, i32 26528, i32 26560, i32 26561, i32 26568, i32 26569, i32 26576, i32 26580, i32 26582, i32 26582, i32 26606, i32 26606, i32 26624, i32 26625, i32 26632, i32 26639, i32 26644, i32 26646, i32 26648, i32 26651, i32 27133, i32 27133, i32 27196, i32 27196, i32 27520, i32 27520, i32 27552, i32 27552, i32 27584, i32 27585, i32 27592, i32 27593, i32 27600, i32 27604, i32 27606, i32 27606, i32 27630, i32 27630, i32 -1], [420 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* No memory protection without IOMMU\0A\00", [52 x i8] zeroinitializer }, align 32
@allow_vram_carveout = external dso_local local_unnamed_addr global i8, align 1
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gfx-mem\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocmem\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"loading PM4 ucode version: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"loading PFP ucode version: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: timeout waiting for GPU to idle!\0A\00", [58 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Int status %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@a4xx_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CP | Protected mode error| %s | addr=%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a4xx_irq\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/msm/adreno/a4xx_gpu.c\00", [58 x i8] zeroinitializer }, align 32
@a4xx_irq._entry_ptr = internal global ptr @a4xx_irq._entry, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@a4xx_recover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.11, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CP_SCRATCH_REG%d: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a4xx_recover\00", [19 x i8] zeroinitializer }, align 32
@a4xx_recover._entry_ptr = internal global ptr @a4xx_recover._entry, section ".printk_index", align 4
@hang_debug = external dso_local local_unnamed_addr global i8, align 1
@a4xx_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.11, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"status:   %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"a4xx_dump\00", [22 x i8] zeroinitializer }, align 32
@a4xx_dump._entry_ptr = internal global ptr @a4xx_dump._entry, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 405, i64 420, i64 430]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 655, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"funcs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 621, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"a405_registers\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 505, i32 27 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"a4xx_registers\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 423, i32 27 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 693, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 700, i32 41 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 706, i32 47 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 330, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 338, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 394, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 407, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 411, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 357, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 567, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [41 x i8] c"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 376, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @a4xx_dump._entry, ptr @a4xx_dump._entry_ptr, ptr @a4xx_irq._entry, ptr @a4xx_irq._entry_ptr, ptr @a4xx_recover._entry, ptr @a4xx_recover._entry_ptr, ptr @.str, ptr @.str.1, ptr @funcs, ptr @a405_registers, ptr @a4xx_registers, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a405_registers to i32), i32 660, i32 832, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a4xx_registers to i32), i32 1724, i32 2144, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a4xx_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a4xx_recover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a4xx_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @a4xx_gpu_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  br label %if.end47

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 936) #7
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.if.end47_crit_edge, label %if.end4

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.end4:                                          ; preds = %if.end
  %perfcntrs = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 11
  %7 = ptrtoint ptr %perfcntrs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %perfcntrs, align 4
  %num_perfcntrs = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %num_perfcntrs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %num_perfcntrs, align 8
  %call6 = tail call i32 @adreno_gpu_init(ptr noundef %dev, ptr noundef nonnull %3, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @funcs, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.if.then44_crit_edge

if.end4.if.then44_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then44

if.end9:                                          ; preds = %if.end4
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 405, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 405
  %cond = select i1 %cmp.i.not, ptr @a405_registers, ptr @a4xx_registers
  %registers = getelementptr inbounds %struct.adreno_gpu, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %registers to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cond, ptr %registers, align 4
  %dev12 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %12 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev12, align 4
  %ocmem = getelementptr inbounds %struct.a4xx_gpu, ptr %call7.i.i, i32 0, i32 1
  %call13 = tail call i32 @adreno_gpu_ocmem_init(ptr noundef %13, ptr noundef nonnull %call7.i.i, ptr noundef %ocmem) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end9.if.then44_crit_edge

if.end9.if.then44_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then44

if.end16:                                         ; preds = %if.end9
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 24
  %14 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aspace, align 8
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %if.then18, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then18:                                        ; preds = %if.end16
  %16 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @allow_vram_carveout to i32))
  %18 = load i8, ptr @allow_vram_carveout, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool20.not = icmp eq i8 %18, 0
  br i1 %tobool20.not, label %if.then18.if.then44_crit_edge, label %if.then18.if.end23_crit_edge

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then18.if.then44_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then44

if.end23:                                         ; preds = %if.then18.if.end23_crit_edge, %if.end16.if.end23_crit_edge
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call25 = tail call ptr @devm_of_icc_get(ptr noundef %dev24, ptr noundef nonnull @.str.3) #4
  %cmp.i83 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %call25 to i32
  br label %if.then44

if.end29:                                         ; preds = %if.end23
  %call31 = tail call ptr @devm_of_icc_get(ptr noundef %dev24, ptr noundef nonnull @.str.4) #4
  %cmp.i84 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %if.then33, label %if.end29.if.end37_crit_edge

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then33:                                        ; preds = %if.end29
  %20 = ptrtoint ptr %call31 to i32
  %cmp.not = icmp eq ptr %call31, inttoptr (i32 -61 to ptr)
  br i1 %cmp.not, label %if.then33.if.end37_crit_edge, label %if.then33.if.then44_crit_edge

if.then33.if.then44_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then44

if.then33.if.end37_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.end37:                                         ; preds = %if.then33.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  %ocmem_icc_path.0 = phi ptr [ %call31, %if.end29.if.end37_crit_edge ], [ null, %if.then33.if.end37_crit_edge ]
  %fast_rate = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 32
  %21 = ptrtoint ptr %fast_rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fast_rate, align 8
  %div = udiv i32 %22, 1000
  %mul = shl nuw nsw i32 %div, 3
  %call38 = tail call i32 @icc_set_bw(ptr noundef %call25, i32 noundef 0, i32 noundef %mul) #4
  %23 = ptrtoint ptr %fast_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fast_rate, align 8
  %div40 = udiv i32 %24, 1000
  %mul41 = shl nuw nsw i32 %div40, 3
  %call42 = tail call i32 @icc_set_bw(ptr noundef %ocmem_icc_path.0, i32 noundef 0, i32 noundef %mul41) #4
  br label %cleanup

if.then44:                                        ; preds = %if.then33.if.then44_crit_edge, %if.then27, %if.then18.if.then44_crit_edge, %if.end9.if.then44_crit_edge, %if.end4.if.then44_crit_edge
  %ret.0.ph = phi i32 [ -6, %if.then18.if.then44_crit_edge ], [ %20, %if.then33.if.then44_crit_edge ], [ %19, %if.then27 ], [ %call13, %if.end9.if.then44_crit_edge ], [ %call6, %if.end4.if.then44_crit_edge ]
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %26) #4
  tail call void @adreno_gpu_cleanup(ptr noundef nonnull %call7.i.i) #4
  %ocmem.i = getelementptr inbounds %struct.a4xx_gpu, ptr %call7.i.i, i32 0, i32 1
  tail call void @adreno_gpu_ocmem_cleanup(ptr noundef %ocmem.i) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end.if.end47_crit_edge, %if.then
  %ret.090 = phi i32 [ %ret.0.ph, %if.then44 ], [ -6, %if.then ], [ -12, %if.end.if.end47_crit_edge ]
  %27 = inttoptr i32 %ret.090 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end37
  %retval.0 = phi ptr [ %27, %if.end47 ], [ %call7.i.i, %if.end37 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_ocmem_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a4xx_destroy(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %1) #4
  tail call void @adreno_gpu_cleanup(ptr noundef %gpu) #4
  %ocmem = getelementptr inbounds %struct.a4xx_gpu, ptr %gpu, i32 0, i32 1
  tail call void @adreno_gpu_ocmem_cleanup(ptr noundef %ocmem) #4
  tail call void @kfree(ptr noundef %gpu) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_get_param(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a4xx_hw_init(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %0 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revn.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body [
    i32 405, label %if.then
    i32 420, label %if.then6
    i32 430, label %if.then10
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  br label %if.end16

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mmio.i176 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %3 = ptrtoint ptr %mmio.i176 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i176, align 8
  %add.ptr.i177 = getelementptr i8, ptr %4, i32 49264
  tail call void @msm_writel(i32 noundef 65567, ptr noundef %add.ptr.i177) #4
  %5 = ptrtoint ptr %mmio.i176 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i176, align 8
  %add.ptr.i179 = getelementptr i8, ptr %6, i32 49268
  tail call void @msm_writel(i32 noundef 164, ptr noundef %add.ptr.i179) #4
  %7 = ptrtoint ptr %mmio.i176 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i176, align 8
  %add.ptr.i181 = getelementptr i8, ptr %8, i32 49320
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i181) #4
  %9 = ptrtoint ptr %mmio.i176 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i176, align 8
  %add.ptr.i183 = getelementptr i8, ptr %10, i32 49328
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %add.ptr.i183) #4
  %11 = ptrtoint ptr %mmio.i176 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i176, align 8
  %add.ptr.i185 = getelementptr i8, ptr %12, i32 49332
  tail call void @msm_writel(i32 noundef 24, ptr noundef %add.ptr.i185) #4
  %13 = ptrtoint ptr %mmio.i176 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i176, align 8
  %add.ptr.i187 = getelementptr i8, ptr %14, i32 49344
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %add.ptr.i187) #4
  %15 = ptrtoint ptr %mmio.i176 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i176, align 8
  %add.ptr.i189 = getelementptr i8, ptr %16, i32 49348
  tail call void @msm_writel(i32 noundef 24, ptr noundef %add.ptr.i189) #4
  br label %if.end16

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mmio.i195 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %17 = ptrtoint ptr %mmio.i195 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i195, align 8
  %add.ptr.i196 = getelementptr i8, ptr %18, i32 49320
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i196) #4
  %19 = ptrtoint ptr %mmio.i195 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i195, align 8
  %add.ptr.i198 = getelementptr i8, ptr %20, i32 49328
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %add.ptr.i198) #4
  %21 = ptrtoint ptr %mmio.i195 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i195, align 8
  %add.ptr.i200 = getelementptr i8, ptr %22, i32 49332
  tail call void @msm_writel(i32 noundef 24, ptr noundef %add.ptr.i200) #4
  %23 = ptrtoint ptr %mmio.i195 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i195, align 8
  %add.ptr.i202 = getelementptr i8, ptr %24, i32 49344
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %add.ptr.i202) #4
  %25 = ptrtoint ptr %mmio.i195 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i195, align 8
  %add.ptr.i204 = getelementptr i8, ptr %26, i32 49348
  tail call void @msm_writel(i32 noundef 24, ptr noundef %add.ptr.i204) #4
  br label %if.end16

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/adreno/a4xx_gpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #4, !srcloc !53
  unreachable

if.end16:                                         ; preds = %if.then10, %if.then6, %if.then
  %mmio.i176.sink = phi ptr [ %mmio.i176, %if.then6 ], [ %mmio.i195, %if.then10 ], [ %mmio.i, %if.then ]
  %27 = ptrtoint ptr %mmio.i176.sink to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i176.sink, align 8
  %add.ptr.i191 = getelementptr i8, ptr %28, i32 49444
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i191) #4
  %mmio.i207 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %29 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i208 = getelementptr i8, ptr %30, i32 1512
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i208) #4
  %31 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i210 = getelementptr i8, ptr %32, i32 132
  tail call void @msm_writel(i32 noundef 16, ptr noundef %add.ptr.i210) #4
  %33 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i212 = getelementptr i8, ptr %34, i32 172
  tail call void @msm_writel(i32 noundef 16, ptr noundef %add.ptr.i212) #4
  %35 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 430, i32 %36)
  %cmp.i214.not = icmp eq i32 %36, 430
  br i1 %cmp.i214.not, label %if.then19, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i217 = getelementptr i8, ptr %38, i32 1760
  tail call void @msm_writel(i32 noundef 48, ptr noundef %add.ptr.i217) #4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %39 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i219 = getelementptr i8, ptr %40, i32 140
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i219) #4
  %41 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i221 = getelementptr i8, ptr %42, i32 144
  tail call void @msm_writel(i32 noundef -1493172225, ptr noundef %add.ptr.i221) #4
  %43 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i223 = getelementptr i8, ptr %44, i32 248
  tail call void @msm_writel(i32 noundef 48, ptr noundef %add.ptr.i223) #4
  %45 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i225 = getelementptr i8, ptr %46, i32 188
  tail call void @msm_writel(i32 noundef 1073807359, ptr noundef %add.ptr.i225) #4
  %base = getelementptr inbounds %struct.a4xx_gpu, ptr %gpu, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %base, align 4
  %shr = lshr i32 %48, 14
  %49 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i227 = getelementptr i8, ptr %50, i32 13056
  tail call void @msm_writel(i32 noundef %shr, ptr noundef %add.ptr.i227) #4
  %51 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i229 = getelementptr i8, ptr %52, i32 1472
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i229) #4
  %53 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i231 = getelementptr i8, ptr %54, i32 5120
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i231) #4
  %55 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 430, i32 %56)
  %cmp.i233.not = icmp eq i32 %56, 430
  br i1 %cmp.i233.not, label %if.then23, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i236 = getelementptr i8, ptr %58, i32 14896
  tail call void @msm_writel(i32 noundef 7, ptr noundef %add.ptr.i236) #4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  %59 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i238 = getelementptr i8, ptr %60, i32 14860
  tail call void @msm_writel(i32 noundef -65536, ptr noundef %add.ptr.i238) #4
  %61 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i240 = getelementptr i8, ptr %62, i32 14864
  tail call void @msm_writel(i32 noundef -65536, ptr noundef %add.ptr.i240) #4
  %63 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 420, i32 %64)
  %cmp.i242.not = icmp eq i32 %64, 420
  %or = select i1 %cmp.i242.not, i32 570425344, i32 33554432
  %65 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i245 = getelementptr i8, ptr %66, i32 2232
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr.i245) #4
  %67 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 420, i32 %68)
  %cmp.i247.not = icmp eq i32 %68, 420
  br i1 %cmp.i247.not, label %if.end24.if.end30_crit_edge, label %if.then29

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %69 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i250 = getelementptr i8, ptr %70, i32 612
  tail call void @msm_writel(i32 noundef 1089, ptr noundef %add.ptr.i250) #4
  %71 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i252 = getelementptr i8, ptr %72, i32 616
  tail call void @msm_writel(i32 noundef 1089, ptr noundef %add.ptr.i252) #4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end24.if.end30_crit_edge
  %73 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 16
  tail call void @msm_writel(i32 noundef 35791362, ptr noundef %add.ptr.i.i) #4
  %75 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i.1.i = getelementptr i8, ptr %76, i32 20
  tail call void @msm_writel(i32 noundef 35791362, ptr noundef %add.ptr.i.1.i) #4
  %77 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i.2.i = getelementptr i8, ptr %78, i32 24
  tail call void @msm_writel(i32 noundef 35791362, ptr noundef %add.ptr.i.2.i) #4
  %79 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i.3.i = getelementptr i8, ptr %80, i32 28
  tail call void @msm_writel(i32 noundef 35791362, ptr noundef %add.ptr.i.3.i) #4
  %81 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i178.i = getelementptr i8, ptr %82, i32 32
  tail call void @msm_writel(i32 noundef 8738, ptr noundef %add.ptr.i178.i) #4
  %83 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i178.1.i = getelementptr i8, ptr %84, i32 36
  tail call void @msm_writel(i32 noundef 8738, ptr noundef %add.ptr.i178.1.i) #4
  %85 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i178.2.i = getelementptr i8, ptr %86, i32 40
  tail call void @msm_writel(i32 noundef 8738, ptr noundef %add.ptr.i178.2.i) #4
  %87 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i178.3.i = getelementptr i8, ptr %88, i32 44
  tail call void @msm_writel(i32 noundef 8738, ptr noundef %add.ptr.i178.3.i) #4
  %89 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i182.i = getelementptr i8, ptr %90, i32 48
  tail call void @msm_writel(i32 noundef 242457831, ptr noundef %add.ptr.i182.i) #4
  %91 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i182.1.i = getelementptr i8, ptr %92, i32 52
  tail call void @msm_writel(i32 noundef 242457831, ptr noundef %add.ptr.i182.1.i) #4
  %93 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i182.2.i = getelementptr i8, ptr %94, i32 56
  tail call void @msm_writel(i32 noundef 242457831, ptr noundef %add.ptr.i182.2.i) #4
  %95 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i182.3.i = getelementptr i8, ptr %96, i32 60
  tail call void @msm_writel(i32 noundef 242457831, ptr noundef %add.ptr.i182.3.i) #4
  %97 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i186.i = getelementptr i8, ptr %98, i32 64
  tail call void @msm_writel(i32 noundef 1118481, ptr noundef %add.ptr.i186.i) #4
  %99 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i186.1.i = getelementptr i8, ptr %100, i32 68
  tail call void @msm_writel(i32 noundef 1118481, ptr noundef %add.ptr.i186.1.i) #4
  %101 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i186.2.i = getelementptr i8, ptr %102, i32 72
  tail call void @msm_writel(i32 noundef 1118481, ptr noundef %add.ptr.i186.2.i) #4
  %103 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i186.3.i = getelementptr i8, ptr %104, i32 76
  tail call void @msm_writel(i32 noundef 1118481, ptr noundef %add.ptr.i186.3.i) #4
  %105 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i190.i = getelementptr i8, ptr %106, i32 416
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %add.ptr.i190.i) #4
  %107 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i190.1.i = getelementptr i8, ptr %108, i32 420
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %add.ptr.i190.1.i) #4
  %109 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i190.2.i = getelementptr i8, ptr %110, i32 424
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %add.ptr.i190.2.i) #4
  %111 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i190.3.i = getelementptr i8, ptr %112, i32 428
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %add.ptr.i190.3.i) #4
  %113 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i194.i = getelementptr i8, ptr %114, i32 432
  tail call void @msm_writel(i32 noundef 2236962, ptr noundef %add.ptr.i194.i) #4
  %115 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i194.1.i = getelementptr i8, ptr %116, i32 436
  tail call void @msm_writel(i32 noundef 2236962, ptr noundef %add.ptr.i194.1.i) #4
  %117 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i194.2.i = getelementptr i8, ptr %118, i32 440
  tail call void @msm_writel(i32 noundef 2236962, ptr noundef %add.ptr.i194.2.i) #4
  %119 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i194.3.i = getelementptr i8, ptr %120, i32 444
  tail call void @msm_writel(i32 noundef 2236962, ptr noundef %add.ptr.i194.3.i) #4
  %121 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i198.i = getelementptr i8, ptr %122, i32 448
  tail call void @msm_writel(i32 noundef 260, ptr noundef %add.ptr.i198.i) #4
  %123 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i198.1.i = getelementptr i8, ptr %124, i32 452
  tail call void @msm_writel(i32 noundef 260, ptr noundef %add.ptr.i198.1.i) #4
  %125 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i198.2.i = getelementptr i8, ptr %126, i32 456
  tail call void @msm_writel(i32 noundef 260, ptr noundef %add.ptr.i198.2.i) #4
  %127 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i198.3.i = getelementptr i8, ptr %128, i32 460
  tail call void @msm_writel(i32 noundef 260, ptr noundef %add.ptr.i198.3.i) #4
  %129 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i202.i = getelementptr i8, ptr %130, i32 464
  tail call void @msm_writel(i32 noundef 129, ptr noundef %add.ptr.i202.i) #4
  %131 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i202.1.i = getelementptr i8, ptr %132, i32 468
  tail call void @msm_writel(i32 noundef 129, ptr noundef %add.ptr.i202.1.i) #4
  %133 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i202.2.i = getelementptr i8, ptr %134, i32 472
  tail call void @msm_writel(i32 noundef 129, ptr noundef %add.ptr.i202.2.i) #4
  %135 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i202.3.i = getelementptr i8, ptr %136, i32 476
  tail call void @msm_writel(i32 noundef 129, ptr noundef %add.ptr.i202.3.i) #4
  %137 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i204.i = getelementptr i8, ptr %138, i32 80
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %add.ptr.i204.i) #4
  %139 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i206.i = getelementptr i8, ptr %140, i32 84
  tail call void @msm_writel(i32 noundef 35791394, ptr noundef %add.ptr.i206.i) #4
  %141 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i208.i = getelementptr i8, ptr %142, i32 88
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i208.i) #4
  %143 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i210.i = getelementptr i8, ptr %144, i32 92
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i210.i) #4
  %145 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i212.i = getelementptr i8, ptr %146, i32 96
  tail call void @msm_writel(i32 noundef 17476, ptr noundef %add.ptr.i212.i) #4
  %147 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i214.i = getelementptr i8, ptr %148, i32 100
  tail call void @msm_writel(i32 noundef 4370, ptr noundef %add.ptr.i214.i) #4
  %149 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i218.i = getelementptr i8, ptr %150, i32 480
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %add.ptr.i218.i) #4
  %151 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i218.1.i = getelementptr i8, ptr %152, i32 484
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %add.ptr.i218.1.i) #4
  %153 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i218.2.i = getelementptr i8, ptr %154, i32 488
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %add.ptr.i218.2.i) #4
  %155 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i218.3.i = getelementptr i8, ptr %156, i32 492
  tail call void @msm_writel(i32 noundef 572662306, ptr noundef %add.ptr.i218.3.i) #4
  %157 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 420, i32 %158)
  %cmp.i.not.i = icmp eq i32 %158, 420
  %159 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i222.i = getelementptr i8, ptr %160, i32 496
  %..i = select i1 %cmp.i.not.i, i32 8224, i32 139296
  tail call void @msm_writel(i32 noundef %..i, ptr noundef %add.ptr.i222.i) #4
  %161 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 420, i32 %162)
  %cmp.i.not.1.i = icmp eq i32 %162, 420
  %.sink289.i = select i1 %cmp.i.not.1.i, i32 8224, i32 139296
  %163 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i222.1.i = getelementptr i8, ptr %164, i32 500
  tail call void @msm_writel(i32 noundef %.sink289.i, ptr noundef %add.ptr.i222.1.i) #4
  %165 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 420, i32 %166)
  %cmp.i.not.2.i = icmp eq i32 %166, 420
  %.sink291.i = select i1 %cmp.i.not.2.i, i32 8224, i32 139296
  %167 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i222.2.i = getelementptr i8, ptr %168, i32 504
  tail call void @msm_writel(i32 noundef %.sink291.i, ptr noundef %add.ptr.i222.2.i) #4
  %169 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 420, i32 %170)
  %cmp.i.not.3.i = icmp eq i32 %170, 420
  %.sink293.i = select i1 %cmp.i.not.3.i, i32 8224, i32 139296
  %171 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i222.3.i = getelementptr i8, ptr %172, i32 508
  tail call void @msm_writel(i32 noundef %.sink293.i, ptr noundef %add.ptr.i222.3.i) #4
  %173 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 405, i32 %174)
  %cmp.i228.not.i = icmp eq i32 %174, 405
  br i1 %cmp.i228.not.i, label %if.end30.if.end90.i_crit_edge, label %for.body71.preheader.i

if.end30.if.end90.i_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90.i

for.body71.preheader.i:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %175 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i233.i = getelementptr i8, ptr %176, i32 520
  tail call void @msm_writel(i32 noundef 2338, ptr noundef %add.ptr.i233.i) #4
  %177 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i233.1.i = getelementptr i8, ptr %178, i32 524
  tail call void @msm_writel(i32 noundef 2338, ptr noundef %add.ptr.i233.1.i) #4
  %179 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i233.2.i = getelementptr i8, ptr %180, i32 528
  tail call void @msm_writel(i32 noundef 2338, ptr noundef %add.ptr.i233.2.i) #4
  %181 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i233.3.i = getelementptr i8, ptr %182, i32 532
  tail call void @msm_writel(i32 noundef 2338, ptr noundef %add.ptr.i233.3.i) #4
  %183 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i237.i = getelementptr i8, ptr %184, i32 536
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i237.i) #4
  %185 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i237.1.i = getelementptr i8, ptr %186, i32 540
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i237.1.i) #4
  %187 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i237.2.i = getelementptr i8, ptr %188, i32 544
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i237.2.i) #4
  %189 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i237.3.i = getelementptr i8, ptr %190, i32 548
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i237.3.i) #4
  %191 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i241.i = getelementptr i8, ptr %192, i32 568
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i241.i) #4
  %193 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i241.1.i = getelementptr i8, ptr %194, i32 572
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i241.1.i) #4
  %195 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i241.2.i = getelementptr i8, ptr %196, i32 576
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i241.2.i) #4
  %197 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i241.3.i = getelementptr i8, ptr %198, i32 580
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i241.3.i) #4
  br label %if.end90.i

if.end90.i:                                       ; preds = %for.body71.preheader.i, %if.end30.if.end90.i_crit_edge
  %199 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i243.i = getelementptr i8, ptr %200, i32 104
  tail call void @msm_writel(i32 noundef 35791394, ptr noundef %add.ptr.i243.i) #4
  %201 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i245.i = getelementptr i8, ptr %202, i32 112
  tail call void @msm_writel(i32 noundef 68157700, ptr noundef %add.ptr.i245.i) #4
  %203 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i247.i = getelementptr i8, ptr %204, i32 108
  tail call void @msm_writel(i32 noundef 139810, ptr noundef %add.ptr.i247.i) #4
  %205 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i249.i = getelementptr i8, ptr %206, i32 516
  tail call void @msm_writel(i32 noundef 34, ptr noundef %add.ptr.i249.i) #4
  %207 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i251.i = getelementptr i8, ptr %208, i32 512
  tail call void @msm_writel(i32 noundef 271, ptr noundef %add.ptr.i251.i) #4
  %209 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i253.i = getelementptr i8, ptr %210, i32 564
  tail call void @msm_writel(i32 noundef 34, ptr noundef %add.ptr.i253.i) #4
  %211 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i255.i = getelementptr i8, ptr %212, i32 116
  tail call void @msm_writel(i32 noundef 2236962, ptr noundef %add.ptr.i255.i) #4
  %213 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i257.i = getelementptr i8, ptr %214, i32 120
  tail call void @msm_writel(i32 noundef 16644, ptr noundef %add.ptr.i257.i) #4
  %215 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i259.i = getelementptr i8, ptr %216, i32 124
  tail call void @msm_writel(i32 noundef 546, ptr noundef %add.ptr.i259.i) #4
  %217 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i261.i = getelementptr i8, ptr %218, i32 552
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i261.i) #4
  %219 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i263.i = getelementptr i8, ptr %220, i32 556
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i263.i) #4
  %221 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i265.i = getelementptr i8, ptr %222, i32 560
  tail call void @msm_writel(i32 noundef 2228224, ptr noundef %add.ptr.i265.i) #4
  %223 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 430, i32 %224)
  %cmp.i267.not.i = icmp eq i32 %224, 430
  br i1 %cmp.i267.not.i, label %land.lhs.true.i, label %if.end90.i.if.else96.i_crit_edge

if.end90.i.if.else96.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else96.i

land.lhs.true.i:                                  ; preds = %if.end90.i
  %patchid.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1, i32 3
  %225 = ptrtoint ptr %patchid.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %patchid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %226)
  %cmp93.i = icmp ult i8 %226, 2
  br i1 %cmp93.i, label %land.lhs.true.i.a4xx_enable_hwcg.exit_crit_edge, label %land.lhs.true.i.if.else96.i_crit_edge

land.lhs.true.i.if.else96.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else96.i

land.lhs.true.i.a4xx_enable_hwcg.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %a4xx_enable_hwcg.exit

if.else96.i:                                      ; preds = %land.lhs.true.i.if.else96.i_crit_edge, %if.end90.i.if.else96.i_crit_edge
  br label %a4xx_enable_hwcg.exit

a4xx_enable_hwcg.exit:                            ; preds = %if.else96.i, %land.lhs.true.i.a4xx_enable_hwcg.exit_crit_edge
  %.sink295.i = phi i32 [ -1431655766, %if.else96.i ], [ 0, %land.lhs.true.i.a4xx_enable_hwcg.exit_crit_edge ]
  %227 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i272.i = getelementptr i8, ptr %228, i32 128
  tail call void @msm_writel(i32 noundef %.sink295.i, ptr noundef %add.ptr.i272.i) #4
  %229 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i274.i = getelementptr i8, ptr %230, i32 264
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i274.i) #4
  %231 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 420, i32 %232)
  %cmp.i254.not = icmp eq i32 %232, 420
  br i1 %cmp.i254.not, label %if.then33, label %a4xx_enable_hwcg.exit.if.end36_crit_edge

a4xx_enable_hwcg.exit.if.end36_crit_edge:         ; preds = %a4xx_enable_hwcg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then33:                                        ; preds = %a4xx_enable_hwcg.exit
  call void @__sanitizer_cov_trace_pc() #6
  %233 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i257 = getelementptr i8, ptr %234, i32 560
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i257) #4
  %and = and i32 %call.i, -7340033
  %or35 = or i32 %and, 2097152
  %235 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i259 = getelementptr i8, ptr %236, i32 560
  tail call void @msm_writel(i32 noundef %or35, ptr noundef %add.ptr.i259) #4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %a4xx_enable_hwcg.exit.if.end36_crit_edge
  %237 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i261 = getelementptr i8, ptr %238, i32 2368
  tail call void @msm_writel(i32 noundef 7, ptr noundef %add.ptr.i261) #4
  %239 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i263 = getelementptr i8, ptr %240, i32 2304
  tail call void @msm_writel(i32 noundef 1644167184, ptr noundef %add.ptr.i263) #4
  %241 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i265 = getelementptr i8, ptr %242, i32 2308
  tail call void @msm_writel(i32 noundef 1660944416, ptr noundef %add.ptr.i265) #4
  %243 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i267 = getelementptr i8, ptr %244, i32 2312
  tail call void @msm_writel(i32 noundef 1677721664, ptr noundef %add.ptr.i267) #4
  %245 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i269 = getelementptr i8, ptr %246, i32 2316
  tail call void @msm_writel(i32 noundef 1694498944, ptr noundef %add.ptr.i269) #4
  %247 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i271 = getelementptr i8, ptr %248, i32 2320
  tail call void @msm_writel(i32 noundef 1711276288, ptr noundef %add.ptr.i271) #4
  %249 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i273 = getelementptr i8, ptr %250, i32 2324
  tail call void @msm_writel(i32 noundef 1677722112, ptr noundef %add.ptr.i273) #4
  %251 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i275 = getelementptr i8, ptr %252, i32 2328
  tail call void @msm_writel(i32 noundef 1728055296, ptr noundef %add.ptr.i275) #4
  %253 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i277 = getelementptr i8, ptr %254, i32 2332
  tail call void @msm_writel(i32 noundef 1677727232, ptr noundef %add.ptr.i277) #4
  %255 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i279 = getelementptr i8, ptr %256, i32 2336
  tail call void @msm_writel(i32 noundef 1610625792, ptr noundef %add.ptr.i279) #4
  %257 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i281 = getelementptr i8, ptr %258, i32 2340
  tail call void @msm_writel(i32 noundef 1610627072, ptr noundef %add.ptr.i281) #4
  %259 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i283 = getelementptr i8, ptr %260, i32 2344
  tail call void @msm_writel(i32 noundef 1627404672, ptr noundef %add.ptr.i283) #4
  %261 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i285 = getelementptr i8, ptr %262, i32 2348
  tail call void @msm_writel(i32 noundef 1845559296, ptr noundef %add.ptr.i285) #4
  %263 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i287 = getelementptr i8, ptr %264, i32 220
  tail call void @msm_writel(i32 noundef 36826914, ptr noundef %add.ptr.i287) #4
  %call49 = tail call i32 @adreno_hw_init(ptr noundef %gpu) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end52:                                         ; preds = %if.end36
  %265 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i289 = getelementptr i8, ptr %266, i32 2052
  tail call void @msm_writel(i32 noundef 134218252, ptr noundef %add.ptr.i289) #4
  %rb = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 13
  %267 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %rb, align 4
  %iova = getelementptr inbounds %struct.msm_ringbuffer, ptr %268, i32 0, i32 10
  %269 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %iova, align 8
  %conv = trunc i64 %270 to i32
  %271 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i291 = getelementptr i8, ptr %272, i32 2048
  tail call void @msm_writel(i32 noundef %conv, ptr noundef %add.ptr.i291) #4
  %fw = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 8
  %273 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %274, i32 0, i32 1
  %275 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %data, align 4
  %277 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %274, align 4
  %279 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %276, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %280) #4
  %281 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i293 = getelementptr i8, ptr %282, i32 2196
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i293) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %278)
  %cmp303 = icmp ugt i32 %278, 7
  br i1 %cmp303, label %for.body.preheader, label %if.end52.for.end_crit_edge

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.preheader:                               ; preds = %if.end52
  %div171 = lshr i32 %278, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0304 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %arrayidx63 = getelementptr i32, ptr %276, i32 %i.0304
  %283 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %arrayidx63, align 4
  %285 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i295 = getelementptr i8, ptr %286, i32 2204
  tail call void @msm_writel(i32 noundef %284, ptr noundef %add.ptr.i295) #4
  %inc = add nuw nsw i32 %i.0304, 1
  %exitcond.not = icmp eq i32 %inc, %div171
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end52.for.end_crit_edge
  %arrayidx65 = getelementptr %struct.adreno_gpu, ptr %gpu, i32 0, i32 8, i32 1
  %287 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %arrayidx65, align 4
  %data66 = getelementptr inbounds %struct.firmware, ptr %288, i32 0, i32 1
  %289 = ptrtoint ptr %data66 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %data66, align 4
  %291 = ptrtoint ptr %288 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %288, align 4
  %293 = ptrtoint ptr %290 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %290, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %294) #4
  %295 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i297 = getelementptr i8, ptr %296, i32 2188
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i297) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %292)
  %cmp73305 = icmp ugt i32 %292, 7
  br i1 %cmp73305, label %for.body75.preheader, label %for.end.for.end79_crit_edge

for.end.for.end79_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end79

for.body75.preheader:                             ; preds = %for.end
  %div70172 = lshr i32 %292, 2
  br label %for.body75

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %for.body75.preheader
  %i.1306 = phi i32 [ %inc78, %for.body75.for.body75_crit_edge ], [ 1, %for.body75.preheader ]
  %arrayidx76 = getelementptr i32, ptr %290, i32 %i.1306
  %297 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %arrayidx76, align 4
  %299 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i299 = getelementptr i8, ptr %300, i32 2192
  tail call void @msm_writel(i32 noundef %298, ptr noundef %add.ptr.i299) #4
  %inc78 = add nuw nsw i32 %i.1306, 1
  %exitcond308.not = icmp eq i32 %inc78, %div70172
  br i1 %exitcond308.not, label %for.body75.for.end79_crit_edge, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body75

for.body75.for.end79_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end79

for.end79:                                        ; preds = %for.body75.for.end79_crit_edge, %for.end.for.end79_crit_edge
  %301 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i301 = getelementptr i8, ptr %302, i32 2228
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i301) #4
  %303 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %rb, align 4
  tail call void @adreno_wait_ring(ptr noundef %304, i32 noundef 18) #4
  %next.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 6
  %305 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %next.i.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 4
  %307 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %306, %308
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.end79.OUT_PKT3.exit.i_crit_edge

for.end79.OUT_PKT3.exit.i_crit_edge:              ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_PKT3.exit.i

if.then.i.i.i:                                    ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #6
  %start.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %309 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %start.i.i.i, align 4
  %311 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %310, ptr %next.i.i.i, align 8
  br label %OUT_PKT3.exit.i

OUT_PKT3.exit.i:                                  ; preds = %if.then.i.i.i, %for.end79.OUT_PKT3.exit.i_crit_edge
  %312 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %313, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %next.i.i.i, align 8
  %314 = ptrtoint ptr %313 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 -1072674816, ptr %313, align 4
  %315 = load ptr, ptr %next.i.i.i, align 8
  %316 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i = icmp eq ptr %315, %317
  br i1 %cmp.i.i, label %if.then.i.i, label %OUT_PKT3.exit.i.OUT_RING.exit.i_crit_edge

OUT_PKT3.exit.i.OUT_RING.exit.i_crit_edge:        ; preds = %OUT_PKT3.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit.i

if.then.i.i:                                      ; preds = %OUT_PKT3.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %318 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %start.i.i, align 4
  %320 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr %319, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit.i

OUT_RING.exit.i:                                  ; preds = %if.then.i.i, %OUT_PKT3.exit.i.OUT_RING.exit.i_crit_edge
  %321 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %322, i32 1
  store ptr %incdec.ptr.i.i, ptr %next.i.i.i, align 8
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 1015, ptr %322, align 4
  %324 = load ptr, ptr %next.i.i.i, align 8
  %325 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i23.i = icmp eq ptr %324, %326
  br i1 %cmp.i23.i, label %if.then.i25.i, label %OUT_RING.exit.i.OUT_RING.exit27.i_crit_edge

OUT_RING.exit.i.OUT_RING.exit27.i_crit_edge:      ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit27.i

if.then.i25.i:                                    ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i24.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %327 = ptrtoint ptr %start.i24.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %start.i24.i, align 4
  %329 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %328, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit27.i

OUT_RING.exit27.i:                                ; preds = %if.then.i25.i, %OUT_RING.exit.i.OUT_RING.exit27.i_crit_edge
  %330 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i26.i = getelementptr i32, ptr %331, i32 1
  store ptr %incdec.ptr.i26.i, ptr %next.i.i.i, align 8
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 0, ptr %331, align 4
  %333 = load ptr, ptr %next.i.i.i, align 8
  %334 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i30.i = icmp eq ptr %333, %335
  br i1 %cmp.i30.i, label %if.then.i32.i, label %OUT_RING.exit27.i.OUT_RING.exit34.i_crit_edge

OUT_RING.exit27.i.OUT_RING.exit34.i_crit_edge:    ; preds = %OUT_RING.exit27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit34.i

if.then.i32.i:                                    ; preds = %OUT_RING.exit27.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i31.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %336 = ptrtoint ptr %start.i31.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %start.i31.i, align 4
  %338 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %337, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit34.i

OUT_RING.exit34.i:                                ; preds = %if.then.i32.i, %OUT_RING.exit27.i.OUT_RING.exit34.i_crit_edge
  %339 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i33.i = getelementptr i32, ptr %340, i32 1
  store ptr %incdec.ptr.i33.i, ptr %next.i.i.i, align 8
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 0, ptr %340, align 4
  %342 = load ptr, ptr %next.i.i.i, align 8
  %343 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i37.i = icmp eq ptr %342, %344
  br i1 %cmp.i37.i, label %if.then.i39.i, label %OUT_RING.exit34.i.OUT_RING.exit41.i_crit_edge

OUT_RING.exit34.i.OUT_RING.exit41.i_crit_edge:    ; preds = %OUT_RING.exit34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit41.i

if.then.i39.i:                                    ; preds = %OUT_RING.exit34.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i38.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %345 = ptrtoint ptr %start.i38.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %start.i38.i, align 4
  %347 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %346, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit41.i

OUT_RING.exit41.i:                                ; preds = %if.then.i39.i, %OUT_RING.exit34.i.OUT_RING.exit41.i_crit_edge
  %348 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i40.i = getelementptr i32, ptr %349, i32 1
  store ptr %incdec.ptr.i40.i, ptr %next.i.i.i, align 8
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 0, ptr %349, align 4
  %351 = load ptr, ptr %next.i.i.i, align 8
  %352 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i44.i = icmp eq ptr %351, %353
  br i1 %cmp.i44.i, label %if.then.i46.i, label %OUT_RING.exit41.i.OUT_RING.exit48.i_crit_edge

OUT_RING.exit41.i.OUT_RING.exit48.i_crit_edge:    ; preds = %OUT_RING.exit41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit48.i

if.then.i46.i:                                    ; preds = %OUT_RING.exit41.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i45.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %354 = ptrtoint ptr %start.i45.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %start.i45.i, align 4
  %356 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr %355, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit48.i

OUT_RING.exit48.i:                                ; preds = %if.then.i46.i, %OUT_RING.exit41.i.OUT_RING.exit48.i_crit_edge
  %357 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i47.i = getelementptr i32, ptr %358, i32 1
  store ptr %incdec.ptr.i47.i, ptr %next.i.i.i, align 8
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 128, ptr %358, align 4
  %360 = load ptr, ptr %next.i.i.i, align 8
  %361 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i51.i = icmp eq ptr %360, %362
  br i1 %cmp.i51.i, label %if.then.i53.i, label %OUT_RING.exit48.i.OUT_RING.exit55.i_crit_edge

OUT_RING.exit48.i.OUT_RING.exit55.i_crit_edge:    ; preds = %OUT_RING.exit48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit55.i

if.then.i53.i:                                    ; preds = %OUT_RING.exit48.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i52.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %363 = ptrtoint ptr %start.i52.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %start.i52.i, align 4
  %365 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %364, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit55.i

OUT_RING.exit55.i:                                ; preds = %if.then.i53.i, %OUT_RING.exit48.i.OUT_RING.exit55.i_crit_edge
  %366 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i54.i = getelementptr i32, ptr %367, i32 1
  store ptr %incdec.ptr.i54.i, ptr %next.i.i.i, align 8
  %368 = ptrtoint ptr %367 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 256, ptr %367, align 4
  %369 = load ptr, ptr %next.i.i.i, align 8
  %370 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i58.i = icmp eq ptr %369, %371
  br i1 %cmp.i58.i, label %if.then.i60.i, label %OUT_RING.exit55.i.OUT_RING.exit62.i_crit_edge

OUT_RING.exit55.i.OUT_RING.exit62.i_crit_edge:    ; preds = %OUT_RING.exit55.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit62.i

if.then.i60.i:                                    ; preds = %OUT_RING.exit55.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i59.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %372 = ptrtoint ptr %start.i59.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %start.i59.i, align 4
  %374 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr %373, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit62.i

OUT_RING.exit62.i:                                ; preds = %if.then.i60.i, %OUT_RING.exit55.i.OUT_RING.exit62.i_crit_edge
  %375 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i61.i = getelementptr i32, ptr %376, i32 1
  store ptr %incdec.ptr.i61.i, ptr %next.i.i.i, align 8
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 384, ptr %376, align 4
  %378 = load ptr, ptr %next.i.i.i, align 8
  %379 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i65.i = icmp eq ptr %378, %380
  br i1 %cmp.i65.i, label %if.then.i67.i, label %OUT_RING.exit62.i.OUT_RING.exit69.i_crit_edge

OUT_RING.exit62.i.OUT_RING.exit69.i_crit_edge:    ; preds = %OUT_RING.exit62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit69.i

if.then.i67.i:                                    ; preds = %OUT_RING.exit62.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i66.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %381 = ptrtoint ptr %start.i66.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %start.i66.i, align 4
  %383 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr %382, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit69.i

OUT_RING.exit69.i:                                ; preds = %if.then.i67.i, %OUT_RING.exit62.i.OUT_RING.exit69.i_crit_edge
  %384 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i68.i = getelementptr i32, ptr %385, i32 1
  store ptr %incdec.ptr.i68.i, ptr %next.i.i.i, align 8
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 26112, ptr %385, align 4
  %387 = load ptr, ptr %next.i.i.i, align 8
  %388 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i72.i = icmp eq ptr %387, %389
  br i1 %cmp.i72.i, label %if.then.i74.i, label %OUT_RING.exit69.i.OUT_RING.exit76.i_crit_edge

OUT_RING.exit69.i.OUT_RING.exit76.i_crit_edge:    ; preds = %OUT_RING.exit69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit76.i

if.then.i74.i:                                    ; preds = %OUT_RING.exit69.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i73.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %390 = ptrtoint ptr %start.i73.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %start.i73.i, align 4
  %392 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr %391, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit76.i

OUT_RING.exit76.i:                                ; preds = %if.then.i74.i, %OUT_RING.exit69.i.OUT_RING.exit76.i_crit_edge
  %393 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i75.i = getelementptr i32, ptr %394, i32 1
  store ptr %incdec.ptr.i75.i, ptr %next.i.i.i, align 8
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 336, ptr %394, align 4
  %396 = load ptr, ptr %next.i.i.i, align 8
  %397 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i79.i = icmp eq ptr %396, %398
  br i1 %cmp.i79.i, label %if.then.i81.i, label %OUT_RING.exit76.i.OUT_RING.exit83.i_crit_edge

OUT_RING.exit76.i.OUT_RING.exit83.i_crit_edge:    ; preds = %OUT_RING.exit76.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit83.i

if.then.i81.i:                                    ; preds = %OUT_RING.exit76.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i80.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %399 = ptrtoint ptr %start.i80.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %start.i80.i, align 4
  %401 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %400, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit83.i

OUT_RING.exit83.i:                                ; preds = %if.then.i81.i, %OUT_RING.exit76.i.OUT_RING.exit83.i_crit_edge
  %402 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i82.i = getelementptr i32, ptr %403, i32 1
  store ptr %incdec.ptr.i82.i, ptr %next.i.i.i, align 8
  %404 = ptrtoint ptr %403 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 334, ptr %403, align 4
  %405 = load ptr, ptr %next.i.i.i, align 8
  %406 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i86.i = icmp eq ptr %405, %407
  br i1 %cmp.i86.i, label %if.then.i88.i, label %OUT_RING.exit83.i.OUT_RING.exit90.i_crit_edge

OUT_RING.exit83.i.OUT_RING.exit90.i_crit_edge:    ; preds = %OUT_RING.exit83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit90.i

if.then.i88.i:                                    ; preds = %OUT_RING.exit83.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i87.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %408 = ptrtoint ptr %start.i87.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %start.i87.i, align 4
  %410 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store ptr %409, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit90.i

OUT_RING.exit90.i:                                ; preds = %if.then.i88.i, %OUT_RING.exit83.i.OUT_RING.exit90.i_crit_edge
  %411 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i89.i = getelementptr i32, ptr %412, i32 1
  store ptr %incdec.ptr.i89.i, ptr %next.i.i.i, align 8
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 340, ptr %412, align 4
  %414 = load ptr, ptr %next.i.i.i, align 8
  %415 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i93.i = icmp eq ptr %414, %416
  br i1 %cmp.i93.i, label %if.then.i95.i, label %OUT_RING.exit90.i.OUT_RING.exit97.i_crit_edge

OUT_RING.exit90.i.OUT_RING.exit97.i_crit_edge:    ; preds = %OUT_RING.exit90.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit97.i

if.then.i95.i:                                    ; preds = %OUT_RING.exit90.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i94.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %417 = ptrtoint ptr %start.i94.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %start.i94.i, align 4
  %419 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store ptr %418, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit97.i

OUT_RING.exit97.i:                                ; preds = %if.then.i95.i, %OUT_RING.exit90.i.OUT_RING.exit97.i_crit_edge
  %420 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i96.i = getelementptr i32, ptr %421, i32 1
  store ptr %incdec.ptr.i96.i, ptr %next.i.i.i, align 8
  %422 = ptrtoint ptr %421 to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 1, ptr %421, align 4
  %423 = load ptr, ptr %next.i.i.i, align 8
  %424 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i100.i = icmp eq ptr %423, %425
  br i1 %cmp.i100.i, label %if.then.i102.i, label %OUT_RING.exit97.i.OUT_RING.exit104.i_crit_edge

OUT_RING.exit97.i.OUT_RING.exit104.i_crit_edge:   ; preds = %OUT_RING.exit97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit104.i

if.then.i102.i:                                   ; preds = %OUT_RING.exit97.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i101.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %426 = ptrtoint ptr %start.i101.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %start.i101.i, align 4
  %428 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store ptr %427, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit104.i

OUT_RING.exit104.i:                               ; preds = %if.then.i102.i, %OUT_RING.exit97.i.OUT_RING.exit104.i_crit_edge
  %429 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i103.i = getelementptr i32, ptr %430, i32 1
  store ptr %incdec.ptr.i103.i, ptr %next.i.i.i, align 8
  %431 = ptrtoint ptr %430 to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 0, ptr %430, align 4
  %432 = load ptr, ptr %next.i.i.i, align 8
  %433 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i107.i = icmp eq ptr %432, %434
  br i1 %cmp.i107.i, label %if.then.i109.i, label %OUT_RING.exit104.i.OUT_RING.exit111.i_crit_edge

OUT_RING.exit104.i.OUT_RING.exit111.i_crit_edge:  ; preds = %OUT_RING.exit104.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit111.i

if.then.i109.i:                                   ; preds = %OUT_RING.exit104.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i108.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %435 = ptrtoint ptr %start.i108.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %start.i108.i, align 4
  %437 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr %436, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit111.i

OUT_RING.exit111.i:                               ; preds = %if.then.i109.i, %OUT_RING.exit104.i.OUT_RING.exit111.i_crit_edge
  %438 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i110.i = getelementptr i32, ptr %439, i32 1
  store ptr %incdec.ptr.i110.i, ptr %next.i.i.i, align 8
  %440 = ptrtoint ptr %439 to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 0, ptr %439, align 4
  %441 = load ptr, ptr %next.i.i.i, align 8
  %442 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i114.i = icmp eq ptr %441, %443
  br i1 %cmp.i114.i, label %if.then.i116.i, label %OUT_RING.exit111.i.OUT_RING.exit118.i_crit_edge

OUT_RING.exit111.i.OUT_RING.exit118.i_crit_edge:  ; preds = %OUT_RING.exit111.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit118.i

if.then.i116.i:                                   ; preds = %OUT_RING.exit111.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i115.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %444 = ptrtoint ptr %start.i115.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %start.i115.i, align 4
  %446 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store ptr %445, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit118.i

OUT_RING.exit118.i:                               ; preds = %if.then.i116.i, %OUT_RING.exit111.i.OUT_RING.exit118.i_crit_edge
  %447 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i117.i = getelementptr i32, ptr %448, i32 1
  store ptr %incdec.ptr.i117.i, ptr %next.i.i.i, align 8
  %449 = ptrtoint ptr %448 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 0, ptr %448, align 4
  %450 = load ptr, ptr %next.i.i.i, align 8
  %451 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i121.i = icmp eq ptr %450, %452
  br i1 %cmp.i121.i, label %if.then.i123.i, label %OUT_RING.exit118.i.OUT_RING.exit125.i_crit_edge

OUT_RING.exit118.i.OUT_RING.exit125.i_crit_edge:  ; preds = %OUT_RING.exit118.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit125.i

if.then.i123.i:                                   ; preds = %OUT_RING.exit118.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i122.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %453 = ptrtoint ptr %start.i122.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %start.i122.i, align 4
  %455 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %454, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit125.i

OUT_RING.exit125.i:                               ; preds = %if.then.i123.i, %OUT_RING.exit118.i.OUT_RING.exit125.i_crit_edge
  %456 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i124.i = getelementptr i32, ptr %457, i32 1
  store ptr %incdec.ptr.i124.i, ptr %next.i.i.i, align 8
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 0, ptr %457, align 4
  %459 = load ptr, ptr %next.i.i.i, align 8
  %460 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i128.i = icmp eq ptr %459, %461
  br i1 %cmp.i128.i, label %if.then.i130.i, label %OUT_RING.exit125.i.OUT_RING.exit132.i_crit_edge

OUT_RING.exit125.i.OUT_RING.exit132.i_crit_edge:  ; preds = %OUT_RING.exit125.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit132.i

if.then.i130.i:                                   ; preds = %OUT_RING.exit125.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i129.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %304, i32 0, i32 3
  %462 = ptrtoint ptr %start.i129.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %start.i129.i, align 4
  %464 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %464)
  store ptr %463, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit132.i

OUT_RING.exit132.i:                               ; preds = %if.then.i130.i, %OUT_RING.exit125.i.OUT_RING.exit132.i_crit_edge
  %465 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i131.i = getelementptr i32, ptr %466, i32 1
  store ptr %incdec.ptr.i131.i, ptr %next.i.i.i, align 8
  %467 = ptrtoint ptr %466 to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 0, ptr %466, align 4
  tail call void @adreno_flush(ptr noundef %gpu, ptr noundef %304, i32 noundef 517) #4
  %468 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %rb, align 4
  %call.i.i = tail call zeroext i1 @adreno_idle(ptr noundef %gpu, ptr noundef %469) #4
  br i1 %call.i.i, label %if.end.i.i, label %OUT_RING.exit132.i.cleanup_crit_edge

OUT_RING.exit132.i.cleanup_crit_edge:             ; preds = %OUT_RING.exit132.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %OUT_RING.exit132.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %470 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -100, %470
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %471 = ptrtoint ptr %mmio.i207 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %mmio.i207, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %472, i32 1604
  %call.i.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %do.cond.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond.i.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %473 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %473
  %cmp.i133.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i133.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %if.then6.critedge.i.i

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

if.then6.critedge.i.i:                            ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %474 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %gpu, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, ptr noundef %475) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then6.critedge.i.i, %do.body.i.i.cleanup_crit_edge, %OUT_RING.exit132.i.cleanup_crit_edge, %if.end36.cleanup_crit_edge
  %retval.0 = phi i32 [ %call49, %if.end36.cleanup_crit_edge ], [ -22, %if.then6.critedge.i.i ], [ -22, %OUT_RING.exit132.i.cleanup_crit_edge ], [ 0, %do.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a4xx_pm_suspend(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @msm_gpu_pm_suspend(ptr noundef %gpu) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %0 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 430, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 430
  br i1 %cmp.i.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 608
  tail call void @msm_writel(i32 noundef 7831553, ptr noundef %add.ptr.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a4xx_pm_resume(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @msm_gpu_pm_resume(ptr noundef %gpu) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %0 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 430, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 430
  br i1 %cmp.i.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 608
  tail call void @msm_writel(i32 noundef 7831552, ptr noundef %add.ptr.i) #4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 1073740) #4
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %6, i32 1728
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i13) #4
  %and = and i32 %call.i, 1048576
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.do.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a4xx_submit(ptr noundef %gpu, ptr nocapture noundef readonly %submit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %7, label %for.body.for.inc_crit_edge [
    i32 1, label %for.body.sw.bb3_crit_edge
    i32 3, label %sw.bb
  ]

for.body.sw.bb3_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.bb3:                                           ; preds = %sw.bb.sw.bb3_crit_edge, %for.body.sw.bb3_crit_edge
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 3) #4
  %17 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next.i.i, align 8
  %19 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i.i, align 8
  %cmp.i.i = icmp eq ptr %18, %20
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb3.OUT_PKT3.exit_crit_edge

sw.bb3.OUT_PKT3.exit_crit_edge:                   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_PKT3.exit

if.then.i.i:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
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
  store i32 -1073660160, ptr %25, align 4
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit

if.then.i:                                        ; preds = %OUT_PKT3.exit
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit44

if.then.i42:                                      ; preds = %OUT_RING.exit
  call void @__sanitizer_cov_trace_pc() #6
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
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 1) #4
  %53 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %next.i.i, align 8
  %55 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i.i, align 8
  %cmp.i.i47 = icmp eq ptr %54, %56
  br i1 %cmp.i.i47, label %if.then.i.i49, label %OUT_RING.exit44.OUT_PKT2.exit_crit_edge

OUT_RING.exit44.OUT_PKT2.exit_crit_edge:          ; preds = %OUT_RING.exit44
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_PKT2.exit

if.then.i.i49:                                    ; preds = %OUT_RING.exit44
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 2) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_PKT0.exit

if.then.i.i55:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit63

if.then.i61:                                      ; preds = %OUT_PKT0.exit
  call void @__sanitizer_cov_trace_pc() #6
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
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 2) #4
  %86 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %next.i.i51, align 8
  %88 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %end.i.i52, align 8
  %cmp.i.i66 = icmp eq ptr %87, %89
  br i1 %cmp.i.i66, label %if.then.i.i68, label %OUT_RING.exit63.OUT_PKT3.exit70_crit_edge

OUT_RING.exit63.OUT_PKT3.exit70_crit_edge:        ; preds = %OUT_RING.exit63
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_PKT3.exit70

if.then.i.i68:                                    ; preds = %OUT_RING.exit63
  call void @__sanitizer_cov_trace_pc() #6
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
  store i32 -1073723904, ptr %94, align 4
  %96 = load ptr, ptr %next.i.i51, align 8
  %97 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %end.i.i52, align 8
  %cmp.i73 = icmp eq ptr %96, %98
  br i1 %cmp.i73, label %if.then.i75, label %OUT_PKT3.exit70.OUT_RING.exit77_crit_edge

OUT_PKT3.exit70.OUT_RING.exit77_crit_edge:        ; preds = %OUT_PKT3.exit70
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit77

if.then.i75:                                      ; preds = %OUT_PKT3.exit70
  call void @__sanitizer_cov_trace_pc() #6
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
  store i32 7, ptr %103, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 2) #4
  %105 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %next.i.i51, align 8
  %107 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %end.i.i52, align 8
  %cmp.i.i80 = icmp eq ptr %106, %108
  br i1 %cmp.i.i80, label %if.then.i.i82, label %OUT_RING.exit77.OUT_PKT3.exit84_crit_edge

OUT_RING.exit77.OUT_PKT3.exit84_crit_edge:        ; preds = %OUT_RING.exit77
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_PKT3.exit84

if.then.i.i82:                                    ; preds = %OUT_RING.exit77
  call void @__sanitizer_cov_trace_pc() #6
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
  store i32 -1073732096, ptr %113, align 4
  %115 = load ptr, ptr %next.i.i51, align 8
  %116 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %end.i.i52, align 8
  %cmp.i87 = icmp eq ptr %115, %117
  br i1 %cmp.i87, label %if.then.i89, label %OUT_PKT3.exit84.OUT_RING.exit91_crit_edge

OUT_PKT3.exit84.OUT_RING.exit91_crit_edge:        ; preds = %OUT_PKT3.exit84
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit91

if.then.i89:                                      ; preds = %OUT_PKT3.exit84
  call void @__sanitizer_cov_trace_pc() #6
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
  store i32 0, ptr %122, align 4
  tail call void @adreno_wait_ring(ptr noundef %1, i32 noundef 4) #4
  %124 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %next.i.i51, align 8
  %126 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %end.i.i52, align 8
  %cmp.i.i94 = icmp eq ptr %125, %127
  br i1 %cmp.i.i94, label %if.then.i.i96, label %OUT_RING.exit91.OUT_PKT3.exit98_crit_edge

OUT_RING.exit91.OUT_PKT3.exit98_crit_edge:        ; preds = %OUT_RING.exit91
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_PKT3.exit98

if.then.i.i96:                                    ; preds = %OUT_RING.exit91
  call void @__sanitizer_cov_trace_pc() #6
  %start.i.i95 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %128 = ptrtoint ptr %start.i.i95 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %start.i.i95, align 4
  %130 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %next.i.i51, align 8
  br label %OUT_PKT3.exit98

OUT_PKT3.exit98:                                  ; preds = %if.then.i.i96, %OUT_RING.exit91.OUT_PKT3.exit98_crit_edge
  %131 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %next.i.i51, align 8
  %incdec.ptr.i.i97 = getelementptr i32, ptr %132, i32 1
  store ptr %incdec.ptr.i.i97, ptr %next.i.i51, align 8
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1073592832, ptr %132, align 4
  %134 = load ptr, ptr %next.i.i51, align 8
  %135 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %end.i.i52, align 8
  %cmp.i101 = icmp eq ptr %134, %136
  br i1 %cmp.i101, label %if.then.i103, label %OUT_PKT3.exit98.OUT_RING.exit105_crit_edge

OUT_PKT3.exit98.OUT_RING.exit105_crit_edge:       ; preds = %OUT_PKT3.exit98
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit105

if.then.i103:                                     ; preds = %OUT_PKT3.exit98
  call void @__sanitizer_cov_trace_pc() #6
  %start.i102 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %137 = ptrtoint ptr %start.i102 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %start.i102, align 4
  %139 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %next.i.i51, align 8
  br label %OUT_RING.exit105

OUT_RING.exit105:                                 ; preds = %if.then.i103, %OUT_PKT3.exit98.OUT_RING.exit105_crit_edge
  %140 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %next.i.i51, align 8
  %incdec.ptr.i104 = getelementptr i32, ptr %141, i32 1
  store ptr %incdec.ptr.i104, ptr %next.i.i51, align 8
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -2147483644, ptr %141, align 4
  %memptrs_iova = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 14
  %143 = ptrtoint ptr %memptrs_iova to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %memptrs_iova, align 8
  %145 = trunc i64 %144 to i32
  %conv9 = add i32 %145, 4
  %146 = load ptr, ptr %next.i.i51, align 8
  %147 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %end.i.i52, align 8
  %cmp.i108 = icmp eq ptr %146, %148
  br i1 %cmp.i108, label %if.then.i110, label %OUT_RING.exit105.OUT_RING.exit112_crit_edge

OUT_RING.exit105.OUT_RING.exit112_crit_edge:      ; preds = %OUT_RING.exit105
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit112

if.then.i110:                                     ; preds = %OUT_RING.exit105
  call void @__sanitizer_cov_trace_pc() #6
  %start.i109 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %149 = ptrtoint ptr %start.i109 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %start.i109, align 4
  %151 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %150, ptr %next.i.i51, align 8
  br label %OUT_RING.exit112

OUT_RING.exit112:                                 ; preds = %if.then.i110, %OUT_RING.exit105.OUT_RING.exit112_crit_edge
  %152 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %next.i.i51, align 8
  %incdec.ptr.i111 = getelementptr i32, ptr %153, i32 1
  store ptr %incdec.ptr.i111, ptr %next.i.i51, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %conv9, ptr %153, align 4
  %155 = ptrtoint ptr %seqno8 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %seqno8, align 8
  %157 = load ptr, ptr %next.i.i51, align 8
  %158 = ptrtoint ptr %end.i.i52 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %end.i.i52, align 8
  %cmp.i115 = icmp eq ptr %157, %159
  br i1 %cmp.i115, label %if.then.i117, label %OUT_RING.exit112.OUT_RING.exit119_crit_edge

OUT_RING.exit112.OUT_RING.exit119_crit_edge:      ; preds = %OUT_RING.exit112
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit119

if.then.i117:                                     ; preds = %OUT_RING.exit112
  call void @__sanitizer_cov_trace_pc() #6
  %start.i116 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %160 = ptrtoint ptr %start.i116 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %start.i116, align 4
  %162 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %161, ptr %next.i.i51, align 8
  br label %OUT_RING.exit119

OUT_RING.exit119:                                 ; preds = %if.then.i117, %OUT_RING.exit112.OUT_RING.exit119_crit_edge
  %163 = ptrtoint ptr %next.i.i51 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %next.i.i51, align 8
  %incdec.ptr.i118 = getelementptr i32, ptr %164, i32 1
  store ptr %incdec.ptr.i118, ptr %next.i.i51, align 8
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %156, ptr %164, align 4
  tail call void @adreno_flush(ptr noundef %gpu, ptr noundef %1, i32 noundef 517) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a4xx_irq(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1524
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #4
  %2 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpu, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %3, i32 noundef %call.i) #4
  %and = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %5, i32 4968
  %call.i15 = tail call i32 @msm_readl(ptr noundef %add.ptr.i14) #4
  %and2 = and i32 %call.i15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %cond = select i1 %tobool3.not, ptr @.str.13, ptr @.str.12
  %and4 = lshr i32 %call.i15, 2
  %shr = and i32 %and4, 262143
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %cond, i32 noundef %shr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %7, i32 216
  tail call void @msm_writel(i32 noundef %call.i, ptr noundef %add.ptr.i17) #4
  tail call void @msm_gpu_retire(ptr noundef %gpu) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_active_ring(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a4xx_recover(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @adreno_dump_info(ptr noundef %gpu) #4
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 5600
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef %call.i) #8
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %3, i32 5604
  %call.i.1 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.1) #4
  %call1.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef %call.i.1) #8
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.2 = getelementptr i8, ptr %5, i32 5608
  %call.i.2 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.2) #4
  %call1.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 2, i32 noundef %call.i.2) #8
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.3 = getelementptr i8, ptr %7, i32 5612
  %call.i.3 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.3) #4
  %call1.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 3, i32 noundef %call.i.3) #8
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.4 = getelementptr i8, ptr %9, i32 5616
  %call.i.4 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.4) #4
  %call1.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 4, i32 noundef %call.i.4) #8
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.5 = getelementptr i8, ptr %11, i32 5620
  %call.i.5 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.5) #4
  %call1.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 5, i32 noundef %call.i.5) #8
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.6 = getelementptr i8, ptr %13, i32 5624
  %call.i.6 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.6) #4
  %call1.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 6, i32 noundef %call.i.6) #8
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.7 = getelementptr i8, ptr %15, i32 5628
  %call.i.7 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.7) #4
  %call1.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 7, i32 noundef %call.i.7) #8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @hang_debug to i32))
  %16 = load i8, ptr @hang_debug, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 1604
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #4
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call.i.i) #8
  tail call void @adreno_dump(ptr noundef %gpu) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %20, i32 136
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i13) #4
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %22, i32 136
  %call.i16 = tail call i32 @msm_readl(ptr noundef %add.ptr.i15) #4
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i18 = getelementptr i8, ptr %24, i32 136
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i18) #4
  tail call void @adreno_recover(ptr noundef %gpu) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @a4xx_gpu_state_get(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 240) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @adreno_gpu_state_get(ptr noundef %gpu, ptr noundef nonnull %call7.i.i) #4
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %1 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 1604
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #4
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
declare dso_local i32 @adreno_gpu_state_put(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_iommu_create_address_space(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a4xx_get_rptr(ptr nocapture noundef readonly %gpu, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2064
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #4
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a4xx_get_timestamp(ptr nocapture noundef readonly %gpu, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 624
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #4
  %conv.i = zext i32 %call.i to i64
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %3, i32 628
  %call4.i = tail call i32 @msm_readl(ptr noundef %add.ptr3.i) #4
  %conv5.i = zext i32 %call4.i to i64
  %shl6.i = shl nuw i64 %conv5.i, 32
  %or.i = or i64 %shl6.i, %conv.i
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %or.i, ptr %value, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_hw_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_wait_ring(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_idle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_retire(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_recover(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_state_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_gpu_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_gpu_ocmem_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 655, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 693, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 700, i32 41}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 706, i32 47}
!9 = !{ptr @funcs, !10, !"funcs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 621, i32 38}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 330, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 338, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 394, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 407, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 411, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @a4xx_irq._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @a4xx_irq._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 357, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @a4xx_recover._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @a4xx_recover._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 567, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @a4xx_dump._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @a4xx_dump._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @a405_registers, !38, !"a405_registers", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 505, i32 27}
!39 = !{ptr @a4xx_registers, !40, !"a4xx_registers", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 423, i32 27}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/adreno/a4xx_gpu.c", i32 376, i32 2}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i8 0, i8 2}
!53 = !{i64 2157651683, i64 2157652185, i64 2157651720, i64 2157651776, i64 2157651810, i64 2157651834, i64 2157651875, i64 2157651896, i64 2157651924, i64 2157651958}
