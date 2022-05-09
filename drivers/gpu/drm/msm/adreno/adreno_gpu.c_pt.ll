; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/adreno/adreno_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/adreno_gpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.106, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.106 = type { i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.adreno_info = type { %struct.adreno_rev, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
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
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.adreno_gpu_funcs = type { %struct.msm_gpu_funcs, ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.msm_fence_context = type { ptr, [32 x i8], i32, i32, i32, ptr, %struct.spinlock }
%struct.msm_rbmemptrs = type { i32, i32, [64 x %struct.msm_gpu_submit_stats], i64 }
%struct.msm_gpu_submit_stats = type { i64, i64, i64, i64 }
%struct.msm_gpu_state = type { %struct.kref, %struct.timespec64, [4 x %struct.anon.97], i32, ptr, i32, ptr, ptr, %struct.msm_gpu_fault_info, i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.anon.97 = type { i64, i32, i32, i32, i32, ptr, i32, i8 }
%struct.msm_gpu_state_bo = type { i64, i32, ptr, i8 }
%struct.ocmem_buf = type { i32, i32, i32 }
%struct.adreno_ocmem = type { ptr, i32, ptr }
%struct.msm_gpu_config = type { ptr, i32 }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.109, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.109 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }

@zap_available = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"*ERROR* SCM is not available\0A\00", [34 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: invalid param: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qcom/%s\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"loaded %s from new location\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* failed to load %s: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"loaded %s from legacy location\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"loaded %s with helper\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"*ERROR* failed to load %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* gpu hw init failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: timeout waiting to drain ringbuffer %d rptr/wptr = %X/%X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/msm/adreno/adreno_gpu.c\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"    data: !!ascii85 |\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"     \00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"revision: %d (%d.%d.%d.%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fault-info:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  - ttbr0=%.16llx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  - iova=%.16lx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"  - dir=%s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  - type=%s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  - source=%s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rbbm-status: 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ringbuffer:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"  - id: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"    iova: 0x%016llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"    last-fence: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"    retired-fence: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"    rptr: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"    wptr: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"    size: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bos:\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  - iova: 0x%016llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"    size: %zd\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"registers:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"  - { offset: 0x%04x, value: 0x%08x }\0A\00", [57 x i8] zeroinitializer }, align 32
@adreno_dump_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str.13, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adreno_dump_info\00", [47 x i8] zeroinitializer }, align 32
@adreno_dump_info._entry_ptr = internal global ptr @adreno_dump_info._entry, section ".printk_index", align 4
@adreno_dump_info._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.13, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rb %d: fence:    %d/%d\0A\00", [40 x i8] zeroinitializer }, align 32
@adreno_dump_info._entry_ptr.43 = internal global ptr @adreno_dump_info._entry.41, section ".printk_index", align 4
@adreno_dump_info._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.13, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rptr:     %d\0A\00", [18 x i8] zeroinitializer }, align 32
@adreno_dump_info._entry_ptr.46 = internal global ptr @adreno_dump_info._entry.44, section ".printk_index", align 4
@adreno_dump_info._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.13, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rb wptr:  %d\0A\00", [18 x i8] zeroinitializer }, align 32
@adreno_dump_info._entry_ptr.49 = internal global ptr @adreno_dump_info._entry.47, section ".printk_index", align 4
@adreno_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.13, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IO:region %s 00000000 00020000\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adreno_dump\00", [20 x i8] zeroinitializer }, align 32
@adreno_dump._entry_ptr = internal global ptr @adreno_dump._entry, section ".printk_index", align 4
@adreno_dump._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.13, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IO:R %08x %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@adreno_dump._entry_ptr.54 = internal global ptr @adreno_dump._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"*ERROR* timeout waiting for space in ringbuffer %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kgsl_3d0_reg_memory\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"zap-shader\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"*ERROR* Unable to load %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"*ERROR* memory region is too small to load the MDT\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* Unable to authorize the image\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"z\00", [30 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"operating-points-v2\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* Unable to set the OPP table\0A\00", [59 x i8] zeroinitializer }, align 32
@adreno_get_pwrlevels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.13, i32 877, ptr @.str.69, ptr @.str.70 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Could not find a clock rate. Using a reasonable default\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adreno_get_pwrlevels\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adreno_get_pwrlevels._entry_ptr = internal global ptr @adreno_get_pwrlevels._entry, section ".printk_index", align 4
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fast_rate=%u, slow_rate=27000000\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,gpu-pwrlevels\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not find the GPU powerlevels\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom,gpu-freq\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.75 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 620, i64 650, i64 660]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"zap_available\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 182, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 221, i32 45 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 277, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 290, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 303, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 308, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 323, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 344, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 356, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 461, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 496, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 507, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 668, i32 14 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 669, i32 14 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 673, i32 14 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 685, i32 16 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 697, i32 15 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 698, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 699, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 700, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 700, i32 67 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 700, i32 77 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 701, i32 17 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 702, i32 17 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 705, i32 16 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 707, i32 14 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 710, i32 17 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 711, i32 17 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 712, i32 17 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 713, i32 17 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 714, i32 17 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 715, i32 17 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 716, i32 17 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 723, i32 15 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 726, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 728, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 736, i32 15 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 739, i32 18 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 758, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 766, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 770, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 771, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 785, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 793, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 811, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 939, i32 29 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 43, i32 42 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 49, i32 32 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 77, i32 36 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 101, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 113, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 160, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 628, i32 62 }
@___asan_gen_.266 = private unnamed_addr constant [27 x i8] c"../include/linux/ascii85.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 28, i32 10 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 858, i32 38 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 863, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 876, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 882, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 822, i32 47 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 824, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [43 x i8] c"../drivers/gpu/drm/msm/adreno/adreno_gpu.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 831, i32 37 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @adreno_dump._entry, ptr @adreno_dump._entry.52, ptr @adreno_dump._entry_ptr, ptr @adreno_dump._entry_ptr.54, ptr @adreno_dump_info._entry, ptr @adreno_dump_info._entry.41, ptr @adreno_dump_info._entry.44, ptr @adreno_dump_info._entry.47, ptr @adreno_dump_info._entry_ptr, ptr @adreno_dump_info._entry_ptr.43, ptr @adreno_dump_info._entry_ptr.46, ptr @adreno_dump_info._entry_ptr.49, ptr @adreno_get_pwrlevels._entry, ptr @adreno_get_pwrlevels._entry_ptr, ptr @zap_available, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zap_available to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adreno_dump_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adreno_dump_info._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adreno_dump_info._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adreno_dump_info._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adreno_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adreno_dump._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adreno_get_pwrlevels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adreno_zap_shader_load(ptr nocapture noundef %gpu, i32 noundef %pasid) local_unnamed_addr #0 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %fw.i = alloca ptr, align 4
  %signed_fwname.i = alloca ptr, align 4
  %r.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %.b = load i1, ptr @zap_available, align 1
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @qcom_scm_is_available() #8
  br i1 %call, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %info = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %zapfw = getelementptr inbounds %struct.adreno_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %zapfw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zapfw, align 4
  %6 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev1, align 8
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #8
  %8 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %signed_fwname.i) #8
  %9 = ptrtoint ptr %signed_fwname.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %signed_fwname.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r.i) #8
  %10 = getelementptr inbounds %struct.resource, ptr %r.i, i32 0, i32 1
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 27
  %11 = call ptr @memset(ptr %r.i, i32 255, i32 32)
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_get_child_by_name(ptr noundef %13, ptr noundef nonnull @.str.57) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @zap_available, align 1
  br label %zap_shader_load_mdt.exit

if.end.i:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #8
  %14 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.58, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  call void @of_node_put(ptr noundef nonnull %call.i) #8
  br label %if.then4.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i
  %15 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  call void @of_node_put(ptr noundef nonnull %call.i) #8
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %of_parse_phandle.exit.i.if.then4.i_crit_edge, label %if.end5.i

of_parse_phandle.exit.i.if.then4.i_crit_edge:     ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i:                                       ; preds = %of_parse_phandle.exit.i.if.then4.i_crit_edge, %of_parse_phandle.exit.thread.i
  store i1 true, ptr @zap_available, align 1
  br label %zap_shader_load_mdt.exit

if.end5.i:                                        ; preds = %of_parse_phandle.exit.i
  %call6.i = call i32 @of_address_to_resource(ptr noundef nonnull %16, i32 noundef 0, ptr noundef nonnull %r.i) #8
  call void @of_node_put(ptr noundef nonnull %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.zap_shader_load_mdt.exit_crit_edge

if.end5.i.zap_shader_load_mdt.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zap_shader_load_mdt.exit

if.end9.i:                                        ; preds = %if.end5.i
  %17 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %r.i, align 4
  %call.i114.i = call i32 @of_property_read_string_helper(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.59, ptr noundef nonnull %signed_fwname.i, i32 noundef 1, i32 noundef 0) #8
  %19 = ptrtoint ptr %signed_fwname.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %signed_fwname.i, align 4
  %tobool11.not.i = icmp eq ptr %20, null
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end9.i
  %dev13.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %21 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev13.i, align 4
  %dev14.i = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev14.i, align 4
  %call15.i = call i32 @request_firmware_direct(ptr noundef nonnull %fw.i, ptr noundef nonnull %20, ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end25thread-pre-split.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = inttoptr i32 %call15.i to ptr
  %26 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %fw.i, align 4
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end9.i
  %tobool20.not.i = icmp eq ptr %5, null
  br i1 %tobool20.not.i, label %if.else.i.zap_shader_load_mdt.exit_crit_edge, label %if.then21.i

if.else.i.zap_shader_load_mdt.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zap_shader_load_mdt.exit

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i = call ptr @adreno_request_fw(ptr noundef %gpu, ptr noundef nonnull %5) #8
  %27 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call22.i, ptr %fw.i, align 4
  br label %if.end25.i

if.end25thread-pre-split.i:                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr.i = load ptr, ptr %fw.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end25thread-pre-split.i, %if.then21.i, %if.then17.i
  %29 = phi ptr [ %.pr.i, %if.end25thread-pre-split.i ], [ %25, %if.then17.i ], [ %call22.i, %if.then21.i ]
  %fwname.addr.0.i = phi ptr [ %20, %if.end25thread-pre-split.i ], [ %20, %if.then17.i ], [ %5, %if.then21.i ]
  %cmp.i.i = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then27.i, label %if.end29.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.60, ptr noundef nonnull %fwname.addr.0.i) #8
  %30 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw.i, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %zap_shader_load_mdt.exit

if.end29.i:                                       ; preds = %if.end25.i
  %call30.i = call i32 @qcom_mdt_get_size(ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp.i = icmp slt i32 %call30.i, 0
  br i1 %cmp.i, label %if.end29.i.if.end65.i_crit_edge, label %if.end32.i

if.end29.i.if.end65.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.end32.i:                                       ; preds = %if.end29.i
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %10, align 4
  %35 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %r.i, align 4
  %sub.i.i = add i32 %34, 1
  %add.i.i = sub i32 %sub.i.i, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %call30.i, i32 %add.i.i)
  %cmp34.i = icmp ugt i32 %call30.i, %add.i.i
  br i1 %cmp34.i, label %if.then35.i, label %if.end36.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.61) #8
  br label %if.end65.i

if.end36.i:                                       ; preds = %if.end32.i
  %call37.i = call ptr @memremap(i32 noundef %18, i32 noundef %call30.i, i32 noundef 4) #8
  %tobool38.not.i = icmp eq ptr %call37.i, null
  br i1 %tobool38.not.i, label %if.end36.i.if.end65.i_crit_edge, label %if.end40.i

if.end36.i.if.end65.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.end40.i:                                       ; preds = %if.end36.i
  %37 = ptrtoint ptr %signed_fwname.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %signed_fwname.i, align 4
  %tobool41.not.i = icmp eq ptr %38, null
  br i1 %tobool41.not.i, label %lor.lhs.false.i, label %if.end40.i.if.then46.i_crit_edge

if.end40.i.if.then46.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46.i

lor.lhs.false.i:                                  ; preds = %if.end40.i
  %fwloc.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 7
  %39 = ptrtoint ptr %fwloc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fwloc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp45.i = icmp eq i32 %40, 2
  br i1 %cmp45.i, label %lor.lhs.false.i.if.then46.i_crit_edge, label %if.else48.i

lor.lhs.false.i.if.then46.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46.i

if.then46.i:                                      ; preds = %lor.lhs.false.i.if.then46.i_crit_edge, %if.end40.i.if.then46.i_crit_edge
  %41 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fw.i, align 4
  %call47.i = call i32 @qcom_mdt_load(ptr noundef %dev1.i, ptr noundef %42, ptr noundef nonnull %fwname.addr.0.i, i32 noundef %pasid, ptr noundef nonnull %call37.i, i32 noundef %18, i32 noundef %call30.i, ptr noundef null) #8
  br label %if.end51.i

if.else48.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %call49.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef nonnull %fwname.addr.0.i) #8
  %43 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw.i, align 4
  %call50.i = call i32 @qcom_mdt_load(ptr noundef %dev1.i, ptr noundef %44, ptr noundef %call49.i, i32 noundef %pasid, ptr noundef nonnull %call37.i, i32 noundef %18, i32 noundef %call30.i, ptr noundef null) #8
  call void @kfree(ptr noundef %call49.i) #8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else48.i, %if.then46.i
  %ret.0.i = phi i32 [ %call47.i, %if.then46.i ], [ %call50.i, %if.else48.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool52.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %if.end51.i.if.then64.i_crit_edge

if.end51.i.if.then64.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64.i

if.end54.i:                                       ; preds = %if.end51.i
  %call55.i = call i32 @qcom_scm_pas_auth_and_reset(i32 noundef %pasid) #8
  %45 = zext i32 %call55.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call55.i, label %if.then60.i [
    i32 -95, label %if.then57.i
    i32 0, label %if.end54.i.if.then64.i_crit_edge
  ]

if.end54.i.if.then64.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @zap_available, align 1
  br label %if.then64.i

if.then60.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.62) #8
  br label %if.then64.i

if.then64.i:                                      ; preds = %if.then60.i, %if.then57.i, %if.end54.i.if.then64.i_crit_edge, %if.end51.i.if.then64.i_crit_edge
  %ret.1.ph.i = phi i32 [ %call55.i, %if.end54.i.if.then64.i_crit_edge ], [ %call55.i, %if.then60.i ], [ -95, %if.then57.i ], [ %ret.0.i, %if.end51.i.if.then64.i_crit_edge ]
  call void @memunmap(ptr noundef nonnull %call37.i) #8
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then64.i, %if.end36.i.if.end65.i_crit_edge, %if.then35.i, %if.end29.i.if.end65.i_crit_edge
  %ret.1122.i = phi i32 [ %ret.1.ph.i, %if.then64.i ], [ -7, %if.then35.i ], [ %call30.i, %if.end29.i.if.end65.i_crit_edge ], [ -12, %if.end36.i.if.end65.i_crit_edge ]
  %46 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %47) #8
  br label %zap_shader_load_mdt.exit

zap_shader_load_mdt.exit:                         ; preds = %if.end65.i, %if.then27.i, %if.else.i.zap_shader_load_mdt.exit_crit_edge, %if.end5.i.zap_shader_load_mdt.exit_crit_edge, %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %32, %if.then27.i ], [ %ret.1122.i, %if.end65.i ], [ -22, %if.then4.i ], [ -19, %if.then.i ], [ %call6.i, %if.end5.i.zap_shader_load_mdt.exit_crit_edge ], [ -19, %if.else.i.zap_shader_load_mdt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %signed_fwname.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #8
  br label %cleanup

cleanup:                                          ; preds = %zap_shader_load_mdt.exit, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %zap_shader_load_mdt.exit ], [ -517, %if.then2 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_is_available() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adreno_set_llc_attributes(ptr noundef %iommu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iommu_set_pgtable_quirks(ptr noundef %iommu, i32 noundef 64) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_set_pgtable_quirks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @adreno_iommu_create_address_space(ptr nocapture noundef readnone %gpu, ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @msm_iommu_new(ptr noundef %dev, ptr noundef nonnull %call) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iommu_domain_free(ptr noundef nonnull %call) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %geometry = getelementptr inbounds %struct.iommu_domain, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %geometry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %geometry, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 16777216)
  %cond = zext i32 %2 to i64
  %aperture_end = getelementptr inbounds %struct.iommu_domain, ptr %call, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %aperture_end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %aperture_end, align 4
  %conv8 = zext i32 %4 to i64
  %sub = sub nsw i64 1, %cond
  %add = add nsw i64 %sub, %conv8
  %call9 = tail call ptr @msm_gem_address_space_create(ptr noundef %call1, ptr noundef nonnull @.str.2, i64 noundef %cond, i64 noundef %add) #8
  %cmp.i32 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32, label %if.then13, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call1, align 4
  %destroy = getelementptr inbounds %struct.msm_mmu_funcs, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %destroy, align 4
  tail call void %8(ptr noundef %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.then3 ], [ null, %entry.cleanup_crit_edge ], [ %call9, %if.then13 ], [ %call9, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_iommu_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_create(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adreno_get_param(ptr noundef %gpu, i32 noundef %param, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %param, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 6, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb18
    i32 5, label %sw.bb20
    i32 7, label %sw.bb29
    i32 8, label %sw.bb31
    i32 9, label %sw.bb32
    i32 10, label %sw.bb34
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %info = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 2
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  %revn = getelementptr inbounds %struct.adreno_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %revn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %revn, align 4
  %conv = zext i32 %4 to i64
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %value, align 8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gmem = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 3
  %6 = ptrtoint ptr %gmem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gmem, align 8
  %conv2 = zext i32 %7 to i64
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv2, ptr %value, align 8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %9 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %revn.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %10, label %adreno_is_a650_family.exit [
    i32 650, label %sw.bb3.adreno_is_a650_family.exit.thread_crit_edge
    i32 620, label %sw.bb3.adreno_is_a650_family.exit.thread_crit_edge64
    i32 660, label %sw.bb3.adreno_is_a650_family.exit.thread_crit_edge65
  ]

sw.bb3.adreno_is_a650_family.exit.thread_crit_edge65: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %adreno_is_a650_family.exit.thread

sw.bb3.adreno_is_a650_family.exit.thread_crit_edge64: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %adreno_is_a650_family.exit.thread

sw.bb3.adreno_is_a650_family.exit.thread_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %adreno_is_a650_family.exit.thread

adreno_is_a650_family.exit:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %rev.i.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %12 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack.i.i.i = load i32, ptr %rev.i.i.i, align 8
  %13 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i, 0
  %call.i.i.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %13) #8
  %spec.select = select i1 %call.i.i.i, i32 0, i32 1048576
  br label %adreno_is_a650_family.exit.thread

adreno_is_a650_family.exit.thread:                ; preds = %adreno_is_a650_family.exit, %sw.bb3.adreno_is_a650_family.exit.thread_crit_edge, %sw.bb3.adreno_is_a650_family.exit.thread_crit_edge64, %sw.bb3.adreno_is_a650_family.exit.thread_crit_edge65
  %14 = phi i32 [ 0, %sw.bb3.adreno_is_a650_family.exit.thread_crit_edge ], [ 0, %sw.bb3.adreno_is_a650_family.exit.thread_crit_edge64 ], [ 0, %sw.bb3.adreno_is_a650_family.exit.thread_crit_edge65 ], [ %spec.select, %adreno_is_a650_family.exit ]
  %15 = zext i32 %14 to i64
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %value, align 8
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rev = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %patchid = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %patchid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %patchid, align 1
  %conv6 = zext i8 %18 to i32
  %minor = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %minor, align 2
  %conv8 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %conv8, 8
  %or = or i32 %shl, %conv6
  %major = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %major, align 1
  %conv10 = zext i8 %22 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %or12 = or i32 %or, %shl11
  %23 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rev, align 8
  %conv14 = zext i8 %24 to i32
  %shl15 = shl nuw i32 %conv14, 24
  %or16 = or i32 %or12, %shl15
  %conv17 = sext i32 %or16 to i64
  %25 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv17, ptr %value, align 8
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fast_rate = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 32
  %26 = ptrtoint ptr %fast_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fast_rate, align 8
  %conv19 = zext i32 %27 to i64
  %28 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv19, ptr %value, align 8
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  %funcs = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 5
  %29 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %funcs, align 8
  %get_timestamp = getelementptr inbounds %struct.adreno_gpu_funcs, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %get_timestamp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_timestamp, align 4
  %tobool21.not = icmp eq ptr %32, null
  br i1 %tobool21.not, label %sw.bb20.cleanup_crit_edge, label %if.then

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %35 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %funcs, align 8
  %get_timestamp24 = getelementptr inbounds %struct.adreno_gpu_funcs, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %get_timestamp24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_timestamp24, align 4
  %call25 = tail call i32 %38(ptr noundef %gpu, ptr noundef %value) #8
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 8
  %dev27 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  %call.i62 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev27, i32 noundef 13) #8
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %41 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_rings, align 4
  %mul = mul i32 %42, 3
  %conv30 = sext i32 %mul to i64
  %43 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv30, ptr %value, align 8
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %value, align 8
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %global_faults = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 21
  %45 = ptrtoint ptr %global_faults to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %global_faults, align 4
  %conv33 = sext i32 %46 to i64
  %47 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv33, ptr %value, align 8
  br label %cleanup

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %suspend_count = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 42
  %48 = ptrtoint ptr %suspend_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %suspend_count, align 8
  %conv35 = zext i32 %49 to i64
  %50 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv35, ptr %value, align 8
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gpu, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef %52, i32 noundef %param) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb34, %sw.bb32, %sw.bb31, %sw.bb29, %if.then, %sw.bb20.cleanup_crit_edge, %sw.bb18, %sw.bb5, %adreno_is_a650_family.exit.thread, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb34 ], [ 0, %sw.bb32 ], [ 0, %sw.bb31 ], [ 0, %sw.bb29 ], [ %call25, %if.then ], [ 0, %sw.bb18 ], [ 0, %sw.bb5 ], [ 0, %adreno_is_a650_family.exit.thread ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %sw.bb20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @adreno_request_fw(ptr nocapture noundef %adreno_gpu, ptr noundef %fwname) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.msm_gpu, ptr %adreno_gpu, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef %fwname) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fwloc = getelementptr inbounds %struct.adreno_gpu, ptr %adreno_gpu, i32 0, i32 7
  %3 = ptrtoint ptr %fwloc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fwloc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp ult i32 %4, 2
  br i1 %switch, label %if.then4, label %if.end18

if.then4:                                         ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 4
  %call6 = call i32 @request_firmware_direct(ptr noundef nonnull %fw, ptr noundef nonnull %call, ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %call) #8
  %9 = ptrtoint ptr %fwloc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %fwloc, align 8
  br label %out

if.else:                                          ; preds = %if.then4
  %10 = ptrtoint ptr %fwloc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fwloc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp12.not = icmp eq i32 %11, 0
  br i1 %cmp12.not, label %if.else.if.then24_crit_edge, label %if.then13

if.else.if.then24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull %call, i32 noundef %call6) #8
  %14 = inttoptr i32 %call6 to ptr
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %fw, align 4
  br label %out

if.end18:                                         ; preds = %if.end
  %16 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %4, label %if.end18.if.end60_crit_edge [
    i32 2, label %if.end18.if.then24_crit_edge
    i32 3, label %if.end18.if.then45_crit_edge
  ]

if.end18.if.then45_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.end18.if.then24_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.end18.if.end60_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then24:                                        ; preds = %if.end18.if.then24_crit_edge, %if.else.if.then24_crit_edge
  %dev25 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev25, align 4
  %call26 = call i32 @request_firmware_direct(ptr noundef nonnull %fw, ptr noundef %fwname, ptr noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.else31

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev25, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %20, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, ptr noundef nonnull %call) #8
  %21 = ptrtoint ptr %fwloc to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %fwloc, align 8
  br label %out

if.else31:                                        ; preds = %if.then24
  %22 = ptrtoint ptr %fwloc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fwloc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp33.not = icmp eq i32 %23, 0
  br i1 %cmp33.not, label %if.else31.if.then45_crit_edge, label %if.then34

if.else31.if.then45_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.then34:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev25, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef %fwname, i32 noundef %call26) #8
  %26 = inttoptr i32 %call26 to ptr
  %27 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %fw, align 4
  br label %out

if.then45:                                        ; preds = %if.else31.if.then45_crit_edge, %if.end18.if.then45_crit_edge
  %dev46 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev46, align 4
  %call47 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %call, ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.else52

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev46, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %31, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, ptr noundef nonnull %call) #8
  %32 = ptrtoint ptr %fwloc to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %fwloc, align 8
  br label %out

if.else52:                                        ; preds = %if.then45
  %33 = ptrtoint ptr %fwloc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fwloc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp54.not = icmp eq i32 %34, 0
  br i1 %cmp54.not, label %if.else52.if.end60_crit_edge, label %if.then55

if.else52.if.end60_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then55:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev46, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %36, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull %call, i32 noundef %call47) #8
  %37 = inttoptr i32 %call47 to ptr
  %38 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %fw, align 4
  br label %out

if.end60:                                         ; preds = %if.else52.if.end60_crit_edge, %if.end18.if.end60_crit_edge
  %dev61 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev61, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %40, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, ptr noundef %fwname) #8
  %41 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -2 to ptr), ptr %fw, align 4
  br label %out

out:                                              ; preds = %if.end60, %if.then55, %if.then49, %if.then34, %if.then28, %if.then13, %if.then8
  call void @kfree(ptr noundef nonnull %call) #8
  %42 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fw, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %43, %out ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adreno_load_fw(ptr nocapture noundef %adreno_gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.adreno_gpu, ptr %adreno_gpu, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %arrayidx = getelementptr %struct.adreno_info, ptr %1, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr %struct.adreno_gpu, ptr %adreno_gpu, i32 0, i32 8, i32 0
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end6, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %call = tail call ptr @adreno_request_fw(ptr noundef %adreno_gpu, ptr noundef nonnull %3)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %arrayidx3, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.end6.2.cleanup_crit_edge, %if.end6.1.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %call.lcssa = phi ptr [ %call, %if.end6.cleanup_crit_edge ], [ %call.1, %if.end6.1.cleanup_crit_edge ], [ %call.2, %if.end6.2.cleanup_crit_edge ]
  %7 = ptrtoint ptr %call.lcssa to i32
  br label %cleanup16

for.inc:                                          ; preds = %if.end13, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %arrayidx.1 = getelementptr %struct.adreno_info, ptr %9, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %11, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %arrayidx3.1 = getelementptr %struct.adreno_gpu, ptr %adreno_gpu, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.1, align 4
  %tobool4.not.1 = icmp eq ptr %13, null
  br i1 %tobool4.not.1, label %if.end6.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end6.1:                                        ; preds = %if.end.1
  %call.1 = tail call ptr @adreno_request_fw(ptr noundef %adreno_gpu, ptr noundef nonnull %11)
  %cmp.i.1 = icmp ugt ptr %call.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end6.1.cleanup_crit_edge, label %if.end13.1

if.end6.1.cleanup_crit_edge:                      ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.1:                                       ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.1, ptr %arrayidx3.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end13.1, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  %arrayidx.2 = getelementptr %struct.adreno_info, ptr %16, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %18, null
  br i1 %tobool.not.2, label %for.inc.1.cleanup16_crit_edge, label %if.end.2

for.inc.1.cleanup16_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

if.end.2:                                         ; preds = %for.inc.1
  %arrayidx3.2 = getelementptr %struct.adreno_gpu, ptr %adreno_gpu, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx3.2, align 4
  %tobool4.not.2 = icmp eq ptr %20, null
  br i1 %tobool4.not.2, label %if.end6.2, label %if.end.2.cleanup16_crit_edge

if.end.2.cleanup16_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

if.end6.2:                                        ; preds = %if.end.2
  %call.2 = tail call ptr @adreno_request_fw(ptr noundef %adreno_gpu, ptr noundef nonnull %18)
  %cmp.i.2 = icmp ugt ptr %call.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.end6.2.cleanup_crit_edge, label %if.end13.2

if.end6.2.cleanup_crit_edge:                      ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.2:                                       ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.2, ptr %arrayidx3.2, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %if.end13.2, %if.end.2.cleanup16_crit_edge, %for.inc.1.cleanup16_crit_edge, %cleanup
  %retval.2 = phi i32 [ %7, %cleanup ], [ 0, %if.end13.2 ], [ 0, %if.end.2.cleanup16_crit_edge ], [ 0, %for.inc.1.cleanup16_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @adreno_fw_create_bo(ptr nocapture noundef readonly %gpu, ptr nocapture noundef readonly %fw, ptr noundef %iova) local_unnamed_addr #0 align 64 {
entry:
  %bo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #8
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bo, align 4, !annotation !153
  %dev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw, align 4
  %sub = add i32 %4, -4
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %5 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aspace, align 8
  %call = call ptr @msm_gem_kernel_new(ptr noundef %2, i32 noundef %sub, i32 noundef 131074, ptr noundef %6, ptr noundef nonnull %bo, ptr noundef %iova) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw, align 4
  %sub4 = add i32 %10, -4
  %11 = call ptr @memcpy(ptr %call, ptr %arrayidx, i32 %sub4)
  %12 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bo, align 4
  call void @msm_gem_put_vaddr(ptr noundef %13) #8
  %14 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adreno_hw_init(ptr nocapture noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @adreno_load_fw(ptr noundef %gpu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup6_crit_edge

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup6

for.cond.preheader:                               ; preds = %entry
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %0 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21 = icmp sgt i32 %1, 0
  br i1 %cmp21, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup6_crit_edge

for.cond.preheader.cleanup6_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup6

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 %i.022
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %for.body.cleanup_crit_edge, label %if.end3

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %start = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start, align 4
  %cur = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %cur, align 4
  %next = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %next, align 8
  %fctx = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %fctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fctx, align 8
  %completed_fence = getelementptr inbounds %struct.msm_fence_context, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %completed_fence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %completed_fence, align 4
  %memptrs = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %memptrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memptrs, align 8
  %fence = getelementptr inbounds %struct.msm_rbmemptrs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %11, ptr %fence, align 4
  %15 = load ptr, ptr %memptrs, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %15, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.022, 1
  %17 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_rings, align 4
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup6_crit_edge

cleanup.cleanup6_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup6

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup6:                                         ; preds = %cleanup.cleanup6_crit_edge, %for.cond.preheader.cleanup6_crit_edge, %entry.cleanup6_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup6_crit_edge ], [ 0, %for.cond.preheader.cleanup6_crit_edge ], [ 0, %cleanup.cleanup6_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @adreno_active_ring(ptr nocapture noundef readonly %gpu) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rb = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 13
  %0 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adreno_recover(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %funcs = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %pm_suspend = getelementptr inbounds %struct.msm_gpu_funcs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pm_suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pm_suspend, align 4
  %call = tail call i32 %5(ptr noundef %gpu) #8
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %pm_resume = getelementptr inbounds %struct.msm_gpu_funcs, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %pm_resume to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pm_resume, align 4
  %call3 = tail call i32 %9(ptr noundef %gpu) #8
  %call4 = tail call i32 @msm_gpu_hw_init(ptr noundef %gpu) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %call4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adreno_flush(ptr nocapture noundef readonly %gpu, ptr nocapture noundef %ring, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %next = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next, align 8
  %cur = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %cur, align 4
  %start.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 3
  %3 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %start.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  %rem.i = srem i32 %sub.ptr.div.i, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 8
  %shl.i = shl i32 %reg, 2
  %add.ptr.i = getelementptr i8, ptr %6, i32 %shl.i
  tail call void @msm_writel(i32 noundef %rem.i, ptr noundef %add.ptr.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @adreno_idle(ptr noundef %gpu, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 5
  %0 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur.i, align 4
  %start.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 3
  %2 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  %rem.i = srem i32 %sub.ptr.div.i, 8192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %funcs.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  %add.neg = sub i32 -100, %4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %5 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs.i, align 4
  %get_rptr.i = getelementptr inbounds %struct.msm_gpu_funcs, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %get_rptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_rptr.i, align 4
  %call.i = tail call i32 %8(ptr noundef %gpu, ptr noundef %ring) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %rem.i)
  %cmp = icmp eq i32 %call.i, %rem.i
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %do.cond

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %9
  %cmp3 = icmp slt i32 %sub, 0
  br i1 %cmp3, label %do.cond.do.body_crit_edge, label %if.end6

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end6:                                          ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpu, align 8
  %id = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %14 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs.i, align 4
  %get_rptr.i16 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %get_rptr.i16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_rptr.i16, align 4
  %call.i17 = tail call i32 %17(ptr noundef %gpu, ptr noundef %ring) #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, ptr noundef %11, i32 noundef %13, i32 noundef %call.i17, i32 noundef %rem.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.body.cleanup_crit_edge
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adreno_gpu_state_get(ptr noundef %gpu, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 17
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #8
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !155

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 507, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %state, align 4
  %time = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %time) #8
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %1 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp218 = icmp sgt i32 %2, 0
  br i1 %cmp218, label %for.body.lr.ph, label %if.end.for.end82_crit_edge

if.end.for.end82_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end82

for.body.lr.ph:                                   ; preds = %if.end
  %funcs.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end79.for.body_crit_edge, %for.body.lr.ph
  %i.0219 = phi i32 [ 0, %for.body.lr.ph ], [ %inc81, %if.end79.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 %i.0219
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %memptrs = getelementptr inbounds %struct.msm_ringbuffer, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %memptrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %memptrs, align 8
  %fence = getelementptr inbounds %struct.msm_rbmemptrs, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %fence, align 4
  %arrayidx21 = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0219
  %fence22 = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0219, i32 1
  %9 = ptrtoint ptr %fence22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fence22, align 8
  %10 = load ptr, ptr %arrayidx, align 4
  %iova = getelementptr inbounds %struct.msm_ringbuffer, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %iova, align 8
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %arrayidx21, align 8
  %14 = load ptr, ptr %arrayidx, align 4
  %seqno = getelementptr inbounds %struct.msm_ringbuffer, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seqno, align 8
  %seqno32 = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0219, i32 2
  %17 = ptrtoint ptr %seqno32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %seqno32, align 4
  %18 = load ptr, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs.i, align 4
  %get_rptr.i = getelementptr inbounds %struct.msm_gpu_funcs, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %get_rptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_rptr.i, align 4
  %call.i = tail call i32 %22(ptr noundef %gpu, ptr noundef %18) #8
  %rptr = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0219, i32 3
  %23 = ptrtoint ptr %rptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i, ptr %rptr, align 8
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %cur.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cur.i, align 4
  %start.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %start.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  %rem.i = srem i32 %sub.ptr.div.i, 8192
  %wptr = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0219, i32 4
  %30 = ptrtoint ptr %wptr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %rem.i, ptr %wptr, align 4
  %31 = load ptr, ptr %arrayidx, align 4
  %start = getelementptr inbounds %struct.msm_ringbuffer, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %start, align 4
  br label %for.body51

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.body
  %j.0217 = phi i32 [ %rem.i, %for.body ], [ %add, %for.body51.for.body51_crit_edge ]
  %size.0216 = phi i32 [ %rem.i, %for.body ], [ %spec.select, %for.body51.for.body51_crit_edge ]
  %arrayidx54 = getelementptr i32, ptr %33, i32 %j.0217
  %34 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool55.not = icmp eq i32 %35, 0
  %add = add nsw i32 %j.0217, 1
  %spec.select = select i1 %tobool55.not, i32 %size.0216, i32 %add
  %exitcond.not = icmp eq i32 %add, 8192
  br i1 %exitcond.not, label %for.end, label %for.body51.for.body51_crit_edge

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body51

for.end:                                          ; preds = %for.body51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool58.not = icmp eq i32 %spec.select, 0
  br i1 %tobool58.not, label %for.end.if.end79_crit_edge, label %if.then59

for.end.if.end79_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then59:                                        ; preds = %for.end
  %shl = shl i32 %spec.select, 2
  %call.i211 = tail call noalias ptr @kvmalloc_node(i32 noundef %shl, i32 noundef 3264, i32 noundef -1) #11
  %data = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0219, i32 5
  %36 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i211, ptr %data, align 8
  %tobool66.not = icmp eq ptr %call.i211, null
  br i1 %tobool66.not, label %if.then59.if.end79_crit_edge, label %if.then67

if.then59.if.end79_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then67:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %start73 = getelementptr inbounds %struct.msm_ringbuffer, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %start73 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %start73, align 4
  %41 = call ptr @memcpy(ptr %call.i211, ptr %40, i32 %shl)
  %data_size = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0219, i32 6
  %42 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shl, ptr %data_size, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then67, %if.then59.if.end79_crit_edge, %for.end.if.end79_crit_edge
  %inc81 = add nuw nsw i32 %i.0219, 1
  %43 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_rings, align 4
  %cmp = icmp slt i32 %inc81, %44
  br i1 %cmp, label %if.end79.for.body_crit_edge, label %if.end79.for.end82_crit_edge

if.end79.for.end82_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end82

if.end79.for.body_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end82:                                        ; preds = %if.end79.for.end82_crit_edge, %if.end.for.end82_crit_edge
  %registers = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 6
  %45 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %registers, align 4
  %tobool83.not = icmp eq ptr %46, null
  br i1 %tobool83.not, label %for.end82.cleanup_crit_edge, label %for.cond86.preheader

for.end82.cleanup_crit_edge:                      ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond86.preheader:                             ; preds = %for.end82
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp89.not221 = icmp eq i32 %48, -1
  br i1 %cmp89.not221, label %for.cond86.preheader.for.end100_crit_edge, label %for.cond86.preheader.for.body90_crit_edge

for.cond86.preheader.for.body90_crit_edge:        ; preds = %for.cond86.preheader
  br label %for.body90

for.cond86.preheader.for.end100_crit_edge:        ; preds = %for.cond86.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end100

for.body90:                                       ; preds = %for.body90.for.body90_crit_edge, %for.cond86.preheader.for.body90_crit_edge
  %49 = phi i32 [ %53, %for.body90.for.body90_crit_edge ], [ %48, %for.cond86.preheader.for.body90_crit_edge ]
  %count.0223 = phi i32 [ %add97, %for.body90.for.body90_crit_edge ], [ 0, %for.cond86.preheader.for.body90_crit_edge ]
  %i.1222 = phi i32 [ %add99, %for.body90.for.body90_crit_edge ], [ 0, %for.cond86.preheader.for.body90_crit_edge ]
  %add92 = or i32 %i.1222, 1
  %arrayidx93 = getelementptr i32, ptr %46, i32 %add92
  %50 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx93, align 4
  %sub = add i32 %count.0223, 1
  %add96 = sub i32 %sub, %49
  %add97 = add i32 %add96, %51
  %add99 = add i32 %i.1222, 2
  %arrayidx88 = getelementptr i32, ptr %46, i32 %add99
  %52 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx88, align 4
  %cmp89.not = icmp eq i32 %53, -1
  br i1 %cmp89.not, label %for.body90.for.end100_crit_edge, label %for.body90.for.body90_crit_edge

for.body90.for.body90_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body90

for.body90.for.end100_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end100

for.end100:                                       ; preds = %for.body90.for.end100_crit_edge, %for.cond86.preheader.for.end100_crit_edge
  %count.0.lcssa = phi i32 [ 0, %for.cond86.preheader.for.end100_crit_edge ], [ %add97, %for.body90.for.end100_crit_edge ]
  %mul = shl i32 %count.0.lcssa, 1
  %54 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 4) #8
  %55 = extractvalue { i32, i1 } %54, 1
  br i1 %55, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !156

kcalloc.exit.thread:                              ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #10
  %registers102214 = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 4
  %56 = ptrtoint ptr %registers102214 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %registers102214, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %for.end100
  %57 = extractvalue { i32, i1 } %54, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %57, i32 noundef 3520) #11
  %registers102 = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 4
  %58 = ptrtoint ptr %registers102 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call8.i.i, ptr %registers102, align 4
  %tobool104.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool104.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond106.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond106.preheader:                            ; preds = %if.end7.i.i
  %59 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %registers, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp109.not228 = icmp eq i32 %62, -1
  br i1 %cmp109.not228, label %for.cond106.preheader.for.end132_crit_edge, label %for.body110.lr.ph

for.cond106.preheader.for.end132_crit_edge:       ; preds = %for.cond106.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end132

for.body110.lr.ph:                                ; preds = %for.cond106.preheader
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  br label %for.body110

for.body110:                                      ; preds = %for.end129.for.body110_crit_edge, %for.body110.lr.ph
  %63 = phi i32 [ %62, %for.body110.lr.ph ], [ %78, %for.end129.for.body110_crit_edge ]
  %64 = phi ptr [ %60, %for.body110.lr.ph ], [ %76, %for.end129.for.body110_crit_edge ]
  %pos.0230 = phi i32 [ 0, %for.body110.lr.ph ], [ %pos.1.lcssa, %for.end129.for.body110_crit_edge ]
  %i.2229 = phi i32 [ 0, %for.body110.lr.ph ], [ %add131, %for.end129.for.body110_crit_edge ]
  %add115 = or i32 %i.2229, 1
  %arrayidx116 = getelementptr i32, ptr %64, i32 %add115
  %65 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %66)
  %cmp118.not224 = icmp ugt i32 %63, %66
  br i1 %cmp118.not224, label %for.body110.for.end129_crit_edge, label %for.body110.for.body119_crit_edge

for.body110.for.body119_crit_edge:                ; preds = %for.body110
  br label %for.body119

for.body110.for.end129_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end129

for.body119:                                      ; preds = %for.body119.for.body119_crit_edge, %for.body110.for.body119_crit_edge
  %addr.0226 = phi i32 [ %inc128, %for.body119.for.body119_crit_edge ], [ %63, %for.body110.for.body119_crit_edge ]
  %pos.1225 = phi i32 [ %inc125, %for.body119.for.body119_crit_edge ], [ %pos.0230, %for.body110.for.body119_crit_edge ]
  %67 = ptrtoint ptr %registers102 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %registers102, align 4
  %inc121 = add i32 %pos.1225, 1
  %arrayidx122 = getelementptr i32, ptr %68, i32 %pos.1225
  %69 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %addr.0226, ptr %arrayidx122, align 4
  %70 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio.i, align 8
  %shl.i = shl i32 %addr.0226, 2
  %add.ptr.i = getelementptr i8, ptr %71, i32 %shl.i
  %call.i212 = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #8
  %72 = ptrtoint ptr %registers102 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %registers102, align 4
  %inc125 = add i32 %pos.1225, 2
  %arrayidx126 = getelementptr i32, ptr %73, i32 %inc121
  %74 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call.i212, ptr %arrayidx126, align 4
  %inc128 = add i32 %addr.0226, 1
  %cmp118.not = icmp ugt i32 %inc128, %66
  br i1 %cmp118.not, label %for.body119.for.end129_crit_edge, label %for.body119.for.body119_crit_edge

for.body119.for.body119_crit_edge:                ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body119

for.body119.for.end129_crit_edge:                 ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end129

for.end129:                                       ; preds = %for.body119.for.end129_crit_edge, %for.body110.for.end129_crit_edge
  %pos.1.lcssa = phi i32 [ %pos.0230, %for.body110.for.end129_crit_edge ], [ %inc125, %for.body119.for.end129_crit_edge ]
  %add131 = add i32 %i.2229, 2
  %75 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %registers, align 4
  %arrayidx108 = getelementptr i32, ptr %76, i32 %add131
  %77 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx108, align 4
  %cmp109.not = icmp eq i32 %78, -1
  br i1 %cmp109.not, label %for.end129.for.end132_crit_edge, label %for.end129.for.body110_crit_edge

for.end129.for.body110_crit_edge:                 ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body110

for.end129.for.end132_crit_edge:                  ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end132

for.end132:                                       ; preds = %for.end129.for.end132_crit_edge, %for.cond106.preheader.for.end132_crit_edge
  %nr_registers = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 3
  %79 = ptrtoint ptr %nr_registers to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %count.0.lcssa, ptr %nr_registers, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end132, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %for.end82.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adreno_gpu_state_destroy(ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void @kvfree(ptr noundef %1) #8
  %data.1 = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 1, i32 5
  %2 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.1, align 8
  tail call void @kvfree(ptr noundef %3) #8
  %data.2 = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 2, i32 5
  %4 = ptrtoint ptr %data.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.2, align 8
  tail call void @kvfree(ptr noundef %5) #8
  %data.3 = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 3, i32 5
  %6 = ptrtoint ptr %data.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.3, align 8
  tail call void @kvfree(ptr noundef %7) #8
  %nr_bos = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 9
  %bos = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 10
  %8 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bos, align 4
  %tobool.not24 = icmp eq ptr %9, null
  br i1 %tobool.not24, label %entry.for.end9_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end9

land.rhs:                                         ; preds = %for.body3.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %10 = phi ptr [ %16, %for.body3.land.rhs_crit_edge ], [ %9, %entry.land.rhs_crit_edge ]
  %i.125 = phi i32 [ %inc8, %for.body3.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.125, i32 %12)
  %cmp2 = icmp slt i32 %i.125, %12
  br i1 %cmp2, label %for.body3, label %land.rhs.for.end9_crit_edge

land.rhs.for.end9_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end9

for.body3:                                        ; preds = %land.rhs
  %data6 = getelementptr %struct.msm_gpu_state_bo, ptr %10, i32 %i.125, i32 2
  %13 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data6, align 4
  tail call void @kvfree(ptr noundef %14) #8
  %inc8 = add nuw nsw i32 %i.125, 1
  %15 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bos, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %for.body3.for.end9_crit_edge, label %for.body3.land.rhs_crit_edge

for.body3.land.rhs_crit_edge:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.body3.for.end9_crit_edge:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end9

for.end9:                                         ; preds = %for.body3.for.end9_crit_edge, %land.rhs.for.end9_crit_edge, %entry.for.end9_crit_edge
  %.lcssa = phi ptr [ null, %entry.for.end9_crit_edge ], [ null, %for.body3.for.end9_crit_edge ], [ %10, %land.rhs.for.end9_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa) #8
  %comm = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 6
  %17 = ptrtoint ptr %comm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %comm, align 4
  tail call void @kfree(ptr noundef %18) #8
  %cmd = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 7
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd, align 8
  tail call void @kfree(ptr noundef %20) #8
  %registers = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 4
  %21 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %registers, align 4
  tail call void @kfree(ptr noundef %22) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adreno_gpu_state_put(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %state, null
  %cmp.i = icmp ugt ptr %state, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %state, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @llvm.prefetch.p0(ptr nonnull %state, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %state, ptr nonnull %state, i32 1, ptr nonnull elementtype(i32) %state) #8, !srcloc !158
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !155

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %state, i32 noundef 3) #8
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @adreno_gpu_state_destroy(ptr noundef nonnull %state) #8
  tail call void @kfree(ptr noundef nonnull %state) #8
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 1, %if.then.i ], [ 0, %if.end5.i.i.i.i.return_crit_edge ], [ 0, %if.then10.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adreno_show_object(ptr noundef %p, ptr nocapture noundef %ptr, i32 noundef %len, ptr nocapture noundef %encoded) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %encoded to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %encoded, align 1, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp25 = icmp sgt i32 %len, 3
  br i1 %cmp25, label %for.body.preheader, label %for.end.thread

for.end.thread:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %out.i) #8
  br label %adreno_gpu_ascii85_encode.exit

for.body.preheader:                               ; preds = %for.cond.preheader
  %shr30 = lshr i32 %len, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.027 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %datalen.026 = phi i32 [ %datalen.1, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %1, i32 %i.027
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  %add = shl i32 %i.027, 2
  %shl = add nuw nsw i32 %add, 4
  %datalen.1 = select i1 %tobool4.not, i32 %datalen.026, i32 %shl
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %shr30
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %out.i) #8
  %6 = getelementptr inbounds [6 x i8], ptr %out.i, i32 0, i32 1
  %7 = getelementptr inbounds [6 x i8], ptr %out.i, i32 0, i32 2
  %8 = getelementptr inbounds [6 x i8], ptr %out.i, i32 0, i32 3
  %9 = getelementptr inbounds [6 x i8], ptr %out.i, i32 0, i32 4
  %10 = getelementptr inbounds [6 x i8], ptr %out.i, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datalen.1)
  %tobool1.not.i = icmp eq i32 %datalen.1, 0
  %11 = call ptr @memset(ptr %out.i, i32 255, i32 6)
  br i1 %tobool1.not.i, label %for.end.adreno_gpu_ascii85_encode.exit_crit_edge, label %if.end.i

for.end.adreno_gpu_ascii85_encode.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %adreno_gpu_ascii85_encode.exit

if.end.i:                                         ; preds = %for.end
  %sub.i.i = add i32 %datalen.1, 3
  %div.i.i = sdiv i32 %sub.i.i, 4
  %mul.i = mul i32 %div.i.i, 5
  %add.i = add i32 %mul.i, 1
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add.i, i32 noundef 3264, i32 noundef -1) #11
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.adreno_gpu_ascii85_encode.exit_crit_edge, label %for.cond.preheader.i

if.end.i.adreno_gpu_ascii85_encode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adreno_gpu_ascii85_encode.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp25.i = icmp sgt i32 %sub.i.i, 3
  br i1 %cmp25.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.adreno_gpu_ascii85_encode.exit_crit_edge

for.cond.preheader.i.adreno_gpu_ascii85_encode.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adreno_gpu_ascii85_encode.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %ascii85_encode.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.027.i = phi i32 [ %inc.i, %ascii85_encode.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %buf_itr.026.i = phi i32 [ %add8.i, %ascii85_encode.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %buf_itr.026.i
  %sub.i = sub i32 %add.i, %buf_itr.026.i
  %arrayidx.i = getelementptr i32, ptr %1, i32 %i.027.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 0
  br i1 %cmp.i.i, label %for.body.i.ascii85_encode.exit.i_crit_edge, label %if.end.i.i

for.body.i.ascii85_encode.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ascii85_encode.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %10, align 1
  %.frozen = freeze i32 %13
  %div.i24.i = udiv i32 %.frozen, 85
  %15 = mul i32 %div.i24.i, 85
  %rem.i.i.decomposed = sub i32 %.frozen, %15
  %16 = trunc i32 %rem.i.i.decomposed to i8
  %conv.i.i = add nuw nsw i8 %16, 33
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i.i, ptr %9, align 1
  %rem.1.i.i = urem i32 %div.i24.i, 85
  %18 = trunc i32 %rem.1.i.i to i8
  %conv.1.i.i = add nuw nsw i8 %18, 33
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.1.i.i, ptr %8, align 1
  %div.1.i.i = udiv i32 %13, 7225
  %rem.2.i.i = urem i32 %div.1.i.i, 85
  %20 = trunc i32 %rem.2.i.i to i8
  %conv.2.i.i = add nuw nsw i8 %20, 33
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.2.i.i, ptr %7, align 1
  %div.2.i.i = udiv i32 %13, 614125
  %rem.3.lhs.trunc.i.i = trunc i32 %div.2.i.i to i16
  %rem.39.i.i = urem i16 %rem.3.lhs.trunc.i.i, 85
  %22 = trunc i16 %rem.39.i.i to i8
  %conv.3.i.i = add nuw nsw i8 %22, 33
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.3.i.i, ptr %6, align 1
  %div.3.i.i = udiv i32 %13, 52200625
  %24 = trunc i32 %div.3.i.i to i8
  %conv.4.i.i = add nuw nsw i8 %24, 33
  %25 = ptrtoint ptr %out.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.4.i.i, ptr %out.i, align 1
  br label %ascii85_encode.exit.i

ascii85_encode.exit.i:                            ; preds = %if.end.i.i, %for.body.i.ascii85_encode.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.64, %for.body.i.ascii85_encode.exit.i_crit_edge ], [ %out.i, %if.end.i.i ]
  %call7.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.63, ptr noundef nonnull %retval.0.i.i) #8
  %add8.i = add i32 %call7.i, %buf_itr.026.i
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div.i.i
  br i1 %exitcond.not.i, label %ascii85_encode.exit.i.adreno_gpu_ascii85_encode.exit_crit_edge, label %ascii85_encode.exit.i.for.body.i_crit_edge

ascii85_encode.exit.i.for.body.i_crit_edge:       ; preds = %ascii85_encode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ascii85_encode.exit.i.adreno_gpu_ascii85_encode.exit_crit_edge: ; preds = %ascii85_encode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adreno_gpu_ascii85_encode.exit

adreno_gpu_ascii85_encode.exit:                   ; preds = %ascii85_encode.exit.i.adreno_gpu_ascii85_encode.exit_crit_edge, %for.cond.preheader.i.adreno_gpu_ascii85_encode.exit_crit_edge, %if.end.i.adreno_gpu_ascii85_encode.exit_crit_edge, %for.end.adreno_gpu_ascii85_encode.exit_crit_edge, %for.end.thread
  %retval.0.i = phi ptr [ null, %for.end.adreno_gpu_ascii85_encode.exit_crit_edge ], [ null, %if.end.i.adreno_gpu_ascii85_encode.exit_crit_edge ], [ %call.i.i, %for.cond.preheader.i.adreno_gpu_ascii85_encode.exit_crit_edge ], [ null, %for.end.thread ], [ %call.i.i, %ascii85_encode.exit.i.adreno_gpu_ascii85_encode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %out.i) #8
  %26 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i, ptr %ptr, align 4
  call void @kvfree(ptr noundef nonnull %1) #8
  %27 = ptrtoint ptr %encoded to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %encoded, align 1
  br label %if.end7

if.end7:                                          ; preds = %adreno_gpu_ascii85_encode.exit, %if.end.if.end7_crit_edge
  %28 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptr, align 4
  %tobool8.not = icmp eq ptr %29, null
  br i1 %tobool8.not, label %if.end7.return_crit_edge, label %if.end10

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.14) #8
  call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.15) #8
  %30 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptr, align 4
  call void @drm_puts(ptr noundef %p, ptr noundef %31) #8
  call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.16) #8
  br label %return

return:                                           ; preds = %if.end10, %if.end7.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adreno_show(ptr nocapture noundef readonly %gpu, ptr noundef %state, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %state, null
  %cmp.i = icmp ugt ptr %state, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %revn = getelementptr inbounds %struct.adreno_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %revn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revn, align 4
  %rev = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rev, align 8
  %conv = zext i8 %5 to i32
  %major = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %major, align 1
  %conv2 = zext i8 %7 to i32
  %minor = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %minor, align 2
  %conv4 = zext i8 %9 to i32
  %patchid = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %patchid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %patchid, align 1
  %conv6 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.17, i32 noundef %3, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6) #8
  %fault_info = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 8
  %12 = ptrtoint ptr %fault_info to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fault_info, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.not = icmp eq i64 %13, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.18) #8
  %14 = ptrtoint ptr %fault_info to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fault_info, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.19, i64 noundef %15) #8
  %iova = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iova, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.20, i32 noundef %17) #8
  %flags = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool11.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond) #8
  %type = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 8, i32 3
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.24, ptr noundef %21) #8
  %block = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 8, i32 4
  %22 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %block, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.25, ptr noundef %23) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %rbbm_status = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 5
  %24 = ptrtoint ptr %rbbm_status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rbbm_status, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.26, i32 noundef %25) #8
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.27) #8
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %26 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp143 = icmp sgt i32 %27, 0
  br i1 %cmp143, label %if.end12.for.body_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.0144 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.28, i32 noundef %i.0144) #8
  %arrayidx = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0144
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.29, i64 noundef %29) #8
  %seqno = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0144, i32 2
  %30 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %seqno, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.30, i32 noundef %31) #8
  %fence = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0144, i32 1
  %32 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fence, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.31, i32 noundef %33) #8
  %rptr = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0144, i32 3
  %34 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rptr, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.32, i32 noundef %35) #8
  %wptr = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0144, i32 4
  %36 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wptr, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.33, i32 noundef %37) #8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.34, i32 noundef 32768) #8
  %data = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0144, i32 5
  %data_size = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0144, i32 6
  %38 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_size, align 4
  %encoded = getelementptr %struct.msm_gpu_state, ptr %state, i32 0, i32 2, i32 %i.0144, i32 7
  tail call void @adreno_show_object(ptr noundef %p, ptr noundef %data, i32 noundef %39, ptr noundef %encoded)
  %inc = add nuw nsw i32 %i.0144, 1
  %40 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_rings, align 4
  %cmp = icmp slt i32 %inc, %41
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end12.for.end_crit_edge
  %bos = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 10
  %42 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bos, align 4
  %tobool29.not = icmp eq ptr %43, null
  br i1 %tobool29.not, label %for.end.if.end52_crit_edge, label %if.then30

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then30:                                        ; preds = %for.end
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.35) #8
  %nr_bos = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 9
  %44 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp32145 = icmp sgt i32 %45, 0
  br i1 %cmp32145, label %if.then30.for.body34_crit_edge, label %if.then30.if.end52_crit_edge

if.then30.if.end52_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then30.for.body34_crit_edge:                   ; preds = %if.then30
  br label %for.body34

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %if.then30.for.body34_crit_edge
  %i.1146 = phi i32 [ %inc50, %for.body34.for.body34_crit_edge ], [ 0, %if.then30.for.body34_crit_edge ]
  %46 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bos, align 4
  %arrayidx36 = getelementptr %struct.msm_gpu_state_bo, ptr %47, i32 %i.1146
  %48 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx36, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.36, i64 noundef %49) #8
  %50 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bos, align 4
  %size = getelementptr %struct.msm_gpu_state_bo, ptr %51, i32 %i.1146, i32 1
  %52 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.37, i32 noundef %53) #8
  %54 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bos, align 4
  %data42 = getelementptr %struct.msm_gpu_state_bo, ptr %55, i32 %i.1146, i32 2
  %size45 = getelementptr %struct.msm_gpu_state_bo, ptr %55, i32 %i.1146, i32 1
  %56 = ptrtoint ptr %size45 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size45, align 8
  %encoded48 = getelementptr %struct.msm_gpu_state_bo, ptr %55, i32 %i.1146, i32 3
  tail call void @adreno_show_object(ptr noundef %p, ptr noundef %data42, i32 noundef %57, ptr noundef %encoded48)
  %inc50 = add nuw nsw i32 %i.1146, 1
  %58 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_bos, align 8
  %cmp32 = icmp slt i32 %inc50, %59
  br i1 %cmp32, label %for.body34.for.body34_crit_edge, label %for.body34.if.end52_crit_edge

for.body34.if.end52_crit_edge:                    ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body34

if.end52:                                         ; preds = %for.body34.if.end52_crit_edge, %if.then30.if.end52_crit_edge, %for.end.if.end52_crit_edge
  %nr_registers = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 3
  %60 = ptrtoint ptr %nr_registers to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr_registers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool53.not = icmp eq i32 %61, 0
  br i1 %tobool53.not, label %if.end52.cleanup_crit_edge, label %if.then54

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then54:                                        ; preds = %if.end52
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.38) #8
  %62 = ptrtoint ptr %nr_registers to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr_registers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp57147 = icmp sgt i32 %63, 0
  br i1 %cmp57147, label %for.body59.lr.ph, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body59.lr.ph:                                 ; preds = %if.then54
  %registers = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 4
  br label %for.body59

for.body59:                                       ; preds = %for.body59.for.body59_crit_edge, %for.body59.lr.ph
  %i.2148 = phi i32 [ 0, %for.body59.lr.ph ], [ %inc65, %for.body59.for.body59_crit_edge ]
  %64 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %registers, align 4
  %mul = shl nuw i32 %i.2148, 1
  %arrayidx60 = getelementptr i32, ptr %65, i32 %mul
  %66 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx60, align 4
  %shl = shl i32 %67, 2
  %add = or i32 %mul, 1
  %arrayidx63 = getelementptr i32, ptr %65, i32 %add
  %68 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx63, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.39, i32 noundef %shl, i32 noundef %69) #8
  %inc65 = add nuw nsw i32 %i.2148, 1
  %70 = ptrtoint ptr %nr_registers to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_registers, align 8
  %cmp57 = icmp slt i32 %inc65, %71
  br i1 %cmp57, label %for.body59.for.body59_crit_edge, label %for.body59.cleanup_crit_edge

for.body59.cleanup_crit_edge:                     ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body59.for.body59_crit_edge:                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body59

cleanup:                                          ; preds = %for.body59.cleanup_crit_edge, %if.then54.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adreno_dump_info(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %revn = getelementptr inbounds %struct.adreno_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %revn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revn, align 4
  %rev = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rev, align 8
  %conv = zext i8 %5 to i32
  %major = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %major, align 1
  %conv3 = zext i8 %7 to i32
  %minor = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %minor, align 2
  %conv5 = zext i8 %9 to i32
  %patchid = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %patchid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %patchid, align 1
  %conv7 = zext i8 %11 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %3, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv7) #12
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %12 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp39 = icmp sgt i32 %13, 0
  br i1 %cmp39, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 %i.040
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %memptrs = getelementptr inbounds %struct.msm_ringbuffer, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %memptrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memptrs, align 8
  %fence = getelementptr inbounds %struct.msm_rbmemptrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %fence, align 4
  %seqno = getelementptr inbounds %struct.msm_ringbuffer, ptr %15, i32 0, i32 11
  %20 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seqno, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %i.040, i32 noundef %19, i32 noundef %21) #12
  %22 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs.i, align 4
  %get_rptr.i = getelementptr inbounds %struct.msm_gpu_funcs, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %get_rptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_rptr.i, align 4
  %call.i = tail call i32 %25(ptr noundef %gpu, ptr noundef %15) #8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %call.i) #12
  %cur.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %15, i32 0, i32 5
  %26 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cur.i, align 4
  %start.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %15, i32 0, i32 3
  %28 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %start.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  %rem.i = srem i32 %sub.ptr.div.i, 8192
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %rem.i) #12
  %inc = add nuw nsw i32 %i.040, 1
  %30 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_rings, align 4
  %cmp = icmp slt i32 %inc, %31
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adreno_dump(ptr nocapture noundef readonly %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %registers = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 6
  %0 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpu, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %3) #12
  %4 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registers, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.not33 = icmp eq i32 %7, -1
  br i1 %cmp.not33, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i32 [ %7, %for.body.lr.ph ], [ %17, %for.end.for.body_crit_edge ]
  %9 = phi ptr [ %5, %for.body.lr.ph ], [ %15, %for.end.for.body_crit_edge ]
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %add17, %for.end.for.body_crit_edge ]
  %add = or i32 %i.034, 1
  %arrayidx6 = getelementptr i32, ptr %9, i32 %add
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %11)
  %cmp8.not31 = icmp ugt i32 %8, %11
  br i1 %cmp8.not31, label %for.body.for.end_crit_edge, label %for.body.for.body9_crit_edge

for.body.for.body9_crit_edge:                     ; preds = %for.body
  br label %for.body9

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body.for.body9_crit_edge
  %addr.032 = phi i32 [ %inc, %for.body9.for.body9_crit_edge ], [ %8, %for.body.for.body9_crit_edge ]
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 8
  %shl.i = shl i32 %addr.032, 2
  %add.ptr.i = getelementptr i8, ptr %13, i32 %shl.i
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %shl.i, i32 noundef %call.i) #12
  %inc = add i32 %addr.032, 1
  %cmp8.not = icmp ugt i32 %inc, %11
  br i1 %cmp8.not, label %for.body9.for.end_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

for.body9.for.end_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body9.for.end_crit_edge, %for.body.for.end_crit_edge
  %add17 = add i32 %i.034, 2
  %14 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %registers, align 4
  %arrayidx = getelementptr i32, ptr %15, i32 %add17
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %cmp.not = icmp eq i32 %17, -1
  br i1 %cmp.not, label %for.end.cleanup_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adreno_wait_ring(ptr noundef %ring, i32 noundef %ndwords) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %next.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 6
  %start.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 3
  %add.neg = sub i32 -100, %0
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %1 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ring, align 8
  %3 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next.i, align 8
  %5 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %start.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %7 = lshr exact i32 %sub.ptr.sub.i, 2
  %funcs.i.i = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 3
  %8 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i.i, align 4
  %get_rptr.i.i = getelementptr inbounds %struct.msm_gpu_funcs, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %get_rptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_rptr.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %2, ptr noundef %ring) #8
  %add.i = add i32 %call.i.i, 8191
  %sub1.i = sub i32 %add.i, %7
  %rem.i = and i32 %sub1.i, 8191
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %ndwords)
  %cmp.not = icmp ult i32 %rem.i, %ndwords
  br i1 %cmp.not, label %do.cond, label %do.body.if.end5_crit_edge

do.body.if.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.cond:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %12
  %cmp2 = icmp slt i32 %sub, 0
  br i1 %cmp2, label %do.cond.do.body_crit_edge, label %if.then3.critedge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then3.critedge:                                ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring, align 8
  %dev = getelementptr inbounds %struct.msm_gpu, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev4, align 4
  %id = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 1
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, i32 noundef %20) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3.critedge, %do.body.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adreno_gpu_ocmem_init(ptr noundef %dev, ptr nocapture noundef %adreno_gpu, ptr nocapture noundef writeonly %adreno_ocmem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_ocmem(ptr noundef %dev) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  %cmp = icmp eq ptr %call, inttoptr (i32 -19 to ptr)
  %spec.select = select i1 %cmp, i32 0, i32 %0
  br label %cleanup

if.end5:                                          ; preds = %entry
  %gmem = getelementptr inbounds %struct.adreno_gpu, ptr %adreno_gpu, i32 0, i32 3
  %1 = ptrtoint ptr %gmem to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gmem, align 8
  %call6 = tail call ptr @ocmem_allocate(ptr noundef %call, i32 noundef 0, i32 noundef %2) #8
  %cmp.i25 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %adreno_ocmem to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %adreno_ocmem, align 4
  %addr = getelementptr inbounds %struct.ocmem_buf, ptr %call6, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %base = getelementptr inbounds %struct.adreno_ocmem, ptr %adreno_ocmem, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %base, align 4
  %hdl = getelementptr inbounds %struct.adreno_ocmem, ptr %adreno_ocmem, i32 0, i32 2
  %8 = ptrtoint ptr %hdl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %hdl, align 4
  %len = getelementptr inbounds %struct.ocmem_buf, ptr %call6, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %11 = ptrtoint ptr %gmem to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %gmem, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  %retval.0 = phi i32 [ %3, %if.then8 ], [ 0, %if.end10 ], [ %spec.select, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_ocmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocmem_allocate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adreno_gpu_ocmem_cleanup(ptr noundef readonly %adreno_ocmem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %adreno_ocmem, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %base = getelementptr inbounds %struct.adreno_ocmem, ptr %adreno_ocmem, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %adreno_ocmem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adreno_ocmem, align 4
  %hdl = getelementptr inbounds %struct.adreno_ocmem, ptr %adreno_ocmem, i32 0, i32 2
  %4 = ptrtoint ptr %hdl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdl, align 4
  tail call void @ocmem_free(ptr noundef %3, i32 noundef 0, ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocmem_free(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adreno_gpu_init(ptr noundef %drm, ptr noundef %pdev, ptr noundef %adreno_gpu, ptr noundef %funcs, i32 noundef %nr_rings) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %freq.i = alloca i32, align 4
  %adreno_gpu_config = alloca %struct.msm_gpu_config, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %adreno_gpu_config) #8
  %funcs2 = getelementptr inbounds %struct.adreno_gpu, ptr %adreno_gpu, i32 0, i32 5
  %2 = ptrtoint ptr %funcs2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %funcs, ptr %funcs2, align 8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %.unpack = load i32, ptr %1, align 1
  %4 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call = tail call ptr @adreno_info([1 x i32] %4) #8
  %info = getelementptr inbounds %struct.adreno_gpu, ptr %adreno_gpu, i32 0, i32 2
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %info, align 4
  %gmem = getelementptr inbounds %struct.adreno_info, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %gmem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gmem, align 4
  %gmem4 = getelementptr inbounds %struct.adreno_gpu, ptr %adreno_gpu, i32 0, i32 3
  %8 = ptrtoint ptr %gmem4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %gmem4, align 8
  %revn = getelementptr inbounds %struct.adreno_info, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %revn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %revn, align 4
  %revn6 = getelementptr inbounds %struct.adreno_gpu, ptr %adreno_gpu, i32 0, i32 4
  %11 = ptrtoint ptr %revn6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %revn6, align 4
  %rev7 = getelementptr inbounds %struct.adreno_gpu, ptr %adreno_gpu, i32 0, i32 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %1, align 1
  %14 = ptrtoint ptr %rev7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rev7, align 8
  %15 = ptrtoint ptr %adreno_gpu_config to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.56, ptr %adreno_gpu_config, align 8
  %nr_rings9 = getelementptr inbounds %struct.msm_gpu_config, ptr %adreno_gpu_config, i32 0, i32 1
  %16 = ptrtoint ptr %nr_rings9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %nr_rings, ptr %nr_rings9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i) #8
  %17 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %freq.i, align 4
  %fast_rate.i = getelementptr inbounds %struct.msm_gpu, ptr %adreno_gpu, i32 0, i32 32
  %18 = ptrtoint ptr %fast_rate.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %fast_rate.i, align 8
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %20, ptr noundef nonnull @.str.65, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %21 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_get_compatible_child(ptr noundef %22, ptr noundef nonnull @.str.72) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %adreno_get_legacy_pwrlevels.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call.i.i, ptr noundef null) #8
  %cmp.not21.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not21.i.i, label %if.end.i.i.adreno_get_legacy_pwrlevels.exit.thread.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.adreno_get_legacy_pwrlevels.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adreno_get_legacy_pwrlevels.exit.thread.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %child.022.i.i = phi ptr [ %call10.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ %call1.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %23 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i.i, align 4, !annotation !153
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.022.i.i, ptr noundef nonnull @.str.74, ptr noundef nonnull %val.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool3.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %for.body.i.i.cleanup.i.i_crit_edge

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %24 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000000, i32 %25)
  %cmp6.not.i.i = icmp eq i32 %25, 27000000
  br i1 %cmp6.not.i.i, label %if.end5.i.i.cleanup.i.i_crit_edge, label %if.then7.i.i

if.end5.i.i.cleanup.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.i = call i32 @dev_pm_opp_add(ptr noundef %dev1, i32 noundef %25, i32 noundef 0) #8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then7.i.i, %if.end5.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  %call10.i.i = call ptr @of_get_next_child(ptr noundef nonnull %call.i.i, ptr noundef nonnull %child.022.i.i) #8
  %cmp.not.i.i = icmp eq ptr %call10.i.i, null
  br i1 %cmp.not.i.i, label %cleanup.i.i.adreno_get_legacy_pwrlevels.exit.thread.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

cleanup.i.i.adreno_get_legacy_pwrlevels.exit.thread.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adreno_get_legacy_pwrlevels.exit.thread.i

adreno_get_legacy_pwrlevels.exit.thread.i:        ; preds = %cleanup.i.i.adreno_get_legacy_pwrlevels.exit.thread.i_crit_edge, %if.end.i.i.adreno_get_legacy_pwrlevels.exit.thread.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i.i) #8
  br label %if.then7.i

adreno_get_legacy_pwrlevels.exit.i:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 1, ptr noundef nonnull @.str.73) #8
  br label %if.end13.i

if.else.i:                                        ; preds = %entry
  %call2.i = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %dev1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.else.i.if.then7.i_crit_edge, label %if.then4.i

if.else.i.if.then7.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.66) #8
  br label %if.end13.i

if.then7.i:                                       ; preds = %if.else.i.if.then7.i_crit_edge, %adreno_get_legacy_pwrlevels.exit.thread.i
  %call8.i = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %dev1, ptr noundef nonnull %freq.i) #8
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7.i.if.end13.i_crit_edge, label %if.then10.i

if.then7.i.if.end13.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %freq.i, align 4
  %28 = ptrtoint ptr %fast_rate.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fast_rate.i, align 8
  call void @dev_pm_opp_put(ptr noundef %call8.i) #8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.then7.i.if.end13.i_crit_edge, %if.then4.i, %adreno_get_legacy_pwrlevels.exit.i
  %29 = ptrtoint ptr %fast_rate.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fast_rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool15.not.i = icmp eq i32 %30, 0
  br i1 %tobool15.not.i, label %do.end.i, label %if.end13.i.adreno_get_pwrlevels.exit_crit_edge

if.end13.i.adreno_get_pwrlevels.exit_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adreno_get_pwrlevels.exit

do.end.i:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.67) #12
  %31 = ptrtoint ptr %fast_rate.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 200000000, ptr %fast_rate.i, align 8
  br label %adreno_get_pwrlevels.exit

adreno_get_pwrlevels.exit:                        ; preds = %do.end.i, %if.end13.i.adreno_get_pwrlevels.exit_crit_edge
  %32 = ptrtoint ptr %fast_rate.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fast_rate.i, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.71, i32 noundef %33) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #8
  %34 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info, align 4
  %inactive_period = getelementptr inbounds %struct.adreno_info, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %inactive_period to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %inactive_period, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef %37) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #8
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %38 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info, align 4
  %name = getelementptr inbounds %struct.adreno_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name, align 4
  %call14 = call i32 @msm_gpu_init(ptr noundef %drm, ptr noundef %pdev, ptr noundef %adreno_gpu, ptr noundef %funcs, ptr noundef %41, ptr noundef nonnull %adreno_gpu_config) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %adreno_gpu_config) #8
  ret i32 %call14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_info([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adreno_gpu_cleanup(ptr noundef %adreno_gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.msm_gpu, ptr %adreno_gpu, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %arrayidx = getelementptr %struct.adreno_gpu, ptr %adreno_gpu, i32 0, i32 8, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @release_firmware(ptr noundef %5) #8
  %arrayidx.1 = getelementptr %struct.adreno_gpu, ptr %adreno_gpu, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  tail call void @release_firmware(ptr noundef %7) #8
  %arrayidx.2 = getelementptr %struct.adreno_gpu, ptr %adreno_gpu, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  tail call void @release_firmware(ptr noundef %9) #8
  %gpu_pdev = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %gpu_pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpu_pdev, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  tail call void @msm_gpu_cleanup(ptr noundef %adreno_gpu) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_mdt_get_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_mdt_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_pas_auth_and_reset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_cmp_rev([1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_floor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !133, !134, !135, !136, !138, !140, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 182, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 221, i32 45}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 277, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 290, i32 34}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 303, i32 4}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 308, i32 4}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 323, i32 4}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 344, i32 4}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 356, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 461, i32 3}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 496, i32 2}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 507, i32 2}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 668, i32 14}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 669, i32 14}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 673, i32 14}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 685, i32 16}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 697, i32 15}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 698, i32 17}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 699, i32 17}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 700, i32 17}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 700, i32 67}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 700, i32 77}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 701, i32 17}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 702, i32 17}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 705, i32 16}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 707, i32 14}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 710, i32 17}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 711, i32 17}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 712, i32 17}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 713, i32 17}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 714, i32 17}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 715, i32 17}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 716, i32 17}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 723, i32 15}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 726, i32 18}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 728, i32 18}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 736, i32 15}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 739, i32 18}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 758, i32 2}
!80 = !{ptr @adreno_dump_info._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @adreno_dump_info._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 766, i32 3}
!84 = !{ptr @adreno_dump_info._entry.41, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @adreno_dump_info._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 770, i32 3}
!88 = !{ptr @adreno_dump_info._entry.44, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @adreno_dump_info._entry_ptr.46, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 771, i32 3}
!92 = !{ptr @adreno_dump_info._entry.47, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @adreno_dump_info._entry_ptr.49, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 785, i32 2}
!96 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @adreno_dump._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @adreno_dump._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 793, i32 4}
!101 = !{ptr @adreno_dump._entry.52, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @adreno_dump._entry_ptr.54, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 811, i32 3}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 939, i32 29}
!107 = distinct !{null, !108, !"zap_available", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 23, i32 13}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 43, i32 42}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 49, i32 32}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 77, i32 36}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 101, i32 3}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 113, i32 3}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 160, i32 3}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 628, i32 62}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/ascii85.h", i32 28, i32 10}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 858, i32 38}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 863, i32 4}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 876, i32 3}
!131 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @adreno_get_pwrlevels._entry, !130, !"_entry", i1 false, i1 false}
!135 = !{ptr @adreno_get_pwrlevels._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 882, i32 2}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 822, i32 47}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 824, i32 3}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/msm/adreno/adreno_gpu.c", i32 831, i32 37}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{!"auto-init"}
!154 = !{i64 2157903187}
!155 = !{!"branch_weights", i32 2000, i32 1}
!156 = !{!"branch_weights", i32 1, i32 2000}
!157 = !{i64 2148298914}
!158 = !{i64 2148213378, i64 2148213410, i64 2148213439, i64 2148213473, i64 2148213504, i64 2148213527}
!159 = !{i64 2150014031}
!160 = !{i8 0, i8 2}
