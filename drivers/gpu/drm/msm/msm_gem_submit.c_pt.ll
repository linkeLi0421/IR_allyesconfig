; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/msm_gem_submit.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gem_submit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.19 }
%union.anon.19 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.msm_gpu_submitqueue = type { i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.idr, %struct.mutex, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i32, %struct.kref, i32 }
%union.anon.2 = type { i64 }
%struct.anon.104 = type { i32, i32, i64, i32, i32, i32, ptr }
%struct.msm_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, %struct.list_head, %struct.ww_acquire_ctx, i32, ptr, ptr, i32, ptr, ptr, i8, i8, i8, ptr, ptr, i32, i32, i32, ptr, [0 x %struct.anon.105] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.83, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.83 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.anon.105 = type { i32, %union.anon.106, i64 }
%union.anon.106 = type { ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.93 = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.109, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.109 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.77, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.55 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_msm_gem_submit = type { i32, i32, i32, i32, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.103, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.103 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.32, ptr }
%union.anon.32 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.upid = type { i32, ptr }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.msm_submit_post_dep = type { ptr, i64, ptr }
%struct.msm_file_private = type { %struct.rwlock_t, %struct.list_head, i32, ptr, %struct.kref, i32, [12 x ptr] }
%struct.drm_msm_gem_submit_syncobj = type { i32, i32, i64 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_msm_gem_submit_bo = type { i32, i32, i64 }
%struct.drm_msm_gem_submit_cmd = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_msm_gem_submit_reloc = type { i32, i32, i32, i32, i64 }

@msm_ioctl_gem_submit.ident = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@reservation_ww_class = external dso_local global %struct.ww_class, align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid cmdstream size: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@__tracepoint_msm_gpu_submit = external dso_local global %struct.tracepoint, align 4
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/msm/msm_gpu_trace.h\00", [60 x i8] zeroinitializer }, align 32
@trace_msm_gpu_submit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid flags: %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid handle %u at index %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid type: %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"non-aligned cmdstream buffer size: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"handle %u at index %u already on submit list\0A\00", [50 x i8] zeroinitializer }, align 32
@submit_lock_objects.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/msm/msm_gem_submit.c\00", [59 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/ww_mutex.h\00", [39 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ctx->done_acquire\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!ctx->contending_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid buffer index: %u (out of %u)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"non-aligned cmdstream buffer: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to map: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"non-aligned reloc offset: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid offset %u at reloc %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx->acquired\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 711, i32 18 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 857, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [39 x i8] c"../drivers/gpu/drm/msm/msm_gpu_trace.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 11, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 108, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 230, i32 6 }
@___asan_gen_.43 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 214, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 156, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 120, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 142, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 186, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 191, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 283, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 309, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 171, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 173, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 333, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 410, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 437, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 448, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 459, i32 4 }
@___asan_gen_.91 = private constant [40 x i8] c"../drivers/gpu/drm/msm/msm_gem_submit.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 470, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [28 x i8] c"../include/linux/ww_mutex.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 191, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @msm_ioctl_gem_submit.ident, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_ioctl_gem_submit.ident to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__msm_gem_submit_destroy(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fence_id = getelementptr i8, ptr %kref, i32 100
  %0 = ptrtoint ptr %fence_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fence_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %queue = getelementptr i8, ptr %kref, i32 104
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 8
  %lock = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 8
  %fence_idr = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %fence_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fence_id, align 4
  %call = tail call ptr @idr_remove(ptr noundef %fence_idr, i32 noundef %7) #10
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue, align 8
  %lock4 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %9, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %lock4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %user_fence = getelementptr i8, ptr %kref, i32 96
  %10 = ptrtoint ptr %user_fence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_fence, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.dma_fence_put.exit_crit_edge, label %if.then.i

if.end.dma_fence_put.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !63

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  tail call void @dma_fence_release(ptr noundef %refcount.i) #10
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end.dma_fence_put.exit_crit_edge
  %hw_fence = getelementptr i8, ptr %kref, i32 92
  %13 = ptrtoint ptr %hw_fence to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_fence, align 4
  %tobool.not.i19 = icmp eq ptr %14, null
  br i1 %tobool.not.i19, label %dma_fence_put.exit.dma_fence_put.exit29_crit_edge, label %if.then.i24

dma_fence_put.exit.dma_fence_put.exit29_crit_edge: ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit29

if.then.i24:                                      ; preds = %dma_fence_put.exit
  %refcount.i20 = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 6
  %call.i.i.i.i.i.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i20, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %refcount.i20, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i20, ptr %refcount.i20, i32 1, ptr elementtype(i32) %refcount.i20) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i22 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i22)
  %cmp.i.i.i.i.i23 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i22, 1
  br i1 %cmp.i.i.i.i.i23, label %if.then.i.i28, label %if.end5.i.i.i.i.i26

if.end5.i.i.i.i.i26:                              ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i22)
  %.not.i.i.i.i.i25 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i22, 0
  br i1 %.not.i.i.i.i.i25, label %if.end5.i.i.i.i.i26.dma_fence_put.exit29_crit_edge, label %if.then10.i.i.i.i.i27, !prof !63

if.end5.i.i.i.i.i26.dma_fence_put.exit29_crit_edge: ; preds = %if.end5.i.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit29

if.then10.i.i.i.i.i27:                            ; preds = %if.end5.i.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i20, i32 noundef 3) #10
  br label %dma_fence_put.exit29

if.then.i.i28:                                    ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  tail call void @dma_fence_release(ptr noundef %refcount.i20) #10
  br label %dma_fence_put.exit29

dma_fence_put.exit29:                             ; preds = %if.then.i.i28, %if.then10.i.i.i.i.i27, %if.end5.i.i.i.i.i26.dma_fence_put.exit29_crit_edge, %dma_fence_put.exit.dma_fence_put.exit29_crit_edge
  %pid = getelementptr i8, ptr %kref, i32 108
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pid, align 4
  tail call void @put_pid(ptr noundef %17) #10
  %queue5 = getelementptr i8, ptr %kref, i32 104
  %18 = ptrtoint ptr %queue5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %queue5, align 8
  %tobool.not.i30 = icmp eq ptr %19, null
  br i1 %tobool.not.i30, label %dma_fence_put.exit29.msm_submitqueue_put.exit_crit_edge, label %if.then.i34

dma_fence_put.exit29.msm_submitqueue_put.exit_crit_edge: ; preds = %dma_fence_put.exit29
  call void @__sanitizer_cov_trace_pc() #12
  br label %msm_submitqueue_put.exit

if.then.i34:                                      ; preds = %dma_fence_put.exit29
  %ref.i = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %19, i32 0, i32 9
  %call.i.i.i.i.i.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i32 = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i32)
  %cmp.i.i.i.i.i33 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i32, 1
  br i1 %cmp.i.i.i.i.i33, label %if.then.i.i38, label %if.end5.i.i.i.i.i36

if.end5.i.i.i.i.i36:                              ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i32)
  %.not.i.i.i.i.i35 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i32, 0
  br i1 %.not.i.i.i.i.i35, label %if.end5.i.i.i.i.i36.msm_submitqueue_put.exit_crit_edge, label %if.then10.i.i.i.i.i37, !prof !63

if.end5.i.i.i.i.i36.msm_submitqueue_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %msm_submitqueue_put.exit

if.then10.i.i.i.i.i37:                            ; preds = %if.end5.i.i.i.i.i36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #10
  br label %msm_submitqueue_put.exit

if.then.i.i38:                                    ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  tail call void @msm_submitqueue_destroy(ptr noundef %ref.i) #10
  br label %msm_submitqueue_put.exit

msm_submitqueue_put.exit:                         ; preds = %if.then.i.i38, %if.then10.i.i.i.i.i37, %if.end5.i.i.i.i.i36.msm_submitqueue_put.exit_crit_edge, %dma_fence_put.exit29.msm_submitqueue_put.exit_crit_edge
  %nr_cmds = getelementptr i8, ptr %kref, i32 124
  %21 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp39.not = icmp eq i32 %22, 0
  br i1 %cmp39.not, label %msm_submitqueue_put.exit.for.end_crit_edge, label %for.body.lr.ph

msm_submitqueue_put.exit.for.end_crit_edge:       ; preds = %msm_submitqueue_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %msm_submitqueue_put.exit
  %cmd = getelementptr i8, ptr %kref, i32 136
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd, align 8
  %relocs = getelementptr %struct.anon.104, ptr %24, i32 %i.040, i32 6
  %25 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %relocs, align 4
  tail call void @kfree(ptr noundef %26) #10
  %inc = add nuw i32 %i.040, 1
  %27 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_cmds, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %msm_submitqueue_put.exit.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %kref, i32 -128
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_submit_retire(ptr nocapture noundef %submit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_bos = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 19
  %0 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.not = icmp eq i32 %1, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %aspace.i = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %drm_gem_object_put.exit.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %drm_gem_object_put.exit.for.body_crit_edge ]
  %2 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.013, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %6, ptr noundef null) #10
  %arrayidx.i = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.013
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 8
  %and4.i = and i32 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aspace.i, align 4
  tail call void @msm_gem_unpin_iova_locked(ptr noundef %8, ptr noundef %12) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %and5.i = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.submit_cleanup_bo.exit_crit_edge, label %if.then7.i

if.end.i.submit_cleanup_bo.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %submit_cleanup_bo.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msm_gem_active_put(ptr noundef %8) #10
  br label %submit_cleanup_bo.exit

submit_cleanup_bo.exit:                           ; preds = %if.then7.i, %if.end.i.submit_cleanup_bo.exit_crit_edge
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 8
  %and16.i = and i32 %14, -12289
  store i32 %and16.i, ptr %arrayidx.i, align 8
  %15 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %16) #10
  tail call void @ww_mutex_unlock(ptr noundef %16) #10
  %tobool.not.i9 = icmp eq ptr %4, null
  br i1 %tobool.not.i9, label %submit_cleanup_bo.exit.drm_gem_object_put.exit_crit_edge, label %if.then.i10

submit_cleanup_bo.exit.drm_gem_object_put.exit_crit_edge: ; preds = %submit_cleanup_bo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then.i10:                                      ; preds = %submit_cleanup_bo.exit
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !63

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  tail call void @drm_gem_object_free(ptr noundef nonnull %4) #10
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %submit_cleanup_bo.exit.drm_gem_object_put.exit_crit_edge
  %inc = add nuw i32 %i.013, 1
  %18 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_bos, align 8
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %drm_gem_object_put.exit.for.body_crit_edge, label %drm_gem_object_put.exit.for.end_crit_edge

drm_gem_object_put.exit.for.end_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

drm_gem_object_put.exit.for.body_crit_edge:       ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %drm_gem_object_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_ioctl_gem_submit(ptr noundef %dev, ptr noundef %data, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %gpu1 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %gpu1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpu1, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !51) #10
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 78
  %10 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %thread_pid.i, align 16
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.get_pid.exit_crit_edge, label %if.then.i

entry.get_pid.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #10, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !66

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !63

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef %.sink.i.i.i.i) #10
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %entry.get_pid.exit_crit_edge
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %get_pid.exit.cleanup242_crit_edge, label %if.end

get_pid.exit.cleanup242_crit_edge:                ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup242

if.end:                                           ; preds = %get_pid.exit
  %pad = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 13
  %14 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not = icmp eq i32 %15, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup242_crit_edge

if.end.cleanup242_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup242

if.end6:                                          ; preds = %if.end
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 8
  %18 = and i32 %17, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %if.end14, label %if.end6.cleanup242_crit_edge

if.end6.cleanup242_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup242

if.end14:                                         ; preds = %if.end6
  %and16 = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end22_crit_edge, label %if.then18

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then18:                                        ; preds = %if.end14
  %call19 = tail call zeroext i1 @capable(i32 noundef 17) #10
  br i1 %call19, label %if.then18.if.end22_crit_edge, label %if.then18.cleanup242_crit_edge

if.then18.cleanup242_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup242

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %if.then18.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %queueid = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 7
  %20 = ptrtoint ptr %queueid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %queueid, align 4
  %call23 = tail call ptr @msm_submitqueue_get(ptr noundef %3, i32 noundef %21) #10
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end22.cleanup242_crit_edge, label %if.end26

if.end22.cleanup242_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup242

if.end26:                                         ; preds = %if.end22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msm_ioctl_gem_submit.ident, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr nonnull @msm_ioctl_gem_submit.ident, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @msm_ioctl_gem_submit.ident, ptr nonnull @msm_ioctl_gem_submit.ident, i32 1, ptr nonnull elementtype(i32) @msm_ioctl_gem_submit.ident) #10, !srcloc !68
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  %sub = add i32 %asmresult.i.i.i.i, -1
  %ring_nr = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %call23, i32 0, i32 2
  %23 = ptrtoint ptr %ring_nr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ring_nr, align 4
  %arrayidx = getelementptr %struct.msm_gpu, ptr %5, i32 0, i32 13, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool.not.i, label %if.end26.pid_nr.exit_crit_edge, label %if.then.i409

if.end26.pid_nr.exit_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %pid_nr.exit

if.then.i409:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %numbers.i = getelementptr inbounds %struct.pid, ptr %11, i32 0, i32 7
  %27 = ptrtoint ptr %numbers.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %numbers.i, align 4
  br label %pid_nr.exit

pid_nr.exit:                                      ; preds = %if.then.i409, %if.end26.pid_nr.exit_crit_edge
  %nr.0.i = phi i32 [ %28, %if.then.i409 ], [ 0, %if.end26.pid_nr.exit_crit_edge ]
  %id = getelementptr inbounds %struct.msm_ringbuffer, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  %nr_bos = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 2
  %31 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_bos, align 8
  %nr_cmds = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 3
  %33 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_cmds, align 4
  tail call fastcc void @trace_msm_gpu_submit(i32 noundef %nr.0.i, i32 noundef %30, i32 noundef %sub, i32 noundef %32, i32 noundef %34)
  %lock = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %call23, i32 0, i32 8
  %call29 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %pid_nr.exit.cleanup242_crit_edge

pid_nr.exit.cleanup242_crit_edge:                 ; preds = %pid_nr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup242

if.end32:                                         ; preds = %pid_nr.exit
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data, align 8
  %and34 = and i32 %36, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end41_crit_edge, label %if.then36

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then36:                                        ; preds = %if.end32
  %call37 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end208.thread, label %if.then36.if.end41_crit_edge

if.then36.if.end41_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end208.thread:                                 ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup242

if.end41:                                         ; preds = %if.then36.if.end41_crit_edge, %if.end32.if.end41_crit_edge
  %out_fence_fd.0 = phi i32 [ %call37, %if.then36.if.end41_crit_edge ], [ -1, %if.end32.if.end41_crit_edge ]
  %37 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_bos, align 8
  %39 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_cmds, align 4
  %call44 = tail call fastcc ptr @submit_create(ptr noundef %dev, ptr noundef nonnull %5, ptr noundef nonnull %call23, i32 noundef %38, i32 noundef %40)
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %call44 to i32
  br label %out_unlock

if.end48:                                         ; preds = %if.end41
  %pid49 = getelementptr inbounds %struct.msm_gem_submit, ptr %call44, i32 0, i32 12
  %42 = ptrtoint ptr %pid49 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %11, ptr %pid49, align 4
  %ident = getelementptr inbounds %struct.msm_gem_submit, ptr %call44, i32 0, i32 20
  %43 = ptrtoint ptr %ident to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub, ptr %ident, align 4
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data, align 8
  %and51 = and i32 %45, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end48.if.end54_crit_edge, label %if.then53

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %in_rb = getelementptr inbounds %struct.msm_gem_submit, ptr %call44, i32 0, i32 15
  %46 = ptrtoint ptr %in_rb to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %in_rb, align 2
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end48.if.end54_crit_edge
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data, align 8
  %and56 = and i32 %48, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end54.if.end67_crit_edge, label %if.then58

if.end54.if.end67_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then58:                                        ; preds = %if.end54
  %fence_fd = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 6
  %49 = ptrtoint ptr %fence_fd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fence_fd, align 8
  %call59 = tail call ptr @sync_file_get_fence(i32 noundef %50) #10
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.then58.out_unlock_crit_edge, label %if.end62

if.then58.out_unlock_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end62:                                         ; preds = %if.then58
  %call63 = tail call i32 @drm_sched_job_add_dependency(ptr noundef %call44, ptr noundef nonnull %call59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end62.if.end67_crit_edge, label %if.end62.out_unlock_crit_edge

if.end62.out_unlock_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.end67:                                         ; preds = %if.end62.if.end67_crit_edge, %if.end54.if.end67_crit_edge
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data, align 8
  %and69 = and i32 %52, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end67.if.end77_crit_edge, label %if.then71

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then71:                                        ; preds = %if.end67
  %in_syncobjs = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 8
  %53 = ptrtoint ptr %in_syncobjs to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %in_syncobjs, align 8
  %nr_in_syncobjs = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 10
  %55 = ptrtoint ptr %nr_in_syncobjs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_in_syncobjs, align 8
  %syncobj_stride = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 12
  %57 = ptrtoint ptr %syncobj_stride to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %syncobj_stride, align 8
  %call72 = tail call fastcc ptr @msm_parse_deps(ptr noundef %call44, ptr noundef %file, i64 noundef %54, i32 noundef %56, i32 noundef %58)
  %cmp.i410 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i410, label %if.then74, label %if.then71.if.end77_crit_edge

if.then71.if.end77_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then74:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %call72 to i32
  br label %out_unlock

if.end77:                                         ; preds = %if.then71.if.end77_crit_edge, %if.end67.if.end77_crit_edge
  %syncobjs_to_reset.0 = phi ptr [ %call72, %if.then71.if.end77_crit_edge ], [ null, %if.end67.if.end77_crit_edge ]
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data, align 8
  %and79 = and i32 %61, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end77.if.end88_crit_edge, label %if.then81

if.end77.if.end88_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then81:                                        ; preds = %if.end77
  %out_syncobjs = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 9
  %62 = ptrtoint ptr %out_syncobjs to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %out_syncobjs, align 8
  %nr_out_syncobjs = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 11
  %64 = ptrtoint ptr %nr_out_syncobjs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr_out_syncobjs, align 4
  %syncobj_stride82 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 12
  %66 = ptrtoint ptr %syncobj_stride82 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %syncobj_stride82, align 8
  %call83 = tail call fastcc ptr @msm_parse_post_deps(ptr noundef %dev, ptr noundef %file, i64 noundef %63, i32 noundef %65, i32 noundef %67)
  %cmp.i411 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i411, label %if.then85, label %if.then81.if.end88_crit_edge

if.then81.if.end88_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then85:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %call83 to i32
  br label %out_unlock

if.end88:                                         ; preds = %if.then81.if.end88_crit_edge, %if.end77.if.end88_crit_edge
  %post_deps.0 = phi ptr [ %call83, %if.then81.if.end88_crit_edge ], [ null, %if.end77.if.end88_crit_edge ]
  %call89 = tail call fastcc i32 @submit_lookup_objects(ptr noundef %call44, ptr noundef %data, ptr noundef %file)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end88.out_crit_edge

if.end88.out_crit_edge:                           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end92:                                         ; preds = %if.end88
  %call93 = tail call fastcc i32 @submit_lookup_cmds(ptr noundef %call44, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end92.out_crit_edge

if.end92.out_crit_edge:                           ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end96:                                         ; preds = %if.end92
  %ticket = getelementptr inbounds %struct.msm_gem_submit, ptr %call44, i32 0, i32 6
  tail call fastcc void @ww_acquire_init(ptr noundef %ticket)
  %call97 = tail call fastcc i32 @submit_lock_objects(ptr noundef %call44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end96.if.then200_crit_edge

if.end96.if.then200_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then200

if.end100:                                        ; preds = %if.end96
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool103 = icmp slt i32 %70, 0
  %call105 = tail call fastcc i32 @submit_fence_sync(ptr noundef %call44, i1 noundef zeroext %tobool103)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.end100.if.then200_crit_edge

if.end100.if.then200_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then200

if.end108:                                        ; preds = %if.end100
  %call109 = tail call fastcc i32 @submit_pin_objects(ptr noundef %call44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %for.cond.preheader, label %if.end108.if.then200_crit_edge

if.end108.if.then200_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then200

for.cond.preheader:                               ; preds = %if.end108
  %71 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nr_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp114482.not = icmp eq i32 %72, 0
  br i1 %cmp114482.not, label %for.cond.preheader.land.lhs.true_crit_edge, label %for.body.lr.ph

for.cond.preheader.land.lhs.true_crit_edge:       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmd = getelementptr inbounds %struct.msm_gem_submit, ptr %call44, i32 0, i32 21
  %nr_bos.i = getelementptr inbounds %struct.msm_gem_submit, ptr %call44, i32 0, i32 19
  %valid = getelementptr inbounds %struct.msm_gem_submit, ptr %call44, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0483 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %73 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cmd, align 8
  %idx = getelementptr %struct.anon.104, ptr %74, i32 %i.0483, i32 4
  %75 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %idx, align 4
  %77 = ptrtoint ptr %nr_bos.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr_bos.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %76)
  %cmp.not.i = icmp ugt i32 %78, %76
  br i1 %cmp.not.i, label %if.end119, label %submit_bo.exit

submit_bo.exit:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %76, i32 noundef %78) #10
  br label %if.then200

if.end119:                                        ; preds = %for.body
  %79 = getelementptr %struct.msm_gem_submit, ptr %call44, i32 0, i32 22, i32 %76, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %iova8.i = getelementptr %struct.msm_gem_submit, ptr %call44, i32 0, i32 22, i32 %76, i32 2
  %82 = ptrtoint ptr %iova8.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %iova8.i, align 8
  %84 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cmd, align 8
  %size = getelementptr %struct.anon.104, ptr %85, i32 %i.0483, i32 1
  %86 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool122.not = icmp eq i32 %87, 0
  br i1 %tobool122.not, label %if.end119.if.then131_crit_edge, label %lor.lhs.false

if.end119.if.then131_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then131

lor.lhs.false:                                    ; preds = %if.end119
  %offset = getelementptr %struct.anon.104, ptr %85, i32 %i.0483, i32 3
  %88 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %offset, align 8
  %add = add i32 %89, %87
  %size129 = getelementptr inbounds %struct.drm_gem_object, ptr %81, i32 0, i32 5
  %90 = ptrtoint ptr %size129 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %size129, align 8
  %div404 = lshr i32 %91, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div404)
  %cmp130 = icmp ugt i32 %add, %div404
  br i1 %cmp130, label %lor.lhs.false.if.then131_crit_edge, label %if.end135

lor.lhs.false.if.then131_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then131

if.then131:                                       ; preds = %lor.lhs.false.if.then131_crit_edge, %if.end119.if.then131_crit_edge
  %mul = shl i32 %87, 2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %mul) #10
  br label %if.then200

if.end135:                                        ; preds = %lor.lhs.false
  %mul139 = shl i32 %89, 2
  %conv = zext i32 %mul139 to i64
  %add140 = add i64 %83, %conv
  %iova143 = getelementptr %struct.anon.104, ptr %85, i32 %i.0483, i32 2
  %92 = ptrtoint ptr %iova143 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %add140, ptr %iova143, align 8
  %93 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %valid, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool144.not = icmp eq i8 %94, 0
  br i1 %tobool144.not, label %if.end146, label %if.end135.for.inc_crit_edge

if.end135.for.inc_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end146:                                        ; preds = %if.end135
  %95 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cmd, align 8
  %offset149 = getelementptr %struct.anon.104, ptr %96, i32 %i.0483, i32 3
  %97 = ptrtoint ptr %offset149 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %offset149, align 8
  %mul150 = shl i32 %98, 2
  %nr_relocs = getelementptr %struct.anon.104, ptr %96, i32 %i.0483, i32 5
  %99 = ptrtoint ptr %nr_relocs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nr_relocs, align 8
  %relocs = getelementptr %struct.anon.104, ptr %96, i32 %i.0483, i32 6
  %101 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %relocs, align 4
  %call155 = tail call fastcc i32 @submit_reloc(ptr noundef %call44, ptr noundef %81, i32 noundef %mul150, i32 noundef %100, ptr noundef %102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end146.for.inc_crit_edge, label %if.end146.if.then200_crit_edge

if.end146.if.then200_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then200

if.end146.for.inc_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end146.for.inc_crit_edge, %if.end135.for.inc_crit_edge
  %inc = add nuw i32 %i.0483, 1
  %103 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %nr_cmds, align 4
  %cmp114 = icmp ult i32 %inc, %104
  br i1 %cmp114, label %for.inc.for.body_crit_edge, label %for.inc.land.lhs.true_crit_edge

for.inc.land.lhs.true_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

land.lhs.true:                                    ; preds = %for.inc.land.lhs.true_crit_edge, %for.cond.preheader.land.lhs.true_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.land.lhs.true_crit_edge ], [ %inc, %for.inc.land.lhs.true_crit_edge ]
  %nr_cmds163 = getelementptr inbounds %struct.msm_gem_submit, ptr %call44, i32 0, i32 18
  %105 = ptrtoint ptr %nr_cmds163 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %i.0.lcssa, ptr %nr_cmds163, align 4
  tail call void @drm_sched_job_arm(ptr noundef %call44) #10
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %call44, i32 0, i32 3
  %106 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_fence, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %107, i32 0, i32 1
  %call166 = tail call fastcc ptr @dma_fence_get(ptr noundef %finished)
  %user_fence = getelementptr inbounds %struct.msm_gem_submit, ptr %call44, i32 0, i32 9
  %108 = ptrtoint ptr %user_fence to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %finished, ptr %user_fence, align 8
  %fence_idr = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %call23, i32 0, i32 7
  %call168 = tail call i32 @idr_alloc_cyclic(ptr noundef %fence_idr, ptr noundef %finished, i32 noundef 1, i32 noundef 2147483647, i32 noundef 3264) #10
  %fence_id = getelementptr inbounds %struct.msm_gem_submit, ptr %call44, i32 0, i32 10
  %109 = tail call i32 @llvm.smax.i32(i32 %call168, i32 0)
  %110 = ptrtoint ptr %fence_id to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %fence_id, align 4
  %111 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data, align 8
  %and179 = and i32 %112, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %land.lhs.true.if.end189_crit_edge, label %if.then181

land.lhs.true.if.end189_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end189

if.then181:                                       ; preds = %land.lhs.true
  %113 = ptrtoint ptr %user_fence to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %user_fence, align 8
  %call183 = tail call ptr @sync_file_create(ptr noundef %114) #10
  %tobool184.not = icmp eq ptr %call183, null
  br i1 %tobool184.not, label %if.then181.if.end189_crit_edge, label %if.else

if.then181.if.end189_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end189

if.else:                                          ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %call183 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %call183, align 4
  tail call void @fd_install(i32 noundef %out_fence_fd.0, ptr noundef %116) #10
  %fence_fd187 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 6
  %117 = ptrtoint ptr %fence_fd187 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %out_fence_fd.0, ptr %fence_fd187, align 8
  br label %if.end189

if.end189:                                        ; preds = %if.else, %if.then181.if.end189_crit_edge, %land.lhs.true.if.end189_crit_edge
  %ret.5 = phi i32 [ 0, %land.lhs.true.if.end189_crit_edge ], [ 0, %if.else ], [ -12, %if.then181.if.end189_crit_edge ]
  tail call fastcc void @submit_attach_object_fences(ptr noundef %call44)
  tail call fastcc void @msm_gem_submit_get(ptr noundef %call44)
  tail call void @drm_sched_entity_push_job(ptr noundef %call44) #10
  %118 = ptrtoint ptr %fence_id to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %fence_id, align 4
  %fence = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 1
  %120 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %fence, align 4
  %121 = load i32, ptr %fence_id, align 4
  %last_fence = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %call23, i32 0, i32 4
  %122 = ptrtoint ptr %last_fence to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %last_fence, align 4
  %nr_in_syncobjs193 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 10
  %123 = ptrtoint ptr %nr_in_syncobjs193 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %nr_in_syncobjs193, align 8
  tail call fastcc void @msm_reset_syncobjs(ptr noundef %syncobjs_to_reset.0, i32 noundef %124)
  %nr_out_syncobjs194 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 11
  %125 = ptrtoint ptr %nr_out_syncobjs194 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %nr_out_syncobjs194, align 4
  %127 = ptrtoint ptr %user_fence to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %user_fence, align 8
  tail call fastcc void @msm_process_post_deps(ptr noundef %post_deps.0, i32 noundef %126, ptr noundef %128)
  br label %if.then200

out:                                              ; preds = %if.end92.out_crit_edge, %if.end88.out_crit_edge
  %ret.6 = phi i32 [ %call89, %if.end88.out_crit_edge ], [ %call93, %if.end92.out_crit_edge ]
  tail call fastcc void @submit_cleanup(ptr noundef %call44, i1 noundef zeroext true)
  br label %out_unlock

if.then200:                                       ; preds = %if.end189, %if.end146.if.then200_crit_edge, %if.then131, %submit_bo.exit, %if.end108.if.then200_crit_edge, %if.end100.if.then200_crit_edge, %if.end96.if.then200_crit_edge
  %ret.6.ph = phi i32 [ %ret.5, %if.end189 ], [ %call109, %if.end108.if.then200_crit_edge ], [ %call105, %if.end100.if.then200_crit_edge ], [ %call97, %if.end96.if.then200_crit_edge ], [ -22, %submit_bo.exit ], [ -22, %if.then131 ], [ %call155, %if.end146.if.then200_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.6.ph)
  %tobool196440 = icmp ne i32 %ret.6.ph, 0
  tail call fastcc void @submit_cleanup(ptr noundef %call44, i1 noundef zeroext %tobool196440)
  tail call fastcc void @ww_acquire_fini(ptr noundef %ticket)
  br label %out_unlock

out_unlock:                                       ; preds = %if.then200, %out, %if.then85, %if.then74, %if.end62.out_unlock_crit_edge, %if.then58.out_unlock_crit_edge, %if.then46
  %submit.0 = phi ptr [ null, %if.then46 ], [ %call44, %if.then74 ], [ %call44, %if.then85 ], [ %call44, %if.then200 ], [ %call44, %out ], [ %call44, %if.then58.out_unlock_crit_edge ], [ %call44, %if.end62.out_unlock_crit_edge ]
  %post_deps.1 = phi ptr [ null, %if.then46 ], [ null, %if.then74 ], [ %call83, %if.then85 ], [ %post_deps.0, %if.then200 ], [ %post_deps.0, %out ], [ null, %if.then58.out_unlock_crit_edge ], [ null, %if.end62.out_unlock_crit_edge ]
  %syncobjs_to_reset.1 = phi ptr [ null, %if.then46 ], [ %call72, %if.then74 ], [ %syncobjs_to_reset.0, %if.then85 ], [ %syncobjs_to_reset.0, %if.then200 ], [ %syncobjs_to_reset.0, %out ], [ null, %if.then58.out_unlock_crit_edge ], [ null, %if.end62.out_unlock_crit_edge ]
  %ret.7 = phi i32 [ %41, %if.then46 ], [ %59, %if.then74 ], [ %68, %if.then85 ], [ %ret.6.ph, %if.then200 ], [ %ret.6, %out ], [ -22, %if.then58.out_unlock_crit_edge ], [ %call63, %if.end62.out_unlock_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.7)
  %tobool203.not = icmp ne i32 %ret.7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %out_fence_fd.0)
  %cmp205 = icmp sgt i32 %out_fence_fd.0, -1
  %or.cond = select i1 %tobool203.not, i1 %cmp205, i1 false
  br i1 %or.cond, label %if.then207, label %out_unlock.if.end208_crit_edge

out_unlock.if.end208_crit_edge:                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end208

if.then207:                                       ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @put_unused_fd(i32 noundef %out_fence_fd.0) #10
  br label %if.end208

if.end208:                                        ; preds = %if.then207, %out_unlock.if.end208_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %tobool210.not = icmp eq ptr %submit.0, null
  br i1 %tobool210.not, label %if.end208.out_post_unlock_crit_edge, label %if.then211

if.end208.out_post_unlock_crit_edge:              ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_post_unlock

if.then211:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @msm_gem_submit_put(ptr noundef nonnull %submit.0)
  br label %out_post_unlock

out_post_unlock:                                  ; preds = %if.then211, %if.end208.out_post_unlock_crit_edge
  %tobool.not.i413 = icmp eq ptr %post_deps.1, null
  %cmp.i414 = icmp ugt ptr %post_deps.1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i413, %cmp.i414
  br i1 %spec.select.i, label %out_post_unlock.if.end225_crit_edge, label %for.cond215.preheader

out_post_unlock.if.end225_crit_edge:              ; preds = %out_post_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end225

for.cond215.preheader:                            ; preds = %out_post_unlock
  %nr_out_syncobjs216 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 11
  %129 = ptrtoint ptr %nr_out_syncobjs216 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nr_out_syncobjs216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp217485.not = icmp eq i32 %130, 0
  br i1 %cmp217485.not, label %for.cond215.preheader.for.end224_crit_edge, label %for.cond215.preheader.for.body219_crit_edge

for.cond215.preheader.for.body219_crit_edge:      ; preds = %for.cond215.preheader
  br label %for.body219

for.cond215.preheader.for.end224_crit_edge:       ; preds = %for.cond215.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end224

for.body219:                                      ; preds = %drm_syncobj_put.exit.for.body219_crit_edge, %for.cond215.preheader.for.body219_crit_edge
  %i.1486 = phi i32 [ %inc223, %drm_syncobj_put.exit.for.body219_crit_edge ], [ 0, %for.cond215.preheader.for.body219_crit_edge ]
  %arrayidx220 = getelementptr %struct.msm_submit_post_dep, ptr %post_deps.1, i32 %i.1486
  %chain = getelementptr %struct.msm_submit_post_dep, ptr %post_deps.1, i32 %i.1486, i32 2
  %131 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %chain, align 8
  tail call void @kfree(ptr noundef %132) #10
  %133 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx220, align 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %134, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %134, i32 1, i32 3, i32 1) #10
  %135 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %134, ptr %134, i32 1, ptr elementtype(i32) %134) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %135, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.body219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.drm_syncobj_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !63

if.end5.i.i.i.i.i.drm_syncobj_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_syncobj_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %134, i32 noundef 3) #10
  br label %drm_syncobj_put.exit

if.then.i.i:                                      ; preds = %for.body219
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  tail call void @drm_syncobj_free(ptr noundef %134) #10
  br label %drm_syncobj_put.exit

drm_syncobj_put.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.drm_syncobj_put.exit_crit_edge
  %inc223 = add nuw i32 %i.1486, 1
  %136 = ptrtoint ptr %nr_out_syncobjs216 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %nr_out_syncobjs216, align 4
  %cmp217 = icmp ult i32 %inc223, %137
  br i1 %cmp217, label %drm_syncobj_put.exit.for.body219_crit_edge, label %drm_syncobj_put.exit.for.end224_crit_edge

drm_syncobj_put.exit.for.end224_crit_edge:        ; preds = %drm_syncobj_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end224

drm_syncobj_put.exit.for.body219_crit_edge:       ; preds = %drm_syncobj_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body219

for.end224:                                       ; preds = %drm_syncobj_put.exit.for.end224_crit_edge, %for.cond215.preheader.for.end224_crit_edge
  tail call void @kfree(ptr noundef %post_deps.1) #10
  br label %if.end225

if.end225:                                        ; preds = %for.end224, %out_post_unlock.if.end225_crit_edge
  %tobool.not.i415 = icmp eq ptr %syncobjs_to_reset.1, null
  %cmp.i416 = icmp ugt ptr %syncobjs_to_reset.1, inttoptr (i32 -4096 to ptr)
  %spec.select.i417 = or i1 %tobool.not.i415, %cmp.i416
  br i1 %spec.select.i417, label %if.end225.cleanup242_crit_edge, label %for.cond228.preheader

if.end225.cleanup242_crit_edge:                   ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup242

for.cond228.preheader:                            ; preds = %if.end225
  %nr_in_syncobjs229 = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %data, i32 0, i32 10
  %138 = ptrtoint ptr %nr_in_syncobjs229 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %nr_in_syncobjs229, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp230487.not = icmp eq i32 %139, 0
  br i1 %cmp230487.not, label %for.cond228.preheader.for.end240_crit_edge, label %for.cond228.preheader.for.body232_crit_edge

for.cond228.preheader.for.body232_crit_edge:      ; preds = %for.cond228.preheader
  br label %for.body232

for.cond228.preheader.for.end240_crit_edge:       ; preds = %for.cond228.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end240

for.body232:                                      ; preds = %for.inc238.for.body232_crit_edge, %for.cond228.preheader.for.body232_crit_edge
  %i.2488 = phi i32 [ %inc239, %for.inc238.for.body232_crit_edge ], [ 0, %for.cond228.preheader.for.body232_crit_edge ]
  %arrayidx233 = getelementptr ptr, ptr %syncobjs_to_reset.1, i32 %i.2488
  %140 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx233, align 4
  %tobool234.not = icmp eq ptr %141, null
  br i1 %tobool234.not, label %for.body232.for.inc238_crit_edge, label %if.then235

for.body232.for.inc238_crit_edge:                 ; preds = %for.body232
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc238

if.then235:                                       ; preds = %for.body232
  %call.i.i.i.i.i.i.i418 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %141, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr nonnull %141, i32 1, i32 3, i32 1) #10
  %142 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %141, ptr nonnull %141, i32 1, ptr nonnull elementtype(i32) %141) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i419 = extractvalue { i32, i32, i32 } %142, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i419)
  %cmp.i.i.i.i.i420 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i419, 1
  br i1 %cmp.i.i.i.i.i420, label %if.then.i.i424, label %if.end5.i.i.i.i.i422

if.end5.i.i.i.i.i422:                             ; preds = %if.then235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i419)
  %.not.i.i.i.i.i421 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i419, 0
  br i1 %.not.i.i.i.i.i421, label %if.end5.i.i.i.i.i422.for.inc238_crit_edge, label %if.then10.i.i.i.i.i423, !prof !63

if.end5.i.i.i.i.i422.for.inc238_crit_edge:        ; preds = %if.end5.i.i.i.i.i422
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc238

if.then10.i.i.i.i.i423:                           ; preds = %if.end5.i.i.i.i.i422
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %141, i32 noundef 3) #10
  br label %for.inc238

if.then.i.i424:                                   ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  tail call void @drm_syncobj_free(ptr noundef nonnull %141) #10
  br label %for.inc238

for.inc238:                                       ; preds = %if.then.i.i424, %if.then10.i.i.i.i.i423, %if.end5.i.i.i.i.i422.for.inc238_crit_edge, %for.body232.for.inc238_crit_edge
  %inc239 = add nuw i32 %i.2488, 1
  %143 = ptrtoint ptr %nr_in_syncobjs229 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %nr_in_syncobjs229, align 8
  %cmp230 = icmp ult i32 %inc239, %144
  br i1 %cmp230, label %for.inc238.for.body232_crit_edge, label %for.inc238.for.end240_crit_edge

for.inc238.for.end240_crit_edge:                  ; preds = %for.inc238
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end240

for.inc238.for.body232_crit_edge:                 ; preds = %for.inc238
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body232

for.end240:                                       ; preds = %for.inc238.for.end240_crit_edge, %for.cond228.preheader.for.end240_crit_edge
  tail call void @kfree(ptr noundef %syncobjs_to_reset.1) #10
  br label %cleanup242

cleanup242:                                       ; preds = %for.end240, %if.end225.cleanup242_crit_edge, %if.end208.thread, %pid_nr.exit.cleanup242_crit_edge, %if.end22.cleanup242_crit_edge, %if.then18.cleanup242_crit_edge, %if.end6.cleanup242_crit_edge, %if.end.cleanup242_crit_edge, %get_pid.exit.cleanup242_crit_edge
  %retval.0 = phi i32 [ -6, %get_pid.exit.cleanup242_crit_edge ], [ -22, %if.end.cleanup242_crit_edge ], [ -22, %if.end6.cleanup242_crit_edge ], [ -22, %if.then18.cleanup242_crit_edge ], [ -2, %if.end22.cleanup242_crit_edge ], [ %ret.7, %for.end240 ], [ %ret.7, %if.end225.cleanup242_crit_edge ], [ %call37, %if.end208.thread ], [ %call29, %pid_nr.exit.cleanup242_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_submitqueue_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_gpu_submit(i32 noundef %pid, i32 noundef %ringid, i32 noundef %id, i32 noundef %nr_bos, i32 noundef %nr_cmds) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit, i32 0, i32 1), ptr blockaddress(@trace_msm_gpu_submit, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !63

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !51) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  %call42 = tail call i32 @__traceiter_msm_gpu_submit(ptr noundef null, i32 noundef %pid, i32 noundef %ringid, i32 noundef %id, i32 noundef %nr_bos, i32 noundef %nr_cmds) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %13 = tail call i32 @llvm.read_register.i32(metadata !51) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !51) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !63

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !51) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_msm_gpu_submit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_msm_gpu_submit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 31, ptr noundef nonnull @.str.2) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %31 = tail call i32 @llvm.read_register.i32(metadata !51) #10
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
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @submit_create(ptr noundef %dev, ptr noundef %gpu, ptr noundef %queue, i32 noundef %nr_bos, i32 noundef %nr_cmds) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_bos, i32 16) #10
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 272) #10
  %3 = zext i32 %spec.select.i to i64
  %conv = select i1 %1, i64 4294967295, i64 %3
  %conv1 = zext i32 %nr_cmds to i64
  %mul = shl nuw nsw i64 %conv1, 5
  %add = add nuw nsw i64 %conv, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add)
  %cmp = icmp ugt i64 %add, 4294967295
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %conv4 = trunc i64 %add to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv4, i32 noundef 77248) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end8.i.i
  %entity = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %queue, i32 0, i32 10
  %4 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity, align 4
  %call9 = tail call i32 @drm_sched_job_init(ptr noundef nonnull %call9.i.i, ptr noundef %5, ptr noundef %queue) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  %6 = inttoptr i32 %call9 to ptr
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %ref = getelementptr inbounds %struct.msm_gem_submit, ptr %call9.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  %7 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %ref, align 128
  %dev14 = getelementptr inbounds %struct.msm_gem_submit, ptr %call9.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev14, align 4
  %ctx = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %queue, i32 0, i32 5
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 4
  %aspace = getelementptr inbounds %struct.msm_file_private, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aspace, align 4
  %aspace15 = getelementptr inbounds %struct.msm_gem_submit, ptr %call9.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %aspace15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %aspace15, align 4
  %gpu16 = getelementptr inbounds %struct.msm_gem_submit, ptr %call9.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %gpu16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %gpu, ptr %gpu16, align 8
  %arrayidx = getelementptr %struct.msm_gem_submit, ptr %call9.i.i, i32 0, i32 22, i32 %nr_bos
  %cmd = getelementptr inbounds %struct.msm_gem_submit, ptr %call9.i.i, i32 0, i32 21
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %cmd, align 8
  %queue17 = getelementptr inbounds %struct.msm_gem_submit, ptr %call9.i.i, i32 0, i32 11
  %16 = ptrtoint ptr %queue17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %queue, ptr %queue17, align 8
  %ring_nr = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %queue, i32 0, i32 2
  %17 = ptrtoint ptr %ring_nr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ring_nr, align 4
  %arrayidx18 = getelementptr %struct.msm_gpu, ptr %gpu, i32 0, i32 13, i32 %18
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx18, align 4
  %ring = getelementptr inbounds %struct.msm_gem_submit, ptr %call9.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %ring, align 4
  %fault_dumped = getelementptr inbounds %struct.msm_gem_submit, ptr %call9.i.i, i32 0, i32 13
  %22 = ptrtoint ptr %fault_dumped to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %fault_dumped, align 16
  %node = getelementptr inbounds %struct.msm_gem_submit, ptr %call9.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %node, ptr %node, align 16
  %prev.i = getelementptr inbounds %struct.msm_gem_submit, ptr %call9.i.i, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %node, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.then11 ], [ %call9.i.i, %if.end13 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_get_fence(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_add_dependency(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @msm_parse_deps(ptr noundef %submit, ptr noundef %file, i64 noundef %in_syncobjs_addr, i32 noundef %nr_in_syncobjs, i32 noundef %syncobj_stride) unnamed_addr #0 align 64 {
entry:
  %syncobj_desc = alloca %struct.drm_msm_gem_submit_syncobj, align 8
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %syncobj_desc) #10
  %0 = call ptr @memset(ptr %syncobj_desc, i32 0, i32 16)
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_in_syncobjs, i32 4) #10
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %entry.cleanup57_crit_edge, label %if.end7.i.i, !prof !66

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

if.end7.i.i:                                      ; preds = %entry
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 77248) #13
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup57_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup57_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_in_syncobjs)
  %cmp20.not = icmp eq i32 %nr_in_syncobjs, 0
  br i1 %cmp20.not, label %for.cond.preheader.cleanup57_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup57_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %4 = trunc i64 %in_syncobjs_addr to i32
  %5 = call i32 @llvm.umin.i32(i32 %syncobj_stride, i32 16)
  %point = getelementptr inbounds %struct.drm_msm_gem_submit_syncobj, ptr %syncobj_desc, i32 0, i32 2
  %dev = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 2
  %flags = getelementptr inbounds %struct.drm_msm_gem_submit_syncobj, ptr %syncobj_desc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = mul i32 %i.021, %syncobj_stride
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #10
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !76
  %conv5 = add i32 %mul, %4
  %7 = inttoptr i32 %conv5 to ptr
  call void @__check_object_size(ptr noundef nonnull %syncobj_desc, i32 noundef %5, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %for.body.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body.if.end.i.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %8 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %5, i32 -1226833920) #14, !srcloc !77
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !63

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %syncobj_desc, i32 noundef %5) #10
  %9 = call i32 @llvm.read_register.i32(metadata !51) #10
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !78
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %syncobj_desc, ptr noundef %7, i32 noundef %5) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #10, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %for.body.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end12, label %if.then11.i.i, !prof !63

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %syncobj_desc, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %for.end

if.end12:                                         ; preds = %if.end.i.i
  %13 = ptrtoint ptr %point to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %point, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool13.not = icmp eq i64 %14, 0
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %land.lhs.true

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end12
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 10
  %21 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %20, 64
  %and2.i.i = and i32 %and.i.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i4.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i4.not, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %tobool17.not = icmp ult i32 %24, 2
  br i1 %tobool17.not, label %if.end19, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end19:                                         ; preds = %if.end16
  %25 = ptrtoint ptr %syncobj_desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %syncobj_desc, align 8
  %call21 = call i32 @drm_syncobj_find_fence(ptr noundef %file, i32 noundef %26, i64 noundef %14, i64 noundef 0, ptr noundef nonnull %fence) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end24:                                         ; preds = %if.end19
  %27 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fence, align 4
  %call25 = call i32 @drm_sched_job_add_dependency(ptr noundef %submit, ptr noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.for.end_crit_edge

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end28:                                         ; preds = %if.end24
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and30 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.for.inc_crit_edge, label %if.then32

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then32:                                        ; preds = %if.end28
  %31 = ptrtoint ptr %syncobj_desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %syncobj_desc, align 8
  %call34 = call ptr @drm_syncobj_find(ptr noundef %file, i32 noundef %32) #10
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.021
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call34, ptr %arrayidx, align 4
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %if.then32.for.end_crit_edge, label %if.then32.for.inc_crit_edge

if.then32.for.inc_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then32.for.end_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %if.then32.for.inc_crit_edge, %if.end28.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #10
  %inc = add nuw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %nr_in_syncobjs
  br i1 %exitcond.not, label %for.inc.cleanup57_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup57_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

for.end:                                          ; preds = %if.then32.for.end_crit_edge, %if.end24.for.end_crit_edge, %if.end19.for.end_crit_edge, %if.end16.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.then11.i.i
  %ret.1.ph = phi i32 [ -14, %if.then11.i.i ], [ -22, %if.then32.for.end_crit_edge ], [ %call25, %if.end24.for.end_crit_edge ], [ %call21, %if.end19.for.end_crit_edge ], [ -22, %if.end16.for.end_crit_edge ], [ -95, %land.lhs.true.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #10
  br label %for.body46

for.body46:                                       ; preds = %for.inc52.for.body46_crit_edge, %for.end
  %j.024 = phi i32 [ 0, %for.end ], [ %inc53, %for.inc52.for.body46_crit_edge ]
  %arrayidx47 = getelementptr ptr, ptr %call8.i.i, i32 %j.024
  %34 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %35, null
  br i1 %tobool48.not, label %for.body46.for.inc52_crit_edge, label %if.then49

for.body46.for.inc52_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc52

if.then49:                                        ; preds = %for.body46
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %35, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void @llvm.prefetch.p0(ptr nonnull %35, i32 1, i32 3, i32 1) #10
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %35, ptr nonnull %35, i32 1, ptr nonnull elementtype(i32) %35) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i5, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc52_crit_edge, label %if.then10.i.i.i.i.i, !prof !63

if.end5.i.i.i.i.i.for.inc52_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc52

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %35, i32 noundef 3) #10
  br label %for.inc52

if.then.i.i5:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  call void @drm_syncobj_free(ptr noundef nonnull %35) #10
  br label %for.inc52

for.inc52:                                        ; preds = %if.then.i.i5, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc52_crit_edge, %for.body46.for.inc52_crit_edge
  %inc53 = add nuw i32 %j.024, 1
  %exitcond30 = icmp eq i32 %j.024, %i.021
  br i1 %exitcond30, label %for.end54, label %for.inc52.for.body46_crit_edge

for.inc52.for.body46_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body46

for.end54:                                        ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  %37 = inttoptr i32 %ret.1.ph to ptr
  br label %cleanup57

cleanup57:                                        ; preds = %for.end54, %for.inc.cleanup57_crit_edge, %for.cond.preheader.cleanup57_crit_edge, %if.end7.i.i.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.0 = phi ptr [ %37, %for.end54 ], [ inttoptr (i32 -12 to ptr), %if.end7.i.i.cleanup57_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup57_crit_edge ], [ %call8.i.i, %for.cond.preheader.cleanup57_crit_edge ], [ %call8.i.i, %for.inc.cleanup57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %syncobj_desc) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @msm_parse_post_deps(ptr nocapture noundef readonly %dev, ptr noundef %file, i64 noundef %syncobjs_addr, i32 noundef %nr_syncobjs, i32 noundef %syncobj_stride) unnamed_addr #0 align 64 {
entry:
  %syncobj_desc = alloca %struct.drm_msm_gem_submit_syncobj, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %syncobj_desc) #10
  %0 = call ptr @memset(ptr %syncobj_desc, i32 0, i32 16)
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_syncobjs, i32 24) #10
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %entry.cleanup60_crit_edge, label %if.end7.i, !prof !66

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

if.end7.i:                                        ; preds = %entry
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 76992) #13
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup60_crit_edge, label %for.cond.preheader

if.end7.i.cleanup60_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_syncobjs)
  %cmp113.not = icmp eq i32 %nr_syncobjs, 0
  br i1 %cmp113.not, label %for.cond.preheader.cleanup60_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup60_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %4 = trunc i64 %syncobjs_addr to i32
  %5 = call i32 @llvm.umin.i32(i32 %syncobj_stride, i32 16)
  %point = getelementptr inbounds %struct.drm_msm_gem_submit_syncobj, ptr %syncobj_desc, i32 0, i32 2
  %flags = getelementptr inbounds %struct.drm_msm_gem_submit_syncobj, ptr %syncobj_desc, i32 0, i32 1
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cmp115 = phi i1 [ true, %for.body.lr.ph ], [ %cmp, %for.inc.for.body_crit_edge ]
  %i.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = mul i32 %i.0114, %syncobj_stride
  %conv5 = add i32 %mul, %4
  %6 = inttoptr i32 %conv5 to ptr
  call void @__check_object_size(ptr noundef nonnull %syncobj_desc, i32 noundef %5, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %for.body.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body.if.end.i.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 %5, i32 -1226833920) #14, !srcloc !77
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !63

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %syncobj_desc, i32 noundef %5) #10
  %8 = call i32 @llvm.read_register.i32(metadata !51) #10
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !78
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %syncobj_desc, ptr noundef %6, i32 noundef %5) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #10, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %for.body.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end12, label %if.then11.i.i, !prof !63

if.then11.i.i:                                    ; preds = %if.end.i.i
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %syncobj_desc, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br i1 %cmp115, label %if.then11.i.i.for.body45.preheader_crit_edge, label %if.then11.i.i.cleanup60_crit_edge

if.then11.i.i.cleanup60_crit_edge:                ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

if.then11.i.i.for.body45.preheader_crit_edge:     ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45.preheader

if.end12:                                         ; preds = %if.end.i.i
  %12 = ptrtoint ptr %point to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %point, align 8
  %arrayidx = getelementptr %struct.msm_submit_post_dep, ptr %call8.i, i32 %i.0114
  %point13 = getelementptr %struct.msm_submit_post_dep, ptr %call8.i, i32 %i.0114, i32 1
  %14 = ptrtoint ptr %point13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %point13, align 8
  %chain = getelementptr %struct.msm_submit_post_dep, ptr %call8.i, i32 %i.0114, i32 2
  %15 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %chain, align 8
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool19.not = icmp eq i64 %13, 0
  br i1 %tobool19.not, label %if.end17.if.end32_crit_edge, label %if.then20

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then20:                                        ; preds = %if.end17
  %18 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %driver_features.i.i, align 4
  %22 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %21, 64
  %and2.i.i = and i32 %and.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i99.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i99.not, label %if.then20.for.end_crit_edge, label %if.end23

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end23:                                         ; preds = %if.then20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i100 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 128) #15
  %25 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i100, ptr %chain, align 8
  %tobool29.not = icmp eq ptr %call7.i.i100, null
  br i1 %tobool29.not, label %if.end23.for.end_crit_edge, label %if.end23.if.end32_crit_edge

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end32:                                         ; preds = %if.end23.if.end32_crit_edge, %if.end17.if.end32_crit_edge
  %26 = ptrtoint ptr %syncobj_desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %syncobj_desc, align 8
  %call33 = call ptr @drm_syncobj_find(ptr noundef %file, i32 noundef %27) #10
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call33, ptr %arrayidx, align 8
  %tobool37.not = icmp eq ptr %call33, null
  br i1 %tobool37.not, label %if.end32.for.end_crit_edge, label %for.inc

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %if.end32
  %inc = add nuw i32 %i.0114, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %nr_syncobjs)
  %cmp = icmp ult i32 %inc, %nr_syncobjs
  %exitcond.not = icmp eq i32 %inc, %nr_syncobjs
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end32.for.end_crit_edge, %if.end23.for.end_crit_edge, %if.then20.for.end_crit_edge, %if.end12.for.end_crit_edge
  %i.0112 = phi i32 [ %i.0114, %if.end32.for.end_crit_edge ], [ %i.0114, %if.end23.for.end_crit_edge ], [ %i.0114, %if.then20.for.end_crit_edge ], [ %i.0114, %if.end12.for.end_crit_edge ], [ %nr_syncobjs, %for.inc.for.end_crit_edge ]
  %cmp110 = phi i1 [ %cmp115, %if.end32.for.end_crit_edge ], [ %cmp115, %if.end23.for.end_crit_edge ], [ %cmp115, %if.then20.for.end_crit_edge ], [ %cmp115, %if.end12.for.end_crit_edge ], [ %cmp, %for.inc.for.end_crit_edge ]
  %ret.2 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end32.for.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end23.for.end_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.then20.for.end_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end12.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  br i1 %cmp110, label %for.end.for.body45.preheader_crit_edge, label %for.end.cleanup60_crit_edge

for.end.cleanup60_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

for.end.for.body45.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45.preheader

for.body45.preheader:                             ; preds = %for.end.for.body45.preheader_crit_edge, %if.then11.i.i.for.body45.preheader_crit_edge
  %ret.2145 = phi ptr [ inttoptr (i32 -14 to ptr), %if.then11.i.i.for.body45.preheader_crit_edge ], [ %ret.2, %for.end.for.body45.preheader_crit_edge ]
  %i.0112144 = phi i32 [ %i.0114, %if.then11.i.i.for.body45.preheader_crit_edge ], [ %i.0112, %for.end.for.body45.preheader_crit_edge ]
  br label %for.body45

for.body45:                                       ; preds = %for.inc55.for.body45_crit_edge, %for.body45.preheader
  %j.0130 = phi i32 [ %inc56, %for.inc55.for.body45_crit_edge ], [ 0, %for.body45.preheader ]
  %arrayidx46 = getelementptr %struct.msm_submit_post_dep, ptr %call8.i, i32 %j.0130
  %chain47 = getelementptr %struct.msm_submit_post_dep, ptr %call8.i, i32 %j.0130, i32 2
  %29 = ptrtoint ptr %chain47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chain47, align 8
  call void @kfree(ptr noundef %30) #10
  %31 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx46, align 8
  %tobool50.not = icmp eq ptr %32, null
  br i1 %tobool50.not, label %for.body45.for.inc55_crit_edge, label %if.then51

for.body45.for.inc55_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc55

if.then51:                                        ; preds = %for.body45
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %32, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void @llvm.prefetch.p0(ptr nonnull %32, i32 1, i32 3, i32 1) #10
  %33 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %32, ptr nonnull %32, i32 1, ptr nonnull elementtype(i32) %32) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i101, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc55_crit_edge, label %if.then10.i.i.i.i.i, !prof !63

if.end5.i.i.i.i.i.for.inc55_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc55

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %32, i32 noundef 3) #10
  br label %for.inc55

if.then.i.i101:                                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  call void @drm_syncobj_free(ptr noundef nonnull %32) #10
  br label %for.inc55

for.inc55:                                        ; preds = %if.then.i.i101, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc55_crit_edge, %for.body45.for.inc55_crit_edge
  %inc56 = add i32 %j.0130, 1
  %cmp43.not = icmp ugt i32 %inc56, %i.0112144
  br i1 %cmp43.not, label %for.end57, label %for.inc55.for.body45_crit_edge

for.inc55.for.body45_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45

for.end57:                                        ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call8.i) #10
  br label %cleanup60

cleanup60:                                        ; preds = %for.end57, %for.end.cleanup60_crit_edge, %if.then11.i.i.cleanup60_crit_edge, %for.cond.preheader.cleanup60_crit_edge, %if.end7.i.cleanup60_crit_edge, %entry.cleanup60_crit_edge
  %retval.0 = phi ptr [ %ret.2145, %for.end57 ], [ %call8.i, %for.end.cleanup60_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.i.cleanup60_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup60_crit_edge ], [ %call8.i, %if.then11.i.i.cleanup60_crit_edge ], [ %call8.i, %for.cond.preheader.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %syncobj_desc) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_lookup_objects(ptr nocapture noundef %submit, ptr nocapture noundef readonly %args, ptr noundef %file) unnamed_addr #0 align 64 {
entry:
  %submit_bo = alloca %struct.drm_msm_gem_submit_bo, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_bos = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp92.not = icmp eq i32 %1, 0
  br i1 %cmp92.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.drm_msm_gem_submit_bo, ptr %submit_bo, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_msm_gem_submit_bo, ptr %submit_bo, i32 0, i32 2
  %bos = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %args, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %submit_bo) #10
  %4 = call ptr @memset(ptr %submit_bo, i32 255, i32 16)
  %5 = ptrtoint ptr %bos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bos, align 8
  %mul = shl i32 %i.093, 4
  %7 = trunc i64 %6 to i32
  %conv4 = add i32 %mul, %7
  %8 = inttoptr i32 %conv4 to ptr
  %arrayidx = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.093
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx, align 8
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %for.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

for.body.if.then11.i.i_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 16, i32 -1226833920) #14, !srcloc !77
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !63

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %submit_bo, i32 noundef 16) #10
  %11 = call i32 @llvm.read_register.i32(metadata !51) #10
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !78
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %submit_bo, ptr noundef %8, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !63

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %for.body.if.then11.i.i_crit_edge
  %res.0.i.i78 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %for.body.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i78
  %add.ptr.i.i = getelementptr i8, ptr %submit_bo, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i78)
  br label %cleanup.thread

if.end:                                           ; preds = %if.end.i.i
  %15 = ptrtoint ptr %submit_bo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %submit_bo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %16)
  %tobool7.not = icmp ugt i32 %16, 7
  %and9 = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond = or i1 %tobool7.not, %tobool10.not
  br i1 %or.cond, label %if.then11, label %for.inc

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %16) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then11, %if.then11.i.i
  %ret.1.ph = phi i32 [ -22, %if.then11 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %submit_bo) #10
  br label %cleanup47

for.inc:                                          ; preds = %if.end
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %2, align 4
  %19 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.093, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %19, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %arrayidx, align 8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %3, align 8
  %iova = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.093, i32 2
  %24 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %iova, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %submit_bo) #10
  %inc = add nuw i32 %i.093, 1
  %25 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_bos, align 8
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %table_lock = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %table_lock) #10
  %27 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp2594.not = icmp eq i32 %28, 0
  br i1 %cmp2594.not, label %for.end.out_unlock_crit_edge, label %for.body27.lr.ph

for.end.out_unlock_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

for.body27.lr.ph:                                 ; preds = %for.end
  %object_idr = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 14
  br label %for.body27

for.body27:                                       ; preds = %for.inc42.for.body27_crit_edge, %for.body27.lr.ph
  %i.295 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc43, %for.inc42.for.body27_crit_edge ]
  %29 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.295, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %call30 = call ptr @idr_find(ptr noundef %object_idr, i32 noundef %31) #10
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %cleanup39, label %if.end35

if.end35:                                         ; preds = %for.body27
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call30, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %call30, i32 1, i32 3, i32 1) #10
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call30, ptr nonnull %call30, i32 1, ptr nonnull elementtype(i32) %call30) #10, !srcloc !65
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end35.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !66

if.end35.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end35
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.for.inc42_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !63

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.for.inc42_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc42

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end35.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end35.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %call30, i32 noundef %.sink.i.i.i.i.i) #10
  br label %for.inc42

cleanup39:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %29, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %35, i32 noundef %i.295) #10
  br label %out_unlock

for.inc42:                                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.for.inc42_crit_edge
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call30, ptr %29, align 4
  %inc43 = add nuw i32 %i.295, 1
  %37 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_bos, align 8
  %cmp25 = icmp ult i32 %inc43, %38
  br i1 %cmp25, label %for.inc42.for.body27_crit_edge, label %for.inc42.out_unlock_crit_edge

for.inc42.out_unlock_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

for.inc42.for.body27_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body27

out_unlock:                                       ; preds = %for.inc42.out_unlock_crit_edge, %cleanup39, %for.end.out_unlock_crit_edge
  %i.288 = phi i32 [ %i.295, %cleanup39 ], [ 0, %for.end.out_unlock_crit_edge ], [ %inc43, %for.inc42.out_unlock_crit_edge ]
  %ret.4 = phi i32 [ -22, %cleanup39 ], [ 0, %for.end.out_unlock_crit_edge ], [ 0, %for.inc42.out_unlock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %table_lock) #10
  br label %cleanup47

cleanup47:                                        ; preds = %out_unlock, %cleanup.thread
  %ret.5 = phi i32 [ %ret.4, %out_unlock ], [ %ret.1.ph, %cleanup.thread ]
  %i.3 = phi i32 [ %i.288, %out_unlock ], [ 0, %cleanup.thread ]
  %nr_bos46 = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 19
  %39 = ptrtoint ptr %nr_bos46 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %i.3, ptr %nr_bos46, align 8
  ret i32 %ret.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_lookup_cmds(ptr nocapture noundef readonly %submit, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %submit_cmd = alloca %struct.drm_msm_gem_submit_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_cmds = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %args, i32 0, i32 3
  %0 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp74.not = icmp eq i32 %1, 0
  br i1 %cmp74.not, label %entry.cleanup49_crit_edge, label %for.body.lr.ph

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.drm_msm_gem_submit_cmd, ptr %submit_cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_msm_gem_submit_cmd, ptr %submit_cmd, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_msm_gem_submit_cmd, ptr %submit_cmd, i32 0, i32 3
  %5 = getelementptr inbounds %struct.drm_msm_gem_submit_cmd, ptr %submit_cmd, i32 0, i32 5
  %6 = getelementptr inbounds %struct.drm_msm_gem_submit_cmd, ptr %submit_cmd, i32 0, i32 6
  %cmds = getelementptr inbounds %struct.drm_msm_gem_submit, ptr %args, i32 0, i32 5
  %cmd = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %submit_cmd) #10
  %7 = call ptr @memset(ptr %submit_cmd, i32 255, i32 32)
  %8 = ptrtoint ptr %cmds to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cmds, align 8
  %mul = shl i32 %i.075, 5
  %10 = trunc i64 %9 to i32
  %conv4 = add i32 %mul, %10
  %11 = inttoptr i32 %conv4 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %for.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

for.body.if.then11.i.i_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 32, i32 -1226833920) #14, !srcloc !77
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !63

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %submit_cmd, i32 noundef 32) #10
  %13 = call i32 @llvm.read_register.i32(metadata !51) #10
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !78
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %submit_cmd, ptr noundef %11, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !63

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %for.body.if.then11.i.i_crit_edge
  %res.0.i.i34 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %for.body.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i34
  %add.ptr.i.i = getelementptr i8, ptr %submit_cmd, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i34)
  br label %cleanup.thread

if.end:                                           ; preds = %if.end.i.i
  %17 = ptrtoint ptr %submit_cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %submit_cmd, align 8
  %.off = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.epilog, label %cleanup.thread39

cleanup.thread39:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %18) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %submit_cmd) #10
  br label %cleanup49

sw.epilog:                                        ; preds = %if.end
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %4, align 4
  %rem = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool6.not = icmp eq i32 %rem, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %20) #10
  br label %cleanup.thread

if.end9:                                          ; preds = %sw.epilog
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd, align 8
  %arrayidx = getelementptr %struct.anon.104, ptr %22, i32 %i.075
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %18, ptr %arrayidx, align 8
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %4, align 4
  %div1 = lshr i32 %25, 2
  %26 = load ptr, ptr %cmd, align 8
  %size15 = getelementptr %struct.anon.104, ptr %26, i32 %i.075, i32 1
  %27 = ptrtoint ptr %size15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div1, ptr %size15, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %3, align 8
  %div162 = lshr i32 %29, 2
  %30 = load ptr, ptr %cmd, align 8
  %offset = getelementptr %struct.anon.104, ptr %30, i32 %i.075, i32 3
  %31 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div162, ptr %offset, align 8
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %2, align 4
  %34 = load ptr, ptr %cmd, align 8
  %idx = getelementptr %struct.anon.104, ptr %34, i32 %i.075, i32 4
  %35 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %idx, align 4
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %5, align 4
  %38 = load ptr, ptr %cmd, align 8
  %nr_relocs23 = getelementptr %struct.anon.104, ptr %38, i32 %i.075, i32 5
  %39 = ptrtoint ptr %nr_relocs23 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %nr_relocs23, align 8
  %40 = load i32, ptr %5, align 4
  %41 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 24) #10
  %42 = extractvalue { i32, i1 } %41, 1
  %43 = extractvalue { i32, i1 } %41, 0
  %retval.0.i = select i1 %42, i32 -1, i32 %43
  br i1 %42, label %if.end9.cleanup.thread_crit_edge, label %if.end36

if.end9.cleanup.thread_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end36:                                         ; preds = %if.end9
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %6, align 8
  %conv30 = trunc i64 %45 to i32
  %46 = inttoptr i32 %conv30 to ptr
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3264) #13
  %47 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cmd, align 8
  %relocs40 = getelementptr %struct.anon.104, ptr %48, i32 %i.075, i32 6
  %49 = ptrtoint ptr %relocs40 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call9.i, ptr %relocs40, align 4
  %50 = load ptr, ptr %cmd, align 8
  %relocs43 = getelementptr %struct.anon.104, ptr %50, i32 %i.075, i32 6
  %51 = ptrtoint ptr %relocs43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %relocs43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp9.i.i = icmp slt i32 %retval.0.i, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end36
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.copy_from_user.exit31.thread_crit_edge, label %if.then27.i.i, !prof !63

land.rhs16.i.i.copy_from_user.exit31.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_user.exit31.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_from_user.exit31.thread

if.then.i.i.i:                                    ; preds = %if.end36
  call void @__check_object_size(ptr noundef %52, i32 noundef %retval.0.i, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #10
  %call.i.i11 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i11, label %if.then.i.i.i.if.end.i.i25_crit_edge, label %land.lhs.true.i.i15

if.then.i.i.i.if.end.i.i25_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i25

land.lhs.true.i.i15:                              ; preds = %if.then.i.i.i
  %53 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %46, i32 %retval.0.i, i32 -1226833920) #14, !srcloc !77
  %asmresult.i.i13 = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i13)
  %cmp.i6.i14 = icmp eq i32 %asmresult.i.i13, 0
  br i1 %cmp.i6.i14, label %if.then.i7.i22, label %land.lhs.true.i.i15.if.end.i.i25_crit_edge, !prof !63

land.lhs.true.i.i15.if.end.i.i25_crit_edge:       ; preds = %land.lhs.true.i.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i25

if.then.i7.i22:                                   ; preds = %land.lhs.true.i.i15
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i16 = call zeroext i1 @__kasan_check_write(ptr noundef %52, i32 noundef %retval.0.i) #10
  %54 = call i32 @llvm.read_register.i32(metadata !51) #10
  %and.i.i.i.i.i.i17 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i17 to ptr
  %cpu_domain.i.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 4
  %56 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i18) #5, !srcloc !78
  %and.i.i.i.i19 = and i32 %56, -13
  %or.i.i.i.i20 = or i32 %and.i.i.i.i19, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i20) #10, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %call1.i.i.i21 = call i32 @arm_copy_from_user(ptr noundef %52, ptr noundef %46, i32 noundef %retval.0.i) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #10, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  br label %if.end.i.i25

if.end.i.i25:                                     ; preds = %if.then.i7.i22, %land.lhs.true.i.i15.if.end.i.i25_crit_edge, %if.then.i.i.i.if.end.i.i25_crit_edge
  %res.0.i.i23 = phi i32 [ %43, %if.then.i.i.i.if.end.i.i25_crit_edge ], [ %call1.i.i.i21, %if.then.i7.i22 ], [ %43, %land.lhs.true.i.i15.if.end.i.i25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i23)
  %tobool4.not.i.i24 = icmp eq i32 %res.0.i.i23, 0
  br i1 %tobool4.not.i.i24, label %for.inc, label %copy_from_user.exit31.thread.thread, !prof !63

copy_from_user.exit31.thread.thread:              ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i26 = sub i32 %retval.0.i, %res.0.i.i23
  %add.ptr.i.i27 = getelementptr i8, ptr %52, i32 %sub.i.i26
  %57 = call ptr @memset(ptr %add.ptr.i.i27, i32 0, i32 %res.0.i.i23)
  br label %cleanup.thread

copy_from_user.exit31.thread:                     ; preds = %if.then27.i.i, %land.rhs16.i.i.copy_from_user.exit31.thread_crit_edge
  %58 = extractvalue { i32, i1 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool45.not43 = icmp eq i32 %58, 0
  %spec.select = select i1 %tobool45.not43, i32 0, i32 -14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %copy_from_user.exit31.thread, %copy_from_user.exit31.thread.thread, %if.end9.cleanup.thread_crit_edge, %if.then7, %if.then11.i.i
  %ret.1.ph = phi i32 [ -22, %if.then7 ], [ -14, %if.then11.i.i ], [ -14, %copy_from_user.exit31.thread.thread ], [ %spec.select, %copy_from_user.exit31.thread ], [ -12, %if.end9.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %submit_cmd) #10
  br label %cleanup49

for.inc:                                          ; preds = %if.end.i.i25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %submit_cmd) #10
  %inc = add nuw i32 %i.075, 1
  %59 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_cmds, align 4
  %cmp = icmp ult i32 %inc, %60
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup49_crit_edge

for.inc.cleanup49_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup49:                                        ; preds = %for.inc.cleanup49_crit_edge, %cleanup.thread, %cleanup.thread39, %entry.cleanup49_crit_edge
  %retval.2 = phi i32 [ -22, %cleanup.thread39 ], [ %ret.1.ph, %cleanup.thread ], [ 0, %entry.cleanup49_crit_edge ], [ 0, %for.inc.cleanup49_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ww_acquire_init(ptr noundef %ctx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ctx, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @reservation_ww_class, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @reservation_ww_class, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @reservation_ww_class, ptr nonnull @reservation_ww_class, i32 1, ptr nonnull elementtype(i32) @reservation_ww_class) #10, !srcloc !68
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %stamp3 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %stamp3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %asmresult.i.i.i.i, ptr %stamp3, align 4
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %7 = ptrtoint ptr %acquired to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %acquired, align 4
  %wounded = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 3
  %8 = ptrtoint ptr %wounded to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %wounded, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5), align 4
  %conv = trunc i32 %9 to i16
  %is_wait_die4 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 4
  %10 = ptrtoint ptr %is_wait_die4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %is_wait_die4, align 2
  %ww_class5 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 6
  %11 = ptrtoint ptr %ww_class5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @reservation_ww_class, ptr %ww_class5, align 4
  %done_acquire = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 5
  %12 = ptrtoint ptr %done_acquire to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %done_acquire, align 4
  %contending_lock = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 7
  %13 = ptrtoint ptr %contending_lock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %contending_lock, align 4
  tail call void @debug_check_no_locks_freed(ptr noundef %ctx, i32 noundef 64) #10
  %dep_map = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 3) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 3), align 4
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %14, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %15 = tail call ptr @llvm.returnaddress(i32 0)
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %16) #10
  %deadlock_inject_interval = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 9
  %17 = ptrtoint ptr %deadlock_inject_interval to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %deadlock_inject_interval, align 4
  %18 = ptrtoint ptr %stamp3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stamp3, align 4
  %and = and i32 %19, 15
  %deadlock_inject_countdown = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 10
  %20 = ptrtoint ptr %deadlock_inject_countdown to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %deadlock_inject_countdown, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_lock_objects(ptr noundef %submit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_bos = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 19
  %0 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp164171.not = icmp eq i32 %1, 0
  br i1 %cmp164171.not, label %entry.for.end_crit_edge, label %for.body.lr.ph.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph.lr.ph:                             ; preds = %entry
  %ticket = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 6
  %aspace.i.i = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 4
  %contending_lock.i.i = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 6, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph.lr.ph
  %slow_locked.1167 = phi i32 [ -1, %for.body.lr.ph.lr.ph ], [ %slow_locked.1167.be, %for.body.backedge ]
  %i.0165 = phi i32 [ 0, %for.body.lr.ph.lr.ph ], [ %i.0165.be, %for.body.backedge ]
  %arrayidx = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.0165
  call void @__sanitizer_cov_trace_cmp4(i32 %slow_locked.1167, i32 %i.0165)
  %cmp1 = icmp eq i32 %slow_locked.1167, %i.0165
  %spec.store.select = select i1 %cmp1, i32 -1, i32 %slow_locked.1167
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then4, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %4 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.0165, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resv, align 8
  %call.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %8, ptr noundef %ticket) #10
  %9 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.then4.if.end17_crit_edge [
    i32 0, label %if.end7
    i32 -114, label %if.then14
  ]

if.then4.if.end17_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end7:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  %or = or i32 %11, 16384
  store i32 %or, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0165, 1
  %12 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %13)
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body.backedge_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge

for.body.backedge:                                ; preds = %cleanup80.for.body.backedge_crit_edge, %for.inc.for.body.backedge_crit_edge
  %slow_locked.1167.be = phi i32 [ %spec.store.select, %for.inc.for.body.backedge_crit_edge ], [ %i.0165, %cleanup80.for.body.backedge_crit_edge ]
  %i.0165.be = phi i32 [ %inc, %for.inc.for.body.backedge_crit_edge ], [ 0, %cleanup80.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %cleanup80.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %for.end.if.end.i_crit_edge, label %land.rhs.i

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %for.end
  %dep_map.i = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 6, i32 8
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !66

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 171, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %for.end.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %15 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool24.not.i = icmp eq i32 %15, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i, label %if.end.i.ww_acquire_done.exit_crit_edge

if.end.i.ww_acquire_done.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ww_acquire_done.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %done_acquire.i = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 6, i32 5
  %16 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %done_acquire.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool25.not.i = icmp eq i32 %17, 0
  br i1 %tobool25.not.i, label %land.lhs.true.i.ww_acquire_done.exit_crit_edge, label %do.end35.i, !prof !63

land.lhs.true.i.ww_acquire_done.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ww_acquire_done.exit

do.end35.i:                                       ; preds = %land.lhs.true.i
  %call36.i = tail call i32 @debug_locks_off() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %do.end35.i.ww_acquire_done.exit_crit_edge, label %land.lhs.true38.i

do.end35.i.ww_acquire_done.exit_crit_edge:        ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ww_acquire_done.exit

land.lhs.true38.i:                                ; preds = %do.end35.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %18 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool39.not.i = icmp eq i32 %18, 0
  br i1 %tobool39.not.i, label %do.end53.i, label %land.lhs.true38.i.ww_acquire_done.exit_crit_edge

land.lhs.true38.i.ww_acquire_done.exit_crit_edge: ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ww_acquire_done.exit

do.end53.i:                                       ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 173, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #10
  br label %ww_acquire_done.exit

ww_acquire_done.exit:                             ; preds = %do.end53.i, %land.lhs.true38.i.ww_acquire_done.exit_crit_edge, %do.end35.i.ww_acquire_done.exit_crit_edge, %land.lhs.true.i.ww_acquire_done.exit_crit_edge, %if.end.i.ww_acquire_done.exit_crit_edge
  %done_acquire73.i = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 6, i32 5
  %19 = ptrtoint ptr %done_acquire73.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %done_acquire73.i, align 4
  br label %cleanup84

if.then14:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %4, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %21, i32 noundef %i.0165) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then4.if.end17_crit_edge
  %ret.4 = phi i32 [ -22, %if.then14 ], [ %call.i, %if.then4.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0165)
  %cmp19168 = icmp sgt i32 %i.0165, -1
  br i1 %cmp19168, label %if.end17.for.body20_crit_edge, label %if.end17.for.end22_crit_edge

if.end17.for.end22_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

if.end17.for.body20_crit_edge:                    ; preds = %if.end17
  br label %for.body20

for.body20:                                       ; preds = %submit_unlock_unpin_bo.exit.for.body20_crit_edge, %if.end17.for.body20_crit_edge
  %i.1169 = phi i32 [ %dec, %submit_unlock_unpin_bo.exit.for.body20_crit_edge ], [ %i.0165, %if.end17.for.body20_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.1169
  %22 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.1169, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 8
  %and4.i.i = and i32 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool.not.i.i, label %for.body20.if.end.i.i_crit_edge, label %if.then.i.i

for.body20.if.end.i.i_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %aspace.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %aspace.i.i, align 4
  tail call void @msm_gem_unpin_iova_locked(ptr noundef %24, ptr noundef %28) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body20.if.end.i.i_crit_edge
  %and5.i.i = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then7.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msm_gem_active_put(ptr noundef %24) #10
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then7.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %and9.i.i = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end8.i.i.submit_cleanup_bo.exit.i_crit_edge, label %if.then11.i.i

if.end8.i.i.submit_cleanup_bo.exit.i_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %submit_cleanup_bo.exit.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %resv.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %24, i32 0, i32 9
  %29 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %30) #10
  tail call void @ww_mutex_unlock(ptr noundef %30) #10
  br label %submit_cleanup_bo.exit.i

submit_cleanup_bo.exit.i:                         ; preds = %if.then11.i.i, %if.end8.i.i.submit_cleanup_bo.exit.i_crit_edge
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 8
  %and16.i.i = and i32 %32, -28673
  store i32 %and16.i.i, ptr %arrayidx.i.i, align 8
  %and.i = and i32 %32, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i123 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i123, label %if.then.i, label %submit_cleanup_bo.exit.i.submit_unlock_unpin_bo.exit_crit_edge

submit_cleanup_bo.exit.i.submit_unlock_unpin_bo.exit_crit_edge: ; preds = %submit_cleanup_bo.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %submit_unlock_unpin_bo.exit

if.then.i:                                        ; preds = %submit_cleanup_bo.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %iova.i = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.1169, i32 2
  %33 = ptrtoint ptr %iova.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %iova.i, align 8
  br label %submit_unlock_unpin_bo.exit

submit_unlock_unpin_bo.exit:                      ; preds = %if.then.i, %submit_cleanup_bo.exit.i.submit_unlock_unpin_bo.exit_crit_edge
  %dec = add nsw i32 %i.1169, -1
  %cmp19 = icmp sgt i32 %i.1169, 0
  br i1 %cmp19, label %submit_unlock_unpin_bo.exit.for.body20_crit_edge, label %submit_unlock_unpin_bo.exit.for.end22_crit_edge

submit_unlock_unpin_bo.exit.for.end22_crit_edge:  ; preds = %submit_unlock_unpin_bo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

submit_unlock_unpin_bo.exit.for.body20_crit_edge: ; preds = %submit_unlock_unpin_bo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20

for.end22:                                        ; preds = %submit_unlock_unpin_bo.exit.for.end22_crit_edge, %if.end17.for.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp23 = icmp sgt i32 %spec.store.select, 0
  br i1 %cmp23, label %if.then24, label %for.end22.if.end25_crit_edge

for.end22.if.end25_crit_edge:                     ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %for.end22
  %arrayidx.i.i125 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %spec.store.select
  %34 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %spec.store.select, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = ptrtoint ptr %arrayidx.i.i125 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i125, align 8
  %and4.i.i126 = and i32 %38, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i126)
  %tobool.not.i.i127 = icmp eq i32 %and4.i.i126, 0
  br i1 %tobool.not.i.i127, label %if.then24.if.end.i.i132_crit_edge, label %if.then.i.i129

if.then24.if.end.i.i132_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i132

if.then.i.i129:                                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %aspace.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %aspace.i.i, align 4
  tail call void @msm_gem_unpin_iova_locked(ptr noundef %36, ptr noundef %40) #10
  br label %if.end.i.i132

if.end.i.i132:                                    ; preds = %if.then.i.i129, %if.then24.if.end.i.i132_crit_edge
  %and5.i.i130 = and i32 %38, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i130)
  %tobool6.not.i.i131 = icmp eq i32 %and5.i.i130, 0
  br i1 %tobool6.not.i.i131, label %if.end.i.i132.if.end8.i.i136_crit_edge, label %if.then7.i.i133

if.end.i.i132.if.end8.i.i136_crit_edge:           ; preds = %if.end.i.i132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i136

if.then7.i.i133:                                  ; preds = %if.end.i.i132
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msm_gem_active_put(ptr noundef %36) #10
  br label %if.end8.i.i136

if.end8.i.i136:                                   ; preds = %if.then7.i.i133, %if.end.i.i132.if.end8.i.i136_crit_edge
  %and9.i.i134 = and i32 %38, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i134)
  %tobool10.not.i.i135 = icmp eq i32 %and9.i.i134, 0
  br i1 %tobool10.not.i.i135, label %if.end8.i.i136.submit_cleanup_bo.exit.i142_crit_edge, label %if.then11.i.i138

if.end8.i.i136.submit_cleanup_bo.exit.i142_crit_edge: ; preds = %if.end8.i.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %submit_cleanup_bo.exit.i142

if.then11.i.i138:                                 ; preds = %if.end8.i.i136
  call void @__sanitizer_cov_trace_pc() #12
  %resv.i.i137 = getelementptr inbounds %struct.drm_gem_object, ptr %36, i32 0, i32 9
  %41 = ptrtoint ptr %resv.i.i137 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resv.i.i137, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %42) #10
  tail call void @ww_mutex_unlock(ptr noundef %42) #10
  br label %submit_cleanup_bo.exit.i142

submit_cleanup_bo.exit.i142:                      ; preds = %if.then11.i.i138, %if.end8.i.i136.submit_cleanup_bo.exit.i142_crit_edge
  %43 = ptrtoint ptr %arrayidx.i.i125 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i125, align 8
  %and16.i.i139 = and i32 %44, -28673
  store i32 %and16.i.i139, ptr %arrayidx.i.i125, align 8
  %and.i140 = and i32 %44, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140)
  %tobool.not.i141 = icmp eq i32 %and.i140, 0
  br i1 %tobool.not.i141, label %if.then.i144, label %submit_cleanup_bo.exit.i142.if.end25_crit_edge

submit_cleanup_bo.exit.i142.if.end25_crit_edge:   ; preds = %submit_cleanup_bo.exit.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then.i144:                                     ; preds = %submit_cleanup_bo.exit.i142
  call void @__sanitizer_cov_trace_pc() #12
  %iova.i143 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %spec.store.select, i32 2
  %45 = ptrtoint ptr %iova.i143 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %iova.i143, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then.i144, %submit_cleanup_bo.exit.i142.if.end25_crit_edge, %for.end22.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %ret.4)
  %cmp26 = icmp eq i32 %ret.4, -35
  br i1 %cmp26, label %if.then27, label %if.end25.cleanup84_crit_edge

if.end25.cleanup84_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup84

if.then27:                                        ; preds = %if.end25
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %4, align 4
  %resv32 = getelementptr inbounds %struct.drm_gem_object, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %resv32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %resv32, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %50 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i147 = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i147, label %land.lhs.true.i.i, label %if.then27.dma_resv_lock_slow_interruptible.exit_crit_edge

if.then27.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_resv_lock_slow_interruptible.exit

land.lhs.true.i.i:                                ; preds = %if.then27
  %51 = ptrtoint ptr %contending_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %contending_lock.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %52, null
  br i1 %tobool1.not.i.i, label %do.end.i.i, label %land.lhs.true.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, !prof !66

land.lhs.true.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_resv_lock_slow_interruptible.exit

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i148 = tail call i32 @debug_locks_off() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i148)
  %tobool5.not.i.i = icmp eq i32 %call.i.i148, 0
  br i1 %tobool5.not.i.i, label %do.end.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, label %land.lhs.true6.i.i

do.end.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_resv_lock_slow_interruptible.exit

land.lhs.true6.i.i:                               ; preds = %do.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %53 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool7.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool7.not.i.i, label %do.end20.i.i, label %land.lhs.true6.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge

land.lhs.true6.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_resv_lock_slow_interruptible.exit

do.end20.i.i:                                     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 333, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16) #10
  br label %dma_resv_lock_slow_interruptible.exit

dma_resv_lock_slow_interruptible.exit:            ; preds = %do.end20.i.i, %land.lhs.true6.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, %do.end.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, %land.lhs.true.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, %if.then27.dma_resv_lock_slow_interruptible.exit_crit_edge
  %call38.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %49, ptr noundef %ticket) #10
  %54 = zext i32 %call38.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call38.i.i, label %dma_resv_lock_slow_interruptible.exit.cleanup84_crit_edge [
    i32 0, label %cleanup80
    i32 -114, label %land.rhs
  ]

dma_resv_lock_slow_interruptible.exit.cleanup84_crit_edge: ; preds = %dma_resv_lock_slow_interruptible.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup84

land.rhs:                                         ; preds = %dma_resv_lock_slow_interruptible.exit
  %.b122 = load i1, ptr @submit_lock_objects.__already_done, align 1
  br i1 %.b122, label %land.rhs.cleanup84_crit_edge, label %if.then50, !prof !63

land.rhs.cleanup84_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup84

if.then50:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @submit_lock_objects.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 309, i32 noundef 9, ptr noundef null) #10
  br label %cleanup84

cleanup80:                                        ; preds = %dma_resv_lock_slow_interruptible.exit
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx, align 8
  %or40 = or i32 %56, 16384
  store i32 %or40, ptr %arrayidx, align 8
  %57 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp164.not = icmp eq i32 %58, 0
  br i1 %cmp164.not, label %cleanup80.for.end_crit_edge, label %cleanup80.for.body.backedge_crit_edge

cleanup80.for.body.backedge_crit_edge:            ; preds = %cleanup80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge

cleanup80.for.end_crit_edge:                      ; preds = %cleanup80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup84:                                        ; preds = %if.then50, %land.rhs.cleanup84_crit_edge, %dma_resv_lock_slow_interruptible.exit.cleanup84_crit_edge, %if.end25.cleanup84_crit_edge, %ww_acquire_done.exit
  %retval.0 = phi i32 [ 0, %ww_acquire_done.exit ], [ -114, %if.then50 ], [ -114, %land.rhs.cleanup84_crit_edge ], [ %call38.i.i, %dma_resv_lock_slow_interruptible.exit.cleanup84_crit_edge ], [ %ret.4, %if.end25.cleanup84_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_fence_sync(ptr noundef %submit, i1 noundef zeroext %no_implicit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_bos = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 19
  %0 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp45.not = icmp eq i32 %1, 0
  br i1 %cmp45.not, label %entry.cleanup19_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup19

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.046 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.046
  %2 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.046, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 8
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %for.body.if.end11_crit_edge, label %if.then

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %for.body
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 9
  %7 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resv, align 8
  %call = tail call i32 @dma_resv_reserve_shared(ptr noundef %8, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.then.cleanup19_crit_edge

if.then.cleanup19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup19

if.end7:                                          ; preds = %if.then
  br i1 %no_implicit, label %if.end7.for.inc_crit_edge, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end11:                                         ; preds = %if.end7.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %call14 = tail call i32 @drm_sched_job_add_implicit_dependencies(ptr noundef %submit, ptr noundef %4, i1 noundef zeroext %tobool) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end11.for.inc_crit_edge, label %if.end11.cleanup19_crit_edge

if.end11.cleanup19_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup19

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end11.for.inc_crit_edge, %if.end7.for.inc_crit_edge
  %inc = add nuw i32 %i.046, 1
  %9 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_bos, align 8
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup19_crit_edge

for.inc.cleanup19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup19

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup19:                                        ; preds = %for.inc.cleanup19_crit_edge, %if.end11.cleanup19_crit_edge, %if.then.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup19_crit_edge ], [ %call, %if.then.cleanup19_crit_edge ], [ 0, %for.inc.cleanup19_crit_edge ], [ %call14, %if.end11.cleanup19_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_pin_objects(ptr nocapture noundef %submit) unnamed_addr #0 align 64 {
entry:
  %iova = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 14
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %valid, align 1
  %nr_bos = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 19
  %1 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp65.not = icmp eq i32 %2, 0
  br i1 %cmp65.not, label %entry.for.end35_crit_edge, label %for.body.lr.ph

entry.for.end35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end35

for.body.lr.ph:                                   ; preds = %entry
  %gpu = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 3
  br label %for.body

for.cond3.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp567.not = icmp eq i32 %11, 0
  br i1 %cmp567.not, label %for.cond3.preheader.for.end35_crit_edge, label %for.body6.lr.ph

for.cond3.preheader.for.end35_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end35

for.body6.lr.ph:                                  ; preds = %for.cond3.preheader
  %aspace = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 4
  br label %for.body6

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.066
  %3 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.066, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpu, align 8
  tail call void @msm_gem_active_get(ptr noundef %5, ptr noundef %7) #10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 8
  %or = or i32 %9, 8192
  store i32 %or, ptr %arrayidx, align 8
  %inc = add nuw i32 %i.066, 1
  %10 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_bos, align 8
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond3.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body6:                                        ; preds = %for.inc33.for.body6_crit_edge, %for.body6.lr.ph
  %i.168 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc34, %for.inc33.for.body6_crit_edge ]
  %arrayidx9 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.168
  %12 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.168, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iova) #10
  %15 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %iova, align 8, !annotation !76
  %16 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aspace, align 4
  %call = call i32 @msm_gem_get_and_pin_iova_locked(ptr noundef %14, ptr noundef %17, ptr noundef nonnull %iova) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %for.body6
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9, align 8
  %20 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %iova, align 8
  %iova17 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.168, i32 2
  %22 = ptrtoint ptr %iova17 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %iova17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %23)
  %cmp18 = icmp eq i64 %21, %23
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or23 = or i32 %19, 36864
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or23, ptr %arrayidx9, align 8
  br label %for.inc33

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %iova17 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %21, ptr %iova17, align 8
  %or14 = and i32 %19, -36865
  %and = or i32 %or14, 4096
  %26 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and, ptr %arrayidx9, align 8
  %27 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %valid, align 1
  br label %for.inc33

cleanup:                                          ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iova) #10
  br label %for.end35

for.inc33:                                        ; preds = %if.else, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iova) #10
  %inc34 = add nuw i32 %i.168, 1
  %28 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_bos, align 8
  %cmp5 = icmp ult i32 %inc34, %29
  br i1 %cmp5, label %for.inc33.for.body6_crit_edge, label %for.inc33.for.end35_crit_edge

for.inc33.for.end35_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end35

for.inc33.for.body6_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6

for.end35:                                        ; preds = %for.inc33.for.end35_crit_edge, %cleanup, %for.cond3.preheader.for.end35_crit_edge, %entry.for.end35_crit_edge
  %ret.1 = phi i32 [ %call, %cleanup ], [ 0, %for.cond3.preheader.for.end35_crit_edge ], [ 0, %entry.for.end35_crit_edge ], [ 0, %for.inc33.for.end35_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_reloc(ptr nocapture noundef readonly %submit, ptr noundef %obj, i32 noundef %offset, i32 noundef %nr_relocs, ptr nocapture noundef readonly %relocs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_relocs)
  %tobool.not = icmp eq i32 %nr_relocs, 0
  br i1 %tobool.not, label %entry.cleanup40_crit_edge, label %if.end

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

if.end:                                           ; preds = %entry
  %rem = and i32 %offset, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool1.not = icmp eq i32 %rem, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %offset) #10
  br label %cleanup40

if.end3:                                          ; preds = %if.end
  %call = tail call ptr @msm_gem_get_vaddr_locked(ptr noundef %obj) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end3
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %nr_bos.i = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 19
  br label %for.body

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %0) #10
  br label %cleanup40

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %last_offset.086 = phi i32 [ 0, %for.body.lr.ph ], [ %last_offset.1, %for.inc.for.body_crit_edge ]
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_msm_gem_submit_reloc, ptr %relocs, i32 %i.085
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %submit_reloc.sroa.0.0.copyload = load i32, ptr %arrayidx, align 8
  %submit_reloc.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %2 = ptrtoint ptr %submit_reloc.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %submit_reloc.sroa.7.0.copyload = load i32, ptr %submit_reloc.sroa.7.0.arrayidx.sroa_idx, align 4
  %submit_reloc.sroa.9.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %3 = ptrtoint ptr %submit_reloc.sroa.9.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %submit_reloc.sroa.9.0.copyload = load i32, ptr %submit_reloc.sroa.9.0.arrayidx.sroa_idx, align 8
  %submit_reloc.sroa.13.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 12
  %4 = ptrtoint ptr %submit_reloc.sroa.13.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %submit_reloc.sroa.13.0.copyload = load i32, ptr %submit_reloc.sroa.13.0.arrayidx.sroa_idx, align 4
  %submit_reloc.sroa.15.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 16
  %5 = ptrtoint ptr %submit_reloc.sroa.15.0.arrayidx.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %5)
  %submit_reloc.sroa.15.0.copyload = load i64, ptr %submit_reloc.sroa.15.0.arrayidx.sroa_idx, align 8
  %rem8 = and i32 %submit_reloc.sroa.0.0.copyload, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem8)
  %tobool9.not = icmp eq i32 %rem8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %submit_reloc.sroa.0.0.copyload) #10
  br label %out

if.end12:                                         ; preds = %for.body
  %div64 = lshr i32 %submit_reloc.sroa.0.0.copyload, 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %div1565 = lshr i32 %7, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div64, i32 %div1565)
  %cmp16.not = icmp uge i32 %div64, %div1565
  call void @__sanitizer_cov_trace_cmp4(i32 %div64, i32 %last_offset.086)
  %cmp17 = icmp ult i32 %div64, %last_offset.086
  %or.cond = select i1 %cmp16.not, i1 true, i1 %cmp17
  br i1 %or.cond, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %div64, i32 noundef %i.085) #10
  br label %out

if.end19:                                         ; preds = %if.end12
  %8 = ptrtoint ptr %nr_bos.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_bos.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %submit_reloc.sroa.13.0.copyload)
  %cmp.not.i = icmp ugt i32 %9, %submit_reloc.sroa.13.0.copyload
  br i1 %cmp.not.i, label %if.end23, label %submit_bo.exit

submit_bo.exit:                                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %submit_reloc.sroa.13.0.copyload, i32 noundef %9) #10
  br label %out

if.end23:                                         ; preds = %if.end19
  %arrayidx13.i = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %submit_reloc.sroa.13.0.copyload
  %10 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13.i, align 8
  %12 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool24.not = icmp eq i32 %12, 0
  br i1 %tobool24.not, label %if.end26, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end26:                                         ; preds = %if.end23
  %iova8.i = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %submit_reloc.sroa.13.0.copyload, i32 2
  %13 = ptrtoint ptr %iova8.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %iova8.i, align 8
  %add = add i64 %14, %submit_reloc.sroa.15.0.copyload
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %submit_reloc.sroa.9.0.copyload)
  %cmp27 = icmp slt i32 %submit_reloc.sroa.9.0.copyload, 0
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 0, %submit_reloc.sroa.9.0.copyload
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %add, %sh_prom
  %extract.t125 = trunc i64 %shr to i32
  br label %if.end32

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %sh_prom31 = zext i32 %submit_reloc.sroa.9.0.copyload to i64
  %shl = shl i64 %add, %sh_prom31
  %extract.t = trunc i64 %shl to i32
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then28
  %shl.sink.off0 = phi i32 [ %extract.t, %if.else ], [ %extract.t125, %if.then28 ]
  %conv34 = or i32 %shl.sink.off0, %submit_reloc.sroa.7.0.copyload
  %arrayidx35 = getelementptr i32, ptr %call, i32 %div64
  %15 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv34, ptr %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %if.end23.for.inc_crit_edge
  %last_offset.1 = phi i32 [ %div64, %if.end32 ], [ %last_offset.086, %if.end23.for.inc_crit_edge ]
  %inc = add nuw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, %nr_relocs
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %submit_bo.exit, %if.then18, %if.then10
  %ret.2 = phi i32 [ -22, %if.then10 ], [ -22, %if.then18 ], [ -22, %submit_bo.exit ], [ 0, %for.inc.out_crit_edge ]
  tail call void @msm_gem_put_vaddr_locked(ptr noundef %obj) #10
  br label %cleanup40

cleanup40:                                        ; preds = %out, %if.then5, %if.then2, %entry.cleanup40_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ %0, %if.then5 ], [ %ret.2, %out ], [ 0, %entry.cleanup40_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_arm(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dma_fence_get(ptr noundef returned %fence) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !66

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !63

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %fence
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @submit_attach_object_fences(ptr nocapture noundef readonly %submit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_bos = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 19
  %0 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp22.not = icmp eq i32 %1, 0
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %user_fence = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.023
  %2 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.023, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 8
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 9
  %7 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resv, align 8
  %9 = ptrtoint ptr %user_fence to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_fence, align 8
  tail call void @dma_resv_add_excl_fence(ptr noundef %8, ptr noundef %10) #10
  br label %if.end11

if.else:                                          ; preds = %for.body
  %and6 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else.if.end11_crit_edge, label %if.then8

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %resv9 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 9
  %11 = ptrtoint ptr %resv9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resv9, align 8
  %13 = ptrtoint ptr %user_fence to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %user_fence, align 8
  tail call void @dma_resv_add_shared_fence(ptr noundef %12, ptr noundef %14) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else.if.end11_crit_edge, %if.then
  %inc = add nuw i32 %i.023, 1
  %15 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_bos, align 8
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_gem_submit_get(ptr noundef %submit) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ref = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !66

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !63

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_push_job(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_reset_syncobjs(ptr noundef readonly %syncobjs, i32 noundef %nr_syncobjs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %syncobjs, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_syncobjs)
  %cmp8 = icmp ne i32 %nr_syncobjs, 0
  %or.cond9 = and i1 %tobool.not, %cmp8
  br i1 %or.cond9, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %syncobjs, i32 %i.010
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_syncobj_replace_fence(ptr noundef nonnull %1, ptr noundef null) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.010, 1
  %cmp = icmp ult i32 %inc, %nr_syncobjs
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_process_post_deps(ptr noundef %post_deps, i32 noundef %count, ptr noundef %fence) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %post_deps, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp24 = icmp ne i32 %count, 0
  %or.cond25 = and i1 %tobool.not, %cmp24
  br i1 %or.cond25, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msm_submit_post_dep, ptr %post_deps, i32 %i.026
  %chain = getelementptr %struct.msm_submit_post_dep, ptr %post_deps, i32 %i.026, i32 2
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 8
  %tobool1.not = icmp eq ptr %1, null
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %point = getelementptr %struct.msm_submit_post_dep, ptr %post_deps, i32 %i.026, i32 1
  %4 = ptrtoint ptr %point to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %point, align 8
  tail call void @drm_syncobj_add_point(ptr noundef %3, ptr noundef nonnull %1, ptr noundef %fence, i64 noundef %5) #10
  %6 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %chain, align 8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_syncobj_replace_fence(ptr noundef %3, ptr noundef %fence) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc = add nuw i32 %i.026, 1
  %cmp = icmp ult i32 %inc, %count
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @submit_cleanup(ptr nocapture noundef %submit, i1 noundef zeroext %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec.select = select i1 %error, i32 28672, i32 16384
  %nr_bos = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 19
  %0 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14.not = icmp eq i32 %1, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %aspace.i = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 4
  %neg.i = xor i32 %spec.select, -1
  %error.not = xor i1 %error, true
  br label %for.body

for.body:                                         ; preds = %if.end3.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end3.for.body_crit_edge ]
  %2 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.015, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %arrayidx.i = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.015
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 8
  %and.i = and i32 %6, %spec.select
  %and4.i = and i32 %and.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aspace.i, align 4
  tail call void @msm_gem_unpin_iova_locked(ptr noundef %4, ptr noundef %8) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %and5.i = and i32 %and.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then7.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msm_gem_active_put(ptr noundef %4) #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i.if.end8.i_crit_edge
  %and9.i = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.submit_cleanup_bo.exit_crit_edge, label %if.then11.i

if.end8.i.submit_cleanup_bo.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %submit_cleanup_bo.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 9
  %9 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %10) #10
  tail call void @ww_mutex_unlock(ptr noundef %10) #10
  br label %submit_cleanup_bo.exit

submit_cleanup_bo.exit:                           ; preds = %if.then11.i, %if.end8.i.submit_cleanup_bo.exit_crit_edge
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 8
  %and16.i = and i32 %12, %neg.i
  store i32 %and16.i, ptr %arrayidx.i, align 8
  %tobool.not.i11 = icmp eq ptr %4, null
  %or.cond = select i1 %error.not, i1 true, i1 %tobool.not.i11
  br i1 %or.cond, label %submit_cleanup_bo.exit.if.end3_crit_edge, label %if.then.i12

submit_cleanup_bo.exit.if.end3_crit_edge:         ; preds = %submit_cleanup_bo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then.i12:                                      ; preds = %submit_cleanup_bo.exit
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end3_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !63

if.end5.i.i.i.i.i.i.if.end3_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef 3) #10
  br label %if.end3

if.then.i.i.i:                                    ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  tail call void @drm_gem_object_free(ptr noundef nonnull %4) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end3_crit_edge, %submit_cleanup_bo.exit.if.end3_crit_edge
  %inc = add nuw i32 %i.015, 1
  %14 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_bos, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %if.end3.for.body_crit_edge, label %if.end3.for.end_crit_edge

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end3.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ww_acquire_fini(ptr noundef %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@ww_acquire_fini, %__here) to i32)) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %__here.if.end36_crit_edge

__here.if.end36_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true:                                    ; preds = %__here
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %acquired, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end36_crit_edge, label %do.end, !prof !63

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end.if.end36_crit_edge, label %land.lhs.true5

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end36_crit_edge

land.lhs.true5.if.end36_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.22) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end19, %land.lhs.true5.if.end36_crit_edge, %do.end.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %__here.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_gem_submit_put(ptr noundef %submit) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ref = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !63

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  tail call void @__msm_gem_submit_destroy(ptr noundef %ref) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_submitqueue_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_active_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_submit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_find_fence(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_syncobj_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_add_implicit_dependencies(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_active_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova_locked(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_replace_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_add_point(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @msm_ioctl_gem_submit.ident, !1, !"ident", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/msm_gem_submit.c", i32 711, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/msm_gem_submit.c", i32 857, i32 4}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 11, i32 1}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/msm_gem_submit.c", i32 120, i32 4}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/msm_gem_submit.c", i32 142, i32 4}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/msm_gem_submit.c", i32 186, i32 4}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/msm_gem_submit.c", i32 191, i32 4}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/msm_gem_submit.c", i32 283, i32 3}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/msm_gem_submit.c", i32 309, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/ww_mutex.h", i32 171, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/ww_mutex.h", i32 173, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/ww_mutex.h", i32 333, i32 2}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/msm_gem_submit.c", i32 410, i32 3}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/msm_gem_submit.c", i32 437, i32 3}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/msm_gem_submit.c", i32 448, i32 3}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/msm_gem_submit.c", i32 459, i32 4}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/msm_gem_submit.c", i32 470, i32 4}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/ww_mutex.h", i32 191, i32 2}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 2148330812}
!62 = !{i64 2148245276, i64 2148245308, i64 2148245337, i64 2148245371, i64 2148245402, i64 2148245425}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2149376985}
!65 = !{i64 2148242811, i64 2148242843, i64 2148242872, i64 2148242906, i64 2148242937, i64 2148242960}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2148326692}
!68 = !{i64 2148242001, i64 2148242033, i64 2148242062, i64 2148242096, i64 2148242127, i64 2148242150}
!69 = !{i64 2148326921}
!70 = !{i8 0, i8 2}
!71 = !{i64 2148798486, i64 2148798491, i64 2148798504, i64 2148798548, i64 2148798582, i64 2148798603}
!72 = !{i64 2157294918}
!73 = !{i64 2157295173}
!74 = !{i64 2149535311}
!75 = !{i64 2149536347}
!76 = !{!"auto-init"}
!77 = !{i64 2150625151, i64 2150625176}
!78 = !{i64 3120706}
!79 = !{i64 3120903}
!80 = !{i64 2150606136}
