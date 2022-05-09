; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/adreno/a3xx_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a3xx_gpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_gpu_perfcntr = type { i32, i32, i32, ptr }
%struct.adreno_gpu_funcs = type { %struct.msm_gpu_funcs, ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.a3xx_gpu = type { %struct.adreno_gpu, %struct.adreno_ocmem }
%struct.adreno_ocmem = type { ptr, i32, ptr }
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
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"*ERROR* no a3xx device\0A\00", [40 x i8] zeroinitializer }, align 32
@perfcntrs = internal constant { [2 x %struct.msm_gpu_perfcntr], [32 x i8] } { [2 x %struct.msm_gpu_perfcntr] [%struct.msm_gpu_perfcntr { i32 3786, i32 222, i32 29, ptr @.str.5 }, %struct.msm_gpu_perfcntr { i32 3787, i32 224, i32 14, ptr @.str.6 }], [32 x i8] zeroinitializer }, align 32
@a3xx_registers = internal constant { [273 x i32], [284 x i8] } { [273 x i32] [i32 0, i32 2, i32 16, i32 18, i32 24, i32 24, i32 32, i32 39, i32 41, i32 43, i32 46, i32 51, i32 64, i32 66, i32 80, i32 92, i32 96, i32 108, i32 128, i32 130, i32 132, i32 136, i32 144, i32 229, i32 234, i32 237, i32 256, i32 256, i32 272, i32 291, i32 448, i32 449, i32 451, i32 453, i32 455, i32 455, i32 469, i32 473, i32 476, i32 477, i32 490, i32 490, i32 494, i32 497, i32 501, i32 501, i32 508, i32 511, i32 1088, i32 1088, i32 1091, i32 1091, i32 1093, i32 1093, i32 1101, i32 1103, i32 1106, i32 1106, i32 1108, i32 1135, i32 1148, i32 1148, i32 1151, i32 1151, i32 1400, i32 1407, i32 1536, i32 1538, i32 1541, i32 1543, i32 1546, i32 1550, i32 1554, i32 1556, i32 3073, i32 3074, i32 3078, i32 3101, i32 3133, i32 3135, i32 3144, i32 3147, i32 3200, i32 3200, i32 3208, i32 3211, i32 3232, i32 3255, i32 3264, i32 3265, i32 3270, i32 3271, i32 3300, i32 3301, i32 3584, i32 3589, i32 3596, i32 3596, i32 3618, i32 3619, i32 3649, i32 3653, i32 3684, i32 3685, i32 3712, i32 3714, i32 3716, i32 3721, i32 3744, i32 3745, i32 3748, i32 3751, i32 3780, i32 3787, i32 3808, i32 3808, i32 3840, i32 3841, i32 3843, i32 3849, i32 8256, i32 8256, i32 8260, i32 8260, i32 8264, i32 8269, i32 8296, i32 8297, i32 8300, i32 8301, i32 8304, i32 8304, i32 8306, i32 8306, i32 8308, i32 8309, i32 8313, i32 8314, i32 8384, i32 8403, i32 8420, i32 8431, i32 8448, i32 8457, i32 8460, i32 8460, i32 8462, i32 8462, i32 8464, i32 8465, i32 8468, i32 8469, i32 8676, i32 8676, i32 8682, i32 8682, i32 8684, i32 8685, i32 8688, i32 8688, i32 8704, i32 8722, i32 8724, i32 8727, i32 8730, i32 8730, i32 8768, i32 8830, i32 8832, i32 8843, i32 8896, i32 8896, i32 8900, i32 8910, i32 8912, i32 8920, i32 8927, i32 8934, i32 8936, i32 8937, i32 8940, i32 8940, i32 8944, i32 8951, i32 8959, i32 8959, i32 9024, i32 9027, i32 9280, i32 9280, i32 9284, i32 9284, i32 9288, i32 9293, i32 9320, i32 9321, i32 9324, i32 9325, i32 9328, i32 9328, i32 9330, i32 9330, i32 9332, i32 9333, i32 9337, i32 9338, i32 9408, i32 9427, i32 9444, i32 9455, i32 9472, i32 9481, i32 9484, i32 9484, i32 9486, i32 9486, i32 9488, i32 9489, i32 9492, i32 9493, i32 9700, i32 9700, i32 9706, i32 9706, i32 9708, i32 9709, i32 9712, i32 9712, i32 9728, i32 9746, i32 9748, i32 9751, i32 9754, i32 9754, i32 9792, i32 9854, i32 9856, i32 9867, i32 9920, i32 9920, i32 9924, i32 9934, i32 9936, i32 9944, i32 9951, i32 9958, i32 9960, i32 9961, i32 9964, i32 9964, i32 9968, i32 9975, i32 9983, i32 9983, i32 10048, i32 10051, i32 12300, i32 12302, i32 12316, i32 12317, i32 12330, i32 12330, i32 12332, i32 12333, i32 12336, i32 12337, i32 12340, i32 12342, i32 12348, i32 12348, i32 12382, i32 12383, i32 -1], [284 x i8] zeroinitializer }, align 32
@funcs = internal constant { %struct.adreno_gpu_funcs, [44 x i8] } { %struct.adreno_gpu_funcs { %struct.msm_gpu_funcs { ptr @adreno_get_param, ptr @a3xx_hw_init, ptr @msm_gpu_pm_suspend, ptr @msm_gpu_pm_resume, ptr @a3xx_submit, ptr null, ptr @a3xx_irq, ptr @adreno_active_ring, ptr @a3xx_recover, ptr @a3xx_destroy, ptr @adreno_show, ptr null, ptr null, ptr @a3xx_gpu_state_get, ptr @adreno_gpu_state_put, ptr null, ptr null, ptr @adreno_iommu_create_address_space, ptr null, ptr @a3xx_get_rptr }, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* No memory protection without IOMMU\0A\00", [52 x i8] zeroinitializer }, align 32
@allow_vram_carveout = external dso_local local_unnamed_addr global i8, align 1
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gfx-mem\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocmem\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ALUACTIVE\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ALUFULL\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"loading PM4 ucode version: %x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"loading PFP ucode version: %x\0A\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: timeout waiting for GPU to idle!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %08x\0A\00", [22 x i8] zeroinitializer }, align 32
@a3xx_recover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CP_SCRATCH_REG%d: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a3xx_recover\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/msm/adreno/a3xx_gpu.c\00", [58 x i8] zeroinitializer }, align 32
@a3xx_recover._entry_ptr = internal global ptr @a3xx_recover._entry, section ".printk_index", align 4
@hang_debug = external dso_local local_unnamed_addr global i8, align 1
@a3xx_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.14, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"status:   %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"a3xx_dump\00", [22 x i8] zeroinitializer }, align 32
@a3xx_dump._entry_ptr = internal global ptr @a3xx_dump._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 305, i64 307, i64 320, i64 330]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 307, i64 320, i64 330]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 305, i64 307, i64 320, i64 330]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 526, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"perfcntrs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 507, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"a3xx_registers\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 420, i32 27 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"funcs\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 486, i32 38 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 565, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 572, i32 41 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 578, i32 47 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 509, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 511, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 119, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 311, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 323, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 395, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 409, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 358, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [41 x i8] c"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 461, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @a3xx_dump._entry, ptr @a3xx_dump._entry_ptr, ptr @a3xx_recover._entry, ptr @a3xx_recover._entry_ptr, ptr @.str, ptr @.str.1, ptr @perfcntrs, ptr @a3xx_registers, ptr @funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perfcntrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3xx_registers to i32), i32 1092, i32 1376, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3xx_recover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3xx_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @a3xx_gpu_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
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
  br label %if.end50

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 936) #7
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.if.end50_crit_edge, label %if.end4

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.end4:                                          ; preds = %if.end
  %perfcntrs = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 11
  %7 = ptrtoint ptr %perfcntrs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @perfcntrs, ptr %perfcntrs, align 4
  %num_perfcntrs = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %num_perfcntrs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %num_perfcntrs, align 8
  %registers = getelementptr inbounds %struct.adreno_gpu, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %registers to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @a3xx_registers, ptr %registers, align 4
  %call6 = tail call i32 @adreno_gpu_init(ptr noundef %dev, ptr noundef nonnull %3, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @funcs, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.if.then47_crit_edge

if.end4.if.then47_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

if.end9:                                          ; preds = %if.end4
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 330, i32 %11)
  %cmp.i = icmp eq i32 %11, 330
  br i1 %cmp.i, label %if.then11, label %if.end9.if.end19_crit_edge

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then11:                                        ; preds = %if.end9
  %pdev13 = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %pdev13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev13, align 8
  %dev14 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %ocmem = getelementptr inbounds %struct.a3xx_gpu, ptr %call7.i.i, i32 0, i32 1
  %call15 = tail call i32 @adreno_gpu_ocmem_init(ptr noundef %dev14, ptr noundef nonnull %call7.i.i, ptr noundef %ocmem) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then11.if.end19_crit_edge, label %if.then11.if.then47_crit_edge

if.then11.if.then47_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.end19:                                         ; preds = %if.then11.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 24
  %14 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aspace, align 8
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %if.then21, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then21:                                        ; preds = %if.end19
  %dev22 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %16 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @allow_vram_carveout to i32))
  %18 = load i8, ptr @allow_vram_carveout, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool23.not = icmp eq i8 %18, 0
  br i1 %tobool23.not, label %if.then21.if.then47_crit_edge, label %if.then21.if.end26_crit_edge

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then21.if.then47_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %if.end19.if.end26_crit_edge
  %dev27 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call28 = tail call ptr @devm_of_icc_get(ptr noundef %dev27, ptr noundef nonnull @.str.3) #4
  %cmp.i86 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %call28 to i32
  br label %if.then47

if.end32:                                         ; preds = %if.end26
  %call34 = tail call ptr @devm_of_icc_get(ptr noundef %dev27, ptr noundef nonnull @.str.4) #4
  %cmp.i87 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.then36, label %if.end32.if.end40_crit_edge

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then36:                                        ; preds = %if.end32
  %20 = ptrtoint ptr %call34 to i32
  %cmp.not = icmp eq ptr %call34, inttoptr (i32 -61 to ptr)
  br i1 %cmp.not, label %if.then36.if.end40_crit_edge, label %if.then36.if.then47_crit_edge

if.then36.if.then47_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

if.then36.if.end40_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.end40:                                         ; preds = %if.then36.if.end40_crit_edge, %if.end32.if.end40_crit_edge
  %ocmem_icc_path.0 = phi ptr [ %call34, %if.end32.if.end40_crit_edge ], [ null, %if.then36.if.end40_crit_edge ]
  %fast_rate = getelementptr inbounds %struct.msm_gpu, ptr %call7.i.i, i32 0, i32 32
  %21 = ptrtoint ptr %fast_rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fast_rate, align 8
  %div = udiv i32 %22, 1000
  %mul = shl nuw nsw i32 %div, 3
  %call41 = tail call i32 @icc_set_bw(ptr noundef %call28, i32 noundef 0, i32 noundef %mul) #4
  %23 = ptrtoint ptr %fast_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fast_rate, align 8
  %div43 = udiv i32 %24, 1000
  %mul44 = shl nuw nsw i32 %div43, 3
  %call45 = tail call i32 @icc_set_bw(ptr noundef %ocmem_icc_path.0, i32 noundef 0, i32 noundef %mul44) #4
  br label %cleanup

if.then47:                                        ; preds = %if.then36.if.then47_crit_edge, %if.then30, %if.then21.if.then47_crit_edge, %if.then11.if.then47_crit_edge, %if.end4.if.then47_crit_edge
  %ret.0.ph = phi i32 [ -6, %if.then21.if.then47_crit_edge ], [ %20, %if.then36.if.then47_crit_edge ], [ %19, %if.then30 ], [ %call15, %if.then11.if.then47_crit_edge ], [ %call6, %if.end4.if.then47_crit_edge ]
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %26) #4
  tail call void @adreno_gpu_cleanup(ptr noundef nonnull %call7.i.i) #4
  %ocmem.i = getelementptr inbounds %struct.a3xx_gpu, ptr %call7.i.i, i32 0, i32 1
  tail call void @adreno_gpu_ocmem_cleanup(ptr noundef %ocmem.i) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end.if.end50_crit_edge, %if.then
  %ret.093 = phi i32 [ %ret.0.ph, %if.then47 ], [ -6, %if.then ], [ -12, %if.end.if.end50_crit_edge ]
  %27 = inttoptr i32 %ret.093 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end40
  %retval.0 = phi ptr [ %27, %if.end50 ], [ %call7.i.i, %if.end40 ]
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
define internal void @a3xx_destroy(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %1) #4
  tail call void @adreno_gpu_cleanup(ptr noundef %gpu) #4
  %ocmem = getelementptr inbounds %struct.a3xx_gpu, ptr %gpu, i32 0, i32 1
  tail call void @adreno_gpu_ocmem_cleanup(ptr noundef %ocmem) #4
  tail call void @kfree(ptr noundef %gpu) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_get_param(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a3xx_hw_init(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %1) #4
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %2 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revn.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body [
    i32 305, label %if.then
    i32 307, label %if.then5
    i32 320, label %if.then8
    i32 330, label %adreno_is_a330v2.exit
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 49328
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %add.ptr.i) #4
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i254 = getelementptr i8, ptr %8, i32 49332
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %add.ptr.i254) #4
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i256 = getelementptr i8, ptr %10, i32 49360
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %add.ptr.i256) #4
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i258 = getelementptr i8, ptr %12, i32 49364
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %add.ptr.i258) #4
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i260 = getelementptr i8, ptr %14, i32 49368
  tail call void @msm_writel(i32 noundef 771, ptr noundef %add.ptr.i260) #4
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i262 = getelementptr i8, ptr %16, i32 49344
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %add.ptr.i262) #4
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i264 = getelementptr i8, ptr %18, i32 49348
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %add.ptr.i264) #4
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i266 = getelementptr i8, ptr %20, i32 49320
  tail call void @msm_writel(i32 noundef 255, ptr noundef %add.ptr.i266) #4
  br label %if.end22

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mmio.i275 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  br label %if.end22

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mmio.i283 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %21 = ptrtoint ptr %mmio.i283 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i283, align 8
  %add.ptr.i284 = getelementptr i8, ptr %22, i32 49328
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %add.ptr.i284) #4
  %23 = ptrtoint ptr %mmio.i283 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i283, align 8
  %add.ptr.i286 = getelementptr i8, ptr %24, i32 49332
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %add.ptr.i286) #4
  %25 = ptrtoint ptr %mmio.i283 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i283, align 8
  %add.ptr.i288 = getelementptr i8, ptr %26, i32 49360
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %add.ptr.i288) #4
  %27 = ptrtoint ptr %mmio.i283 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i283, align 8
  %add.ptr.i290 = getelementptr i8, ptr %28, i32 49364
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %add.ptr.i290) #4
  %29 = ptrtoint ptr %mmio.i283 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i283, align 8
  %add.ptr.i292 = getelementptr i8, ptr %30, i32 49368
  tail call void @msm_writel(i32 noundef 771, ptr noundef %add.ptr.i292) #4
  %31 = ptrtoint ptr %mmio.i283 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i283, align 8
  %add.ptr.i294 = getelementptr i8, ptr %32, i32 49344
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %add.ptr.i294) #4
  %33 = ptrtoint ptr %mmio.i283 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i283, align 8
  %add.ptr.i296 = getelementptr i8, ptr %34, i32 49348
  tail call void @msm_writel(i32 noundef 269488144, ptr noundef %add.ptr.i296) #4
  %35 = ptrtoint ptr %mmio.i283 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i283, align 8
  %add.ptr.i298 = getelementptr i8, ptr %36, i32 49320
  tail call void @msm_writel(i32 noundef 255, ptr noundef %add.ptr.i298) #4
  %37 = ptrtoint ptr %mmio.i283 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i283, align 8
  %add.ptr.i300 = getelementptr i8, ptr %38, i32 49392
  tail call void @msm_writel(i32 noundef 48, ptr noundef %add.ptr.i300) #4
  %39 = ptrtoint ptr %mmio.i283 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i283, align 8
  %add.ptr.i302 = getelementptr i8, ptr %40, i32 49528
  tail call void @msm_writel(i32 noundef 60, ptr noundef %add.ptr.i302) #4
  br label %if.end22

adreno_is_a330v2.exit:                            ; preds = %entry
  %patchid.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %patchid.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %patchid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp.i309.not = icmp eq i8 %42, 0
  %mmio.i322 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %43 = ptrtoint ptr %mmio.i322 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i322, align 8
  br i1 %cmp.i309.not, label %if.then14, label %if.then11

if.then11:                                        ; preds = %adreno_is_a330v2.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i311 = getelementptr i8, ptr %44, i32 49264
  tail call void @msm_writel(i32 noundef 65599, ptr noundef %add.ptr.i311) #4
  %45 = ptrtoint ptr %mmio.i322 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i322, align 8
  %add.ptr.i313 = getelementptr i8, ptr %46, i32 49268
  tail call void @msm_writel(i32 noundef 164, ptr noundef %add.ptr.i313) #4
  br label %if.end22

if.then14:                                        ; preds = %adreno_is_a330v2.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i323 = getelementptr i8, ptr %44, i32 49328
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %add.ptr.i323) #4
  %47 = ptrtoint ptr %mmio.i322 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i322, align 8
  %add.ptr.i325 = getelementptr i8, ptr %48, i32 49332
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %add.ptr.i325) #4
  %49 = ptrtoint ptr %mmio.i322 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i322, align 8
  %add.ptr.i327 = getelementptr i8, ptr %50, i32 49360
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %add.ptr.i327) #4
  %51 = ptrtoint ptr %mmio.i322 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i322, align 8
  %add.ptr.i329 = getelementptr i8, ptr %52, i32 49364
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %add.ptr.i329) #4
  %53 = ptrtoint ptr %mmio.i322 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i322, align 8
  %add.ptr.i331 = getelementptr i8, ptr %54, i32 49368
  tail call void @msm_writel(i32 noundef 771, ptr noundef %add.ptr.i331) #4
  %55 = ptrtoint ptr %mmio.i322 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i322, align 8
  %add.ptr.i333 = getelementptr i8, ptr %56, i32 49344
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %add.ptr.i333) #4
  %57 = ptrtoint ptr %mmio.i322 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i322, align 8
  %add.ptr.i335 = getelementptr i8, ptr %58, i32 49348
  tail call void @msm_writel(i32 noundef 404232216, ptr noundef %add.ptr.i335) #4
  %59 = ptrtoint ptr %mmio.i322 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio.i322, align 8
  %add.ptr.i337 = getelementptr i8, ptr %60, i32 49320
  tail call void @msm_writel(i32 noundef 63, ptr noundef %add.ptr.i337) #4
  %61 = ptrtoint ptr %mmio.i322 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio.i322, align 8
  %add.ptr.i339 = getelementptr i8, ptr %62, i32 49392
  tail call void @msm_writel(i32 noundef 48, ptr noundef %add.ptr.i339) #4
  %63 = ptrtoint ptr %mmio.i322 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio.i322, align 8
  %add.ptr.i341 = getelementptr i8, ptr %64, i32 49444
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i341) #4
  %65 = ptrtoint ptr %mmio.i322 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio.i322, align 8
  %add.ptr.i343 = getelementptr i8, ptr %66, i32 49528
  tail call void @msm_writel(i32 noundef 63, ptr noundef %add.ptr.i343) #4
  %67 = ptrtoint ptr %mmio.i322 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio.i322, align 8
  %add.ptr.i345 = getelementptr i8, ptr %68, i32 49532
  tail call void @msm_writel(i32 noundef 4128831, ptr noundef %add.ptr.i345) #4
  br label %if.end22

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/adreno/a3xx_gpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #4, !srcloc !50
  unreachable

if.end22:                                         ; preds = %if.then14, %if.then11, %if.then8, %if.then5, %if.then
  %mmio.i275.sink484 = phi ptr [ %mmio.i275, %if.then5 ], [ %mmio.i322, %if.then11 ], [ %mmio.i322, %if.then14 ], [ %mmio.i283, %if.then8 ], [ %mmio.i, %if.then ]
  %.sink483 = phi i32 [ 49444, %if.then5 ], [ 49320, %if.then11 ], [ 49264, %if.then14 ], [ 49532, %if.then8 ], [ 49392, %if.then ]
  %.sink481 = phi i32 [ 3, %if.then5 ], [ 63, %if.then11 ], [ 65599, %if.then14 ], [ 3932220, %if.then8 ], [ 48, %if.then ]
  %.sink479 = phi i32 [ 49360, %if.then5 ], [ 49368, %if.then11 ], [ 49268, %if.then14 ], [ 49264, %if.then8 ], [ 49528, %if.then ]
  %.sink477 = phi i32 [ 10, %if.then5 ], [ 771, %if.then11 ], [ 164, %if.then14 ], [ 255, %if.then8 ], [ 60, %if.then ]
  %.sink476 = phi i32 [ 49364, %if.then5 ], [ 49444, %if.then11 ], [ 49156, %if.then14 ], [ 49268, %if.then8 ], [ 49532, %if.then ]
  %.sink = phi i32 [ 10, %if.then5 ], [ 3, %if.then11 ], [ 1, %if.then14 ], [ 164, %if.then8 ], [ 3932220, %if.then ]
  %69 = ptrtoint ptr %mmio.i275.sink484 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio.i275.sink484, align 8
  %add.ptr.i276 = getelementptr i8, ptr %70, i32 %.sink483
  tail call void @msm_writel(i32 noundef %.sink481, ptr noundef %add.ptr.i276) #4
  %71 = ptrtoint ptr %mmio.i275.sink484 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio.i275.sink484, align 8
  %add.ptr.i278 = getelementptr i8, ptr %72, i32 %.sink479
  tail call void @msm_writel(i32 noundef %.sink477, ptr noundef %add.ptr.i278) #4
  %73 = ptrtoint ptr %mmio.i275.sink484 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i275.sink484, align 8
  %add.ptr.i280 = getelementptr i8, ptr %74, i32 %.sink476
  tail call void @msm_writel(i32 noundef %.sink, ptr noundef %add.ptr.i280) #4
  %mmio.i352 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %75 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i353 = getelementptr i8, ptr %76, i32 544
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i353) #4
  %77 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i355 = getelementptr i8, ptr %78, i32 72
  tail call void @msm_writel(i32 noundef 16, ptr noundef %add.ptr.i355) #4
  %79 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i357 = getelementptr i8, ptr %80, i32 204
  tail call void @msm_writel(i32 noundef 16, ptr noundef %add.ptr.i357) #4
  %81 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i359 = getelementptr i8, ptr %82, i32 128
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i359) #4
  %83 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i361 = getelementptr i8, ptr %84, i32 132
  tail call void @msm_writel(i32 noundef -1493172225, ptr noundef %add.ptr.i361) #4
  %85 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i363 = getelementptr i8, ptr %86, i32 1024
  tail call void @msm_writel(i32 noundef 196608, ptr noundef %add.ptr.i363) #4
  %87 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i365 = getelementptr i8, ptr %88, i32 320
  tail call void @msm_writel(i32 noundef 69631, ptr noundef %add.ptr.i365) #4
  %89 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i367 = getelementptr i8, ptr %90, i32 14856
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i367) #4
  %91 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %revn.i, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %92, label %if.end22.if.end44_crit_edge [
    i32 307, label %if.then24
    i32 320, label %if.then27
    i32 330, label %adreno_is_a330v2.exit381
  ]

if.end22.if.end44_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i371 = getelementptr i8, ptr %95, i32 64
  tail call void @msm_writel(i32 noundef -1431655766, ptr noundef %add.ptr.i371) #4
  br label %if.end37

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %96 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i375 = getelementptr i8, ptr %97, i32 64
  tail call void @msm_writel(i32 noundef -1073741825, ptr noundef %add.ptr.i375) #4
  br label %if.end37

adreno_is_a330v2.exit381:                         ; preds = %if.end22
  %patchid.i378 = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1, i32 3
  %98 = ptrtoint ptr %patchid.i378 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %patchid.i378, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp.i379.not = icmp eq i8 %99, 0
  %100 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i387 = getelementptr i8, ptr %101, i32 64
  br i1 %cmp.i379.not, label %if.then33, label %if.then30

if.then30:                                        ; preds = %adreno_is_a330v2.exit381
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msm_writel(i32 noundef -1431655766, ptr noundef %add.ptr.i387) #4
  br label %if.end37

if.then33:                                        ; preds = %adreno_is_a330v2.exit381
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msm_writel(i32 noundef -1073938433, ptr noundef %add.ptr.i387) #4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.then30, %if.then27, %if.then24
  %102 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pr = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 330, i32 %.pr)
  %cmp.i.i389 = icmp eq i32 %.pr, 330
  br i1 %cmp.i.i389, label %adreno_is_a330v2.exit393, label %if.end37.if.end44_crit_edge

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

adreno_is_a330v2.exit393:                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %patchid.i390 = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1, i32 3
  %103 = ptrtoint ptr %patchid.i390 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %patchid.i390, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp.i391.not = icmp eq i8 %104, 0
  %105 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i399 = getelementptr i8, ptr %106, i32 184
  %. = select i1 %cmp.i391.not, i32 0, i32 89216085
  tail call void @msm_writel(i32 noundef %., ptr noundef %add.ptr.i399) #4
  br label %if.end44

if.end44:                                         ; preds = %adreno_is_a330v2.exit393, %if.end37.if.end44_crit_edge, %if.end22.if.end44_crit_edge
  %hdl = getelementptr inbounds %struct.a3xx_gpu, ptr %gpu, i32 0, i32 1, i32 2
  %107 = ptrtoint ptr %hdl to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hdl, align 8
  %tobool.not = icmp eq ptr %108, null
  br i1 %tobool.not, label %if.end44.if.end47_crit_edge, label %if.then45

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then45:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %base = getelementptr inbounds %struct.a3xx_gpu, ptr %gpu, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %base, align 4
  %shr = lshr i32 %110, 14
  %111 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i401 = getelementptr i8, ptr %112, i32 13056
  tail call void @msm_writel(i32 noundef %shr, ptr noundef %add.ptr.i401) #4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end44.if.end47_crit_edge
  %113 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i403 = getelementptr i8, ptr %114, i32 512
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i403) #4
  %num_perfcntrs = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 12
  %115 = ptrtoint ptr %num_perfcntrs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_perfcntrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp466.not = icmp eq i32 %116, 0
  br i1 %cmp466.not, label %if.end47.for.end_crit_edge, label %for.body.lr.ph

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end47
  %perfcntrs = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0467 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %117 = ptrtoint ptr %perfcntrs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %perfcntrs, align 4
  %arrayidx = getelementptr %struct.msm_gpu_perfcntr, ptr %118, i32 %i.0467
  %119 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx, align 4
  %select_val = getelementptr %struct.msm_gpu_perfcntr, ptr %118, i32 %i.0467, i32 2
  %121 = ptrtoint ptr %select_val to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %select_val, align 4
  %123 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mmio.i352, align 8
  %shl.i = shl i32 %120, 2
  %add.ptr.i405 = getelementptr i8, ptr %124, i32 %shl.i
  tail call void @msm_writel(i32 noundef %122, ptr noundef %add.ptr.i405) #4
  %inc = add nuw i32 %i.0467, 1
  %125 = ptrtoint ptr %num_perfcntrs to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %num_perfcntrs, align 8
  %cmp = icmp ult i32 %inc, %126
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end47.for.end_crit_edge
  %127 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i407 = getelementptr i8, ptr %128, i32 396
  tail call void @msm_writel(i32 noundef 36826914, ptr noundef %add.ptr.i407) #4
  %call48 = tail call i32 @adreno_hw_init(ptr noundef %gpu) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end51:                                         ; preds = %for.end
  %129 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i409 = getelementptr i8, ptr %130, i32 1796
  tail call void @msm_writel(i32 noundef 134218252, ptr noundef %add.ptr.i409) #4
  %rb = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 13
  %131 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rb, align 4
  %iova = getelementptr inbounds %struct.msm_ringbuffer, ptr %132, i32 0, i32 10
  %133 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %iova, align 8
  %conv = trunc i64 %134 to i32
  %135 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i411 = getelementptr i8, ptr %136, i32 1792
  tail call void @msm_writel(i32 noundef %conv, ptr noundef %add.ptr.i411) #4
  %137 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i413 = getelementptr i8, ptr %138, i32 4472
  tail call void @msm_writel(i32 noundef 7, ptr noundef %add.ptr.i413) #4
  %139 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i415 = getelementptr i8, ptr %140, i32 4480
  tail call void @msm_writel(i32 noundef 1660944448, ptr noundef %add.ptr.i415) #4
  %141 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i417 = getelementptr i8, ptr %142, i32 4484
  tail call void @msm_writel(i32 noundef 1644167296, ptr noundef %add.ptr.i417) #4
  %143 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i419 = getelementptr i8, ptr %144, i32 4488
  tail call void @msm_writel(i32 noundef 1610612940, ptr noundef %add.ptr.i419) #4
  %145 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i421 = getelementptr i8, ptr %146, i32 4492
  tail call void @msm_writel(i32 noundef 1610613000, ptr noundef %add.ptr.i421) #4
  %147 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i423 = getelementptr i8, ptr %148, i32 4496
  tail call void @msm_writel(i32 noundef 1677721920, ptr noundef %add.ptr.i423) #4
  %149 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i425 = getelementptr i8, ptr %150, i32 4500
  tail call void @msm_writel(i32 noundef 1711277056, ptr noundef %add.ptr.i425) #4
  %151 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i427 = getelementptr i8, ptr %152, i32 4504
  tail call void @msm_writel(i32 noundef 1694500608, ptr noundef %add.ptr.i427) #4
  %153 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i429 = getelementptr i8, ptr %154, i32 4508
  tail call void @msm_writel(i32 noundef 1627391960, ptr noundef %add.ptr.i429) #4
  %155 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i431 = getelementptr i8, ptr %156, i32 4512
  tail call void @msm_writel(i32 noundef 1644169184, ptr noundef %add.ptr.i431) #4
  %157 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i433 = getelementptr i8, ptr %158, i32 4516
  tail call void @msm_writel(i32 noundef 1627394424, ptr noundef %add.ptr.i433) #4
  %159 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i435 = getelementptr i8, ptr %160, i32 4520
  tail call void @msm_writel(i32 noundef 1677726080, ptr noundef %add.ptr.i435) #4
  %161 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i437 = getelementptr i8, ptr %162, i32 4524
  tail call void @msm_writel(i32 noundef 1610625792, ptr noundef %add.ptr.i437) #4
  %163 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i439 = getelementptr i8, ptr %164, i32 4528
  tail call void @msm_writel(i32 noundef 1795211264, ptr noundef %add.ptr.i439) #4
  %fw = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 8
  %165 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %data, align 4
  %169 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %166, align 4
  %arrayidx72 = getelementptr i32, ptr %168, i32 1
  %171 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx72, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %172) #4
  %173 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i441 = getelementptr i8, ptr %174, i32 2032
  tail call void @msm_writel(i32 noundef 167772160, ptr noundef %add.ptr.i441) #4
  %175 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i443 = getelementptr i8, ptr %176, i32 2016
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i443) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %170)
  %cmp74468 = icmp ugt i32 %170, 7
  br i1 %cmp74468, label %for.body76.preheader, label %if.end51.for.end80_crit_edge

if.end51.for.end80_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end80

for.body76.preheader:                             ; preds = %if.end51
  %div251 = lshr i32 %170, 2
  br label %for.body76

for.body76:                                       ; preds = %for.body76.for.body76_crit_edge, %for.body76.preheader
  %i.1469 = phi i32 [ %inc79, %for.body76.for.body76_crit_edge ], [ 1, %for.body76.preheader ]
  %arrayidx77 = getelementptr i32, ptr %168, i32 %i.1469
  %177 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx77, align 4
  %179 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i445 = getelementptr i8, ptr %180, i32 2024
  tail call void @msm_writel(i32 noundef %178, ptr noundef %add.ptr.i445) #4
  %inc79 = add nuw nsw i32 %i.1469, 1
  %exitcond.not = icmp eq i32 %inc79, %div251
  br i1 %exitcond.not, label %for.body76.for.end80_crit_edge, label %for.body76.for.body76_crit_edge

for.body76.for.body76_crit_edge:                  ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body76

for.body76.for.end80_crit_edge:                   ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end80

for.end80:                                        ; preds = %for.body76.for.end80_crit_edge, %if.end51.for.end80_crit_edge
  %arrayidx82 = getelementptr %struct.adreno_gpu, ptr %gpu, i32 0, i32 8, i32 1
  %181 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx82, align 4
  %data83 = getelementptr inbounds %struct.firmware, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %data83 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %data83, align 4
  %185 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %182, align 4
  %arrayidx88 = getelementptr i32, ptr %184, i32 5
  %187 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx88, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %188) #4
  %189 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i447 = getelementptr i8, ptr %190, i32 1828
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i447) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %186)
  %cmp90470 = icmp ugt i32 %186, 7
  br i1 %cmp90470, label %for.body92.preheader, label %for.end80.for.end96_crit_edge

for.end80.for.end96_crit_edge:                    ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end96

for.body92.preheader:                             ; preds = %for.end80
  %div87252 = lshr i32 %186, 2
  br label %for.body92

for.body92:                                       ; preds = %for.body92.for.body92_crit_edge, %for.body92.preheader
  %i.2471 = phi i32 [ %inc95, %for.body92.for.body92_crit_edge ], [ 1, %for.body92.preheader ]
  %arrayidx93 = getelementptr i32, ptr %184, i32 %i.2471
  %191 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx93, align 4
  %193 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i449 = getelementptr i8, ptr %194, i32 1832
  tail call void @msm_writel(i32 noundef %192, ptr noundef %add.ptr.i449) #4
  %inc95 = add nuw nsw i32 %i.2471, 1
  %exitcond473.not = icmp eq i32 %inc95, %div87252
  br i1 %exitcond473.not, label %for.body92.for.end96_crit_edge, label %for.body92.for.body92_crit_edge

for.body92.for.body92_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body92

for.body92.for.end96_crit_edge:                   ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end96

for.end96:                                        ; preds = %for.body92.for.end96_crit_edge, %for.end80.for.end96_crit_edge
  %195 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %revn.i, align 4
  %197 = zext i32 %196 to i64
  call void @__sanitizer_cov_trace_switch(i64 %197, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %196, label %for.end96.if.end114_crit_edge [
    i32 305, label %for.end96.if.end114.sink.split_crit_edge
    i32 307, label %for.end96.if.end114.sink.split_crit_edge488
    i32 320, label %for.end96.if.end114.sink.split_crit_edge489
    i32 330, label %if.then112
  ]

for.end96.if.end114.sink.split_crit_edge489:      ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114.sink.split

for.end96.if.end114.sink.split_crit_edge488:      ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114.sink.split

for.end96.if.end114.sink.split_crit_edge:         ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114.sink.split

for.end96.if.end114_crit_edge:                    ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

if.then112:                                       ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114.sink.split

if.end114.sink.split:                             ; preds = %if.then112, %for.end96.if.end114.sink.split_crit_edge, %for.end96.if.end114.sink.split_crit_edge488, %for.end96.if.end114.sink.split_crit_edge489
  %.sink486 = phi i32 [ 4071432, %if.then112 ], [ 919042, %for.end96.if.end114.sink.split_crit_edge ], [ 919042, %for.end96.if.end114.sink.split_crit_edge488 ], [ 919042, %for.end96.if.end114.sink.split_crit_edge489 ]
  %198 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i461 = getelementptr i8, ptr %199, i32 1876
  tail call void @msm_writel(i32 noundef %.sink486, ptr noundef %add.ptr.i461) #4
  br label %if.end114

if.end114:                                        ; preds = %if.end114.sink.split, %for.end96.if.end114_crit_edge
  %200 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i463 = getelementptr i8, ptr %201, i32 2008
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i463) #4
  %202 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rb, align 4
  tail call void @adreno_wait_ring(ptr noundef %203, i32 noundef 18) #4
  %next.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 6
  %204 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %next.i.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 4
  %206 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %205, %207
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end114.OUT_PKT3.exit.i_crit_edge

if.end114.OUT_PKT3.exit.i_crit_edge:              ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_PKT3.exit.i

if.then.i.i.i:                                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  %start.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %208 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %start.i.i.i, align 4
  %210 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %209, ptr %next.i.i.i, align 8
  br label %OUT_PKT3.exit.i

OUT_PKT3.exit.i:                                  ; preds = %if.then.i.i.i, %if.end114.OUT_PKT3.exit.i_crit_edge
  %211 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %212, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %next.i.i.i, align 8
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 -1072674816, ptr %212, align 4
  %214 = load ptr, ptr %next.i.i.i, align 8
  %215 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i464 = icmp eq ptr %214, %216
  br i1 %cmp.i.i464, label %if.then.i.i, label %OUT_PKT3.exit.i.OUT_RING.exit.i_crit_edge

OUT_PKT3.exit.i.OUT_RING.exit.i_crit_edge:        ; preds = %OUT_PKT3.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit.i

if.then.i.i:                                      ; preds = %OUT_PKT3.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %217 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %start.i.i, align 4
  %219 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %218, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit.i

OUT_RING.exit.i:                                  ; preds = %if.then.i.i, %OUT_PKT3.exit.i.OUT_RING.exit.i_crit_edge
  %220 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %221, i32 1
  store ptr %incdec.ptr.i.i, ptr %next.i.i.i, align 8
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 1015, ptr %221, align 4
  %223 = load ptr, ptr %next.i.i.i, align 8
  %224 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i23.i = icmp eq ptr %223, %225
  br i1 %cmp.i23.i, label %if.then.i25.i, label %OUT_RING.exit.i.OUT_RING.exit27.i_crit_edge

OUT_RING.exit.i.OUT_RING.exit27.i_crit_edge:      ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit27.i

if.then.i25.i:                                    ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i24.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %226 = ptrtoint ptr %start.i24.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %start.i24.i, align 4
  %228 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %227, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit27.i

OUT_RING.exit27.i:                                ; preds = %if.then.i25.i, %OUT_RING.exit.i.OUT_RING.exit27.i_crit_edge
  %229 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i26.i = getelementptr i32, ptr %230, i32 1
  store ptr %incdec.ptr.i26.i, ptr %next.i.i.i, align 8
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %230, align 4
  %232 = load ptr, ptr %next.i.i.i, align 8
  %233 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i30.i = icmp eq ptr %232, %234
  br i1 %cmp.i30.i, label %if.then.i32.i, label %OUT_RING.exit27.i.OUT_RING.exit34.i_crit_edge

OUT_RING.exit27.i.OUT_RING.exit34.i_crit_edge:    ; preds = %OUT_RING.exit27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit34.i

if.then.i32.i:                                    ; preds = %OUT_RING.exit27.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i31.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %235 = ptrtoint ptr %start.i31.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %start.i31.i, align 4
  %237 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %236, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit34.i

OUT_RING.exit34.i:                                ; preds = %if.then.i32.i, %OUT_RING.exit27.i.OUT_RING.exit34.i_crit_edge
  %238 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i33.i = getelementptr i32, ptr %239, i32 1
  store ptr %incdec.ptr.i33.i, ptr %next.i.i.i, align 8
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 0, ptr %239, align 4
  %241 = load ptr, ptr %next.i.i.i, align 8
  %242 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i37.i = icmp eq ptr %241, %243
  br i1 %cmp.i37.i, label %if.then.i39.i, label %OUT_RING.exit34.i.OUT_RING.exit41.i_crit_edge

OUT_RING.exit34.i.OUT_RING.exit41.i_crit_edge:    ; preds = %OUT_RING.exit34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit41.i

if.then.i39.i:                                    ; preds = %OUT_RING.exit34.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i38.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %244 = ptrtoint ptr %start.i38.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %start.i38.i, align 4
  %246 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %245, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit41.i

OUT_RING.exit41.i:                                ; preds = %if.then.i39.i, %OUT_RING.exit34.i.OUT_RING.exit41.i_crit_edge
  %247 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i40.i = getelementptr i32, ptr %248, i32 1
  store ptr %incdec.ptr.i40.i, ptr %next.i.i.i, align 8
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %248, align 4
  %250 = load ptr, ptr %next.i.i.i, align 8
  %251 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i44.i = icmp eq ptr %250, %252
  br i1 %cmp.i44.i, label %if.then.i46.i, label %OUT_RING.exit41.i.OUT_RING.exit48.i_crit_edge

OUT_RING.exit41.i.OUT_RING.exit48.i_crit_edge:    ; preds = %OUT_RING.exit41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit48.i

if.then.i46.i:                                    ; preds = %OUT_RING.exit41.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i45.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %253 = ptrtoint ptr %start.i45.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %start.i45.i, align 4
  %255 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %254, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit48.i

OUT_RING.exit48.i:                                ; preds = %if.then.i46.i, %OUT_RING.exit41.i.OUT_RING.exit48.i_crit_edge
  %256 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i47.i = getelementptr i32, ptr %257, i32 1
  store ptr %incdec.ptr.i47.i, ptr %next.i.i.i, align 8
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 128, ptr %257, align 4
  %259 = load ptr, ptr %next.i.i.i, align 8
  %260 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i51.i = icmp eq ptr %259, %261
  br i1 %cmp.i51.i, label %if.then.i53.i, label %OUT_RING.exit48.i.OUT_RING.exit55.i_crit_edge

OUT_RING.exit48.i.OUT_RING.exit55.i_crit_edge:    ; preds = %OUT_RING.exit48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit55.i

if.then.i53.i:                                    ; preds = %OUT_RING.exit48.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i52.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %262 = ptrtoint ptr %start.i52.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %start.i52.i, align 4
  %264 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %263, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit55.i

OUT_RING.exit55.i:                                ; preds = %if.then.i53.i, %OUT_RING.exit48.i.OUT_RING.exit55.i_crit_edge
  %265 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i54.i = getelementptr i32, ptr %266, i32 1
  store ptr %incdec.ptr.i54.i, ptr %next.i.i.i, align 8
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 256, ptr %266, align 4
  %268 = load ptr, ptr %next.i.i.i, align 8
  %269 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i58.i = icmp eq ptr %268, %270
  br i1 %cmp.i58.i, label %if.then.i60.i, label %OUT_RING.exit55.i.OUT_RING.exit62.i_crit_edge

OUT_RING.exit55.i.OUT_RING.exit62.i_crit_edge:    ; preds = %OUT_RING.exit55.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit62.i

if.then.i60.i:                                    ; preds = %OUT_RING.exit55.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i59.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %271 = ptrtoint ptr %start.i59.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %start.i59.i, align 4
  %273 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %272, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit62.i

OUT_RING.exit62.i:                                ; preds = %if.then.i60.i, %OUT_RING.exit55.i.OUT_RING.exit62.i_crit_edge
  %274 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i61.i = getelementptr i32, ptr %275, i32 1
  store ptr %incdec.ptr.i61.i, ptr %next.i.i.i, align 8
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 384, ptr %275, align 4
  %277 = load ptr, ptr %next.i.i.i, align 8
  %278 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i65.i = icmp eq ptr %277, %279
  br i1 %cmp.i65.i, label %if.then.i67.i, label %OUT_RING.exit62.i.OUT_RING.exit69.i_crit_edge

OUT_RING.exit62.i.OUT_RING.exit69.i_crit_edge:    ; preds = %OUT_RING.exit62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit69.i

if.then.i67.i:                                    ; preds = %OUT_RING.exit62.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i66.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %280 = ptrtoint ptr %start.i66.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %start.i66.i, align 4
  %282 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %281, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit69.i

OUT_RING.exit69.i:                                ; preds = %if.then.i67.i, %OUT_RING.exit62.i.OUT_RING.exit69.i_crit_edge
  %283 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i68.i = getelementptr i32, ptr %284, i32 1
  store ptr %incdec.ptr.i68.i, ptr %next.i.i.i, align 8
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 26112, ptr %284, align 4
  %286 = load ptr, ptr %next.i.i.i, align 8
  %287 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i72.i = icmp eq ptr %286, %288
  br i1 %cmp.i72.i, label %if.then.i74.i, label %OUT_RING.exit69.i.OUT_RING.exit76.i_crit_edge

OUT_RING.exit69.i.OUT_RING.exit76.i_crit_edge:    ; preds = %OUT_RING.exit69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit76.i

if.then.i74.i:                                    ; preds = %OUT_RING.exit69.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i73.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %289 = ptrtoint ptr %start.i73.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %start.i73.i, align 4
  %291 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %290, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit76.i

OUT_RING.exit76.i:                                ; preds = %if.then.i74.i, %OUT_RING.exit69.i.OUT_RING.exit76.i_crit_edge
  %292 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i75.i = getelementptr i32, ptr %293, i32 1
  store ptr %incdec.ptr.i75.i, ptr %next.i.i.i, align 8
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 336, ptr %293, align 4
  %295 = load ptr, ptr %next.i.i.i, align 8
  %296 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i79.i = icmp eq ptr %295, %297
  br i1 %cmp.i79.i, label %if.then.i81.i, label %OUT_RING.exit76.i.OUT_RING.exit83.i_crit_edge

OUT_RING.exit76.i.OUT_RING.exit83.i_crit_edge:    ; preds = %OUT_RING.exit76.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit83.i

if.then.i81.i:                                    ; preds = %OUT_RING.exit76.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i80.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %298 = ptrtoint ptr %start.i80.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %start.i80.i, align 4
  %300 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %299, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit83.i

OUT_RING.exit83.i:                                ; preds = %if.then.i81.i, %OUT_RING.exit76.i.OUT_RING.exit83.i_crit_edge
  %301 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i82.i = getelementptr i32, ptr %302, i32 1
  store ptr %incdec.ptr.i82.i, ptr %next.i.i.i, align 8
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 334, ptr %302, align 4
  %304 = load ptr, ptr %next.i.i.i, align 8
  %305 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i86.i = icmp eq ptr %304, %306
  br i1 %cmp.i86.i, label %if.then.i88.i, label %OUT_RING.exit83.i.OUT_RING.exit90.i_crit_edge

OUT_RING.exit83.i.OUT_RING.exit90.i_crit_edge:    ; preds = %OUT_RING.exit83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit90.i

if.then.i88.i:                                    ; preds = %OUT_RING.exit83.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i87.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %307 = ptrtoint ptr %start.i87.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %start.i87.i, align 4
  %309 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %308, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit90.i

OUT_RING.exit90.i:                                ; preds = %if.then.i88.i, %OUT_RING.exit83.i.OUT_RING.exit90.i_crit_edge
  %310 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i89.i = getelementptr i32, ptr %311, i32 1
  store ptr %incdec.ptr.i89.i, ptr %next.i.i.i, align 8
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 340, ptr %311, align 4
  %313 = load ptr, ptr %next.i.i.i, align 8
  %314 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i93.i = icmp eq ptr %313, %315
  br i1 %cmp.i93.i, label %if.then.i95.i, label %OUT_RING.exit90.i.OUT_RING.exit97.i_crit_edge

OUT_RING.exit90.i.OUT_RING.exit97.i_crit_edge:    ; preds = %OUT_RING.exit90.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit97.i

if.then.i95.i:                                    ; preds = %OUT_RING.exit90.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i94.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %316 = ptrtoint ptr %start.i94.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %start.i94.i, align 4
  %318 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %317, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit97.i

OUT_RING.exit97.i:                                ; preds = %if.then.i95.i, %OUT_RING.exit90.i.OUT_RING.exit97.i_crit_edge
  %319 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i96.i = getelementptr i32, ptr %320, i32 1
  store ptr %incdec.ptr.i96.i, ptr %next.i.i.i, align 8
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 1, ptr %320, align 4
  %322 = load ptr, ptr %next.i.i.i, align 8
  %323 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i100.i = icmp eq ptr %322, %324
  br i1 %cmp.i100.i, label %if.then.i102.i, label %OUT_RING.exit97.i.OUT_RING.exit104.i_crit_edge

OUT_RING.exit97.i.OUT_RING.exit104.i_crit_edge:   ; preds = %OUT_RING.exit97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit104.i

if.then.i102.i:                                   ; preds = %OUT_RING.exit97.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i101.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %325 = ptrtoint ptr %start.i101.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %start.i101.i, align 4
  %327 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %326, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit104.i

OUT_RING.exit104.i:                               ; preds = %if.then.i102.i, %OUT_RING.exit97.i.OUT_RING.exit104.i_crit_edge
  %328 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i103.i = getelementptr i32, ptr %329, i32 1
  store ptr %incdec.ptr.i103.i, ptr %next.i.i.i, align 8
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 0, ptr %329, align 4
  %331 = load ptr, ptr %next.i.i.i, align 8
  %332 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i107.i = icmp eq ptr %331, %333
  br i1 %cmp.i107.i, label %if.then.i109.i, label %OUT_RING.exit104.i.OUT_RING.exit111.i_crit_edge

OUT_RING.exit104.i.OUT_RING.exit111.i_crit_edge:  ; preds = %OUT_RING.exit104.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit111.i

if.then.i109.i:                                   ; preds = %OUT_RING.exit104.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i108.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %334 = ptrtoint ptr %start.i108.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %start.i108.i, align 4
  %336 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %335, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit111.i

OUT_RING.exit111.i:                               ; preds = %if.then.i109.i, %OUT_RING.exit104.i.OUT_RING.exit111.i_crit_edge
  %337 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i110.i = getelementptr i32, ptr %338, i32 1
  store ptr %incdec.ptr.i110.i, ptr %next.i.i.i, align 8
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 0, ptr %338, align 4
  %340 = load ptr, ptr %next.i.i.i, align 8
  %341 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i114.i = icmp eq ptr %340, %342
  br i1 %cmp.i114.i, label %if.then.i116.i, label %OUT_RING.exit111.i.OUT_RING.exit118.i_crit_edge

OUT_RING.exit111.i.OUT_RING.exit118.i_crit_edge:  ; preds = %OUT_RING.exit111.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit118.i

if.then.i116.i:                                   ; preds = %OUT_RING.exit111.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i115.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %343 = ptrtoint ptr %start.i115.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %start.i115.i, align 4
  %345 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %344, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit118.i

OUT_RING.exit118.i:                               ; preds = %if.then.i116.i, %OUT_RING.exit111.i.OUT_RING.exit118.i_crit_edge
  %346 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i117.i = getelementptr i32, ptr %347, i32 1
  store ptr %incdec.ptr.i117.i, ptr %next.i.i.i, align 8
  %348 = ptrtoint ptr %347 to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 0, ptr %347, align 4
  %349 = load ptr, ptr %next.i.i.i, align 8
  %350 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i121.i = icmp eq ptr %349, %351
  br i1 %cmp.i121.i, label %if.then.i123.i, label %OUT_RING.exit118.i.OUT_RING.exit125.i_crit_edge

OUT_RING.exit118.i.OUT_RING.exit125.i_crit_edge:  ; preds = %OUT_RING.exit118.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit125.i

if.then.i123.i:                                   ; preds = %OUT_RING.exit118.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i122.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %352 = ptrtoint ptr %start.i122.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %start.i122.i, align 4
  %354 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %353, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit125.i

OUT_RING.exit125.i:                               ; preds = %if.then.i123.i, %OUT_RING.exit118.i.OUT_RING.exit125.i_crit_edge
  %355 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i124.i = getelementptr i32, ptr %356, i32 1
  store ptr %incdec.ptr.i124.i, ptr %next.i.i.i, align 8
  %357 = ptrtoint ptr %356 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 0, ptr %356, align 4
  %358 = load ptr, ptr %next.i.i.i, align 8
  %359 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i128.i = icmp eq ptr %358, %360
  br i1 %cmp.i128.i, label %if.then.i130.i, label %OUT_RING.exit125.i.OUT_RING.exit132.i_crit_edge

OUT_RING.exit125.i.OUT_RING.exit132.i_crit_edge:  ; preds = %OUT_RING.exit125.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %OUT_RING.exit132.i

if.then.i130.i:                                   ; preds = %OUT_RING.exit125.i
  call void @__sanitizer_cov_trace_pc() #6
  %start.i129.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %203, i32 0, i32 3
  %361 = ptrtoint ptr %start.i129.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %start.i129.i, align 4
  %363 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %362, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit132.i

OUT_RING.exit132.i:                               ; preds = %if.then.i130.i, %OUT_RING.exit125.i.OUT_RING.exit132.i_crit_edge
  %364 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i131.i = getelementptr i32, ptr %365, i32 1
  store ptr %incdec.ptr.i131.i, ptr %next.i.i.i, align 8
  %366 = ptrtoint ptr %365 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 0, ptr %365, align 4
  tail call void @adreno_flush(ptr noundef %gpu, ptr noundef %203, i32 noundef 453) #4
  %367 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %rb, align 4
  %call.i.i = tail call zeroext i1 @adreno_idle(ptr noundef %gpu, ptr noundef %368) #4
  br i1 %call.i.i, label %if.end.i.i, label %OUT_RING.exit132.i.cleanup_crit_edge

OUT_RING.exit132.i.cleanup_crit_edge:             ; preds = %OUT_RING.exit132.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %OUT_RING.exit132.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %369 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -100, %369
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %370 = ptrtoint ptr %mmio.i352 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %mmio.i352, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %371, i32 192
  %call.i.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %do.cond.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond.i.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %372 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %372
  %cmp.i133.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i133.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %if.then6.critedge.i.i

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

if.then6.critedge.i.i:                            ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %373 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %gpu, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, ptr noundef %374) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then6.critedge.i.i, %do.body.i.i.cleanup_crit_edge, %OUT_RING.exit132.i.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %for.end.cleanup_crit_edge ], [ -22, %if.then6.critedge.i.i ], [ -22, %OUT_RING.exit132.i.cleanup_crit_edge ], [ 0, %do.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_pm_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a3xx_submit(ptr noundef %gpu, ptr nocapture noundef readonly %submit) #0 align 64 {
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
  tail call void @adreno_flush(ptr noundef %gpu, ptr noundef %1, i32 noundef 453) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a3xx_irq(ptr noundef %gpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 400
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #4
  %2 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpu, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, ptr noundef %3, i32 noundef %call.i) #4
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 388
  tail call void @msm_writel(i32 noundef %call.i, ptr noundef %add.ptr.i6) #4
  tail call void @msm_gpu_retire(ptr noundef %gpu) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_active_ring(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a3xx_recover(ptr noundef %gpu) #0 align 64 {
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
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef %call.i) #8
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %3, i32 5604
  %call.i.1 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.1) #4
  %call1.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef %call.i.1) #8
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.2 = getelementptr i8, ptr %5, i32 5608
  %call.i.2 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.2) #4
  %call1.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 2, i32 noundef %call.i.2) #8
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.3 = getelementptr i8, ptr %7, i32 5612
  %call.i.3 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.3) #4
  %call1.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 3, i32 noundef %call.i.3) #8
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.4 = getelementptr i8, ptr %9, i32 5616
  %call.i.4 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.4) #4
  %call1.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4, i32 noundef %call.i.4) #8
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.5 = getelementptr i8, ptr %11, i32 5620
  %call.i.5 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.5) #4
  %call1.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 5, i32 noundef %call.i.5) #8
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.6 = getelementptr i8, ptr %13, i32 5624
  %call.i.6 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.6) #4
  %call1.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 6, i32 noundef %call.i.6) #8
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.7 = getelementptr i8, ptr %15, i32 5628
  %call.i.7 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.7) #4
  %call1.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 7, i32 noundef %call.i.7) #8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @hang_debug to i32))
  %16 = load i8, ptr @hang_debug, align 1, !range !49
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
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 192
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #4
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call.i.i) #8
  tail call void @adreno_dump(ptr noundef %gpu) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %20, i32 96
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i13) #4
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %22, i32 96
  %call.i16 = tail call i32 @msm_readl(ptr noundef %add.ptr.i15) #4
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i18 = getelementptr i8, ptr %24, i32 96
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i18) #4
  tail call void @adreno_recover(ptr noundef %gpu) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @a3xx_gpu_state_get(ptr noundef %gpu) #0 align 64 {
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
  %add.ptr.i = getelementptr i8, ptr %2, i32 192
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
define internal i32 @a3xx_get_rptr(ptr nocapture noundef readonly %gpu, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1808
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_hw_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_wait_ring(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_idle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_retire(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_dump_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 526, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 565, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 572, i32 41}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 578, i32 47}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 509, i32 26}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 511, i32 33}
!13 = !{ptr @perfcntrs, !14, !"perfcntrs", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 507, i32 38}
!15 = !{ptr @a3xx_registers, !16, !"a3xx_registers", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 420, i32 27}
!17 = !{ptr @funcs, !18, !"funcs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 486, i32 38}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 119, i32 2}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 311, i32 2}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 323, i32 2}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 395, i32 3}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 409, i32 2}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 358, i32 3}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @a3xx_recover._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @a3xx_recover._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/adreno/a3xx_gpu.c", i32 461, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @a3xx_dump._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @a3xx_dump._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i8 0, i8 2}
!50 = !{i64 2157600190, i64 2157600692, i64 2157600227, i64 2157600283, i64 2157600317, i64 2157600341, i64 2157600382, i64 2157600403, i64 2157600431, i64 2157600465}
