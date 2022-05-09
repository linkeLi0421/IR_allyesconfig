; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/adreno/a6xx_gmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a6xx_gmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.a6xx_gmu_oob_bits = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.a6xx_gmu = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, i32, ptr, i32, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, i32, ptr, ptr, ptr, i32, i32, [16 x i32], [16 x i32], i32, [4 x i32], [4 x i32], i32, [2 x %struct.a6xx_hfi_queue], i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.a6xx_gmu_bo = type { ptr, ptr, i32, i64 }
%struct.a6xx_hfi_queue = type { ptr, %struct.spinlock, ptr, %struct.atomic_t, [8 x i32], i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.a6xx_gpu = type { %struct.adreno_gpu, ptr, i64, ptr, %struct.a6xx_gmu, ptr, i64, ptr, i8, ptr, ptr, ptr, i8 }
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.108, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.108 = type { i8, i64 }
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
%struct.adreno_rev = type { i8, i8, i8, i8 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.block_header = type { i32, i32, i32, i32, [0 x i32] }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@a6xx_gmu_set_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"GMU set GPU frequency error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"a6xx_gmu_set_freq\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/msm/adreno/a6xx_gmu.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@a6xx_gmu_set_freq._entry_ptr = internal global ptr @a6xx_gmu_set_freq._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@a6xx_gmu_set_oob.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@a6xx_gmu_oob_bits = internal constant { [4 x %struct.a6xx_gmu_oob_bits], [48 x i8] } { [4 x %struct.a6xx_gmu_oob_bits] [%struct.a6xx_gmu_oob_bits { i32 22, i32 30, i32 0, i32 0, i32 30, i32 0, ptr @.str.21 }, %struct.a6xx_gmu_oob_bits { i32 16, i32 24, i32 30, i32 31, i32 24, i32 31, ptr @.str.22 }, %struct.a6xx_gmu_oob_bits { i32 23, i32 31, i32 0, i32 0, i32 31, i32 0, ptr @.str.23 }, %struct.a6xx_gmu_oob_bits { i32 17, i32 25, i32 28, i32 30, i32 25, i32 29, ptr @.str.24 }], [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* Invalid non-legacy GMU request %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"*ERROR* Timeout waiting for GMU OOB set %s: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@a6xx_gmu_clear_oob.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"The GMU is not set up yet\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rscc\00", [27 x i8] zeroinitializer }, align 32
@a6xx_gmu_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&gmu->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"icache\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dcache\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hfi\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"log\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gmu\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"gx\00", [29 x i8] zeroinitializer }, align 32
@__tracepoint_msm_gmu_freq_change = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/msm/msm_gpu_trace.h\00", [60 x i8] zeroinitializer }, align 32
@trace_msm_gmu_freq_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BOOT_SLUMBER\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPU_SET\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPU_DCVS\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PERFCOUNTER\00", [20 x i8] zeroinitializer }, align 32
@a6xx_gmu_fw_start.rpmh_init = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GMU firmware is not loaded\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* Unable to power on the GPU RSC\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"*ERROR* GPU RSC sequence stuck while waking up the GPU\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gmu_pdc\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gmu_pdc_seq\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"*ERROR* GMU firmware is bigger than the available region\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"*ERROR* failed to match fw block (addr=%.8x size=%d data[0]=%.8x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"*ERROR* GMU firmware initialization timed out\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* Unable to power on SPTPRAC: 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* Unable to start the HFI queues\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Unable to power off the GPU RSC\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* failed to power off SPTPRAC: 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"*ERROR* Unable to slumber GMU: status = 0%x/0%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* The GMU did not go into slumber\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hub\00", [28 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Unable to find the %s registers\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* Unable to map the %s registers\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* Unable to get interrupt %s %d\0A\00", [57 x i8] zeroinitializer }, align 32
@a6xx_hfi_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.a6xx_hfi_irq = private unnamed_addr constant [13 x i8] c"a6xx_hfi_irq\00", align 1
@a6xx_hfi_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.a6xx_hfi_irq, ptr @.str.2, i32 66, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GMU firmware fault\0A\00", [44 x i8] zeroinitializer }, align 32
@a6xx_hfi_irq._entry_ptr = internal global ptr @a6xx_hfi_irq._entry, section ".printk_index", align 4
@a6xx_gmu_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.a6xx_gmu_irq = private unnamed_addr constant [13 x i8] c"a6xx_gmu_irq\00", align 1
@a6xx_gmu_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @__func__.a6xx_gmu_irq, ptr @.str.2, i32 42, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GMU watchdog expired\0A\00", [42 x i8] zeroinitializer }, align 32
@a6xx_gmu_irq._entry_ptr = internal global ptr @a6xx_gmu_irq._entry, section ".printk_index", align 4
@a6xx_gmu_irq._rs.46 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a6xx_gmu_irq._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @__func__.a6xx_gmu_irq, ptr @.str.2, i32 48, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GMU AHB bus error\0A\00", [45 x i8] zeroinitializer }, align 32
@a6xx_gmu_irq._entry_ptr.49 = internal global ptr @a6xx_gmu_irq._entry.47, section ".printk_index", align 4
@a6xx_gmu_irq._rs.50 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@a6xx_gmu_irq._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @__func__.a6xx_gmu_irq, ptr @.str.2, i32 52, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GMU fence error: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@a6xx_gmu_irq._entry_ptr.53 = internal global ptr @a6xx_gmu_irq._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"*ERROR* Unable to set the OPP table for the GMU\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"The GMU frequency table is being truncated\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gfx.lvl\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cx.lvl\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mx.lvl\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* Level %u not found in the RPMh list\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"*ERROR* Available levels:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"*ERROR*   %u\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 620, i64 650, i64 660]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 650, i64 660]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 620, i64 650, i64 660]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 618, i64 620, i64 650, i64 660]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 620, i64 650, i64 660]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 620, i64 650, i64 660]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 640, i64 660, i64 680]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 620, i64 650, i64 660]
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 159, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"a6xx_gmu_oob_bits\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 256, i32 39 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 311, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 326, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 922, i32 6 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1465, i32 57 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1491, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1521, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1530, i32 21 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1537, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1547, i32 31 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1563, i32 57 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1568, i32 56 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1573, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1598, i32 53 }
@___asan_gen_.137 = private unnamed_addr constant [39 x i8] c"../drivers/gpu/drm/msm/msm_gpu_trace.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 103, i32 1 }
@___asan_gen_.140 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 108, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 278, i32 11 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 258, i32 11 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 285, i32 11 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 268, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant [28 x i8] c"a6xx_gmu_fw_start.rpmh_init\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 768, i32 7 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 467, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 475, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 518, i32 49 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 534, i32 36 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 711, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 741, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 228, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 370, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 243, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 500, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 395, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1081, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 444, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1404, i32 19 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1417, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1423, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1439, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 66, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 42, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 48, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 51, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1371, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1338, i32 6 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1316, i32 38 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1320, i32 38 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1247, i32 29 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1269, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1272, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [41 x i8] c"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1274, i32 5 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @a6xx_gmu_irq._entry, ptr @a6xx_gmu_irq._entry.47, ptr @a6xx_gmu_irq._entry.51, ptr @a6xx_gmu_irq._entry_ptr, ptr @a6xx_gmu_irq._entry_ptr.49, ptr @a6xx_gmu_irq._entry_ptr.53, ptr @a6xx_gmu_set_freq._entry, ptr @a6xx_gmu_set_freq._entry_ptr, ptr @a6xx_hfi_irq._entry, ptr @a6xx_hfi_irq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @a6xx_gmu_oob_bits, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @a6xx_gmu_init.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @a6xx_gmu_fw_start.rpmh_init, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @a6xx_hfi_irq._rs, ptr @.str.43, ptr @.str.44, ptr @a6xx_gmu_irq._rs, ptr @.str.45, ptr @a6xx_gmu_irq._rs.46, ptr @.str.48, ptr @a6xx_gmu_irq._rs.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gmu_set_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gmu_oob_bits to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gmu_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gmu_fw_start.rpmh_init to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_hfi_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_hfi_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gmu_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gmu_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gmu_irq._rs.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gmu_irq._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gmu_irq._rs.50 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gmu_irq._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @a6xx_gmu_sptprac_is_on(ptr nocapture noundef readonly %gmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 28
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 8, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 3
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 82752
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #9
  %and = and i32 %call.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool1.not, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @a6xx_gmu_gx_is_on(ptr nocapture noundef readonly %gmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 28
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 8, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 3
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 82752
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #9
  %and = and i32 %call.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool1.not, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a6xx_gmu_set_freq(ptr noundef %gpu, ptr noundef %opp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gmu4 = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4
  %call = tail call i32 @dev_pm_opp_get_freq(ptr noundef %opp) #9
  %freq = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 26
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %1)
  %cmp = icmp eq i32 %call, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nr_gpu_freqs = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 20
  %2 = ptrtoint ptr %nr_gpu_freqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_gpu_freqs, align 4
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp582.not = icmp eq i32 %sub, 0
  br i1 %cmp582.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %perf_index.083 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 21, i32 %perf_index.083
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp6 = icmp eq i32 %call, %5
  br i1 %cmp6, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %perf_index.083, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %perf_index.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %perf_index.083, %for.body.for.end_crit_edge ], [ %sub, %for.inc.for.end_crit_edge ]
  %current_perf_index = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 19
  %6 = ptrtoint ptr %current_perf_index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %perf_index.0.lcssa, ptr %current_perf_index, align 8
  %arrayidx10 = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 21, i32 %perf_index.0.lcssa
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx10, align 4
  %9 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %freq, align 4
  tail call fastcc void @trace_msm_gmu_freq_change(i32 noundef %8, i32 noundef %perf_index.0.lcssa)
  %10 = ptrtoint ptr %gmu4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gmu4, align 8
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %11, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp eq i32 %call.i, 0
  br i1 %cmp14, label %for.end.cleanup_crit_edge, label %if.end16

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %for.end
  %legacy = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 30
  %12 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %legacy, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 @a6xx_hfi_set_freq(ptr noundef %gmu4, i32 noundef %perf_index.0.lcssa) #9
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.end16
  %mmio.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 36848
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #9
  %or = or i32 %perf_index.0.lcssa, 805306368
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %17, i32 36852
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr.i73) #9
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %19, i32 36856
  tail call void @msm_writel(i32 noundef 255, ptr noundef %add.ptr.i75) #9
  %call24 = tail call i32 @a6xx_gmu_set_oob(ptr noundef %gmu4, i32 noundef 2)
  %lock.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 1
  %call.i76 = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock.i) #9
  br i1 %call.i76, label %if.end23.a6xx_gmu_clear_oob.exit_crit_edge, label %land.rhs.i

if.end23.a6xx_gmu_clear_oob.exit_crit_edge:       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_clear_oob.exit

land.rhs.i:                                       ; preds = %if.end23
  %.b48.i = load i1, ptr @a6xx_gmu_clear_oob.__already_done, align 1
  br i1 %.b48.i, label %land.rhs.i.a6xx_gmu_clear_oob.exit_crit_edge, label %if.then.i, !prof !145

land.rhs.i.a6xx_gmu_clear_oob.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_clear_oob.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @a6xx_gmu_clear_oob.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 342, i32 noundef 9, ptr noundef null) #9
  br label %a6xx_gmu_clear_oob.exit

a6xx_gmu_clear_oob.exit:                          ; preds = %if.then.i, %land.rhs.i.a6xx_gmu_clear_oob.exit_crit_edge, %if.end23.a6xx_gmu_clear_oob.exit_crit_edge
  %20 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %legacy, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool38.not.i = icmp eq i8 %21, 0
  %shl.i = select i1 %tobool38.not.i, i32 1, i32 -2147483648
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 83536
  tail call void @msm_writel(i32 noundef %shl.i, ptr noundef %add.ptr.i.i) #9
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %25, i32 36860
  %call.i79 = tail call i32 @msm_readl(ptr noundef %add.ptr.i78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool26.not = icmp eq i32 %call.i79, 0
  br i1 %tobool26.not, label %a6xx_gmu_clear_oob.exit.cleanup.sink.split_crit_edge, label %do.end

a6xx_gmu_clear_oob.exit.cleanup.sink.split_crit_edge: ; preds = %a6xx_gmu_clear_oob.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end:                                           ; preds = %a6xx_gmu_clear_oob.exit
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %gmu4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gmu4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str, i32 noundef %call.i79) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %a6xx_gmu_clear_oob.exit.cleanup.sink.split_crit_edge, %if.then17
  %pdev30 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %28 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev30, align 8
  %dev31 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %call32 = tail call i32 @dev_pm_opp_set_opp(ptr noundef %dev31, ptr noundef %opp) #9
  %30 = ptrtoint ptr %gmu4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gmu4, align 8
  %call.i80 = tail call i32 @__pm_runtime_idle(ptr noundef %31, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_gmu_freq_change(i32 noundef %freq, i32 noundef %perf_index) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gmu_freq_change, i32 0, i32 1), ptr blockaddress(@trace_msm_gmu_freq_change, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !146

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !134) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !145

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !134) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !147
  %call42 = tail call i32 @__traceiter_msm_gmu_freq_change(ptr noundef null, i32 noundef %freq, i32 noundef %perf_index) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !148
  %13 = tail call i32 @llvm.read_register.i32(metadata !134) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !134) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !145

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !134) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gmu_freq_change, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gmu_freq_change, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_msm_gmu_freq_change.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_msm_gmu_freq_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 115, ptr noundef nonnull @.str.19) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !150
  %31 = tail call i32 @llvm.read_register.i32(metadata !134) #9
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
declare dso_local i32 @a6xx_hfi_set_freq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_opp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @a6xx_gmu_set_oob(ptr noundef %gmu, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 1
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #9
  br i1 %call, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b129 = load i1, ptr @a6xx_gmu_set_oob.__already_done, align 1
  br i1 %.b129, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !145

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @a6xx_gmu_set_oob.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 299, i32 noundef 9, ptr noundef null) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp ugt i32 %state, 3
  br i1 %cmp, label %if.end28.cleanup_crit_edge, label %if.end37

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %legacy = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 30
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %legacy, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool38.not = icmp eq i8 %1, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %state
  %ack41 = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %state, i32 1
  br label %if.end49

if.else:                                          ; preds = %if.end37
  %2 = and i32 %state, 1073741821
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %set_new = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %state, i32 2
  %ack_new = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %state, i32 3
  br label %if.end49

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gmu, align 8
  %name = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %state, i32 6
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef %7) #9
  br label %cleanup

if.end49:                                         ; preds = %lor.lhs.false, %if.then39
  %ack.0.in = phi ptr [ %ack41, %if.then39 ], [ %ack_new, %lor.lhs.false ]
  %request.0.in = phi ptr [ %arrayidx, %if.then39 ], [ %set_new, %lor.lhs.false ]
  %8 = ptrtoint ptr %request.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %request.0 = load i32, ptr %request.0.in, align 4
  %9 = ptrtoint ptr %ack.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %ack.0 = load i32, ptr %ack.0.in, align 4
  %shl = shl nuw i32 1, %request.0
  %mmio.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 3
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 83536
  tail call void @msm_writel(i32 noundef %shl, ptr noundef %add.ptr.i) #9
  %call50 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call50, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 323) #9
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr137 = getelementptr i8, ptr %13, i32 83528
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137) #9, !srcloc !151
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %shl67 = shl nuw i32 1, %ack.0
  %and138 = and i32 %15, %shl67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool68.not139 = icmp eq i32 %and138, 0
  br i1 %tobool68.not139, label %if.end49.land.lhs.true_crit_edge, label %if.end49.for.end_crit_edge

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end49.land.lhs.true_crit_edge:                 ; preds = %if.end49
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then85.land.lhs.true_crit_edge, %if.end49.land.lhs.true_crit_edge
  %call72 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call72, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call72, %add.i
  br i1 %cmp3.i, label %if.then75, label %if.then85

if.then75:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr79 = getelementptr i8, ptr %17, i32 83528
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #9, !srcloc !151
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  br label %for.end

if.then85:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 83528
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !151
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %and = and i32 %23, %shl67
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %if.then85.land.lhs.true_crit_edge, label %if.then85.for.end_crit_edge

if.then85.for.end_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then85.land.lhs.true_crit_edge:                ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %if.then85.for.end_crit_edge, %if.then75, %if.end49.for.end_crit_edge
  %val.0 = phi i32 [ %19, %if.then75 ], [ %15, %if.end49.for.end_crit_edge ], [ %23, %if.then85.for.end_crit_edge ]
  %and89 = and i32 %val.0, %shl67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  %cond = select i1 %tobool90.not, i32 -110, i32 0
  br i1 %tobool90.not, label %if.then92, label %for.end.if.end97_crit_edge

for.end.if.end97_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then92:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gmu, align 8
  %name95 = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %state, i32 6
  %26 = ptrtoint ptr %name95 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name95, align 4
  %28 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %29, i32 83528
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i131) #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, ptr noundef %27, i32 noundef %call.i) #9
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %for.end.if.end97_crit_edge
  %30 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %31, i32 83524
  tail call void @msm_writel(i32 noundef %shl67, ptr noundef %add.ptr.i133) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.then46, %if.end28.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end97 ], [ -22, %if.then46 ], [ -22, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a6xx_gmu_clear_oob(ptr noundef %gmu, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 1
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #9
  br i1 %call, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b48 = load i1, ptr @a6xx_gmu_clear_oob.__already_done, align 1
  br i1 %.b48, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !145

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @a6xx_gmu_clear_oob.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 342, i32 noundef 9, ptr noundef null) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp ugt i32 %state, 3
  br i1 %cmp, label %if.end28.cleanup_crit_edge, label %if.end37

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %legacy = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 30
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %legacy, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool38.not = icmp eq i8 %1, 0
  %clear = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %state, i32 4
  %clear_new = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %state, i32 5
  %bit.0.in = select i1 %tobool38.not, ptr %clear_new, ptr %clear
  %2 = ptrtoint ptr %bit.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %bit.0 = load i32, ptr %bit.0.in, align 4
  %shl = shl nuw i32 1, %bit.0
  %mmio.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 3
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 83536
  tail call void @msm_writel(i32 noundef %shl, ptr noundef %add.ptr.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end28.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @a6xx_gmu_get_freq(ptr nocapture noundef readonly %gpu) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %freq = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 26
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freq, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @a6xx_gmu_wait_for_idle(ptr nocapture noundef readonly %gmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %initialized.i.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 28
  %idle_level.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 8
  %mmio.i.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 3
  %add.neg = sub i32 -100, %0
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %1 = ptrtoint ptr %idle_level.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %idle_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.i = icmp eq i32 %2, 2
  %spec.store.select.i = select i1 %cmp.i, i32 3, i32 %2
  %3 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 82864
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %spec.store.select.i)
  %cmp2.i = icmp eq i32 %call.i.i, %spec.store.select.i
  br i1 %cmp2.i, label %if.then3.i, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

if.then3.i:                                       ; preds = %do.body
  %5 = ptrtoint ptr %idle_level.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idle_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp5.not.i = icmp eq i32 %6, 3
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.then3.i.do.end_crit_edge

if.then3.i.do.end_crit_edge:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.then3.i
  %7 = ptrtoint ptr %initialized.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %initialized.i.i, align 8, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.do.end_crit_edge, label %a6xx_gmu_gx_is_on.exit.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

a6xx_gmu_gx_is_on.exit.i:                         ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 82752
  %call.i.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i.i) #9
  %and.i.i = and i32 %call.i.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %a6xx_gmu_gx_is_on.exit.i.do.cond_crit_edge, label %a6xx_gmu_gx_is_on.exit.i.do.end_crit_edge

a6xx_gmu_gx_is_on.exit.i.do.end_crit_edge:        ; preds = %a6xx_gmu_gx_is_on.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

a6xx_gmu_gx_is_on.exit.i.do.cond_crit_edge:       ; preds = %a6xx_gmu_gx_is_on.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

do.cond:                                          ; preds = %a6xx_gmu_gx_is_on.exit.i.do.cond_crit_edge, %do.body.do.cond_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %11
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %a6xx_gmu_gx_is_on.exit.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.then3.i.do.end_crit_edge
  %__ret.0 = phi i32 [ -110, %do.cond.do.end_crit_edge ], [ 0, %a6xx_gmu_gx_is_on.exit.i.do.end_crit_edge ], [ 0, %if.then3.i.do.end_crit_edge ], [ 0, %lor.lhs.false.i.do.end_crit_edge ]
  ret i32 %__ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @a6xx_gmu_resume(ptr noundef %a6xx_gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gmu2 = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4
  %initialized = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 28
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 8, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !154

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 922, i32 noundef 9, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end25:                                         ; preds = %entry
  %hung = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 29
  %2 = ptrtoint ptr %hung to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %hung, align 1
  %3 = ptrtoint ptr %gmu2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gmu2, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #9
  %gxpd = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 7
  %5 = ptrtoint ptr %gxpd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gxpd, align 4
  %tobool.not.i = icmp eq ptr %6, null
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end25.if.end30_crit_edge, label %if.then27

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call.i100 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %6, i32 noundef 4) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25.if.end30_crit_edge
  %core_clk = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 17
  %7 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core_clk, align 8
  %call31 = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef 200000000) #9
  %hub_clk = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 18
  %9 = ptrtoint ptr %hub_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hub_clk, align 4
  %call32 = tail call i32 @clk_set_rate(ptr noundef %10, i32 noundef 150000000) #9
  %nr_clocks = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 15
  %11 = ptrtoint ptr %nr_clocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_clocks, align 8
  %clocks = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 16
  %13 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clocks, align 4
  %call.i101 = tail call i32 @clk_bulk_prepare(i32 noundef %12, ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i102 = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i102, label %if.end.i, label %if.end30.if.then35_crit_edge

if.end30.if.then35_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.end.i:                                         ; preds = %if.end30
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %12, ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end40, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_unprepare(i32 noundef %12, ptr noundef %14) #9
  br label %if.then35

if.then35:                                        ; preds = %if.then3.i, %if.end30.if.then35_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i101, %if.end30.if.then35_crit_edge ]
  %15 = ptrtoint ptr %gxpd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gxpd, align 4
  %call.i103 = tail call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 5) #9
  %17 = ptrtoint ptr %gmu2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gmu2, align 8
  %call.i104 = tail call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 5) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end.i
  %current_perf_index.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 19
  %19 = ptrtoint ptr %current_perf_index.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %current_perf_index.i, align 8
  %arrayidx.i = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 21, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %pdev.i = getelementptr inbounds %struct.msm_gpu, ptr %a6xx_gpu, i32 0, i32 2
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %call.i105 = tail call ptr @dev_pm_opp_find_freq_exact(ptr noundef %dev.i, i32 noundef %22, i1 noundef zeroext true) #9
  %cmp.i.i = icmp ugt ptr %call.i105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end40.a6xx_gmu_set_initial_bw.exit_crit_edge, label %if.end.i106

if.end40.a6xx_gmu_set_initial_bw.exit_crit_edge:  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_set_initial_bw.exit

if.end.i106:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 8
  %dev3.i = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %call4.i = tail call i32 @dev_pm_opp_set_opp(ptr noundef %dev3.i, ptr noundef %call.i105) #9
  tail call void @dev_pm_opp_put(ptr noundef %call.i105) #9
  br label %a6xx_gmu_set_initial_bw.exit

a6xx_gmu_set_initial_bw.exit:                     ; preds = %if.end.i106, %if.end40.a6xx_gmu_set_initial_bw.exit_crit_edge
  %mmio.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 150544
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i) #9
  %29 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %30, i32 150552
  tail call void @msm_writel(i32 noundef -42, ptr noundef %add.ptr.i108) #9
  %gmu_irq = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %gmu_irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gmu_irq, align 8
  tail call void @enable_irq(i32 noundef %32) #9
  %33 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %34, i32 83760
  %call.i111 = tail call i32 @msm_readl(ptr noundef %add.ptr.i110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i111)
  %cmp = icmp ne i32 %call.i111, 1
  %legacy = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 30
  %35 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %legacy, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool42.not = icmp eq i8 %36, 0
  %narrow = select i1 %tobool42.not, i1 true, i1 %cmp
  %spec.store.select = zext i1 %narrow to i32
  %revn.i.i = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 0, i32 4
  %37 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %revn.i.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %38, label %adreno_is_a650_family.exit.i [
    i32 650, label %a6xx_gmu_set_initial_bw.exit.if.then.i_crit_edge
    i32 620, label %a6xx_gmu_set_initial_bw.exit.if.then.i_crit_edge139
    i32 660, label %a6xx_gmu_set_initial_bw.exit.if.then.i_crit_edge140
  ]

a6xx_gmu_set_initial_bw.exit.if.then.i_crit_edge140: ; preds = %a6xx_gmu_set_initial_bw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

a6xx_gmu_set_initial_bw.exit.if.then.i_crit_edge139: ; preds = %a6xx_gmu_set_initial_bw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

a6xx_gmu_set_initial_bw.exit.if.then.i_crit_edge: ; preds = %a6xx_gmu_set_initial_bw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

adreno_is_a650_family.exit.i:                     ; preds = %a6xx_gmu_set_initial_bw.exit
  %rev.i.i.i.i = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %rev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack.i.i.i.i = load i32, ptr %rev.i.i.i.i, align 8
  %41 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i.i, 0
  %call.i.i.i.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %41) #9
  br i1 %call.i.i.i.i, label %adreno_is_a650_family.exit.i.if.then.i_crit_edge, label %adreno_is_a650_family.exit.i.if.end.i113_crit_edge

adreno_is_a650_family.exit.i.if.end.i113_crit_edge: ; preds = %adreno_is_a650_family.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i113

adreno_is_a650_family.exit.i.if.then.i_crit_edge: ; preds = %adreno_is_a650_family.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %adreno_is_a650_family.exit.i.if.then.i_crit_edge, %a6xx_gmu_set_initial_bw.exit.if.then.i_crit_edge, %a6xx_gmu_set_initial_bw.exit.if.then.i_crit_edge139, %a6xx_gmu_set_initial_bw.exit.if.then.i_crit_edge140
  %42 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 82884
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i.i) #9
  %44 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i141.i = getelementptr i8, ptr %45, i32 82880
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i141.i) #9
  br label %if.end.i113

if.end.i113:                                      ; preds = %if.then.i, %adreno_is_a650_family.exit.i.if.end.i113_crit_edge
  br i1 %narrow, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i113
  %call2.i = tail call fastcc i32 @a6xx_rpmh_start(ptr noundef %gmu2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then1.i.if.end45.i_crit_edge, label %if.then1.i.if.then54_crit_edge

if.then1.i.if.then54_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.then1.i.if.end45.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.else.i:                                        ; preds = %if.end.i113
  %arrayidx.i114 = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i114, align 4
  %tobool6.not.i = icmp eq ptr %47, null
  br i1 %tobool6.not.i, label %do.end.i, label %if.end32.i, !prof !154

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 769, i32 noundef 9, ptr noundef nonnull @.str.25) #9
  br label %if.then54

if.end32.i:                                       ; preds = %if.else.i
  %48 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i143.i = getelementptr i8, ptr %49, i32 83760
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i143.i) #9
  %.b138.i = load i1, ptr @a6xx_gmu_fw_start.rpmh_init, align 1
  br i1 %.b138.i, label %if.else35.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end32.i
  %50 = ptrtoint ptr %gmu2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gmu2, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %51, i32 -16
  %call.i.i.i = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr3.i.i, i32 noundef 512, ptr noundef nonnull @.str.28) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then34.i.a6xx_gmu_get_mmio.exit.thread.i.i_crit_edge, label %if.end.i.i.i

if.then34.i.a6xx_gmu_get_mmio.exit.thread.i.i_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_get_mmio.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.then34.i
  %52 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.resource, ptr %call.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %end.i.i.i.i, align 4
  %sub.i.i.i.i = sub i32 1, %53
  %add.i.i.i.i = add i32 %sub.i.i.i.i, %55
  %call3.i.i.i = tail call ptr @ioremap(i32 noundef %53, i32 noundef %add.i.i.i.i) #9
  %tobool4.not.i.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.a6xx_gmu_get_mmio.exit.thread.i.i_crit_edge, label %a6xx_gmu_get_mmio.exit.i.i

if.end.i.i.i.a6xx_gmu_get_mmio.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_get_mmio.exit.thread.i.i

a6xx_gmu_get_mmio.exit.thread.i.i:                ; preds = %if.end.i.i.i.a6xx_gmu_get_mmio.exit.thread.i.i_crit_edge, %if.then34.i.a6xx_gmu_get_mmio.exit.thread.i.i_crit_edge
  %.str.41.sink.i.i.i = phi ptr [ @.str.40, %if.then34.i.a6xx_gmu_get_mmio.exit.thread.i.i_crit_edge ], [ @.str.41, %if.end.i.i.i.a6xx_gmu_get_mmio.exit.thread.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %51, ptr noundef nonnull @.str.3, ptr noundef nonnull %.str.41.sink.i.i.i, ptr noundef nonnull @.str.28) #9
  br label %a6xx_gmu_rpmh_init.exit.i

a6xx_gmu_get_mmio.exit.i.i:                       ; preds = %if.end.i.i.i
  %cmp.i.i.i = icmp ugt ptr %call3.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %a6xx_gmu_get_mmio.exit.i.i.a6xx_gmu_rpmh_init.exit.i_crit_edge, label %if.end.i.i

a6xx_gmu_get_mmio.exit.i.i.a6xx_gmu_rpmh_init.exit.i_crit_edge: ; preds = %a6xx_gmu_get_mmio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_rpmh_init.exit.i

if.end.i.i:                                       ; preds = %a6xx_gmu_get_mmio.exit.i.i
  %56 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %revn.i.i, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %57, label %adreno_is_a660_family.exit.i.i [
    i32 660, label %if.end.i.i.if.end24.i.i_crit_edge
    i32 650, label %if.end.i.i.if.end24.i.i_crit_edge141
  ]

if.end.i.i.if.end24.i.i_crit_edge141:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.end.i.i.if.end24.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

adreno_is_a660_family.exit.i.i:                   ; preds = %if.end.i.i
  %rev.i.i.i144.i = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %rev.i.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.unpack.i.i.i145.i = load i32, ptr %rev.i.i.i144.i, align 8
  %60 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i145.i, 0
  %call.i.i.i146.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %60) #9
  br i1 %call.i.i.i146.i, label %adreno_is_a660_family.exit.i.i.if.end24.i.i_crit_edge, label %if.else.i.i

adreno_is_a660_family.exit.i.i.if.end24.i.i_crit_edge: ; preds = %adreno_is_a660_family.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.else.i.i:                                      ; preds = %adreno_is_a660_family.exit.i.i
  %61 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %revn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 618, i32 %62)
  %cmp.i117.not.i.i = icmp eq i32 %62, 618
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %62)
  %cmp.i120.i.i = icmp ne i32 %62, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 680, i32 %62)
  %cmp2.i.i.i = icmp ne i32 %62, 680
  %tobool13.not.i.i = and i1 %cmp.i120.i.i, %cmp2.i.i.i
  %spec.select.i.i = select i1 %tobool13.not.i.i, i32 196736, i32 196752
  %pdc_address_offset.0.i.i = select i1 %cmp.i117.not.i.i, i32 196752, i32 %spec.select.i.i
  %call.i121.i.i = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr3.i.i, i32 noundef 512, ptr noundef nonnull @.str.29) #9
  %tobool.not.i122.i.i = icmp eq ptr %call.i121.i.i, null
  br i1 %tobool.not.i122.i.i, label %if.else.i.i.a6xx_gmu_get_mmio.exit133.thread.i.i_crit_edge, label %if.end.i128.i.i

if.else.i.i.a6xx_gmu_get_mmio.exit133.thread.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_get_mmio.exit133.thread.i.i

if.end.i128.i.i:                                  ; preds = %if.else.i.i
  %63 = ptrtoint ptr %call.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call.i121.i.i, align 4
  %end.i.i123.i.i = getelementptr inbounds %struct.resource, ptr %call.i121.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %end.i.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %end.i.i123.i.i, align 4
  %sub.i.i124.i.i = sub i32 1, %64
  %add.i.i125.i.i = add i32 %sub.i.i124.i.i, %66
  %call3.i126.i.i = tail call ptr @ioremap(i32 noundef %64, i32 noundef %add.i.i125.i.i) #9
  %tobool4.not.i127.i.i = icmp eq ptr %call3.i126.i.i, null
  br i1 %tobool4.not.i127.i.i, label %if.end.i128.i.i.a6xx_gmu_get_mmio.exit133.thread.i.i_crit_edge, label %a6xx_gmu_get_mmio.exit133.i.i

if.end.i128.i.i.a6xx_gmu_get_mmio.exit133.thread.i.i_crit_edge: ; preds = %if.end.i128.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_get_mmio.exit133.thread.i.i

a6xx_gmu_get_mmio.exit133.thread.i.i:             ; preds = %if.end.i128.i.i.a6xx_gmu_get_mmio.exit133.thread.i.i_crit_edge, %if.else.i.i.a6xx_gmu_get_mmio.exit133.thread.i.i_crit_edge
  %.str.41.sink.i129.i.i = phi ptr [ @.str.40, %if.else.i.i.a6xx_gmu_get_mmio.exit133.thread.i.i_crit_edge ], [ @.str.41, %if.end.i128.i.i.a6xx_gmu_get_mmio.exit133.thread.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %51, ptr noundef nonnull @.str.3, ptr noundef nonnull %.str.41.sink.i129.i.i, ptr noundef nonnull @.str.29) #9
  br label %if.then42.i.i

a6xx_gmu_get_mmio.exit133.i.i:                    ; preds = %if.end.i128.i.i
  %cmp.i134.i.i = icmp ugt ptr %call3.i126.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134.i.i, label %a6xx_gmu_get_mmio.exit133.i.i.if.then42.i.i_crit_edge, label %a6xx_gmu_get_mmio.exit133.i.i.if.end24.i.i_crit_edge

a6xx_gmu_get_mmio.exit133.i.i.if.end24.i.i_crit_edge: ; preds = %a6xx_gmu_get_mmio.exit133.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

a6xx_gmu_get_mmio.exit133.i.i.if.then42.i.i_crit_edge: ; preds = %a6xx_gmu_get_mmio.exit133.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42.i.i

if.end24.i.i:                                     ; preds = %a6xx_gmu_get_mmio.exit133.i.i.if.end24.i.i_crit_edge, %adreno_is_a660_family.exit.i.i.if.end24.i.i_crit_edge, %if.end.i.i.if.end24.i.i_crit_edge, %if.end.i.i.if.end24.i.i_crit_edge141
  %pdc_in_aop.0.off0232.i.i = phi i1 [ false, %a6xx_gmu_get_mmio.exit133.i.i.if.end24.i.i_crit_edge ], [ true, %adreno_is_a660_family.exit.i.i.if.end24.i.i_crit_edge ], [ true, %if.end.i.i.if.end24.i.i_crit_edge ], [ true, %if.end.i.i.if.end24.i.i_crit_edge141 ]
  %pdc_address_offset.0231.i.i = phi i32 [ %pdc_address_offset.0.i.i, %a6xx_gmu_get_mmio.exit133.i.i.if.end24.i.i_crit_edge ], [ -1, %adreno_is_a660_family.exit.i.i.if.end24.i.i_crit_edge ], [ -1, %if.end.i.i.if.end24.i.i_crit_edge ], [ -1, %if.end.i.i.if.end24.i.i_crit_edge141 ]
  %seqptr.0.i.i = phi ptr [ %call3.i126.i.i, %a6xx_gmu_get_mmio.exit133.i.i.if.end24.i.i_crit_edge ], [ null, %adreno_is_a660_family.exit.i.i.if.end24.i.i_crit_edge ], [ null, %if.end.i.i.if.end24.i.i_crit_edge ], [ null, %if.end.i.i.if.end24.i.i_crit_edge141 ]
  %rscc.i.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 4
  %67 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %68, i32 16
  tail call void @msm_writel(i32 noundef 16777216, ptr noundef %add.ptr.i.i.i) #9
  %69 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i136.i.i = getelementptr i8, ptr %70, i32 44
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i136.i.i) #9
  %71 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i138.i.i = getelementptr i8, ptr %72, i32 56
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i138.i.i) #9
  %73 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i140.i.i = getelementptr i8, ptr %74, i32 52
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i140.i.i) #9
  %75 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i142.i.i = getelementptr i8, ptr %76, i32 64
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i142.i.i) #9
  %77 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i144.i.i = getelementptr i8, ptr %78, i32 60
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i144.i.i) #9
  %79 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i146.i.i = getelementptr i8, ptr %80, i32 72
  tail call void @msm_writel(i32 noundef -2147483648, ptr noundef %add.ptr.i146.i.i) #9
  %81 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i148.i.i = getelementptr i8, ptr %82, i32 68
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i148.i.i) #9
  %83 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i150.i.i = getelementptr i8, ptr %84, i32 1024
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i150.i.i) #9
  %85 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i152.i.i = getelementptr i8, ptr %86, i32 32
  tail call void @msm_writel(i32 noundef 17696, ptr noundef %add.ptr.i152.i.i) #9
  %87 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i154.i.i = getelementptr i8, ptr %88, i32 36
  tail call void @msm_writel(i32 noundef 17680, ptr noundef %add.ptr.i154.i.i) #9
  %89 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i156.i.i = getelementptr i8, ptr %90, i32 40
  tail call void @msm_writel(i32 noundef 17684, ptr noundef %add.ptr.i156.i.i) #9
  %91 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %revn.i.i, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %92, label %adreno_is_a650_family.exit.i.i [
    i32 650, label %if.end24.i.i.if.end29.i.i_crit_edge
    i32 620, label %if.end24.i.i.if.end29.i.i_crit_edge142
    i32 660, label %if.end24.i.i.if.end29.i.i_crit_edge143
  ]

if.end24.i.i.if.end29.i.i_crit_edge143:           ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

if.end24.i.i.if.end29.i.i_crit_edge142:           ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

if.end24.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

adreno_is_a650_family.exit.i.i:                   ; preds = %if.end24.i.i
  %rev.i.i.i.i.i = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 0, i32 1
  %94 = ptrtoint ptr %rev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %.unpack.i.i.i.i.i = load i32, ptr %rev.i.i.i.i.i, align 8
  %95 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i.i.i, 0
  %call.i.i.i.i.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %95) #9
  br i1 %call.i.i.i.i.i, label %adreno_is_a650_family.exit.i.i.if.end29.i.i_crit_edge, label %if.else28.i.i

adreno_is_a650_family.exit.i.i.if.end29.i.i_crit_edge: ; preds = %adreno_is_a650_family.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

if.else28.i.i:                                    ; preds = %adreno_is_a650_family.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.else28.i.i, %adreno_is_a650_family.exit.i.i.if.end29.i.i_crit_edge, %if.end24.i.i.if.end29.i.i_crit_edge, %if.end24.i.i.if.end29.i.i_crit_edge142, %if.end24.i.i.if.end29.i.i_crit_edge143
  %.sink255.i.i = phi i32 [ -1482357088, %if.else28.i.i ], [ -357898848, %if.end24.i.i.if.end29.i.i_crit_edge ], [ -357898848, %if.end24.i.i.if.end29.i.i_crit_edge142 ], [ -357898848, %if.end24.i.i.if.end29.i.i_crit_edge143 ], [ -357898848, %adreno_is_a650_family.exit.i.i.if.end29.i.i_crit_edge ]
  %.sink253.i.i = phi i32 [ -1578719513, %if.else28.i.i ], [ -509482069, %if.end24.i.i.if.end29.i.i_crit_edge ], [ -509482069, %if.end24.i.i.if.end29.i.i_crit_edge142 ], [ -509482069, %if.end24.i.i.if.end29.i.i_crit_edge143 ], [ -509482069, %adreno_is_a650_family.exit.i.i.if.end29.i.i_crit_edge ]
  %.sink251.i.i = phi i32 [ -1562344991, %if.else28.i.i ], [ -1562335871, %if.end24.i.i.if.end29.i.i_crit_edge ], [ -1562335871, %if.end24.i.i.if.end29.i.i_crit_edge142 ], [ -1562335871, %if.end24.i.i.if.end29.i.i_crit_edge143 ], [ -1562335871, %adreno_is_a650_family.exit.i.i.if.end29.i.i_crit_edge ]
  %.sink249.i.i = phi i32 [ -374766878, %if.else28.i.i ], [ -324238622, %if.end24.i.i.if.end29.i.i_crit_edge ], [ -324238622, %if.end24.i.i.if.end29.i.i_crit_edge142 ], [ -324238622, %if.end24.i.i.if.end29.i.i_crit_edge143 ], [ -324238622, %adreno_is_a650_family.exit.i.i.if.end29.i.i_crit_edge ]
  %.sink.i.i = phi i32 [ 2156712, %if.else28.i.i ], [ 2157997, %if.end24.i.i.if.end29.i.i_crit_edge ], [ 2157997, %if.end24.i.i.if.end29.i.i_crit_edge142 ], [ 2157997, %if.end24.i.i.if.end29.i.i_crit_edge143 ], [ 2157997, %adreno_is_a650_family.exit.i.i.if.end29.i.i_crit_edge ]
  %96 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i169.i.i = getelementptr i8, ptr %97, i32 1536
  tail call void @msm_writel(i32 noundef %.sink255.i.i, ptr noundef %add.ptr.i169.i.i) #9
  %98 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i171.i.i = getelementptr i8, ptr %99, i32 1540
  tail call void @msm_writel(i32 noundef %.sink253.i.i, ptr noundef %add.ptr.i171.i.i) #9
  %100 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i173.i.i = getelementptr i8, ptr %101, i32 1544
  tail call void @msm_writel(i32 noundef %.sink251.i.i, ptr noundef %add.ptr.i173.i.i) #9
  %102 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i175.i.i = getelementptr i8, ptr %103, i32 1548
  tail call void @msm_writel(i32 noundef %.sink249.i.i, ptr noundef %add.ptr.i175.i.i) #9
  %104 = ptrtoint ptr %rscc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rscc.i.i.i, align 8
  %add.ptr.i177.i.i = getelementptr i8, ptr %105, i32 1552
  tail call void @msm_writel(i32 noundef %.sink.i.i, ptr noundef %add.ptr.i177.i.i) #9
  br i1 %pdc_in_aop.0.off0232.i.i, label %if.end29.i.i.setup_pdc.i.i_crit_edge, label %if.end32.i.i

if.end29.i.i.setup_pdc.i.i_crit_edge:             ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %setup_pdc.i.i

if.end32.i.i:                                     ; preds = %if.end29.i.i
  tail call void @msm_writel(i32 noundef -21061151, ptr noundef %seqptr.0.i.i) #9
  %add.ptr.i178.i.i = getelementptr i8, ptr %seqptr.0.i.i, i32 4
  tail call void @msm_writel(i32 noundef -1515936862, ptr noundef %add.ptr.i178.i.i) #9
  %add.ptr.i179.i.i = getelementptr i8, ptr %seqptr.0.i.i, i32 8
  tail call void @msm_writel(i32 noundef -2088589600, ptr noundef %add.ptr.i179.i.i) #9
  %add.ptr.i180.i.i = getelementptr i8, ptr %seqptr.0.i.i, i32 12
  tail call void @msm_writel(i32 noundef -1125916028, ptr noundef %add.ptr.i180.i.i) #9
  %add.ptr.i181.i.i = getelementptr i8, ptr %seqptr.0.i.i, i32 16
  tail call void @msm_writel(i32 noundef 2130428, ptr noundef %add.ptr.i181.i.i) #9
  %add.ptr.i182.i.i = getelementptr i8, ptr %call3.i.i.i, i32 21964
  tail call void @msm_writel(i32 noundef 7, ptr noundef %add.ptr.i182.i.i) #9
  %add.ptr.i183.i.i = getelementptr i8, ptr %call3.i.i.i, i32 21968
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i183.i.i) #9
  %add.ptr.i184.i.i = getelementptr i8, ptr %call3.i.i.i, i32 21960
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i184.i.i) #9
  %add.ptr.i185.i.i = getelementptr i8, ptr %call3.i.i.i, i32 21972
  tail call void @msm_writel(i32 noundef 65800, ptr noundef %add.ptr.i185.i.i) #9
  %add.ptr.i186.i.i = getelementptr i8, ptr %call3.i.i.i, i32 21976
  tail call void @msm_writel(i32 noundef 196624, ptr noundef %add.ptr.i186.i.i) #9
  %add.ptr.i187.i.i = getelementptr i8, ptr %call3.i.i.i, i32 21980
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i187.i.i) #9
  %add.ptr.i188.i.i = getelementptr i8, ptr %call3.i.i.i, i32 21988
  tail call void @msm_writel(i32 noundef 65800, ptr noundef %add.ptr.i188.i.i) #9
  %add.ptr.i189.i.i = getelementptr i8, ptr %call3.i.i.i, i32 21992
  tail call void @msm_writel(i32 noundef 196608, ptr noundef %add.ptr.i189.i.i) #9
  %add.ptr.i190.i.i = getelementptr i8, ptr %call3.i.i.i, i32 21996
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i190.i.i) #9
  %add.ptr.i191.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22004
  tail call void @msm_writel(i32 noundef 65800, ptr noundef %add.ptr.i191.i.i) #9
  %add.ptr.i192.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22008
  tail call void @msm_writel(i32 noundef %pdc_address_offset.0231.i.i, ptr noundef %add.ptr.i192.i.i) #9
  %add.ptr.i193.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22012
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i193.i.i) #9
  %add.ptr.i194.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22364
  tail call void @msm_writel(i32 noundef 7, ptr noundef %add.ptr.i194.i.i) #9
  %add.ptr.i195.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22368
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i195.i.i) #9
  %add.ptr.i196.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22360
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i196.i.i) #9
  %add.ptr.i197.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22372
  tail call void @msm_writel(i32 noundef 65800, ptr noundef %add.ptr.i197.i.i) #9
  %add.ptr.i198.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22376
  tail call void @msm_writel(i32 noundef 196624, ptr noundef %add.ptr.i198.i.i) #9
  %add.ptr.i199.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22380
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i199.i.i) #9
  %add.ptr.i200.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22388
  tail call void @msm_writel(i32 noundef 65800, ptr noundef %add.ptr.i200.i.i) #9
  %add.ptr.i201.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22392
  tail call void @msm_writel(i32 noundef 196608, ptr noundef %add.ptr.i201.i.i) #9
  %106 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %revn.i.i, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %107, label %adreno_is_a650_family.exit211.i.i [
    i32 618, label %if.end32.i.i.if.end40.i.i_crit_edge
    i32 650, label %if.end32.i.i.if.end40.i.i_crit_edge144
    i32 620, label %if.end32.i.i.if.end40.i.i_crit_edge145
    i32 660, label %if.end32.i.i.if.end40.i.i_crit_edge146
  ]

if.end32.i.i.if.end40.i.i_crit_edge146:           ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

if.end32.i.i.if.end40.i.i_crit_edge145:           ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

if.end32.i.i.if.end40.i.i_crit_edge144:           ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

if.end32.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

adreno_is_a650_family.exit211.i.i:                ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rev.i.i.i206.i.i = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 0, i32 1
  %109 = ptrtoint ptr %rev.i.i.i206.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %.unpack.i.i.i207.i.i = load i32, ptr %rev.i.i.i206.i.i, align 8
  %110 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i207.i.i, 0
  %call.i.i.i208.i.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %110) #9
  %spec.select258.i.i = select i1 %call.i.i.i208.i.i, i32 2, i32 3
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %adreno_is_a650_family.exit211.i.i, %if.end32.i.i.if.end40.i.i_crit_edge, %if.end32.i.i.if.end40.i.i_crit_edge144, %if.end32.i.i.if.end40.i.i_crit_edge145, %if.end32.i.i.if.end40.i.i_crit_edge146
  %.sink257.i.i = phi i32 [ 2, %if.end32.i.i.if.end40.i.i_crit_edge ], [ 2, %if.end32.i.i.if.end40.i.i_crit_edge144 ], [ 2, %if.end32.i.i.if.end40.i.i_crit_edge145 ], [ 2, %if.end32.i.i.if.end40.i.i_crit_edge146 ], [ %spec.select258.i.i, %adreno_is_a650_family.exit211.i.i ]
  %add.ptr.i213.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22396
  tail call void @msm_writel(i32 noundef %.sink257.i.i, ptr noundef %add.ptr.i213.i.i) #9
  %add.ptr.i214.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22404
  tail call void @msm_writel(i32 noundef 65800, ptr noundef %add.ptr.i214.i.i) #9
  %add.ptr.i215.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22408
  tail call void @msm_writel(i32 noundef %pdc_address_offset.0231.i.i, ptr noundef %add.ptr.i215.i.i) #9
  %add.ptr.i216.i.i = getelementptr i8, ptr %call3.i.i.i, i32 22412
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i216.i.i) #9
  br label %setup_pdc.i.i

setup_pdc.i.i:                                    ; preds = %if.end40.i.i, %if.end29.i.i.setup_pdc.i.i_crit_edge
  %add.ptr.i217.i.i = getelementptr i8, ptr %call3.i.i.i, i32 17696
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i217.i.i) #9
  %add.ptr.i218.i.i = getelementptr i8, ptr %call3.i.i.i, i32 17664
  tail call void @msm_writel(i32 noundef -2147483647, ptr noundef %add.ptr.i218.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @arm_heavy_mb() #9
  br label %if.then42.i.i

if.then42.i.i:                                    ; preds = %setup_pdc.i.i, %a6xx_gmu_get_mmio.exit133.i.i.if.then42.i.i_crit_edge, %a6xx_gmu_get_mmio.exit133.thread.i.i
  %seqptr.1.i.i = phi ptr [ %seqptr.0.i.i, %setup_pdc.i.i ], [ %call3.i126.i.i, %a6xx_gmu_get_mmio.exit133.i.i.if.then42.i.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %a6xx_gmu_get_mmio.exit133.thread.i.i ]
  tail call void @iounmap(ptr noundef nonnull %call3.i.i.i) #9
  %tobool.not.i221.i.i = icmp eq ptr %seqptr.1.i.i, null
  %cmp.i222.i.i = icmp ugt ptr %seqptr.1.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i223.i.i = or i1 %tobool.not.i221.i.i, %cmp.i222.i.i
  br i1 %spec.select.i223.i.i, label %if.then42.i.i.a6xx_gmu_rpmh_init.exit.i_crit_edge, label %if.then45.i.i

if.then42.i.i.a6xx_gmu_rpmh_init.exit.i_crit_edge: ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_rpmh_init.exit.i

if.then45.i.i:                                    ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %seqptr.1.i.i) #9
  br label %a6xx_gmu_rpmh_init.exit.i

a6xx_gmu_rpmh_init.exit.i:                        ; preds = %if.then45.i.i, %if.then42.i.i.a6xx_gmu_rpmh_init.exit.i_crit_edge, %a6xx_gmu_get_mmio.exit.i.i.a6xx_gmu_rpmh_init.exit.i_crit_edge, %a6xx_gmu_get_mmio.exit.thread.i.i
  store i1 true, ptr @a6xx_gmu_fw_start.rpmh_init, align 1
  br label %if.end40.i

if.else35.i:                                      ; preds = %if.end32.i
  %call36.i = tail call fastcc i32 @a6xx_rpmh_start(ptr noundef %gmu2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.else35.i.if.end40.i_crit_edge, label %if.else35.i.if.then54_crit_edge

if.else35.i.if.then54_crit_edge:                  ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.else35.i.if.end40.i_crit_edge:                 ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else35.i.if.end40.i_crit_edge, %a6xx_gmu_rpmh_init.exit.i
  %111 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i114, align 4
  %113 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %revn.i.i, align 4
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %114, label %adreno_is_a650_family.exit.i152.i [
    i32 650, label %if.end40.i.adreno_is_a650_family.exit.thread.i.i_crit_edge
    i32 620, label %if.end40.i.adreno_is_a650_family.exit.thread.i.i_crit_edge147
    i32 660, label %if.end40.i.adreno_is_a650_family.exit.thread.i.i_crit_edge148
  ]

if.end40.i.adreno_is_a650_family.exit.thread.i.i_crit_edge148: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adreno_is_a650_family.exit.thread.i.i

if.end40.i.adreno_is_a650_family.exit.thread.i.i_crit_edge147: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adreno_is_a650_family.exit.thread.i.i

if.end40.i.adreno_is_a650_family.exit.thread.i.i_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adreno_is_a650_family.exit.thread.i.i

adreno_is_a650_family.exit.i152.i:                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %rev.i.i.i.i148.i = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 0, i32 1
  %116 = ptrtoint ptr %rev.i.i.i.i148.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %.unpack.i.i.i.i149.i = load i32, ptr %rev.i.i.i.i148.i, align 8
  %117 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i.i149.i, 0
  %call.i.i.i.i150.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %117) #9
  %spec.select.i151.i = select i1 %call.i.i.i.i150.i, i32 268451840, i32 262144
  br label %adreno_is_a650_family.exit.thread.i.i

adreno_is_a650_family.exit.thread.i.i:            ; preds = %adreno_is_a650_family.exit.i152.i, %if.end40.i.adreno_is_a650_family.exit.thread.i.i_crit_edge, %if.end40.i.adreno_is_a650_family.exit.thread.i.i_crit_edge147, %if.end40.i.adreno_is_a650_family.exit.thread.i.i_crit_edge148
  %118 = phi i32 [ 268451840, %if.end40.i.adreno_is_a650_family.exit.thread.i.i_crit_edge ], [ 268451840, %if.end40.i.adreno_is_a650_family.exit.thread.i.i_crit_edge147 ], [ 268451840, %if.end40.i.adreno_is_a650_family.exit.thread.i.i_crit_edge148 ], [ %spec.select.i151.i, %adreno_is_a650_family.exit.i152.i ]
  %119 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %legacy, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool1.not.i.i = icmp eq i8 %120, 0
  br i1 %tobool1.not.i.i, label %if.end6.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %adreno_is_a650_family.exit.thread.i.i
  %121 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %122)
  %cmp.i.i115 = icmp ugt i32 %122, 32768
  br i1 %cmp.i.i115, label %a6xx_gmu_fw_load.exit.i, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %112, i32 0, i32 1
  %123 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %data.i.i, align 4
  %125 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i153.i = getelementptr i8, ptr %126, i32 12288
  tail call void @mmiocpy(ptr noundef %add.ptr.i.i153.i, ptr noundef %124, i32 noundef %122) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  tail call void @arm_heavy_mb() #9
  br label %if.end45.i

if.end6.i.i:                                      ; preds = %adreno_is_a650_family.exit.thread.i.i
  %data7.i.i = getelementptr inbounds %struct.firmware, ptr %112, i32 0, i32 1
  %127 = ptrtoint ptr %data7.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data7.i.i, align 4
  %129 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %112, align 4
  %add.ptr10132.i.i = getelementptr i8, ptr %128, i32 %130
  %cmp11133.i.i = icmp ult ptr %128, %add.ptr10132.i.i
  br i1 %cmp11133.i.i, label %for.body.lr.ph.i.i, label %if.end6.i.i.if.end45.i_crit_edge

if.end6.i.i.if.end45.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

for.body.lr.ph.i.i:                               ; preds = %if.end6.i.i
  %add.i.i.i = add nuw nsw i32 %118, 16384
  %sub27.i.i = sub nsw i32 28672, %118
  %iova.i.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 11, i32 3
  %size.i.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 11, i32 2
  %virt.i.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 11, i32 1
  %iova.i99.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 12, i32 3
  %size.i101.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 12, i32 2
  %virt.i106.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 12, i32 1
  %iova.i115.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 13, i32 3
  %size.i117.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 13, i32 2
  %virt.i122.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 13, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %blk.0134.i.i = phi ptr [ %128, %for.body.lr.ph.i.i ], [ %arrayidx50.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %size12.i.i = getelementptr inbounds %struct.block_header, ptr %blk.0134.i.i, i32 0, i32 1
  %131 = ptrtoint ptr %size12.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %size12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp13.i.i = icmp eq i32 %132, 0
  br i1 %cmp13.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end15.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end15.i.i:                                     ; preds = %for.body.i.i
  %133 = ptrtoint ptr %blk.0134.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %blk.0134.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %134)
  %cmp1.i.i.i = icmp ugt i32 %134, 16383
  br i1 %cmp1.i.i.i, label %if.else.i154.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %data20.i.i = getelementptr inbounds %struct.block_header, ptr %blk.0134.i.i, i32 0, i32 4
  %135 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mmio.i, align 4
  %137 = add nuw nsw i32 %134, 12288
  %shl.i.i.i = and i32 %137, -4
  %add.ptr.i93.i.i = getelementptr i8, ptr %136, i32 %shl.i.i.i
  tail call void @mmiocpy(ptr noundef %add.ptr.i93.i.i, ptr noundef %data20.i.i, i32 noundef %132) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  tail call void @arm_heavy_mb() #9
  br label %for.inc.i.i

if.else.i154.i:                                   ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %118)
  %cmp.not.i.i.i = icmp ult i32 %134, %118
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %134)
  %cmp1.i94.i.i = icmp ule i32 %add.i.i.i, %134
  %tobool24.not.i.i = or i1 %cmp.not.i.i.i, %cmp1.i94.i.i
  br i1 %tobool24.not.i.i, label %if.else33.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %if.else.i154.i
  call void @__sanitizer_cov_trace_pc() #11
  %data30.i.i = getelementptr inbounds %struct.block_header, ptr %blk.0134.i.i, i32 0, i32 4
  %138 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mmio.i, align 4
  %140 = add i32 %sub27.i.i, %134
  %shl.i96.i.i = and i32 %140, -4
  %add.ptr.i97.i.i = getelementptr i8, ptr %139, i32 %shl.i96.i.i
  tail call void @mmiocpy(ptr noundef %add.ptr.i97.i.i, ptr noundef %data30.i.i, i32 noundef %132) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  tail call void @arm_heavy_mb() #9
  br label %for.inc.i.i

if.else33.i.i:                                    ; preds = %if.else.i154.i
  %141 = ptrtoint ptr %iova.i.i.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %iova.i.i.i, align 8
  %conv.i.i.i = trunc i64 %142 to i32
  %143 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %size.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %conv.i.i.i)
  %cmp.not.i.i.i.i = icmp ult i32 %134, %conv.i.i.i
  %add.i.i.i155.i = add i32 %144, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i155.i, i32 %134)
  %cmp1.i.i.i.i = icmp ule i32 %add.i.i.i155.i, %134
  %tobool.not.i.i156.i = or i1 %cmp.not.i.i.i.i, %cmp1.i.i.i.i
  br i1 %tobool.not.i.i156.i, label %land.lhs.true.i.i, label %fw_block_mem.exit.thread.i.i

fw_block_mem.exit.thread.i.i:                     ; preds = %if.else33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %virt.i.i.i, align 4
  %add.ptr.i98.i.i = getelementptr i8, ptr %146, i32 %134
  %idx.neg.i.i.i = sub i32 0, %conv.i.i.i
  %add.ptr3.i.i.i = getelementptr i8, ptr %add.ptr.i98.i.i, i32 %idx.neg.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.block_header, ptr %blk.0134.i.i, i32 0, i32 4
  %147 = call ptr @memcpy(ptr %add.ptr3.i.i.i, ptr %data.i.i.i, i32 %132)
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.else33.i.i
  %148 = ptrtoint ptr %iova.i99.i.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %iova.i99.i.i, align 8
  %conv.i100.i.i = trunc i64 %149 to i32
  %150 = ptrtoint ptr %size.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %size.i101.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %conv.i100.i.i)
  %cmp.not.i.i102.i.i = icmp ult i32 %134, %conv.i100.i.i
  %add.i.i103.i.i = add i32 %151, %conv.i100.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i103.i.i, i32 %134)
  %cmp1.i.i104.i.i = icmp ule i32 %add.i.i103.i.i, %134
  %tobool.not.i105.i.i = or i1 %cmp.not.i.i102.i.i, %cmp1.i.i104.i.i
  br i1 %tobool.not.i105.i.i, label %land.lhs.true36.i.i, label %fw_block_mem.exit114.thread.i.i

fw_block_mem.exit114.thread.i.i:                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %virt.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %virt.i106.i.i, align 4
  %add.ptr.i107.i.i = getelementptr i8, ptr %153, i32 %134
  %idx.neg.i108.i.i = sub i32 0, %conv.i100.i.i
  %add.ptr3.i109.i.i = getelementptr i8, ptr %add.ptr.i107.i.i, i32 %idx.neg.i108.i.i
  %data.i110.i.i = getelementptr inbounds %struct.block_header, ptr %blk.0134.i.i, i32 0, i32 4
  %154 = call ptr @memcpy(ptr %add.ptr3.i109.i.i, ptr %data.i110.i.i, i32 %132)
  br label %for.inc.i.i

land.lhs.true36.i.i:                              ; preds = %land.lhs.true.i.i
  %155 = ptrtoint ptr %iova.i115.i.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %iova.i115.i.i, align 8
  %conv.i116.i.i = trunc i64 %156 to i32
  %157 = ptrtoint ptr %size.i117.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %size.i117.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %conv.i116.i.i)
  %cmp.not.i.i118.i.i = icmp ult i32 %134, %conv.i116.i.i
  %add.i.i119.i.i = add i32 %158, %conv.i116.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i119.i.i, i32 %134)
  %cmp1.i.i120.i.i = icmp ule i32 %add.i.i119.i.i, %134
  %tobool.not.i121.i.i = or i1 %cmp.not.i.i118.i.i, %cmp1.i.i120.i.i
  br i1 %tobool.not.i121.i.i, label %if.then38.i.i, label %fw_block_mem.exit130.thread.i.i

fw_block_mem.exit130.thread.i.i:                  ; preds = %land.lhs.true36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %159 = ptrtoint ptr %virt.i122.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %virt.i122.i.i, align 4
  %add.ptr.i123.i.i = getelementptr i8, ptr %160, i32 %134
  %idx.neg.i124.i.i = sub i32 0, %conv.i116.i.i
  %add.ptr3.i125.i.i = getelementptr i8, ptr %add.ptr.i123.i.i, i32 %idx.neg.i124.i.i
  %data.i126.i.i = getelementptr inbounds %struct.block_header, ptr %blk.0134.i.i, i32 0, i32 4
  %161 = call ptr @memcpy(ptr %add.ptr3.i125.i.i, ptr %data.i126.i.i, i32 %132)
  br label %for.inc.i.i

if.then38.i.i:                                    ; preds = %land.lhs.true36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %gmu2 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %gmu2, align 8
  %data42.i.i = getelementptr inbounds %struct.block_header, ptr %blk.0134.i.i, i32 0, i32 4
  %164 = ptrtoint ptr %data42.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %data42.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %163, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.31, i32 noundef %134, i32 noundef %132, i32 noundef %165) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then38.i.i, %fw_block_mem.exit130.thread.i.i, %fw_block_mem.exit114.thread.i.i, %fw_block_mem.exit.thread.i.i, %if.then25.i.i, %if.then18.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %166 = ptrtoint ptr %size12.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %size12.i.i, align 4
  %shr49.i.i = lshr i32 %167, 2
  %arrayidx50.i.i = getelementptr %struct.block_header, ptr %blk.0134.i.i, i32 0, i32 4, i32 %shr49.i.i
  %168 = ptrtoint ptr %data7.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %data7.i.i, align 4
  %170 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %112, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %169, i32 %171
  %cmp11.i.i = icmp ult ptr %arrayidx50.i.i, %add.ptr10.i.i
  br i1 %cmp11.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end45.i_crit_edge

for.inc.i.i.if.end45.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

a6xx_gmu_fw_load.exit.i:                          ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %172 = ptrtoint ptr %gmu2 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %gmu2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %173, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.30) #9
  br label %if.then54

if.end45.i:                                       ; preds = %for.inc.i.i.if.end45.i_crit_edge, %if.end6.i.i.if.end45.i_crit_edge, %if.end4.i.i, %if.then1.i.if.end45.i_crit_edge
  %174 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i158.i = getelementptr i8, ptr %175, i32 82032
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i158.i) #9
  %176 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i160.i = getelementptr i8, ptr %177, i32 81924
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i160.i) #9
  %iova.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 9, i32 3
  %178 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %iova.i, align 8
  %conv.i = trunc i64 %179 to i32
  %180 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i162.i = getelementptr i8, ptr %181, i32 83476
  tail call void @msm_writel(i32 noundef %conv.i, ptr noundef %add.ptr.i162.i) #9
  %182 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i164.i = getelementptr i8, ptr %183, i32 83472
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i164.i) #9
  %184 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i166.i = getelementptr i8, ptr %185, i32 150596
  tail call void @msm_writel(i32 noundef -2144862048, ptr noundef %add.ptr.i166.i) #9
  %rev.i = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 0, i32 1
  %186 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %rev.i, align 8
  %conv46.i = zext i8 %187 to i32
  %shl.i = shl nuw i32 %conv46.i, 24
  %major.i = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 0, i32 1, i32 1
  %188 = ptrtoint ptr %major.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %major.i, align 1
  %conv48.i = zext i8 %189 to i32
  %shl49.i = shl nuw nsw i32 %conv48.i, 16
  %or.i = or i32 %shl49.i, %shl.i
  %minor.i = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 0, i32 1, i32 2
  %190 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %minor.i, align 2
  %conv51.i = zext i8 %191 to i32
  %shl52.i = shl nuw nsw i32 %conv51.i, 12
  %or53.i = or i32 %or.i, %shl52.i
  %patchid.i = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 0, i32 1, i32 3
  %192 = ptrtoint ptr %patchid.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %patchid.i, align 1
  %conv55.i = zext i8 %193 to i32
  %shl56.i = shl nuw nsw i32 %conv55.i, 8
  %or57.i = or i32 %or53.i, %shl56.i
  %194 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i168.i = getelementptr i8, ptr %195, i32 83464
  tail call void @msm_writel(i32 noundef %or57.i, ptr noundef %add.ptr.i168.i) #9
  %iova58.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 14, i32 3
  %196 = ptrtoint ptr %iova58.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %iova58.i, align 8
  %size.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 14, i32 2
  %198 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %size.i, align 8
  %div139.i = lshr i32 %199, 12
  %sub.i = add nsw i32 %div139.i, -1
  %200 = trunc i64 %197 to i32
  %conv62.i = or i32 %sub.i, %200
  %201 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i170.i = getelementptr i8, ptr %202, i32 82944
  tail call void @msm_writel(i32 noundef %conv62.i, ptr noundef %add.ptr.i170.i) #9
  %203 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i172.i = getelementptr i8, ptr %204, i32 77884
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i.i172.i) #9
  %205 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %206, i32 77824
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i12.i.i) #9
  %207 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %208, i32 77828
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i14.i.i) #9
  %209 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %210, i32 82688
  tail call void @msm_writel(i32 noundef 163841024, ptr noundef %add.ptr.i16.i.i) #9
  %idle_level.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 8
  %211 = ptrtoint ptr %idle_level.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %idle_level.i.i, align 8
  %213 = zext i32 %212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %212, label %if.end45.i.a6xx_gmu_power_config.exit.i_crit_edge [
    i32 3, label %sw.bb.i.i
    i32 2, label %if.end45.i.sw.bb1.i.i_crit_edge
  ]

if.end45.i.sw.bb1.i.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i.i

if.end45.i.a6xx_gmu_power_config.exit.i_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_power_config.exit.i

sw.bb.i.i:                                        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %214 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %215, i32 82692
  tail call void @msm_writel(i32 noundef 661120, ptr noundef %add.ptr.i18.i.i) #9
  %216 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %217, i32 82688
  %call.i.i.i173.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i.i.i) #9
  %or1.i.i.i = or i32 %call.i.i.i173.i, 3
  %218 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %219, i32 82688
  tail call void @msm_writel(i32 noundef %or1.i.i.i, ptr noundef %add.ptr.i7.i.i.i) #9
  br label %sw.bb1.i.i

sw.bb1.i.i:                                       ; preds = %sw.bb.i.i, %if.end45.i.sw.bb1.i.i_crit_edge
  %220 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %221, i32 82696
  tail call void @msm_writel(i32 noundef 661120, ptr noundef %add.ptr.i20.i.i) #9
  %222 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i22.i.i = getelementptr i8, ptr %223, i32 82688
  %call.i.i23.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i22.i.i) #9
  %or1.i24.i.i = or i32 %call.i.i23.i.i, 5
  %224 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i7.i25.i.i = getelementptr i8, ptr %225, i32 82688
  tail call void @msm_writel(i32 noundef %or1.i24.i.i, ptr noundef %add.ptr.i7.i25.i.i) #9
  br label %a6xx_gmu_power_config.exit.i

a6xx_gmu_power_config.exit.i:                     ; preds = %sw.bb1.i.i, %if.end45.i.a6xx_gmu_power_config.exit.i_crit_edge
  %226 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i27.i.i = getelementptr i8, ptr %227, i32 82848
  %call.i.i28.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i27.i.i) #9
  %or1.i29.i.i = or i32 %call.i.i28.i.i, 3857
  %228 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i7.i30.i.i = getelementptr i8, ptr %229, i32 82848
  tail call void @msm_writel(i32 noundef %or1.i29.i.i, ptr noundef %add.ptr.i7.i30.i.i) #9
  %230 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i175.i = getelementptr i8, ptr %231, i32 45024
  %call.i.i176.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i175.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 536936453, i32 %call.i.i176.i)
  %cmp.i177.i = icmp ult i32 %call.i.i176.i, 536936453
  %..i.i = select i1 %cmp.i177.i, i32 -1161889074, i32 256
  %.53.i.i = select i1 %cmp.i177.i, i32 -1, i32 511
  %232 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i55.i.i = getelementptr i8, ptr %233, i32 81920
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i55.i.i) #9
  %234 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i57.i.i = getelementptr i8, ptr %235, i32 82948
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i57.i.i) #9
  %236 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i59.i.i = getelementptr i8, ptr %237, i32 81920
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i59.i.i) #9
  %call1.i.i = tail call i64 @ktime_get() #9
  %add.i.i178.i = add i64 %call1.i.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 225) #9
  %238 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %mmio.i, align 4
  %add.ptr61.i.i = getelementptr i8, ptr %239, i32 82032
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61.i.i) #9, !srcloc !151
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %and62.i.i = and i32 %241, %.53.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and62.i.i, i32 %..i.i)
  %cmp1463.i.i = icmp eq i32 %and62.i.i, %..i.i
  br i1 %cmp1463.i.i, label %a6xx_gmu_power_config.exit.i.if.end66.i_crit_edge, label %a6xx_gmu_power_config.exit.i.land.lhs.true.i179.i_crit_edge

a6xx_gmu_power_config.exit.i.land.lhs.true.i179.i_crit_edge: ; preds = %a6xx_gmu_power_config.exit.i
  br label %land.lhs.true.i179.i

a6xx_gmu_power_config.exit.i.if.end66.i_crit_edge: ; preds = %a6xx_gmu_power_config.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i

land.lhs.true.i179.i:                             ; preds = %if.then30.i.i.land.lhs.true.i179.i_crit_edge, %a6xx_gmu_power_config.exit.i.land.lhs.true.i179.i_crit_edge
  %call17.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call17.i.i, i64 %add.i.i178.i)
  %cmp3.i.i.i = icmp sgt i64 %call17.i.i, %add.i.i178.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true.i179.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %242 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i180.i = getelementptr i8, ptr %243, i32 82032
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180.i) #9, !srcloc !151
  %245 = tail call i32 @llvm.bswap.i32(i32 %244) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %and.i.i = and i32 %245, %.53.i.i
  %cmp14.i.i = icmp eq i32 %and.i.i, %..i.i
  br i1 %cmp14.i.i, label %if.then30.i.i.if.end66.i_crit_edge, label %if.then30.i.i.land.lhs.true.i179.i_crit_edge

if.then30.i.i.land.lhs.true.i179.i_crit_edge:     ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i179.i

if.then30.i.i.if.end66.i_crit_edge:               ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i

for.end.i.i:                                      ; preds = %land.lhs.true.i179.i
  %246 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %mmio.i, align 4
  %add.ptr24.i.i = getelementptr i8, ptr %247, i32 82032
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i.i) #9, !srcloc !151
  %249 = tail call i32 @llvm.bswap.i32(i32 %248) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %.pre.i.i = and i32 %249, %.53.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre.i.i, i32 %..i.i)
  %cmp34.i.i = icmp eq i32 %.pre.i.i, %..i.i
  br i1 %cmp34.i.i, label %for.end.i.i.if.end66.i_crit_edge, label %a6xx_gmu_start.exit.i

for.end.i.i.if.end66.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i

a6xx_gmu_start.exit.i:                            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %250 = ptrtoint ptr %gmu2 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %gmu2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %251, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.32) #9
  br label %if.then54

if.end66.i:                                       ; preds = %for.end.i.i.if.end66.i_crit_edge, %if.then30.i.i.if.end66.i_crit_edge, %a6xx_gmu_power_config.exit.i.if.end66.i_crit_edge
  %252 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %legacy, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool67.not.i = icmp eq i8 %253, 0
  br i1 %tobool67.not.i, label %if.end66.i.if.end73.i_crit_edge, label %if.then68.i

if.end66.i.if.end73.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73.i

if.then68.i:                                      ; preds = %if.end66.i
  %254 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i182.i = getelementptr i8, ptr %255, i32 36832
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i.i182.i) #9
  %nr_gpu_freqs.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 20
  %256 = ptrtoint ptr %nr_gpu_freqs.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %nr_gpu_freqs.i.i, align 4
  %sub.i.i = add i32 %257, -1
  %arrayidx.i183.i = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 22, i32 %sub.i.i
  %258 = ptrtoint ptr %arrayidx.i183.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx.i183.i, align 4
  %and.i184.i = and i32 %259, 255
  %260 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %261, i32 36836
  tail call void @msm_writel(i32 noundef %and.i184.i, ptr noundef %add.ptr.i9.i.i) #9
  %shr.i.i = lshr i32 %259, 8
  %and1.i.i = and i32 %shr.i.i, 255
  %262 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %263, i32 36840
  tail call void @msm_writel(i32 noundef %and1.i.i, ptr noundef %add.ptr.i11.i.i) #9
  %call.i.i = tail call i32 @a6xx_gmu_set_oob(ptr noundef %gmu2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool70.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool70.not.i, label %if.then68.i.if.end73.i_crit_edge, label %if.then68.i.if.then54_crit_edge

if.then68.i.if.then54_crit_edge:                  ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.then68.i.if.end73.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then68.i.if.end73.i_crit_edge, %if.end66.i.if.end73.i_crit_edge
  %264 = ptrtoint ptr %idle_level.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %idle_level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %265)
  %cmp74.i = icmp slt i32 %265, 2
  br i1 %cmp74.i, label %if.then76.i, label %if.end73.i.if.end81.i_crit_edge

if.end73.i.if.end81.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81.i

if.then76.i:                                      ; preds = %if.end73.i
  %266 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %legacy, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool.not.i.i = icmp eq i8 %267, 0
  br i1 %tobool.not.i.i, label %if.then76.i.if.end81.i_crit_edge, label %if.end.i190.i

if.then76.i.if.end81.i_crit_edge:                 ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81.i

if.end.i190.i:                                    ; preds = %if.then76.i
  %268 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i187.i = getelementptr i8, ptr %269, i32 516
  tail call void @msm_writel(i32 noundef 7831552, ptr noundef %add.ptr.i.i187.i) #9
  %call.i188.i = tail call i64 @ktime_get() #9
  %add.i.i189.i = add i64 %call.i188.i, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 367) #9
  %270 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %mmio.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %271, i32 82752
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %273 = and i32 %272, 939524096
  call void @__sanitizer_cov_trace_const_cmp4(i32 671088640, i32 %273)
  %cmp126.i.i = icmp eq i32 %273, 671088640
  br i1 %cmp126.i.i, label %if.end.i190.i.if.end81.i_crit_edge, label %if.end.i190.i.land.lhs.true.i192.i_crit_edge

if.end.i190.i.land.lhs.true.i192.i_crit_edge:     ; preds = %if.end.i190.i
  br label %land.lhs.true.i192.i

if.end.i190.i.if.end81.i_crit_edge:               ; preds = %if.end.i190.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81.i

land.lhs.true.i192.i:                             ; preds = %if.then29.i.i.land.lhs.true.i192.i_crit_edge, %if.end.i190.i.land.lhs.true.i192.i_crit_edge
  %call16.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call16.i.i, i64 %add.i.i189.i)
  %cmp3.i.i191.i = icmp sgt i64 %call16.i.i, %add.i.i189.i
  br i1 %cmp3.i.i191.i, label %for.end.i194.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %land.lhs.true.i192.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #9
  %274 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i193.i = getelementptr i8, ptr %275, i32 82752
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %277 = and i32 %276, 939524096
  %cmp12.i.i = icmp eq i32 %277, 671088640
  br i1 %cmp12.i.i, label %if.then29.i.i.if.end81.i_crit_edge, label %if.then29.i.i.land.lhs.true.i192.i_crit_edge

if.then29.i.i.land.lhs.true.i192.i_crit_edge:     ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i192.i

if.then29.i.i.if.end81.i_crit_edge:               ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81.i

for.end.i194.i:                                   ; preds = %land.lhs.true.i192.i
  %278 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %mmio.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %279, i32 82752
  %280 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %281 = and i32 %280, 939524096
  call void @__sanitizer_cov_trace_const_cmp4(i32 671088640, i32 %281)
  %cmp33.i.i = icmp eq i32 %281, 671088640
  br i1 %cmp33.i.i, label %for.end.i194.i.if.end81.i_crit_edge, label %if.then35.i.i

for.end.i194.i.if.end81.i_crit_edge:              ; preds = %for.end.i194.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81.i

if.then35.i.i:                                    ; preds = %for.end.i194.i
  call void @__sanitizer_cov_trace_pc() #11
  %282 = ptrtoint ptr %gmu2 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %gmu2, align 8
  %284 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %285, i32 82752
  %call.i.i195.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i2.i.i) #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %283, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.33, i32 noundef %call.i.i195.i) #9
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then35.i.i, %for.end.i194.i.if.end81.i_crit_edge, %if.then29.i.i.if.end81.i_crit_edge, %if.end.i190.i.if.end81.i_crit_edge, %if.then76.i.if.end81.i_crit_edge, %if.end73.i.if.end81.i_crit_edge
  %286 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i197.i = getelementptr i8, ptr %287, i32 83480
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i.i197.i) #9
  %call.i198.i = tail call i64 @ktime_get() #9
  %add.i.i199.i = add i64 %call.i198.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 241) #9
  %288 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.i.i = getelementptr i8, ptr %289, i32 83456
  %290 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i.i) #9, !srcloc !151
  %291 = tail call i32 @llvm.bswap.i32(i32 %290) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  %and45.i.i = and i32 %291, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i)
  %tobool.not46.i.i = icmp eq i32 %and45.i.i, 0
  br i1 %tobool.not46.i.i, label %if.end81.i.land.lhs.true.i201.i_crit_edge, label %if.end81.i.for.end.i205.i_crit_edge

if.end81.i.for.end.i205.i_crit_edge:              ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i205.i

if.end81.i.land.lhs.true.i201.i_crit_edge:        ; preds = %if.end81.i
  br label %land.lhs.true.i201.i

land.lhs.true.i201.i:                             ; preds = %if.then26.i.i.land.lhs.true.i201.i_crit_edge, %if.end81.i.land.lhs.true.i201.i_crit_edge
  %call13.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i.i, i64 %add.i.i199.i)
  %cmp3.i.i200.i = icmp sgt i64 %call13.i.i, %add.i.i199.i
  br i1 %cmp3.i.i200.i, label %if.then16.i.i, label %if.then26.i.i

if.then16.i.i:                                    ; preds = %land.lhs.true.i201.i
  call void @__sanitizer_cov_trace_pc() #11
  %292 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %mmio.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %293, i32 83456
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #9, !srcloc !151
  %295 = tail call i32 @llvm.bswap.i32(i32 %294) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  br label %for.end.i205.i

if.then26.i.i:                                    ; preds = %land.lhs.true.i201.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %296 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i202.i = getelementptr i8, ptr %297, i32 83456
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202.i) #9, !srcloc !151
  %299 = tail call i32 @llvm.bswap.i32(i32 %298) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  %and.i203.i = and i32 %299, 1
  %tobool.not.i204.i = icmp eq i32 %and.i203.i, 0
  br i1 %tobool.not.i204.i, label %if.then26.i.i.land.lhs.true.i201.i_crit_edge, label %if.then26.i.i.for.end.i205.i_crit_edge

if.then26.i.i.for.end.i205.i_crit_edge:           ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i205.i

if.then26.i.i.land.lhs.true.i201.i_crit_edge:     ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i201.i

for.end.i205.i:                                   ; preds = %if.then26.i.i.for.end.i205.i_crit_edge, %if.then16.i.i, %if.end81.i.for.end.i205.i_crit_edge
  %val.0.i.i = phi i32 [ %295, %if.then16.i.i ], [ %291, %if.end81.i.for.end.i205.i_crit_edge ], [ %299, %if.then26.i.i.for.end.i205.i_crit_edge ]
  %and29.i.i = and i32 %val.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %a6xx_gmu_hfi_start.exit.i, label %if.end48

a6xx_gmu_hfi_start.exit.i:                        ; preds = %for.end.i205.i
  call void @__sanitizer_cov_trace_pc() #11
  %300 = ptrtoint ptr %gmu2 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %gmu2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %301, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.34) #9
  br label %if.then54

if.end48:                                         ; preds = %for.end.i205.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %call49 = tail call i32 @a6xx_hfi_start(ptr noundef %gmu2, i32 noundef %spec.store.select) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.if.then54_crit_edge

if.end48.if.then54_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.end52:                                         ; preds = %if.end48
  %302 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %303, i32 83524
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i118) #9
  %304 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %305, i32 83532
  tail call void @msm_writel(i32 noundef -8388609, ptr noundef %add.ptr.i120) #9
  %hfi_irq = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 5
  %306 = ptrtoint ptr %hfi_irq to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %hfi_irq, align 4
  tail call void @enable_irq(i32 noundef %307) #9
  %308 = ptrtoint ptr %current_perf_index.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %current_perf_index.i, align 8
  %arrayidx.i122 = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 21, i32 %309
  %310 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx.i122, align 4
  %312 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %pdev.i, align 8
  %dev.i124 = getelementptr inbounds %struct.platform_device, ptr %313, i32 0, i32 3
  %call.i125 = tail call ptr @dev_pm_opp_find_freq_exact(ptr noundef %dev.i124, i32 noundef %311, i1 noundef zeroext true) #9
  %cmp.i.i126 = icmp ugt ptr %call.i125, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i126, label %if.end52.cleanup_crit_edge, label %if.end.i127

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i127:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %freq.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 26
  %314 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 0, ptr %freq.i, align 4
  tail call void @a6xx_gmu_set_freq(ptr noundef %a6xx_gpu, ptr noundef %call.i125) #9
  tail call void @dev_pm_opp_put(ptr noundef %call.i125) #9
  br label %cleanup

if.then54:                                        ; preds = %if.end48.if.then54_crit_edge, %a6xx_gmu_hfi_start.exit.i, %if.then68.i.if.then54_crit_edge, %a6xx_gmu_start.exit.i, %a6xx_gmu_fw_load.exit.i, %if.else35.i.if.then54_crit_edge, %do.end.i, %if.then1.i.if.then54_crit_edge
  %ret.0 = phi i32 [ %call49, %if.end48.if.then54_crit_edge ], [ -110, %a6xx_gmu_hfi_start.exit.i ], [ %call.i.i, %if.then68.i.if.then54_crit_edge ], [ -110, %a6xx_gmu_start.exit.i ], [ -22, %a6xx_gmu_fw_load.exit.i ], [ %call36.i, %if.else35.i.if.then54_crit_edge ], [ %call2.i, %if.then1.i.if.then54_crit_edge ], [ -2, %do.end.i ]
  %315 = ptrtoint ptr %gmu_irq to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %gmu_irq, align 8
  tail call void @disable_irq(i32 noundef %316) #9
  tail call fastcc void @a6xx_rpmh_stop(ptr noundef %gmu2)
  %317 = ptrtoint ptr %gxpd to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %gxpd, align 4
  %call.i128 = tail call i32 @__pm_runtime_idle(ptr noundef %318, i32 noundef 5) #9
  %319 = ptrtoint ptr %gmu2 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %gmu2, align 8
  %call.i129 = tail call i32 @__pm_runtime_idle(ptr noundef %320, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end.i127, %if.end52.cleanup_crit_edge, %if.then35, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %retval.0.i.ph, %if.then35 ], [ %ret.0, %if.then54 ], [ 0, %if.end52.cleanup_crit_edge ], [ 0, %if.end.i127 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_hfi_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @a6xx_rpmh_stop(ptr nocapture noundef readonly %gmu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 3
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 150556
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i) #9
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 498) #9
  %rscc = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 4
  %2 = ptrtoint ptr %rscc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rscc, align 8
  %add.ptr47 = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #9, !srcloc !151
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %and48 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool.not49 = icmp eq i32 %and48, 0
  br i1 %tobool.not49, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then26

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %rscc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rscc, align 8
  %add.ptr20 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !151
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  br label %for.end

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %10 = ptrtoint ptr %rscc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rscc, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !151
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %and = and i32 %13, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then26.land.lhs.true_crit_edge, label %if.then26.for.end_crit_edge

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %if.then26.for.end_crit_edge, %if.then16, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then16 ], [ %5, %entry.for.end_crit_edge ], [ %13, %if.then26.for.end_crit_edge ]
  %and29 = and i32 %val.0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then32, label %for.end.if.end33_crit_edge

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gmu, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.35) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %for.end.if.end33_crit_edge
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %17, i32 150556
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i44) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @a6xx_gmu_isidle(ptr nocapture noundef readonly %gmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 28
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 8, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 3
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 150576
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #9
  %and = and i32 %call.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ %tobool1.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @a6xx_gmu_stop(ptr noundef %a6xx_gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gmu1 = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4
  %0 = ptrtoint ptr %gmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gmu1, align 8
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %pm_runtime_active.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

pm_runtime_active.exit:                           ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.end_crit_edge, label %pm_runtime_active.exit.cleanup_crit_edge

pm_runtime_active.exit.cleanup_crit_edge:         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pm_runtime_active.exit.if.end_crit_edge:          ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %pm_runtime_active.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %hung = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 29
  %5 = ptrtoint ptr %hung to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hung, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @a6xx_gmu_force_off(ptr noundef %gmu1)
  br label %if.end4

if.else:                                          ; preds = %if.end
  %mmio.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 82864
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 15
  br i1 %cmp.not.i, label %if.else.if.end46.i_crit_edge, label %if.then.i

if.else.if.end46.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then.i:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %initialized.i.i.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 28
  %idle_level.i.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 8
  %add.neg.i.i = sub i32 -100, %9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.then.i
  %10 = ptrtoint ptr %idle_level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idle_level.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.i.i = icmp eq i32 %11, 2
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i32 3, i32 %11
  %12 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 82864
  %call.i.i.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i.i.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i.i, i32 %spec.store.select.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %call.i.i.i.i, %spec.store.select.i.i.i
  br i1 %cmp2.i.i.i, label %if.then3.i.i.i, label %do.body.i.i.do.cond.i.i_crit_edge

do.body.i.i.do.cond.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i.i

if.then3.i.i.i:                                   ; preds = %do.body.i.i
  %14 = ptrtoint ptr %idle_level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idle_level.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp5.not.i.i.i = icmp eq i32 %15, 3
  br i1 %cmp5.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.then3.i.i.i.if.end.i_crit_edge

if.then3.i.i.i.if.end.i_crit_edge:                ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

lor.lhs.false.i.i.i:                              ; preds = %if.then3.i.i.i
  %16 = ptrtoint ptr %initialized.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %initialized.i.i.i.i, align 8, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.if.end.i_crit_edge, label %a6xx_gmu_gx_is_on.exit.i.i.i

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

a6xx_gmu_gx_is_on.exit.i.i.i:                     ; preds = %lor.lhs.false.i.i.i
  %18 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %19, i32 82752
  %call.i.i.i.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i.i.i.i) #9
  %and.i.i.i.i = and i32 %call.i.i.i.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %a6xx_gmu_gx_is_on.exit.i.i.i.do.cond.i.i_crit_edge, label %a6xx_gmu_gx_is_on.exit.i.i.i.if.end.i_crit_edge

a6xx_gmu_gx_is_on.exit.i.i.i.if.end.i_crit_edge:  ; preds = %a6xx_gmu_gx_is_on.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

a6xx_gmu_gx_is_on.exit.i.i.i.do.cond.i.i_crit_edge: ; preds = %a6xx_gmu_gx_is_on.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i.i

do.cond.i.i:                                      ; preds = %a6xx_gmu_gx_is_on.exit.i.i.i.do.cond.i.i_crit_edge, %do.body.i.i.do.cond.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %20
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %if.then2.i

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

if.then2.i:                                       ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @a6xx_gmu_force_off(ptr noundef %gmu1) #9
  br label %if.end4

if.end.i:                                         ; preds = %a6xx_gmu_gx_is_on.exit.i.i.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge, %if.then3.i.i.i.if.end.i_crit_edge
  %revn.i.i.i.i = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 0, i32 4
  %21 = ptrtoint ptr %revn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %revn.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 630, i32 %22)
  %cmp.i.i.not.i.i = icmp eq i32 %22, 630
  %mmio.i.i.i = getelementptr %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 0, i32 0, i32 22
  %23 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i.i, align 8
  br i1 %cmp.i.i.not.i.i, label %if.then.i.i, label %if.end5.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 49664
  tail call void @msm_writel(i32 noundef 15, ptr noundef %add.ptr.i.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i72.i = sub i32 -100, %25
  br label %do.body.i74.i

do.body.i74.i:                                    ; preds = %do.cond.i76.i.do.body.i74.i_crit_edge, %if.then.i.i
  %26 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i45.i.i = getelementptr i8, ptr %27, i32 49668
  %call.i.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i45.i.i) #9
  %and.i.i = and i32 %call.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i.i)
  %cmp.i73.i = icmp eq i32 %and.i.i, 15
  br i1 %cmp.i73.i, label %do.body.i74.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge, label %do.cond.i76.i

do.body.i74.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge: ; preds = %do.body.i74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_bus_clear_pending_transactions.exit.i

do.cond.i76.i:                                    ; preds = %do.body.i74.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub.i75.i = add i32 %add.neg.i72.i, %28
  %cmp4.i.i = icmp slt i32 %sub.i75.i, 0
  br i1 %cmp4.i.i, label %do.cond.i76.i.do.body.i74.i_crit_edge, label %do.cond.i76.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge

do.cond.i76.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge: ; preds = %do.cond.i76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_bus_clear_pending_transactions.exit.i

do.cond.i76.i.do.body.i74.i_crit_edge:            ; preds = %do.cond.i76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i74.i

if.end5.i.i:                                      ; preds = %if.end.i
  %add.ptr.i49.i.i = getelementptr i8, ptr %24, i32 61716
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i49.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add9.neg.i.i = sub i32 -100, %29
  br label %do.body10.i.i

do.body10.i.i:                                    ; preds = %do.cond16.i.i.do.body10.i.i_crit_edge, %if.end5.i.i
  %30 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i51.i.i = getelementptr i8, ptr %31, i32 61720
  %call.i52.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i51.i.i) #9
  %and12.i.i = and i32 %call.i52.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %cmp13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %cmp13.not.i.i, label %do.cond16.i.i, label %do.body10.i.i.do.end19.i.i_crit_edge

do.body10.i.i.do.end19.i.i_crit_edge:             ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19.i.i

do.cond16.i.i:                                    ; preds = %do.body10.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub17.i.i = add i32 %add9.neg.i.i, %32
  %cmp18.i.i = icmp slt i32 %sub17.i.i, 0
  br i1 %cmp18.i.i, label %do.cond16.i.i.do.body10.i.i_crit_edge, label %do.cond16.i.i.do.end19.i.i_crit_edge

do.cond16.i.i.do.end19.i.i_crit_edge:             ; preds = %do.cond16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19.i.i

do.cond16.i.i.do.body10.i.i_crit_edge:            ; preds = %do.cond16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i.i

do.end19.i.i:                                     ; preds = %do.cond16.i.i.do.end19.i.i_crit_edge, %do.body10.i.i.do.end19.i.i_crit_edge
  %33 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i54.i.i = getelementptr i8, ptr %34, i32 61716
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i54.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add24.neg.i.i = sub i32 -100, %35
  br label %do.body25.i.i

do.body25.i.i:                                    ; preds = %do.cond31.i.i.do.body25.i.i_crit_edge, %do.end19.i.i
  %36 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i56.i.i = getelementptr i8, ptr %37, i32 61720
  %call.i57.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i56.i.i) #9
  %and27.i.i = and i32 %call.i57.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %cmp28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %cmp28.not.i.i, label %do.cond31.i.i, label %do.body25.i.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge

do.body25.i.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge: ; preds = %do.body25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_bus_clear_pending_transactions.exit.i

do.cond31.i.i:                                    ; preds = %do.body25.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub32.i.i = add i32 %add24.neg.i.i, %38
  %cmp33.i.i = icmp slt i32 %sub32.i.i, 0
  br i1 %cmp33.i.i, label %do.cond31.i.i.do.body25.i.i_crit_edge, label %do.cond31.i.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge

do.cond31.i.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge: ; preds = %do.cond31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_bus_clear_pending_transactions.exit.i

do.cond31.i.i.do.body25.i.i_crit_edge:            ; preds = %do.cond31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25.i.i

a6xx_bus_clear_pending_transactions.exit.i:       ; preds = %do.cond31.i.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge, %do.body25.i.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge, %do.cond.i76.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge, %do.body.i74.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge
  %.sink62.i.i = phi i32 [ 49664, %do.body.i74.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge ], [ 49664, %do.cond.i76.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge ], [ 61716, %do.body25.i.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge ], [ 61716, %do.cond31.i.i.a6xx_bus_clear_pending_transactions.exit.i_crit_edge ]
  %39 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i59.i.i = getelementptr i8, ptr %40, i32 %.sink62.i.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i59.i.i) #9
  %41 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i78.i = getelementptr i8, ptr %42, i32 82176
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i.i78.i) #9
  %43 = ptrtoint ptr %idle_level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %idle_level.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.i79.i = icmp slt i32 %44, 2
  br i1 %cmp.i79.i, label %if.then.i80.i, label %a6xx_bus_clear_pending_transactions.exit.i.if.end.i.i_crit_edge

a6xx_bus_clear_pending_transactions.exit.i.if.end.i.i_crit_edge: ; preds = %a6xx_bus_clear_pending_transactions.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i80.i:                                    ; preds = %a6xx_bus_clear_pending_transactions.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @a6xx_sptprac_disable(ptr noundef %gmu1) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i80.i, %a6xx_bus_clear_pending_transactions.exit.i.if.end.i.i_crit_edge
  %legacy.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 30
  %45 = ptrtoint ptr %legacy.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %legacy.i.i, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i.i, label %if.then1.i.i, label %if.end2.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i81.i = tail call i32 @a6xx_hfi_send_prep_slumber(ptr noundef %gmu1) #9
  br label %a6xx_gmu_notify_slumber.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  %47 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %48, i32 36832
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i2.i.i) #9
  %call3.i.i = tail call i32 @a6xx_gmu_set_oob(ptr noundef %gmu1, i32 noundef 0) #9
  %lock.i.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 1
  %call.i.i82.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock.i.i.i) #9
  br i1 %call.i.i82.i, label %if.end2.i.i.a6xx_gmu_clear_oob.exit.i.i_crit_edge, label %land.rhs.i.i.i

if.end2.i.i.a6xx_gmu_clear_oob.exit.i.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_clear_oob.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end2.i.i
  %.b48.i.i.i = load i1, ptr @a6xx_gmu_clear_oob.__already_done, align 1
  br i1 %.b48.i.i.i, label %land.rhs.i.i.i.a6xx_gmu_clear_oob.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !145

land.rhs.i.i.i.a6xx_gmu_clear_oob.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_clear_oob.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @a6xx_gmu_clear_oob.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 342, i32 noundef 9, ptr noundef null) #9
  br label %a6xx_gmu_clear_oob.exit.i.i

a6xx_gmu_clear_oob.exit.i.i:                      ; preds = %if.then.i.i.i, %land.rhs.i.i.i.a6xx_gmu_clear_oob.exit.i.i_crit_edge, %if.end2.i.i.a6xx_gmu_clear_oob.exit.i.i_crit_edge
  %49 = ptrtoint ptr %legacy.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %legacy.i.i, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool38.not.i.i.i = icmp eq i8 %50, 0
  %shl.i.i.i = select i1 %tobool38.not.i.i.i, i32 1, i32 1073741824
  %51 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i83.i = getelementptr i8, ptr %52, i32 83536
  tail call void @msm_writel(i32 noundef %shl.i.i.i, ptr noundef %add.ptr.i.i.i83.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %a6xx_gmu_clear_oob.exit.i.i.a6xx_gmu_notify_slumber.exit.i_crit_edge

a6xx_gmu_clear_oob.exit.i.i.a6xx_gmu_notify_slumber.exit.i_crit_edge: ; preds = %a6xx_gmu_clear_oob.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_notify_slumber.exit.i

if.then5.i.i:                                     ; preds = %a6xx_gmu_clear_oob.exit.i.i
  %53 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %54, i32 82864
  %call.i5.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i4.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i5.i.i)
  %cmp7.not.i.i = icmp eq i32 %call.i5.i.i, 15
  br i1 %cmp7.not.i.i, label %if.then5.i.i.a6xx_gmu_notify_slumber.exit.i_crit_edge, label %if.then8.i.i

if.then5.i.i.a6xx_gmu_notify_slumber.exit.i_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_notify_slumber.exit.i

if.then8.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %gmu1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %gmu1, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %56, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.38) #9
  br label %a6xx_gmu_notify_slumber.exit.i

a6xx_gmu_notify_slumber.exit.i:                   ; preds = %if.then8.i.i, %if.then5.i.i.a6xx_gmu_notify_slumber.exit.i_crit_edge, %a6xx_gmu_clear_oob.exit.i.i.a6xx_gmu_notify_slumber.exit.i_crit_edge, %if.then1.i.i
  %57 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %58, i32 150592
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i7.i.i) #9
  %call4.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call4.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1073) #9
  %59 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr15100.i = getelementptr i8, ptr %60, i32 150576
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15100.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %62 = and i32 %61, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool19.not102.i = icmp eq i32 %62, 0
  br i1 %tobool19.not102.i, label %a6xx_gmu_notify_slumber.exit.i.if.end46.i_crit_edge, label %a6xx_gmu_notify_slumber.exit.i.land.lhs.true.i_crit_edge

a6xx_gmu_notify_slumber.exit.i.land.lhs.true.i_crit_edge: ; preds = %a6xx_gmu_notify_slumber.exit.i
  br label %land.lhs.true.i

a6xx_gmu_notify_slumber.exit.i.if.end46.i_crit_edge: ; preds = %a6xx_gmu_notify_slumber.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

land.lhs.true.i:                                  ; preds = %if.then36.i.land.lhs.true.i_crit_edge, %a6xx_gmu_notify_slumber.exit.i.land.lhs.true.i_crit_edge
  %call23.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call23.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call23.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then36.i

if.then36.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %63 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %64, i32 150576
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %66 = and i32 %65, 32768
  %tobool19.not.i = icmp eq i32 %66, 0
  br i1 %tobool19.not.i, label %if.then36.i.if.end46.i_crit_edge, label %if.then36.i.land.lhs.true.i_crit_edge

if.then36.i.land.lhs.true.i_crit_edge:            ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

if.then36.i.if.end46.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %67 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %68, i32 150576
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %70 = and i32 %69, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool40.not.i = icmp eq i32 %70, 0
  br i1 %tobool40.not.i, label %for.end.i.if.end46.i_crit_edge, label %if.then42.i

for.end.i.if.end46.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then42.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %gmu1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %gmu1, align 8
  %73 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %74, i32 150576
  %call.i87.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i86.i) #9
  %75 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %76, i32 150580
  %call.i90.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i89.i) #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %72, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.37, i32 noundef %call.i87.i, i32 noundef %call.i90.i) #9
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then42.i, %for.end.i.if.end46.i_crit_edge, %if.then36.i.if.end46.i_crit_edge, %a6xx_gmu_notify_slumber.exit.i.if.end46.i_crit_edge, %if.else.if.end46.i_crit_edge
  tail call void @a6xx_hfi_stop(ptr noundef %gmu1) #9
  %gmu_irq.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 6
  %77 = ptrtoint ptr %gmu_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %gmu_irq.i.i, align 8
  tail call void @disable_irq(i32 noundef %78) #9
  %hfi_irq.i.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 5
  %79 = ptrtoint ptr %hfi_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hfi_irq.i.i, align 4
  tail call void @disable_irq(i32 noundef %80) #9
  %81 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i92.i = getelementptr i8, ptr %82, i32 150552
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i.i92.i) #9
  %83 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %84, i32 83532
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i5.i.i) #9
  tail call fastcc void @a6xx_rpmh_stop(ptr noundef %gmu1) #9
  br label %if.end4

if.end4:                                          ; preds = %if.end46.i, %if.then2.i, %if.then3
  %pdev = getelementptr inbounds %struct.msm_gpu, ptr %a6xx_gpu, i32 0, i32 2
  %85 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %86, i32 0, i32 3
  %call6 = tail call i32 @dev_pm_opp_set_opp(ptr noundef %dev5, ptr noundef null) #9
  %gxpd = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 7
  %87 = ptrtoint ptr %gxpd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %gxpd, align 4
  %tobool.not.i = icmp eq ptr %88, null
  %cmp.i24 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i24
  br i1 %spec.select.i, label %if.end4.if.end11_crit_edge, label %if.then8

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %88, i32 noundef 4) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end4.if.end11_crit_edge
  %nr_clocks = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 15
  %89 = ptrtoint ptr %nr_clocks to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nr_clocks, align 8
  %clocks = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 16
  %91 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %clocks, align 4
  tail call void @clk_bulk_disable(i32 noundef %90, ptr noundef %92) #9
  tail call void @clk_bulk_unprepare(i32 noundef %90, ptr noundef %92) #9
  %93 = ptrtoint ptr %gmu1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %gmu1, align 8
  %call.i25 = tail call i32 @__pm_runtime_idle(ptr noundef %94, i32 noundef 4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %pm_runtime_active.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @a6xx_gmu_force_off(ptr noundef %gmu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @a6xx_hfi_stop(ptr noundef %gmu) #9
  %gmu_irq.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 6
  %0 = ptrtoint ptr %gmu_irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gmu_irq.i, align 8
  tail call void @disable_irq(i32 noundef %1) #9
  %hfi_irq.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 5
  %2 = ptrtoint ptr %hfi_irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hfi_irq.i, align 4
  tail call void @disable_irq(i32 noundef %3) #9
  %mmio.i.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 3
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 150552
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i.i) #9
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %7, i32 83532
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i5.i) #9
  tail call fastcc void @a6xx_sptprac_disable(ptr noundef %gmu)
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 863) #9
  %rscc.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 4
  %8 = ptrtoint ptr %rscc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rscc.i, align 8
  %add.ptr240.i = getelementptr i8, ptr %9, i32 3352
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr240.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not241.i = icmp eq i32 %11, 0
  br i1 %tobool.not241.i, label %entry.land.lhs.true.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then26.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %rscc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rscc.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %13, i32 3352
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  br label %for.end.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %15 = ptrtoint ptr %rscc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rscc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 3352
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  %18 = and i32 %17, 16777216
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then26.i.land.lhs.true.i_crit_edge, label %if.then26.i.for.end.i_crit_edge

if.then26.i.for.end.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then26.i.for.end.i_crit_edge, %if.then16.i, %entry.for.end.i_crit_edge
  %call34.i = tail call i64 @ktime_get() #9
  %add.i220.i = add i64 %call34.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 865) #9
  %19 = ptrtoint ptr %rscc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rscc.i, align 8
  %add.ptr52242.i = getelementptr i8, ptr %20, i32 4024
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52242.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool57.not243.i = icmp eq i32 %22, 0
  br i1 %tobool57.not243.i, label %for.end.i.land.lhs.true61.i_crit_edge, label %for.end.i.for.end79.i_crit_edge

for.end.i.for.end79.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end79.i

for.end.i.land.lhs.true61.i_crit_edge:            ; preds = %for.end.i
  br label %land.lhs.true61.i

land.lhs.true61.i:                                ; preds = %if.then75.i.land.lhs.true61.i_crit_edge, %for.end.i.land.lhs.true61.i_crit_edge
  %call62.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call62.i, i64 %add.i220.i)
  %cmp3.i222.i = icmp sgt i64 %call62.i, %add.i220.i
  br i1 %cmp3.i222.i, label %if.then65.i, label %if.then75.i

if.then65.i:                                      ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %rscc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rscc.i, align 8
  %add.ptr69.i = getelementptr i8, ptr %24, i32 4024
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  br label %for.end79.i

if.then75.i:                                      ; preds = %land.lhs.true61.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %26 = ptrtoint ptr %rscc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rscc.i, align 8
  %add.ptr52.i = getelementptr i8, ptr %27, i32 4024
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %29 = and i32 %28, 16777216
  %tobool57.not.i = icmp eq i32 %29, 0
  br i1 %tobool57.not.i, label %if.then75.i.land.lhs.true61.i_crit_edge, label %if.then75.i.for.end79.i_crit_edge

if.then75.i.for.end79.i_crit_edge:                ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end79.i

if.then75.i.land.lhs.true61.i_crit_edge:          ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true61.i

for.end79.i:                                      ; preds = %if.then75.i.for.end79.i_crit_edge, %if.then65.i, %for.end.i.for.end79.i_crit_edge
  %call87.i = tail call i64 @ktime_get() #9
  %add.i225.i = add i64 %call87.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 867) #9
  %30 = ptrtoint ptr %rscc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rscc.i, align 8
  %add.ptr105244.i = getelementptr i8, ptr %31, i32 4696
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105244.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %33 = and i32 %32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool110.not245.i = icmp eq i32 %33, 0
  br i1 %tobool110.not245.i, label %for.end79.i.land.lhs.true114.i_crit_edge, label %for.end79.i.for.end132.i_crit_edge

for.end79.i.for.end132.i_crit_edge:               ; preds = %for.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end132.i

for.end79.i.land.lhs.true114.i_crit_edge:         ; preds = %for.end79.i
  br label %land.lhs.true114.i

land.lhs.true114.i:                               ; preds = %if.then128.i.land.lhs.true114.i_crit_edge, %for.end79.i.land.lhs.true114.i_crit_edge
  %call115.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call115.i, i64 %add.i225.i)
  %cmp3.i227.i = icmp sgt i64 %call115.i, %add.i225.i
  br i1 %cmp3.i227.i, label %if.then118.i, label %if.then128.i

if.then118.i:                                     ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %rscc.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rscc.i, align 8
  %add.ptr122.i = getelementptr i8, ptr %35, i32 4696
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr122.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  br label %for.end132.i

if.then128.i:                                     ; preds = %land.lhs.true114.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %37 = ptrtoint ptr %rscc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rscc.i, align 8
  %add.ptr105.i = getelementptr i8, ptr %38, i32 4696
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %40 = and i32 %39, 16777216
  %tobool110.not.i = icmp eq i32 %40, 0
  br i1 %tobool110.not.i, label %if.then128.i.land.lhs.true114.i_crit_edge, label %if.then128.i.for.end132.i_crit_edge

if.then128.i.for.end132.i_crit_edge:              ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end132.i

if.then128.i.land.lhs.true114.i_crit_edge:        ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true114.i

for.end132.i:                                     ; preds = %if.then128.i.for.end132.i_crit_edge, %if.then118.i, %for.end79.i.for.end132.i_crit_edge
  %call140.i = tail call i64 @ktime_get() #9
  %add.i230.i = add i64 %call140.i, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 869) #9
  %41 = ptrtoint ptr %rscc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rscc.i, align 8
  %add.ptr158246.i = getelementptr i8, ptr %42, i32 5368
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr158246.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool163.not247.i = icmp eq i32 %44, 0
  br i1 %tobool163.not247.i, label %for.end132.i.land.lhs.true167.i_crit_edge, label %for.end132.i.a6xx_gmu_rpmh_off.exit_crit_edge

for.end132.i.a6xx_gmu_rpmh_off.exit_crit_edge:    ; preds = %for.end132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_rpmh_off.exit

for.end132.i.land.lhs.true167.i_crit_edge:        ; preds = %for.end132.i
  br label %land.lhs.true167.i

land.lhs.true167.i:                               ; preds = %if.then181.i.land.lhs.true167.i_crit_edge, %for.end132.i.land.lhs.true167.i_crit_edge
  %call168.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call168.i, i64 %add.i230.i)
  %cmp3.i232.i = icmp sgt i64 %call168.i, %add.i230.i
  br i1 %cmp3.i232.i, label %if.then171.i, label %if.then181.i

if.then171.i:                                     ; preds = %land.lhs.true167.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %rscc.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rscc.i, align 8
  %add.ptr175.i = getelementptr i8, ptr %46, i32 5368
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  br label %a6xx_gmu_rpmh_off.exit

if.then181.i:                                     ; preds = %land.lhs.true167.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %48 = ptrtoint ptr %rscc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rscc.i, align 8
  %add.ptr158.i = getelementptr i8, ptr %49, i32 5368
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr158.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  %51 = and i32 %50, 16777216
  %tobool163.not.i = icmp eq i32 %51, 0
  br i1 %tobool163.not.i, label %if.then181.i.land.lhs.true167.i_crit_edge, label %if.then181.i.a6xx_gmu_rpmh_off.exit_crit_edge

if.then181.i.a6xx_gmu_rpmh_off.exit_crit_edge:    ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_rpmh_off.exit

if.then181.i.land.lhs.true167.i_crit_edge:        ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true167.i

a6xx_gmu_rpmh_off.exit:                           ; preds = %if.then181.i.a6xx_gmu_rpmh_off.exit_crit_edge, %if.then171.i, %for.end132.i.a6xx_gmu_rpmh_off.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a6xx_gmu_remove(ptr noundef %a6xx_gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gmu1 = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4
  %0 = ptrtoint ptr %gmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gmu1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %initialized = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 28
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialized, align 8, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @pm_runtime_force_suspend(ptr noundef %1) #9
  %gxpd = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %gxpd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gxpd, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__pm_runtime_disable(ptr noundef nonnull %5, i1 noundef zeroext true) #9
  %6 = ptrtoint ptr %gxpd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gxpd, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %7, i1 noundef zeroext false) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %mmio = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  tail call void @iounmap(ptr noundef %9) #9
  %call8 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.8) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %rscc = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %rscc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rscc, align 8
  tail call void @iounmap(ptr noundef %11) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %mmio, align 4
  %rscc13 = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %rscc13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rscc13, align 8
  %hfi.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 9
  %14 = ptrtoint ptr %hfi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hfi.i, align 8
  %aspace.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %15, ptr noundef %17) #9
  %debug.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 10
  %18 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %debug.i, align 8
  %20 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %19, ptr noundef %21) #9
  %icache.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 11
  %22 = ptrtoint ptr %icache.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %icache.i, align 8
  %24 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %23, ptr noundef %25) #9
  %dcache.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 12
  %26 = ptrtoint ptr %dcache.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dcache.i, align 8
  %28 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %27, ptr noundef %29) #9
  %dummy.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 13
  %30 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dummy.i, align 8
  %32 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %31, ptr noundef %33) #9
  %log.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 14
  %34 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %log.i, align 8
  %36 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %35, ptr noundef %37) #9
  %38 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %aspace.i, align 8
  %mmu.i = getelementptr inbounds %struct.msm_gem_address_space, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmu.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  tail call void %45(ptr noundef %41) #9
  %46 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_address_space_put(ptr noundef %47) #9
  %gmu_irq = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 6
  %48 = ptrtoint ptr %gmu_irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %gmu_irq, align 8
  %call14 = tail call ptr @free_irq(i32 noundef %49, ptr noundef %gmu1) #9
  %hfi_irq = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 5
  %50 = ptrtoint ptr %hfi_irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hfi_irq, align 4
  %call15 = tail call ptr @free_irq(i32 noundef %51, ptr noundef %gmu1) #9
  %52 = ptrtoint ptr %gmu1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gmu1, align 8
  tail call void @put_device(ptr noundef %53) #9
  %54 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %initialized, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @a6xx_gmu_init(ptr noundef %a6xx_gpu, ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gmu1 = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4
  %call = tail call ptr @of_find_device_by_node(ptr noundef %node) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @a6xx_gmu_init.__key) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %gmu1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %gmu1, align 8
  %call.i = tail call i32 @of_dma_configure_id(ptr noundef %dev, ptr noundef %node, i1 noundef zeroext true, ptr noundef null) #9
  %idle_level = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %idle_level to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %idle_level, align 8
  %2 = ptrtoint ptr %gmu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gmu1, align 8
  tail call void @pm_runtime_enable(ptr noundef %3) #9
  %4 = ptrtoint ptr %gmu1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gmu1, align 8
  %clocks.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 16
  %call.i198 = tail call i32 @devm_clk_bulk_get_all(ptr noundef %5, ptr noundef %clocks.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i198)
  %cmp.i = icmp slt i32 %call.i198, 1
  br i1 %cmp.i, label %a6xx_gmu_clocks_probe.exit, label %a6xx_gmu_clocks_probe.exit.thread

a6xx_gmu_clocks_probe.exit.thread:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %nr_clocks.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 15
  %6 = ptrtoint ptr %nr_clocks.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i198, ptr %nr_clocks.i, align 8
  %7 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clocks.i, align 4
  %call3.i = tail call ptr @msm_clk_bulk_get_clock(ptr noundef %8, i32 noundef %call.i198, ptr noundef nonnull @.str.16) #9
  %core_clk.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 17
  %9 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3.i, ptr %core_clk.i, align 8
  %10 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clocks.i, align 4
  %12 = ptrtoint ptr %nr_clocks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_clocks.i, align 8
  %call6.i = tail call ptr @msm_clk_bulk_get_clock(ptr noundef %11, i32 noundef %13, ptr noundef nonnull @.str.39) #9
  %hub_clk.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 18
  %14 = ptrtoint ptr %hub_clk.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call6.i, ptr %hub_clk.i, align 4
  br label %if.end9

a6xx_gmu_clocks_probe.exit:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool7.not = icmp eq i32 %call.i198, 0
  br i1 %tobool7.not, label %a6xx_gmu_clocks_probe.exit.if.end9_crit_edge, label %a6xx_gmu_clocks_probe.exit.err_put_device_crit_edge

a6xx_gmu_clocks_probe.exit.err_put_device_crit_edge: ; preds = %a6xx_gmu_clocks_probe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_device

a6xx_gmu_clocks_probe.exit.if.end9_crit_edge:     ; preds = %a6xx_gmu_clocks_probe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9:                                          ; preds = %a6xx_gmu_clocks_probe.exit.if.end9_crit_edge, %a6xx_gmu_clocks_probe.exit.thread
  %call.i199 = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #9
  %tobool.not.i = icmp eq ptr %call.i199, null
  br i1 %tobool.not.i, label %if.end9.err_put_device_crit_edge, label %if.end.i200

if.end9.err_put_device_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_device

if.end.i200:                                      ; preds = %if.end9
  %15 = ptrtoint ptr %gmu1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gmu1, align 8
  %call1.i = tail call ptr @msm_iommu_new(ptr noundef %16, ptr noundef nonnull %call.i199) #9
  %call2.i = tail call ptr @msm_gem_address_space_create(ptr noundef %call1.i, ptr noundef nonnull @.str.16, i64 noundef 0, i64 noundef 2147483648) #9
  %aspace.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %aspace.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call2.i, ptr %aspace.i, align 8
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %a6xx_gmu_memory_probe.exit, label %if.end.i200.if.end13_crit_edge

if.end.i200.if.end13_crit_edge:                   ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

a6xx_gmu_memory_probe.exit:                       ; preds = %if.end.i200
  tail call void @iommu_domain_free(ptr noundef nonnull %call.i199) #9
  %18 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aspace.i, align 8
  %20 = ptrtoint ptr %19 to i32
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %a6xx_gmu_memory_probe.exit.if.end13_crit_edge, label %a6xx_gmu_memory_probe.exit.err_put_device_crit_edge

a6xx_gmu_memory_probe.exit.err_put_device_crit_edge: ; preds = %a6xx_gmu_memory_probe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_device

a6xx_gmu_memory_probe.exit.if.end13_crit_edge:    ; preds = %a6xx_gmu_memory_probe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %a6xx_gmu_memory_probe.exit.if.end13_crit_edge, %if.end.i200.if.end13_crit_edge
  %dummy = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 13
  %size = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 13, i32 2
  %21 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4096, ptr %size, align 8
  %revn.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %a6xx_gpu, i32 0, i32 4
  %22 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %revn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 660, i32 %23)
  %cmp.i.not.i = icmp eq i32 %23, 660
  br i1 %cmp.i.not.i, label %if.end13.if.then16_crit_edge, label %adreno_is_a660_family.exit

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

adreno_is_a660_family.exit:                       ; preds = %if.end13
  %rev.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %a6xx_gpu, i32 0, i32 1
  %24 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack.i.i = load i32, ptr %rev.i.i, align 8
  %25 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call.i.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %25) #9
  br i1 %call.i.i, label %adreno_is_a660_family.exit.if.then16_crit_edge, label %adreno_is_a660_family.exit.if.end23_crit_edge

adreno_is_a660_family.exit.if.end23_crit_edge:    ; preds = %adreno_is_a660_family.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

adreno_is_a660_family.exit.if.then16_crit_edge:   ; preds = %adreno_is_a660_family.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %adreno_is_a660_family.exit.if.then16_crit_edge, %if.end13.if.then16_crit_edge
  %debug = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 10
  %call17 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %gmu1, ptr noundef %debug, i32 noundef 28672, i64 noundef 1614807040, ptr noundef nonnull @.str.10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then16.err_memory_crit_edge

if.then16.err_memory_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_memory

if.end20:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8192, ptr %size, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %adreno_is_a660_family.exit.if.end23_crit_edge
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 8
  %call27 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %gmu1, ptr noundef %dummy, i32 noundef %28, i64 noundef 1610612736, ptr noundef nonnull @.str.11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end23.err_memory_crit_edge

if.end23.err_memory_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_memory

if.end30:                                         ; preds = %if.end23
  %29 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %revn.i.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %30, label %adreno_is_a650_family.exit [
    i32 650, label %if.end30.if.then33_crit_edge
    i32 620, label %if.end30.if.then33_crit_edge225
    i32 660, label %if.end30.if.then33_crit_edge226
  ]

if.end30.if.then33_crit_edge226:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.end30.if.then33_crit_edge225:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.end30.if.then33_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

adreno_is_a650_family.exit:                       ; preds = %if.end30
  %rev.i.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %a6xx_gpu, i32 0, i32 1
  %32 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack.i.i.i = load i32, ptr %rev.i.i.i, align 8
  %33 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i, 0
  %call.i.i.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %33) #9
  br i1 %call.i.i.i, label %adreno_is_a650_family.exit.if.then33_crit_edge, label %if.else

adreno_is_a650_family.exit.if.then33_crit_edge:   ; preds = %adreno_is_a650_family.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.then33:                                        ; preds = %adreno_is_a650_family.exit.if.then33_crit_edge, %if.end30.if.then33_crit_edge, %if.end30.if.then33_crit_edge225, %if.end30.if.then33_crit_edge226
  %icache = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 11
  %call34 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %gmu1, ptr noundef %icache, i32 noundef 16760832, i64 noundef 16384, ptr noundef nonnull @.str.12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then33.if.end72_crit_edge, label %if.then33.err_memory_crit_edge

if.then33.err_memory_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_memory

if.then33.if.end72_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.else:                                          ; preds = %adreno_is_a650_family.exit
  %34 = ptrtoint ptr %revn.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %revn.i.i, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %35, label %adreno_is_a660_family.exit211 [
    i32 680, label %if.else.if.then40_crit_edge
    i32 640, label %if.else.if.then40_crit_edge227
    i32 660, label %if.else.do.body57_crit_edge
  ]

if.else.do.body57_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body57

if.else.if.then40_crit_edge227:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.else.if.then40_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.then40:                                        ; preds = %if.else.if.then40_crit_edge, %if.else.if.then40_crit_edge227
  %icache41 = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 11
  %call42 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %gmu1, ptr noundef %icache41, i32 noundef 245760, i64 noundef 16384, ptr noundef nonnull @.str.12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then40.err_memory_crit_edge

if.then40.err_memory_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_memory

if.end45:                                         ; preds = %if.then40
  %dcache = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 12
  %call46 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %gmu1, ptr noundef %dcache, i32 noundef 245760, i64 noundef 278528, ptr noundef nonnull @.str.13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.if.end72_crit_edge, label %if.end45.err_memory_crit_edge

if.end45.err_memory_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_memory

if.end45.if.end72_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

adreno_is_a660_family.exit211:                    ; preds = %if.else
  %37 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack.i.i207 = load i32, ptr %rev.i.i.i, align 8
  %38 = insertvalue [1 x i32] undef, i32 %.unpack.i.i207, 0
  %call.i.i208 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %38) #9
  br i1 %call.i.i208, label %adreno_is_a660_family.exit211.do.body57_crit_edge, label %do.end65, !prof !154

adreno_is_a660_family.exit211.do.body57_crit_edge: ; preds = %adreno_is_a660_family.exit211
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body57

do.body57:                                        ; preds = %adreno_is_a660_family.exit211.do.body57_crit_edge, %if.else.do.body57_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/adreno/a6xx_gmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1551, 0\0A.popsection", ""() #9, !srcloc !176
  unreachable

do.end65:                                         ; preds = %adreno_is_a660_family.exit211
  %legacy = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 30
  %39 = ptrtoint ptr %legacy to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %legacy, align 2
  %debug66 = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 10
  %call67 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %gmu1, ptr noundef %debug66, i32 noundef 16384, i64 noundef 0, ptr noundef nonnull @.str.10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %do.end65.if.end72_crit_edge, label %do.end65.err_memory_crit_edge

do.end65.err_memory_crit_edge:                    ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_memory

do.end65.if.end72_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end72:                                         ; preds = %do.end65.if.end72_crit_edge, %if.end45.if.end72_crit_edge, %if.then33.if.end72_crit_edge
  %hfi = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 9
  %call73 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %gmu1, ptr noundef %hfi, i32 noundef 16384, i64 noundef 0, ptr noundef nonnull @.str.14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.err_memory_crit_edge

if.end72.err_memory_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_memory

if.end76:                                         ; preds = %if.end72
  %log = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 14
  %call77 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %gmu1, ptr noundef %log, i32 noundef 4096, i64 noundef 0, ptr noundef nonnull @.str.15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.err_memory_crit_edge

if.end76.err_memory_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_memory

if.end80:                                         ; preds = %if.end76
  %call81 = tail call fastcc ptr @a6xx_gmu_get_mmio(ptr noundef nonnull %call, ptr noundef nonnull @.str.16)
  %mmio = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 3
  %40 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call81, ptr %mmio, align 4
  %cmp.i212 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %call81 to i32
  br label %err_memory

if.end87:                                         ; preds = %if.end80
  %call88 = tail call fastcc i32 @adreno_is_a650_family(ptr noundef %a6xx_gpu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.else96, label %if.then90

if.then90:                                        ; preds = %if.end87
  %call91 = tail call fastcc ptr @a6xx_gmu_get_mmio(ptr noundef nonnull %call, ptr noundef nonnull @.str.8)
  %rscc = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 4
  %42 = ptrtoint ptr %rscc to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call91, ptr %rscc, align 8
  %cmp.i213 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.then90.err_mmio_crit_edge, label %if.then90.if.end99_crit_edge

if.then90.if.end99_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then90.err_mmio_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_mmio

if.else96:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %44, i32 143360
  %rscc98 = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 4
  %45 = ptrtoint ptr %rscc98 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr, ptr %rscc98, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.else96, %if.then90.if.end99_crit_edge
  %call100 = tail call fastcc i32 @a6xx_gmu_get_irq(ptr noundef %gmu1, ptr noundef nonnull %call, ptr noundef nonnull @.str.14, ptr noundef nonnull @a6xx_hfi_irq)
  %hfi_irq = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 5
  %46 = ptrtoint ptr %hfi_irq to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call100, ptr %hfi_irq, align 4
  %call101 = tail call fastcc i32 @a6xx_gmu_get_irq(ptr noundef %gmu1, ptr noundef nonnull %call, ptr noundef nonnull @.str.16, ptr noundef nonnull @a6xx_gmu_irq)
  %gmu_irq = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 6
  %47 = ptrtoint ptr %gmu_irq to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call101, ptr %gmu_irq, align 8
  %48 = ptrtoint ptr %hfi_irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hfi_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp = icmp slt i32 %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp104 = icmp slt i32 %call101, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp104
  br i1 %or.cond, label %if.end99.err_mmio_crit_edge, label %if.end106

if.end99.err_mmio_crit_edge:                      ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_mmio

if.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %gmu1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gmu1, align 8
  %call108 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %51, ptr noundef nonnull @.str.17) #9
  %gxpd = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 7
  %52 = ptrtoint ptr %gxpd to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call108, ptr %gxpd, align 4
  tail call fastcc void @a6xx_gmu_pwrlevels_probe(ptr noundef %gmu1)
  tail call void @a6xx_hfi_init(ptr noundef %gmu1) #9
  %initialized = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 28
  %53 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %initialized, align 8
  br label %cleanup

err_mmio:                                         ; preds = %if.end99.err_mmio_crit_edge, %if.then90.err_mmio_crit_edge
  %54 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio, align 4
  tail call void @iounmap(ptr noundef %55) #9
  %call111 = tail call ptr @platform_get_resource_byname(ptr noundef nonnull %call, i32 noundef 512, ptr noundef nonnull @.str.8) #9
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %err_mmio.if.end115_crit_edge, label %if.then113

err_mmio.if.end115_crit_edge:                     ; preds = %err_mmio
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then113:                                       ; preds = %err_mmio
  call void @__sanitizer_cov_trace_pc() #11
  %rscc114 = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 4
  %56 = ptrtoint ptr %rscc114 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rscc114, align 8
  tail call void @iounmap(ptr noundef %57) #9
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %err_mmio.if.end115_crit_edge
  %gmu_irq116 = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 6
  %58 = ptrtoint ptr %gmu_irq116 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %gmu_irq116, align 8
  %call117 = tail call ptr @free_irq(i32 noundef %59, ptr noundef %gmu1) #9
  %hfi_irq118 = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 5
  %60 = ptrtoint ptr %hfi_irq118 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hfi_irq118, align 4
  %call119 = tail call ptr @free_irq(i32 noundef %61, ptr noundef %gmu1) #9
  br label %err_memory

err_memory:                                       ; preds = %if.end115, %if.then84, %if.end76.err_memory_crit_edge, %if.end72.err_memory_crit_edge, %do.end65.err_memory_crit_edge, %if.end45.err_memory_crit_edge, %if.then40.err_memory_crit_edge, %if.then33.err_memory_crit_edge, %if.end23.err_memory_crit_edge, %if.then16.err_memory_crit_edge
  %ret.0 = phi i32 [ %call17, %if.then16.err_memory_crit_edge ], [ %call27, %if.end23.err_memory_crit_edge ], [ %call34, %if.then33.err_memory_crit_edge ], [ %call73, %if.end72.err_memory_crit_edge ], [ %call77, %if.end76.err_memory_crit_edge ], [ %41, %if.then84 ], [ -19, %if.end115 ], [ %call42, %if.then40.err_memory_crit_edge ], [ %call46, %if.end45.err_memory_crit_edge ], [ %call67, %do.end65.err_memory_crit_edge ]
  %hfi.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 9
  %62 = ptrtoint ptr %hfi.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hfi.i, align 8
  %64 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %63, ptr noundef %65) #9
  %debug.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 10
  %66 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %debug.i, align 8
  %68 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %67, ptr noundef %69) #9
  %icache.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 11
  %70 = ptrtoint ptr %icache.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %icache.i, align 8
  %72 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %71, ptr noundef %73) #9
  %dcache.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 12
  %74 = ptrtoint ptr %dcache.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dcache.i, align 8
  %76 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %75, ptr noundef %77) #9
  %78 = ptrtoint ptr %dummy to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dummy, align 8
  %80 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %79, ptr noundef %81) #9
  %log.i = getelementptr inbounds %struct.a6xx_gpu, ptr %a6xx_gpu, i32 0, i32 4, i32 14
  %82 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %log.i, align 8
  %84 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %83, ptr noundef %85) #9
  %86 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %aspace.i, align 8
  %mmu.i = getelementptr inbounds %struct.msm_gem_address_space, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmu.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  tail call void %93(ptr noundef %89) #9
  %94 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_address_space_put(ptr noundef %95) #9
  br label %err_put_device

err_put_device:                                   ; preds = %err_memory, %a6xx_gmu_memory_probe.exit.err_put_device_crit_edge, %if.end9.err_put_device_crit_edge, %a6xx_gmu_clocks_probe.exit.err_put_device_crit_edge
  %ret.1 = phi i32 [ %call.i198, %a6xx_gmu_clocks_probe.exit.err_put_device_crit_edge ], [ %20, %a6xx_gmu_memory_probe.exit.err_put_device_crit_edge ], [ %ret.0, %err_memory ], [ -19, %if.end9.err_put_device_crit_edge ]
  %96 = ptrtoint ptr %gmu1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %gmu1, align 8
  tail call void @put_device(ptr noundef %97) #9
  br label %cleanup

cleanup:                                          ; preds = %err_put_device, %if.end106, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_put_device ], [ 0, %if.end106 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a6xx_gmu_memory_alloc(ptr nocapture noundef readonly %gmu, ptr noundef %bo, i32 noundef %size, i64 noundef %iova, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2 = getelementptr i8, ptr %gmu, i32 -940
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2, align 4
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %iova)
  %tobool.not = icmp eq i64 %iova, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i32 %and to i64
  %add3 = add i64 %conv, %iova
  %phi.bo = lshr i64 %iova, 12
  %phi.bo44 = lshr i64 %add3, 12
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ 537001984, %if.else ], [ 131072, %entry.if.end_crit_edge ]
  %range_start.0 = phi i64 [ %phi.bo, %if.else ], [ 393217, %entry.if.end_crit_edge ]
  %range_end.0 = phi i64 [ %phi.bo44, %if.else ], [ 524288, %entry.if.end_crit_edge ]
  %call = tail call ptr @msm_gem_new(ptr noundef %1, i32 noundef %and, i32 noundef %flags.0) #9
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %bo, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %aspace = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 2
  %4 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aspace, align 8
  %iova11 = getelementptr inbounds %struct.a6xx_gmu_bo, ptr %bo, i32 0, i32 3
  %call13 = tail call i32 @msm_gem_get_and_pin_iova_range(ptr noundef %call, ptr noundef %5, ptr noundef %iova11, i64 noundef %range_start.0, i64 noundef %range_end.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %6 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bo, align 8
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end9
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then15.cleanup_crit_edge, label %if.then.i

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then15
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #9, !srcloc !178
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !145

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @drm_gem_object_free(ptr noundef nonnull %7) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call ptr @msm_gem_get_vaddr(ptr noundef %7) #9
  %virt = getelementptr inbounds %struct.a6xx_gmu_bo, ptr %bo, i32 0, i32 1
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call19, ptr %virt, align 4
  %size20 = getelementptr inbounds %struct.a6xx_gmu_bo, ptr %bo, i32 0, i32 2
  %10 = ptrtoint ptr %size20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %size20, align 8
  %11 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bo, align 8
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %12, ptr noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ %3, %if.then6 ], [ 0, %if.end17 ], [ %call13, %if.then15.cleanup_crit_edge ], [ %call13, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call13, %if.then10.i.i.i.i.i.i ], [ %call13, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adreno_is_a650_family(ptr nocapture noundef readonly %gpu) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %revn = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %0 = ptrtoint ptr %revn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revn, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %1, label %lor.rhs.i [
    i32 650, label %entry.lor.end_crit_edge
    i32 620, label %entry.lor.end_crit_edge6
    i32 660, label %entry.lor.end_crit_edge7
  ]

entry.lor.end_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

entry.lor.end_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rev.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1
  %3 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack.i.i = load i32, ptr %rev.i.i, align 8
  %4 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call.i.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %4) #9
  %phi.cast5 = zext i1 %call.i.i to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.i, %entry.lor.end_crit_edge, %entry.lor.end_crit_edge6, %entry.lor.end_crit_edge7
  %5 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ 1, %entry.lor.end_crit_edge6 ], [ %phi.cast5, %lor.rhs.i ], [ 1, %entry.lor.end_crit_edge7 ]
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @a6xx_gmu_get_mmio(ptr noundef %pdev, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %name) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %call3 = tail call ptr @ioremap(i32 noundef %1, i32 noundef %add.i) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.40, %entry.cleanup.sink.split_crit_edge ], [ @.str.41, %if.end.cleanup.sink.split_crit_edge ]
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev6, ptr noundef nonnull @.str.3, ptr noundef nonnull %.str.41.sink, ptr noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a6xx_gmu_get_irq(ptr noundef %gmu, ptr noundef %pdev, ptr noundef %name, ptr noundef %handler) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %name) #9
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call, ptr noundef %handler, ptr noundef null, i32 noundef 4, ptr noundef %name, ptr noundef %gmu) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.42, ptr noundef %name, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @disable_irq(i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a6xx_hfi_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.a6xx_gmu, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 83528
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #9
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %3, i32 83524
  tail call void @msm_writel(i32 noundef %call.i, ptr noundef %add.ptr.i13) #9
  %and = and i32 %call.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.body:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_hfi_irq._rs, ptr noundef nonnull @__func__.a6xx_hfi_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.44) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %hung.i = getelementptr inbounds %struct.a6xx_gmu, ptr %data, i32 0, i32 29
  %6 = ptrtoint ptr %hung.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %hung.i, align 1
  %hangcheck_timer.i = getelementptr i8, ptr %data, i32 -532
  %call.i14 = tail call i32 @del_timer(ptr noundef %hangcheck_timer.i) #9
  %worker.i = getelementptr i8, ptr %data, i32 -344
  %7 = ptrtoint ptr %worker.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %worker.i, align 8
  %recover_work.i = getelementptr i8, ptr %data, i32 -436
  %call2.i = tail call zeroext i1 @kthread_queue_work(ptr noundef %8, ptr noundef %recover_work.i) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end6, %entry.if.end7_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a6xx_gmu_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.a6xx_gmu, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 150548
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #9
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %3, i32 150544
  tail call void @msm_writel(i32 noundef %call.i, ptr noundef %add.ptr.i49) #9
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.body:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_gmu_irq._rs, ptr noundef nonnull @__func__.a6xx_gmu_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.45) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %hung.i = getelementptr inbounds %struct.a6xx_gmu, ptr %data, i32 0, i32 29
  %6 = ptrtoint ptr %hung.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %hung.i, align 1
  %hangcheck_timer.i = getelementptr i8, ptr %data, i32 -532
  %call.i50 = tail call i32 @del_timer(ptr noundef %hangcheck_timer.i) #9
  %worker.i = getelementptr i8, ptr %data, i32 -344
  %7 = ptrtoint ptr %worker.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %worker.i, align 8
  %recover_work.i = getelementptr i8, ptr %data, i32 -436
  %call2.i = tail call zeroext i1 @kthread_queue_work(ptr noundef %8, ptr noundef %recover_work.i) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end6, %entry.if.end7_crit_edge
  %and8 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end22_crit_edge, label %do.body11

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.body11:                                        ; preds = %if.end7
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_gmu_irq._rs.46, ptr noundef nonnull @__func__.a6xx_gmu_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body11.if.end22_crit_edge, label %do.end17

do.body11.if.end22_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.48) #12
  br label %if.end22

if.end22:                                         ; preds = %do.end17, %do.body11.if.end22_crit_edge, %if.end7.if.end22_crit_edge
  %and23 = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end38_crit_edge, label %do.body26

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

do.body26:                                        ; preds = %if.end22
  %call27 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_gmu_irq._rs.50, ptr noundef nonnull @__func__.a6xx_gmu_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body26.if.end38_crit_edge, label %do.end32

do.body26.if.end38_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %14, i32 150604
  %call.i53 = tail call i32 @msm_readl(ptr noundef %add.ptr.i52) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.52, i32 noundef %call.i53) #12
  br label %if.end38

if.end38:                                         ; preds = %do.end32, %do.body26.if.end38_crit_edge, %if.end22.if.end38_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @a6xx_gmu_pwrlevels_probe(ptr nocapture noundef %gmu) unnamed_addr #0 align 64 {
entry:
  %freq.i1 = alloca i32, align 4
  %freq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gmu, align 8
  %call = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %2 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gmu, align 8
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.54) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %gmu_freqs = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 24
  %call.i = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i) #9
  %4 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %freq.i, align 4
  %add.i = add i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4
  br i1 %cmp.i, label %if.end.i.thread, label %if.end.i, !prof !154

if.end.i.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1339, i32 noundef 9, ptr noundef nonnull @.str.55) #9
  %5 = ptrtoint ptr %gmu_freqs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %gmu_freqs, align 4
  br label %for.body.preheader.i

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %gmu_freqs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %gmu_freqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2240.i = icmp sgt i32 %call.i, 0
  br i1 %cmp2240.i, label %if.end.i.for.body.preheader.i_crit_edge, label %if.end.i.a6xx_gmu_build_freq_table.exit_crit_edge

if.end.i.a6xx_gmu_build_freq_table.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_build_freq_table.exit

if.end.i.for.body.preheader.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end.i.for.body.preheader.i_crit_edge, %if.end.i.thread
  %umin.i = tail call i32 @llvm.umin.i32(i32 %add.i, i32 4) #9
  br label %for.body.i

for.body.i:                                       ; preds = %if.end26.i.for.body.i_crit_edge, %for.body.preheader.i
  %index.042.i = phi i32 [ %inc28.i, %if.end26.i.for.body.i_crit_edge ], [ 1, %for.body.preheader.i ]
  %call23.i = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %3, ptr noundef nonnull %freq.i) #9
  %cmp.i.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.i.a6xx_gmu_build_freq_table.exit_crit_edge, label %if.end26.i

for.body.i.a6xx_gmu_build_freq_table.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_build_freq_table.exit

if.end26.i:                                       ; preds = %for.body.i
  call void @dev_pm_opp_put(ptr noundef %call23.i) #9
  %7 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %freq.i, align 4
  %inc27.i = add i32 %8, 1
  store i32 %inc27.i, ptr %freq.i, align 4
  %inc28.i = add nuw i32 %index.042.i, 1
  %arrayidx29.i = getelementptr i32, ptr %gmu_freqs, i32 %index.042.i
  %9 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx29.i, align 4
  %exitcond.not.i = icmp eq i32 %inc28.i, %umin.i
  br i1 %exitcond.not.i, label %if.end26.i.a6xx_gmu_build_freq_table.exit_crit_edge, label %if.end26.i.for.body.i_crit_edge

if.end26.i.for.body.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end26.i.a6xx_gmu_build_freq_table.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_build_freq_table.exit

a6xx_gmu_build_freq_table.exit:                   ; preds = %if.end26.i.a6xx_gmu_build_freq_table.exit_crit_edge, %for.body.i.a6xx_gmu_build_freq_table.exit_crit_edge, %if.end.i.a6xx_gmu_build_freq_table.exit_crit_edge
  %index.0.lcssa.i = phi i32 [ 1, %if.end.i.a6xx_gmu_build_freq_table.exit_crit_edge ], [ %umin.i, %if.end26.i.a6xx_gmu_build_freq_table.exit_crit_edge ], [ %index.042.i, %for.body.i.a6xx_gmu_build_freq_table.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #9
  %nr_gmu_freqs = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 23
  %10 = ptrtoint ptr %nr_gmu_freqs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %index.0.lcssa.i, ptr %nr_gmu_freqs, align 8
  %pdev = getelementptr i8, ptr %gmu, i32 -936
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %gpu_freqs = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 21
  %call.i2 = call i32 @dev_pm_opp_get_opp_count(ptr noundef %dev5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i1) #9
  %13 = ptrtoint ptr %freq.i1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %freq.i1, align 4
  %add.i3 = add i32 %call.i2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i3)
  %cmp.i4 = icmp ugt i32 %add.i3, 16
  br i1 %cmp.i4, label %if.end.i8.thread, label %if.end.i8, !prof !154

if.end.i8.thread:                                 ; preds = %a6xx_gmu_build_freq_table.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1339, i32 noundef 9, ptr noundef nonnull @.str.55) #9
  %14 = ptrtoint ptr %gpu_freqs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %gpu_freqs, align 4
  br label %for.body.preheader.i10

if.end.i8:                                        ; preds = %a6xx_gmu_build_freq_table.exit
  %15 = ptrtoint ptr %gpu_freqs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %gpu_freqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp2240.i7 = icmp sgt i32 %call.i2, 0
  br i1 %cmp2240.i7, label %if.end.i8.for.body.preheader.i10_crit_edge, label %if.end.i8.a6xx_gmu_build_freq_table.exit21_crit_edge

if.end.i8.a6xx_gmu_build_freq_table.exit21_crit_edge: ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_build_freq_table.exit21

if.end.i8.for.body.preheader.i10_crit_edge:       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader.i10

for.body.preheader.i10:                           ; preds = %if.end.i8.for.body.preheader.i10_crit_edge, %if.end.i8.thread
  %umin.i9 = call i32 @llvm.umin.i32(i32 %add.i3, i32 16) #9
  br label %for.body.i14

for.body.i14:                                     ; preds = %if.end26.i19.for.body.i14_crit_edge, %for.body.preheader.i10
  %index.042.i11 = phi i32 [ %inc28.i16, %if.end26.i19.for.body.i14_crit_edge ], [ 1, %for.body.preheader.i10 ]
  %call23.i12 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %dev5, ptr noundef nonnull %freq.i1) #9
  %cmp.i.i13 = icmp ugt ptr %call23.i12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i13, label %for.body.i14.a6xx_gmu_build_freq_table.exit21_crit_edge, label %if.end26.i19

for.body.i14.a6xx_gmu_build_freq_table.exit21_crit_edge: ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_build_freq_table.exit21

if.end26.i19:                                     ; preds = %for.body.i14
  call void @dev_pm_opp_put(ptr noundef %call23.i12) #9
  %16 = ptrtoint ptr %freq.i1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %freq.i1, align 4
  %inc27.i15 = add i32 %17, 1
  store i32 %inc27.i15, ptr %freq.i1, align 4
  %inc28.i16 = add nuw i32 %index.042.i11, 1
  %arrayidx29.i17 = getelementptr i32, ptr %gpu_freqs, i32 %index.042.i11
  %18 = ptrtoint ptr %arrayidx29.i17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx29.i17, align 4
  %exitcond.not.i18 = icmp eq i32 %inc28.i16, %umin.i9
  br i1 %exitcond.not.i18, label %if.end26.i19.a6xx_gmu_build_freq_table.exit21_crit_edge, label %if.end26.i19.for.body.i14_crit_edge

if.end26.i19.for.body.i14_crit_edge:              ; preds = %if.end26.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i14

if.end26.i19.a6xx_gmu_build_freq_table.exit21_crit_edge: ; preds = %if.end26.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_build_freq_table.exit21

a6xx_gmu_build_freq_table.exit21:                 ; preds = %if.end26.i19.a6xx_gmu_build_freq_table.exit21_crit_edge, %for.body.i14.a6xx_gmu_build_freq_table.exit21_crit_edge, %if.end.i8.a6xx_gmu_build_freq_table.exit21_crit_edge
  %index.0.lcssa.i20 = phi i32 [ 1, %if.end.i8.a6xx_gmu_build_freq_table.exit21_crit_edge ], [ %umin.i9, %if.end26.i19.a6xx_gmu_build_freq_table.exit21_crit_edge ], [ %index.042.i11, %for.body.i14.a6xx_gmu_build_freq_table.exit21_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i1) #9
  %nr_gpu_freqs = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 20
  %19 = ptrtoint ptr %nr_gpu_freqs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %index.0.lcssa.i20, ptr %nr_gpu_freqs, align 4
  %sub = add i32 %index.0.lcssa.i20, -1
  %current_perf_index = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 19
  %20 = ptrtoint ptr %current_perf_index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %current_perf_index, align 8
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  %gx_arc_votes.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 22
  %call.i22 = call fastcc i32 @a6xx_gmu_rpmh_arc_votes_init(ptr noundef %dev.i, ptr noundef %gx_arc_votes.i, ptr noundef %gpu_freqs, i32 noundef %index.0.lcssa.i20, ptr noundef nonnull @.str.56) #9
  %23 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gmu, align 8
  %cx_arc_votes.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 25
  %25 = ptrtoint ptr %nr_gmu_freqs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_gmu_freqs, align 8
  %call6.i = call fastcc i32 @a6xx_gmu_rpmh_arc_votes_init(ptr noundef %24, ptr noundef %cx_arc_votes.i, ptr noundef %gmu_freqs, i32 noundef %26, ptr noundef nonnull @.str.57) #9
  br label %cleanup

cleanup:                                          ; preds = %a6xx_gmu_build_freq_table.exit21, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @a6xx_hfi_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gmu_freq_change(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_exact(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a6xx_rpmh_start(ptr nocapture noundef readonly %gmu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 3
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 150556
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 465) #9
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr129 = getelementptr i8, ptr %3, i32 150560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129) #9, !srcloc !151
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %and130 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool.not131 = icmp eq i32 %and130, 0
  br i1 %tobool.not131, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then29.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call16 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call16, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call16, %add.i
  br i1 %cmp3.i, label %if.then19, label %if.then29

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr23 = getelementptr i8, ptr %7, i32 150560
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #9, !srcloc !151
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  br label %for.end

if.then29:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 150560
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !151
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %and = and i32 %13, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then29.land.lhs.true_crit_edge, label %if.then29.for.end_crit_edge

if.then29.for.end_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then29.land.lhs.true_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %if.then29.for.end_crit_edge, %if.then19, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then19 ], [ %5, %entry.for.end_crit_edge ], [ %13, %if.then29.for.end_crit_edge ]
  %and32 = and i32 %val.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gmu, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end36:                                         ; preds = %for.end
  %call40 = tail call i64 @ktime_get() #9
  %add.i116 = add i64 %call40, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 472) #9
  %rscc = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 4
  %16 = ptrtoint ptr %rscc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rscc, align 8
  %add.ptr57132 = getelementptr i8, ptr %17, i32 1028
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57132) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool61.not133 = icmp eq i32 %18, 0
  br i1 %tobool61.not133, label %if.end36.if.end90_crit_edge, label %if.end36.land.lhs.true65_crit_edge

if.end36.land.lhs.true65_crit_edge:               ; preds = %if.end36
  br label %land.lhs.true65

if.end36.if.end90_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

land.lhs.true65:                                  ; preds = %if.then79.land.lhs.true65_crit_edge, %if.end36.land.lhs.true65_crit_edge
  %call66 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call66, i64 %add.i116)
  %cmp3.i118 = icmp sgt i64 %call66, %add.i116
  br i1 %cmp3.i118, label %if.then69, label %if.then79

if.then69:                                        ; preds = %land.lhs.true65
  %19 = ptrtoint ptr %rscc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rscc, align 8
  %add.ptr73 = getelementptr i8, ptr %20, i32 1028
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %phi.cmp = icmp eq i32 %21, 0
  br i1 %phi.cmp, label %if.then69.if.end90_crit_edge, label %if.then88

if.then69.if.end90_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then79:                                        ; preds = %land.lhs.true65
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %22 = ptrtoint ptr %rscc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rscc, align 8
  %add.ptr57 = getelementptr i8, ptr %23, i32 1028
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %tobool61.not = icmp eq i32 %24, 0
  br i1 %tobool61.not, label %if.then79.if.end90_crit_edge, label %if.then79.land.lhs.true65_crit_edge

if.then79.land.lhs.true65_crit_edge:              ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true65

if.then79.if.end90_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then88:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gmu, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %26, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end90:                                         ; preds = %if.then79.if.end90_crit_edge, %if.then69.if.end90_crit_edge, %if.end36.if.end90_crit_edge
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %28, i32 150556
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i122) #9
  %29 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %30, i32 150584
  tail call void @msm_writel(i32 noundef -16777216, ptr noundef %add.ptr.i124) #9
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 82180
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #9
  %and.i = and i32 %call.i.i, -256
  %or1.i = or i32 %and.i, 32
  %33 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %34, i32 82180
  tail call void @msm_writel(i32 noundef %or1.i, ptr noundef %add.ptr.i7.i) #9
  %35 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %36, i32 82176
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i126) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then88, %if.then35
  %retval.0 = phi i32 [ -110, %if.then35 ], [ -110, %if.then88 ], [ 0, %if.end90 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a6xx_hfi_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @a6xx_sptprac_disable(ptr nocapture noundef readonly %gmu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %legacy = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 30
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %legacy, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio.i.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 3
  %2 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 159756
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #9
  %or1.i = or i32 %call.i.i, 2048
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %5, i32 159756
  tail call void @msm_writel(i32 noundef %or1.i, ptr noundef %add.ptr.i7.i) #9
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 516
  tail call void @msm_writel(i32 noundef 7831553, ptr noundef %add.ptr.i) #9
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 392) #9
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr53 = getelementptr i8, ptr %9, i32 82752
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #9, !srcloc !151
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  %and54 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool12.not55 = icmp eq i32 %and54, 0
  br i1 %tobool12.not55, label %if.end.land.lhs.true_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then29.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call16 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call16, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call16, %add.i
  br i1 %cmp3.i, label %if.then19, label %if.then29

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 82752
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #9, !srcloc !151
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  br label %for.end

if.then29:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 82752
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !151
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  %and = and i32 %19, 4
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then29.land.lhs.true_crit_edge, label %if.then29.for.end_crit_edge

if.then29.for.end_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then29.land.lhs.true_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %if.then29.for.end_crit_edge, %if.then19, %if.end.for.end_crit_edge
  %val.0 = phi i32 [ %15, %if.then19 ], [ %11, %if.end.for.end_crit_edge ], [ %19, %if.then29.for.end_crit_edge ]
  %and32 = and i32 %val.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then35, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gmu, align 8
  %22 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %23, i32 82752
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i51) #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %21, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_hfi_send_prep_slumber(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_kernel_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_address_space_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_bulk_get_clock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_iommu_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_create(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_cmp_rev([1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova_range(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a6xx_gmu_rpmh_arc_votes_init(ptr noundef %dev, ptr nocapture noundef writeonly %votes, ptr nocapture noundef readonly %freqs, i32 noundef %freqs_count, ptr noundef %id) unnamed_addr #0 align 64 {
entry:
  %pri_count = alloca i32, align 4
  %sec_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pri_count) #9
  %0 = ptrtoint ptr %pri_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pri_count, align 4, !annotation !187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sec_count) #9
  %1 = ptrtoint ptr %sec_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %sec_count, align 4, !annotation !187
  %call = call ptr @cmd_db_read_aux_data(ptr noundef %id, ptr noundef nonnull %pri_count) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup68

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pri_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pri_count, align 4
  %shr = lshr i32 %4, 1
  store i32 %shr, ptr %pri_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %tobool.not = icmp ult i32 %4, 2
  br i1 %tobool.not, label %if.end.cleanup68_crit_edge, label %if.end4

if.end.cleanup68_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @cmd_db_read_aux_data(ptr noundef nonnull @.str.58, ptr noundef nonnull %sec_count) #9
  %cmp.i103 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup68

if.end9:                                          ; preds = %if.end4
  %6 = ptrtoint ptr %sec_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sec_count, align 4
  %shr10 = lshr i32 %7, 1
  store i32 %shr10, ptr %sec_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %tobool11.not = icmp ult i32 %7, 2
  br i1 %tobool11.not, label %if.end9.cleanup68_crit_edge, label %for.cond.preheader

if.end9.cleanup68_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

for.cond.preheader:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freqs_count)
  %cmp119 = icmp sgt i32 %freqs_count, 0
  br i1 %cmp119, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup68_crit_edge

for.cond.preheader.cleanup68_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.end55
  %inc66 = add nuw nsw i32 %i.0120, 1
  %exitcond125.not = icmp eq i32 %inc66, %freqs_count
  br i1 %exitcond125.not, label %for.cond.cleanup68_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup68_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0120 = phi i32 [ %inc66, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %freqs, i32 %i.0120
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %for.body.a6xx_gmu_get_arc_level.exit_crit_edge, label %if.end.i

for.body.a6xx_gmu_get_arc_level.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_get_arc_level.exit

if.end.i:                                         ; preds = %for.body
  %call.i = call ptr @dev_pm_opp_find_freq_exact(ptr noundef %dev, i32 noundef %9, i1 noundef zeroext true) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.a6xx_gmu_get_arc_level.exit_crit_edge, label %if.end3.i

if.end.i.a6xx_gmu_get_arc_level.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %a6xx_gmu_get_arc_level.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = call i32 @dev_pm_opp_get_level(ptr noundef %call.i) #9
  call void @dev_pm_opp_put(ptr noundef %call.i) #9
  br label %a6xx_gmu_get_arc_level.exit

a6xx_gmu_get_arc_level.exit:                      ; preds = %if.end3.i, %if.end.i.a6xx_gmu_get_arc_level.exit_crit_edge, %for.body.a6xx_gmu_get_arc_level.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end3.i ], [ 0, %for.body.a6xx_gmu_get_arc_level.exit_crit_edge ], [ 0, %if.end.i.a6xx_gmu_get_arc_level.exit_crit_edge ]
  %10 = ptrtoint ptr %pri_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pri_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp16106.not = icmp eq i32 %11, 0
  br i1 %cmp16106.not, label %a6xx_gmu_get_arc_level.exit.for.end_crit_edge, label %a6xx_gmu_get_arc_level.exit.for.body17_crit_edge

a6xx_gmu_get_arc_level.exit.for.body17_crit_edge: ; preds = %a6xx_gmu_get_arc_level.exit
  br label %for.body17

a6xx_gmu_get_arc_level.exit.for.end_crit_edge:    ; preds = %a6xx_gmu_get_arc_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %a6xx_gmu_get_arc_level.exit.for.body17_crit_edge
  %j.0107 = phi i32 [ %inc, %for.inc.for.body17_crit_edge ], [ 0, %a6xx_gmu_get_arc_level.exit.for.body17_crit_edge ]
  %arrayidx18 = getelementptr i16, ptr %call, i32 %j.0107
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx18, align 2
  %conv = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv)
  %cmp19.not = icmp ugt i32 %retval.0.i, %conv
  br i1 %cmp19.not, label %for.inc, label %for.body17.for.end_crit_edge

for.body17.for.end_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body17
  %inc = add nuw i32 %j.0107, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.inc.if.then26_crit_edge, label %for.inc.for.body17_crit_edge

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17

for.inc.if.then26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

for.end:                                          ; preds = %for.body17.for.end_crit_edge, %a6xx_gmu_get_arc_level.exit.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %a6xx_gmu_get_arc_level.exit.for.end_crit_edge ], [ %j.0107, %for.body17.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %11)
  %cmp24 = icmp eq i32 %j.0.lcssa, %11
  br i1 %cmp24, label %for.end.if.then26_crit_edge, label %for.cond37.preheader

for.end.if.then26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

for.cond37.preheader:                             ; preds = %for.end
  %14 = ptrtoint ptr %sec_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sec_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp38113.not = icmp eq i32 %15, 0
  br i1 %cmp38113.not, label %for.cond37.preheader.for.end55_crit_edge, label %for.cond37.preheader.for.body40_crit_edge

for.cond37.preheader.for.body40_crit_edge:        ; preds = %for.cond37.preheader
  br label %for.body40

for.cond37.preheader.for.end55_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end55

if.then26:                                        ; preds = %for.end.if.then26_crit_edge, %for.inc.if.then26_crit_edge
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.59, i32 noundef %retval.0.i) #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.60) #9
  %16 = ptrtoint ptr %pri_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pri_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp28117.not = icmp eq i32 %17, 0
  br i1 %cmp28117.not, label %if.then26.cleanup68_crit_edge, label %if.then26.for.body30_crit_edge

if.then26.for.body30_crit_edge:                   ; preds = %if.then26
  br label %for.body30

if.then26.cleanup68_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %if.then26.for.body30_crit_edge
  %j.1118 = phi i32 [ %inc34, %for.body30.for.body30_crit_edge ], [ 0, %if.then26.for.body30_crit_edge ]
  %arrayidx31 = getelementptr i16, ptr %call, i32 %j.1118
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx31, align 2
  %conv32 = zext i16 %19 to i32
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.61, i32 noundef %conv32) #9
  %inc34 = add nuw i32 %j.1118, 1
  %20 = ptrtoint ptr %pri_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pri_count, align 4
  %cmp28 = icmp ult i32 %inc34, %21
  br i1 %cmp28, label %for.body30.for.body30_crit_edge, label %for.body30.cleanup68_crit_edge

for.body30.cleanup68_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30

for.body40:                                       ; preds = %if.else.for.body40_crit_edge, %for.cond37.preheader.for.body40_crit_edge
  %sindex.0115 = phi i8 [ %spec.select, %if.else.for.body40_crit_edge ], [ 0, %for.cond37.preheader.for.body40_crit_edge ]
  %j.2114 = phi i32 [ %inc54, %if.else.for.body40_crit_edge ], [ 0, %for.cond37.preheader.for.body40_crit_edge ]
  %arrayidx41 = getelementptr i16, ptr %call5, i32 %j.2114
  %22 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx41, align 2
  %conv42 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv42)
  %cmp43.not = icmp ugt i32 %retval.0.i, %conv42
  br i1 %cmp43.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #11
  %conv46 = trunc i32 %j.2114 to i8
  br label %for.end55

if.else:                                          ; preds = %for.body40
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool48.not = icmp eq i16 %23, 0
  %conv50 = trunc i32 %j.2114 to i8
  %spec.select = select i1 %tobool48.not, i8 %sindex.0115, i8 %conv50
  %inc54 = add nuw i32 %j.2114, 1
  %exitcond124.not = icmp eq i32 %inc54, %15
  br i1 %exitcond124.not, label %if.else.for.end55_crit_edge, label %if.else.for.body40_crit_edge

if.else.for.body40_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body40

if.else.for.end55_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end55

for.end55:                                        ; preds = %if.else.for.end55_crit_edge, %if.then45, %for.cond37.preheader.for.end55_crit_edge
  %sindex.2 = phi i8 [ %conv46, %if.then45 ], [ 0, %for.cond37.preheader.for.end55_crit_edge ], [ %spec.select, %if.else.for.end55_crit_edge ]
  %idxprom = and i32 %j.0.lcssa, 255
  %arrayidx56 = getelementptr i16, ptr %call, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx56, align 2
  %conv57 = zext i16 %25 to i32
  %shl = shl nuw i32 %conv57, 16
  %conv58 = zext i8 %sindex.2 to i32
  %shl59 = shl nuw nsw i32 %conv58, 8
  %or = or i32 %shl, %shl59
  %or61 = or i32 %or, %idxprom
  %arrayidx62 = getelementptr i32, ptr %votes, i32 %i.0120
  %26 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or61, ptr %arrayidx62, align 4
  br i1 %cmp24, label %for.end55.cleanup68_crit_edge, label %for.cond

for.end55.cleanup68_crit_edge:                    ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

cleanup68:                                        ; preds = %for.end55.cleanup68_crit_edge, %for.body30.cleanup68_crit_edge, %if.then26.cleanup68_crit_edge, %for.cond.cleanup68_crit_edge, %for.cond.preheader.cleanup68_crit_edge, %if.end9.cleanup68_crit_edge, %if.then7, %if.end.cleanup68_crit_edge, %if.then
  %retval.2 = phi i32 [ %2, %if.then ], [ %5, %if.then7 ], [ -22, %if.end.cleanup68_crit_edge ], [ -22, %if.end9.cleanup68_crit_edge ], [ 0, %for.cond.preheader.cleanup68_crit_edge ], [ -22, %if.then26.cleanup68_crit_edge ], [ -22, %for.body30.cleanup68_crit_edge ], [ -22, %for.end55.cleanup68_crit_edge ], [ 0, %for.cond.cleanup68_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sec_count) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pri_count) #9
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cmd_db_read_aux_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_level(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !101, !102, !104, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !122, !124, !126, !128, !130, !132}
!llvm.named.register.sp = !{!134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 159, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @a6xx_gmu_set_freq._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @a6xx_gmu_set_freq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 299, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 311, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 326, i32 3}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 342, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 922, i32 6}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1465, i32 57}
!20 = !{ptr @a6xx_gmu_init.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1491, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1521, i32 22}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1530, i32 21}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1537, i32 30}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1547, i32 31}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1563, i32 57}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1568, i32 56}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1573, i32 38}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1598, i32 53}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 103, i32 1}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!43 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 278, i32 11}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 258, i32 11}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 285, i32 11}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 268, i32 11}
!55 = !{ptr @a6xx_gmu_oob_bits, !56, !"a6xx_gmu_oob_bits", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 256, i32 39}
!57 = distinct !{null, !58, !"rpmh_init", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 752, i32 14}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 768, i32 7}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 467, i32 3}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 475, i32 3}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 518, i32 49}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 534, i32 36}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 711, i32 4}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 741, i32 4}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 228, i32 3}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 370, i32 3}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 243, i32 3}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 500, i32 3}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 395, i32 3}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1081, i32 4}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 444, i32 4}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1404, i32 19}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1417, i32 3}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1423, i32 3}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1439, i32 3}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 66, i32 3}
!97 = !{ptr @a6xx_hfi_irq._rs, !96, !"_rs", i1 false, i1 false}
!98 = !{ptr @__func__.a6xx_hfi_irq, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @a6xx_hfi_irq._entry, !96, !"_entry", i1 false, i1 false}
!101 = !{ptr @a6xx_hfi_irq._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @a6xx_gmu_irq._rs, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 42, i32 3}
!104 = !{ptr @__func__.a6xx_gmu_irq, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @a6xx_gmu_irq._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @a6xx_gmu_irq._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @a6xx_gmu_irq._rs.46, !109, !"_rs", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 48, i32 3}
!110 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @a6xx_gmu_irq._entry.47, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @a6xx_gmu_irq._entry_ptr.49, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @a6xx_gmu_irq._rs.50, !114, !"_rs", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 51, i32 3}
!115 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @a6xx_gmu_irq._entry.51, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @a6xx_gmu_irq._entry_ptr.53, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1371, i32 3}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1338, i32 6}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1316, i32 38}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1320, i32 38}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1247, i32 29}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1269, i32 4}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1272, i32 4}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gmu.c", i32 1274, i32 5}
!134 = !{!"sp"}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{i8 0, i8 2}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{i64 2148762696, i64 2148762701, i64 2148762714, i64 2148762758, i64 2148762792, i64 2148762813}
!147 = !{i64 2158076230}
!148 = !{i64 2158076463}
!149 = !{i64 2149338782}
!150 = !{i64 2149339818}
!151 = !{i64 6757857}
!152 = !{i64 2158204314}
!153 = !{i64 2158204880}
!154 = !{!"branch_weights", i32 1, i32 2000}
!155 = !{i64 2158223497}
!156 = !{i64 2157932738}
!157 = !{i64 2158197527}
!158 = !{i64 2158198093}
!159 = !{i64 2158208510}
!160 = !{i64 2158209076}
!161 = !{i64 2158200083}
!162 = !{i64 2158200649}
!163 = !{i64 2158227242}
!164 = !{i64 2158219337}
!165 = !{i64 2158219903}
!166 = !{i64 2158248378}
!167 = !{i64 2158248944}
!168 = !{i64 2158229117}
!169 = !{i64 2158229683}
!170 = !{i64 2158231540}
!171 = !{i64 2158232106}
!172 = !{i64 2158233963}
!173 = !{i64 2158234529}
!174 = !{i64 2158236382}
!175 = !{i64 2158236948}
!176 = !{i64 2158257406, i64 2158257909, i64 2158257443, i64 2158257499, i64 2158257533, i64 2158257557, i64 2158257598, i64 2158257619, i64 2158257647, i64 2158257681}
!177 = !{i64 2148370412}
!178 = !{i64 2148284876, i64 2148284908, i64 2148284937, i64 2148284971, i64 2148285002, i64 2148285025}
!179 = !{i64 2149871177}
!180 = !{i64 2158212287}
!181 = !{i64 2158214165}
!182 = !{i64 2158214731}
!183 = !{i64 2158216688}
!184 = !{i64 2158217254}
!185 = !{i64 2158211159}
!186 = !{i64 2158211725}
!187 = !{!"auto-init"}
