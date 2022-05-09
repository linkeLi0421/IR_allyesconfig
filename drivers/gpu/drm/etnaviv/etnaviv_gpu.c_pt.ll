; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/etnaviv/etnaviv_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_gpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.etnaviv_drm_private = type { i32, [4 x ptr], i32, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.etnaviv_iommu_global = type { ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %union.anon.90 }
%union.anon.90 = type { %struct.anon.92 }
%struct.anon.92 = type { ptr, i32, %struct.spinlock, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.drm_etnaviv_timespec = type { i64, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.etnaviv_gem_object = type { %struct.drm_gem_object, ptr, %struct.mutex, i32, %struct.list_head, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.list_head, i32, %struct.etnaviv_gem_userptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.etnaviv_gem_userptr = type { i32, ptr, i8 }
%struct.etnaviv_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.etnaviv_cmdbuf, i8, i32, i32, i32, ptr, i32, [0 x %struct.etnaviv_gem_submit_bo] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.89, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.89 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.etnaviv_gem_submit_bo = type { i32, i64, ptr, ptr, ptr, i32, ptr }
%struct.etnaviv_fence = type { ptr, %struct.dma_fence }
%struct.etnaviv_iommu_context = type { %struct.kref, ptr, %struct.mutex, %struct.list_head, %struct.drm_mm, i32, %struct.etnaviv_vram_mapping }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.etnaviv_perfmon_request = type { i32, i8, i8, i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: invalid param: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@etnaviv_gpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 756, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable GPU power domain\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"etnaviv_gpu_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/etnaviv/etnaviv_gpu.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@etnaviv_gpu_init._entry_ptr = internal global ptr @etnaviv_gpu_init._entry, section ".printk_index", align 4
@etnaviv_gpu_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 763, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown GPU model\0A\00", [45 x i8] zeroinitializer }, align 32
@etnaviv_gpu_init._entry_ptr.8 = internal global ptr @etnaviv_gpu_init._entry.6, section ".printk_index", align 4
@etnaviv_gpu_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 771, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Ignoring GPU with VG and FE2.0\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@etnaviv_gpu_init._entry_ptr.12 = internal global ptr @etnaviv_gpu_init._entry.9, section ".printk_index", align 4
@etnaviv_gpu_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 786, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GPU reset failed\0A\00", [46 x i8] zeroinitializer }, align 32
@etnaviv_gpu_init._entry_ptr.15 = internal global ptr @etnaviv_gpu_init._entry.13, section ".printk_index", align 4
@etnaviv_gpu_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 806, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not create command buffer\0A\00", [63 x i8] zeroinitializer }, align 32
@etnaviv_gpu_init._entry_ptr.18 = internal global ptr @etnaviv_gpu_init._entry.16, section ".printk_index", align 4
@etnaviv_gpu_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 830, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Need to move linear window on MC1.0, disabling TS\0A\00", [45 x i8] zeroinitializer }, align 32
@etnaviv_gpu_init._entry_ptr.21 = internal global ptr @etnaviv_gpu_init._entry.19, section ".printk_index", align 4
@etnaviv_gpu_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&gpu->event_spinlock\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s Status:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09identity\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09 model: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 revision: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09 product_id: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09 customer_id: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09 eco_id: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09features\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09 major_features: 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09 minor_features0: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09 minor_features1: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09 minor_features2: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09 minor_features3: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09 minor_features4: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09 minor_features5: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09 minor_features6: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09 minor_features7: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09 minor_features8: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09 minor_features9: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09 minor_features10: 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09 minor_features11: 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09specs\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09 stream_count:  %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09 register_max: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09 thread_count: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09 vertex_cache_size: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09 shader_core_count: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09 pixel_pipes: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\09 vertex_output_buffer_size: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09 buffer_size: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09 instruction_count: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09 num_constants: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09 varyings_count: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\09axi: 0x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09idle: 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 FE is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 DE is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 PE is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 SH is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 PA is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 SE is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 RA is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 TX is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 VG is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 IM is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 FP is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 TS is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 BL is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09 ASYNCFE is not idle\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 MC is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09 PPA is not idle\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 WD is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 NN is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 TP is not idle\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09 AXI low power mode\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\09MC\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09 read0: 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09 read1: 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09 write: 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\09DMA \00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"seems to be stuck\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"address is constant\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"is running\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09 address 0: 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09 address 1: 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09 state 0: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09 state 1: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\09 last fetch 64 bit word: 0x%08x 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@etnaviv_gpu_recover_hang._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 1052, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"recover hung GPU!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"etnaviv_gpu_recover_hang\00", [39 x i8] zeroinitializer }, align 32
@etnaviv_gpu_recover_hang._entry_ptr = internal global ptr @etnaviv_gpu_recover_hang._entry, section ".printk_index", align 4
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no free events\0A\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@etnaviv_gpu_wait_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 1577, ptr @.str.96, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"timed out waiting for idle: idle=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"etnaviv_gpu_wait_idle\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@etnaviv_gpu_wait_idle._entry_ptr = internal global ptr @etnaviv_gpu_wait_idle._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"etnaviv-gpu\00", [20 x i8] zeroinitializer }, align 32
@etnaviv_gpu_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vivante,gc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@etnaviv_gpu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @etnaviv_gpu_rpm_suspend, ptr @etnaviv_gpu_rpm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@gpu_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"etnaviv-gpu,2d\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@etnaviv_gpu_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @etnaviv_gpu_platform_probe, ptr @etnaviv_gpu_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.97, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @etnaviv_gpu_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @etnaviv_gpu_pm_ops, ptr null, ptr null }, ptr @gpu_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@etnaviv_hw_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 403, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"model: GC%x, revision: %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"etnaviv_hw_identify\00", [44 x i8] zeroinitializer }, align 32
@etnaviv_hw_identify._entry_ptr = internal global ptr @etnaviv_hw_identify._entry, section ".printk_index", align 4
@etnaviv_hw_reset.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.100, ptr @.str.101, ptr @.str.3, ptr @.str.102, i8 0, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"etnaviv\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"etnaviv_hw_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FE is not idle\0A\00", [16 x i8] zeroinitializer }, align 32
@etnaviv_hw_reset.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.100, ptr @.str.101, ptr @.str.3, ptr @.str.103, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPU is not idle\0A\00", [47 x i8] zeroinitializer }, align 32
@etnaviv_hw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.101, ptr @.str.3, i32 564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"GPU failed to reset: FE %sidle, 3D %sidle, 2D %sidle\0A\00", [42 x i8] zeroinitializer }, align 32
@etnaviv_hw_reset._entry_ptr = internal global ptr @etnaviv_hw_reset._entry, section ".printk_index", align 4
@.str.105 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.110 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@event_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.3, i32 1164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wait_for_completion_timeout failed\00", [61 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"event_alloc\00", [20 x i8] zeroinitializer }, align 32
@event_alloc._entry_ptr = internal global ptr @event_alloc._entry, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@etnaviv_fence_ops = internal constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @etnaviv_fence_get_driver_name, ptr @etnaviv_fence_get_timeline_name, ptr null, ptr @etnaviv_fence_signaled, ptr null, ptr @etnaviv_fence_release, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@event_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 1197, ptr @.str.96, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"event %u is already marked as free\00", [61 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event_free\00", [21 x i8] zeroinitializer }, align 32
@event_free._entry_ptr = internal global ptr @event_free._entry, section ".printk_index", align 4
@etnaviv_gpu_platform_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&gpu->lock\00", [21 x i8] zeroinitializer }, align 32
@etnaviv_gpu_platform_probe.__key.116 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&gpu->fence_lock\00", [47 x i8] zeroinitializer }, align 32
@etnaviv_gpu_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.3, i32 1804, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request IRQ%u: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"etnaviv_gpu_platform_probe\00", [37 x i8] zeroinitializer }, align 32
@etnaviv_gpu_platform_probe._entry_ptr = internal global ptr @etnaviv_gpu_platform_probe._entry, section ".printk_index", align 4
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_reg: %p\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_bus: %p\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_core: %p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shader\00", [25 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_shader: %p\0A\00", [16 x i8] zeroinitializer }, align 32
@gpu_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @etnaviv_gpu_bind, ptr @etnaviv_gpu_unbind }, [24 x i8] zeroinitializer }, align 32
@etnaviv_gpu_platform_probe._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.119, ptr @.str.3, i32 1845, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register component: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@etnaviv_gpu_platform_probe._entry_ptr.130 = internal global ptr @etnaviv_gpu_platform_probe._entry.128, section ".printk_index", align 4
@irq_handler.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.100, ptr @.str.131, ptr @.str.3, ptr @.str.132, i8 1, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irq_handler\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intr 0x%08x\0A\00", [19 x i8] zeroinitializer }, align 32
@irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.3, i32 1471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AXI bus error\0A\00", [17 x i8] zeroinitializer }, align 32
@irq_handler._entry_ptr = internal global ptr @irq_handler._entry, section ".printk_index", align 4
@irq_handler.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.100, ptr @.str.131, ptr @.str.3, ptr @.str.134, i8 1, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"event %u\0A\00", [22 x i8] zeroinitializer }, align 32
@dump_mmu_fault._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.135, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.dump_mmu_fault = private unnamed_addr constant [15 x i8] c"dump_mmu_fault\00", align 1
@dump_mmu_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @__func__.dump_mmu_fault, ptr @.str.3, i32 1438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MMU fault status 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@dump_mmu_fault._entry_ptr = internal global ptr @dump_mmu_fault._entry, section ".printk_index", align 4
@dump_mmu_fault._rs.137 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.135, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dump_mmu_fault._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @__func__.dump_mmu_fault, ptr @.str.3, i32 1452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MMU %d fault addr 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@dump_mmu_fault._entry_ptr.140 = internal global ptr @dump_mmu_fault._entry.138, section ".printk_index", align 4
@cooling_ops = internal constant { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @etnaviv_gpu_cooling_get_max_state, ptr @etnaviv_gpu_cooling_get_cur_state, ptr @etnaviv_gpu_cooling_set_cur_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@etnaviv_gpu_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.141 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&gpu->fence_spinlock\00", [43 x i8] zeroinitializer }, align 32
@etnaviv_gpu_bind.__key.142 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.143 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&gpu->sync_point_work)\00", [55 x i8] zeroinitializer }, align 32
@etnaviv_gpu_bind.__key.144 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.145 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&gpu->fence_event\00", [46 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@etnaviv_gpu_rpm_suspend._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.135, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.etnaviv_gpu_rpm_suspend = private unnamed_addr constant [24 x i8] c"etnaviv_gpu_rpm_suspend\00", align 1
@etnaviv_gpu_rpm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @__func__.etnaviv_gpu_rpm_suspend, ptr @.str.3, i32 1875, ptr @.str.96, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GPU not yet idle, mask: 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@etnaviv_gpu_rpm_suspend._entry_ptr = internal global ptr @etnaviv_gpu_rpm_suspend._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [32 x i64] [i64 30, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 32, i64 800, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 32, i64 768, i64 1280, i64 1792]
@__sancov_gen_cov_switch_values.151 = internal global [5 x i64] [i64 3, i64 32, i64 1024, i64 1280, i64 1328]
@__sancov_gen_cov_switch_values.152 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 2176, i64 8192]
@__sancov_gen_cov_switch_values.154 = internal global [10 x i64] [i64 8, i64 32, i64 2176, i64 5376, i64 8192, i64 8448, i64 8704, i64 12288, i64 16384, i64 20480]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 32, i64 21000, i64 21026, i64 21061]
@__sancov_gen_cov_switch_values.156 = internal global [5 x i64] [i64 3, i64 32, i64 8192, i64 16384, i64 28672]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 21000, i64 21026]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 20537, i64 20544]
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 168, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 756, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 763, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 771, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 786, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 806, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 829, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 836, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 893, i32 16 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 906, i32 14 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 907, i32 16 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 908, i32 16 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 909, i32 16 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 910, i32 16 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 911, i32 16 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 913, i32 14 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 914, i32 16 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 916, i32 16 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 918, i32 16 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 920, i32 16 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 922, i32 16 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 924, i32 16 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 926, i32 16 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 928, i32 16 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 930, i32 16 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 932, i32 16 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 934, i32 16 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 936, i32 16 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 938, i32 16 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 941, i32 14 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 942, i32 16 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 944, i32 16 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 946, i32 16 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 948, i32 16 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 950, i32 16 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 952, i32 16 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 954, i32 16 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 956, i32 16 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 958, i32 16 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 960, i32 16 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 962, i32 16 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 965, i32 16 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 966, i32 16 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 969, i32 15 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 971, i32 15 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 973, i32 15 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 975, i32 15 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 977, i32 15 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 979, i32 15 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 981, i32 15 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 983, i32 15 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 985, i32 15 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 987, i32 15 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 989, i32 15 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 991, i32 15 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 993, i32 15 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 995, i32 15 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 997, i32 15 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 999, i32 15 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1001, i32 15 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1003, i32 15 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1005, i32 15 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1007, i32 15 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1014, i32 15 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1015, i32 17 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1016, i32 17 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1017, i32 17 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1020, i32 14 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1024, i32 15 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1026, i32 15 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1028, i32 15 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1031, i32 16 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1032, i32 16 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1033, i32 16 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1034, i32 16 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1035, i32 16 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1052, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1365, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1575, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1911, i32 11 }
@___asan_gen_.451 = private unnamed_addr constant [18 x i8] c"etnaviv_gpu_match\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1769, i32 34 }
@___asan_gen_.454 = private unnamed_addr constant [19 x i8] c"etnaviv_gpu_pm_ops\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1904, i32 32 }
@___asan_gen_.457 = private unnamed_addr constant [8 x i8] c"gpu_ids\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 30, i32 40 }
@___asan_gen_.460 = private unnamed_addr constant [19 x i8] c"etnaviv_gpu_driver\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1909, i32 24 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 402, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 535, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 545, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 561, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 87, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 695, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 723, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1164, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant [18 x i8] c"etnaviv_fence_ops\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1113, i32 35 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1196, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1788, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1789, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1804, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1809, i32 51 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1810, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1814, i32 51 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1815, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1819, i32 43 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1820, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1825, i32 54 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1826, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant [8 x i8] c"gpu_ops\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1764, i32 35 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1845, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1468, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1471, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1487, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1438, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1451, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant [12 x i8] c"cooling_ops\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1661, i32 48 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1704, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1706, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1707, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.647 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 378, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1734, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.655 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.658 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.659 = private constant [41 x i8] c"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1874, i32 3 }
@llvm.compiler.used = appending global [185 x ptr] [ptr @dump_mmu_fault._entry, ptr @dump_mmu_fault._entry.138, ptr @dump_mmu_fault._entry_ptr, ptr @dump_mmu_fault._entry_ptr.140, ptr @etnaviv_gpu_init._entry, ptr @etnaviv_gpu_init._entry.13, ptr @etnaviv_gpu_init._entry.16, ptr @etnaviv_gpu_init._entry.19, ptr @etnaviv_gpu_init._entry.6, ptr @etnaviv_gpu_init._entry.9, ptr @etnaviv_gpu_init._entry_ptr, ptr @etnaviv_gpu_init._entry_ptr.12, ptr @etnaviv_gpu_init._entry_ptr.15, ptr @etnaviv_gpu_init._entry_ptr.18, ptr @etnaviv_gpu_init._entry_ptr.21, ptr @etnaviv_gpu_init._entry_ptr.8, ptr @etnaviv_gpu_platform_probe._entry, ptr @etnaviv_gpu_platform_probe._entry.128, ptr @etnaviv_gpu_platform_probe._entry_ptr, ptr @etnaviv_gpu_platform_probe._entry_ptr.130, ptr @etnaviv_gpu_recover_hang._entry, ptr @etnaviv_gpu_recover_hang._entry_ptr, ptr @etnaviv_gpu_rpm_suspend._entry, ptr @etnaviv_gpu_rpm_suspend._entry_ptr, ptr @etnaviv_gpu_wait_idle._entry, ptr @etnaviv_gpu_wait_idle._entry_ptr, ptr @etnaviv_hw_identify._entry, ptr @etnaviv_hw_identify._entry_ptr, ptr @etnaviv_hw_reset._entry, ptr @etnaviv_hw_reset._entry_ptr, ptr @event_alloc._entry, ptr @event_alloc._entry_ptr, ptr @event_free._entry, ptr @event_free._entry_ptr, ptr @irq_handler._entry, ptr @irq_handler._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @etnaviv_gpu_init.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @etnaviv_gpu_match, ptr @etnaviv_gpu_pm_ops, ptr @gpu_ids, ptr @etnaviv_gpu_driver, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @init_completion.__key, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @etnaviv_fence_ops, ptr @.str.113, ptr @.str.114, ptr @etnaviv_gpu_platform_probe.__key, ptr @.str.115, ptr @etnaviv_gpu_platform_probe.__key.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @gpu_ops, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @dump_mmu_fault._rs, ptr @.str.135, ptr @.str.136, ptr @dump_mmu_fault._rs.137, ptr @.str.139, ptr @cooling_ops, ptr @etnaviv_gpu_bind.__key, ptr @.str.141, ptr @etnaviv_gpu_bind.__key.142, ptr @.str.143, ptr @etnaviv_gpu_bind.__key.144, ptr @.str.145, ptr @xa_init_flags.__key, ptr @.str.146, ptr @.str.147, ptr @etnaviv_gpu_rpm_suspend._rs, ptr @.str.148], section "llvm.metadata"
@0 = internal global [167 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_recover_hang._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_wait_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_hw_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_hw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_fence_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_platform_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_platform_probe.__key.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_platform_probe._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_mmu_fault._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_mmu_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_mmu_fault._rs.137 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_mmu_fault._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cooling_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_bind.__key.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_bind.__key.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_rpm_suspend._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gpu_rpm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gpu_get_param(ptr noundef readonly %gpu, i32 noundef %param, ptr noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %param, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb4
    i32 4, label %sw.bb7
    i32 5, label %sw.bb10
    i32 6, label %sw.bb13
    i32 7, label %sw.bb16
    i32 8, label %sw.bb19
    i32 9, label %sw.bb22
    i32 10, label %sw.bb25
    i32 11, label %sw.bb28
    i32 12, label %sw.bb31
    i32 13, label %sw.bb34
    i32 14, label %sw.bb37
    i32 15, label %sw.bb40
    i32 16, label %sw.bb43
    i32 17, label %sw.bb46
    i32 18, label %sw.bb49
    i32 19, label %sw.bb52
    i32 20, label %sw.bb55
    i32 21, label %sw.bb58
    i32 22, label %sw.bb61
    i32 23, label %sw.bb64
    i32 24, label %sw.bb67
    i32 25, label %sw.bb70
    i32 26, label %sw.bb73
    i32 27, label %sw.bb76
    i32 28, label %sw.bb78
    i32 29, label %sw.bb81
    i32 30, label %sw.bb84
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %identity = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4
  %1 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %identity, align 8
  %conv = zext i32 %2 to i64
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %value, align 8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %revision = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %revision, align 4
  %conv3 = zext i32 %5 to i64
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv3, ptr %value, align 8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %features = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 5
  %7 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %features, align 4
  %conv6 = zext i32 %8 to i64
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv6, ptr %value, align 8
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features0 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %minor_features0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minor_features0, align 8
  %conv9 = zext i32 %11 to i64
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv9, ptr %value, align 8
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features1 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 7
  %13 = ptrtoint ptr %minor_features1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %minor_features1, align 4
  %conv12 = zext i32 %14 to i64
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv12, ptr %value, align 8
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features2 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 8
  %16 = ptrtoint ptr %minor_features2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %minor_features2, align 8
  %conv15 = zext i32 %17 to i64
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv15, ptr %value, align 8
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 9
  %19 = ptrtoint ptr %minor_features3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %minor_features3, align 4
  %conv18 = zext i32 %20 to i64
  %21 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv18, ptr %value, align 8
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 10
  %22 = ptrtoint ptr %minor_features4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %minor_features4, align 8
  %conv21 = zext i32 %23 to i64
  %24 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv21, ptr %value, align 8
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features5 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 11
  %25 = ptrtoint ptr %minor_features5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %minor_features5, align 4
  %conv24 = zext i32 %26 to i64
  %27 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv24, ptr %value, align 8
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features6 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 12
  %28 = ptrtoint ptr %minor_features6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %minor_features6, align 8
  %conv27 = zext i32 %29 to i64
  %30 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv27, ptr %value, align 8
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 13
  %31 = ptrtoint ptr %minor_features7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %minor_features7, align 4
  %conv30 = zext i32 %32 to i64
  %33 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv30, ptr %value, align 8
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features8 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 14
  %34 = ptrtoint ptr %minor_features8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %minor_features8, align 8
  %conv33 = zext i32 %35 to i64
  %36 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv33, ptr %value, align 8
  br label %cleanup

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features9 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 15
  %37 = ptrtoint ptr %minor_features9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %minor_features9, align 4
  %conv36 = zext i32 %38 to i64
  %39 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv36, ptr %value, align 8
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features10 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 16
  %40 = ptrtoint ptr %minor_features10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %minor_features10, align 8
  %conv39 = zext i32 %41 to i64
  %42 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv39, ptr %value, align 8
  br label %cleanup

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features11 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 17
  %43 = ptrtoint ptr %minor_features11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %minor_features11, align 4
  %conv42 = zext i32 %44 to i64
  %45 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv42, ptr %value, align 8
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %stream_count = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 18
  %46 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stream_count, align 8
  %conv45 = zext i32 %47 to i64
  %48 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv45, ptr %value, align 8
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %register_max = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 19
  %49 = ptrtoint ptr %register_max to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %register_max, align 4
  %conv48 = zext i32 %50 to i64
  %51 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv48, ptr %value, align 8
  br label %cleanup

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %thread_count = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 20
  %52 = ptrtoint ptr %thread_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %thread_count, align 8
  %conv51 = zext i32 %53 to i64
  %54 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv51, ptr %value, align 8
  br label %cleanup

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vertex_cache_size = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 22
  %55 = ptrtoint ptr %vertex_cache_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vertex_cache_size, align 8
  %conv54 = zext i32 %56 to i64
  %57 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv54, ptr %value, align 8
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %shader_core_count = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 21
  %58 = ptrtoint ptr %shader_core_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %shader_core_count, align 4
  %conv57 = zext i32 %59 to i64
  %60 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv57, ptr %value, align 8
  br label %cleanup

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pixel_pipes = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 24
  %61 = ptrtoint ptr %pixel_pipes to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pixel_pipes, align 8
  %conv60 = zext i32 %62 to i64
  %63 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv60, ptr %value, align 8
  br label %cleanup

sw.bb61:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vertex_output_buffer_size = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 23
  %64 = ptrtoint ptr %vertex_output_buffer_size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vertex_output_buffer_size, align 4
  %conv63 = zext i32 %65 to i64
  %66 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv63, ptr %value, align 8
  br label %cleanup

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %buffer_size = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 27
  %67 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %buffer_size, align 4
  %conv66 = zext i32 %68 to i64
  %69 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv66, ptr %value, align 8
  br label %cleanup

sw.bb67:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %instruction_count = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 25
  %70 = ptrtoint ptr %instruction_count to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %instruction_count, align 4
  %conv69 = zext i32 %71 to i64
  %72 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv69, ptr %value, align 8
  br label %cleanup

sw.bb70:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %num_constants = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 26
  %73 = ptrtoint ptr %num_constants to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_constants, align 8
  %conv72 = zext i32 %74 to i64
  %75 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv72, ptr %value, align 8
  br label %cleanup

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %varyings_count = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 28
  %76 = ptrtoint ptr %varyings_count to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %varyings_count, align 8
  %conv75 = zext i8 %77 to i64
  %78 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv75, ptr %value, align 8
  br label %cleanup

sw.bb76:                                          ; preds = %entry
  %79 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %gpu, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_private, align 4
  %mmu_global = getelementptr inbounds %struct.etnaviv_drm_private, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %mmu_global to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmu_global, align 4
  %version = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp = icmp eq i32 %86, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 4194304, ptr %value, align 8
  br label %cleanup

if.else:                                          ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 -1, ptr %value, align 8
  br label %cleanup

sw.bb78:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %product_id = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 2
  %89 = ptrtoint ptr %product_id to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %product_id, align 8
  %conv80 = zext i32 %90 to i64
  %91 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %conv80, ptr %value, align 8
  br label %cleanup

sw.bb81:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %customer_id = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 3
  %92 = ptrtoint ptr %customer_id to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %customer_id, align 4
  %conv83 = zext i32 %93 to i64
  %94 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv83, ptr %value, align 8
  br label %cleanup

sw.bb84:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %eco_id = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 4
  %95 = ptrtoint ptr %eco_id to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %eco_id, align 8
  %conv86 = zext i32 %96 to i64
  %97 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %conv86, ptr %value, align 8
  br label %cleanup

sw.default:                                       ; preds = %entry
  %dev = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %101, null
  br i1 %tobool.not.i, label %if.end.i, label %sw.default.dev_name.exit_crit_edge

sw.default.dev_name.exit_crit_edge:               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %99, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %sw.default.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %103, %if.end.i ], [ %101, %sw.default.dev_name.exit_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef %retval.0.i, i32 noundef %param) #13
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %sw.bb84, %sw.bb81, %sw.bb78, %if.else, %if.then, %sw.bb73, %sw.bb70, %sw.bb67, %sw.bb64, %sw.bb61, %sw.bb58, %sw.bb55, %sw.bb52, %sw.bb49, %sw.bb46, %sw.bb43, %sw.bb40, %sw.bb37, %sw.bb34, %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %dev_name.exit ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb84 ], [ 0, %sw.bb81 ], [ 0, %sw.bb78 ], [ 0, %sw.bb73 ], [ 0, %sw.bb70 ], [ 0, %sw.bb67 ], [ 0, %sw.bb64 ], [ 0, %sw.bb61 ], [ 0, %sw.bb58 ], [ 0, %sw.bb55 ], [ 0, %sw.bb52 ], [ 0, %sw.bb49 ], [ 0, %sw.bb46 ], [ 0, %sw.bb43 ], [ 0, %sw.bb40 ], [ 0, %sw.bb37 ], [ 0, %sw.bb34 ], [ 0, %sw.bb31 ], [ 0, %sw.bb28 ], [ 0, %sw.bb25 ], [ 0, %sw.bb22 ], [ 0, %sw.bb19 ], [ 0, %sw.bb16 ], [ 0, %sw.bb13 ], [ 0, %sw.bb10 ], [ 0, %sw.bb7 ], [ 0, %sw.bb4 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_gpu_start_fe(ptr nocapture noundef %gpu, i32 noundef %address, i16 noundef zeroext %prefetch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %0 = tail call i32 @llvm.bswap.i32(i32 %address) #13
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %1 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 1620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #13, !srcloc !323
  %conv = zext i16 %prefetch to i32
  %or = or i32 %conv, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %3 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 1624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %3) #13, !srcloc !323
  %sec_mode = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 5
  %6 = ptrtoint ptr %sec_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %9, i32 932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %3) #13, !srcloc !323
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fe_running = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 9
  %10 = ptrtoint ptr %fe_running to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %fe_running, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gpu_init(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %dev = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1) #16
  br label %pm_put

if.end:                                           ; preds = %entry
  %mmio.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !324
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %shr.mask.i = and i32 %11, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %shr.mask.i)
  %cmp.i = icmp eq i32 %shr.mask.i, 16777216
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %identity.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4
  %12 = ptrtoint ptr %identity.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1280, ptr %identity.i, align 8
  %and1.i = lshr i32 %11, 12
  %shr2.i = and i32 %and1.i, 15
  %revision.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %revision.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr2.i, ptr %revision.i, align 4
  br label %do.end.i

if.else.i:                                        ; preds = %if.end
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i241.i = getelementptr i8, ptr %15, i32 40
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i241.i) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %17 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i243.i = getelementptr i8, ptr %18, i32 32
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i243.i) #13, !srcloc !324
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %identity6.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4
  %21 = ptrtoint ptr %identity6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %identity6.i, align 8
  %22 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i245.i = getelementptr i8, ptr %23, i32 36
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i245.i) #13, !srcloc !324
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %revision10.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %revision10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %revision10.i, align 4
  %27 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i247.i = getelementptr i8, ptr %28, i32 48
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i247.i) #13, !srcloc !324
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %customer_id.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 3
  %31 = ptrtoint ptr %customer_id.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %customer_id.i, align 4
  %32 = ptrtoint ptr %identity6.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %identity6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %33)
  %cmp15.i = icmp eq i32 %33, 1536
  br i1 %cmp15.i, label %land.lhs.true.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %34 = ptrtoint ptr %revision10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %revision10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %35)
  %cmp18.i = icmp eq i32 %35, 25
  br i1 %cmp18.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.else.i.if.end.i_crit_edge
  %36 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i249.i = getelementptr i8, ptr %37, i32 168
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i249.i) #13, !srcloc !324
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %product_id.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %product_id.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %product_id.i, align 8
  %41 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i251.i = getelementptr i8, ptr %42, i32 232
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i251.i) #13, !srcloc !324
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %eco_id.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 4
  %45 = ptrtoint ptr %eco_id.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %eco_id.i, align 8
  %46 = ptrtoint ptr %identity6.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr277.i = load i32, ptr %identity6.i, align 8
  %and26.i = and i32 %.pr277.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and26.i)
  %cmp27.i = icmp ne i32 %and26.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056, i32 %.pr277.i)
  %cmp31.not.i = icmp eq i32 %.pr277.i, 1056
  %or.cond.i = or i1 %cmp31.not.i, %cmp27.i
  br i1 %or.cond.i, label %if.end38.i, label %if.end55.thread.i

if.end55.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %and35.i = and i32 %.pr277.i, 1024
  %47 = ptrtoint ptr %identity6.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and35.i, ptr %identity6.i, align 8
  br label %do.end.i

if.end38.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %.pr277.i)
  %cmp41.i = icmp eq i32 %.pr277.i, 768
  br i1 %cmp41.i, label %land.lhs.true42.i, label %if.end38.i.if.end55.i_crit_edge

if.end38.i.if.end55.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.i

land.lhs.true42.i:                                ; preds = %if.end38.i
  %48 = ptrtoint ptr %revision10.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %revision10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8705, i32 %49)
  %cmp45.i = icmp eq i32 %49, 8705
  br i1 %cmp45.i, label %if.then46.i, label %land.lhs.true42.i.if.end55.i_crit_edge

land.lhs.true42.i.if.end55.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.i

if.then46.i:                                      ; preds = %land.lhs.true42.i
  %50 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i253.i = getelementptr i8, ptr %51, i32 44
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i253.i) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  call void @__sanitizer_cov_trace_const_cmp4(i32 336070688, i32 %16)
  %cmp48.i = icmp eq i32 %16, 336070688
  call void @__sanitizer_cov_trace_const_cmp4(i32 1115410, i32 %52)
  %cmp50.i = icmp eq i32 %52, 1115410
  %or.cond237.i = select i1 %cmp48.i, i1 %cmp50.i, i1 false
  br i1 %or.cond237.i, label %if.then51.i, label %if.then46.i.if.end55.i_crit_edge

if.then46.i.if.end55.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.i

if.then51.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %revision10.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4177, ptr %revision10.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then51.i, %if.then46.i.if.end55.i_crit_edge, %land.lhs.true42.i.if.end55.i_crit_edge, %if.end38.i.if.end55.i_crit_edge
  %54 = ptrtoint ptr %identity6.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr.pr.i = load i32, ptr %identity6.i, align 8
  %55 = zext i32 %.pr.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %.pr.pr.i, label %if.end55.i.do.end.i_crit_edge [
    i32 8192, label %land.lhs.true59.i
    i32 4096, label %land.lhs.true73.i
    i32 800, label %land.lhs.true86.i
  ]

if.end55.i.do.end.i_crit_edge:                    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true59.i:                                ; preds = %if.end55.i
  %56 = ptrtoint ptr %revision10.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %revision10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -43952, i32 %57)
  %cmp62.i = icmp eq i32 %57, -43952
  br i1 %cmp62.i, label %if.then63.i, label %land.lhs.true59.i.do.end.i_crit_edge

land.lhs.true59.i.do.end.i_crit_edge:             ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then63.i:                                      ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %identity6.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 12288, ptr %identity6.i, align 8
  %59 = ptrtoint ptr %revision10.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 21584, ptr %revision10.i, align 4
  br label %do.end.i

land.lhs.true73.i:                                ; preds = %if.end55.i
  %60 = ptrtoint ptr %revision10.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %revision10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20535, i32 %61)
  %cmp76.i = icmp eq i32 %61, 20535
  call void @__sanitizer_cov_trace_const_cmp4(i32 386273824, i32 %16)
  %cmp78.i = icmp eq i32 %16, 386273824
  %or.cond238.i = select i1 %cmp76.i, i1 %cmp78.i, i1 false
  br i1 %or.cond238.i, label %if.then79.i, label %land.lhs.true73.i.do.end.i_crit_edge

land.lhs.true73.i.do.end.i_crit_edge:             ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then79.i:                                      ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %eco_id.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %eco_id.i, align 8
  br label %do.end.i

land.lhs.true86.i:                                ; preds = %if.end55.i
  %63 = ptrtoint ptr %revision10.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %revision10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21251, i32 %64)
  %cmp89.i = icmp eq i32 %64, 21251
  call void @__sanitizer_cov_trace_const_cmp4(i32 285545504, i32 %16)
  %cmp91.i = icmp eq i32 %16, 285545504
  %or.cond239.i = select i1 %cmp89.i, i1 %cmp91.i, i1 false
  br i1 %or.cond239.i, label %if.then92.i, label %land.lhs.true86.i.do.end.i_crit_edge

land.lhs.true86.i.do.end.i_crit_edge:             ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then92.i:                                      ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %eco_id.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %eco_id.i, align 8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then92.i, %land.lhs.true86.i.do.end.i_crit_edge, %if.then79.i, %land.lhs.true73.i.do.end.i_crit_edge, %if.then63.i, %land.lhs.true59.i.do.end.i_crit_edge, %if.end55.i.do.end.i_crit_edge, %if.end55.thread.i, %land.lhs.true.i.do.end.i_crit_edge, %if.then.i
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 8
  %identity97.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4
  %68 = ptrtoint ptr %identity97.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %identity97.i, align 8
  %revision100.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %revision100.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %revision100.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.98, i32 noundef %69, i32 noundef %71) #16
  %idle_mask.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 16
  %72 = ptrtoint ptr %idle_mask.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2147483647, ptr %idle_mask.i, align 4
  %call101.i = tail call zeroext i1 @etnaviv_fill_identity_from_hwdb(ptr noundef %gpu) #13
  br i1 %call101.i, label %do.end.i.etnaviv_hw_identify.exitthread-pre-split_crit_edge, label %if.end103.i

do.end.i.etnaviv_hw_identify.exitthread-pre-split_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_hw_identify.exitthread-pre-split

if.end103.i:                                      ; preds = %do.end.i
  %73 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i255.i = getelementptr i8, ptr %74, i32 28
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i255.i) #13, !srcloc !324
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %features.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 5
  %77 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %features.i, align 4
  %78 = ptrtoint ptr %identity97.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %identity97.i, align 8
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %79, label %if.end103.i.if.else135.i_crit_edge [
    i32 1792, label %if.end113.thread.i
    i32 1280, label %land.lhs.true117.i
    i32 768, label %land.lhs.true124.i
  ]

if.end103.i.if.else135.i_crit_edge:               ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else135.i

if.end113.thread.i:                               ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #15
  %and112.i = and i32 %76, -2
  %81 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and112.i, ptr %features.i, align 4
  br label %if.else135.i

land.lhs.true117.i:                               ; preds = %if.end103.i
  %82 = ptrtoint ptr %revision100.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %revision100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp120.i = icmp ult i32 %83, 2
  br i1 %cmp120.i, label %land.lhs.true117.i.if.then128.i_crit_edge, label %land.lhs.true117.i.if.else135.i_crit_edge

land.lhs.true117.i.if.else135.i_crit_edge:        ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else135.i

land.lhs.true117.i.if.then128.i_crit_edge:        ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then128.i

land.lhs.true124.i:                               ; preds = %if.end103.i
  %84 = ptrtoint ptr %revision100.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %revision100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %85)
  %cmp127.i = icmp ult i32 %85, 8192
  br i1 %cmp127.i, label %land.lhs.true124.i.if.then128.i_crit_edge, label %land.lhs.true124.i.if.else135.i_crit_edge

land.lhs.true124.i.if.else135.i_crit_edge:        ; preds = %land.lhs.true124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else135.i

land.lhs.true124.i.if.then128.i_crit_edge:        ; preds = %land.lhs.true124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then128.i

if.then128.i:                                     ; preds = %land.lhs.true124.i.if.then128.i_crit_edge, %land.lhs.true117.i.if.then128.i_crit_edge
  %minor_features0.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 6
  %86 = call ptr @memset(ptr %minor_features0.i, i32 0, i32 24)
  br label %if.end139.i

if.else135.i:                                     ; preds = %land.lhs.true124.i.if.else135.i_crit_edge, %land.lhs.true117.i.if.else135.i_crit_edge, %if.end113.thread.i, %if.end103.i.if.else135.i_crit_edge
  %87 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i257.i = getelementptr i8, ptr %88, i32 52
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i257.i) #13, !srcloc !324
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %minor_features0138.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 6
  %91 = ptrtoint ptr %minor_features0138.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %minor_features0138.i, align 8
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.else135.i, %if.then128.i
  %minor_features0141.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 6
  %92 = ptrtoint ptr %minor_features0141.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %minor_features0141.i, align 8
  %and142.i = and i32 %93, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i)
  %tobool.not.i = icmp eq i32 %and142.i, 0
  br i1 %tobool.not.i, label %if.end139.i.if.end159.i_crit_edge, label %if.then143.i

if.end139.i.if.end159.i_crit_edge:                ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end159.i

if.then143.i:                                     ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i259.i = getelementptr i8, ptr %95, i32 116
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i259.i) #13, !srcloc !324
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %minor_features1146.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 7
  %98 = ptrtoint ptr %minor_features1146.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %minor_features1146.i, align 4
  %99 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i261.i = getelementptr i8, ptr %100, i32 132
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i261.i) #13, !srcloc !324
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %minor_features2149.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 8
  %103 = ptrtoint ptr %minor_features2149.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %minor_features2149.i, align 8
  %104 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i263.i = getelementptr i8, ptr %105, i32 136
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i263.i) #13, !srcloc !324
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %minor_features3152.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 9
  %108 = ptrtoint ptr %minor_features3152.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %minor_features3152.i, align 4
  %109 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i265.i = getelementptr i8, ptr %110, i32 148
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265.i) #13, !srcloc !324
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %minor_features4155.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 10
  %113 = ptrtoint ptr %minor_features4155.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %minor_features4155.i, align 8
  %114 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i267.i = getelementptr i8, ptr %115, i32 160
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i267.i) #13, !srcloc !324
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %minor_features5158.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 11
  %118 = ptrtoint ptr %minor_features5158.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %minor_features5158.i, align 4
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then143.i, %if.end139.i.if.end159.i_crit_edge
  %119 = ptrtoint ptr %identity97.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %identity97.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %120)
  %cmp162.i = icmp eq i32 %120, 1536
  br i1 %cmp162.i, label %if.then163.i, label %if.end159.i.if.end165.i_crit_edge

if.end159.i.if.end165.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end165.i

if.then163.i:                                     ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #15
  %121 = ptrtoint ptr %idle_mask.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 255, ptr %idle_mask.i, align 4
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.then163.i, %if.end159.i.if.end165.i_crit_edge
  %122 = ptrtoint ptr %minor_features0141.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %minor_features0141.i, align 8
  %and.i.i = and i32 %123, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end165.i.if.end57.i.i_crit_edge, label %if.then.i.i

if.end165.i.if.end57.i.i_crit_edge:               ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57.i.i

if.then.i.i:                                      ; preds = %if.end165.i
  %124 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %125, i32 72
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #13, !srcloc !324
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %128 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i475.i.i = getelementptr i8, ptr %129, i32 128
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i475.i.i) #13, !srcloc !324
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %132 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i477.i.i = getelementptr i8, ptr %133, i32 140
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i477.i.i) #13, !srcloc !324
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %136 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i479.i.i = getelementptr i8, ptr %137, i32 156
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i479.i.i) #13, !srcloc !324
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %and8.i.i = and i32 %127, 15
  %stream_count.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 18
  %140 = ptrtoint ptr %stream_count.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %and8.i.i, ptr %stream_count.i.i, align 8
  %and11.i.i = lshr i32 %127, 4
  %shr12.i.i = and i32 %and11.i.i, 15
  %register_max.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 19
  %141 = ptrtoint ptr %register_max.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %shr12.i.i, ptr %register_max.i.i, align 4
  %and15.i.i = lshr i32 %127, 8
  %shr16.i.i = and i32 %and15.i.i, 15
  %thread_count.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 20
  %142 = ptrtoint ptr %thread_count.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %shr16.i.i, ptr %thread_count.i.i, align 8
  %and19.i.i = lshr i32 %127, 12
  %shr20.i.i = and i32 %and19.i.i, 31
  %vertex_cache_size.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 22
  %143 = ptrtoint ptr %vertex_cache_size.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %shr20.i.i, ptr %vertex_cache_size.i.i, align 8
  %and23.i.i = lshr i32 %127, 20
  %shr24.i.i = and i32 %and23.i.i, 31
  %shader_core_count.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 21
  %144 = ptrtoint ptr %shader_core_count.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %shr24.i.i, ptr %shader_core_count.i.i, align 4
  %and27.i.i = lshr i32 %127, 25
  %shr28.i.i = and i32 %and27.i.i, 7
  %pixel_pipes.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 24
  %145 = ptrtoint ptr %pixel_pipes.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %shr28.i.i, ptr %pixel_pipes.i.i, align 8
  %shr32.i.i = lshr i32 %127, 28
  %vertex_output_buffer_size.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 23
  %146 = ptrtoint ptr %vertex_output_buffer_size.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %shr32.i.i, ptr %vertex_output_buffer_size.i.i, align 4
  %and35.i.i = and i32 %131, 255
  %buffer_size.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 27
  %147 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %and35.i.i, ptr %buffer_size.i.i, align 4
  %and39.i.i = lshr i32 %131, 8
  %shr40.i.i = and i32 %and39.i.i, 255
  %instruction_count.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 25
  %148 = ptrtoint ptr %instruction_count.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %shr40.i.i, ptr %instruction_count.i.i, align 4
  %shr44.i.i = lshr i32 %131, 16
  %num_constants.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 26
  %149 = ptrtoint ptr %num_constants.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %shr44.i.i, ptr %num_constants.i.i, align 8
  %and47.i.i = lshr i32 %135, 4
  %150 = trunc i32 %and47.i.i to i8
  %conv.i.i = and i8 %150, 31
  %varyings_count.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 28
  %151 = ptrtoint ptr %varyings_count.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv.i.i, ptr %varyings_count.i.i, align 8
  %and51.i.i = lshr i32 %139, 12
  %shr52.i.i = and i32 %and51.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr52.i.i)
  %tobool53.not.i.i = icmp eq i32 %shr52.i.i, 0
  br i1 %tobool53.not.i.i, label %if.then.i.i.if.end57.i.i_crit_edge, label %if.then54.i.i

if.then.i.i.if.end57.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57.i.i

if.then54.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %152 = ptrtoint ptr %stream_count.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %shr52.i.i, ptr %stream_count.i.i, align 8
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then54.i.i, %if.then.i.i.if.end57.i.i_crit_edge, %if.end165.i.if.end57.i.i_crit_edge
  %stream_count59.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 18
  %153 = ptrtoint ptr %stream_count59.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %stream_count59.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp.i.i = icmp eq i32 %154, 0
  br i1 %cmp.i.i, label %if.then61.i.i, label %if.end57.i.i.if.end71.i.i_crit_edge

if.end57.i.i.if.end71.i.i_crit_edge:              ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71.i.i

if.then61.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %155 = ptrtoint ptr %identity97.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %identity97.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %156)
  %cmp63.i.i = icmp ugt i32 %156, 4095
  %..i.i = select i1 %cmp63.i.i, i32 4, i32 1
  %157 = ptrtoint ptr %stream_count59.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %..i.i, ptr %stream_count59.i.i, align 8
  br label %if.end71.i.i

if.end71.i.i:                                     ; preds = %if.then61.i.i, %if.end57.i.i.if.end71.i.i_crit_edge
  %register_max73.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 19
  %158 = ptrtoint ptr %register_max73.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %register_max73.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool74.not.i.i = icmp eq i32 %159, 0
  br i1 %tobool74.not.i.i, label %if.else80.i.i, label %if.then75.i.i

if.then75.i.i:                                    ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i.i = shl nuw i32 1, %159
  br label %if.end92.i.i

if.else80.i.i:                                    ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %160 = ptrtoint ptr %identity97.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %identity97.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %161)
  %cmp83.i.i = icmp eq i32 %161, 1024
  %.507.i.i = select i1 %cmp83.i.i, i32 32, i32 64
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %if.else80.i.i, %if.then75.i.i
  %.sink501.i.i = phi i32 [ %shl.i.i, %if.then75.i.i ], [ %.507.i.i, %if.else80.i.i ]
  %162 = ptrtoint ptr %register_max73.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %.sink501.i.i, ptr %register_max73.i.i, align 4
  %thread_count94.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 20
  %163 = ptrtoint ptr %thread_count94.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %thread_count94.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool95.not.i.i = icmp eq i32 %164, 0
  br i1 %tobool95.not.i.i, label %if.else102.i.i, label %if.then96.i.i

if.then96.i.i:                                    ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl99.i.i = shl nuw i32 1, %164
  br label %if.end127.i.i

if.else102.i.i:                                   ; preds = %if.end92.i.i
  %165 = ptrtoint ptr %identity97.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %identity97.i, align 8
  %167 = zext i32 %166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %166, label %if.else122.i.i [
    i32 1024, label %if.else102.i.i.if.end127.i.i_crit_edge
    i32 1280, label %if.else102.i.i.if.then119.i.i_crit_edge
    i32 1328, label %if.else102.i.i.if.then119.i.i_crit_edge154
  ]

if.else102.i.i.if.then119.i.i_crit_edge154:       ; preds = %if.else102.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then119.i.i

if.else102.i.i.if.then119.i.i_crit_edge:          ; preds = %if.else102.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then119.i.i

if.else102.i.i.if.end127.i.i_crit_edge:           ; preds = %if.else102.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127.i.i

if.then119.i.i:                                   ; preds = %if.else102.i.i.if.then119.i.i_crit_edge, %if.else102.i.i.if.then119.i.i_crit_edge154
  br label %if.end127.i.i

if.else122.i.i:                                   ; preds = %if.else102.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127.i.i

if.end127.i.i:                                    ; preds = %if.else122.i.i, %if.then119.i.i, %if.else102.i.i.if.end127.i.i_crit_edge, %if.then96.i.i
  %.sink502.i.i = phi i32 [ 256, %if.else122.i.i ], [ 128, %if.then119.i.i ], [ %shl99.i.i, %if.then96.i.i ], [ 64, %if.else102.i.i.if.end127.i.i_crit_edge ]
  %168 = ptrtoint ptr %thread_count94.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %.sink502.i.i, ptr %thread_count94.i.i, align 8
  %vertex_cache_size129.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 22
  %169 = ptrtoint ptr %vertex_cache_size129.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %vertex_cache_size129.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp130.i.i = icmp eq i32 %170, 0
  br i1 %cmp130.i.i, label %if.then132.i.i, label %if.end127.i.i.if.end135.i.i_crit_edge

if.end127.i.i.if.end135.i.i_crit_edge:            ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135.i.i

if.then132.i.i:                                   ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %171 = ptrtoint ptr %vertex_cache_size129.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 8, ptr %vertex_cache_size129.i.i, align 8
  br label %if.end135.i.i

if.end135.i.i:                                    ; preds = %if.then132.i.i, %if.end127.i.i.if.end135.i.i_crit_edge
  %shader_core_count137.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 21
  %172 = ptrtoint ptr %shader_core_count137.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %shader_core_count137.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp138.i.i = icmp eq i32 %173, 0
  br i1 %cmp138.i.i, label %if.then140.i.i, label %if.end135.i.i.if.end152.i.i_crit_edge

if.end135.i.i.if.end152.i.i_crit_edge:            ; preds = %if.end135.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i.i

if.then140.i.i:                                   ; preds = %if.end135.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %174 = ptrtoint ptr %identity97.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %identity97.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %175)
  %cmp143.i.i = icmp ugt i32 %175, 4095
  %.508.i.i = select i1 %cmp143.i.i, i32 2, i32 1
  %176 = ptrtoint ptr %shader_core_count137.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %.508.i.i, ptr %shader_core_count137.i.i, align 4
  br label %if.end152.i.i

if.end152.i.i:                                    ; preds = %if.then140.i.i, %if.end135.i.i.if.end152.i.i_crit_edge
  %pixel_pipes154.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 24
  %177 = ptrtoint ptr %pixel_pipes154.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %pixel_pipes154.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp155.i.i = icmp eq i32 %178, 0
  br i1 %cmp155.i.i, label %if.then157.i.i, label %if.end152.i.i.if.end160.i.i_crit_edge

if.end152.i.i.if.end160.i.i_crit_edge:            ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end160.i.i

if.then157.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %179 = ptrtoint ptr %pixel_pipes154.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 1, ptr %pixel_pipes154.i.i, align 8
  br label %if.end160.i.i

if.end160.i.i:                                    ; preds = %if.then157.i.i, %if.end152.i.i.if.end160.i.i_crit_edge
  %vertex_output_buffer_size162.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 23
  %180 = ptrtoint ptr %vertex_output_buffer_size162.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %vertex_output_buffer_size162.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool163.not.i.i = icmp eq i32 %181, 0
  br i1 %tobool163.not.i.i, label %if.else170.i.i, label %if.then164.i.i

if.then164.i.i:                                   ; preds = %if.end160.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl167.i.i = shl nuw i32 1, %181
  br label %if.end199.i.i

if.else170.i.i:                                   ; preds = %if.end160.i.i
  %182 = ptrtoint ptr %identity97.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %identity97.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %183)
  %cmp173.i.i = icmp eq i32 %183, 1024
  br i1 %cmp173.i.i, label %if.then175.i.i, label %if.else170.i.i.if.end199.i.i_crit_edge

if.else170.i.i.if.end199.i.i_crit_edge:           ; preds = %if.else170.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199.i.i

if.then175.i.i:                                   ; preds = %if.else170.i.i
  %184 = ptrtoint ptr %revision100.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %revision100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %185)
  %cmp177.i.i = icmp ult i32 %185, 16384
  br i1 %cmp177.i.i, label %if.then175.i.i.if.end199.i.i_crit_edge, label %if.else182.i.i

if.then175.i.i.if.end199.i.i_crit_edge:           ; preds = %if.then175.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199.i.i

if.else182.i.i:                                   ; preds = %if.then175.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16896, i32 %185)
  %cmp185.i.i = icmp ult i32 %185, 16896
  %.509.i.i = select i1 %cmp185.i.i, i32 256, i32 128
  br label %if.end199.i.i

if.end199.i.i:                                    ; preds = %if.else182.i.i, %if.then175.i.i.if.end199.i.i_crit_edge, %if.else170.i.i.if.end199.i.i_crit_edge, %if.then164.i.i
  %.sink504.i.i = phi i32 [ %shl167.i.i, %if.then164.i.i ], [ 512, %if.then175.i.i.if.end199.i.i_crit_edge ], [ %.509.i.i, %if.else182.i.i ], [ 512, %if.else170.i.i.if.end199.i.i_crit_edge ]
  %186 = ptrtoint ptr %vertex_output_buffer_size162.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %.sink504.i.i, ptr %vertex_output_buffer_size162.i.i, align 4
  %instruction_count201.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 25
  %187 = ptrtoint ptr %instruction_count201.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %instruction_count201.i.i, align 4
  %189 = zext i32 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %188, label %sw.default.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %if.end199.i.i.sw.epilog.i.i_crit_edge
    i32 2, label %sw.bb225.i.i
  ]

if.end199.i.i.sw.epilog.i.i_crit_edge:            ; preds = %if.end199.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end199.i.i
  %190 = ptrtoint ptr %identity97.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %identity97.i, align 8
  %192 = zext i32 %191 to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %191, label %sw.bb.i.i.if.else218.i.i_crit_edge [
    i32 8192, label %land.lhs.true.i.i
    i32 2176, label %sw.bb.i.i.sw.epilog.i.i_crit_edge
  ]

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

sw.bb.i.i.if.else218.i.i_crit_edge:               ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else218.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i.i
  %193 = ptrtoint ptr %revision100.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %revision100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20744, i32 %194)
  %cmp208.i.i = icmp eq i32 %194, 20744
  br i1 %cmp208.i.i, label %land.lhs.true.i.i.sw.epilog.i.i_crit_edge, label %land.lhs.true.i.i.if.else218.i.i_crit_edge

land.lhs.true.i.i.if.else218.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else218.i.i

land.lhs.true.i.i.sw.epilog.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

if.else218.i.i:                                   ; preds = %land.lhs.true.i.i.if.else218.i.i_crit_edge, %sw.bb.i.i.if.else218.i.i_crit_edge
  br label %sw.epilog.i.i

sw.bb225.i.i:                                     ; preds = %if.end199.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end199.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb225.i.i, %if.else218.i.i, %land.lhs.true.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i.sw.epilog.i.i_crit_edge, %if.end199.i.i.sw.epilog.i.i_crit_edge
  %.sink505.i.i = phi i32 [ 256, %if.else218.i.i ], [ 256, %sw.default.i.i ], [ 2048, %sw.bb225.i.i ], [ 512, %sw.bb.i.i.sw.epilog.i.i_crit_edge ], [ 512, %land.lhs.true.i.i.sw.epilog.i.i_crit_edge ], [ 1024, %if.end199.i.i.sw.epilog.i.i_crit_edge ]
  %195 = ptrtoint ptr %instruction_count201.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %.sink505.i.i, ptr %instruction_count201.i.i, align 4
  %num_constants231.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 26
  %196 = ptrtoint ptr %num_constants231.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %num_constants231.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp232.i.i = icmp eq i32 %197, 0
  br i1 %cmp232.i.i, label %if.then234.i.i, label %sw.epilog.i.i.if.end237.i.i_crit_edge

sw.epilog.i.i.if.end237.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237.i.i

if.then234.i.i:                                   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %198 = ptrtoint ptr %num_constants231.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 168, ptr %num_constants231.i.i, align 8
  br label %if.end237.i.i

if.end237.i.i:                                    ; preds = %if.then234.i.i, %sw.epilog.i.i.if.end237.i.i_crit_edge
  %varyings_count239.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 28
  %199 = ptrtoint ptr %varyings_count239.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %varyings_count239.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %cmp241.i.i = icmp eq i8 %200, 0
  br i1 %cmp241.i.i, label %if.then243.i.i, label %if.end237.i.i.if.end254.i.i_crit_edge

if.end237.i.i.if.end254.i.i_crit_edge:            ; preds = %if.end237.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end254.i.i

if.then243.i.i:                                   ; preds = %if.end237.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features1.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 7
  %201 = ptrtoint ptr %minor_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %minor_features1.i.i, align 4
  %and245.i.i = and i32 %202, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245.i.i)
  %tobool246.not.i.i = icmp eq i32 %and245.i.i, 0
  %.510.i.i = select i1 %tobool246.not.i.i, i8 8, i8 12
  %203 = ptrtoint ptr %varyings_count239.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %.510.i.i, ptr %varyings_count239.i.i, align 8
  br label %if.end254.i.i

if.end254.i.i:                                    ; preds = %if.then243.i.i, %if.end237.i.i.if.end254.i.i_crit_edge
  %204 = ptrtoint ptr %identity97.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %identity97.i, align 8
  %206 = zext i32 %205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %205, label %if.end254.i.i.etnaviv_hw_identify.exit_crit_edge [
    i32 20480, label %land.lhs.true259.i.i
    i32 16384, label %land.lhs.true269.i.i
    i32 12288, label %land.lhs.true299.i.i
    i32 8704, label %land.lhs.true309.i.i
    i32 8448, label %land.lhs.true319.i.i
    i32 8192, label %land.lhs.true329.i.i
    i32 5376, label %land.lhs.true339.i.i
    i32 2176, label %land.lhs.true349.i.i
  ]

if.end254.i.i.etnaviv_hw_identify.exit_crit_edge: ; preds = %if.end254.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_hw_identify.exit

land.lhs.true259.i.i:                             ; preds = %if.end254.i.i
  %207 = ptrtoint ptr %revision100.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %revision100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21556, i32 %208)
  %cmp262.i.i = icmp eq i32 %208, 21556
  br i1 %cmp262.i.i, label %land.lhs.true259.i.i.if.then364.i.i_crit_edge, label %land.lhs.true259.i.i.if.end8_crit_edge

land.lhs.true259.i.i.if.end8_crit_edge:           ; preds = %land.lhs.true259.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true259.i.i.if.then364.i.i_crit_edge:    ; preds = %land.lhs.true259.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then364.i.i

land.lhs.true269.i.i:                             ; preds = %if.end254.i.i
  %209 = ptrtoint ptr %revision100.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %revision100.i, align 4
  %211 = zext i32 %210 to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %210, label %land.lhs.true269.i.i.if.end8_crit_edge [
    i32 21026, label %land.lhs.true269.i.i.if.then364.i.i_crit_edge
    i32 21061, label %land.lhs.true269.i.i.if.then364.i.i_crit_edge155
    i32 21000, label %land.lhs.true269.i.i.if.then364.i.i_crit_edge156
  ]

land.lhs.true269.i.i.if.then364.i.i_crit_edge156: ; preds = %land.lhs.true269.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then364.i.i

land.lhs.true269.i.i.if.then364.i.i_crit_edge155: ; preds = %land.lhs.true269.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then364.i.i

land.lhs.true269.i.i.if.then364.i.i_crit_edge:    ; preds = %land.lhs.true269.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then364.i.i

land.lhs.true269.i.i.if.end8_crit_edge:           ; preds = %land.lhs.true269.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true299.i.i:                             ; preds = %if.end254.i.i
  %212 = ptrtoint ptr %revision100.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %revision100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21557, i32 %213)
  %cmp302.i.i = icmp eq i32 %213, 21557
  br i1 %cmp302.i.i, label %land.lhs.true299.i.i.if.then364.i.i_crit_edge, label %land.lhs.true299.i.i.if.end8_crit_edge

land.lhs.true299.i.i.if.end8_crit_edge:           ; preds = %land.lhs.true299.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true299.i.i.if.then364.i.i_crit_edge:    ; preds = %land.lhs.true299.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then364.i.i

land.lhs.true309.i.i:                             ; preds = %if.end254.i.i
  %214 = ptrtoint ptr %revision100.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %revision100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21060, i32 %215)
  %cmp312.i.i = icmp eq i32 %215, 21060
  br i1 %cmp312.i.i, label %land.lhs.true309.i.i.if.then364.i.i_crit_edge, label %land.lhs.true309.i.i.if.end8_crit_edge

land.lhs.true309.i.i.if.end8_crit_edge:           ; preds = %land.lhs.true309.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true309.i.i.if.then364.i.i_crit_edge:    ; preds = %land.lhs.true309.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then364.i.i

land.lhs.true319.i.i:                             ; preds = %if.end254.i.i
  %216 = ptrtoint ptr %revision100.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %revision100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20744, i32 %217)
  %cmp322.i.i = icmp eq i32 %217, 20744
  br i1 %cmp322.i.i, label %land.lhs.true319.i.i.if.then364.i.i_crit_edge, label %land.lhs.true319.i.i.if.end8_crit_edge

land.lhs.true319.i.i.if.end8_crit_edge:           ; preds = %land.lhs.true319.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true319.i.i.if.then364.i.i_crit_edge:    ; preds = %land.lhs.true319.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then364.i.i

land.lhs.true329.i.i:                             ; preds = %if.end254.i.i
  %218 = ptrtoint ptr %revision100.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %revision100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20744, i32 %219)
  %cmp332.i.i = icmp eq i32 %219, 20744
  br i1 %cmp332.i.i, label %land.lhs.true329.i.i.if.then364.i.i_crit_edge, label %land.lhs.true329.i.i.if.end8_crit_edge

land.lhs.true329.i.i.if.end8_crit_edge:           ; preds = %land.lhs.true329.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true329.i.i.if.then364.i.i_crit_edge:    ; preds = %land.lhs.true329.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then364.i.i

land.lhs.true339.i.i:                             ; preds = %if.end254.i.i
  %220 = ptrtoint ptr %revision100.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %revision100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21062, i32 %221)
  %cmp342.i.i = icmp eq i32 %221, 21062
  br i1 %cmp342.i.i, label %land.lhs.true339.i.i.if.then364.i.i_crit_edge, label %land.lhs.true339.i.i.if.end8_crit_edge

land.lhs.true339.i.i.if.end8_crit_edge:           ; preds = %land.lhs.true339.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true339.i.i.if.then364.i.i_crit_edge:    ; preds = %land.lhs.true339.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then364.i.i

land.lhs.true349.i.i:                             ; preds = %if.end254.i.i
  %222 = ptrtoint ptr %revision100.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %revision100.i, align 4
  %224 = and i32 %223, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20742, i32 %224)
  %switch.i = icmp eq i32 %224, 20742
  br i1 %switch.i, label %land.lhs.true349.i.i.if.then364.i.i_crit_edge, label %land.lhs.true349.i.i.if.end8_crit_edge

land.lhs.true349.i.i.if.end8_crit_edge:           ; preds = %land.lhs.true349.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true349.i.i.if.then364.i.i_crit_edge:    ; preds = %land.lhs.true349.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then364.i.i

if.then364.i.i:                                   ; preds = %land.lhs.true349.i.i.if.then364.i.i_crit_edge, %land.lhs.true339.i.i.if.then364.i.i_crit_edge, %land.lhs.true329.i.i.if.then364.i.i_crit_edge, %land.lhs.true319.i.i.if.then364.i.i_crit_edge, %land.lhs.true309.i.i.if.then364.i.i_crit_edge, %land.lhs.true299.i.i.if.then364.i.i_crit_edge, %land.lhs.true269.i.i.if.then364.i.i_crit_edge, %land.lhs.true269.i.i.if.then364.i.i_crit_edge155, %land.lhs.true269.i.i.if.then364.i.i_crit_edge156, %land.lhs.true259.i.i.if.then364.i.i_crit_edge
  %225 = ptrtoint ptr %varyings_count239.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %varyings_count239.i.i, align 8
  %sub.i.i = add i8 %226, -1
  store i8 %sub.i.i, ptr %varyings_count239.i.i, align 8
  br label %etnaviv_hw_identify.exitthread-pre-split

etnaviv_hw_identify.exitthread-pre-split:         ; preds = %if.then364.i.i, %do.end.i.etnaviv_hw_identify.exitthread-pre-split_crit_edge
  %227 = ptrtoint ptr %identity97.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %.pr = load i32, ptr %identity97.i, align 8
  br label %etnaviv_hw_identify.exit

etnaviv_hw_identify.exit:                         ; preds = %etnaviv_hw_identify.exitthread-pre-split, %if.end254.i.i.etnaviv_hw_identify.exit_crit_edge
  %228 = phi i32 [ %.pr, %etnaviv_hw_identify.exitthread-pre-split ], [ %205, %if.end254.i.i.etnaviv_hw_identify.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %cmp2 = icmp eq i32 %228, 0
  br i1 %cmp2, label %do.end6, label %etnaviv_hw_identify.exit.if.end8_crit_edge

etnaviv_hw_identify.exit.if.end8_crit_edge:       ; preds = %etnaviv_hw_identify.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

do.end6:                                          ; preds = %etnaviv_hw_identify.exit
  call void @__sanitizer_cov_trace_pc() #15
  %229 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %230, ptr noundef nonnull @.str.7) #16
  br label %fail

if.end8:                                          ; preds = %etnaviv_hw_identify.exit.if.end8_crit_edge, %land.lhs.true349.i.i.if.end8_crit_edge, %land.lhs.true339.i.i.if.end8_crit_edge, %land.lhs.true329.i.i.if.end8_crit_edge, %land.lhs.true319.i.i.if.end8_crit_edge, %land.lhs.true309.i.i.if.end8_crit_edge, %land.lhs.true299.i.i.if.end8_crit_edge, %land.lhs.true269.i.i.if.end8_crit_edge, %land.lhs.true259.i.i.if.end8_crit_edge
  %features = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 5
  %231 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %features, align 4
  %233 = and i32 %232, 335544320
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %233)
  %.not = icmp eq i32 %233, 335544320
  br i1 %.not, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %234 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %235, ptr noundef nonnull @.str.10) #16
  br label %fail

if.end19:                                         ; preds = %if.end8
  %minor_features7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 13
  %236 = ptrtoint ptr %minor_features7 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %minor_features7, align 4
  %and21 = and i32 %237, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end28_crit_edge, label %land.lhs.true23

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

land.lhs.true23:                                  ; preds = %if.end19
  %minor_features10 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 16
  %238 = ptrtoint ptr %minor_features10 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %minor_features10, align 8
  %and25 = and i32 %239, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true23.if.end28_crit_edge, label %if.then27

land.lhs.true23.if.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then27:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  %sec_mode = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 5
  %240 = ptrtoint ptr %sec_mode to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 1, ptr %sec_mode, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %land.lhs.true23.if.end28_crit_edge, %if.end19.if.end28_crit_edge
  %call29 = tail call fastcc i32 @etnaviv_hw_reset(ptr noundef %gpu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %241 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %242, ptr noundef nonnull @.str.14) #16
  br label %fail

if.end36:                                         ; preds = %if.end28
  %call37 = tail call i32 @etnaviv_iommu_global_init(ptr noundef %gpu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.fail_crit_edge

if.end36.fail_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end40:                                         ; preds = %if.end36
  %243 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dev, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.device, ptr %244, i32 0, i32 18
  %245 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dma_mask.i.i, align 8
  %tobool.not.i.i145 = icmp eq ptr %246, null
  br i1 %tobool.not.i.i145, label %if.end40.if.end.i.i_crit_edge, label %land.lhs.true.i.i146

if.end40.if.end.i.i_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i146:                             ; preds = %if.end40
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %246, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %248)
  %tobool2.not.i.i = icmp eq i64 %248, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i146.if.end.i.i_crit_edge, label %land.lhs.true.i.i146.dma_addressing_limited.exit_crit_edge

land.lhs.true.i.i146.dma_addressing_limited.exit_crit_edge: ; preds = %land.lhs.true.i.i146
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_addressing_limited.exit

land.lhs.true.i.i146.if.end.i.i_crit_edge:        ; preds = %land.lhs.true.i.i146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i146.if.end.i.i_crit_edge, %if.end40.if.end.i.i_crit_edge
  br label %dma_addressing_limited.exit

dma_addressing_limited.exit:                      ; preds = %if.end.i.i, %land.lhs.true.i.i146.dma_addressing_limited.exit_crit_edge
  %retval.0.i.i = phi i64 [ 4294967295, %if.end.i.i ], [ %248, %land.lhs.true.i.i146.dma_addressing_limited.exit_crit_edge ]
  %bus_dma_limit.i = getelementptr inbounds %struct.device, ptr %244, i32 0, i32 20
  %249 = ptrtoint ptr %bus_dma_limit.i to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %bus_dma_limit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %250)
  %cmp1.i = icmp eq i64 %250, 0
  %251 = tail call i64 @llvm.umin.i64(i64 %retval.0.i.i, i64 %250) #13
  %cond11.i = select i1 %cmp1.i, i64 %retval.0.i.i, i64 %251
  %call12.i = tail call i64 @dma_get_required_mask(ptr noundef %244) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %cond11.i, i64 %call12.i)
  %cmp13.i = icmp ult i64 %cond11.i, %call12.i
  br i1 %cmp13.i, label %if.then43, label %dma_addressing_limited.exit.if.end44_crit_edge

dma_addressing_limited.exit.if.end44_crit_edge:   ; preds = %dma_addressing_limited.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then43:                                        ; preds = %dma_addressing_limited.exit
  call void @__sanitizer_cov_trace_pc() #15
  %shm_gfp_mask = getelementptr inbounds %struct.etnaviv_drm_private, ptr %3, i32 0, i32 2
  %252 = ptrtoint ptr %shm_gfp_mask to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %shm_gfp_mask, align 4
  %or = or i32 %253, 4
  store i32 %or, ptr %shm_gfp_mask, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %dma_addressing_limited.exit.if.end44_crit_edge
  %cmdbuf_suballoc = getelementptr inbounds %struct.etnaviv_drm_private, ptr %3, i32 0, i32 3
  %254 = ptrtoint ptr %cmdbuf_suballoc to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %cmdbuf_suballoc, align 4
  %buffer = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10
  %call45 = tail call i32 @etnaviv_cmdbuf_init(ptr noundef %255, ptr noundef %buffer, i32 noundef 4096) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %256 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.17) #16
  br label %fail

if.end52:                                         ; preds = %if.end44
  %call54 = tail call i32 @etnaviv_cmdbuf_get_pa(ptr noundef %buffer) #13
  %and55 = and i32 %call54, -134217728
  %258 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %features, align 4
  %and58 = and i32 %259, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end52.if.then63_crit_edge, label %lor.lhs.false

if.end52.if.then63_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then63

lor.lhs.false:                                    ; preds = %if.end52
  %minor_features0 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 6
  %260 = ptrtoint ptr %minor_features0 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %minor_features0, align 8
  %and61 = and i32 %261, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else69, label %lor.lhs.false.if.then63_crit_edge

lor.lhs.false.if.then63_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then63

if.then63:                                        ; preds = %lor.lhs.false.if.then63_crit_edge, %if.end52.if.then63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %cmp64 = icmp slt i32 %and55, 0
  %mmu_global = getelementptr inbounds %struct.etnaviv_drm_private, ptr %3, i32 0, i32 4
  %262 = ptrtoint ptr %mmu_global to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %mmu_global, align 4
  %memory_base = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %263, i32 0, i32 7
  br i1 %cmp64, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #15
  %264 = ptrtoint ptr %memory_base to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 -2147483648, ptr %memory_base, align 4
  br label %do.body84

if.else:                                          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #15
  %265 = ptrtoint ptr %memory_base to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %and55, ptr %memory_base, align 4
  br label %do.body84

if.else69:                                        ; preds = %lor.lhs.false
  %add70 = add i32 %and55, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add70)
  %cmp71 = icmp slt i32 %add70, 0
  br i1 %cmp71, label %do.end75, label %if.else69.do.body84_crit_edge

if.else69.do.body84_crit_edge:                    ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body84

do.end75:                                         ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #15
  %266 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %267, ptr noundef nonnull @.str.20) #16
  %268 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %features, align 4
  %and79 = and i32 %269, -2
  store i32 %and79, ptr %features, align 4
  %mmu_global80 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %3, i32 0, i32 4
  %270 = ptrtoint ptr %mmu_global80 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %mmu_global80, align 4
  %memory_base81 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %271, i32 0, i32 7
  %272 = ptrtoint ptr %memory_base81 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 -2147483648, ptr %memory_base81, align 4
  br label %do.body84

do.body84:                                        ; preds = %do.end75, %if.else69.do.body84_crit_edge, %if.else, %if.then65
  %event_spinlock = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %event_spinlock, ptr noundef nonnull @.str.22, ptr noundef nonnull @etnaviv_gpu_init.__key, i16 noundef signext 3) #13
  %event_free = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 14
  %273 = ptrtoint ptr %event_free to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 0, ptr %event_free, align 4
  %wait.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @init_completion.__key) #13
  %event_bitmap = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 12
  %274 = ptrtoint ptr %event_bitmap to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 0, ptr %event_bitmap, align 4
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  tail call void @complete(ptr noundef %event_free) #13
  %lock = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  tail call fastcc void @etnaviv_gpu_hw_init(ptr noundef %gpu)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  %275 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev, align 8
  %call.i147 = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i = getelementptr inbounds %struct.device, ptr %276, i32 0, i32 12, i32 22
  %277 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %277)
  store volatile i64 %call.i147, ptr %last_busy.i, align 8
  %278 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev, align 8
  %call.i148 = tail call i32 @__pm_runtime_suspend(ptr noundef %279, i32 noundef 13) #13
  %initialized = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 8
  %280 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 1, ptr %initialized, align 8
  br label %cleanup

fail:                                             ; preds = %do.end50, %if.end36.fail_crit_edge, %do.end34, %do.end17, %do.end6
  %ret.0 = phi i32 [ -6, %do.end6 ], [ -6, %do.end17 ], [ %call29, %do.end34 ], [ %call37, %if.end36.fail_crit_edge ], [ %call45, %do.end50 ]
  %281 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %dev, align 8
  %call.i149 = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i150 = getelementptr inbounds %struct.device, ptr %282, i32 0, i32 12, i32 22
  %283 = ptrtoint ptr %last_busy.i150 to i32
  call void @__asan_store8_noabort(i32 %283)
  store volatile i64 %call.i149, ptr %last_busy.i150, align 8
  br label %pm_put

pm_put:                                           ; preds = %fail, %do.end
  %ret.1 = phi i32 [ %call.i, %do.end ], [ %ret.0, %fail ]
  %284 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev, align 8
  %call.i151 = tail call i32 @__pm_runtime_suspend(ptr noundef %285, i32 noundef 13) #13
  br label %cleanup

cleanup:                                          ; preds = %pm_put, %do.body84
  %retval.0 = phi i32 [ %ret.1, %pm_put ], [ 0, %do.body84 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @etnaviv_hw_reset(ptr nocapture noundef %gpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -100, %0
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub129 = add i32 %add.neg, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub129)
  %cmp130 = icmp slt i32 %sub129, 0
  br i1 %cmp130, label %while.body.lr.ph, label %entry.if.then43_crit_edge

entry.if.then43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then43

while.body.lr.ph:                                 ; preds = %entry
  %freq_scale = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 36
  %mmio.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %sec_mode = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 5
  %dev36 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %freq_scale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq_scale, align 4
  %sub1 = sub i32 6, %3
  %shl2 = shl i32 4, %sub1
  %and = and i32 %shl2, 508
  %or.i = or i32 %and, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %5 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #13, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %7 = tail call i32 @llvm.bswap.i32(i32 %and) #13
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #13, !srcloc !323
  %or = or i32 %and, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %11 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #13, !srcloc !323
  %13 = ptrtoint ptr %sec_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp3 = icmp eq i32 %14, 1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #13, !srcloc !323
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %or4 = or i32 %and, 528384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %17 = tail call i32 @llvm.bswap.i32(i32 %or4) #13
  %18 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #13, !srcloc !323
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %control.0 = phi i32 [ %or, %if.then ], [ %or4, %if.else ]
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #13
  %and5 = and i32 %control.0, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %20 = tail call i32 @llvm.bswap.i32(i32 %and5) #13
  %21 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #13, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %7) #13, !srcloc !323
  %25 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %26, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp9 = icmp eq i32 %28, 0
  br i1 %cmp9, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etnaviv_hw_reset.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etnaviv_hw_reset, %if.then14)) #13
          to label %cleanup [label %if.then14], !srcloc !326

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev36, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etnaviv_hw_reset.__UNIQUE_ID_ddebug324, ptr noundef %30, ptr noundef nonnull @.str.102) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %31 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i.i, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #13, !srcloc !324
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %35 = and i32 %34, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %35)
  %.not = icmp eq i32 %35, 196608
  br i1 %.not, label %while.end.thread, label %do.body23

do.body23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etnaviv_hw_reset.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etnaviv_hw_reset, %if.then35)) #13
          to label %cleanup [label %if.then35], !srcloc !326

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev36, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etnaviv_hw_reset.__UNIQUE_ID_ddebug325, ptr noundef %37, ptr noundef nonnull @.str.103) #13
  br label %cleanup

while.end.thread:                                 ; preds = %if.end16
  %or41 = or i32 %34, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %38 = tail call i32 @llvm.bswap.i32(i32 %or41) #13
  %39 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #13, !srcloc !323
  tail call fastcc void @etnaviv_gpu_update_clock(ptr noundef %gpu)
  %fe_running = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 9
  %41 = ptrtoint ptr %fe_running to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %fe_running, align 1
  %exec_state = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 11
  %42 = ptrtoint ptr %exec_state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %exec_state, align 8
  %mmu_context = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 30
  %43 = ptrtoint ptr %mmu_context to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmu_context, align 4
  %tobool59.not = icmp eq ptr %44, null
  br i1 %tobool59.not, label %while.end.thread.if.end62_crit_edge, label %if.then60

while.end.thread.if.end62_crit_edge:              ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

cleanup:                                          ; preds = %if.then35, %do.body23, %if.then14, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %45
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.if.then43_crit_edge

cleanup.if.then43_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then43

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.then43:                                        ; preds = %cleanup.if.then43_crit_edge, %entry.if.then43_crit_edge
  %mmio.i119 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %46 = ptrtoint ptr %mmio.i119 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i119, align 4
  %add.ptr.i120 = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %49 = ptrtoint ptr %mmio.i119 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i119, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #13, !srcloc !324
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %dev49 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  %53 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev49, align 8
  %55 = and i32 %48, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool51.not = icmp eq i32 %55, 0
  %cond = select i1 %tobool51.not, ptr @.str.106, ptr @.str.105
  %and52 = and i32 %52, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %cond54 = select i1 %tobool53.not, ptr @.str.106, ptr @.str.105
  %and55 = and i32 %52, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %cond57 = select i1 %tobool56.not, ptr @.str.106, ptr @.str.105
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.104, ptr noundef nonnull %cond, ptr noundef nonnull %cond54, ptr noundef nonnull %cond57) #16
  br label %cleanup64

if.then60:                                        ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %44) #13
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %while.end.thread.if.end62_crit_edge
  %56 = ptrtoint ptr %mmu_context to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %mmu_context, align 4
  br label %cleanup64

cleanup64:                                        ; preds = %if.end62, %if.then43
  %retval.0 = phi i32 [ -16, %if.then43 ], [ 0, %if.end62 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_iommu_global_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_get_pa(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @etnaviv_gpu_hw_init(ptr noundef readonly %gpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %identity = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4
  %0 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %identity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %1)
  %cmp = icmp eq i32 %1, 800
  br i1 %cmp, label %land.lhs.true, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %revision = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20487, i32 %3)
  %cmp2 = icmp eq i32 %3, 20487
  br i1 %cmp2, label %land.lhs.true.land.lhs.true10_crit_edge, label %land.lhs.true6

land.lhs.true.land.lhs.true10_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21024, i32 %5)
  %cmp9 = icmp eq i32 %5, 21024
  br i1 %cmp9, label %land.lhs.true6.land.lhs.true10_crit_edge, label %land.lhs.true6.if.end18_crit_edge

land.lhs.true6.if.end18_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

land.lhs.true6.land.lhs.true10_crit_edge:         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true6.land.lhs.true10_crit_edge, %land.lhs.true.land.lhs.true10_crit_edge
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 44
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  call void @__sanitizer_cov_trace_const_cmp4(i32 2360834, i32 %8)
  %cmp11.not = icmp eq i32 %8, 2360834
  br i1 %cmp11.not, label %land.lhs.true10.if.end18_crit_edge, label %if.then

land.lhs.true10.if.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %10, i32 1044
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %12 = and i32 %11, 16777215
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20487, i32 %15)
  %cmp15 = icmp eq i32 %15, 20487
  %mc_memory_debug.0.v = select i1 %cmp15, i32 12, i32 8
  %mc_memory_debug.0 = or i32 %mc_memory_debug.0.v, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %16 = tail call i32 @llvm.bswap.i32(i32 %mc_memory_debug.0) #13
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %18, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %16) #13, !srcloc !323
  br label %if.end18

if.end18:                                         ; preds = %if.then, %land.lhs.true10.if.end18_crit_edge, %land.lhs.true6.if.end18_crit_edge, %entry.if.end18_crit_edge
  %mmio.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %19 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 256
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !324
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %revision.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %revision.i, align 4
  %25 = add i32 %24, -17153
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %26 = icmp ult i32 %25, 2
  %ppc.0.v.i = select i1 %26, i32 3, i32 1
  %ppc.0.i = or i32 %ppc.0.v.i, %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %27 = tail call i32 @llvm.bswap.i32(i32 %ppc.0.i) #13
  %28 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %29, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 %27) #13, !srcloc !323
  %30 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %31, i32 260
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101.i) #13, !srcloc !324
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %34 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %identity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %35)
  %cmp7.i = icmp ult i32 %35, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056, i32 %35)
  %cmp10.not.i = icmp eq i32 %35, 1056
  %or.cond94.i = or i1 %cmp7.i, %cmp10.not.i
  br i1 %or.cond94.i, label %if.end18.if.end15.i_crit_edge, label %land.lhs.true11.i

if.end18.if.end15.i_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

land.lhs.true11.i:                                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features3.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 9
  %36 = ptrtoint ptr %minor_features3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %minor_features3.i, align 4
  %and.i = lshr i32 %37, 11
  %38 = and i32 %and.i, 16
  %39 = xor i32 %38, 16
  %40 = or i32 %39, %33
  br label %if.end15.i

if.end15.i:                                       ; preds = %land.lhs.true11.i, %if.end18.if.end15.i_crit_edge
  %pmc.0.i = phi i32 [ %33, %if.end18.if.end15.i_crit_edge ], [ %40, %land.lhs.true11.i ]
  %41 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %42)
  %cmp18.i = icmp ult i32 %42, 20480
  br i1 %cmp18.i, label %land.lhs.true19.i, label %if.end15.i.if.end29.i_crit_edge

if.end15.i.if.end29.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

land.lhs.true19.i:                                ; preds = %if.end15.i
  %minor_features0.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 6
  %43 = ptrtoint ptr %minor_features0.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %minor_features0.i, align 8
  %and21.i = and i32 %44, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true19.i.if.end29.i_crit_edge, label %land.lhs.true23.i

land.lhs.true19.i.if.end29.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

land.lhs.true23.i:                                ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #15
  %minor_features1.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 7
  %45 = ptrtoint ptr %minor_features1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %minor_features1.i, align 4
  %and25.i = lshr i32 %46, 7
  %47 = and i32 %and25.i, 4
  %48 = xor i32 %47, 4
  %49 = or i32 %48, %pmc.0.i
  br label %if.end29.i

if.end29.i:                                       ; preds = %land.lhs.true23.i, %land.lhs.true19.i.if.end29.i_crit_edge, %if.end15.i.if.end29.i_crit_edge
  %pmc.1.i = phi i32 [ %pmc.0.i, %land.lhs.true19.i.if.end29.i_crit_edge ], [ %pmc.0.i, %if.end15.i.if.end29.i_crit_edge ], [ %49, %land.lhs.true23.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21538, i32 %42)
  %cmp32.i = icmp ult i32 %42, 21538
  %or34.i = or i32 %pmc.1.i, 32768
  %spec.select96.i = select i1 %cmp32.i, i32 %or34.i, i32 %pmc.1.i
  %50 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %35, label %if.end29.i.etnaviv_gpu_enable_mlcg.exit_crit_edge [
    i32 16384, label %land.lhs.true39.i
    i32 8192, label %land.lhs.true47.i
    i32 28672, label %land.lhs.true57.i
  ]

if.end29.i.etnaviv_gpu_enable_mlcg.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_gpu_enable_mlcg.exit

land.lhs.true39.i:                                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21026, i32 %42)
  %cmp42.i = icmp eq i32 %42, 21026
  br i1 %cmp42.i, label %land.lhs.true39.i.if.then51.i_crit_edge, label %land.lhs.true39.i.etnaviv_gpu_enable_mlcg.exit_crit_edge

land.lhs.true39.i.etnaviv_gpu_enable_mlcg.exit_crit_edge: ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_gpu_enable_mlcg.exit

land.lhs.true39.i.if.then51.i_crit_edge:          ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51.i

land.lhs.true47.i:                                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20744, i32 %42)
  %cmp50.i = icmp eq i32 %42, 20744
  br i1 %cmp50.i, label %land.lhs.true47.i.if.then51.i_crit_edge, label %land.lhs.true47.i.etnaviv_gpu_enable_mlcg.exit_crit_edge

land.lhs.true47.i.etnaviv_gpu_enable_mlcg.exit_crit_edge: ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_gpu_enable_mlcg.exit

land.lhs.true47.i.if.then51.i_crit_edge:          ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51.i

if.then51.i:                                      ; preds = %land.lhs.true47.i.if.then51.i_crit_edge, %land.lhs.true39.i.if.then51.i_crit_edge
  %or52.i = or i32 %spec.select96.i, 128
  br label %etnaviv_gpu_enable_mlcg.exit

land.lhs.true57.i:                                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 25090, i32 %42)
  %cmp60.i = icmp eq i32 %42, 25090
  %or62.i = or i32 %spec.select96.i, 224
  %spec.select97.i = select i1 %cmp60.i, i32 %or62.i, i32 %spec.select96.i
  br label %etnaviv_gpu_enable_mlcg.exit

etnaviv_gpu_enable_mlcg.exit:                     ; preds = %land.lhs.true57.i, %if.then51.i, %land.lhs.true47.i.etnaviv_gpu_enable_mlcg.exit_crit_edge, %land.lhs.true39.i.etnaviv_gpu_enable_mlcg.exit_crit_edge, %if.end29.i.etnaviv_gpu_enable_mlcg.exit_crit_edge
  %pmc.4.i = phi i32 [ %spec.select97.i, %land.lhs.true57.i ], [ %spec.select96.i, %land.lhs.true47.i.etnaviv_gpu_enable_mlcg.exit_crit_edge ], [ %or52.i, %if.then51.i ], [ %spec.select96.i, %land.lhs.true39.i.etnaviv_gpu_enable_mlcg.exit_crit_edge ], [ %spec.select96.i, %if.end29.i.etnaviv_gpu_enable_mlcg.exit_crit_edge ]
  %or65.i = or i32 %pmc.4.i, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %51 = tail call i32 @llvm.bswap.i32(i32 %or65.i) #13
  %52 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %53, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103.i, i32 %51) #13, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %54 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 2228224) #13, !srcloc !323
  %56 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %identity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %57)
  %cmp21 = icmp eq i32 %57, 8192
  br i1 %cmp21, label %land.lhs.true22, label %etnaviv_gpu_enable_mlcg.exit.if.end30_crit_edge

etnaviv_gpu_enable_mlcg.exit.if.end30_crit_edge:  ; preds = %etnaviv_gpu_enable_mlcg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

land.lhs.true22:                                  ; preds = %etnaviv_gpu_enable_mlcg.exit
  %58 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20744, i32 %59)
  %cmp25 = icmp eq i32 %59, 20744
  br i1 %cmp25, label %if.then26, label %land.lhs.true22.if.end30_crit_edge

land.lhs.true22.if.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then26:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %61, i32 1152
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %63 = and i32 %62, 16777215
  %64 = or i32 %63, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %65 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %66, i32 1152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %64) #13, !srcloc !323
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %land.lhs.true22.if.end30_crit_edge, %etnaviv_gpu_enable_mlcg.exit.if.end30_crit_edge
  %sec_mode = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 5
  %67 = ptrtoint ptr %sec_mode to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp31 = icmp eq i32 %68, 1
  br i1 %cmp31, label %if.then32, label %if.end30.if.end35_crit_edge

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %70, i32 936
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %72 = or i32 %71, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %73 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %74, i32 936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %72) #13, !srcloc !323
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end30.if.end35_crit_edge
  %75 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %identity, align 8
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %76, label %if.end35.if.end27.ithread-pre-split_crit_edge [
    i32 16384, label %land.lhs.true.i
    i32 4096, label %land.lhs.true13.i
  ]

if.end35.if.end27.ithread-pre-split_crit_edge:    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.ithread-pre-split

land.lhs.true.i:                                  ; preds = %if.end35
  %78 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %revision.i, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %79, label %land.lhs.true.i.if.end27.i_crit_edge [
    i32 21000, label %land.lhs.true.i.if.end27.ithread-pre-split_crit_edge
    i32 21026, label %land.lhs.true.i.if.end27.ithread-pre-split_crit_edge79
  ]

land.lhs.true.i.if.end27.ithread-pre-split_crit_edge79: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.ithread-pre-split

land.lhs.true.i.if.end27.ithread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.ithread-pre-split

land.lhs.true.i.if.end27.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

land.lhs.true13.i:                                ; preds = %if.end35
  %81 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %revision.i, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %82, label %land.lhs.true13.i.if.end27.i_crit_edge [
    i32 20537, label %land.lhs.true13.i.if.end27.ithread-pre-split_crit_edge
    i32 20544, label %land.lhs.true13.i.if.end27.ithread-pre-split_crit_edge80
  ]

land.lhs.true13.i.if.end27.ithread-pre-split_crit_edge80: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.ithread-pre-split

land.lhs.true13.i.if.end27.ithread-pre-split_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.ithread-pre-split

land.lhs.true13.i.if.end27.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.end27.ithread-pre-split:                       ; preds = %land.lhs.true13.i.if.end27.ithread-pre-split_crit_edge, %land.lhs.true13.i.if.end27.ithread-pre-split_crit_edge80, %land.lhs.true.i.if.end27.ithread-pre-split_crit_edge, %land.lhs.true.i.if.end27.ithread-pre-split_crit_edge79, %if.end35.if.end27.ithread-pre-split_crit_edge
  %pulse_eater.1.i.ph = phi i32 [ 22612096, %if.end35.if.end27.ithread-pre-split_crit_edge ], [ 31000704, %land.lhs.true.i.if.end27.ithread-pre-split_crit_edge ], [ 22677632, %land.lhs.true13.i.if.end27.ithread-pre-split_crit_edge ], [ 31000704, %land.lhs.true.i.if.end27.ithread-pre-split_crit_edge79 ], [ 22677632, %land.lhs.true13.i.if.end27.ithread-pre-split_crit_edge80 ]
  %84 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr = load i32, ptr %revision.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end27.ithread-pre-split, %land.lhs.true13.i.if.end27.i_crit_edge, %land.lhs.true.i.if.end27.i_crit_edge
  %85 = phi i32 [ %.pr, %if.end27.ithread-pre-split ], [ %79, %land.lhs.true.i.if.end27.i_crit_edge ], [ %82, %land.lhs.true13.i.if.end27.i_crit_edge ]
  %pulse_eater.1.i = phi i32 [ %pulse_eater.1.i.ph, %if.end27.ithread-pre-split ], [ 22612096, %land.lhs.true.i.if.end27.i_crit_edge ], [ 22612096, %land.lhs.true13.i.if.end27.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21536, i32 %85)
  %cmp30.i = icmp ugt i32 %85, 21536
  br i1 %cmp30.i, label %land.lhs.true31.i, label %if.end27.i.etnaviv_gpu_setup_pulse_eater.exit_crit_edge

if.end27.i.etnaviv_gpu_setup_pulse_eater.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_gpu_setup_pulse_eater.exit

land.lhs.true31.i:                                ; preds = %if.end27.i
  %features.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 5
  %86 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %features.i, align 4
  %and33.i = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool.not.i, label %land.lhs.true31.i.etnaviv_gpu_setup_pulse_eater.exit_crit_edge, label %if.then34.i

land.lhs.true31.i.etnaviv_gpu_setup_pulse_eater.exit_crit_edge: ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_gpu_setup_pulse_eater.exit

if.then34.i:                                      ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %89, i32 268
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i76) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %91 = or i32 %90, 1024
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #13
  br label %etnaviv_gpu_setup_pulse_eater.exit

etnaviv_gpu_setup_pulse_eater.exit:               ; preds = %if.then34.i, %land.lhs.true31.i.etnaviv_gpu_setup_pulse_eater.exit_crit_edge, %if.end27.i.etnaviv_gpu_setup_pulse_eater.exit_crit_edge
  %pulse_eater.2.i = phi i32 [ %92, %if.then34.i ], [ %pulse_eater.1.i, %land.lhs.true31.i.etnaviv_gpu_setup_pulse_eater.exit_crit_edge ], [ %pulse_eater.1.i, %if.end27.i.etnaviv_gpu_setup_pulse_eater.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %93 = tail call i32 @llvm.bswap.i32(i32 %pulse_eater.2.i) #13
  %94 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %95, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %93) #13, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %96 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %97, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 -1) #13, !srcloc !323
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gpu_debugfs(ptr noundef readonly %gpu, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i) #13
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %dev_name.exit.pm_put_crit_edge, label %if.end

dev_name.exit.pm_put_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %pm_put

if.end:                                           ; preds = %dev_name.exit
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1640
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !324
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i305 = getelementptr i8, ptr %13, i32 1644
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i305) #13, !srcloc !324
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i307 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i307) #13, !srcloc !324
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i309 = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i309) #13, !srcloc !324
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 1636
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !324
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %28 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %29, i32 1632
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #13, !srcloc !324
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i310.for.body.i_crit_edge, %if.end
  %i.038.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i310.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %33, i32 1636
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %35 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %36, i32 1632
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %34)
  %cmp13.not.i = icmp eq i32 %26, %34
  br i1 %cmp13.not.i, label %if.end.i310, label %for.body.i.verify_dma.exit_crit_edge

for.body.i.verify_dma.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = tail call i32 @llvm.bswap.i32(i32 %34) #13
  br label %verify_dma.exit

if.end.i310:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %37)
  %cmp18.not.i = icmp ne i32 %30, %37
  %inc.i = add nuw nsw i32 %i.038.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 500
  %or.cond.i = select i1 %cmp18.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %if.end.i310.verify_dma.exit_crit_edge, label %if.end.i310.for.body.i_crit_edge

if.end.i310.for.body.i_crit_edge:                 ; preds = %if.end.i310
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.i310.verify_dma.exit_crit_edge:            ; preds = %if.end.i310
  call void @__sanitizer_cov_trace_pc() #15
  br label %verify_dma.exit

verify_dma.exit:                                  ; preds = %if.end.i310.verify_dma.exit_crit_edge, %for.body.i.verify_dma.exit_crit_edge
  %.pre-phi = phi i32 [ %.pre, %for.body.i.verify_dma.exit_crit_edge ], [ %27, %if.end.i310.verify_dma.exit_crit_edge ]
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.24) #13
  %identity = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4
  %39 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %identity, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef %40) #13
  %revision = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %revision, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, i32 noundef %42) #13
  %product_id = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 2
  %43 = ptrtoint ptr %product_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %product_id, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef %44) #13
  %customer_id = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 3
  %45 = ptrtoint ptr %customer_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %customer_id, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i32 noundef %46) #13
  %eco_id = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 4
  %47 = ptrtoint ptr %eco_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %eco_id, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef %48) #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.30) #13
  %features = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 5
  %49 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %features, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %50) #13
  %minor_features0 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 6
  %51 = ptrtoint ptr %minor_features0 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %minor_features0, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %52) #13
  %minor_features1 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 7
  %53 = ptrtoint ptr %minor_features1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %minor_features1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %54) #13
  %minor_features2 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 8
  %55 = ptrtoint ptr %minor_features2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %minor_features2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef %56) #13
  %minor_features3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 9
  %57 = ptrtoint ptr %minor_features3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %minor_features3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef %58) #13
  %minor_features4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 10
  %59 = ptrtoint ptr %minor_features4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %minor_features4, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %60) #13
  %minor_features5 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 11
  %61 = ptrtoint ptr %minor_features5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %minor_features5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, i32 noundef %62) #13
  %minor_features6 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 12
  %63 = ptrtoint ptr %minor_features6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %minor_features6, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %64) #13
  %minor_features7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 13
  %65 = ptrtoint ptr %minor_features7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %minor_features7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %66) #13
  %minor_features8 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 14
  %67 = ptrtoint ptr %minor_features8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %minor_features8, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %68) #13
  %minor_features9 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 15
  %69 = ptrtoint ptr %minor_features9 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %minor_features9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, i32 noundef %70) #13
  %minor_features10 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 16
  %71 = ptrtoint ptr %minor_features10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %minor_features10, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %72) #13
  %minor_features11 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 17
  %73 = ptrtoint ptr %minor_features11 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %minor_features11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %74) #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.44) #13
  %stream_count = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 18
  %75 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %stream_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, i32 noundef %76) #13
  %register_max = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 19
  %77 = ptrtoint ptr %register_max to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %register_max, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.46, i32 noundef %78) #13
  %thread_count = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 20
  %79 = ptrtoint ptr %thread_count to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %thread_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, i32 noundef %80) #13
  %vertex_cache_size = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 22
  %81 = ptrtoint ptr %vertex_cache_size to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vertex_cache_size, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, i32 noundef %82) #13
  %shader_core_count = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 21
  %83 = ptrtoint ptr %shader_core_count to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %shader_core_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.49, i32 noundef %84) #13
  %pixel_pipes = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 24
  %85 = ptrtoint ptr %pixel_pipes to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pixel_pipes, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %86) #13
  %vertex_output_buffer_size = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 23
  %87 = ptrtoint ptr %vertex_output_buffer_size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %vertex_output_buffer_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %88) #13
  %buffer_size = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 27
  %89 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %buffer_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52, i32 noundef %90) #13
  %instruction_count = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 25
  %91 = ptrtoint ptr %instruction_count to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %instruction_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.53, i32 noundef %92) #13
  %num_constants = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 26
  %93 = ptrtoint ptr %num_constants to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_constants, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.54, i32 noundef %94) #13
  %varyings_count = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 28
  %95 = ptrtoint ptr %varyings_count to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %varyings_count, align 8
  %conv = zext i8 %96 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.55, i32 noundef %conv) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, i32 noundef %19) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.57, i32 noundef %23) #13
  %idle_mask = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 16
  %97 = ptrtoint ptr %idle_mask to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %idle_mask, align 4
  %neg = and i32 %98, 2147483647
  %and = xor i32 %neg, 2147483647
  %or = or i32 %and, %23
  %and35 = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36 = icmp eq i32 %and35, 0
  br i1 %cmp36, label %if.then38, label %verify_dma.exit.if.end39_crit_edge

verify_dma.exit.if.end39_crit_edge:               ; preds = %verify_dma.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then38:                                        ; preds = %verify_dma.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.58) #13
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %verify_dma.exit.if.end39_crit_edge
  %and40 = and i32 %or, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %cmp41 = icmp eq i32 %and40, 0
  br i1 %cmp41, label %if.then43, label %if.end39.if.end44_crit_edge

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.59) #13
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end39.if.end44_crit_edge
  %and45 = and i32 %or, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %if.then48, label %if.end44.if.end49_crit_edge

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.60) #13
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44.if.end49_crit_edge
  %and50 = and i32 %or, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %cmp51 = icmp eq i32 %and50, 0
  br i1 %cmp51, label %if.then53, label %if.end49.if.end54_crit_edge

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.61) #13
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end49.if.end54_crit_edge
  %and55 = and i32 %or, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %cmp56 = icmp eq i32 %and55, 0
  br i1 %cmp56, label %if.then58, label %if.end54.if.end59_crit_edge

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.62) #13
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54.if.end59_crit_edge
  %and60 = and i32 %or, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %cmp61 = icmp eq i32 %and60, 0
  br i1 %cmp61, label %if.then63, label %if.end59.if.end64_crit_edge

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.63) #13
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end59.if.end64_crit_edge
  %and65 = and i32 %or, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %cmp66 = icmp eq i32 %and65, 0
  br i1 %cmp66, label %if.then68, label %if.end64.if.end69_crit_edge

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.64) #13
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end64.if.end69_crit_edge
  %and70 = and i32 %or, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %cmp71 = icmp eq i32 %and70, 0
  br i1 %cmp71, label %if.then73, label %if.end69.if.end74_crit_edge

if.end69.if.end74_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.65) #13
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end69.if.end74_crit_edge
  %and75 = and i32 %or, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %cmp76 = icmp eq i32 %and75, 0
  br i1 %cmp76, label %if.then78, label %if.end74.if.end79_crit_edge

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.66) #13
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end74.if.end79_crit_edge
  %and80 = and i32 %or, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %cmp81 = icmp eq i32 %and80, 0
  br i1 %cmp81, label %if.then83, label %if.end79.if.end84_crit_edge

if.end79.if.end84_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.67) #13
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end79.if.end84_crit_edge
  %and85 = and i32 %or, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %cmp86 = icmp eq i32 %and85, 0
  br i1 %cmp86, label %if.then88, label %if.end84.if.end89_crit_edge

if.end84.if.end89_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.68) #13
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end84.if.end89_crit_edge
  %and90 = and i32 %or, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %cmp91 = icmp eq i32 %and90, 0
  br i1 %cmp91, label %if.then93, label %if.end89.if.end94_crit_edge

if.end89.if.end94_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.69) #13
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end89.if.end94_crit_edge
  %and95 = and i32 %or, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %cmp96 = icmp eq i32 %and95, 0
  br i1 %cmp96, label %if.then98, label %if.end94.if.end99_crit_edge

if.end94.if.end99_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.70) #13
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end94.if.end99_crit_edge
  %and100 = and i32 %or, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %cmp101 = icmp eq i32 %and100, 0
  br i1 %cmp101, label %if.then103, label %if.end99.if.end104_crit_edge

if.end99.if.end104_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.71) #13
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.end99.if.end104_crit_edge
  %and105 = and i32 %or, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %cmp106 = icmp eq i32 %and105, 0
  br i1 %cmp106, label %if.then108, label %if.end104.if.end109_crit_edge

if.end104.if.end109_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.72) #13
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end104.if.end109_crit_edge
  %and110 = and i32 %or, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %cmp111 = icmp eq i32 %and110, 0
  br i1 %cmp111, label %if.then113, label %if.end109.if.end114_crit_edge

if.end109.if.end114_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

if.then113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.73) #13
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.end109.if.end114_crit_edge
  %and115 = and i32 %or, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %cmp116 = icmp eq i32 %and115, 0
  br i1 %cmp116, label %if.then118, label %if.end114.if.end119_crit_edge

if.end114.if.end119_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119

if.then118:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.74) #13
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.end114.if.end119_crit_edge
  %and120 = and i32 %or, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %cmp121 = icmp eq i32 %and120, 0
  br i1 %cmp121, label %if.then123, label %if.end119.if.end124_crit_edge

if.end119.if.end124_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

if.then123:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.75) #13
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end119.if.end124_crit_edge
  %and125 = and i32 %or, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %cmp126 = icmp eq i32 %and125, 0
  br i1 %cmp126, label %if.then128, label %if.end124.if.end129_crit_edge

if.end124.if.end129_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end129

if.then128:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.76) #13
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.end124.if.end129_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %tobool.not = icmp sgt i32 %23, -1
  br i1 %tobool.not, label %if.end129.if.end132_crit_edge, label %if.then131

if.end129.if.end132_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

if.then131:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.77) #13
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %if.end129.if.end132_crit_edge
  %99 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %features, align 4
  %and135 = and i32 %100, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.end132.if.end141_crit_edge, label %if.then137

if.end132.if.end141_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.then137:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i312 = getelementptr i8, ptr %102, i32 1084
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i312) #13, !srcloc !324
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %105 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i314 = getelementptr i8, ptr %106, i32 1088
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i314) #13, !srcloc !324
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %109 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i316 = getelementptr i8, ptr %110, i32 1092
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i316) #13, !srcloc !324
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.78) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.79, i32 noundef %104) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.80, i32 noundef %108) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.81, i32 noundef %112) #13
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %if.end132.if.end141_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.82) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %37)
  %cmp149 = icmp eq i32 %30, %37
  %.str.83..str.84 = select i1 %cmp149, ptr @.str.83, ptr @.str.84
  %.str.84.sink = select i1 %cmp13.not.i, ptr %.str.83..str.84, ptr @.str.85
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.84.sink) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.86, i32 noundef %27) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.87, i32 noundef %.pre-phi) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.88, i32 noundef %31) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.89, i32 noundef %38) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.90, i32 noundef %11, i32 noundef %15) #13
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 8
  %call.i317 = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i = getelementptr inbounds %struct.device, ptr %114, i32 0, i32 12, i32 22
  %115 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store volatile i64 %call.i317, ptr %last_busy.i, align 8
  br label %pm_put

pm_put:                                           ; preds = %if.end141, %dev_name.exit.pm_put_crit_edge
  %ret.0 = phi i32 [ %call.i, %dev_name.exit.pm_put_crit_edge ], [ 0, %if.end141 ]
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 8
  %call.i318 = tail call i32 @__pm_runtime_suspend(ptr noundef %117, i32 noundef 13) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_gpu_recover_hang(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.91) #16
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.pm_put_crit_edge, label %if.end

entry.pm_put_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pm_put

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %call2 = tail call fastcc i32 @etnaviv_hw_reset(ptr noundef %gpu)
  %event_spinlock = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %event_spinlock) #13
  %event_bitmap = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 12
  %call3 = tail call i32 @_find_next_bit_be(ptr noundef %event_bitmap, i32 noundef 30, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %call3)
  %cmp431 = icmp ult i32 %call3, 30
  br i1 %cmp431, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %event_free = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ %call3, %for.body.lr.ph ], [ %call7, %for.body.for.body_crit_edge ]
  tail call void @complete(ptr noundef %event_free) #13
  %add = add nuw nsw i32 %i.032, 1
  %call7 = tail call i32 @_find_next_bit_be(ptr noundef %event_bitmap, i32 noundef 30, i32 noundef %add) #13
  %cmp4 = icmp ult i32 %call7, 30
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %4 = ptrtoint ptr %event_bitmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %event_bitmap, align 4
  tail call void @_raw_spin_unlock(ptr noundef %event_spinlock) #13
  tail call fastcc void @etnaviv_gpu_hw_init(ptr noundef %gpu)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %call.i29 = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i29, ptr %last_busy.i, align 8
  br label %pm_put

pm_put:                                           ; preds = %for.end, %entry.pm_put_crit_edge
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %call.i30 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gpu_wait_fence_interruptible(ptr noundef %gpu, i32 noundef %id, ptr noundef readonly %timeout) local_unnamed_addr #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  %tmp.i = alloca %struct.timespec64, align 8
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !312) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !327
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.108, i32 noundef 696, ptr noundef nonnull @.str.109) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %fence_idr = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 18
  %call = tail call ptr @idr_find(ptr noundef %fence_idr, i32 noundef %id) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.then
  %6 = phi i32 [ %5, %if.then ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #13
  %8 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %9, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #13, !srcloc !328
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !329

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.dma_fence_get_rcu.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !329

if.end4.i.i.i.i.i.dma_fence_get_rcu.exit_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_fence_get_rcu.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #13
  br label %dma_fence_get_rcu.exit

dma_fence_get_rcu.exit:                           ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.dma_fence_get_rcu.exit_crit_edge
  %14 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #13
  %.fence.i = select i1 %tobool12.i.i.i.i.not.i, ptr null, ptr %call
  br label %if.end

if.end:                                           ; preds = %dma_fence_get_rcu.exit, %rcu_read_lock.exit.if.end_crit_edge
  %fence.0 = phi ptr [ %.fence.i, %dma_fence_get_rcu.exit ], [ null, %rcu_read_lock.exit.if.end_crit_edge ]
  %call.i26 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i26, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i29

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i29:                                ; preds = %if.end
  %call1.i27 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.108, i32 noundef 724, ptr noundef nonnull @.str.110) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !330
  %16 = call i32 @llvm.read_register.i32(metadata !312) #13
  %and.i.i.i.i.i33 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i34, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %tobool2.not = icmp eq ptr %fence.0, null
  br i1 %tobool2.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.end4

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %rcu_read_unlock.exit
  %tobool5.not = icmp eq ptr %timeout, null
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %fence.0, i32 0, i32 5
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i35 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i35, label %if.end.i, label %if.then6.if.then.i44_crit_edge

if.then6.if.then.i44_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i44

if.end.i:                                         ; preds = %if.then6
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence.0, i32 0, i32 1
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %25, null
  br i1 %tobool1.not.i, label %if.end.i.if.then.i44_crit_edge, label %land.lhs.true.i36

if.end.i.if.then.i44_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i44

land.lhs.true.i36:                                ; preds = %if.end.i
  %call4.i = call zeroext i1 %25(ptr noundef nonnull %fence.0) #13
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i36.if.then.i44_crit_edge

land.lhs.true.i36.if.then.i44_crit_edge:          ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i44

if.then5.i:                                       ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i = call i32 @dma_fence_signal(ptr noundef nonnull %fence.0) #13
  br label %if.then.i44

if.else:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #13
  %26 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %27 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %timeout, align 8
  %tv_nsec2.i = getelementptr inbounds %struct.drm_etnaviv_timespec, ptr %timeout, i32 0, i32 1
  %29 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tv_nsec2.i, align 8
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #13
  %31 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %32)
  %cmp.i.i = icmp slt i64 %28, %32
  br i1 %cmp.i.i, label %if.else.etnaviv_timeout_to_jiffies.exit_crit_edge, label %if.end.i.i

if.else.etnaviv_timeout_to_jiffies.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_timeout_to_jiffies.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %32)
  %cmp4.i.i = icmp sgt i64 %28, %32
  %.pre.i = trunc i64 %30 to i32
  br i1 %cmp4.i.i, label %if.end.i.i.if.end.i38_crit_edge, label %timespec64_compare.exit.i

if.end.i.i.if.end.i38_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i38

timespec64_compare.exit.i:                        ; preds = %if.end.i.i
  %tv_nsec7.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %33 = ptrtoint ptr %tv_nsec7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tv_nsec7.i.i, align 8
  %sub.i.i = sub i32 %.pre.i, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i = icmp slt i32 %sub.i.i, 1
  br i1 %cmp.i, label %timespec64_compare.exit.i.etnaviv_timeout_to_jiffies.exit_crit_edge, label %timespec64_compare.exit.i.if.end.i38_crit_edge

timespec64_compare.exit.i.if.end.i38_crit_edge:   ; preds = %timespec64_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i38

timespec64_compare.exit.i.etnaviv_timeout_to_jiffies.exit_crit_edge: ; preds = %timespec64_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_timeout_to_jiffies.exit

if.end.i38:                                       ; preds = %timespec64_compare.exit.i.if.end.i38_crit_edge, %if.end.i.i.if.end.i38_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #13
  %.fca.1.gep9.i = getelementptr inbounds [2 x i64], ptr %ts.i, i32 0, i32 1
  %35 = ptrtoint ptr %.fca.1.gep9.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %.fca.1.load10.i = load i64, ptr %.fca.1.gep9.i, align 8
  %rhs.sroa.2.8.extract.shift.i.i = lshr i64 %.fca.1.load10.i, 32
  %rhs.sroa.2.8.extract.trunc.i.i = trunc i64 %rhs.sroa.2.8.extract.shift.i.i to i32
  %36 = call ptr @memset(ptr %tmp.i, i32 255, i32 16)
  %sub.i13.i = sub i64 %28, %32
  %sub3.i.i = sub i32 %.pre.i, %rhs.sroa.2.8.extract.trunc.i.i
  %conv.i.i = sext i32 %sub3.i.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp.i, i64 noundef %sub.i13.i, i64 noundef %conv.i.i) #13
  %37 = call ptr @memcpy(ptr %ts.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #13
  %call4.i37 = call i32 @timespec64_to_jiffies(ptr noundef nonnull %ts.i) #13
  br label %etnaviv_timeout_to_jiffies.exit

etnaviv_timeout_to_jiffies.exit:                  ; preds = %if.end.i38, %timespec64_compare.exit.i.etnaviv_timeout_to_jiffies.exit_crit_edge, %if.else.etnaviv_timeout_to_jiffies.exit_crit_edge
  %retval.0.i39 = phi i32 [ %call4.i37, %if.end.i38 ], [ 0, %timespec64_compare.exit.i.etnaviv_timeout_to_jiffies.exit_crit_edge ], [ 0, %if.else.etnaviv_timeout_to_jiffies.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #13
  %call9 = call i32 @dma_fence_wait_timeout(ptr noundef nonnull %fence.0, i1 noundef zeroext true, i32 noundef %retval.0.i39) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp eq i32 %call9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call9)
  %cmp12.not = icmp eq i32 %call9, -512
  %spec.store.select = select i1 %cmp12.not, i32 -512, i32 0
  %ret.0 = select i1 %cmp, i32 -110, i32 %spec.store.select
  br label %if.then.i44

if.then.i44:                                      ; preds = %etnaviv_timeout_to_jiffies.exit, %if.then5.i, %land.lhs.true.i36.if.then.i44_crit_edge, %if.end.i.if.then.i44_crit_edge, %if.then6.if.then.i44_crit_edge
  %ret.1 = phi i32 [ %ret.0, %etnaviv_timeout_to_jiffies.exit ], [ -16, %if.end.i.if.then.i44_crit_edge ], [ -16, %land.lhs.true.i36.if.then.i44_crit_edge ], [ 0, %if.then5.i ], [ 0, %if.then6.if.then.i44_crit_edge ]
  %refcount.i41 = getelementptr inbounds %struct.dma_fence, ptr %fence.0, i32 0, i32 6
  %call.i.i.i.i.i.i.i42 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i41, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !331
  call void @llvm.prefetch.p0(ptr %refcount.i41, i32 1, i32 3, i32 1) #13
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i41, ptr %refcount.i41, i32 1, ptr elementtype(i32) %refcount.i41) #13, !srcloc !332
  %asmresult.i.i.i.i.i.i.i.i43 = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i43)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i43, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i43)
  %.not.i.i.i.i.i45 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i43, 0
  br i1 %.not.i.i.i.i.i45, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i46, !prof !329

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i.i46:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount.i41, i32 noundef 3) #13
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !333
  call void @dma_fence_release(ptr noundef %refcount.i41) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i46, %if.end5.i.i.i.i.i.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit.cleanup_crit_edge ], [ %ret.1, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.1, %if.then10.i.i.i.i.i46 ], [ %ret.1, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gpu_wait_obj_inactive(ptr noundef %gpu, ptr noundef %etnaviv_obj, ptr noundef readonly %timeout) local_unnamed_addr #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  %tmp.i = alloca %struct.timespec64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timeout, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %gpu_active.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %gpu_active.i, i32 noundef 4) #13
  %0 = ptrtoint ptr %gpu_active.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %gpu_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 0
  %cond = select i1 %cmp.i.not, i32 0, i32 -16
  br label %cleanup49

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #13
  %2 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %timeout, align 8
  %tv_nsec2.i = getelementptr inbounds %struct.drm_etnaviv_timespec, ptr %timeout, i32 0, i32 1
  %5 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tv_nsec2.i, align 8
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #13
  %7 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %8)
  %cmp.i.i = icmp slt i64 %4, %8
  br i1 %cmp.i.i, label %if.end.etnaviv_timeout_to_jiffies.exit_crit_edge, label %if.end.i.i

if.end.etnaviv_timeout_to_jiffies.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_timeout_to_jiffies.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %8)
  %cmp4.i.i = icmp sgt i64 %4, %8
  %.pre.i = trunc i64 %6 to i32
  br i1 %cmp4.i.i, label %if.end.i.i.if.end.i_crit_edge, label %timespec64_compare.exit.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

timespec64_compare.exit.i:                        ; preds = %if.end.i.i
  %tv_nsec7.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %9 = ptrtoint ptr %tv_nsec7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec7.i.i, align 8
  %sub.i.i = sub i32 %.pre.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i66 = icmp slt i32 %sub.i.i, 1
  br i1 %cmp.i66, label %timespec64_compare.exit.i.etnaviv_timeout_to_jiffies.exit_crit_edge, label %timespec64_compare.exit.i.if.end.i_crit_edge

timespec64_compare.exit.i.if.end.i_crit_edge:     ; preds = %timespec64_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

timespec64_compare.exit.i.etnaviv_timeout_to_jiffies.exit_crit_edge: ; preds = %timespec64_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_timeout_to_jiffies.exit

if.end.i:                                         ; preds = %timespec64_compare.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #13
  %.fca.1.gep9.i = getelementptr inbounds [2 x i64], ptr %ts.i, i32 0, i32 1
  %11 = ptrtoint ptr %.fca.1.gep9.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %.fca.1.load10.i = load i64, ptr %.fca.1.gep9.i, align 8
  %rhs.sroa.2.8.extract.shift.i.i = lshr i64 %.fca.1.load10.i, 32
  %rhs.sroa.2.8.extract.trunc.i.i = trunc i64 %rhs.sroa.2.8.extract.shift.i.i to i32
  %12 = call ptr @memset(ptr %tmp.i, i32 255, i32 16)
  %sub.i13.i = sub i64 %4, %8
  %sub3.i.i = sub i32 %.pre.i, %rhs.sroa.2.8.extract.trunc.i.i
  %conv.i.i = sext i32 %sub3.i.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp.i, i64 noundef %sub.i13.i, i64 noundef %conv.i.i) #13
  %13 = call ptr @memcpy(ptr %ts.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #13
  %call4.i = call i32 @timespec64_to_jiffies(ptr noundef nonnull %ts.i) #13
  br label %etnaviv_timeout_to_jiffies.exit

etnaviv_timeout_to_jiffies.exit:                  ; preds = %if.end.i, %timespec64_compare.exit.i.etnaviv_timeout_to_jiffies.exit_crit_edge, %if.end.etnaviv_timeout_to_jiffies.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ 0, %timespec64_compare.exit.i.etnaviv_timeout_to_jiffies.exit_crit_edge ], [ 0, %if.end.etnaviv_timeout_to_jiffies.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #13
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1268) #13
  %gpu_active.i67 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 6
  %call.i.i.i68 = call zeroext i1 @__kasan_check_read(ptr noundef %gpu_active.i67, i32 noundef 4) #13
  %14 = ptrtoint ptr %gpu_active.i67 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %gpu_active.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i69.not = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool8.not = icmp eq i32 %retval.0.i, 0
  %16 = select i1 %cmp.i69.not, i1 %tobool8.not, i1 false
  %__ret.0 = select i1 %16, i32 1, i32 %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool12.not = icmp eq i32 %__ret.0, 0
  %17 = select i1 %cmp.i69.not, i1 true, i1 %tobool12.not
  br i1 %17, label %etnaviv_timeout_to_jiffies.exit.if.end43_crit_edge, label %if.then15

etnaviv_timeout_to_jiffies.exit.if.end43_crit_edge: ; preds = %etnaviv_timeout_to_jiffies.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then15:                                        ; preds = %etnaviv_timeout_to_jiffies.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %18 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %fence_event = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 21
  %call1783 = call i32 @prepare_to_wait_event(ptr noundef %fence_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %call.i.i.i7184 = call zeroext i1 @__kasan_check_read(ptr noundef %gpu_active.i67, i32 noundef 4) #13
  %19 = ptrtoint ptr %gpu_active.i67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %gpu_active.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i72.not85 = icmp eq i32 %20, 0
  %21 = select i1 %cmp.i72.not85, i1 %tobool8.not, i1 false
  %__ret16.187 = select i1 %21, i32 1, i32 %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.187)
  %tobool30.not88 = icmp eq i32 %__ret16.187, 0
  %22 = select i1 %cmp.i72.not85, i1 true, i1 %tobool30.not88
  br i1 %22, label %if.then15.for.end_crit_edge, label %if.then15.if.end36_crit_edge

if.then15.if.end36_crit_edge:                     ; preds = %if.then15
  br label %if.end36

if.then15.for.end_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end36:                                         ; preds = %cleanup.if.end36_crit_edge, %if.then15.if.end36_crit_edge
  %__ret16.190 = phi i32 [ %__ret16.1, %cleanup.if.end36_crit_edge ], [ %__ret16.187, %if.then15.if.end36_crit_edge ]
  %call1789 = phi i32 [ %call17, %cleanup.if.end36_crit_edge ], [ %call1783, %if.then15.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1789)
  %tobool37.not = icmp eq i32 %call1789, 0
  br i1 %tobool37.not, label %cleanup, label %if.end36.__out_crit_edge

if.end36.__out_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out

cleanup:                                          ; preds = %if.end36
  %call40 = call i32 @schedule_timeout(i32 noundef %__ret16.190) #13
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %fence_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %call.i.i.i71 = call zeroext i1 @__kasan_check_read(ptr noundef %gpu_active.i67, i32 noundef 4) #13
  %23 = ptrtoint ptr %gpu_active.i67 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %gpu_active.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i72.not = icmp eq i32 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool24.not = icmp eq i32 %call40, 0
  %25 = select i1 %cmp.i72.not, i1 %tobool24.not, i1 false
  %__ret16.1 = select i1 %25, i32 1, i32 %call40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1)
  %tobool30.not = icmp eq i32 %__ret16.1, 0
  %26 = select i1 %cmp.i72.not, i1 true, i1 %tobool30.not
  br i1 %26, label %cleanup.for.end_crit_edge, label %cleanup.if.end36_crit_edge

cleanup.if.end36_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then15.for.end_crit_edge
  %__ret16.1.lcssa = phi i32 [ %__ret16.187, %if.then15.for.end_crit_edge ], [ %__ret16.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %fence_event, ptr noundef nonnull %__wq_entry) #13
  br label %__out

__out:                                            ; preds = %for.end, %if.end36.__out_crit_edge
  %__ret16.275 = phi i32 [ %__ret16.1.lcssa, %for.end ], [ %call1789, %if.end36.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end43

if.end43:                                         ; preds = %__out, %etnaviv_timeout_to_jiffies.exit.if.end43_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %etnaviv_timeout_to_jiffies.exit.if.end43_crit_edge ], [ %__ret16.275, %__out ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp = icmp sgt i32 %__ret.1, 0
  br i1 %cmp, label %if.end43.cleanup49_crit_edge, label %if.else

if.end43.cleanup49_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup49

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %__ret.1)
  %cmp46 = icmp eq i32 %__ret.1, -512
  %. = select i1 %cmp46, i32 -512, i32 -110
  br label %cleanup49

cleanup49:                                        ; preds = %if.else, %if.end43.cleanup49_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end43.cleanup49_crit_edge ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @etnaviv_gpu_submit(ptr noundef %submit) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu1 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 3
  %0 = ptrtoint ptr %gpu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event) #13
  %2 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %event, align 4, !annotation !334
  %3 = getelementptr inbounds [3 x i32], ptr %event, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !334
  %5 = getelementptr inbounds [3 x i32], ptr %event, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !334
  %runtime_resumed = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 11
  %7 = ptrtoint ptr %runtime_resumed to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %runtime_resumed, align 4, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !336
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #13, !srcloc !337
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then2.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !338
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %runtime_resumed to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %runtime_resumed, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %nr_pmrs = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 14
  %15 = ptrtoint ptr %nr_pmrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_pmrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  %event_free.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 14
  %call1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %event_free.i, i32 noundef 10000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end5.cleanup.i_crit_edge, label %for.inc.i

if.end5.cleanup.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.body.i.2.cleanup.i_crit_edge, %for.body.i.1.cleanup.i_crit_edge, %if.end5.cleanup.i_crit_edge
  %exitcond58.not.i = phi i1 [ false, %for.body.i.2.cleanup.i_crit_edge ], [ true, %for.body.i.1.cleanup.i_crit_edge ], [ false, %if.end5.cleanup.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.111) #16
  br i1 %tobool.not.i, label %cleanup.i.if.then11_crit_edge, label %for.body17.i

cleanup.i.if.then11_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

for.inc.i:                                        ; preds = %if.end5
  br i1 %tobool6.not, label %for.inc.i.for.end.i_crit_edge, label %for.body.i.1

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.inc.i
  %call1.i.1 = tail call i32 @wait_for_completion_timeout(ptr noundef %event_free.i, i32 noundef %call1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool.not.i.1, label %for.body.i.1.cleanup.i_crit_edge, label %for.body.i.2

for.body.i.1.cleanup.i_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %call1.i.2 = tail call i32 @wait_for_completion_timeout(ptr noundef %event_free.i, i32 noundef %call1.i.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool.not.i.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool.not.i.2, label %for.body.i.2.cleanup.i_crit_edge, label %for.body.i.2.for.end.i_crit_edge

for.body.i.2.for.end.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.2.cleanup.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

for.end.i:                                        ; preds = %for.body.i.2.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge
  %event_spinlock.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %event_spinlock.i) #13
  %event_bitmap.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 12
  %call6.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %event_bitmap.i, i32 noundef 30) #13
  %19 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call6.i, ptr %event, align 4
  %arrayidx8.i = getelementptr %struct.etnaviv_gpu, ptr %1, i32 0, i32 13, i32 %call6.i
  %20 = call ptr @memset(ptr %arrayidx8.i, i32 0, i32 12)
  tail call void @_set_bit(i32 noundef %call6.i, ptr noundef %event_bitmap.i) #13
  br i1 %tobool6.not, label %for.end.i.if.end13_crit_edge, label %for.body5.i.1

for.end.i.if.end13_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

for.body5.i.1:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i.1 = tail call i32 @_find_first_zero_bit_be(ptr noundef %event_bitmap.i, i32 noundef 30) #13
  %arrayidx.i.1 = getelementptr inbounds i32, ptr %event, i32 1
  %21 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call6.i.1, ptr %arrayidx.i.1, align 4
  %arrayidx8.i.1 = getelementptr %struct.etnaviv_gpu, ptr %1, i32 0, i32 13, i32 %call6.i.1
  %22 = call ptr @memset(ptr %arrayidx8.i.1, i32 0, i32 12)
  tail call void @_set_bit(i32 noundef %call6.i.1, ptr noundef %event_bitmap.i) #13
  %call6.i.2 = tail call i32 @_find_first_zero_bit_be(ptr noundef %event_bitmap.i, i32 noundef 30) #13
  %arrayidx.i.2 = getelementptr inbounds i32, ptr %event, i32 2
  %23 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call6.i.2, ptr %arrayidx.i.2, align 4
  %arrayidx8.i.2 = getelementptr %struct.etnaviv_gpu, ptr %1, i32 0, i32 13, i32 %call6.i.2
  %24 = call ptr @memset(ptr %arrayidx8.i.2, i32 0, i32 12)
  tail call void @_set_bit(i32 noundef %call6.i.2, ptr noundef %event_bitmap.i) #13
  br label %if.end13

for.body17.i:                                     ; preds = %cleanup.i
  tail call void @complete(ptr noundef %event_free.i) #13
  br i1 %exitcond58.not.i, label %for.body17.i.if.then11_crit_edge, label %for.body17.i.1

for.body17.i.if.then11_crit_edge:                 ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

for.body17.i.1:                                   ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @complete(ptr noundef %event_free.i) #13
  br label %if.then11

if.then11:                                        ; preds = %for.body17.i.1, %for.body17.i.if.then11_crit_edge, %cleanup.i.if.then11_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.93) #13
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 8
  %usage_count.i110 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 12, i32 13
  %call.i.i.i111 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i110, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !336
  tail call void @llvm.prefetch.p0(ptr %usage_count.i110, i32 1, i32 3, i32 1) #13
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i110, ptr %usage_count.i110, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i110) #13, !srcloc !337
  %asmresult.i.i.i.i112 = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i112)
  %cmp.not.i.i.i.i113 = icmp eq i32 %asmresult.i.i.i.i112, 0
  br i1 %cmp.not.i.i.i.i113, label %if.then11.cleanup_crit_edge, label %do.end11.i.i.i.i114

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end11.i.i.i.i114:                              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !338
  br label %cleanup

if.end13:                                         ; preds = %for.body5.i.1, %for.end.i.if.end13_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %event_spinlock.i) #13
  %lock = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i116 = icmp eq i32 %28, 0
  br i1 %tobool.not.i116, label %if.end13.if.end.i_crit_edge, label %land.rhs.i

if.end13.if.end.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end13
  %dep_map.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !339

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1128, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end13.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 56) #17
  %tobool25.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool25.not.i, label %if.end.i.for.cond.preheader_crit_edge, label %etnaviv_gpu_fence_alloc.exit

if.end.i.for.cond.preheader_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

etnaviv_gpu_fence_alloc.exit:                     ; preds = %if.end.i
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %1, ptr %call7.i.i.i, align 8
  %base.i = getelementptr inbounds %struct.etnaviv_fence, ptr %call7.i.i.i, i32 0, i32 1
  %fence_spinlock.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 23
  %fence_context.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 22
  %31 = ptrtoint ptr %fence_context.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %fence_context.i, align 8
  %next_fence.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 19
  %33 = ptrtoint ptr %next_fence.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %next_fence.i, align 8
  %inc.i117 = add i32 %34, 1
  store i32 %inc.i117, ptr %next_fence.i, align 8
  %conv.i = zext i32 %inc.i117 to i64
  tail call void @dma_fence_init(ptr noundef %base.i, ptr noundef nonnull @etnaviv_fence_ops, ptr noundef %fence_spinlock.i, i64 noundef %32, i64 noundef %conv.i) #13
  %tobool15.not = icmp eq ptr %base.i, null
  br i1 %tobool15.not, label %etnaviv_gpu_fence_alloc.exit.for.cond.preheader_crit_edge, label %if.end18

etnaviv_gpu_fence_alloc.exit.for.cond.preheader_crit_edge: ; preds = %etnaviv_gpu_fence_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %etnaviv_gpu_fence_alloc.exit.for.cond.preheader_crit_edge, %if.end.i.for.cond.preheader_crit_edge
  %dev.i122 = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %event, align 4
  %div3.i.i = lshr i32 %36, 5
  %arrayidx.i.i = getelementptr i32, ptr %event_bitmap.i, i32 %div3.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %36, 31
  %39 = shl nuw i32 1, %and.i.i
  %40 = and i32 %39, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i121 = icmp eq i32 %40, 0
  br i1 %tobool.not.i121, label %do.end.i123, label %if.else.i

do.end.i123:                                      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %dev.i122 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i122, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.113, i32 noundef %36) #16
  br label %event_free.exit

if.else.i:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef %36, ptr noundef %event_bitmap.i) #13
  tail call void @complete(ptr noundef %event_free.i) #13
  br label %event_free.exit

event_free.exit:                                  ; preds = %if.else.i, %do.end.i123
  br i1 %tobool6.not, label %event_free.exit.out_unlock_crit_edge, label %for.body.1

event_free.exit.out_unlock_crit_edge:             ; preds = %event_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

for.body.1:                                       ; preds = %event_free.exit
  %arrayidx.1 = getelementptr inbounds [3 x i32], ptr %event, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.1, align 4
  %div3.i.i.1 = lshr i32 %44, 5
  %arrayidx.i.i.1 = getelementptr i32, ptr %event_bitmap.i, i32 %div3.i.i.1
  %45 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i.i.1, align 4
  %and.i.i.1 = and i32 %44, 31
  %47 = shl nuw i32 1, %and.i.i.1
  %48 = and i32 %47, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i121.1 = icmp eq i32 %48, 0
  br i1 %tobool.not.i121.1, label %do.end.i123.1, label %if.else.i.1

if.else.i.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef %44, ptr noundef %event_bitmap.i) #13
  tail call void @complete(ptr noundef %event_free.i) #13
  br label %for.body.2

do.end.i123.1:                                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %dev.i122 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i122, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.113, i32 noundef %44) #16
  br label %for.body.2

for.body.2:                                       ; preds = %do.end.i123.1, %if.else.i.1
  %arrayidx.2 = getelementptr inbounds [3 x i32], ptr %event, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.2, align 4
  %div3.i.i.2 = lshr i32 %52, 5
  %arrayidx.i.i.2 = getelementptr i32, ptr %event_bitmap.i, i32 %div3.i.i.2
  %53 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %arrayidx.i.i.2, align 4
  %and.i.i.2 = and i32 %52, 31
  %55 = shl nuw i32 1, %and.i.i.2
  %56 = and i32 %55, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i121.2 = icmp eq i32 %56, 0
  br i1 %tobool.not.i121.2, label %do.end.i123.2, label %if.else.i.2

if.else.i.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef %52, ptr noundef %event_bitmap.i) #13
  tail call void @complete(ptr noundef %event_free.i) #13
  br label %out_unlock

do.end.i123.2:                                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %dev.i122 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i122, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.113, i32 noundef %52) #16
  br label %out_unlock

if.end18:                                         ; preds = %etnaviv_gpu_fence_alloc.exit
  %fe_running = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 9
  %59 = ptrtoint ptr %fe_running to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %fe_running, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool19.not = icmp eq i8 %60, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end21_crit_edge

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  %mmu_context = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 4
  %61 = ptrtoint ptr %mmu_context to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmu_context, align 4
  tail call void @etnaviv_iommu_restore(ptr noundef %1, ptr noundef %62) #13
  %call.i126 = tail call zeroext i16 @etnaviv_buffer_init(ptr noundef %1) #13
  %buffer.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 10
  %mmu_context.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 30
  %63 = ptrtoint ptr %mmu_context.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmu_context.i, align 4
  %cmdbuf_mapping.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %64, i32 0, i32 6
  %call1.i127 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %buffer.i, ptr noundef %cmdbuf_mapping.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %65 = tail call i32 @llvm.bswap.i32(i32 %call1.i127) #13
  %mmio.i.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 28
  %66 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %67, i32 1620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %65) #13, !srcloc !323
  %conv.i.i = zext i16 %call.i126 to i32
  %or.i.i = or i32 %conv.i.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %68 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #13
  %69 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %70, i32 1624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %68) #13, !srcloc !323
  %sec_mode.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 5
  %71 = ptrtoint ptr %sec_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sec_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp.i.i = icmp eq i32 %72, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then20.etnaviv_gpu_start_fe_idleloop.exit_crit_edge

if.then20.etnaviv_gpu_start_fe_idleloop.exit_crit_edge: ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_gpu_start_fe_idleloop.exit

if.then.i.i:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %73 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %74, i32 932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 %68) #13, !srcloc !323
  br label %etnaviv_gpu_start_fe_idleloop.exit

etnaviv_gpu_start_fe_idleloop.exit:               ; preds = %if.then.i.i, %if.then20.etnaviv_gpu_start_fe_idleloop.exit_crit_edge
  %75 = ptrtoint ptr %fe_running to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %fe_running, align 1
  br label %if.end21

if.end21:                                         ; preds = %etnaviv_gpu_start_fe_idleloop.exit, %if.end18.if.end21_crit_edge
  %prev_mmu_context = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 5
  %76 = ptrtoint ptr %prev_mmu_context to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev_mmu_context, align 8
  %tobool22.not = icmp eq ptr %77, null
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %77) #13
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %mmu_context26 = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 30
  %78 = ptrtoint ptr %mmu_context26 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmu_context26, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %79, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %79, i32 1, i32 3, i32 1) #13
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #13, !srcloc !340
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end25.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !339

if.end25.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end25
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %81 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %.not.i.i.i.i.i = icmp sgt i32 %81, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !329

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_iommu_context_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end25.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end25.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %79, i32 noundef %.sink.i.i.i.i.i) #13
  br label %etnaviv_iommu_context_get.exit

etnaviv_iommu_context_get.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge
  %82 = ptrtoint ptr %prev_mmu_context to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev_mmu_context, align 8
  %83 = ptrtoint ptr %nr_pmrs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr_pmrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool30.not = icmp eq i32 %84, 0
  br i1 %tobool30.not, label %etnaviv_iommu_context_get.exit.if.end40_crit_edge, label %if.then31

etnaviv_iommu_context_get.exit.if.end40_crit_edge: ; preds = %etnaviv_iommu_context_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then31:                                        ; preds = %etnaviv_iommu_context_get.exit
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %3, align 4
  %sync_point = getelementptr %struct.etnaviv_gpu, ptr %1, i32 0, i32 13, i32 %86, i32 2
  %87 = ptrtoint ptr %sync_point to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @sync_point_perfmon_sample_pre, ptr %sync_point, align 4
  %refcount = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #13, !srcloc !340
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then31.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !339

if.then31.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then31
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %89 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %.not.i.i.i.i = icmp sgt i32 %89, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !329

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then31.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then31.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #13
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %submit38 = getelementptr %struct.etnaviv_gpu, ptr %1, i32 0, i32 13, i32 %86, i32 1
  %90 = ptrtoint ptr %submit38 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %submit, ptr %submit38, align 4
  tail call void @etnaviv_sync_point_queue(ptr noundef %1, i32 noundef %86) #13
  br label %if.end40

if.end40:                                         ; preds = %kref_get.exit, %etnaviv_iommu_context_get.exit.if.end40_crit_edge
  %91 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %event, align 4
  %arrayidx43 = getelementptr %struct.etnaviv_gpu, ptr %1, i32 0, i32 13, i32 %92
  %93 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %base.i, ptr %arrayidx43, align 4
  %cmdbuf = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 10
  %size = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 10, i32 3
  %94 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %size, align 4
  %sub = add i32 %95, -8
  %user_size = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 10, i32 4
  %96 = ptrtoint ptr %user_size to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %sub, ptr %user_size, align 8
  %exec_state = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 12
  %97 = ptrtoint ptr %exec_state to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %exec_state, align 8
  %mmu_context45 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 4
  %99 = ptrtoint ptr %mmu_context45 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmu_context45, align 4
  tail call void @etnaviv_buffer_queue(ptr noundef %1, i32 noundef %98, ptr noundef %100, i32 noundef %92, ptr noundef %cmdbuf) #13
  %101 = ptrtoint ptr %nr_pmrs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nr_pmrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool49.not = icmp eq i32 %102, 0
  br i1 %tobool49.not, label %if.end40.out_unlock_crit_edge, label %if.then50

if.end40.out_unlock_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.then50:                                        ; preds = %if.end40
  %103 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %5, align 4
  %sync_point54 = getelementptr %struct.etnaviv_gpu, ptr %1, i32 0, i32 13, i32 %104, i32 2
  %105 = ptrtoint ptr %sync_point54 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @sync_point_perfmon_sample_post, ptr %sync_point54, align 4
  %refcount55 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 1
  %call.i.i.i.i.i.i128 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount55, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcount55, i32 1, i32 3, i32 1) #13
  %106 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount55, ptr %refcount55, i32 1, ptr elementtype(i32) %refcount55) #13, !srcloc !340
  %asmresult.i.i.i.i.i.i129 = extractvalue { i32, i32, i32 } %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i129)
  %tobool1.not.i.i.i.i130 = icmp eq i32 %asmresult.i.i.i.i.i.i129, 0
  br i1 %tobool1.not.i.i.i.i130, label %if.then50.if.end15.sink.split.i.i.i.i135_crit_edge, label %if.else.i.i.i.i133, !prof !339

if.then50.if.end15.sink.split.i.i.i.i135_crit_edge: ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i135

if.else.i.i.i.i133:                               ; preds = %if.then50
  %add.i.i.i.i131 = add i32 %asmresult.i.i.i.i.i.i129, 1
  %107 = or i32 %add.i.i.i.i131, %asmresult.i.i.i.i.i.i129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %107)
  %.not.i.i.i.i132 = icmp sgt i32 %107, -1
  br i1 %.not.i.i.i.i132, label %if.else.i.i.i.i133.kref_get.exit136_crit_edge, label %if.else.i.i.i.i133.if.end15.sink.split.i.i.i.i135_crit_edge, !prof !329

if.else.i.i.i.i133.if.end15.sink.split.i.i.i.i135_crit_edge: ; preds = %if.else.i.i.i.i133
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i135

if.else.i.i.i.i133.kref_get.exit136_crit_edge:    ; preds = %if.else.i.i.i.i133
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit136

if.end15.sink.split.i.i.i.i135:                   ; preds = %if.else.i.i.i.i133.if.end15.sink.split.i.i.i.i135_crit_edge, %if.then50.if.end15.sink.split.i.i.i.i135_crit_edge
  %.sink.i.i.i.i134 = phi i32 [ 2, %if.then50.if.end15.sink.split.i.i.i.i135_crit_edge ], [ 1, %if.else.i.i.i.i133.if.end15.sink.split.i.i.i.i135_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount55, i32 noundef %.sink.i.i.i.i134) #13
  br label %kref_get.exit136

kref_get.exit136:                                 ; preds = %if.end15.sink.split.i.i.i.i135, %if.else.i.i.i.i133.kref_get.exit136_crit_edge
  %submit59 = getelementptr %struct.etnaviv_gpu, ptr %1, i32 0, i32 13, i32 %104, i32 1
  %108 = ptrtoint ptr %submit59 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %submit, ptr %submit59, align 4
  tail call void @etnaviv_sync_point_queue(ptr noundef %1, i32 noundef %104) #13
  br label %out_unlock

out_unlock:                                       ; preds = %kref_get.exit136, %if.end40.out_unlock_crit_edge, %do.end.i123.2, %if.else.i.2, %event_free.exit.out_unlock_crit_edge
  %retval.0.i118144 = phi ptr [ %base.i, %if.end40.out_unlock_crit_edge ], [ %base.i, %kref_get.exit136 ], [ null, %if.else.i.2 ], [ null, %do.end.i123.2 ], [ null, %event_free.exit.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %do.end11.i.i.i.i114, %if.then11.cleanup_crit_edge, %do.end11.i.i.i.i, %if.then2.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i118144, %out_unlock ], [ null, %if.then2.cleanup_crit_edge ], [ null, %do.end11.i.i.i.i ], [ null, %if.then11.cleanup_crit_edge ], [ null, %do.end11.i.i.i.i114 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_context_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sync_point_perfmon_sample_pre(ptr noundef %gpu, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %5, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %3) #13, !srcloc !323
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %9 = and i32 %8, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #13, !srcloc !323
  %submit1.i = getelementptr inbounds %struct.etnaviv_event, ptr %event, i32 0, i32 1
  %12 = ptrtoint ptr %submit1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %submit1.i, align 4
  %nr_pmrs.i = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %nr_pmrs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_pmrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp9.not.i = icmp eq i32 %15, 0
  br i1 %cmp9.not.i, label %entry.sync_point_perfmon_sample.exit_crit_edge, label %for.body.lr.ph.i

entry.sync_point_perfmon_sample.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sync_point_perfmon_sample.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %pmrs.i = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %13, i32 0, i32 15
  %exec_state.i = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %13, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %pmrs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pmrs.i, align 4
  %add.ptr.i14 = getelementptr %struct.etnaviv_perfmon_request, ptr %17, i32 %i.010.i
  %18 = ptrtoint ptr %add.ptr.i14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp3.i = icmp eq i32 %19, 1
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %exec_state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %exec_state.i, align 8
  tail call void @etnaviv_perfmon_process(ptr noundef %gpu, ptr noundef %add.ptr.i14, i32 noundef %21) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw i32 %i.010.i, 1
  %22 = ptrtoint ptr %nr_pmrs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_pmrs.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.sync_point_perfmon_sample.exit_crit_edge

if.end.i.sync_point_perfmon_sample.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sync_point_perfmon_sample.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

sync_point_perfmon_sample.exit:                   ; preds = %if.end.i.sync_point_perfmon_sample.exit_crit_edge, %entry.sync_point_perfmon_sample.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_sync_point_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_buffer_queue(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sync_point_perfmon_sample_post(ptr noundef %gpu, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %submit1 = getelementptr inbounds %struct.etnaviv_event, ptr %event, i32 0, i32 1
  %0 = ptrtoint ptr %submit1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %submit1, align 4
  %nr_pmrs.i = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %nr_pmrs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_pmrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not.i = icmp eq i32 %3, 0
  br i1 %cmp9.not.i, label %entry.for.end_crit_edge, label %for.body.lr.ph.i

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph.i:                                 ; preds = %entry
  %pmrs.i = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %1, i32 0, i32 15
  %exec_state.i = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %1, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %pmrs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmrs.i, align 4
  %add.ptr.i = getelementptr %struct.etnaviv_perfmon_request, ptr %5, i32 %i.010.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp3.i = icmp eq i32 %7, 2
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %exec_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %exec_state.i, align 8
  tail call void @etnaviv_perfmon_process(ptr noundef %gpu, ptr noundef %add.ptr.i, i32 noundef %9) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw i32 %i.010.i, 1
  %10 = ptrtoint ptr %nr_pmrs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_pmrs.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %sync_point_perfmon_sample.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

sync_point_perfmon_sample.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp21.not = icmp eq i32 %11, 0
  br i1 %cmp21.not, label %sync_point_perfmon_sample.exit.for.end_crit_edge, label %for.body.lr.ph

sync_point_perfmon_sample.exit.for.end_crit_edge: ; preds = %sync_point_perfmon_sample.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %sync_point_perfmon_sample.exit
  %pmrs = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %1, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %pmrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pmrs, align 4
  %sequence = getelementptr %struct.etnaviv_perfmon_request, ptr %13, i32 %i.022, i32 3
  %14 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sequence, align 4
  %bo_vma = getelementptr %struct.etnaviv_perfmon_request, ptr %13, i32 %i.022, i32 4
  %16 = ptrtoint ptr %bo_vma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bo_vma, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %17, align 4
  %inc = add nuw i32 %i.022, 1
  %19 = ptrtoint ptr %nr_pmrs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_pmrs.i, align 8
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sync_point_perfmon_sample.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %24 = or i32 %23, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #13, !srcloc !323
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %28, i32 256
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %30 = or i32 %29, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %32, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %30) #13, !srcloc !323
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gpu_wait_idle(ptr nocapture noundef readonly %gpu, i32 noundef %timeout_ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_ms) #13
  %add = add i32 %call2.i, %0
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %1 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %2, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #13, !srcloc !324
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %idle_mask = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 16
  %5 = ptrtoint ptr %idle_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idle_mask, align 4
  %and21 = and i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %6)
  %cmp22 = icmp eq i32 %and21, %6
  br i1 %cmp22, label %entry.cleanup9_crit_edge, label %if.end.preheader

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup9

if.end.preheader:                                 ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub26 = sub i32 %add, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26)
  %cmp327 = icmp slt i32 %sub26, 0
  br i1 %cmp327, label %if.end.preheader.do.end_crit_edge, label %if.end.preheader.cleanup_crit_edge

if.end.preheader.cleanup_crit_edge:               ; preds = %if.end.preheader
  br label %cleanup

if.end.preheader.do.end_crit_edge:                ; preds = %if.end.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end:                                           ; preds = %cleanup
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  %cmp3 = icmp slt i32 %sub, 0
  br i1 %cmp3, label %if.end.do.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.preheader.do.end_crit_edge
  %.lcssa = phi i32 [ %4, %if.end.preheader.do.end_crit_edge ], [ %15, %if.end.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.94, i32 noundef %.lcssa) #16
  br label %cleanup9

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end.preheader.cleanup_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 1073740) #13
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !324
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %16 = ptrtoint ptr %idle_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idle_mask, align 4
  %and = and i32 %17, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %17)
  %cmp = icmp eq i32 %and, %17
  br i1 %cmp, label %cleanup.cleanup9_crit_edge, label %if.end

cleanup.cleanup9_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup.cleanup9_crit_edge, %do.end, %entry.cleanup9_crit_edge
  %retval.1.ph = phi i32 [ -110, %do.end ], [ 0, %entry.cleanup9_crit_edge ], [ 0, %cleanup.cleanup9_crit_edge ]
  ret i32 %retval.1.ph
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_gpu_platform_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1648, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev3, align 8
  %lock = getelementptr inbounds %struct.etnaviv_gpu, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.115, ptr noundef nonnull @etnaviv_gpu_platform_probe.__key) #13
  %fence_lock = getelementptr inbounds %struct.etnaviv_gpu, ptr %call.i, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %fence_lock, ptr noundef nonnull @.str.117, ptr noundef nonnull @etnaviv_gpu_platform_probe.__key.116) #13
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #13
  %mmio = getelementptr inbounds %struct.etnaviv_gpu, ptr %call.i, i32 0, i32 28
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %mmio, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #13
  %irq = getelementptr inbounds %struct.etnaviv_gpu, ptr %call.i, i32 0, i32 29
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call14, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.dev_name.exit_crit_edge

if.end18.dev_name.exit_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end18.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end18.dev_name.exit_crit_edge ]
  %call.i139 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call14, ptr noundef nonnull @irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool24.not = icmp eq i32 %call.i139, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.118, i32 noundef %11, i32 noundef %call.i139) #16
  br label %cleanup

if.end30:                                         ; preds = %dev_name.exit
  %call32 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.120) #13
  %clk_reg = getelementptr inbounds %struct.etnaviv_gpu, ptr %call.i, i32 0, i32 33
  %12 = ptrtoint ptr %clk_reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call32, ptr %clk_reg, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.121, ptr noundef %call32) #13
  %13 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_reg, align 8
  %cmp.i140 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  %call41 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.122) #13
  %clk_bus = getelementptr inbounds %struct.etnaviv_gpu, ptr %call.i, i32 0, i32 32
  %16 = ptrtoint ptr %clk_bus to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call41, ptr %clk_bus, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.123, ptr noundef %call41) #13
  %17 = ptrtoint ptr %clk_bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_bus, align 4
  %cmp.i141 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  %call50 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.124) #13
  %clk_core = getelementptr inbounds %struct.etnaviv_gpu, ptr %call.i, i32 0, i32 34
  %20 = ptrtoint ptr %clk_core to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call50, ptr %clk_core, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.125, ptr noundef %call50) #13
  %21 = ptrtoint ptr %clk_core to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_core, align 4
  %cmp.i142 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end48
  %call59 = tail call i32 @clk_get_rate(ptr noundef %22) #13
  %base_rate_core = getelementptr inbounds %struct.etnaviv_gpu, ptr %call.i, i32 0, i32 37
  %24 = ptrtoint ptr %base_rate_core to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call59, ptr %base_rate_core, align 8
  %call61 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.126) #13
  %clk_shader = getelementptr inbounds %struct.etnaviv_gpu, ptr %call.i, i32 0, i32 35
  %25 = ptrtoint ptr %clk_shader to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call61, ptr %clk_shader, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.127, ptr noundef %call61) #13
  %26 = ptrtoint ptr %clk_shader to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_shader, align 8
  %cmp.i143 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %27 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.end57
  %call70 = tail call i32 @clk_get_rate(ptr noundef %27) #13
  %base_rate_shader = getelementptr inbounds %struct.etnaviv_gpu, ptr %call.i, i32 0, i32 38
  %29 = ptrtoint ptr %base_rate_shader to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call70, ptr %base_rate_shader, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i, align 4
  %31 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev3, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %32, i1 noundef zeroext true) #13
  %33 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev3, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %34, i32 noundef 200) #13
  %35 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev3, align 8
  tail call void @pm_runtime_enable(ptr noundef %36) #13
  %call75 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @gpu_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %do.end80, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end80:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.129, i32 noundef %call75) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %if.end68.cleanup_crit_edge, %if.then65, %if.then54, %if.then45, %if.then36, %do.end28, %if.end13.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then10 ], [ %call.i139, %do.end28 ], [ %15, %if.then36 ], [ %19, %if.then45 ], [ %23, %if.then54 ], [ %28, %if.then65 ], [ %call75, %do.end80 ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_gpu_platform_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @gpu_ops) #13
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @etnaviv_fill_identity_from_hwdb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @etnaviv_gpu_update_clock(ptr nocapture noundef readonly %gpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %minor_features2 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %minor_features2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor_features2, align 8
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %clk_core = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 34
  %2 = ptrtoint ptr %clk_core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_core, align 4
  %base_rate_core = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 37
  %4 = ptrtoint ptr %base_rate_core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_rate_core, align 8
  %freq_scale = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 36
  %6 = ptrtoint ptr %freq_scale to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %freq_scale, align 4
  %shr = lshr i32 %5, %7
  %call = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef %shr) #13
  %clk_shader = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 35
  %8 = ptrtoint ptr %clk_shader to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_shader, align 8
  %base_rate_shader = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 38
  %10 = ptrtoint ptr %base_rate_shader to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_rate_shader, align 4
  %12 = ptrtoint ptr %freq_scale to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %freq_scale, align 4
  %shr2 = lshr i32 %11, %13
  %call3 = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef %shr2) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %freq_scale4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 36
  %14 = ptrtoint ptr %freq_scale4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %freq_scale4, align 4
  %sub = sub i32 6, %15
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #13, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %19 = and i32 %18, 67043327
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %shl7 = shl i32 4, %sub
  %and8 = and i32 %shl7, 508
  %or = or i32 %20, %and8
  %or.i = or i32 %or, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #13, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %24 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #13, !srcloc !323
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_get_required_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timespec64_to_jiffies(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @etnaviv_fence_get_driver_name(ptr nocapture noundef readnone %fence) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.100
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @etnaviv_fence_get_timeline_name(ptr nocapture noundef readonly %fence) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %fence, i32 -8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %dev = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @etnaviv_fence_signaled(ptr nocapture noundef readonly %fence) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %fence, i32 -8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %completed_fence = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %completed_fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_fence, align 4
  %seqno = getelementptr i8, ptr %fence, i32 24
  %4 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %seqno, align 8
  %6 = trunc i64 %5 to i32
  %conv1 = sub i32 %3, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv1)
  %cmp = icmp sgt i32 %conv1, -1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etnaviv_fence_release(ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %fence, i32 -8
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = getelementptr i8, ptr %fence, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %0, ptr noundef nonnull inttoptr (i32 16 to ptr)) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @etnaviv_buffer_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_get_va(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_perfmon_process(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %data, i32 0, i32 28
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !324
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.if.end59_crit_edge, label %if.then

entry.if.end59_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.etnaviv_gpu, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 22
  %6 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irq_handler.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq_handler, %if.then4)) #13
          to label %do.end [label %if.then4], !srcloc !326

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irq_handler.__UNIQUE_ID_ddebug327, ptr noundef %8, ptr noundef nonnull @.str.132, i32 noundef %3) #13
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool6.not = icmp sgt i32 %3, -1
  br i1 %tobool6.not, label %do.end.if.end13_crit_edge, label %do.end10

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.133) #16
  %and12 = and i32 %3, 2147483647
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %do.end.if.end13_crit_edge
  %intr.0 = phi i32 [ %and12, %do.end10 ], [ %3, %do.end.if.end13_crit_edge ]
  %and14 = and i32 %intr.0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end18_crit_edge, label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  %sec_mode.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %data, i32 0, i32 5
  %11 = ptrtoint ptr %sec_mode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sec_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  %..i = select i1 %cmp.i, i32 392, i32 900
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %..i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !324
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @dump_mmu_fault._rs, ptr noundef nonnull @__func__.dump_mmu_fault) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then16.do.end6.i_crit_edge, label %do.end.i

if.then16.do.end6.i_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6.i

do.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.136, i32 noundef %16) #16
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.then16.do.end6.i_crit_edge
  %and.i = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %do.end6.i.cleanup.i_crit_edge, label %if.end10.i

do.end6.i.cleanup.i_crit_edge:                    ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end10.i:                                       ; preds = %do.end6.i
  %19 = ptrtoint ptr %sec_mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sec_mode.i, align 4
  %call18.i = tail call i32 @___ratelimit(ptr noundef nonnull @dump_mmu_fault._rs.137, ptr noundef nonnull @__func__.dump_mmu_fault) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end10.i.cleanup.i_crit_edge, label %do.end23.i

if.end10.i.cleanup.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

do.end23.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp12.i = icmp eq i32 %20, 0
  %address_reg.0.i = select i1 %cmp12.i, i32 400, i32 896
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %24, i32 %address_reg.0.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i) #13, !srcloc !324
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.139, i32 noundef 0, i32 noundef %26) #16
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end23.i, %if.end10.i.cleanup.i_crit_edge, %do.end6.i.cleanup.i_crit_edge
  %and.1.i = and i32 %16, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool8.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool8.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end10.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.1.i

if.end10.1.i:                                     ; preds = %cleanup.i
  %27 = ptrtoint ptr %sec_mode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sec_mode.i, align 4
  %call18.1.i = tail call i32 @___ratelimit(ptr noundef nonnull @dump_mmu_fault._rs.137, ptr noundef nonnull @__func__.dump_mmu_fault) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1.i)
  %tobool19.not.1.i = icmp eq i32 %call18.1.i, 0
  br i1 %tobool19.not.1.i, label %if.end10.1.i.cleanup.1.i_crit_edge, label %do.end23.1.i

if.end10.1.i.cleanup.1.i_crit_edge:               ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.1.i

do.end23.1.i:                                     ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp12.1.i = icmp eq i32 %28, 0
  %address_reg.0.1.i = select i1 %cmp12.1.i, i32 404, i32 896
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i40.1.i = getelementptr i8, ptr %32, i32 %address_reg.0.1.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.1.i) #13, !srcloc !324
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.139, i32 noundef 1, i32 noundef %34) #16
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %do.end23.1.i, %if.end10.1.i.cleanup.1.i_crit_edge, %cleanup.i.cleanup.1.i_crit_edge
  %and.2.i = and i32 %16, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool8.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool8.not.2.i, label %cleanup.1.i.cleanup.2.i_crit_edge, label %if.end10.2.i

cleanup.1.i.cleanup.2.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.2.i

if.end10.2.i:                                     ; preds = %cleanup.1.i
  %35 = ptrtoint ptr %sec_mode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sec_mode.i, align 4
  %call18.2.i = tail call i32 @___ratelimit(ptr noundef nonnull @dump_mmu_fault._rs.137, ptr noundef nonnull @__func__.dump_mmu_fault) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.2.i)
  %tobool19.not.2.i = icmp eq i32 %call18.2.i, 0
  br i1 %tobool19.not.2.i, label %if.end10.2.i.cleanup.2.i_crit_edge, label %do.end23.2.i

if.end10.2.i.cleanup.2.i_crit_edge:               ; preds = %if.end10.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.2.i

do.end23.2.i:                                     ; preds = %if.end10.2.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp12.2.i = icmp eq i32 %36, 0
  %address_reg.0.2.i = select i1 %cmp12.2.i, i32 408, i32 896
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %39 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i40.2.i = getelementptr i8, ptr %40, i32 %address_reg.0.2.i
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.2.i) #13, !srcloc !324
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.139, i32 noundef 2, i32 noundef %42) #16
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %do.end23.2.i, %if.end10.2.i.cleanup.2.i_crit_edge, %cleanup.1.i.cleanup.2.i_crit_edge
  %and.3.i = and i32 %16, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool8.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool8.not.3.i, label %cleanup.2.i.dump_mmu_fault.exit_crit_edge, label %if.end10.3.i

cleanup.2.i.dump_mmu_fault.exit_crit_edge:        ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_mmu_fault.exit

if.end10.3.i:                                     ; preds = %cleanup.2.i
  %43 = ptrtoint ptr %sec_mode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sec_mode.i, align 4
  %call18.3.i = tail call i32 @___ratelimit(ptr noundef nonnull @dump_mmu_fault._rs.137, ptr noundef nonnull @__func__.dump_mmu_fault) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.3.i)
  %tobool19.not.3.i = icmp eq i32 %call18.3.i, 0
  br i1 %tobool19.not.3.i, label %if.end10.3.i.dump_mmu_fault.exit_crit_edge, label %do.end23.3.i

if.end10.3.i.dump_mmu_fault.exit_crit_edge:       ; preds = %if.end10.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_mmu_fault.exit

do.end23.3.i:                                     ; preds = %if.end10.3.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp12.3.i = icmp eq i32 %44, 0
  %address_reg.0.3.i = select i1 %cmp12.3.i, i32 412, i32 896
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 8
  %47 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i40.3.i = getelementptr i8, ptr %48, i32 %address_reg.0.3.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.3.i) #13, !srcloc !324
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.139, i32 noundef 3, i32 noundef %50) #16
  br label %dump_mmu_fault.exit

dump_mmu_fault.exit:                              ; preds = %do.end23.3.i, %if.end10.3.i.dump_mmu_fault.exit_crit_edge, %cleanup.2.i.dump_mmu_fault.exit_crit_edge
  %and17 = and i32 %intr.0, -1073741825
  br label %if.end18

if.end18:                                         ; preds = %dump_mmu_fault.exit, %if.end13.if.end18_crit_edge
  %intr.1 = phi i32 [ %and17, %dump_mmu_fault.exit ], [ %intr.0, %if.end13.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intr.1)
  %iszero104 = icmp eq i32 %intr.1, 0
  br i1 %iszero104, label %if.end18.if.end59_crit_edge, label %while.body.lr.ph

if.end18.if.end59_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

while.body.lr.ph:                                 ; preds = %if.end18
  %sync_point_event = getelementptr inbounds %struct.etnaviv_gpu, ptr %data, i32 0, i32 25
  %wq = getelementptr inbounds %struct.etnaviv_gpu, ptr %data, i32 0, i32 6
  %sync_point_work = getelementptr inbounds %struct.etnaviv_gpu, ptr %data, i32 0, i32 24
  %completed_fence = getelementptr inbounds %struct.etnaviv_gpu, ptr %data, i32 0, i32 20
  %event_bitmap.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %data, i32 0, i32 12
  %event_free.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %data, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %intr.2105 = phi i32 [ %intr.1, %while.body.lr.ph ], [ %and20, %cleanup.while.body_crit_edge ]
  %51 = tail call i32 @llvm.cttz.i32(i32 %intr.2105, i1 true), !range !341
  %shl = shl nuw i32 1, %51
  %neg = xor i32 %shl, -1
  %and20 = and i32 %intr.2105, %neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irq_handler.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq_handler, %if.then33)) #13
          to label %do.end37 [label %if.then33], !srcloc !326

if.then33:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irq_handler.__UNIQUE_ID_ddebug328, ptr noundef %53, ptr noundef nonnull @.str.134, i32 noundef %51) #13
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %while.body
  %arrayidx = getelementptr %struct.etnaviv_gpu, ptr %data, i32 0, i32 13, i32 %51
  %sync_point = getelementptr %struct.etnaviv_gpu, ptr %data, i32 0, i32 13, i32 %51, i32 2
  %54 = ptrtoint ptr %sync_point to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sync_point, align 4
  %tobool39.not = icmp eq ptr %55, null
  br i1 %tobool39.not, label %do.end37.if.end42_crit_edge, label %if.then40

do.end37.if.end42_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then40:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %sync_point_event to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %51, ptr %sync_point_event, align 8
  %57 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wq, align 8
  %call.i97 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %sync_point_work) #13
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %do.end37.if.end42_crit_edge
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx, align 4
  %tobool46.not = icmp eq ptr %60, null
  br i1 %tobool46.not, label %if.end42.cleanup_crit_edge, label %if.end48

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end48:                                         ; preds = %if.end42
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %arrayidx, align 4
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %60, i32 0, i32 4
  %62 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %seqno, align 8
  %conv = trunc i64 %63 to i32
  %64 = ptrtoint ptr %completed_fence to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %completed_fence, align 4
  %sub.i = sub i32 %conv, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i98 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i98, label %if.then53, label %if.end48.if.end57_crit_edge

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %completed_fence to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv, ptr %completed_fence, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end48.if.end57_crit_edge
  %call58 = tail call i32 @dma_fence_signal(ptr noundef nonnull %60) #13
  %67 = ptrtoint ptr %event_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %event_bitmap.i, align 4
  %69 = and i32 %68, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i99 = icmp eq i32 %69, 0
  br i1 %tobool.not.i99, label %do.end.i101, label %if.else.i

do.end.i101:                                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.113, i32 noundef %51) #16
  br label %cleanup

if.else.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef %51, ptr noundef %event_bitmap.i) #13
  tail call void @complete(ptr noundef %event_free.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %do.end.i101, %if.end42.cleanup_crit_edge
  %iszero = icmp eq i32 %and20, 0
  br i1 %iszero, label %cleanup.if.end59_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.if.end59_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.end59:                                         ; preds = %cleanup.if.end59_crit_edge, %if.end18.if.end59_crit_edge, %entry.if.end59_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end59_crit_edge ], [ 1, %if.end18.if.end59_crit_edge ], [ 1, %cleanup.if.end59_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_gpu_bind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call ptr @thermal_of_cooling_device_register(ptr noundef %5, ptr noundef %retval.0.i, ptr noundef %3, ptr noundef nonnull @cooling_ops) #13
  %cooling = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %cooling to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2, ptr %cooling, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i75 = icmp eq ptr %13, null
  br i1 %tobool.not.i75, label %if.end.i76, label %if.end.dev_name.exit78_crit_edge

if.end.dev_name.exit78_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit78

if.end.i76:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit78

dev_name.exit78:                                  ; preds = %if.end.i76, %if.end.dev_name.exit78_crit_edge
  %retval.0.i77 = phi ptr [ %15, %if.end.i76 ], [ %13, %if.end.dev_name.exit78_crit_edge ]
  %call8 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef %retval.0.i77, i32 noundef 655362, i32 noundef 1) #13
  %wq = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8, ptr %wq, align 8
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %dev_name.exit78.out_thermal_crit_edge, label %if.end11

dev_name.exit78.out_thermal_crit_edge:            ; preds = %dev_name.exit78
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_thermal

if.end11:                                         ; preds = %dev_name.exit78
  %call12 = tail call i32 @etnaviv_sched_init(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.out_workqueue_crit_edge

if.end11.out_workqueue_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_workqueue

if.end15:                                         ; preds = %if.end11
  %dev16 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev16, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %18, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %out_sched, label %if.end19

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data, ptr %3, align 8
  %call21 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #13
  %fence_context = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 22
  %20 = ptrtoint ptr %fence_context to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call21, ptr %fence_context, align 8
  %fence_idr = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %fence_idr, ptr noundef nonnull @.str.146, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #13
  %xa_flags.i.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 18, i32 0, i32 1
  %21 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 18, i32 0, i32 2
  %22 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 18, i32 2
  %24 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %idr_next.i.i, align 4
  %fence_spinlock = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %fence_spinlock, ptr noundef nonnull @.str.141, ptr noundef nonnull @etnaviv_gpu_bind.__key, i16 noundef signext 3) #13
  %sync_point_work = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 24
  tail call void @__init_work(ptr noundef %sync_point_work, i32 noundef 0) #13
  %25 = ptrtoint ptr %sync_point_work to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %sync_point_work, align 4
  %lockdep_map = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 24, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.143, ptr noundef nonnull @etnaviv_gpu_bind.__key.142, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry28 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 24, i32 1
  %26 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 24, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry28, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 24, i32 2
  %28 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @sync_point_worker, ptr %func, align 4
  %fence_event = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 21
  tail call void @__init_waitqueue_head(ptr noundef %fence_event, ptr noundef nonnull @.str.145, ptr noundef nonnull @etnaviv_gpu_bind.__key.144) #13
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %1, align 4
  %arrayidx = getelementptr %struct.etnaviv_drm_private, ptr %1, i32 0, i32 1, i32 %30
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %3, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev16, align 8
  %call.i79 = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 12, i32 22
  %34 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store volatile i64 %call.i79, ptr %last_busy.i, align 8
  %35 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev16, align 8
  %call.i80 = tail call i32 @__pm_runtime_suspend(ptr noundef %36, i32 noundef 13) #13
  br label %cleanup

out_sched:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @etnaviv_sched_fini(ptr noundef %3) #13
  br label %out_workqueue

out_workqueue:                                    ; preds = %out_sched, %if.end11.out_workqueue_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11.out_workqueue_crit_edge ], [ %call.i, %out_sched ]
  %37 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wq, align 8
  tail call void @destroy_workqueue(ptr noundef %38) #13
  br label %out_thermal

out_thermal:                                      ; preds = %out_workqueue, %dev_name.exit78.out_thermal_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_workqueue ], [ -12, %dev_name.exit78.out_thermal_crit_edge ]
  %39 = ptrtoint ptr %cooling to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cooling, align 4
  tail call void @thermal_cooling_device_unregister(ptr noundef %40) #13
  br label %cleanup

cleanup:                                          ; preds = %out_thermal, %if.end19, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ %ret.1, %out_thermal ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etnaviv_gpu_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.147, ptr noundef %retval.0.i) #13
  %wq = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wq, align 8
  tail call void @destroy_workqueue(ptr noundef %9) #13
  tail call void @etnaviv_sched_fini(ptr noundef %1) #13
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #13
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 8
  %call.i27 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 4) #13
  %mmu_context = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 30
  %14 = ptrtoint ptr %mmu_context to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmu_context, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %dev_name.exit.if.end_crit_edge, label %if.then

dev_name.exit.if.end_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %15) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_name.exit.if.end_crit_edge
  %initialized = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %initialized, align 8, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %buffer = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 10
  tail call void @etnaviv_cmdbuf_free(ptr noundef %buffer) #13
  tail call void @etnaviv_iommu_global_fini(ptr noundef %1) #13
  %18 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %initialized, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %1, align 8
  %fence_idr = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 18
  tail call void @idr_destroy(ptr noundef %fence_idr) #13
  %cooling = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %cooling to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cooling, align 4
  tail call void @thermal_cooling_device_unregister(ptr noundef %21) #13
  %22 = ptrtoint ptr %cooling to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cooling, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_sched_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sync_point_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1548
  %event1 = getelementptr i8, ptr %work, i32 -732
  %sync_point_event = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %sync_point_event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_point_event, align 8
  %arrayidx = getelementptr [30 x %struct.etnaviv_event], ptr %event1, i32 0, i32 %1
  %mmio.i = getelementptr i8, ptr %work, i32 56
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1636
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !324
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %sync_point = getelementptr inbounds %struct.etnaviv_event, ptr %arrayidx, i32 0, i32 2
  %6 = ptrtoint ptr %sync_point to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sync_point, align 4
  tail call void %7(ptr noundef %add.ptr, ptr noundef %arrayidx) #13
  %submit = getelementptr inbounds %struct.etnaviv_event, ptr %arrayidx, i32 0, i32 1
  %8 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %submit, align 4
  tail call void @etnaviv_submit_put(ptr noundef %9) #13
  %10 = ptrtoint ptr %sync_point_event to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sync_point_event, align 8
  %event_bitmap.i = getelementptr i8, ptr %work, i32 -736
  %div3.i.i = lshr i32 %11, 5
  %arrayidx.i.i = getelementptr i32, ptr %event_bitmap.i, i32 %div3.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %11, 31
  %14 = shl nuw i32 1, %and.i.i
  %15 = and i32 %14, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr i8, ptr %work, i32 -1540
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.113, i32 noundef %11) #16
  br label %event_free.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef %11, ptr noundef %event_bitmap.i) #13
  %event_free.i = getelementptr i8, ptr %work, i32 -372
  tail call void @complete(ptr noundef %event_free.i) #13
  br label %event_free.exit

event_free.exit:                                  ; preds = %if.else.i, %do.end.i
  %add = add i32 %5, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %18 = tail call i32 @llvm.bswap.i32(i32 %add) #13
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 1620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #13, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %22, i32 1624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 33554688) #13, !srcloc !323
  %sec_mode.i = getelementptr i8, ptr %work, i32 -1328
  %23 = ptrtoint ptr %sec_mode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sec_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i = icmp eq i32 %24, 1
  br i1 %cmp.i, label %if.then.i, label %event_free.exit.etnaviv_gpu_start_fe.exit_crit_edge

event_free.exit.etnaviv_gpu_start_fe.exit_crit_edge: ; preds = %event_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_gpu_start_fe.exit

if.then.i:                                        ; preds = %event_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %26, i32 932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 33554688) #13, !srcloc !323
  br label %etnaviv_gpu_start_fe.exit

etnaviv_gpu_start_fe.exit:                        ; preds = %if.then.i, %event_free.exit.etnaviv_gpu_start_fe.exit_crit_edge
  %fe_running.i = getelementptr i8, ptr %work, i32 -763
  %27 = ptrtoint ptr %fe_running.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %fe_running.i, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_sched_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @etnaviv_gpu_cooling_get_max_state(ptr nocapture noundef readnone %cdev, ptr nocapture noundef writeonly %state) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 6, ptr %state, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @etnaviv_gpu_cooling_get_cur_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %freq_scale = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %freq_scale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq_scale, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_gpu_cooling_set_cur_state(ptr nocapture noundef readonly %cdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %lock = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %freq_scale = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %freq_scale to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %state, ptr %freq_scale, align 4
  %dev = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 18
  %5 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 15
  %7 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @etnaviv_gpu_update_clock(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_suspended.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_submit_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_cmdbuf_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_global_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_gpu_rpm_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hw_rq_count = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 7, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hw_rq_count, i32 noundef 4) #13
  %2 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %hw_rq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %idle_mask = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %idle_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idle_mask, align 4
  %and = and i32 %5, -16386
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !324
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %and3 = and i32 %9, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %and)
  %cmp.not = icmp eq i32 %and3, %and
  br i1 %cmp.not, label %if.end12, label %do.body

do.body:                                          ; preds = %if.end
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @etnaviv_gpu_rpm_suspend._rs, ptr noundef nonnull @__func__.etnaviv_gpu_rpm_suspend) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.148, i32 noundef %and3) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %initialized.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %initialized.i, align 8, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end12.etnaviv_gpu_hw_suspend.exit_crit_edge, label %land.lhs.true.i

if.end12.etnaviv_gpu_hw_suspend.exit_crit_edge:   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_gpu_hw_suspend.exit

land.lhs.true.i:                                  ; preds = %if.end12
  %fe_running.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %fe_running.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fe_running.i, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.etnaviv_gpu_hw_suspend.exit_crit_edge, label %if.then.i

land.lhs.true.i.etnaviv_gpu_hw_suspend.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_gpu_hw_suspend.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %lock.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #13
  tail call void @etnaviv_buffer_end(ptr noundef %1) #13
  tail call void @mutex_unlock(ptr noundef %lock.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %14, 10
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i.i) #13, !srcloc !324
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %19 = ptrtoint ptr %idle_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idle_mask, align 4
  %and21.i.i = and i32 %20, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %and21.i.i, i32 %20)
  %cmp22.i.i = icmp eq i32 %and21.i.i, %20
  br i1 %cmp22.i.i, label %if.then.i.etnaviv_gpu_wait_idle.exit.i_crit_edge, label %if.end.i.preheader.i

if.then.i.etnaviv_gpu_wait_idle.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_gpu_wait_idle.exit.i

if.end.i.preheader.i:                             ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub.i3.i = sub i32 %add.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i3.i)
  %cmp3.i4.i = icmp slt i32 %sub.i3.i, 0
  br i1 %cmp3.i4.i, label %if.end.i.preheader.i.do.end.i.i_crit_edge, label %if.end.i.preheader.i.cleanup.i.i_crit_edge

if.end.i.preheader.i.cleanup.i.i_crit_edge:       ; preds = %if.end.i.preheader.i
  br label %cleanup.i.i

if.end.i.preheader.i.do.end.i.i_crit_edge:        ; preds = %if.end.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %cleanup.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %22
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %if.end.i.i.cleanup.i.i_crit_edge

if.end.i.i.cleanup.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i.do.end.i.i_crit_edge, %if.end.i.preheader.i.do.end.i.i_crit_edge
  %.lcssa.i = phi i32 [ %18, %if.end.i.preheader.i.do.end.i.i_crit_edge ], [ %29, %if.end.i.i.do.end.i.i_crit_edge ]
  %dev.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.94, i32 noundef %.lcssa.i) #16
  br label %etnaviv_gpu_wait_idle.exit.i

cleanup.i.i:                                      ; preds = %if.end.i.i.cleanup.i.i_crit_edge, %if.end.i.preheader.i.cleanup.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 1073740) #13
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #13, !srcloc !324
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  %30 = ptrtoint ptr %idle_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %idle_mask, align 4
  %and.i.i = and i32 %31, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %31)
  %cmp.i.i = icmp eq i32 %and.i.i, %31
  br i1 %cmp.i.i, label %cleanup.i.i.etnaviv_gpu_wait_idle.exit.i_crit_edge, label %if.end.i.i

cleanup.i.i.etnaviv_gpu_wait_idle.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %etnaviv_gpu_wait_idle.exit.i

etnaviv_gpu_wait_idle.exit.i:                     ; preds = %cleanup.i.i.etnaviv_gpu_wait_idle.exit.i_crit_edge, %do.end.i.i, %if.then.i.etnaviv_gpu_wait_idle.exit.i_crit_edge
  %32 = ptrtoint ptr %fe_running.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %fe_running.i, align 1
  br label %etnaviv_gpu_hw_suspend.exit

etnaviv_gpu_hw_suspend.exit:                      ; preds = %etnaviv_gpu_wait_idle.exit.i, %land.lhs.true.i.etnaviv_gpu_hw_suspend.exit_crit_edge, %if.end12.etnaviv_gpu_hw_suspend.exit_crit_edge
  %exec_state.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 11
  %33 = ptrtoint ptr %exec_state.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %exec_state.i, align 8
  %clk_shader.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 35
  %34 = ptrtoint ptr %clk_shader.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk_shader.i.i, align 8
  tail call void @clk_disable(ptr noundef %35) #13
  tail call void @clk_unprepare(ptr noundef %35) #13
  %clk_core.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 34
  %36 = ptrtoint ptr %clk_core.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk_core.i.i, align 4
  tail call void @clk_disable(ptr noundef %37) #13
  tail call void @clk_unprepare(ptr noundef %37) #13
  %clk_bus.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 32
  %38 = ptrtoint ptr %clk_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk_bus.i.i, align 4
  tail call void @clk_disable(ptr noundef %39) #13
  tail call void @clk_unprepare(ptr noundef %39) #13
  %clk_reg.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 33
  %40 = ptrtoint ptr %clk_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk_reg.i.i, align 8
  tail call void @clk_disable(ptr noundef %41) #13
  tail call void @clk_unprepare(ptr noundef %41) #13
  br label %cleanup

cleanup:                                          ; preds = %etnaviv_gpu_hw_suspend.exit, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %etnaviv_gpu_hw_suspend.exit ], [ -16, %entry.cleanup_crit_edge ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_gpu_rpm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_reg.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_reg.i, align 8
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end.i.i
  %clk_bus.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %clk_bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_bus.i, align 4
  %call.i27.i = tail call i32 @clk_prepare(ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool.not.i28.i = icmp eq i32 %call.i27.i, 0
  br i1 %tobool.not.i28.i, label %if.end.i31.i, label %if.end.i.disable_clk_reg.i_crit_edge

if.end.i.disable_clk_reg.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_clk_reg.i

if.end.i31.i:                                     ; preds = %if.end.i
  %call1.i29.i = tail call i32 @clk_enable(ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29.i)
  %tobool2.not.i30.i = icmp eq i32 %call1.i29.i, 0
  br i1 %tobool2.not.i30.i, label %if.end4.i, label %if.end.i31.i.disable_clk_reg.sink.split.i_crit_edge

if.end.i31.i.disable_clk_reg.sink.split.i_crit_edge: ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_clk_reg.sink.split.i

if.end4.i:                                        ; preds = %if.end.i31.i
  %clk_core.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %clk_core.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_core.i, align 4
  %call.i35.i = tail call i32 @clk_prepare(ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %tobool.not.i36.i = icmp eq i32 %call.i35.i, 0
  br i1 %tobool.not.i36.i, label %if.end.i39.i, label %if.end4.i.disable_clk_bus.i_crit_edge

if.end4.i.disable_clk_bus.i_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_clk_bus.i

if.end.i39.i:                                     ; preds = %if.end4.i
  %call1.i37.i = tail call i32 @clk_enable(ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37.i)
  %tobool2.not.i38.i = icmp eq i32 %call1.i37.i, 0
  br i1 %tobool2.not.i38.i, label %if.end8.i, label %if.end.i39.i.disable_clk_bus.sink.split.i_crit_edge

if.end.i39.i.disable_clk_bus.sink.split.i_crit_edge: ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_clk_bus.sink.split.i

if.end8.i:                                        ; preds = %if.end.i39.i
  %clk_shader.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 35
  %8 = ptrtoint ptr %clk_shader.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_shader.i, align 8
  %call.i43.i = tail call i32 @clk_prepare(ptr noundef %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %tobool.not.i44.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool.not.i44.i, label %if.end.i47.i, label %if.end8.i.disable_clk_core.i_crit_edge

if.end8.i.disable_clk_core.i_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_clk_core.i

if.end.i47.i:                                     ; preds = %if.end8.i
  %call1.i45.i = tail call i32 @clk_enable(ptr noundef %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45.i)
  %tobool2.not.i46.i = icmp eq i32 %call1.i45.i, 0
  br i1 %tobool2.not.i46.i, label %if.end, label %if.then3.i48.i

if.then3.i48.i:                                   ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_unprepare(ptr noundef %9) #13
  br label %disable_clk_core.i

disable_clk_core.i:                               ; preds = %if.then3.i48.i, %if.end8.i.disable_clk_core.i_crit_edge
  %retval.0.i49.ph.i = phi i32 [ %call1.i45.i, %if.then3.i48.i ], [ %call.i43.i, %if.end8.i.disable_clk_core.i_crit_edge ]
  %10 = ptrtoint ptr %clk_core.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_core.i, align 4
  tail call void @clk_disable(ptr noundef %11) #13
  br label %disable_clk_bus.sink.split.i

disable_clk_bus.sink.split.i:                     ; preds = %disable_clk_core.i, %if.end.i39.i.disable_clk_bus.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %11, %disable_clk_core.i ], [ %7, %if.end.i39.i.disable_clk_bus.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %retval.0.i49.ph.i, %disable_clk_core.i ], [ %call1.i37.i, %if.end.i39.i.disable_clk_bus.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #13
  br label %disable_clk_bus.i

disable_clk_bus.i:                                ; preds = %disable_clk_bus.sink.split.i, %if.end4.i.disable_clk_bus.i_crit_edge
  %ret.0.i = phi i32 [ %call.i35.i, %if.end4.i.disable_clk_bus.i_crit_edge ], [ %ret.0.ph.i, %disable_clk_bus.sink.split.i ]
  %12 = ptrtoint ptr %clk_bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_bus.i, align 4
  tail call void @clk_disable(ptr noundef %13) #13
  br label %disable_clk_reg.sink.split.i

disable_clk_reg.sink.split.i:                     ; preds = %disable_clk_bus.i, %if.end.i31.i.disable_clk_reg.sink.split.i_crit_edge
  %.sink60.i = phi ptr [ %13, %disable_clk_bus.i ], [ %5, %if.end.i31.i.disable_clk_reg.sink.split.i_crit_edge ]
  %ret.1.ph.i = phi i32 [ %ret.0.i, %disable_clk_bus.i ], [ %call1.i29.i, %if.end.i31.i.disable_clk_reg.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink60.i) #13
  br label %disable_clk_reg.i

disable_clk_reg.i:                                ; preds = %disable_clk_reg.sink.split.i, %if.end.i.disable_clk_reg.i_crit_edge
  %ret.1.i = phi i32 [ %call.i27.i, %if.end.i.disable_clk_reg.i_crit_edge ], [ %ret.1.ph.i, %disable_clk_reg.sink.split.i ]
  %14 = ptrtoint ptr %clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_reg.i, align 8
  tail call void @clk_disable(ptr noundef %15) #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %disable_clk_reg.i, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.sink61.i = phi ptr [ %15, %disable_clk_reg.i ], [ %3, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %ret.1.i, %disable_clk_reg.i ], [ %call1.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink61.i) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i47.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %tobool2.not = icmp eq ptr %17, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %initialized = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %initialized, align 8, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool3.not = icmp eq i8 %19, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  %lock.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @mutex_lock_killable_nested(ptr noundef %lock.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %etnaviv_gpu_hw_resume.exit.thread, label %if.then7

etnaviv_gpu_hw_resume.exit.thread:                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @etnaviv_gpu_update_clock(ptr noundef %1) #13
  tail call fastcc void @etnaviv_gpu_hw_init(ptr noundef %1) #13
  tail call void @mutex_unlock(ptr noundef %lock.i) #13
  br label %cleanup

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %clk_shader.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_shader.i, align 8
  tail call void @clk_disable(ptr noundef %21) #13
  tail call void @clk_unprepare(ptr noundef %21) #13
  %22 = ptrtoint ptr %clk_core.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_core.i, align 4
  tail call void @clk_disable(ptr noundef %23) #13
  tail call void @clk_unprepare(ptr noundef %23) #13
  %24 = ptrtoint ptr %clk_bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_bus.i, align 4
  tail call void @clk_disable(ptr noundef %25) #13
  tail call void @clk_unprepare(ptr noundef %25) #13
  %26 = ptrtoint ptr %clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_reg.i, align 8
  tail call void @clk_disable(ptr noundef %27) #13
  tail call void @clk_unprepare(ptr noundef %27) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %etnaviv_gpu_hw_resume.exit.thread, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cleanup.sink.split.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then7 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %etnaviv_gpu_hw_resume.exit.thread ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_buffer_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !173, !174, !175, !177, !179, !180, !181, !182, !183, !185, !187, !189, !190, !191, !192, !194, !195, !196, !197, !199, !200, !202, !203, !204, !205, !206, !208, !209, !211, !212, !213, !215, !216, !218, !219, !220, !221, !223, !225, !226, !227, !228, !230, !231, !233, !234, !236, !237, !238, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !272, !273, !274, !275, !276, !277, !279, !280, !281, !282, !284, !286, !287, !289, !290, !292, !293, !295, !297, !298, !300, !302, !304, !306, !307, !308, !309, !310}
!llvm.named.register.sp = !{!312}
!llvm.module.flags = !{!313, !314, !315, !316, !317, !318, !319, !320}
!llvm.ident = !{!321}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 168, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 756, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @etnaviv_gpu_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @etnaviv_gpu_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 763, i32 3}
!12 = !{ptr @etnaviv_gpu_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @etnaviv_gpu_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 771, i32 3}
!16 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @etnaviv_gpu_init._entry.9, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @etnaviv_gpu_init._entry_ptr.12, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 786, i32 3}
!21 = !{ptr @etnaviv_gpu_init._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @etnaviv_gpu_init._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 806, i32 3}
!25 = !{ptr @etnaviv_gpu_init._entry.16, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @etnaviv_gpu_init._entry_ptr.18, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.20, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 829, i32 3}
!29 = !{ptr @etnaviv_gpu_init._entry.19, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @etnaviv_gpu_init._entry_ptr.21, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @etnaviv_gpu_init.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 836, i32 2}
!33 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 893, i32 16}
!36 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 906, i32 14}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 907, i32 16}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 908, i32 16}
!42 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 909, i32 16}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 910, i32 16}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 911, i32 16}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 913, i32 14}
!50 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 914, i32 16}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 916, i32 16}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 918, i32 16}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 920, i32 16}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 922, i32 16}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 924, i32 16}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 926, i32 16}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 928, i32 16}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 930, i32 16}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 932, i32 16}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 934, i32 16}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 936, i32 16}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 938, i32 16}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 941, i32 14}
!78 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 942, i32 16}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 944, i32 16}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 946, i32 16}
!84 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 948, i32 16}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 950, i32 16}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 952, i32 16}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 954, i32 16}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 956, i32 16}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 958, i32 16}
!96 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 960, i32 16}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 962, i32 16}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 965, i32 16}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 966, i32 16}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 969, i32 15}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 971, i32 15}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 973, i32 15}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 975, i32 15}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 977, i32 15}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 979, i32 15}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 981, i32 15}
!118 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 983, i32 15}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 985, i32 15}
!122 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 987, i32 15}
!124 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 989, i32 15}
!126 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 991, i32 15}
!128 = !{ptr @.str.70, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 993, i32 15}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 995, i32 15}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 997, i32 15}
!134 = !{ptr @.str.73, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 999, i32 15}
!136 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1001, i32 15}
!138 = !{ptr @.str.75, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1003, i32 15}
!140 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1005, i32 15}
!142 = !{ptr @.str.77, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1007, i32 15}
!144 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1014, i32 15}
!146 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1015, i32 17}
!148 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1016, i32 17}
!150 = !{ptr @.str.81, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1017, i32 17}
!152 = !{ptr @.str.82, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1020, i32 14}
!154 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1024, i32 15}
!156 = !{ptr @.str.84, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1026, i32 15}
!158 = !{ptr @.str.85, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1028, i32 15}
!160 = !{ptr @.str.86, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1031, i32 16}
!162 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1032, i32 16}
!164 = !{ptr @.str.88, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1033, i32 16}
!166 = !{ptr @.str.89, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1034, i32 16}
!168 = !{ptr @.str.90, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1035, i32 16}
!170 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1052, i32 2}
!172 = !{ptr @.str.92, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @etnaviv_gpu_recover_hang._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @etnaviv_gpu_recover_hang._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.93, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1365, i32 3}
!177 = !{ptr @.str.94, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1575, i32 4}
!179 = !{ptr @.str.95, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.96, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @etnaviv_gpu_wait_idle._entry, !178, !"_entry", i1 false, i1 false}
!182 = !{ptr @etnaviv_gpu_wait_idle._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.97, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1911, i32 11}
!185 = !{ptr @etnaviv_gpu_driver, !186, !"etnaviv_gpu_driver", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1909, i32 24}
!187 = !{ptr @.str.98, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 402, i32 2}
!189 = !{ptr @.str.99, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @etnaviv_hw_identify._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @etnaviv_hw_identify._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.100, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 535, i32 4}
!194 = !{ptr @.str.101, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.102, !193, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @etnaviv_hw_reset.__UNIQUE_ID_ddebug324, !193, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!197 = !{ptr @.str.103, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 545, i32 4}
!199 = !{ptr @etnaviv_hw_reset.__UNIQUE_ID_ddebug325, !198, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!200 = !{ptr @.str.104, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 561, i32 3}
!202 = !{ptr @etnaviv_hw_reset._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @etnaviv_hw_reset._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.105, !201, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.106, !201, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @init_completion.__key, !207, !"__key", i1 false, i1 false}
!207 = !{!"../include/linux/completion.h", i32 87, i32 2}
!208 = !{ptr @.str.107, !207, !"<string literal>", i1 false, i1 false}
!209 = distinct !{null, !210, !"__warned", i1 false, i1 false}
!210 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!211 = !{ptr @.str.108, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.109, !210, !"<string literal>", i1 false, i1 false}
!213 = distinct !{null, !214, !"__warned", i1 false, i1 false}
!214 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!215 = !{ptr @.str.110, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.111, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1164, i32 4}
!218 = !{ptr @.str.112, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @event_alloc._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @event_alloc._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @etnaviv_fence_ops, !222, !"etnaviv_fence_ops", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1113, i32 35}
!223 = !{ptr @.str.113, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1196, i32 3}
!225 = !{ptr @.str.114, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @event_free._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @event_free._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @etnaviv_gpu_platform_probe.__key, !229, !"__key", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1788, i32 2}
!230 = !{ptr @.str.115, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @etnaviv_gpu_platform_probe.__key.116, !232, !"__key", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1789, i32 2}
!233 = !{ptr @.str.117, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.118, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1804, i32 3}
!236 = !{ptr @.str.119, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @etnaviv_gpu_platform_probe._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @etnaviv_gpu_platform_probe._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.120, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1809, i32 51}
!241 = !{ptr @.str.121, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1810, i32 2}
!243 = !{ptr @.str.122, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1814, i32 51}
!245 = !{ptr @.str.123, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1815, i32 2}
!247 = !{ptr @.str.124, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1819, i32 43}
!249 = !{ptr @.str.125, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1820, i32 2}
!251 = !{ptr @.str.126, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1825, i32 54}
!253 = !{ptr @.str.127, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1826, i32 2}
!255 = !{ptr @.str.129, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1845, i32 3}
!257 = !{ptr @etnaviv_gpu_platform_probe._entry.128, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @etnaviv_gpu_platform_probe._entry_ptr.130, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.131, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1468, i32 3}
!261 = !{ptr @.str.132, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @irq_handler.__UNIQUE_ID_ddebug327, !260, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!263 = !{ptr @.str.133, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1471, i32 4}
!265 = !{ptr @irq_handler._entry, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @irq_handler._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.134, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1487, i32 4}
!269 = !{ptr @irq_handler.__UNIQUE_ID_ddebug328, !268, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!270 = !{ptr @.str.135, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1438, i32 2}
!272 = !{ptr @dump_mmu_fault._rs, !271, !"_rs", i1 false, i1 false}
!273 = !{ptr @__func__.dump_mmu_fault, !271, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.136, !271, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @dump_mmu_fault._entry, !271, !"_entry", i1 false, i1 false}
!276 = !{ptr @dump_mmu_fault._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @dump_mmu_fault._rs.137, !278, !"_rs", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1451, i32 3}
!279 = !{ptr @.str.139, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @dump_mmu_fault._entry.138, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @dump_mmu_fault._entry_ptr.140, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @gpu_ops, !283, !"gpu_ops", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1764, i32 35}
!284 = !{ptr @etnaviv_gpu_bind.__key, !285, !"__key", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1704, i32 2}
!286 = !{ptr @.str.141, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @etnaviv_gpu_bind.__key.142, !288, !"__key", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1706, i32 2}
!289 = !{ptr @.str.143, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @etnaviv_gpu_bind.__key.144, !291, !"__key", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1707, i32 2}
!292 = !{ptr @.str.145, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @cooling_ops, !294, !"cooling_ops", i1 false, i1 false}
!294 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1661, i32 48}
!295 = !{ptr @xa_init_flags.__key, !296, !"__key", i1 false, i1 false}
!296 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!297 = !{ptr @.str.146, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @.str.147, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1734, i32 2}
!300 = !{ptr @etnaviv_gpu_match, !301, !"etnaviv_gpu_match", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1769, i32 34}
!302 = !{ptr @etnaviv_gpu_pm_ops, !303, !"etnaviv_gpu_pm_ops", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1904, i32 32}
!304 = !{ptr @etnaviv_gpu_rpm_suspend._rs, !305, !"_rs", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 1874, i32 3}
!306 = !{ptr @__func__.etnaviv_gpu_rpm_suspend, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.148, !305, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @etnaviv_gpu_rpm_suspend._entry, !305, !"_entry", i1 false, i1 false}
!309 = !{ptr @etnaviv_gpu_rpm_suspend._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @gpu_ids, !311, !"gpu_ids", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gpu.c", i32 30, i32 40}
!312 = !{!"sp"}
!313 = !{i32 1, !"wchar_size", i32 2}
!314 = !{i32 1, !"min_enum_size", i32 4}
!315 = !{i32 8, !"branch-target-enforcement", i32 0}
!316 = !{i32 8, !"sign-return-address", i32 0}
!317 = !{i32 8, !"sign-return-address-all", i32 0}
!318 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!319 = !{i32 7, !"uwtable", i32 1}
!320 = !{i32 7, !"frame-pointer", i32 2}
!321 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!322 = !{i64 2156867000}
!323 = !{i64 6341330}
!324 = !{i64 6341748}
!325 = !{i64 2156867823}
!326 = !{i64 2148771266, i64 2148771271, i64 2148771284, i64 2148771328, i64 2148771362, i64 2148771383}
!327 = !{i64 2149338793}
!328 = !{i64 773187, i64 773211, i64 773232, i64 773249, i64 773266}
!329 = !{!"branch_weights", i32 2000, i32 1}
!330 = !{i64 2149339059}
!331 = !{i64 2148378982}
!332 = !{i64 2148293446, i64 2148293478, i64 2148293507, i64 2148293541, i64 2148293572, i64 2148293595}
!333 = !{i64 2149824758}
!334 = !{!"auto-init"}
!335 = !{i8 0, i8 2}
!336 = !{i64 2148288870}
!337 = !{i64 773693, i64 773718, i64 773740, i64 773756, i64 773768, i64 773788, i64 773812, i64 773828, i64 773840}
!338 = !{i64 2148289058}
!339 = !{!"branch_weights", i32 1, i32 2000}
!340 = !{i64 2148290981, i64 2148291013, i64 2148291042, i64 2148291076, i64 2148291107, i64 2148291130}
!341 = !{i32 0, i32 33}
