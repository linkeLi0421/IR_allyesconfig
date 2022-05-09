; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/msm_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.92 = type { i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.msm_rbmemptrs = type { i32, i32, [64 x %struct.msm_gpu_submit_stats], i64 }
%struct.msm_gpu_submit_stats = type { i64, i64, i64, i64 }
%struct.msm_gpu_perfcntr = type { i32, i32, i32, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.88, i64, i64, i32, %struct.kref, i32 }
%union.anon.88 = type { i64 }
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
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.109, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.109 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.msm_gpu_submitqueue = type { i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.idr, %struct.mutex, %struct.kref, ptr }
%struct.msm_file_private = type { %struct.rwlock_t, %struct.list_head, i32, ptr, %struct.kref, i32, [12 x ptr] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.msm_gpu_config = type { ptr, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msm_gpu_state = type { %struct.kref, %struct.timespec64, [4 x %struct.anon.97], i32, ptr, i32, ptr, ptr, %struct.msm_gpu_fault_info, i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.anon.97 = type { i64, i32, i32, i32, i32, ptr, i32, i8 }
%struct.anon.94 = type { i32, i32, i64, i32, i32, i32, ptr }
%struct.msm_gpu_state_bo = type { i64, i32, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.drm_print_iterator = type { ptr, i32, i32, i32 }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/msm/msm_gpu.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-worker\00", [22 x i8] zeroinitializer }, align 32
@msm_gpu_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&gpu->active_lock\00", [46 x i8] zeroinitializer }, align 32
@msm_gpu_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&gpu->lock\00", [21 x i8] zeroinitializer }, align 32
@msm_gpu_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&gpu->retire_event\00", [45 x i8] zeroinitializer }, align 32
@msm_gpu_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&gpu->hangcheck_timer)\00", [40 x i8] zeroinitializer }, align 32
@msm_gpu_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&gpu->perf_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* failed to get irq: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to request IRQ%u: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ebi1_clk: %p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpu_reg: %p\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddcx\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu_cx: %p\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: no IOMMU, fallback to VRAM carveout!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* could not allocate memptrs: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"memptrs\00", [24 x i8] zeroinitializer }, align 32
@msm_gpu_init.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Only creating %zu ringbuffers\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* could not create ringbuffer %d: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_msm_gpu_resume = external dso_local global %struct.tracepoint, align 4
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/msm/msm_gpu_trace.h\00", [60 x i8] zeroinitializer }, align 32
@trace_msm_gpu_resume.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* failed to enable 'gpu_reg': %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* failed to enable 'gpu_cx': %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__tracepoint_msm_gpu_suspend = external dso_local global %struct.tracepoint, align 4
@trace_msm_gpu_suspend.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tracepoint_msm_gpu_submit_retired = external dso_local global %struct.tracepoint, align 4
@trace_msm_gpu_submit_retired.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* %s: hangcheck recover!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* %s: offending task: %s (%s)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"offending task: %s (%s)\00", [40 x i8] zeroinitializer }, align 32
@rd_full = external dso_local local_unnamed_addr global i8, align 1
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"---\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kernel: 5.17.0\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"module: msm\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"time: %lld.%09ld\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"comm: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cmdline: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"*ERROR* %s: hangcheck detected gpu lockup rb %d!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* %s:     completed fence: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* %s:     submitted fence: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rbbmtimer\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 101, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 153, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 841, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 851, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 852, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 853, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 858, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 860, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 874, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 881, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 889, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 890, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 895, i32 48 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 896, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 900, i32 47 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 901, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 914, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 927, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 931, i32 43 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 934, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 945, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [39 x i8] c"../drivers/gpu/drm/msm/msm_gpu_trace.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 170, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 108, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 31, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 39, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 366, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 384, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 388, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 205, i32 17 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 206, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 207, i32 17 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 208, i32 17 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 211, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 213, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 515, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 517, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 519, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 794, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private constant [33 x i8] c"../drivers/gpu/drm/msm/msm_gpu.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 797, i32 19 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @msm_gpu_init.__key, ptr @.str.3, ptr @msm_gpu_init.__key.4, ptr @.str.5, ptr @msm_gpu_init.__key.6, ptr @.str.7, ptr @msm_gpu_init.__key.8, ptr @.str.9, ptr @msm_gpu_init.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpu_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpu_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpu_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpu_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpu_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gpu_pm_resume(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %1) #8
  tail call fastcc void @trace_msm_gpu_resume()
  %dev1.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %gpu_reg.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 25
  %4 = ptrtoint ptr %gpu_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpu_reg.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end6.i_crit_edge, label %if.then.i

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @regulator_enable(ptr noundef nonnull %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then4.i

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.30, i32 noundef %call.i) #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  %gpu_cx.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 26
  %8 = ptrtoint ptr %gpu_cx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpu_cx.i, align 8
  %tobool7.not.i = icmp eq ptr %9, null
  br i1 %tobool7.not.i, label %if.end6.i.if.end_crit_edge, label %if.then8.i

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then8.i:                                       ; preds = %if.end6.i
  %call10.i = tail call i32 @regulator_enable(ptr noundef nonnull %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then8.i.if.end_crit_edge, label %if.then12.i

if.then8.i.if.end_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then12.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev13.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.31, i32 noundef %call10.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.then8.i.if.end_crit_edge, %if.end6.i.if.end_crit_edge
  %core_clk.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 30
  %12 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core_clk.i, align 8
  %tobool.not.i19 = icmp eq ptr %13, null
  br i1 %tobool.not.i19, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %fast_rate.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 32
  %14 = ptrtoint ptr %fast_rate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fast_rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i21

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i21:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i20 = tail call i32 @clk_set_rate(ptr noundef nonnull %13, i32 noundef %15) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i21, %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %rbbmtimer_clk.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 31
  %16 = ptrtoint ptr %rbbmtimer_clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rbbmtimer_clk.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 @clk_set_rate(ptr noundef nonnull %17, i32 noundef 19200000) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %nr_clocks.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 28
  %18 = ptrtoint ptr %nr_clocks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_clocks.i, align 8
  %grp_clks.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 27
  %20 = ptrtoint ptr %grp_clks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %grp_clks.i, align 4
  %call.i.i = tail call i32 @clk_bulk_prepare(i32 noundef %19, ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end8.i
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef %19, ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef %19, ptr noundef %21) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  %ebi1_clk.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 29
  %22 = ptrtoint ptr %ebi1_clk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ebi1_clk.i, align 4
  %call.i.i22 = tail call i32 @clk_prepare(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool.not.i.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %tobool.not.i.i23, label %if.end.i.i26, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i26:                                     ; preds = %if.end4
  %call1.i.i24 = tail call i32 @clk_enable(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i24)
  %tobool2.not.i.i25 = icmp eq i32 %call1.i.i24, 0
  br i1 %tobool2.not.i.i25, label %if.end8, label %if.then3.i.i27

if.then3.i.i27:                                   ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %23) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msm_devfreq_resume(ptr noundef %gpu) #8
  %needs_hw_init = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 20
  %24 = ptrtoint ptr %needs_hw_init to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %needs_hw_init, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then3.i.i27, %if.end4.cleanup_crit_edge, %if.then3.i.i, %if.end8.i.cleanup_crit_edge, %if.then12.i, %if.then4.i
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call.i, %if.then4.i ], [ %call10.i, %if.then12.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end8.i.cleanup_crit_edge ], [ %call1.i.i24, %if.then3.i.i27 ], [ %call.i.i22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_gpu_resume() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_resume, i32 0, i32 1), ptr blockaddress(@trace_msm_gpu_resume, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !106

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !107

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !108
  %call42 = tail call i32 @__traceiter_msm_gpu_resume(ptr noundef null, i32 noundef 0) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !109
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !107

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_resume, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_resume, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_msm_gpu_resume.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_msm_gpu_resume.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 180, ptr noundef nonnull @.str.28) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !111
  %31 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
declare dso_local void @msm_devfreq_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gpu_pm_suspend(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %1) #8
  tail call fastcc void @trace_msm_gpu_suspend()
  tail call void @msm_devfreq_suspend(ptr noundef %gpu) #8
  %ebi1_clk.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 29
  %2 = ptrtoint ptr %ebi1_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ebi1_clk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %nr_clocks.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 28
  %4 = ptrtoint ptr %nr_clocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_clocks.i, align 8
  %grp_clks.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 27
  %6 = ptrtoint ptr %grp_clks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grp_clks.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %5, ptr noundef %7) #8
  tail call void @clk_bulk_unprepare(i32 noundef %5, ptr noundef %7) #8
  %core_clk.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 30
  %8 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_clk.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @clk_set_rate(ptr noundef nonnull %9, i32 noundef 27000000) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %rbbmtimer_clk.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 31
  %10 = ptrtoint ptr %rbbmtimer_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rbbmtimer_clk.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.disable_clk.exit_crit_edge, label %if.then3.i

if.end.i.disable_clk.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_clk.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 @clk_set_rate(ptr noundef nonnull %11, i32 noundef 0) #8
  br label %disable_clk.exit

disable_clk.exit:                                 ; preds = %if.then3.i, %if.end.i.disable_clk.exit_crit_edge
  %gpu_cx.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 26
  %12 = ptrtoint ptr %gpu_cx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpu_cx.i, align 8
  %tobool.not.i19 = icmp eq ptr %13, null
  br i1 %tobool.not.i19, label %disable_clk.exit.if.end.i23_crit_edge, label %if.then.i21

disable_clk.exit.if.end.i23_crit_edge:            ; preds = %disable_clk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i23

if.then.i21:                                      ; preds = %disable_clk.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i20 = tail call i32 @regulator_disable(ptr noundef nonnull %13) #8
  br label %if.end.i23

if.end.i23:                                       ; preds = %if.then.i21, %disable_clk.exit.if.end.i23_crit_edge
  %gpu_reg.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 25
  %14 = ptrtoint ptr %gpu_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpu_reg.i, align 4
  %tobool2.not.i22 = icmp eq ptr %15, null
  br i1 %tobool2.not.i22, label %if.end.i23.disable_pwrrail.exit_crit_edge, label %if.then3.i25

if.end.i23.disable_pwrrail.exit_crit_edge:        ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_pwrrail.exit

if.then3.i25:                                     ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i24 = tail call i32 @regulator_disable(ptr noundef nonnull %15) #8
  br label %disable_pwrrail.exit

disable_pwrrail.exit:                             ; preds = %if.then3.i25, %if.end.i23.disable_pwrrail.exit_crit_edge
  %suspend_count = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 42
  %16 = ptrtoint ptr %suspend_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %suspend_count, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %suspend_count, align 8
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_gpu_suspend() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_suspend, i32 0, i32 1), ptr blockaddress(@trace_msm_gpu_suspend, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !106

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !107

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
  %call42 = tail call i32 @__traceiter_msm_gpu_suspend(ptr noundef null, i32 noundef 0) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !107

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_suspend, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_suspend, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_msm_gpu_suspend.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_msm_gpu_suspend.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 167, ptr noundef nonnull @.str.28) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !111
  %31 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gpu_hw_init(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 17
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #8
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !107

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 153, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %needs_hw_init = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 20
  %0 = ptrtoint ptr %needs_hw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %needs_hw_init, align 8, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool20.not = icmp eq i8 %1, 0
  br i1 %tobool20.not, label %if.end.cleanup_crit_edge, label %if.end22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %irq = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 23
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #8
  %funcs = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %hw_init = getelementptr inbounds %struct.msm_gpu_funcs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hw_init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_init, align 4
  %call23 = tail call i32 %7(ptr noundef %gpu) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end22.if.end27_crit_edge

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %needs_hw_init to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %needs_hw_init, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end27 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gpu_perfcntr_start(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  %current_cntrs.i = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %perf_lock = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %perf_lock) #8
  %nr_rings.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %2 = ptrtoint ptr %nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_rings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.i = icmp sgt i32 %3, 0
  br i1 %cmp6.i, label %for.body.i.preheader, label %entry.msm_gpu_active.exit_crit_edge

entry.msm_gpu_active.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_active.exit

for.body.i.preheader:                             ; preds = %entry
  %arrayidx.i23 = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 0
  %4 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i23, align 4
  %seqno.i24 = getelementptr inbounds %struct.msm_ringbuffer, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %seqno.i24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seqno.i24, align 8
  %memptrs.i25 = getelementptr inbounds %struct.msm_ringbuffer, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %memptrs.i25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memptrs.i25, align 8
  %fence.i26 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %fence.i26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %fence.i26, align 4
  %sub.i.i27 = sub i32 %7, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i27)
  %cmp.i.i28 = icmp sgt i32 %sub.i.i27, 0
  br i1 %cmp.i.i28, label %for.body.i.preheader.msm_gpu_active.exit_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.msm_gpu_active.exit_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_active.exit

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.07.i29 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.07.i29, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %3)
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.msm_gpu_active.exit.loopexit_crit_edge, label %for.body.i

for.cond.i.msm_gpu_active.exit.loopexit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_active.exit.loopexit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 %inc.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %seqno.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seqno.i, align 8
  %memptrs.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %13, i32 0, i32 13
  %16 = ptrtoint ptr %memptrs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memptrs.i, align 8
  %fence.i = getelementptr inbounds %struct.msm_rbmemptrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %fence.i, align 4
  %sub.i.i = sub i32 %15, %19
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.msm_gpu_active.exit.loopexit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.body.i.msm_gpu_active.exit.loopexit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_active.exit.loopexit

msm_gpu_active.exit.loopexit:                     ; preds = %for.body.i.msm_gpu_active.exit.loopexit_crit_edge, %for.cond.i.msm_gpu_active.exit.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %3)
  %cmp.i.le = icmp slt i32 %inc.i, %3
  br label %msm_gpu_active.exit

msm_gpu_active.exit:                              ; preds = %msm_gpu_active.exit.loopexit, %for.body.i.preheader.msm_gpu_active.exit_crit_edge, %entry.msm_gpu_active.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ false, %entry.msm_gpu_active.exit_crit_edge ], [ true, %for.body.i.preheader.msm_gpu_active.exit_crit_edge ], [ %cmp.i.le, %msm_gpu_active.exit.loopexit ]
  %last_sample = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 7
  %frombool = zext i1 %cmp.lcssa.i to i8
  %20 = ptrtoint ptr %last_sample to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %last_sample, align 8
  %call7 = tail call i64 @ktime_get() #8
  %time = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call7, ptr %time, align 8
  %totaltime = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 8
  %22 = ptrtoint ptr %totaltime to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %totaltime, align 8
  %activetime = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 9
  %23 = ptrtoint ptr %activetime to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %activetime, align 4
  %perfcntr_active = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 6
  %24 = ptrtoint ptr %perfcntr_active to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %perfcntr_active, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %current_cntrs.i) #8
  %num_perfcntrs.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 12
  %25 = call ptr @memset(ptr %current_cntrs.i, i32 255, i32 20)
  %26 = ptrtoint ptr %num_perfcntrs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_perfcntrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp244.not.i = icmp eq i32 %27, 0
  br i1 %cmp244.not.i, label %msm_gpu_active.exit.update_hw_cntrs.exit_crit_edge, label %for.body.lr.ph.i

msm_gpu_active.exit.update_hw_cntrs.exit_crit_edge: ; preds = %msm_gpu_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_hw_cntrs.exit

for.body.lr.ph.i:                                 ; preds = %msm_gpu_active.exit
  %perfcntrs.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 11
  %mmio.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  br label %for.body.i21

for.cond4.preheader.i:                            ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp1548.not.i = icmp eq i32 %36, 0
  br i1 %cmp1548.not.i, label %for.cond4.preheader.i.update_hw_cntrs.exit_crit_edge, label %for.cond4.preheader.i.for.body16.i_crit_edge

for.cond4.preheader.i.for.body16.i_crit_edge:     ; preds = %for.cond4.preheader.i
  br label %for.body16.i

for.cond4.preheader.i.update_hw_cntrs.exit_crit_edge: ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_hw_cntrs.exit

for.body.i21:                                     ; preds = %for.body.i21.for.body.i21_crit_edge, %for.body.lr.ph.i
  %i.045.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i20, %for.body.i21.for.body.i21_crit_edge ]
  %28 = ptrtoint ptr %perfcntrs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %perfcntrs.i, align 4
  %sample_reg.i = getelementptr %struct.msm_gpu_perfcntr, ptr %29, i32 %i.045.i, i32 1
  %30 = ptrtoint ptr %sample_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sample_reg.i, align 4
  %32 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i.i, align 8
  %shl.i.i = shl i32 %31, 2
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %shl.i.i
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #8
  %arrayidx3.i = getelementptr [5 x i32], ptr %current_cntrs.i, i32 0, i32 %i.045.i
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i.i, ptr %arrayidx3.i, align 4
  %inc.i20 = add nuw i32 %i.045.i, 1
  %35 = ptrtoint ptr %num_perfcntrs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_perfcntrs.i, align 8
  %cmp2.i = icmp ult i32 %inc.i20, %36
  br i1 %cmp2.i, label %for.body.i21.for.body.i21_crit_edge, label %for.cond4.preheader.i

for.body.i21.for.body.i21_crit_edge:              ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i21

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.cond4.preheader.i.for.body16.i_crit_edge
  %i.249.i = phi i32 [ %inc21.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body16.i_crit_edge ]
  %arrayidx17.i = getelementptr [5 x i32], ptr %current_cntrs.i, i32 0, i32 %i.249.i
  %37 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx17.i, align 4
  %arrayidx19.i = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 10, i32 %i.249.i
  %39 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx19.i, align 4
  %inc21.i = add nuw i32 %i.249.i, 1
  %40 = ptrtoint ptr %num_perfcntrs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_perfcntrs.i, align 8
  %cmp15.i = icmp ult i32 %inc21.i, %41
  br i1 %cmp15.i, label %for.body16.i.for.body16.i_crit_edge, label %for.body16.i.update_hw_cntrs.exit_crit_edge

for.body16.i.update_hw_cntrs.exit_crit_edge:      ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_hw_cntrs.exit

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16.i

update_hw_cntrs.exit:                             ; preds = %for.body16.i.update_hw_cntrs.exit_crit_edge, %for.cond4.preheader.i.update_hw_cntrs.exit_crit_edge, %msm_gpu_active.exit.update_hw_cntrs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %current_cntrs.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %perf_lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gpu_perfcntr_stop(ptr nocapture noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %perfcntr_active = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 6
  %0 = ptrtoint ptr %perfcntr_active to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %perfcntr_active, align 4
  %pdev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gpu_perfcntr_sample(ptr noundef %gpu, ptr nocapture noundef writeonly %activetime, ptr nocapture noundef writeonly %totaltime, i32 noundef %ncntrs, ptr nocapture noundef writeonly %cntrs) local_unnamed_addr #0 align 64 {
entry:
  %current_cntrs.i = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %perf_lock = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %perf_lock) #8
  %perfcntr_active = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 6
  %0 = ptrtoint ptr %perfcntr_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %perfcntr_active, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %activetime5 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 9
  %2 = ptrtoint ptr %activetime5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %activetime5, align 4
  %4 = ptrtoint ptr %activetime to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %activetime, align 4
  %totaltime6 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 8
  %5 = ptrtoint ptr %totaltime6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %totaltime6, align 8
  %7 = ptrtoint ptr %totaltime to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %totaltime, align 4
  store i32 0, ptr %totaltime6, align 8
  store i32 0, ptr %activetime5, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %current_cntrs.i) #8
  %num_perfcntrs.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 12
  %8 = call ptr @memset(ptr %current_cntrs.i, i32 255, i32 20)
  %9 = ptrtoint ptr %num_perfcntrs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_perfcntrs.i, align 8
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %ncntrs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp244.not.i = icmp eq i32 %10, 0
  br i1 %cmp244.not.i, label %if.end.for.cond4.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end.for.cond4.preheader.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond4.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %perfcntrs.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 11
  %mmio.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  br label %for.body.i

for.cond4.preheader.i:                            ; preds = %for.body.i.for.cond4.preheader.i_crit_edge, %if.end.for.cond4.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp546.i = icmp sgt i32 %11, 0
  br i1 %cmp546.i, label %for.cond4.preheader.i.for.body6.i_crit_edge, label %for.cond4.preheader.i.for.cond13.preheader.i_crit_edge

for.cond4.preheader.i.for.cond13.preheader.i_crit_edge: ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond13.preheader.i

for.cond4.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body6.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.045.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %perfcntrs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %perfcntrs.i, align 4
  %sample_reg.i = getelementptr %struct.msm_gpu_perfcntr, ptr %13, i32 %i.045.i, i32 1
  %14 = ptrtoint ptr %sample_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sample_reg.i, align 4
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 8
  %shl.i.i = shl i32 %15, 2
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %shl.i.i
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #8
  %arrayidx3.i = getelementptr [5 x i32], ptr %current_cntrs.i, i32 0, i32 %i.045.i
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i.i, ptr %arrayidx3.i, align 4
  %inc.i = add nuw i32 %i.045.i, 1
  %19 = ptrtoint ptr %num_perfcntrs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_perfcntrs.i, align 8
  %cmp2.i = icmp ult i32 %inc.i, %20
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond4.preheader.i_crit_edge

for.body.i.for.cond4.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond4.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond13.preheader.i:                           ; preds = %for.body6.i.for.cond13.preheader.i_crit_edge, %for.cond4.preheader.i.for.cond13.preheader.i_crit_edge
  %21 = ptrtoint ptr %num_perfcntrs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_perfcntrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1548.not.i = icmp eq i32 %22, 0
  br i1 %cmp1548.not.i, label %for.cond13.preheader.i.update_hw_cntrs.exit_crit_edge, label %for.cond13.preheader.i.for.body16.i_crit_edge

for.cond13.preheader.i.for.body16.i_crit_edge:    ; preds = %for.cond13.preheader.i
  br label %for.body16.i

for.cond13.preheader.i.update_hw_cntrs.exit_crit_edge: ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_hw_cntrs.exit

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.cond4.preheader.i.for.body6.i_crit_edge
  %i.147.i = phi i32 [ %inc11.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  %arrayidx7.i = getelementptr [5 x i32], ptr %current_cntrs.i, i32 0, i32 %i.147.i
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 10, i32 %i.147.i
  %25 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx8.i, align 4
  %sub.i = sub i32 %24, %26
  %arrayidx9.i = getelementptr i32, ptr %cntrs, i32 %i.147.i
  %27 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.i, ptr %arrayidx9.i, align 4
  %inc11.i = add nuw nsw i32 %i.147.i, 1
  %exitcond.not.i = icmp eq i32 %inc11.i, %11
  br i1 %exitcond.not.i, label %for.body6.i.for.cond13.preheader.i_crit_edge, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.i

for.body6.i.for.cond13.preheader.i_crit_edge:     ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond13.preheader.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.cond13.preheader.i.for.body16.i_crit_edge
  %i.249.i = phi i32 [ %inc21.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.cond13.preheader.i.for.body16.i_crit_edge ]
  %arrayidx17.i = getelementptr [5 x i32], ptr %current_cntrs.i, i32 0, i32 %i.249.i
  %28 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx17.i, align 4
  %arrayidx19.i = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 10, i32 %i.249.i
  %30 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx19.i, align 4
  %inc21.i = add nuw i32 %i.249.i, 1
  %31 = ptrtoint ptr %num_perfcntrs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_perfcntrs.i, align 8
  %cmp15.i = icmp ult i32 %inc21.i, %32
  br i1 %cmp15.i, label %for.body16.i.for.body16.i_crit_edge, label %for.body16.i.update_hw_cntrs.exit_crit_edge

for.body16.i.update_hw_cntrs.exit_crit_edge:      ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_hw_cntrs.exit

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16.i

update_hw_cntrs.exit:                             ; preds = %for.body16.i.update_hw_cntrs.exit_crit_edge, %for.cond13.preheader.i.update_hw_cntrs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %current_cntrs.i) #8
  br label %out

out:                                              ; preds = %update_hw_cntrs.exit, %entry.out_crit_edge
  %ret.0 = phi i32 [ %11, %update_hw_cntrs.exit ], [ -22, %entry.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %perf_lock, i32 noundef %call2) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gpu_retire(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %0 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12 = icmp sgt i32 %1, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %update_fences.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %update_fences.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 %i.013
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %memptrs = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %memptrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %memptrs, align 8
  %fence = getelementptr inbounds %struct.msm_rbmemptrs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %fence, align 4
  %submit_lock.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock.i) #8
  %submits.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %submits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn1.i = load ptr, ptr %submits.i, align 8
  %cmp7.not2.i = icmp eq ptr %.pn1.i, %submits.i
  br i1 %cmp7.not2.i, label %for.body.update_fences.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.update_fences.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_fences.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %.pn3.i = phi ptr [ %.pn.i, %if.end.i.for.body.i_crit_edge ], [ %.pn1.i, %for.body.for.body.i_crit_edge ]
  %seqno.i = getelementptr i8, ptr %.pn3.i, i32 72
  %9 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seqno.i, align 8
  %sub.i.i = sub i32 %10, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.update_fences.exit_crit_edge, label %if.end.i

for.body.i.update_fences.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_fences.exit

if.end.i:                                         ; preds = %for.body.i
  %ring10.i = getelementptr i8, ptr %.pn3.i, i32 100
  %11 = ptrtoint ptr %ring10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ring10.i, align 4
  %fctx.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %fctx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fctx.i, align 8
  %hw_fence.i = getelementptr i8, ptr %.pn3.i, i32 76
  %15 = ptrtoint ptr %hw_fence.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_fence.i, align 4
  %seqno11.i = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %seqno11.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %seqno11.i, align 8
  %conv12.i = trunc i64 %18 to i32
  tail call void @msm_update_fence(ptr noundef %14, i32 noundef %conv12.i) #8
  %19 = ptrtoint ptr %hw_fence.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_fence.i, align 4
  %call14.i = tail call i32 @dma_fence_signal(ptr noundef %20) #8
  %21 = ptrtoint ptr %.pn3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load ptr, ptr %.pn3.i, align 8
  %cmp7.not.i = icmp eq ptr %.pn.i, %submits.i
  br i1 %cmp7.not.i, label %if.end.i.update_fences.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.update_fences.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_fences.exit

update_fences.exit:                               ; preds = %if.end.i.update_fences.exit_crit_edge, %for.body.i.update_fences.exit_crit_edge, %for.body.update_fences.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock.i, i32 noundef %call2.i) #8
  %inc = add nuw nsw i32 %i.013, 1
  %22 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_rings, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %update_fences.exit.for.body_crit_edge, label %update_fences.exit.for.end_crit_edge

update_fences.exit.for.end_crit_edge:             ; preds = %update_fences.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

update_fences.exit.for.body_crit_edge:            ; preds = %update_fences.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %update_fences.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %worker = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 39
  %24 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %worker, align 8
  %retire_work = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 38
  %call = tail call zeroext i1 @kthread_queue_work(ptr noundef %25, ptr noundef %retire_work) #8
  tail call fastcc void @update_sw_cntrs(ptr noundef %gpu)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_sw_cntrs(ptr noundef %gpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %perf_lock = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %perf_lock) #8
  %perfcntr_active = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 6
  %0 = ptrtoint ptr %perfcntr_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %perfcntr_active, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %call5 = tail call i64 @ktime_get() #8
  %last_sample = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 7
  %time6 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %time6 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %time6, align 8
  %sub = sub i64 %call5, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #8
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #11, !srcloc !115
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !116
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %conv8 = trunc i64 %cond213.i.i to i32
  %totaltime = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 8
  %7 = ptrtoint ptr %totaltime to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %totaltime, align 8
  %add = add i32 %8, %conv8
  store i32 %add, ptr %totaltime, align 8
  %9 = ptrtoint ptr %last_sample to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %last_sample, align 8, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %activetime = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 9
  %11 = ptrtoint ptr %activetime to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %activetime, align 4
  %add12 = add i32 %12, %conv8
  store i32 %add12, ptr %activetime, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %nr_rings.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %13 = ptrtoint ptr %nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_rings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp6.i = icmp sgt i32 %14, 0
  br i1 %cmp6.i, label %for.body.i.preheader, label %if.end13.msm_gpu_active.exit_crit_edge

if.end13.msm_gpu_active.exit_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_active.exit

for.body.i.preheader:                             ; preds = %if.end13
  %arrayidx.i31 = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 0
  %15 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i31, align 4
  %seqno.i32 = getelementptr inbounds %struct.msm_ringbuffer, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %seqno.i32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seqno.i32, align 8
  %memptrs.i33 = getelementptr inbounds %struct.msm_ringbuffer, ptr %16, i32 0, i32 13
  %19 = ptrtoint ptr %memptrs.i33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %memptrs.i33, align 8
  %fence.i34 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %fence.i34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %fence.i34, align 4
  %sub.i.i35 = sub i32 %18, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i35)
  %cmp.i.i36 = icmp sgt i32 %sub.i.i35, 0
  br i1 %cmp.i.i36, label %for.body.i.preheader.msm_gpu_active.exit_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.msm_gpu_active.exit_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_active.exit

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.07.i37 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.07.i37, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %14)
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.cond.i.msm_gpu_active.exit.loopexit_crit_edge, label %for.body.i

for.cond.i.msm_gpu_active.exit.loopexit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_active.exit.loopexit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 %inc.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %seqno.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %seqno.i, align 8
  %memptrs.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %24, i32 0, i32 13
  %27 = ptrtoint ptr %memptrs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %memptrs.i, align 8
  %fence.i = getelementptr inbounds %struct.msm_rbmemptrs, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %fence.i, align 4
  %sub.i.i = sub i32 %26, %30
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.msm_gpu_active.exit.loopexit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.body.i.msm_gpu_active.exit.loopexit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_active.exit.loopexit

msm_gpu_active.exit.loopexit:                     ; preds = %for.body.i.msm_gpu_active.exit.loopexit_crit_edge, %for.cond.i.msm_gpu_active.exit.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %14)
  %cmp.i.le = icmp slt i32 %inc.i, %14
  br label %msm_gpu_active.exit

msm_gpu_active.exit:                              ; preds = %msm_gpu_active.exit.loopexit, %for.body.i.preheader.msm_gpu_active.exit_crit_edge, %if.end13.msm_gpu_active.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ false, %if.end13.msm_gpu_active.exit_crit_edge ], [ true, %for.body.i.preheader.msm_gpu_active.exit_crit_edge ], [ %cmp.i.le, %msm_gpu_active.exit.loopexit ]
  %frombool = zext i1 %cmp.lcssa.i to i8
  %31 = ptrtoint ptr %last_sample to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %last_sample, align 8
  %32 = ptrtoint ptr %time6 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %call5, ptr %time6, align 8
  br label %out

out:                                              ; preds = %msm_gpu_active.exit, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %perf_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gpu_submit(ptr noundef %gpu, ptr noundef %submit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %ring2 = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 16
  %4 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring2, align 4
  %lock = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 17
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #8
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !107

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 737, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pdev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev22 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev22, i32 noundef 4) #8
  %call.i67 = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #8
  br i1 %call.i67, label %if.end.if.end.i_crit_edge, label %do.end.i, !prof !107

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 153, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %needs_hw_init.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 20
  %8 = ptrtoint ptr %needs_hw_init.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %needs_hw_init.i, align 8, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool20.not.i = icmp eq i8 %9, 0
  br i1 %tobool20.not.i, label %if.end.i.msm_gpu_hw_init.exit_crit_edge, label %if.end22.i

if.end.i.msm_gpu_hw_init.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_hw_init.exit

if.end22.i:                                       ; preds = %if.end.i
  %irq.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 23
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %11) #8
  %funcs.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  %12 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs.i, align 4
  %hw_init.i = getelementptr inbounds %struct.msm_gpu_funcs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %hw_init.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_init.i, align 4
  %call23.i = tail call i32 %15(ptr noundef %gpu) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end22.i.if.end27.i_crit_edge

if.end22.i.if.end27.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %needs_hw_init.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %needs_hw_init.i, align 8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end27.i_crit_edge
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %18) #8
  br label %msm_gpu_hw_init.exit

msm_gpu_hw_init.exit:                             ; preds = %if.end27.i, %if.end.i.msm_gpu_hw_init.exit_crit_edge
  %seqno = getelementptr inbounds %struct.msm_ringbuffer, ptr %5, i32 0, i32 11
  %19 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seqno, align 8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %seqno, align 8
  %seqno25 = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 7
  %21 = ptrtoint ptr %seqno25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc, ptr %seqno25, align 8
  %rd = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rd, align 4
  tail call void (ptr, ptr, ptr, ...) @msm_rd_dump_submit(ptr noundef %23, ptr noundef %submit, ptr noundef null) #8
  tail call fastcc void @update_sw_cntrs(ptr noundef %gpu)
  %ref.i = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #8
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #8, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %msm_gpu_hw_init.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !118

msm_gpu_hw_init.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %msm_gpu_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %msm_gpu_hw_init.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.msm_gem_submit_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !107

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.msm_gem_submit_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gem_submit_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %msm_gpu_hw_init.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %msm_gpu_hw_init.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %msm_gem_submit_get.exit

msm_gem_submit_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.msm_gem_submit_get.exit_crit_edge
  %submit_lock = getelementptr inbounds %struct.msm_ringbuffer, ptr %5, i32 0, i32 9
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock) #8
  %node = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 5
  %submits = getelementptr inbounds %struct.msm_ringbuffer, ptr %5, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %5, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %27, ptr noundef %submits) #8
  br i1 %call.i.i, label %if.end.i.i, label %msm_gem_submit_get.exit.list_add_tail.exit_crit_edge

msm_gem_submit_get.exit.list_add_tail.exit_crit_edge: ; preds = %msm_gem_submit_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %msm_gem_submit_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %node, ptr %prev.i, align 4
  %29 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %submits, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %node, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %msm_gem_submit_get.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock, i32 noundef %call30) #8
  %active_lock = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %active_lock, i32 noundef 0) #8
  %active_submits = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 18
  %32 = ptrtoint ptr %active_submits to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %active_submits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool36.not = icmp eq i32 %33, 0
  br i1 %tobool36.not, label %if.then37, label %list_add_tail.exit.if.end38_crit_edge

list_add_tail.exit.if.end38_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then37:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msm_devfreq_active(ptr noundef %gpu) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %list_add_tail.exit.if.end38_crit_edge
  %34 = ptrtoint ptr %active_submits to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %active_submits, align 8
  %inc40 = add i32 %35, 1
  store i32 %inc40, ptr %active_submits, align 8
  tail call void @mutex_unlock(ptr noundef %active_lock) #8
  %funcs = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  %36 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs, align 4
  %submit42 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %submit42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %submit42, align 4
  tail call void %39(ptr noundef %gpu, ptr noundef %submit) #8
  %queue = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 11
  %40 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %queue, align 8
  %ctx = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx, align 4
  %seqno43 = getelementptr inbounds %struct.msm_file_private, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %seqno43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %seqno43, align 4
  %cur_ctx_seqno = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 15
  %46 = ptrtoint ptr %cur_ctx_seqno to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %cur_ctx_seqno, align 8
  %47 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %hangcheck_period.i = getelementptr inbounds %struct.msm_drm_private, ptr %50, i32 0, i32 39
  %52 = ptrtoint ptr %hangcheck_period.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hangcheck_period.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %53) #8
  %hangcheck_timer.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 33
  %add.i = add i32 %call2.i.i, %51
  %call1.i = tail call i32 @round_jiffies_up(i32 noundef %add.i) #8
  %call2.i = tail call i32 @mod_timer(ptr noundef %hangcheck_timer.i, i32 noundef %call1.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_rd_dump_submit(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_devfreq_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_gpu_create_private_address_space(ptr noundef %gpu, ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gpu, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %funcs = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %create_private_address_space = getelementptr inbounds %struct.msm_gpu_funcs, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %create_private_address_space to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %create_private_address_space, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.then12_crit_edge, label %if.then2

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then2:                                         ; preds = %if.end
  %call = tail call ptr %3(ptr noundef nonnull %gpu) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2.if.then12_crit_edge, label %if.then6

if.then2.if.then12_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then6:                                         ; preds = %if.then2
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 78
  %4 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thread_pid.i, align 16
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then6.if.end10_crit_edge, label %if.then.i

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then.i:                                        ; preds = %if.then6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #8, !srcloc !117
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !118

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end10_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !107

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end10_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef %.sink.i.i.i.i) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end10_crit_edge, %if.then6.if.end10_crit_edge
  %pid = getelementptr inbounds %struct.msm_gem_address_space, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %pid, align 4
  %tobool.not.i23 = icmp eq ptr %call, null
  %spec.select.i = or i1 %tobool.not.i23, %cmp.i
  br i1 %spec.select.i, label %if.end10.if.then12_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.then2.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %aspace13 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %9 = ptrtoint ptr %aspace13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aspace13, align 8
  %call14 = tail call ptr @msm_gem_address_space_get(ptr noundef %10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call14, %if.then12 ], [ %call, %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gpu_init(ptr noundef %drm, ptr noundef %pdev, ptr noundef %gpu, ptr noundef %funcs, ptr noundef %name, ptr nocapture noundef readonly %config) local_unnamed_addr #0 align 64 {
entry:
  %memptrs_iova = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_rings1 = getelementptr inbounds %struct.msm_gpu_config, ptr %config, i32 0, i32 1
  %0 = ptrtoint ptr %nr_rings1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_rings1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %memptrs_iova) #8
  %2 = ptrtoint ptr %memptrs_iova to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %memptrs_iova, align 8, !annotation !119
  %num_perfcntrs = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 12
  %3 = ptrtoint ptr %num_perfcntrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_perfcntrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp = icmp ugt i32 %4, 5
  br i1 %cmp, label %do.end, label %entry.if.end23_crit_edge, !prof !118

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 834, i32 noundef 9, ptr noundef null) #8
  %5 = ptrtoint ptr %num_perfcntrs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %num_perfcntrs, align 8
  br label %if.end23

if.end23:                                         ; preds = %do.end, %entry.if.end23_crit_edge
  %dev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %drm, ptr %dev, align 4
  %funcs24 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  %7 = ptrtoint ptr %funcs24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %funcs, ptr %funcs24, align 4
  %8 = ptrtoint ptr %gpu to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %name, ptr %gpu, align 8
  %call = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %name) #8
  %worker = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 39
  %9 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %worker, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call to i32
  %11 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %worker, align 8
  br label %fail

if.end33:                                         ; preds = %if.end23
  %task = getelementptr inbounds %struct.kthread_worker, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 4
  tail call void @sched_set_fifo_low(ptr noundef %13) #8
  %active_list = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 16
  %14 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %active_list, ptr %active_list, align 4
  %prev.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 16, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %active_list, ptr %prev.i, align 4
  %active_lock = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %active_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @msm_gpu_init.__key) #8
  %lock = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @msm_gpu_init.__key.4) #8
  %retire_event = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 37
  tail call void @__init_waitqueue_head(ptr noundef %retire_event, ptr noundef nonnull @.str.7, ptr noundef nonnull @msm_gpu_init.__key.6) #8
  %retire_work = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 38
  %16 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 38, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 0, ptr %16, align 4
  %18 = ptrtoint ptr %retire_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %retire_work, ptr %retire_work, align 4
  %prev.i292 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 38, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i292 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retire_work, ptr %prev.i292, align 4
  %func = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 38, i32 1
  %20 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @retire_worker, ptr %func, align 4
  %recover_work = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 36
  %21 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 36, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 0, ptr %21, align 4
  %23 = ptrtoint ptr %recover_work to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %recover_work, ptr %recover_work, align 4
  %prev.i293 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 36, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i293 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %recover_work, ptr %prev.i293, align 4
  %func53 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 36, i32 1
  %25 = ptrtoint ptr %func53 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @recover_worker, ptr %func53, align 4
  %fault_work = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 35
  %26 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 35, i32 1
  %27 = call ptr @memset(ptr %26, i32 0, i32 12)
  %28 = ptrtoint ptr %fault_work to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %fault_work, ptr %fault_work, align 4
  %prev.i294 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 35, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i294 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %fault_work, ptr %prev.i294, align 4
  %func60 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 35, i32 1
  %30 = ptrtoint ptr %func60 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @fault_worker, ptr %func60, align 8
  %hangcheck_timer = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 33
  tail call void @init_timer_key(ptr noundef %hangcheck_timer, ptr noundef nonnull @hangcheck_handler, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @msm_gpu_init.__key.8) #8
  %perf_lock = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %perf_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @msm_gpu_init.__key.10, i16 noundef signext 3) #8
  %31 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config, align 4
  %call70 = tail call ptr @msm_ioremap(ptr noundef %pdev, ptr noundef %32, ptr noundef %name) #8
  %mmio = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %33 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call70, ptr %mmio, align 8
  %cmp.i295 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i295, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %call70 to i32
  br label %fail

if.end76:                                         ; preds = %if.end33
  %call77 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 23
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call77, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp79 = icmp slt i32 %call77, 0
  br i1 %cmp79, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %dev82 = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %36 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev82, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %37, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %call77) #8
  br label %fail

if.end83:                                         ; preds = %if.end76
  %dev84 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %38 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gpu, align 8
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev84, i32 noundef %call77, ptr noundef nonnull @irq_handler, ptr noundef null, i32 noundef 4, ptr noundef %39, ptr noundef %gpu) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool88.not = icmp eq i32 %call.i, 0
  br i1 %tobool88.not, label %if.end92, label %if.then89

if.then89:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %dev90 = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %40 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev90, align 4
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %41, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14, i32 noundef %43, i32 noundef %call.i) #8
  br label %fail

if.end92:                                         ; preds = %if.end83
  %grp_clks.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 27
  %call.i296 = tail call i32 @devm_clk_bulk_get_all(ptr noundef %dev84, ptr noundef %grp_clks.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i296)
  %cmp.i297 = icmp slt i32 %call.i296, 1
  %nr_clocks.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 28
  br i1 %cmp.i297, label %get_clocks.exit, label %get_clocks.exit.thread

get_clocks.exit.thread:                           ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %nr_clocks.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call.i296, ptr %nr_clocks.i, align 8
  %45 = ptrtoint ptr %grp_clks.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %grp_clks.i, align 4
  %call4.i = tail call ptr @msm_clk_bulk_get_clock(ptr noundef %46, i32 noundef %call.i296, ptr noundef nonnull @.str.44) #8
  %core_clk.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 30
  %47 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call4.i, ptr %core_clk.i, align 8
  %48 = ptrtoint ptr %grp_clks.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %grp_clks.i, align 4
  %50 = ptrtoint ptr %nr_clocks.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_clocks.i, align 8
  %call7.i = tail call ptr @msm_clk_bulk_get_clock(ptr noundef %49, i32 noundef %51, ptr noundef nonnull @.str.45) #8
  %rbbmtimer_clk.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 31
  %52 = ptrtoint ptr %rbbmtimer_clk.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i, ptr %rbbmtimer_clk.i, align 4
  br label %if.end96

get_clocks.exit:                                  ; preds = %if.end92
  %53 = ptrtoint ptr %nr_clocks.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %nr_clocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i296)
  %tobool94.not = icmp eq i32 %call.i296, 0
  br i1 %tobool94.not, label %get_clocks.exit.if.end96_crit_edge, label %get_clocks.exit.fail_crit_edge

get_clocks.exit.fail_crit_edge:                   ; preds = %get_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

get_clocks.exit.if.end96_crit_edge:               ; preds = %get_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.end96:                                         ; preds = %get_clocks.exit.if.end96_crit_edge, %get_clocks.exit.thread
  %call97 = tail call ptr @msm_clk_get(ptr noundef %pdev, ptr noundef nonnull @.str.15) #8
  %ebi1_clk = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 29
  %54 = ptrtoint ptr %ebi1_clk to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call97, ptr %ebi1_clk, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef %call97) #8
  %55 = ptrtoint ptr %ebi1_clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ebi1_clk, align 4
  %cmp.i298 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i298, label %if.then101, label %if.end96.if.end103_crit_edge

if.end96.if.end103_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %ebi1_clk to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %ebi1_clk, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end96.if.end103_crit_edge
  %call105 = tail call ptr @devm_regulator_get(ptr noundef %dev84, ptr noundef nonnull @.str.17) #8
  %gpu_reg = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 25
  %58 = ptrtoint ptr %gpu_reg to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call105, ptr %gpu_reg, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %call105) #8
  %59 = ptrtoint ptr %gpu_reg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %gpu_reg, align 4
  %cmp.i299 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i299, label %if.then109, label %if.end103.if.end111_crit_edge

if.end103.if.end111_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then109:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %gpu_reg to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %gpu_reg, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end103.if.end111_crit_edge
  %call113 = tail call ptr @devm_regulator_get(ptr noundef %dev84, ptr noundef nonnull @.str.19) #8
  %gpu_cx = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 26
  %62 = ptrtoint ptr %gpu_cx to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call113, ptr %gpu_cx, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, ptr noundef %call113) #8
  %63 = ptrtoint ptr %gpu_cx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %gpu_cx, align 8
  %cmp.i300 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i300, label %if.then117, label %if.end111.if.end119_crit_edge

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then117:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %gpu_cx to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %gpu_cx, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end111.if.end119_crit_edge
  %pdev120 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %66 = ptrtoint ptr %pdev120 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %pdev, ptr %pdev120, align 8
  %adreno_smmu = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %67 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %adreno_smmu, ptr %driver_data.i.i, align 4
  tail call void @msm_devfreq_init(ptr noundef %gpu) #8
  %68 = ptrtoint ptr %funcs24 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %funcs24, align 4
  %create_address_space = getelementptr inbounds %struct.msm_gpu_funcs, ptr %69, i32 0, i32 17
  %70 = ptrtoint ptr %create_address_space to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %create_address_space, align 4
  %call122 = tail call ptr %71(ptr noundef %gpu, ptr noundef %pdev) #8
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %72 = ptrtoint ptr %aspace to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call122, ptr %aspace, align 8
  %cmp124 = icmp eq ptr %call122, null
  br i1 %cmp124, label %if.then125, label %if.else

if.then125:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  %dev126 = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %73 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev126, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %74, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef %name) #8
  br label %if.end133

if.else:                                          ; preds = %if.end119
  %cmp.i301 = icmp ugt ptr %call122, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i301, label %if.then129, label %if.else.if.end133_crit_edge

if.else.if.end133_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

if.then129:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %call122 to i32
  br label %fail

if.end133:                                        ; preds = %if.else.if.end133_crit_edge, %if.then125
  %mul = mul i32 %1, 2064
  %hw_apriv = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 45
  %76 = ptrtoint ptr %hw_apriv to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %hw_apriv, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool134.not = icmp eq i8 %77, 0
  %or = select i1 %tobool134.not, i32 262144, i32 537133056
  %78 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %aspace, align 8
  %memptrs_bo = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 40
  %call136 = call ptr @msm_gem_kernel_new(ptr noundef %drm, i32 noundef %mul, i32 noundef %or, ptr noundef %79, ptr noundef %memptrs_bo, ptr noundef nonnull %memptrs_iova) #8
  %cmp.i302 = icmp ugt ptr %call136, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i302, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %call136 to i32
  %dev140 = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %81 = ptrtoint ptr %dev140 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev140, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %82, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.23, i32 noundef %80) #8
  br label %fail

if.end141:                                        ; preds = %if.end133
  %83 = ptrtoint ptr %memptrs_bo to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %memptrs_bo, align 4
  call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %84, ptr noundef nonnull @.str.24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp143 = icmp ugt i32 %1, 4
  br i1 %cmp143, label %if.then144, label %if.end149

if.then144:                                       ; preds = %if.end141
  %.b291 = load i1, ptr @msm_gpu_init.__print_once, align 1
  br i1 %.b291, label %if.then144.for.body.preheader_crit_edge, label %if.then146

if.then144.for.body.preheader_crit_edge:          ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.then146:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @msm_gpu_init.__print_once, align 1
  %dev147 = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %85 = ptrtoint ptr %dev147 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev147, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %86, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.25, i32 noundef 4) #8
  br label %for.body.preheader

if.end149:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp150308.not = icmp eq i32 %1, 0
  br i1 %cmp150308.not, label %if.end149.for.end_crit_edge, label %if.end149.for.body.preheader_crit_edge

if.end149.for.body.preheader_crit_edge:           ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.end149.for.end_crit_edge:                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.end149.for.body.preheader_crit_edge, %if.then146, %if.then144.for.body.preheader_crit_edge
  %nr_rings.0318 = phi i32 [ %1, %if.end149.for.body.preheader_crit_edge ], [ 4, %if.then146 ], [ 4, %if.then144.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %if.end160.for.body_crit_edge, %for.body.preheader
  %memptrs.0310 = phi ptr [ %add.ptr, %if.end160.for.body_crit_edge ], [ %call136, %for.body.preheader ]
  %i.0309 = phi i32 [ %inc, %if.end160.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %87 = ptrtoint ptr %memptrs_iova to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %memptrs_iova, align 8
  %call151 = call ptr @msm_ringbuffer_new(ptr noundef %gpu, i32 noundef %i.0309, ptr noundef %memptrs.0310, i64 noundef %88) #8
  %arrayidx = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 %i.0309
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call151, ptr %arrayidx, align 4
  %cmp.i303 = icmp ugt ptr %call151, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i303, label %if.then155, label %if.end160

if.then155:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %call151 to i32
  %dev159 = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %91 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev159, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %92, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.26, i32 noundef %i.0309, i32 noundef %90) #8
  br label %fail

if.end160:                                        ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %memptrs.0310, i32 2064
  %93 = ptrtoint ptr %memptrs_iova to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %memptrs_iova, align 8
  %add = add i64 %94, 2064
  store i64 %add, ptr %memptrs_iova, align 8
  %inc = add nuw nsw i32 %i.0309, 1
  %exitcond.not = icmp eq i32 %inc, %nr_rings.0318
  br i1 %exitcond.not, label %if.end160.for.end_crit_edge, label %if.end160.for.body_crit_edge

if.end160.for.body_crit_edge:                     ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end160.for.end_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end160.for.end_crit_edge, %if.end149.for.end_crit_edge
  %nr_rings.0317 = phi i32 [ 0, %if.end149.for.end_crit_edge ], [ %nr_rings.0318, %if.end160.for.end_crit_edge ]
  %nr_rings161 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %95 = ptrtoint ptr %nr_rings161 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %nr_rings.0317, ptr %nr_rings161, align 4
  br label %cleanup

fail:                                             ; preds = %if.then155, %if.then138, %if.then129, %get_clocks.exit.fail_crit_edge, %if.then89, %if.then80, %if.then73, %if.then29
  %ret.0 = phi i32 [ %10, %if.then29 ], [ %34, %if.then73 ], [ %call77, %if.then80 ], [ %call.i, %if.then89 ], [ %call.i296, %get_clocks.exit.fail_crit_edge ], [ %80, %if.then138 ], [ %90, %if.then155 ], [ %75, %if.then129 ]
  %arrayidx166 = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 0
  %96 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx166, align 4
  call void @msm_ringbuffer_destroy(ptr noundef %97) #8
  %98 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %arrayidx166, align 4
  %arrayidx166.1 = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 1
  %99 = ptrtoint ptr %arrayidx166.1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx166.1, align 4
  call void @msm_ringbuffer_destroy(ptr noundef %100) #8
  %101 = ptrtoint ptr %arrayidx166.1 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %arrayidx166.1, align 4
  %arrayidx166.2 = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 2
  %102 = ptrtoint ptr %arrayidx166.2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx166.2, align 4
  call void @msm_ringbuffer_destroy(ptr noundef %103) #8
  %104 = ptrtoint ptr %arrayidx166.2 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %arrayidx166.2, align 4
  %arrayidx166.3 = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 3
  %105 = ptrtoint ptr %arrayidx166.3 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx166.3, align 4
  call void @msm_ringbuffer_destroy(ptr noundef %106) #8
  %107 = ptrtoint ptr %arrayidx166.3 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %arrayidx166.3, align 4
  %memptrs_bo172 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 40
  %108 = ptrtoint ptr %memptrs_bo172 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %memptrs_bo172, align 4
  %aspace173 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %110 = ptrtoint ptr %aspace173 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %aspace173, align 8
  call void @msm_gem_kernel_put(ptr noundef %109, ptr noundef %111) #8
  %driver_data.i.i304 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %112 = ptrtoint ptr %driver_data.i.i304 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %driver_data.i.i304, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %for.end
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %memptrs_iova) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo_low(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @retire_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -580
  tail call fastcc void @retire_submits(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recover_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -508
  %dev1 = getelementptr i8, ptr %work, i32 -504
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %funcs = getelementptr i8, ptr %work, i32 -496
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %active_ring = getelementptr inbounds %struct.msm_gpu_funcs, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %active_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_ring, align 4
  %call = tail call ptr %7(ptr noundef %add.ptr) #8
  %lock = getelementptr i8, ptr %work, i32 -336
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.32, ptr noundef %11) #8
  %memptrs = getelementptr inbounds %struct.msm_ringbuffer, ptr %call, i32 0, i32 13
  %12 = ptrtoint ptr %memptrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memptrs, align 8
  %fence = getelementptr inbounds %struct.msm_rbmemptrs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %fence, align 4
  %add = add i32 %15, 1
  %submit_lock.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %call, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock.i) #8
  %submits.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %call, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %submits.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp7.not.i = icmp eq ptr %.pn.i, %submits.i
  br i1 %cmp7.not.i, label %find_submit.exit.thread, label %for.body.i

find_submit.exit.thread:                          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock.i, i32 noundef %call2.i) #8
  br label %if.end18

for.body.i:                                       ; preds = %for.cond.i
  %seqno.i = getelementptr i8, ptr %.pn.i, i32 72
  %17 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seqno.i, align 8
  %cmp9.i = icmp eq i32 %18, %add
  br i1 %cmp9.i, label %find_submit.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

find_submit.exit:                                 ; preds = %for.body.i
  %submit.0.le.i = getelementptr i8, ptr %.pn.i, i32 -144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock.i, i32 noundef %call2.i) #8
  %tobool.not = icmp eq ptr %submit.0.le.i, null
  br i1 %tobool.not, label %find_submit.exit.if.end18_crit_edge, label %if.then

find_submit.exit.if.end18_crit_edge:              ; preds = %find_submit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then:                                          ; preds = %find_submit.exit
  %global_faults = getelementptr i8, ptr %work, i32 -144
  %19 = ptrtoint ptr %global_faults to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %global_faults, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %global_faults, align 4
  %queue = getelementptr i8, ptr %.pn.i, i32 88
  %21 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queue, align 8
  %faults = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %faults to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %faults, align 4
  %inc4 = add i32 %24, 1
  store i32 %inc4, ptr %faults, align 4
  %pid = getelementptr i8, ptr %.pn.i, i32 92
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pid, align 4
  %call5 = tail call ptr @get_pid_task(ptr noundef %26, i32 noundef 0) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then.if.else_crit_edge, label %if.then7

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then7:                                         ; preds = %if.then
  %comm8 = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 101
  %call9 = tail call noalias ptr @kstrdup(ptr noundef %comm8, i32 noundef 3264) #8
  %call10 = tail call ptr @kstrdup_quotable_cmdline(ptr noundef nonnull %call5, i32 noundef 3264) #8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !121
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i137, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !107

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #8
  br label %if.end

if.then.i137:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @__put_task_struct(ptr noundef nonnull %call5) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i137, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge
  %tobool11.not = icmp eq ptr %call9, null
  %tobool12.not = icmp eq ptr %call10, null
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %if.end.if.else_crit_edge, label %if.then13

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev2, align 4
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.33, ptr noundef %31, ptr noundef nonnull %call9, ptr noundef nonnull %call10) #8
  %hangrd = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 12
  %32 = ptrtoint ptr %hangrd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hangrd, align 8
  tail call void (ptr, ptr, ptr, ...) @msm_rd_dump_submit(ptr noundef %33, ptr noundef nonnull %submit.0.le.i, ptr noundef nonnull @.str.34, ptr noundef nonnull %call9, ptr noundef nonnull %call10) #8
  br label %if.end18

if.else:                                          ; preds = %if.end.if.else_crit_edge, %if.then.if.else_crit_edge
  %cmd.0162 = phi ptr [ %call10, %if.end.if.else_crit_edge ], [ null, %if.then.if.else_crit_edge ]
  %comm.0161 = phi ptr [ %call9, %if.end.if.else_crit_edge ], [ null, %if.then.if.else_crit_edge ]
  %hangrd16 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 12
  %34 = ptrtoint ptr %hangrd16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hangrd16, align 8
  tail call void (ptr, ptr, ptr, ...) @msm_rd_dump_submit(ptr noundef %35, ptr noundef nonnull %submit.0.le.i, ptr noundef null) #8
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then13, %find_submit.exit.if.end18_crit_edge, %find_submit.exit.thread
  %retval.0.i155 = phi ptr [ null, %find_submit.exit.if.end18_crit_edge ], [ %submit.0.le.i, %if.else ], [ %submit.0.le.i, %if.then13 ], [ null, %find_submit.exit.thread ]
  %comm.1 = phi ptr [ null, %find_submit.exit.if.end18_crit_edge ], [ %comm.0161, %if.else ], [ %call9, %if.then13 ], [ null, %find_submit.exit.thread ]
  %cmd.1 = phi ptr [ null, %find_submit.exit.if.end18_crit_edge ], [ %cmd.0162, %if.else ], [ %call10, %if.then13 ], [ null, %find_submit.exit.thread ]
  %pdev = getelementptr i8, ptr %work, i32 -500
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %dev19 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev19, i32 noundef 4) #8
  tail call fastcc void @msm_gpu_crashstate_capture(ptr noundef %add.ptr, ptr noundef %retval.0.i155, ptr noundef %comm.1, ptr noundef %cmd.1)
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %dev22 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %call.i138 = tail call i32 @__pm_runtime_idle(ptr noundef %dev22, i32 noundef 4) #8
  tail call void @kfree(ptr noundef %cmd.1) #8
  tail call void @kfree(ptr noundef %comm.1) #8
  %nr_rings = getelementptr i8, ptr %work, i32 -352
  %40 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp165 = icmp sgt i32 %41, 0
  br i1 %cmp165, label %for.body.lr.ph, label %if.end18.if.end76_crit_edge

if.end18.if.end76_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

for.body.lr.ph:                                   ; preds = %if.end18
  %rb = getelementptr i8, ptr %work, i32 -368
  br label %for.body

for.body:                                         ; preds = %update_fences.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0166 = phi i32 [ 0, %for.body.lr.ph ], [ %inc31, %update_fences.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr %rb, i32 0, i32 %i.0166
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %memptrs25 = getelementptr inbounds %struct.msm_ringbuffer, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %memptrs25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %memptrs25, align 8
  %fence26 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %fence26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %fence26, align 4
  %submit_lock.i139 = getelementptr inbounds %struct.msm_ringbuffer, ptr %43, i32 0, i32 9
  %call2.i140 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock.i139) #8
  %submits.i141 = getelementptr inbounds %struct.msm_ringbuffer, ptr %43, i32 0, i32 8
  %48 = ptrtoint ptr %submits.i141 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn1.i = load ptr, ptr %submits.i141, align 8
  %cmp7.not2.i = icmp eq ptr %.pn1.i, %submits.i141
  br i1 %cmp7.not2.i, label %for.body.update_fences.exit_crit_edge, label %for.body.i143.preheader

for.body.update_fences.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_fences.exit

for.body.i143.preheader:                          ; preds = %for.body
  %cmp27 = icmp eq ptr %43, %call
  %inc29.neg180 = sext i1 %cmp27 to i32
  %spec.select.neg = sub i32 %inc29.neg180, %47
  br label %for.body.i143

for.body.i143:                                    ; preds = %if.end.i.for.body.i143_crit_edge, %for.body.i143.preheader
  %.pn3.i = phi ptr [ %.pn.i144, %if.end.i.for.body.i143_crit_edge ], [ %.pn1.i, %for.body.i143.preheader ]
  %seqno.i142 = getelementptr i8, ptr %.pn3.i, i32 72
  %49 = ptrtoint ptr %seqno.i142 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %seqno.i142, align 8
  %sub.i.i = add i32 %spec.select.neg, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %for.body.i143.update_fences.exit_crit_edge, label %if.end.i

for.body.i143.update_fences.exit_crit_edge:       ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_fences.exit

if.end.i:                                         ; preds = %for.body.i143
  %ring10.i = getelementptr i8, ptr %.pn3.i, i32 100
  %51 = ptrtoint ptr %ring10.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring10.i, align 4
  %fctx.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %52, i32 0, i32 15
  %53 = ptrtoint ptr %fctx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fctx.i, align 8
  %hw_fence.i = getelementptr i8, ptr %.pn3.i, i32 76
  %55 = ptrtoint ptr %hw_fence.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_fence.i, align 4
  %seqno11.i = getelementptr inbounds %struct.dma_fence, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %seqno11.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %seqno11.i, align 8
  %conv12.i = trunc i64 %58 to i32
  tail call void @msm_update_fence(ptr noundef %54, i32 noundef %conv12.i) #8
  %59 = ptrtoint ptr %hw_fence.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw_fence.i, align 4
  %call14.i = tail call i32 @dma_fence_signal(ptr noundef %60) #8
  %61 = ptrtoint ptr %.pn3.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn.i144 = load ptr, ptr %.pn3.i, align 8
  %cmp7.not.i145 = icmp eq ptr %.pn.i144, %submits.i141
  br i1 %cmp7.not.i145, label %if.end.i.update_fences.exit_crit_edge, label %if.end.i.for.body.i143_crit_edge

if.end.i.for.body.i143_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i143

if.end.i.update_fences.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_fences.exit

update_fences.exit:                               ; preds = %if.end.i.update_fences.exit_crit_edge, %for.body.i143.update_fences.exit_crit_edge, %for.body.update_fences.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock.i139, i32 noundef %call2.i140) #8
  %inc31 = add nuw nsw i32 %i.0166, 1
  %62 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr_rings, align 4
  %cmp = icmp slt i32 %inc31, %63
  br i1 %cmp, label %update_fences.exit.for.body_crit_edge, label %for.end

update_fences.exit.for.body_crit_edge:            ; preds = %update_fences.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %update_fences.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp6.i = icmp sgt i32 %63, 0
  br i1 %cmp6.i, label %for.body.i150.preheader, label %for.end.if.end76_crit_edge

for.end.if.end76_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

for.body.i150.preheader:                          ; preds = %for.end
  %arrayidx.i167 = getelementptr i8, ptr %work, i32 -368
  %64 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i167, align 4
  %seqno.i147168 = getelementptr inbounds %struct.msm_ringbuffer, ptr %65, i32 0, i32 11
  %66 = ptrtoint ptr %seqno.i147168 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %seqno.i147168, align 8
  %memptrs.i169 = getelementptr inbounds %struct.msm_ringbuffer, ptr %65, i32 0, i32 13
  %68 = ptrtoint ptr %memptrs.i169 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %memptrs.i169, align 8
  %fence.i170 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %fence.i170 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %fence.i170, align 4
  %sub.i.i148171 = sub i32 %67, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i148171)
  %cmp.i.i149172 = icmp sgt i32 %sub.i.i148171, 0
  br i1 %cmp.i.i149172, label %for.body.i150.preheader.if.then33_crit_edge, label %for.body.i150.preheader.for.cond.i146_crit_edge

for.body.i150.preheader.for.cond.i146_crit_edge:  ; preds = %for.body.i150.preheader
  br label %for.cond.i146

for.body.i150.preheader.if.then33_crit_edge:      ; preds = %for.body.i150.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

for.cond.i146:                                    ; preds = %for.body.i150.for.cond.i146_crit_edge, %for.body.i150.preheader.for.cond.i146_crit_edge
  %i.07.i173 = phi i32 [ %inc.i, %for.body.i150.for.cond.i146_crit_edge ], [ 0, %for.body.i150.preheader.for.cond.i146_crit_edge ]
  %inc.i = add nuw nsw i32 %i.07.i173, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %63)
  %exitcond.not.i = icmp eq i32 %inc.i, %63
  br i1 %exitcond.not.i, label %for.cond.i146.msm_gpu_active.exit_crit_edge, label %for.body.i150

for.cond.i146.msm_gpu_active.exit_crit_edge:      ; preds = %for.cond.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_active.exit

for.body.i150:                                    ; preds = %for.cond.i146
  %arrayidx.i = getelementptr %struct.msm_gpu, ptr %add.ptr, i32 0, i32 13, i32 %inc.i
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i, align 4
  %seqno.i147 = getelementptr inbounds %struct.msm_ringbuffer, ptr %73, i32 0, i32 11
  %74 = ptrtoint ptr %seqno.i147 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %seqno.i147, align 8
  %memptrs.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %73, i32 0, i32 13
  %76 = ptrtoint ptr %memptrs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %memptrs.i, align 8
  %fence.i = getelementptr inbounds %struct.msm_rbmemptrs, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %fence.i, align 4
  %sub.i.i148 = sub i32 %75, %79
  %cmp.i.i149 = icmp sgt i32 %sub.i.i148, 0
  br i1 %cmp.i.i149, label %for.body.i150.msm_gpu_active.exit_crit_edge, label %for.body.i150.for.cond.i146_crit_edge

for.body.i150.for.cond.i146_crit_edge:            ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i146

for.body.i150.msm_gpu_active.exit_crit_edge:      ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_active.exit

msm_gpu_active.exit:                              ; preds = %for.body.i150.msm_gpu_active.exit_crit_edge, %for.cond.i146.msm_gpu_active.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %63)
  %cmp.i.le = icmp slt i32 %inc.i, %63
  br i1 %cmp.i.le, label %msm_gpu_active.exit.if.then33_crit_edge, label %msm_gpu_active.exit.if.end76_crit_edge

msm_gpu_active.exit.if.end76_crit_edge:           ; preds = %msm_gpu_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

msm_gpu_active.exit.if.then33_crit_edge:          ; preds = %msm_gpu_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

if.then33:                                        ; preds = %msm_gpu_active.exit.if.then33_crit_edge, %for.body.i150.preheader.if.then33_crit_edge
  tail call fastcc void @retire_submits(ptr noundef %add.ptr)
  %80 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev, align 8
  %dev35 = getelementptr inbounds %struct.platform_device, ptr %81, i32 0, i32 3
  %call.i151 = tail call i32 @__pm_runtime_resume(ptr noundef %dev35, i32 noundef 4) #8
  %82 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %funcs, align 4
  %recover = getelementptr inbounds %struct.msm_gpu_funcs, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %recover to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %recover, align 4
  tail call void %85(ptr noundef %add.ptr) #8
  %86 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev, align 8
  %dev39 = getelementptr inbounds %struct.platform_device, ptr %87, i32 0, i32 3
  %call.i152 = tail call i32 @__pm_runtime_idle(ptr noundef %dev39, i32 noundef 4) #8
  %88 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp43178 = icmp sgt i32 %89, 0
  br i1 %cmp43178, label %if.then33.for.body44_crit_edge, label %if.then33.if.end76_crit_edge

if.then33.if.end76_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then33.for.body44_crit_edge:                   ; preds = %if.then33
  br label %for.body44

for.body44:                                       ; preds = %for.end71.for.body44_crit_edge, %if.then33.for.body44_crit_edge
  %i.1179 = phi i32 [ %inc74, %for.end71.for.body44_crit_edge ], [ 0, %if.then33.for.body44_crit_edge ]
  %arrayidx47 = getelementptr [4 x ptr], ptr %arrayidx.i167, i32 0, i32 %i.1179
  %90 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx47, align 4
  %submit_lock = getelementptr inbounds %struct.msm_ringbuffer, ptr %91, i32 0, i32 9
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock) #8
  %submits = getelementptr inbounds %struct.msm_ringbuffer, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %submits to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pn175 = load ptr, ptr %submits, align 8
  %cmp60.not176 = icmp eq ptr %.pn175, %submits
  br i1 %cmp60.not176, label %for.body44.for.end71_crit_edge, label %for.body44.for.body62_crit_edge

for.body44.for.body62_crit_edge:                  ; preds = %for.body44
  br label %for.body62

for.body44.for.end71_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %for.body44.for.body62_crit_edge
  %.pn177 = phi ptr [ %.pn, %for.body62.for.body62_crit_edge ], [ %.pn175, %for.body44.for.body62_crit_edge ]
  %submit.0 = getelementptr i8, ptr %.pn177, i32 -144
  %93 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %funcs, align 4
  %submit64 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %submit64 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %submit64, align 4
  tail call void %96(ptr noundef %add.ptr, ptr noundef %submit.0) #8
  %97 = ptrtoint ptr %.pn177 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pn = load ptr, ptr %.pn177, align 8
  %cmp60.not = icmp eq ptr %.pn, %submits
  br i1 %cmp60.not, label %for.body62.for.end71_crit_edge, label %for.body62.for.body62_crit_edge

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62

for.body62.for.end71_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71

for.end71:                                        ; preds = %for.body62.for.end71_crit_edge, %for.body44.for.end71_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock, i32 noundef %call52) #8
  %inc74 = add nuw nsw i32 %i.1179, 1
  %98 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nr_rings, align 4
  %cmp43 = icmp slt i32 %inc74, %99
  br i1 %cmp43, label %for.end71.for.body44_crit_edge, label %for.end71.if.end76_crit_edge

for.end71.if.end76_crit_edge:                     ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

for.end71.for.body44_crit_edge:                   ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44

if.end76:                                         ; preds = %for.end71.if.end76_crit_edge, %if.then33.if.end76_crit_edge, %msm_gpu_active.exit.if.end76_crit_edge, %for.end.if.end76_crit_edge, %if.end18.if.end76_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  tail call void @msm_gpu_retire(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fault_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -488
  %funcs = getelementptr i8, ptr %work, i32 -476
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %active_ring = getelementptr inbounds %struct.msm_gpu_funcs, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %active_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_ring, align 4
  %call = tail call ptr %3(ptr noundef %add.ptr) #8
  %lock = getelementptr i8, ptr %work, i32 -316
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %memptrs = getelementptr inbounds %struct.msm_ringbuffer, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %memptrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %memptrs, align 8
  %fence = getelementptr inbounds %struct.msm_rbmemptrs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %fence, align 4
  %add = add i32 %7, 1
  %submit_lock.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %call, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock.i) #8
  %submits.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %call, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %submits.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp7.not.i = icmp eq ptr %.pn.i, %submits.i
  br i1 %cmp7.not.i, label %find_submit.exit.thread, label %for.body.i

find_submit.exit.thread:                          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock.i, i32 noundef %call2.i) #8
  br label %if.end13

for.body.i:                                       ; preds = %for.cond.i
  %seqno.i = getelementptr i8, ptr %.pn.i, i32 72
  %9 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seqno.i, align 8
  %cmp9.i = icmp eq i32 %10, %add
  br i1 %cmp9.i, label %find_submit.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

find_submit.exit:                                 ; preds = %for.body.i
  %submit.0.le.i = getelementptr i8, ptr %.pn.i, i32 -144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock.i, i32 noundef %call2.i) #8
  %tobool.not = icmp eq ptr %submit.0.le.i, null
  br i1 %tobool.not, label %find_submit.exit.if.end13_crit_edge, label %land.lhs.true

find_submit.exit.if.end13_crit_edge:              ; preds = %find_submit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %find_submit.exit
  %fault_dumped = getelementptr i8, ptr %.pn.i, i32 96
  %11 = ptrtoint ptr %fault_dumped to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fault_dumped, align 8, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %if.then4.critedge, label %land.lhs.true.resume_smmu_crit_edge

land.lhs.true.resume_smmu_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %resume_smmu

if.then4.critedge:                                ; preds = %land.lhs.true
  %pid = getelementptr i8, ptr %.pn.i, i32 92
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pid, align 4
  %call5 = tail call ptr @get_pid_task(ptr noundef %14, i32 noundef 0) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then4.critedge.if.end11_crit_edge, label %if.then7

if.then4.critedge.if.end11_crit_edge:             ; preds = %if.then4.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %if.then4.critedge
  %comm8 = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 101
  %call9 = tail call noalias ptr @kstrdup(ptr noundef %comm8, i32 noundef 3264) #8
  %call10 = tail call ptr @kstrdup_quotable_cmdline(ptr noundef nonnull %call5, i32 noundef 3264) #8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !121
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i42, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end11_crit_edge, label %if.then10.i.i.i.i, !prof !107

if.end5.i.i.i.i.if.end11_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #8
  br label %if.end11

if.then.i42:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @__put_task_struct(ptr noundef nonnull %call5) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then.i42, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end11_crit_edge, %if.then4.critedge.if.end11_crit_edge
  %comm.0 = phi ptr [ null, %if.then4.critedge.if.end11_crit_edge ], [ %call9, %if.end5.i.i.i.i.if.end11_crit_edge ], [ %call9, %if.then10.i.i.i.i ], [ %call9, %if.then.i42 ]
  %cmd.0 = phi ptr [ null, %if.then4.critedge.if.end11_crit_edge ], [ %call10, %if.end5.i.i.i.i.if.end11_crit_edge ], [ %call10, %if.then10.i.i.i.i ], [ %call10, %if.then.i42 ]
  %16 = ptrtoint ptr %fault_dumped to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %fault_dumped, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %find_submit.exit.if.end13_crit_edge, %find_submit.exit.thread
  %retval.0.i46 = phi ptr [ %submit.0.le.i, %if.end11 ], [ null, %find_submit.exit.if.end13_crit_edge ], [ null, %find_submit.exit.thread ]
  %comm.1 = phi ptr [ %comm.0, %if.end11 ], [ null, %find_submit.exit.if.end13_crit_edge ], [ null, %find_submit.exit.thread ]
  %cmd.1 = phi ptr [ %cmd.0, %if.end11 ], [ null, %find_submit.exit.if.end13_crit_edge ], [ null, %find_submit.exit.thread ]
  %pdev = getelementptr i8, ptr %work, i32 -480
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  tail call fastcc void @msm_gpu_crashstate_capture(ptr noundef %add.ptr, ptr noundef %retval.0.i46, ptr noundef %comm.1, ptr noundef %cmd.1)
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %call.i43 = tail call i32 @__pm_runtime_idle(ptr noundef %dev16, i32 noundef 4) #8
  tail call void @kfree(ptr noundef %cmd.1) #8
  tail call void @kfree(ptr noundef %comm.1) #8
  br label %resume_smmu

resume_smmu:                                      ; preds = %if.end13, %land.lhs.true.resume_smmu_crit_edge
  %fault_info = getelementptr i8, ptr %work, i32 -24
  %21 = call ptr @memset(ptr %fault_info, i32 0, i32 24)
  %aspace = getelementptr i8, ptr %work, i32 -112
  %22 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %aspace, align 8
  %mmu = getelementptr inbounds %struct.msm_gem_address_space, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmu, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %resume_translation = getelementptr inbounds %struct.msm_mmu_funcs, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %resume_translation to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resume_translation, align 4
  tail call void %29(ptr noundef %25) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hangcheck_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -412
  %dev1 = getelementptr i8, ptr %t, i32 -408
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %funcs = getelementptr i8, ptr %t, i32 -400
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %active_ring = getelementptr inbounds %struct.msm_gpu_funcs, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %active_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_ring, align 4
  %call = tail call ptr %5(ptr noundef %add.ptr) #8
  %memptrs = getelementptr inbounds %struct.msm_ringbuffer, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %memptrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memptrs, align 8
  %fence2 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %fence2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %fence2, align 4
  %hangcheck_fence = getelementptr inbounds %struct.msm_ringbuffer, ptr %call, i32 0, i32 12
  %10 = ptrtoint ptr %hangcheck_fence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hangcheck_fence, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %hangcheck_fence to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %hangcheck_fence, align 4
  br label %if.end14

if.else:                                          ; preds = %entry
  %seqno = getelementptr inbounds %struct.msm_ringbuffer, ptr %call, i32 0, i32 11
  %13 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seqno, align 8
  %sub.i = sub i32 %9, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then5, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %hangcheck_fence to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %9, ptr %hangcheck_fence, align 4
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %id = getelementptr inbounds %struct.msm_ringbuffer, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.41, ptr noundef %19, i32 noundef %21) #8
  %22 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev7, align 4
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.42, ptr noundef %25, i32 noundef %9) #8
  %26 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev7, align 4
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  %30 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %seqno, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %27, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.43, ptr noundef %29, i32 noundef %31) #8
  %worker = getelementptr i8, ptr %t, i32 188
  %32 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %worker, align 8
  %recover_work = getelementptr i8, ptr %t, i32 96
  %call13 = tail call zeroext i1 @kthread_queue_work(ptr noundef %33, ptr noundef %recover_work) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then5, %if.else.if.end14_crit_edge, %if.then
  %seqno15 = getelementptr inbounds %struct.msm_ringbuffer, ptr %call, i32 0, i32 11
  %34 = ptrtoint ptr %seqno15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %seqno15, align 8
  %36 = ptrtoint ptr %hangcheck_fence to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hangcheck_fence, align 4
  %sub.i43 = sub i32 %35, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i43)
  %cmp.i44 = icmp sgt i32 %sub.i43, 0
  br i1 %cmp.i44, label %if.then18, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %hangcheck_period.i = getelementptr inbounds %struct.msm_drm_private, ptr %41, i32 0, i32 39
  %43 = ptrtoint ptr %hangcheck_period.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hangcheck_period.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %44) #8
  %add.i = add i32 %call2.i.i, %42
  %call1.i = tail call i32 @round_jiffies_up(i32 noundef %add.i) #8
  %call2.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %call1.i) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  tail call void @msm_gpu_retire(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.msm_gpu, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %irq1 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq1, align 4
  %call = tail call i32 %3(ptr noundef %data) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_devfreq_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ringbuffer_new(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_ringbuffer_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_kernel_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gpu_cleanup(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %1) #8
  %active_list = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 16
  %2 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %3, %active_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !107

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 976, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @msm_ringbuffer_destroy(ptr noundef %5) #8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  tail call void @msm_ringbuffer_destroy(ptr noundef %8) #8
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  tail call void @msm_ringbuffer_destroy(ptr noundef %11) #8
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.3, align 4
  tail call void @msm_ringbuffer_destroy(ptr noundef %14) #8
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.3, align 4
  %memptrs_bo = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 40
  %16 = ptrtoint ptr %memptrs_bo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memptrs_bo, align 4
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %18 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aspace, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %17, ptr noundef %19) #8
  %20 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aspace, align 8
  %tobool.not.i = icmp eq ptr %21, null
  %cmp.i51 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i51
  br i1 %spec.select.i, label %if.end.if.end30_crit_edge, label %if.then25

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mmu = getelementptr inbounds %struct.msm_gem_address_space, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmu, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void %27(ptr noundef %23) #8
  %28 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aspace, align 8
  tail call void @msm_gem_address_space_put(ptr noundef %29) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end.if.end30_crit_edge
  %worker = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 39
  %30 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %worker, align 8
  %tobool31.not = icmp eq ptr %31, null
  br i1 %tobool31.not, label %if.end30.if.end34_crit_edge, label %if.then32

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kthread_destroy_worker(ptr noundef nonnull %31) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30.if.end34_crit_edge
  tail call void @msm_devfreq_cleanup(ptr noundef %gpu) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_address_space_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_devfreq_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_update_fence(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @retire_submits(ptr noundef %gpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_rings = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 14
  %0 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp40 = icmp sgt i32 %1, 0
  br i1 %cmp40, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %active_lock.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 19
  %active_submits.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %while.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 %i.041
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %submit_lock = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 9
  %call334 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock) #8
  %submits = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %submits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %submits, align 4
  %cmp11.not35 = icmp eq ptr %5, %submits
  %add.ptr36 = getelementptr i8, ptr %5, i32 -144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock, i32 noundef %call334) #8
  %tobool.not3337 = icmp eq ptr %add.ptr36, null
  %tobool.not38 = or i1 %cmp11.not35, %tobool.not3337
  br i1 %tobool.not38, label %for.body.while.end_crit_edge, label %land.lhs.true.lr.ph

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.lhs.true.lr.ph:                              ; preds = %for.body
  %memptrs.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cleanup.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %add.ptr39 = phi ptr [ %add.ptr36, %land.lhs.true.lr.ph ], [ %add.ptr, %cleanup.land.lhs.true_crit_edge ]
  %6 = phi ptr [ %5, %land.lhs.true.lr.ph ], [ %53, %cleanup.land.lhs.true_crit_edge ]
  %hw_fence = getelementptr i8, ptr %6, i32 76
  %7 = ptrtoint ptr %hw_fence to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_fence, align 4
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i:                                         ; preds = %land.lhs.true
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.end.i.while.end_crit_edge, label %land.lhs.true.i

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %14(ptr noundef %8) #8
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.while.end_crit_edge

land.lhs.true.i.while.end_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %8) #8
  br label %if.then

if.then:                                          ; preds = %if.then5.i, %land.lhs.true.if.then_crit_edge
  %seqno.i = getelementptr i8, ptr %6, i32 72
  %15 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seqno.i, align 8
  %rem.i = and i32 %16, 63
  %17 = ptrtoint ptr %memptrs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %memptrs.i, align 8
  %alwayson_end.i = getelementptr %struct.msm_rbmemptrs, ptr %18, i32 0, i32 2, i32 %rem.i, i32 3
  %19 = ptrtoint ptr %alwayson_end.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load volatile i64, ptr %alwayson_end.i, align 8
  %alwayson_start.i = getelementptr %struct.msm_rbmemptrs, ptr %18, i32 0, i32 2, i32 %rem.i, i32 2
  %21 = ptrtoint ptr %alwayson_start.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load volatile i64, ptr %alwayson_start.i, align 8
  %sub.i = sub i64 %20, %22
  %mul.i = mul i64 %sub.i, 10000
  %div83639.i = lshr i64 %mul.i, 6
  %23 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div83639.i, i64 6148914691236517205) #11, !srcloc !123
  %24 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div83639.i, i64 %23) #11, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool184.not.i = icmp eq i64 %24, 0
  br i1 %tobool184.not.i, label %if.then.if.end410.i_crit_edge, label %if.then185.i

if.then.if.end410.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end410.i

if.then185.i:                                     ; preds = %if.then
  %arrayidx.i = getelementptr %struct.msm_rbmemptrs, ptr %18, i32 0, i32 2, i32 %rem.i
  %cpcycles_end.i = getelementptr %struct.msm_rbmemptrs, ptr %18, i32 0, i32 2, i32 %rem.i, i32 1
  %25 = ptrtoint ptr %cpcycles_end.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load volatile i64, ptr %cpcycles_end.i, align 8
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load volatile i64, ptr %arrayidx.i, align 8
  %sub186.i = sub i64 %26, %28
  %mul187.i = mul i64 %sub186.i, 1000
  %conv189.i = trunc i64 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul187.i)
  %cmp390.i = icmp ult i64 %mul187.i, 4294967296
  br i1 %cmp390.i, label %if.then398.i, label %if.else404.i, !prof !107

if.then398.i:                                     ; preds = %if.then185.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv399.i = trunc i64 %mul187.i to i32
  %div402.i = udiv i32 %conv399.i, %conv189.i
  %conv403.i = zext i32 %div402.i to i64
  br label %if.end410.i

if.else404.i:                                     ; preds = %if.then185.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv189.i, i64 %mul187.i) #11, !srcloc !125
  %asmresult1.i.i = extractvalue { i64, i64 } %29, 1
  br label %if.end410.i

if.end410.i:                                      ; preds = %if.else404.i, %if.then398.i, %if.then.if.end410.i_crit_edge
  %clock.0.i = phi i64 [ 0, %if.then.if.end410.i_crit_edge ], [ %conv403.i, %if.then398.i ], [ %asmresult1.i.i, %if.else404.i ]
  %30 = ptrtoint ptr %alwayson_start.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load volatile i64, ptr %alwayson_start.i, align 8
  %32 = ptrtoint ptr %alwayson_end.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load volatile i64, ptr %alwayson_end.i, align 8
  tail call fastcc void @trace_msm_gpu_submit_retired(ptr noundef nonnull %add.ptr39, i64 noundef %24, i64 noundef %clock.0.i, i64 noundef %31, i64 noundef %33) #8
  tail call void @msm_submit_retire(ptr noundef nonnull %add.ptr39) #8
  %34 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i, align 8
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3, i32 12, i32 22
  %36 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %37 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev.i, align 8
  %dev414.i = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %call.i642.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev414.i, i32 noundef 13) #8
  %call421.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end410.i.list_del.exit.i_crit_edge

if.end410.i.list_del.exit.i_crit_edge:            ; preds = %if.end410.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end410.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr i8, ptr %6, i32 4
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i, align 4
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end410.i.list_del.exit.i_crit_edge
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i.i = getelementptr i8, ptr %6, i32 4
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock, i32 noundef %call421.i) #8
  tail call void @mutex_lock_nested(ptr noundef %active_lock.i, i32 noundef 0) #8
  %47 = ptrtoint ptr %active_submits.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %active_submits.i, align 8
  %dec.i = add i32 %48, -1
  store i32 %dec.i, ptr %active_submits.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp426.i = icmp slt i32 %dec.i, 0
  br i1 %cmp426.i, label %do.end443.i, label %list_del.exit.i.if.end449.i_crit_edge, !prof !118

list_del.exit.i.if.end449.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end449.i

do.end443.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 669, i32 noundef 9, ptr noundef null) #8
  %49 = ptrtoint ptr %active_submits.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr.i = load i32, ptr %active_submits.i, align 8
  br label %if.end449.i

if.end449.i:                                      ; preds = %do.end443.i, %list_del.exit.i.if.end449.i_crit_edge
  %50 = phi i32 [ %.pr.i, %do.end443.i ], [ %dec.i, %list_del.exit.i.if.end449.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool458.not.i = icmp eq i32 %50, 0
  br i1 %tobool458.not.i, label %if.then459.i, label %if.end449.i.if.end460.i_crit_edge

if.end449.i.if.end460.i_crit_edge:                ; preds = %if.end449.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end460.i

if.then459.i:                                     ; preds = %if.end449.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msm_devfreq_idle(ptr noundef %gpu) #8
  br label %if.end460.i

if.end460.i:                                      ; preds = %if.then459.i, %if.end449.i.if.end460.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %active_lock.i) #8
  %ref.i.i = getelementptr i8, ptr %6, i32 -16
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #8
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #8, !srcloc !121
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end460.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !107

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end460.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @__msm_gem_submit_destroy(ptr noundef %ref.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock) #8
  %52 = ptrtoint ptr %submits to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %submits, align 4
  %cmp11.not = icmp eq ptr %53, %submits
  %add.ptr = getelementptr i8, ptr %53, i32 -144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock, i32 noundef %call3) #8
  %tobool.not33 = icmp eq ptr %add.ptr, null
  %tobool.not = or i1 %cmp11.not, %tobool.not33
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.land.lhs.true_crit_edge

cleanup.land.lhs.true_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %land.lhs.true.i.while.end_crit_edge, %if.end.i.while.end_crit_edge, %for.body.while.end_crit_edge
  %inc = add nuw nsw i32 %i.041, 1
  %54 = ptrtoint ptr %nr_rings to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_rings, align 4
  %cmp = icmp slt i32 %inc, %55
  br i1 %cmp, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  %retire_event = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 37
  tail call void @__wake_up(ptr noundef %retire_event, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_gpu_submit_retired(ptr noundef %submit, i64 noundef %elapsed, i64 noundef %clock, i64 noundef %start, i64 noundef %end) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit_retired, i32 0, i32 1), ptr blockaddress(@trace_msm_gpu_submit_retired, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !106

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !107

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !126
  %call42 = tail call i32 @__traceiter_msm_gpu_submit_retired(ptr noundef null, ptr noundef %submit, i64 noundef %elapsed, i64 noundef %clock, i64 noundef %start, i64 noundef %end) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !107

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit_retired, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit_retired, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_msm_gpu_submit_retired.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_msm_gpu_submit_retired.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 84, ptr noundef nonnull @.str.28) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !111
  %31 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
declare dso_local void @msm_submit_retire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_devfreq_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_submit_retired(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__msm_gem_submit_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_quotable_cmdline(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_gpu_crashstate_capture(ptr noundef %gpu, ptr noundef readonly %submit, ptr noundef %comm, ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %gpu_state_get = getelementptr inbounds %struct.msm_gpu_funcs, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %gpu_state_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpu_state_get, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %crashstate = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 43
  %4 = ptrtoint ptr %crashstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crashstate, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call ptr %3(ptr noundef %gpu) #8
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = tail call noalias ptr @kstrdup(ptr noundef %comm, i32 noundef 3264) #8
  %comm10 = getelementptr inbounds %struct.msm_gpu_state, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %comm10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %comm10, align 4
  %call11 = tail call noalias ptr @kstrdup(ptr noundef %cmd, i32 noundef 3264) #8
  %cmd12 = getelementptr inbounds %struct.msm_gpu_state, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %cmd12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %cmd12, align 8
  %fault_info = getelementptr inbounds %struct.msm_gpu_state, ptr %call, i32 0, i32 8
  %fault_info13 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 34
  %8 = call ptr @memcpy(ptr %fault_info, ptr %fault_info13, i32 24)
  %tobool14.not = icmp eq ptr %submit, null
  br i1 %tobool14.not, label %if.end8.if.end79_crit_edge, label %for.cond.preheader

if.end8.if.end79_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

for.cond.preheader:                               ; preds = %if.end8
  %nr_bos = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 19
  %9 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp157.not = icmp eq i32 %10, 0
  br i1 %cmp157.not, label %for.cond.preheader.for.cond20.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond20.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond20.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @rd_full to i32))
  %11 = load i8, ptr @rd_full, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i135 = icmp eq i8 %11, 0
  br label %for.body

for.cond20.preheader:                             ; preds = %for.cond.for.cond20.preheader_crit_edge, %for.cond.preheader.for.cond20.preheader_crit_edge
  %nr.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.cond20.preheader_crit_edge ], [ %17, %for.cond.for.cond20.preheader_crit_edge ]
  %nr_cmds = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 18
  %12 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp21162.not = icmp eq i32 %13, 0
  br i1 %cmp21162.not, label %for.cond20.preheader.for.end30_crit_edge, label %for.body22.lr.ph

for.cond20.preheader.for.end30_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end30

for.body22.lr.ph:                                 ; preds = %for.cond20.preheader
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @rd_full to i32))
  %14 = load i8, ptr @rd_full, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i136 = icmp eq i8 %14, 0
  %cmd23 = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 21
  br label %for.body22

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %nr.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %17, %for.cond.for.body_crit_edge ]
  %i.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %inc19, %for.cond.for.body_crit_edge ]
  br i1 %tobool.not.i135, label %should_dump.exit, label %for.body.should_dump.exit.thread_crit_edge

for.body.should_dump.exit.thread_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %should_dump.exit.thread

should_dump.exit:                                 ; preds = %for.body
  %arrayidx.i = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.0158
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 8
  %and.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.i.not, label %should_dump.exit.for.cond_crit_edge, label %should_dump.exit.should_dump.exit.thread_crit_edge

should_dump.exit.should_dump.exit.thread_crit_edge: ; preds = %should_dump.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %should_dump.exit.thread

should_dump.exit.for.cond_crit_edge:              ; preds = %should_dump.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

should_dump.exit.thread:                          ; preds = %should_dump.exit.should_dump.exit.thread_crit_edge, %for.body.should_dump.exit.thread_crit_edge
  %inc155 = add i32 %nr.0161, 1
  br label %for.cond

for.cond:                                         ; preds = %should_dump.exit.thread, %should_dump.exit.for.cond_crit_edge
  %17 = phi i32 [ %inc155, %should_dump.exit.thread ], [ %nr.0161, %should_dump.exit.for.cond_crit_edge ]
  %inc19 = add nuw i32 %i.0158, 1
  %exitcond.not = icmp eq i32 %inc19, %10
  br i1 %exitcond.not, label %for.cond.for.cond20.preheader_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.cond20.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond20.preheader

for.body22:                                       ; preds = %for.cond20.for.body22_crit_edge, %for.body22.lr.ph
  %nr.2166 = phi i32 [ %nr.0.lcssa, %for.body22.lr.ph ], [ %24, %for.cond20.for.body22_crit_edge ]
  %i.1163 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc29, %for.cond20.for.body22_crit_edge ]
  br i1 %tobool.not.i136, label %should_dump.exit141, label %for.body22.should_dump.exit141.thread_crit_edge

for.body22.should_dump.exit141.thread_crit_edge:  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %should_dump.exit141.thread

should_dump.exit141:                              ; preds = %for.body22
  %18 = ptrtoint ptr %cmd23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd23, align 8
  %idx = getelementptr %struct.anon.94, ptr %19, i32 %i.1163, i32 4
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 4
  %arrayidx.i137 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %21
  %22 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i137, align 8
  %and.i138 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool1.i139.not = icmp eq i32 %and.i138, 0
  %inc26 = add i32 %nr.2166, 1
  br i1 %tobool1.i139.not, label %should_dump.exit141.for.cond20_crit_edge, label %should_dump.exit141.should_dump.exit141.thread_crit_edge

should_dump.exit141.should_dump.exit141.thread_crit_edge: ; preds = %should_dump.exit141
  call void @__sanitizer_cov_trace_pc() #10
  br label %should_dump.exit141.thread

should_dump.exit141.for.cond20_crit_edge:         ; preds = %should_dump.exit141
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond20

should_dump.exit141.thread:                       ; preds = %should_dump.exit141.should_dump.exit141.thread_crit_edge, %for.body22.should_dump.exit141.thread_crit_edge
  br label %for.cond20

for.cond20:                                       ; preds = %should_dump.exit141.thread, %should_dump.exit141.for.cond20_crit_edge
  %24 = phi i32 [ %nr.2166, %should_dump.exit141.thread ], [ %inc26, %should_dump.exit141.for.cond20_crit_edge ]
  %inc29 = add nuw i32 %i.1163, 1
  %exitcond175.not = icmp eq i32 %inc29, %13
  br i1 %exitcond175.not, label %for.cond20.for.end30_crit_edge, label %for.cond20.for.body22_crit_edge

for.cond20.for.body22_crit_edge:                  ; preds = %for.cond20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22

for.cond20.for.end30_crit_edge:                   ; preds = %for.cond20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end30

for.end30:                                        ; preds = %for.cond20.for.end30_crit_edge, %for.cond20.preheader.for.end30_crit_edge
  %nr.2.lcssa = phi i32 [ %nr.0.lcssa, %for.cond20.preheader.for.end30_crit_edge ], [ %24, %for.cond20.for.end30_crit_edge ]
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr.2.lcssa, i32 24) #8
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !118

kcalloc.exit.thread:                              ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #10
  %bos177 = getelementptr inbounds %struct.msm_gpu_state, ptr %call, i32 0, i32 10
  %27 = ptrtoint ptr %bos177 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %bos177, align 4
  br label %if.end79

if.end7.i.i:                                      ; preds = %for.end30
  %28 = extractvalue { i32, i1 } %25, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #12
  %bos = getelementptr inbounds %struct.msm_gpu_state, ptr %call, i32 0, i32 10
  %29 = ptrtoint ptr %bos to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call8.i.i, ptr %bos, align 4
  %tobool34.not168 = icmp eq ptr %call8.i.i, null
  br i1 %tobool34.not168, label %if.end7.i.i.if.end79_crit_edge, label %if.end7.i.i.land.rhs_crit_edge

if.end7.i.i.land.rhs_crit_edge:                   ; preds = %if.end7.i.i
  br label %land.rhs

if.end7.i.i.if.end79_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

land.rhs:                                         ; preds = %for.inc47.land.rhs_crit_edge, %if.end7.i.i.land.rhs_crit_edge
  %i.2169 = phi i32 [ %inc48, %for.inc47.land.rhs_crit_edge ], [ 0, %if.end7.i.i.land.rhs_crit_edge ]
  %30 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2169, i32 %31)
  %cmp36 = icmp ult i32 %i.2169, %31
  br i1 %cmp36, label %for.body37, label %for.end49

for.body37:                                       ; preds = %land.rhs
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @rd_full to i32))
  %32 = load i8, ptr @rd_full, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i142 = icmp eq i8 %32, 0
  br i1 %tobool.not.i142, label %should_dump.exit147, label %for.body37.if.then39_crit_edge

for.body37.if.then39_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

should_dump.exit147:                              ; preds = %for.body37
  %arrayidx.i143 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.2169
  %33 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i143, align 8
  %and.i144 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %tobool1.i145.not = icmp eq i32 %and.i144, 0
  br i1 %tobool1.i145.not, label %should_dump.exit147.for.inc47_crit_edge, label %should_dump.exit147.if.then39_crit_edge

should_dump.exit147.if.then39_crit_edge:          ; preds = %should_dump.exit147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

should_dump.exit147.for.inc47_crit_edge:          ; preds = %should_dump.exit147
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47

if.then39:                                        ; preds = %should_dump.exit147.if.then39_crit_edge, %for.body37.if.then39_crit_edge
  %arrayidx41 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.2169
  %35 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.2169, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %iova = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.2169, i32 2
  %38 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %iova, align 8
  %40 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx41, align 8
  tail call fastcc void @msm_gpu_crashstate_get_bo(ptr noundef %call, ptr noundef %37, i64 noundef %39, i32 noundef %41)
  br label %for.inc47

for.inc47:                                        ; preds = %if.then39, %should_dump.exit147.for.inc47_crit_edge
  %inc48 = add nuw i32 %i.2169, 1
  %42 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load ptr, ptr %bos, align 4
  %tobool34.not = icmp eq ptr %.pr, null
  br i1 %tobool34.not, label %for.inc47.if.end79_crit_edge, label %for.inc47.land.rhs_crit_edge

for.inc47.land.rhs_crit_edge:                     ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.inc47.if.end79_crit_edge:                     ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

for.end49:                                        ; preds = %land.rhs
  %43 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr185 = load ptr, ptr %bos, align 4
  %tobool52.not172 = icmp eq ptr %.pr185, null
  br i1 %tobool52.not172, label %for.end49.if.end79_crit_edge, label %land.rhs53.lr.ph

for.end49.if.end79_crit_edge:                     ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

land.rhs53.lr.ph:                                 ; preds = %for.end49
  %cmd59 = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 21
  br label %land.rhs53

land.rhs53:                                       ; preds = %if.end75.land.rhs53_crit_edge, %land.rhs53.lr.ph
  %i.3173 = phi i32 [ 0, %land.rhs53.lr.ph ], [ %inc77, %if.end75.land.rhs53_crit_edge ]
  %44 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_cmds, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3173, i32 %45)
  %cmp55 = icmp ult i32 %i.3173, %45
  br i1 %cmp55, label %for.body57, label %land.rhs53.if.end79_crit_edge

land.rhs53.if.end79_crit_edge:                    ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

for.body57:                                       ; preds = %land.rhs53
  %46 = ptrtoint ptr %cmd59 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cmd59, align 8
  %idx61 = getelementptr %struct.anon.94, ptr %47, i32 %i.3173, i32 4
  %48 = ptrtoint ptr %idx61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %idx61, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @rd_full to i32))
  %50 = load i8, ptr @rd_full, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i148 = icmp eq i8 %50, 0
  br i1 %tobool.not.i148, label %should_dump.exit153, label %for.body57.if.end75_crit_edge

for.body57.if.end75_crit_edge:                    ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

should_dump.exit153:                              ; preds = %for.body57
  %arrayidx.i149 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %49
  %51 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i149, align 8
  %and.i150 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool1.i151.not = icmp eq i32 %and.i150, 0
  br i1 %tobool1.i151.not, label %if.then66, label %should_dump.exit153.if.end75_crit_edge

should_dump.exit153.if.end75_crit_edge:           ; preds = %should_dump.exit153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then66:                                        ; preds = %should_dump.exit153
  call void @__sanitizer_cov_trace_pc() #10
  %53 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %49, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %iova71 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %49, i32 2
  %56 = ptrtoint ptr %iova71 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %iova71, align 8
  %58 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i149, align 8
  tail call fastcc void @msm_gpu_crashstate_get_bo(ptr noundef %call, ptr noundef %55, i64 noundef %57, i32 noundef %59)
  br label %if.end75

if.end75:                                         ; preds = %if.then66, %should_dump.exit153.if.end75_crit_edge, %for.body57.if.end75_crit_edge
  %inc77 = add nuw i32 %i.3173, 1
  %60 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bos, align 4
  %tobool52.not = icmp eq ptr %61, null
  br i1 %tobool52.not, label %if.end75.if.end79_crit_edge, label %if.end75.land.rhs53_crit_edge

if.end75.land.rhs53_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs53

if.end75.if.end79_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.end79:                                         ; preds = %if.end75.if.end79_crit_edge, %land.rhs53.if.end79_crit_edge, %for.end49.if.end79_crit_edge, %for.inc47.if.end79_crit_edge, %if.end7.i.i.if.end79_crit_edge, %kcalloc.exit.thread, %if.end8.if.end79_crit_edge
  %62 = ptrtoint ptr %crashstate to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call, ptr %crashstate, align 4
  %dev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %dev81 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev81, align 4
  tail call void @dev_coredumpm(ptr noundef %66, ptr noundef null, ptr noundef %gpu, i32 noundef 0, i32 noundef 3264, ptr noundef nonnull @msm_gpu_devcoredump_read, ptr noundef nonnull @msm_gpu_devcoredump_free) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_gpu_crashstate_get_bo(ptr nocapture noundef %state, ptr noundef %obj, i64 noundef %iova, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bos = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 10
  %0 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bos, align 4
  %nr_bos = getelementptr inbounds %struct.msm_gpu_state, ptr %state, i32 0, i32 9
  %2 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_bos, align 8
  %arrayidx = getelementptr %struct.msm_gpu_state_bo, ptr %1, i32 %3
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %size1 = getelementptr %struct.msm_gpu_state_bo, ptr %1, i32 %3, i32 1
  %6 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %size1, align 8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %iova, ptr %arrayidx, align 8
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %land.lhs.true

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true:                                    ; preds = %entry
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 8
  %8 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %import_attach, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 8
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %11, i32 noundef 3264, i32 noundef -1) #12
  %data = getelementptr %struct.msm_gpu_state_bo, ptr %1, i32 %3, i32 2
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %data, align 4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %if.then
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %13 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %14, ptr noundef null) #8
  %call12 = tail call ptr @msm_gem_get_vaddr_active(ptr noundef %obj) #8
  %15 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %16) #8
  tail call void @ww_mutex_unlock(ptr noundef %16) #8
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kvfree(ptr noundef %18) #8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %data, align 4
  br label %out

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 8
  %22 = call ptr @memcpy(ptr %18, ptr %call12, i32 %21)
  tail call void @msm_gem_put_vaddr(ptr noundef %obj) #8
  br label %out

out:                                              ; preds = %if.end18, %if.then15, %if.then.out_crit_edge, %land.lhs.true.out_crit_edge, %entry.out_crit_edge
  %23 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_bos, align 8
  %inc = add i32 %24, 1
  store i32 %inc, ptr %nr_bos, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpm(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gpu_devcoredump_read(ptr noundef %buffer, i64 noundef %offset, i32 noundef %count, ptr noundef %data, i32 noundef %datalen) #0 align 64 {
entry:
  %iter = alloca %struct.drm_print_iterator, align 4
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #8
  %0 = getelementptr inbounds %struct.drm_print_iterator, ptr %iter, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drm_print_iterator, ptr %iter, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drm_print_iterator, ptr %iter, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #8
  %3 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %4 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %5 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.msm_gpu, ptr %data, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %crashstate.i = getelementptr inbounds %struct.msm_gpu, ptr %data, i32 0, i32 43
  %6 = ptrtoint ptr %crashstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crashstate.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %msm_gpu_crashstate_get.exit.thread, label %if.then.i

msm_gpu_crashstate_get.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #8, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !118

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.msm_gpu_crashstate_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !107

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.msm_gpu_crashstate_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_crashstate_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef %.sink.i.i.i.i.i) #8
  br label %msm_gpu_crashstate_get.exit

msm_gpu_crashstate_get.exit:                      ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.msm_gpu_crashstate_get.exit_crit_edge
  %10 = ptrtoint ptr %crashstate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crashstate.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %msm_gpu_crashstate_get.exit.cleanup_crit_edge, label %if.end

msm_gpu_crashstate_get.exit.cleanup_crit_edge:    ; preds = %msm_gpu_crashstate_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %msm_gpu_crashstate_get.exit
  %12 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buffer, ptr %iter, align 4
  %conv = trunc i64 %offset to i32
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %0, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %count, ptr %1, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %2, align 4, !noalias !128
  %16 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @__drm_printfn_coredump, ptr %p, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @__drm_puts_coredump, ptr %3, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %iter, ptr %4, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %5, align 4
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.35) #8
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.36) #8
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.37) #8
  %time = getelementptr inbounds %struct.msm_gpu_state, ptr %11, i32 0, i32 1
  %20 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %time, align 8
  %tv_nsec = getelementptr inbounds %struct.msm_gpu_state, ptr %11, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tv_nsec, align 8
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.38, i64 noundef %21, i32 noundef %23) #8
  %comm = getelementptr inbounds %struct.msm_gpu_state, ptr %11, i32 0, i32 6
  %24 = ptrtoint ptr %comm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %comm, align 4
  %tobool4.not = icmp eq ptr %25, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.39, ptr noundef nonnull %25) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %cmd = getelementptr inbounds %struct.msm_gpu_state, ptr %11, i32 0, i32 7
  %26 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd, align 8
  %tobool8.not = icmp eq ptr %27, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.40, ptr noundef nonnull %27) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %funcs = getelementptr inbounds %struct.msm_gpu, ptr %data, i32 0, i32 3
  %28 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %funcs, align 4
  %show = getelementptr inbounds %struct.msm_gpu_funcs, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %show, align 4
  call void %31(ptr noundef %data, ptr noundef nonnull %11, ptr noundef nonnull %p) #8
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %32 = ptrtoint ptr %crashstate.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crashstate.i, align 4
  %tobool.not.i30 = icmp eq ptr %33, null
  br i1 %tobool.not.i30, label %if.end11.msm_gpu_crashstate_put.exit_crit_edge, label %if.then.i31

if.end11.msm_gpu_crashstate_put.exit_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_crashstate_put.exit

if.then.i31:                                      ; preds = %if.end11
  %34 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs, align 4
  %gpu_state_put.i = getelementptr inbounds %struct.msm_gpu_funcs, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %gpu_state_put.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gpu_state_put.i, align 4
  %call.i = call i32 %37(ptr noundef nonnull %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i31.msm_gpu_crashstate_put.exit_crit_edge, label %if.then3.i

if.then.i31.msm_gpu_crashstate_put.exit_crit_edge: ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_crashstate_put.exit

if.then3.i:                                       ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %crashstate.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %crashstate.i, align 4
  br label %msm_gpu_crashstate_put.exit

msm_gpu_crashstate_put.exit:                      ; preds = %if.then3.i, %if.then.i31.msm_gpu_crashstate_put.exit_crit_edge, %if.end11.msm_gpu_crashstate_put.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 4
  %sub = sub i32 %count, %40
  br label %cleanup

cleanup:                                          ; preds = %msm_gpu_crashstate_put.exit, %msm_gpu_crashstate_get.exit.cleanup_crit_edge, %msm_gpu_crashstate_get.exit.thread
  %retval.0 = phi i32 [ %sub, %msm_gpu_crashstate_put.exit ], [ 0, %msm_gpu_crashstate_get.exit.cleanup_crit_edge ], [ 0, %msm_gpu_crashstate_get.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_gpu_devcoredump_free(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.msm_gpu, ptr %data, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %crashstate.i = getelementptr inbounds %struct.msm_gpu, ptr %data, i32 0, i32 43
  %0 = ptrtoint ptr %crashstate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crashstate.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.msm_gpu_crashstate_put.exit_crit_edge, label %if.then.i

entry.msm_gpu_crashstate_put.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_crashstate_put.exit

if.then.i:                                        ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.msm_gpu, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs.i, align 4
  %gpu_state_put.i = getelementptr inbounds %struct.msm_gpu_funcs, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %gpu_state_put.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpu_state_put.i, align 4
  %call.i = tail call i32 %5(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.msm_gpu_crashstate_put.exit_crit_edge, label %if.then3.i

if.then.i.msm_gpu_crashstate_put.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpu_crashstate_put.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %crashstate.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %crashstate.i, align 4
  br label %msm_gpu_crashstate_put.exit

msm_gpu_crashstate_put.exit:                      ; preds = %if.then3.i, %if.then.i.msm_gpu_crashstate_put.exit_crit_edge, %entry.msm_gpu_crashstate_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_coredump(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_coredump(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_bulk_get_clock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !47, !48, !50, !52, !53, !54, !55, !57, !58, !60, !62, !64, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94}
!llvm.named.register.sp = !{!96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 101, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 153, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 841, i32 41}
!6 = !{ptr @msm_gpu_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 851, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @msm_gpu_init.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 852, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @msm_gpu_init.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 853, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @msm_gpu_init.__key.8, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 858, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @msm_gpu_init.__key.10, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 860, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 874, i32 3}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 881, i32 3}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 889, i32 36}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 890, i32 2}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 895, i32 48}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 896, i32 2}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 900, i32 47}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 901, i32 2}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 914, i32 3}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 927, i32 3}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 931, i32 43}
!45 = distinct !{null, !46, !"__print_once", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 934, i32 3}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 945, i32 4}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 170, i32 1}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!54 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 31, i32 4}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 39, i32 4}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 157, i32 1}
!64 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 56, i32 1}
!67 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 366, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 384, i32 4}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 388, i32 5}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 205, i32 17}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 206, i32 17}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 207, i32 17}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 208, i32 17}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 211, i32 18}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 213, i32 18}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 515, i32 3}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 517, i32 3}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 519, i32 3}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 794, i32 19}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/msm/msm_gpu.c", i32 797, i32 19}
!96 = !{!"sp"}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148768038, i64 2148768043, i64 2148768056, i64 2148768100, i64 2148768134, i64 2148768155}
!107 = !{!"branch_weights", i32 2000, i32 1}
!108 = !{i64 2157389718}
!109 = !{i64 2157393980}
!110 = !{i64 2150112340}
!111 = !{i64 2150113376}
!112 = !{i64 2157373874}
!113 = !{i64 2157374077}
!114 = !{i8 0, i8 2}
!115 = !{i64 1630646, i64 1630673, i64 1630695, i64 1630723}
!116 = !{i64 1631054, i64 1631081, i64 1631114, i64 1631135, i64 1631162, i64 1631188}
!117 = !{i64 2148214132, i64 2148214164, i64 2148214193, i64 2148214227, i64 2148214258, i64 2148214281}
!118 = !{!"branch_weights", i32 1, i32 2000}
!119 = !{!"auto-init"}
!120 = !{i64 2148302133}
!121 = !{i64 2148216597, i64 2148216629, i64 2148216658, i64 2148216692, i64 2148216723, i64 2148216746}
!122 = !{i64 2150054238}
!123 = !{i64 1630529, i64 1630556}
!124 = !{i64 1630869, i64 1630896, i64 1630930, i64 1630951}
!125 = !{i64 2149116190, i64 2149116470, i64 2149116804, i64 2149117138}
!126 = !{i64 2157272544}
!127 = !{i64 2157272819}
!128 = !{!129}
!129 = distinct !{!129, !130, !"drm_coredump_printer: %agg.result"}
!130 = distinct !{!130, !"drm_coredump_printer"}
