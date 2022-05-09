; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/msm_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.msm_gem_object = type { %struct.drm_gem_object, i32, i8, i8, i8, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %struct.list_head, ptr, [32 x i8], i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.90, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.96, ptr, i32, ptr, i8, i32 }
%struct.anon.90 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.96 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.111, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.111 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.page = type { i32, %union.anon, %union.anon.81, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.81 = type { %struct.atomic_t }
%struct.msm_gem_vma = type { %struct.drm_mm_node, i64, ptr, %struct.list_head, i8, i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.82, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.83, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.84, ptr, %struct.address_space, %struct.list_head, %union.anon.85, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.82 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.84 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.85 = type { ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.110, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.110 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.64, ptr }
%union.anon.64 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.anon.112 = type { i32, i32 }
%struct.msm_gem_stats = type { %struct.anon.112, %struct.anon.112, %struct.anon.112, %struct.anon.112, %struct.anon.112 }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.24 }
%struct.llist_node = type { ptr }
%union.anon.24 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.__va_list = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.52, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.54 = type { ptr, i32, i32, i32 }

@msm_gem_get_pages._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.msm_gem_get_pages = private unnamed_addr constant [18 x i8] c"msm_gem_get_pages\00", align 1
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/msm/msm_gem.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msm_obj->madv != 0\00", [45 x i8] zeroinitializer }, align 32
@msm_gem_put_pages._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.msm_gem_put_pages = private unnamed_addr constant [18 x i8] c"msm_gem_put_pages\00", align 1
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msm_obj->pin_count < 0\00", [41 x i8] zeroinitializer }, align 32
@msm_gem_iova._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.msm_gem_iova = private unnamed_addr constant [13 x i8] c"msm_gem_iova\00", align 1
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"!vma\00", [27 x i8] zeroinitializer }, align 32
@msm_gem_unpin_iova_locked._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.msm_gem_unpin_iova_locked = private unnamed_addr constant [26 x i8] c"msm_gem_unpin_iova_locked\00", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"!msm_gem_is_locked(obj)\00", [40 x i8] zeroinitializer }, align 32
@msm_gem_unpin_iova_locked._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@msm_gem_unpin_iova_locked._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dumb\00", [27 x i8] zeroinitializer }, align 32
@msm_gem_put_vaddr_locked._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.msm_gem_put_vaddr_locked = private unnamed_addr constant [25 x i8] c"msm_gem_put_vaddr_locked\00", align 1
@msm_gem_put_vaddr_locked._rs.10 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msm_obj->vmap_count < 1\00", [40 x i8] zeroinitializer }, align 32
@msm_gem_purge._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.msm_gem_purge = private unnamed_addr constant [14 x i8] c"msm_gem_purge\00", align 1
@msm_gem_purge._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"!is_purgeable(msm_obj)\00", [41 x i8] zeroinitializer }, align 32
@msm_gem_evict._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.msm_gem_evict = private unnamed_addr constant [14 x i8] c"msm_gem_evict\00", align 1
@msm_gem_evict._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"is_unevictable(msm_obj)\00", [40 x i8] zeroinitializer }, align 32
@msm_gem_evict._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"!msm_obj->evictable\00", [44 x i8] zeroinitializer }, align 32
@msm_gem_evict._rs.18 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"msm_obj->active_count\00", [42 x i8] zeroinitializer }, align 32
@msm_gem_vunmap._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.msm_gem_vunmap = private unnamed_addr constant [15 x i8] c"msm_gem_vunmap\00", align 1
@msm_gem_vunmap._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"!is_vunmapable(msm_obj)\00", [40 x i8] zeroinitializer }, align 32
@msm_gem_active_get._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.msm_gem_active_get = private unnamed_addr constant [19 x i8] c"msm_gem_active_get\00", align 1
@msm_gem_active_get._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@msm_gem_active_get._rs.23 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msm_obj->dontneed\00", [46 x i8] zeroinitializer }, align 32
@msm_gem_active_put._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.msm_gem_active_put = private unnamed_addr constant [19 x i8] c"msm_gem_active_put\00", align 1
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" purged\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" purgeable\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%08x: %c %2d (%2d) %08llx %p\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" %08zu %9s %-32s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"      vmas:\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c" [%s%s%s: aspace=%p, %08llx,%s,inuse=%d]\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mapped\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unmapped\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"   flags       id ref  offset   kaddr            size     madv      name\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"   \00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Total:     %4d objects, %9zu bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Active:    %4d objects, %9zu bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Resident:  %4d objects, %9zu bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Purgeable: %4d objects, %9zu bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Purged:    %4d objects, %9zu bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@msm_gem_free_object._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.msm_gem_free_object = private unnamed_addr constant [20 x i8] c"msm_gem_free_object\00", align 1
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"is_active(msm_obj)\00", [45 x i8] zeroinitializer }, align 32
@msm_gem_free_object._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msm_obj->vaddr\00", [17 x i8] zeroinitializer }, align 32
@msm_gem_new._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.msm_gem_new = private unnamed_addr constant [12 x i8] c"msm_gem_new\00", align 1
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"use_vram && !priv->vram.size\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* cannot import without IOMMU\0A\00", [59 x i8] zeroinitializer }, align 32
@get_pages._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_pages = private unnamed_addr constant [10 x i8] c"get_pages\00", align 1
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* could not get pages: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* failed to allocate sgt\0A\00", [32 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mmap_offset._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mmap_offset = private unnamed_addr constant [12 x i8] c"mmap_offset\00", align 1
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* could not allocate mmap offset\0A\00", [56 x i8] zeroinitializer }, align 32
@get_and_pin_iova_range_locked._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_and_pin_iova_range_locked = private unnamed_addr constant [30 x i8] c"get_and_pin_iova_range_locked\00", align 1
@msm_gem_pin_iova._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.msm_gem_pin_iova = private unnamed_addr constant [17 x i8] c"msm_gem_pin_iova\00", align 1
@msm_gem_pin_iova._rs.52 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@msm_gem_pin_iova._rs.53 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_iova_locked._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_iova_locked = private unnamed_addr constant [16 x i8] c"get_iova_locked\00", align 1
@lookup_vma._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.lookup_vma = private unnamed_addr constant [11 x i8] c"lookup_vma\00", align 1
@get_vaddr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_vaddr = private unnamed_addr constant [10 x i8] c"get_vaddr\00", align 1
@get_vaddr._rs.54 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msm_obj->madv > madv\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* Invalid madv state: %u vs %u\0A\00", [58 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@put_iova_spaces._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.put_iova_spaces = private unnamed_addr constant [16 x i8] c"put_iova_spaces\00", align 1
@put_iova_vmas._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.put_iova_vmas = private unnamed_addr constant [14 x i8] c"put_iova_vmas\00", align 1
@is_vunmapable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.is_vunmapable = private unnamed_addr constant [14 x i8] c"is_vunmapable\00", align 1
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/msm/msm_gem.h\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!msm_gem_is_locked(&msm_obj->base)\00", [61 x i8] zeroinitializer }, align 32
@update_inactive._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.update_inactive = private unnamed_addr constant [16 x i8] c"update_inactive\00", align 1
@update_inactive._rs.59 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(msm_obj->madv != 2) && msm_obj->sgt\00", [59 x i8] zeroinitializer }, align 32
@mark_purgeable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mark_purgeable = private unnamed_addr constant [15 x i8] c"mark_purgeable\00", align 1
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"!mutex_is_locked(&priv->mm_lock)\00", [63 x i8] zeroinitializer }, align 32
@mark_purgeable._rs.62 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@is_active._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.is_active = private unnamed_addr constant [10 x i8] c"is_active\00", align 1
@mark_unpurgeable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mark_unpurgeable = private unnamed_addr constant [17 x i8] c"mark_unpurgeable\00", align 1
@mark_unpurgeable._rs.63 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"!msm_obj->dontneed\00", [45 x i8] zeroinitializer }, align 32
@mark_unpurgeable._rs.65 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"priv->shrinkable_count < 0\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid cache flag: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@msm_gem_object_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @msm_gem_free_object, ptr null, ptr null, ptr null, ptr null, ptr @msm_gem_prime_pin, ptr @msm_gem_prime_unpin, ptr @msm_gem_prime_get_sg_table, ptr @msm_gem_prime_vmap, ptr @msm_gem_prime_vunmap, ptr @msm_gem_object_mmap, ptr @vm_ops }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @drm_gem_vm_open, ptr @drm_gem_vm_close, ptr null, ptr null, ptr null, ptr @msm_gem_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@msm_gem_fault._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.msm_gem_fault = private unnamed_addr constant [14 x i8] c"msm_gem_fault\00", align 1
@add_vma._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.add_vma = private unnamed_addr constant [8 x i8] c"add_vma\00", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 3, i64 7]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 187, i32 6 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 209, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 524, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 538, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 542, i32 7 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 546, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 571, i32 47 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 673, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 674, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 716, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 717, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 754, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 755, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 756, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 757, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 773, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 775, i32 25 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 788, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 789, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 790, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 806, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 897, i32 10 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 902, i32 10 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 906, i32 10 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 910, i32 16 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 915, i32 16 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 919, i32 15 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 936, i32 18 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 937, i32 18 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 939, i32 19 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 939, i32 30 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 944, i32 15 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 956, i32 14 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 959, i32 15 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 963, i32 16 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 965, i32 16 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 967, i32 16 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 969, i32 16 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 971, i32 16 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 996, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1001, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1132, i32 6 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1219, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 100, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 113, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 124, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 275, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 281, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 453, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 424, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 426, i32 6 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 430, i32 6 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 386, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 323, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 600, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 605, i32 6 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 606, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 354, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 372, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 219, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 817, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 837, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 227, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 232, i32 6 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 201, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 243, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 248, i32 6 }
@___asan_gen_.347 = private unnamed_addr constant [33 x i8] c"../drivers/gpu/drm/msm/msm_gem.h\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 252, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1096, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant [21 x i8] c"msm_gem_object_funcs\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1068, i32 42 }
@___asan_gen_.355 = private unnamed_addr constant [7 x i8] c"vm_ops\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1062, i32 42 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 242, i32 6 }
@___asan_gen_.361 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.362 = private constant [33 x i8] c"../drivers/gpu/drm/msm/msm_gem.c\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 304, i32 2 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @msm_gem_get_pages._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @msm_gem_put_pages._rs, ptr @.str.4, ptr @msm_gem_iova._rs, ptr @.str.5, ptr @msm_gem_unpin_iova_locked._rs, ptr @.str.6, ptr @msm_gem_unpin_iova_locked._rs.7, ptr @msm_gem_unpin_iova_locked._rs.8, ptr @.str.9, ptr @msm_gem_put_vaddr_locked._rs, ptr @msm_gem_put_vaddr_locked._rs.10, ptr @.str.11, ptr @msm_gem_purge._rs, ptr @msm_gem_purge._rs.12, ptr @.str.13, ptr @msm_gem_evict._rs, ptr @msm_gem_evict._rs.14, ptr @.str.15, ptr @msm_gem_evict._rs.16, ptr @.str.17, ptr @msm_gem_evict._rs.18, ptr @.str.19, ptr @msm_gem_vunmap._rs, ptr @msm_gem_vunmap._rs.20, ptr @.str.21, ptr @msm_gem_active_get._rs, ptr @msm_gem_active_get._rs.22, ptr @msm_gem_active_get._rs.23, ptr @.str.24, ptr @msm_gem_active_put._rs, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @msm_gem_free_object._rs, ptr @.str.43, ptr @msm_gem_free_object._rs.44, ptr @.str.45, ptr @msm_gem_new._rs, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @get_pages._rs, ptr @.str.49, ptr @.str.50, ptr @mmap_offset._rs, ptr @.str.51, ptr @get_and_pin_iova_range_locked._rs, ptr @msm_gem_pin_iova._rs, ptr @msm_gem_pin_iova._rs.52, ptr @msm_gem_pin_iova._rs.53, ptr @get_iova_locked._rs, ptr @lookup_vma._rs, ptr @get_vaddr._rs, ptr @get_vaddr._rs.54, ptr @.str.55, ptr @.str.56, ptr @put_iova_spaces._rs, ptr @put_iova_vmas._rs, ptr @is_vunmapable._rs, ptr @.str.57, ptr @.str.58, ptr @update_inactive._rs, ptr @update_inactive._rs.59, ptr @.str.60, ptr @mark_purgeable._rs, ptr @.str.61, ptr @mark_purgeable._rs.62, ptr @is_active._rs, ptr @mark_unpurgeable._rs, ptr @mark_unpurgeable._rs.63, ptr @.str.64, ptr @mark_unpurgeable._rs.65, ptr @.str.66, ptr @.str.67, ptr @msm_gem_object_funcs, ptr @vm_ops, ptr @msm_gem_fault._rs, ptr @add_vma._rs], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_get_pages._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_put_pages._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_iova._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_unpin_iova_locked._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_unpin_iova_locked._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_unpin_iova_locked._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_put_vaddr_locked._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_put_vaddr_locked._rs.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_purge._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_purge._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_evict._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_evict._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_evict._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_evict._rs.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_vunmap._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_vunmap._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_active_get._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_active_get._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_active_get._rs.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_active_put._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_free_object._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_free_object._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_new._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pages._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmap_offset._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_and_pin_iova_range_locked._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_pin_iova._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_pin_iova._rs.52 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_pin_iova._rs.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_iova_locked._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lookup_vma._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_vaddr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_vaddr._rs.54 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_iova_spaces._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_iova_vmas._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_vunmapable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_inactive._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_inactive._rs.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mark_purgeable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mark_purgeable._rs.62 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_active._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mark_unpurgeable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mark_unpurgeable._rs.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mark_unpurgeable._rs.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_object_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_fault._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_vma._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_gem_get_pages(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #12
  %madv = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %madv to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %madv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end40, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_get_pages._rs, ptr noundef nonnull @__func__.msm_gem_get_pages) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.rhs.cleanup_crit_edge, label %do.end.critedge, !prof !208

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 187, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end40:                                         ; preds = %entry
  %call41 = tail call fastcc ptr @get_pages(ptr noundef %obj)
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end40.cleanup_crit_edge, label %if.then43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %pin_count = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 14
  %4 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pin_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %pin_count, align 4
  tail call fastcc void @update_inactive(ptr noundef %obj)
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end40.cleanup_crit_edge, %do.end.critedge, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %land.rhs.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %do.end.critedge ], [ %call41, %if.then43 ], [ %call41, %if.end40.cleanup_crit_edge ]
  %6 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %7) #12
  tail call void @ww_mutex_unlock(ptr noundef %7) #12
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_pages(ptr noundef %obj) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %1) #12
  br i1 %call.i.i.i, label %entry.if.end36_crit_edge, label %land.rhs

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.rhs:                                         ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @get_pages._rs, ptr noundef nonnull @__func__.get_pages) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs.if.end36_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end.critedge, %land.rhs.if.end36_crit_edge, %entry.if.end36_crit_edge
  %pages = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 7
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages, align 8
  %tobool38.not = icmp eq ptr %3, null
  br i1 %tobool38.not, label %if.then39, label %if.end36.if.end67_crit_edge

if.end36.if.end67_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then39:                                        ; preds = %if.end36
  %dev40 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %4 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev40, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %shr = lshr i32 %7, 12
  %vram_node.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 11
  %8 = ptrtoint ptr %vram_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vram_node.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %call43 = tail call ptr @drm_gem_get_pages(ptr noundef %obj) #12
  br label %if.end45

if.else:                                          ; preds = %if.then39
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i, align 4
  %12 = shl nuw nsw i32 %shr, 2
  %call.i.i.i95 = tail call noalias ptr @kvmalloc_node(i32 noundef %12, i32 noundef 3264, i32 noundef -1) #15
  %tobool.not.i96 = icmp eq ptr %call.i.i.i95, null
  br i1 %tobool.not.i96, label %if.else.if.then47_crit_edge, label %if.end.i

if.else.if.then47_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.end.i:                                         ; preds = %if.else
  %lock.i = getelementptr inbounds %struct.msm_drm_private, ptr %11, i32 0, i32 35, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %mm.i = getelementptr inbounds %struct.msm_drm_private, ptr %11, i32 0, i32 35, i32 2
  %13 = ptrtoint ptr %vram_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vram_node.i, align 4
  %15 = zext i32 %shr to i64
  %call.i.i31.i = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %mm.i, ptr noundef %14, i64 noundef %15, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #12
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31.i)
  %tobool6.not.i = icmp eq i32 %call.i.i31.i, 0
  br i1 %tobool6.not.i, label %if.end9.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i95) #12
  %16 = inttoptr i32 %call.i.i31.i to ptr
  br label %if.end45

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %7)
  %cmp34.not.i = icmp ult i32 %7, 4096
  br i1 %cmp34.not.i, label %if.end9.i.if.end45_crit_edge, label %for.body.lr.ph.i

if.end9.i.if.end45_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

for.body.lr.ph.i:                                 ; preds = %if.end9.i
  %17 = ptrtoint ptr %vram_node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vram_node.i, align 4
  %start.i.i = getelementptr inbounds %struct.drm_mm_node, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %start.i.i, align 8
  %conv.i.i = trunc i64 %20 to i32
  %shl.i.i = shl i32 %conv.i.i, 12
  %21 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev40, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_private.i.i, align 4
  %paddr.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %24, i32 0, i32 35, i32 1
  %25 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %paddr.i.i, align 4
  %add.i.i = add i32 %26, %shl.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %28 = load i32, ptr @__pv_phys_pfn_offset, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %paddr.035.i = phi i32 [ %add.i.i, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %shr.i = lshr i32 %paddr.035.i, 12
  %sub.i = sub i32 %shr.i, %28
  %add.ptr12.i = getelementptr %struct.page, ptr %27, i32 %sub.i
  %arrayidx.i = getelementptr ptr, ptr %call.i.i.i95, i32 %i.036.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr12.i, ptr %arrayidx.i, align 4
  %add.i = add i32 %paddr.035.i, 4096
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr
  br i1 %exitcond.not.i, label %for.body.i.if.end45_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.if.end45_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.end45:                                         ; preds = %for.body.i.if.end45_crit_edge, %if.end9.i.if.end45_crit_edge, %if.then7.i, %if.then42
  %p.0 = phi ptr [ %call43, %if.then42 ], [ %16, %if.then7.i ], [ %call.i.i.i95, %if.end9.i.if.end45_crit_edge ], [ %call.i.i.i95, %for.body.i.if.end45_crit_edge ]
  %cmp.i = icmp ugt ptr %p.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end45.if.then47_crit_edge, label %if.end50

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %if.else.if.then47_crit_edge
  %p.0101 = phi ptr [ %p.0, %if.end45.if.then47_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.if.then47_crit_edge ]
  %dev48 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %30 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev48, align 4
  %32 = ptrtoint ptr %p.0101 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %31, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.49, i32 noundef %32) #12
  br label %cleanup69

if.end50:                                         ; preds = %if.end45
  %33 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %p.0, ptr %pages, align 8
  %34 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev40, align 8
  %call53 = tail call ptr @drm_prime_pages_to_sg(ptr noundef %35, ptr noundef %p.0, i32 noundef %shr) #12
  %sgt = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 8
  %36 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call53, ptr %sgt, align 4
  %cmp.i98 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %if.then56, label %if.end61

if.then56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %dev59 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %37 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev59, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %38, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.50) #12
  %39 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %sgt, align 4
  br label %cleanup69

if.end61:                                         ; preds = %if.end50
  %flags = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 1
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 8
  %and = and i32 %41, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool62.not = icmp eq i32 %and, 0
  br i1 %tobool62.not, label %if.end61.cleanup_crit_edge, label %if.then63

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev40, align 8
  %dev2.i = getelementptr inbounds %struct.drm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev2.i, align 4
  %call.i = tail call i32 @dma_map_sgtable(ptr noundef %45, ptr noundef %call53, i32 noundef 0, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end61.cleanup_crit_edge
  tail call fastcc void @update_inactive(ptr noundef %obj)
  br label %if.end67

if.end67:                                         ; preds = %cleanup, %if.end36.if.end67_crit_edge
  %46 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pages, align 8
  br label %cleanup69

cleanup69:                                        ; preds = %if.end67, %if.then56, %if.then47
  %retval.1 = phi ptr [ %47, %if.end67 ], [ %p.0101, %if.then47 ], [ %call53, %if.then56 ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_inactive(ptr noundef %msm_obj) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %msm_obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %msm_obj, i32 0, i32 9
  %4 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %5) #12
  br i1 %call.i.i.i, label %entry.if.end36_crit_edge, label %land.rhs

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.rhs:                                         ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @update_inactive._rs, ptr noundef nonnull @__func__.update_inactive) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.rhs.if.end36_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 817, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.58) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end.critedge, %land.rhs.if.end36_crit_edge, %entry.if.end36_crit_edge
  %active_count = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 13
  %6 = ptrtoint ptr %active_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end39, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %if.end36
  %mm_lock = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mm_lock, i32 noundef 0) #12
  %dontneed = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 3
  %8 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %dontneed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end39.if.end41_crit_edge, label %if.then40

if.end39.if.end41_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then40:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mark_unpurgeable(ptr noundef %msm_obj)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end39.if.end41_crit_edge
  %9 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load42 = load i8, ptr %dontneed, align 1
  %10 = and i8 %bf.load42, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %bf.cast44.not = icmp eq i8 %10, 0
  br i1 %bf.cast44.not, label %if.end41.if.end46_crit_edge, label %if.then45

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then45:                                        ; preds = %if.end41
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_private.i, align 4
  %mm_lock.i = getelementptr inbounds %struct.msm_drm_private, ptr %14, i32 0, i32 21
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mm_lock.i) #12
  br i1 %call.i, label %if.then45.if.end.i_crit_edge, label %do.end.i, !prof !208

if.then45.if.end.i_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 281, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then45.if.end.i_crit_edge
  %import_attach.i.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %msm_obj, i32 0, i32 8
  %15 = ptrtoint ptr %import_attach.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %import_attach.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i, label %is_unpurgeable.exit.i.i, label %if.end.i.if.end46_crit_edge

if.end.i.if.end46_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

is_unpurgeable.exit.i.i:                          ; preds = %if.end.i
  %pin_count.i.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 14
  %17 = ptrtoint ptr %pin_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pin_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool1.i.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool1.i.not.i.i, label %is_unevictable.exit.i, label %is_unpurgeable.exit.i.i.if.end46_crit_edge

is_unpurgeable.exit.i.i.if.end46_crit_edge:       ; preds = %is_unpurgeable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

is_unevictable.exit.i:                            ; preds = %is_unpurgeable.exit.i.i
  %vaddr.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 9
  %19 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vaddr.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %20, null
  br i1 %tobool.i.not.i, label %if.end22.i, label %is_unevictable.exit.i.if.end46_crit_edge

is_unevictable.exit.i.if.end46_crit_edge:         ; preds = %is_unevictable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.end22.i:                                       ; preds = %is_unevictable.exit.i
  %21 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %dontneed, align 1
  %22 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %bf.cast.not.i = icmp eq i8 %22, 0
  br i1 %bf.cast.not.i, label %do.end41.i, label %if.end57.i, !prof !209

do.end41.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 286, i32 noundef 9, ptr noundef null) #12
  br label %if.end46

if.end57.i:                                       ; preds = %if.end22.i
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %msm_obj, i32 0, i32 5
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 8
  %shr.i = lshr i32 %24, 12
  %evictable_count.i = getelementptr inbounds %struct.msm_drm_private, ptr %14, i32 0, i32 20
  %25 = ptrtoint ptr %evictable_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %evictable_count.i, align 8
  %sub.i = sub i32 %26, %shr.i
  store i32 %sub.i, ptr %evictable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end76.i, label %if.end57.i.if.end82.i_crit_edge, !prof !209

if.end57.i.if.end82.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82.i

do.end76.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 290, i32 noundef 9, ptr noundef null) #12
  br label %if.end82.i

if.end82.i:                                       ; preds = %do.end76.i, %if.end57.i.if.end82.i_crit_edge
  %27 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load91.i = load i8, ptr %dontneed, align 1
  %bf.clear92.i = and i8 %bf.load91.i, -65
  store i8 %bf.clear92.i, ptr %dontneed, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.end82.i, %do.end41.i, %is_unevictable.exit.i.if.end46_crit_edge, %is_unpurgeable.exit.i.i.if.end46_crit_edge, %if.end.i.if.end46_crit_edge, %if.end41.if.end46_crit_edge
  %mm_list = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mm_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end46.list_del.exit_crit_edge

if.end46.list_del.exit_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 6, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %mm_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mm_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end46.list_del.exit_crit_edge
  %34 = ptrtoint ptr %mm_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %mm_list, align 4
  %prev.i = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %madv = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 2
  %36 = ptrtoint ptr %madv to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %madv, align 4
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i8 %37, label %list_del.exit.land.rhs64_crit_edge [
    i8 0, label %land.lhs.true
    i8 1, label %if.then56
    i8 2, label %list_del.exit.if.end115_crit_edge
  ]

list_del.exit.if.end115_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

list_del.exit.land.rhs64_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs64

land.lhs.true:                                    ; preds = %list_del.exit
  %sgt = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 8
  %39 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sgt, align 4
  %tobool49.not = icmp eq ptr %40, null
  br i1 %tobool49.not, label %land.lhs.true.land.rhs64_crit_edge, label %if.then50

land.lhs.true.land.rhs64_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs64

if.then50:                                        ; preds = %land.lhs.true
  %inactive_willneed = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 16
  %prev.i148 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 16, i32 1
  %41 = ptrtoint ptr %prev.i148 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i148, align 4
  %call.i.i149 = tail call zeroext i1 @__list_add_valid(ptr noundef %mm_list, ptr noundef %42, ptr noundef %inactive_willneed) #12
  br i1 %call.i.i149, label %if.end.i.i150, label %if.then50.list_add_tail.exit_crit_edge

if.then50.list_add_tail.exit_crit_edge:           ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i150:                                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %prev.i148 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %mm_list, ptr %prev.i148, align 4
  %44 = ptrtoint ptr %mm_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %inactive_willneed, ptr %mm_list, align 4
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %mm_list, ptr %42, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i150, %if.then50.list_add_tail.exit_crit_edge
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  %dev_private.i152 = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %dev_private.i152 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_private.i152, align 4
  %mm_lock.i153 = getelementptr inbounds %struct.msm_drm_private, ptr %50, i32 0, i32 21
  %call.i154 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mm_lock.i153) #12
  br i1 %call.i154, label %list_add_tail.exit.if.end.i158_crit_edge, label %do.end.i155, !prof !208

list_add_tail.exit.if.end.i158_crit_edge:         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i158

do.end.i155:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 265, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i158

if.end.i158:                                      ; preds = %do.end.i155, %list_add_tail.exit.if.end.i158_crit_edge
  %import_attach.i.i.i156 = getelementptr inbounds %struct.drm_gem_object, ptr %msm_obj, i32 0, i32 8
  %51 = ptrtoint ptr %import_attach.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %import_attach.i.i.i156, align 4
  %tobool.not.i.i.i157 = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i157, label %is_unpurgeable.exit.i.i161, label %if.end.i158.if.end119_crit_edge

if.end.i158.if.end119_crit_edge:                  ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

is_unpurgeable.exit.i.i161:                       ; preds = %if.end.i158
  %pin_count.i.i.i159 = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 14
  %53 = ptrtoint ptr %pin_count.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pin_count.i.i.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool1.i.not.i.i160 = icmp eq i32 %54, 0
  br i1 %tobool1.i.not.i.i160, label %is_unevictable.exit.i164, label %is_unpurgeable.exit.i.i161.if.end119_crit_edge

is_unpurgeable.exit.i.i161.if.end119_crit_edge:   ; preds = %is_unpurgeable.exit.i.i161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

is_unevictable.exit.i164:                         ; preds = %is_unpurgeable.exit.i.i161
  %vaddr.i.i162 = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 9
  %55 = ptrtoint ptr %vaddr.i.i162 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vaddr.i.i162, align 8
  %tobool.i.not.i163 = icmp eq ptr %56, null
  br i1 %tobool.i.not.i163, label %if.end22.i168, label %is_unevictable.exit.i164.if.end119_crit_edge

is_unevictable.exit.i164.if.end119_crit_edge:     ; preds = %is_unevictable.exit.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.end22.i168:                                    ; preds = %is_unevictable.exit.i164
  %57 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i166 = load i8, ptr %dontneed, align 1
  %58 = and i8 %bf.load.i166, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %bf.cast.not.i167 = icmp eq i8 %58, 0
  br i1 %bf.cast.not.i167, label %if.end55.i, label %do.end39.i, !prof !208

do.end39.i:                                       ; preds = %if.end22.i168
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 270, i32 noundef 9, ptr noundef null) #12
  br label %if.end119

if.end55.i:                                       ; preds = %if.end22.i168
  call void @__sanitizer_cov_trace_pc() #14
  %size.i169 = getelementptr inbounds %struct.drm_gem_object, ptr %msm_obj, i32 0, i32 5
  %59 = ptrtoint ptr %size.i169 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size.i169, align 8
  %shr.i170 = lshr i32 %60, 12
  %evictable_count.i171 = getelementptr inbounds %struct.msm_drm_private, ptr %50, i32 0, i32 20
  %61 = ptrtoint ptr %evictable_count.i171 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %evictable_count.i171, align 8
  %add.i = add i32 %62, %shr.i170
  store i32 %add.i, ptr %evictable_count.i171, align 8
  %63 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load58.i = load i8, ptr %dontneed, align 1
  %bf.set.i = or i8 %bf.load58.i, 64
  store i8 %bf.set.i, ptr %dontneed, align 1
  br label %if.end119

if.then56:                                        ; preds = %list_del.exit
  %inactive_dontneed = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 17
  %prev.i172 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 17, i32 1
  %64 = ptrtoint ptr %prev.i172 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i172, align 4
  %call.i.i173 = tail call zeroext i1 @__list_add_valid(ptr noundef %mm_list, ptr noundef %65, ptr noundef %inactive_dontneed) #12
  br i1 %call.i.i173, label %if.end.i.i175, label %if.then56.list_add_tail.exit176_crit_edge

if.then56.list_add_tail.exit176_crit_edge:        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit176

if.end.i.i175:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %prev.i172 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %mm_list, ptr %prev.i172, align 4
  %67 = ptrtoint ptr %mm_list to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %inactive_dontneed, ptr %mm_list, align 4
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %mm_list, ptr %65, align 4
  br label %list_add_tail.exit176

list_add_tail.exit176:                            ; preds = %if.end.i.i175, %if.then56.list_add_tail.exit176_crit_edge
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 8
  %dev_private.i178 = getelementptr inbounds %struct.drm_device, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %dev_private.i178 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_private.i178, align 4
  %mm_lock.i179 = getelementptr inbounds %struct.msm_drm_private, ptr %73, i32 0, i32 21
  %call.i180 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mm_lock.i179) #12
  br i1 %call.i180, label %list_add_tail.exit176.if.end35.i_crit_edge, label %land.rhs.i

list_add_tail.exit176.if.end35.i_crit_edge:       ; preds = %list_add_tail.exit176
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

land.rhs.i:                                       ; preds = %list_add_tail.exit176
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @mark_purgeable._rs, ptr noundef nonnull @__func__.mark_purgeable) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.rhs.i.if.end35.i_crit_edge, label %do.end.critedge.i, !prof !208

land.rhs.i.if.end35.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.61) #12
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end.critedge.i, %land.rhs.i.if.end35.i_crit_edge, %list_add_tail.exit176.if.end35.i_crit_edge
  %import_attach.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %msm_obj, i32 0, i32 8
  %74 = ptrtoint ptr %import_attach.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %import_attach.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i, label %is_unpurgeable.exit.i, label %if.end35.i.if.end119_crit_edge

if.end35.i.if.end119_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

is_unpurgeable.exit.i:                            ; preds = %if.end35.i
  %pin_count.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 14
  %76 = ptrtoint ptr %pin_count.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pin_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool1.i.not.i = icmp eq i32 %77, 0
  br i1 %tobool1.i.not.i, label %if.end39.i, label %is_unpurgeable.exit.i.if.end119_crit_edge

is_unpurgeable.exit.i.if.end119_crit_edge:        ; preds = %is_unpurgeable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.end39.i:                                       ; preds = %is_unpurgeable.exit.i
  %78 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load.i181 = load i8, ptr %dontneed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i181)
  %bf.cast.not.i182 = icmp sgt i8 %bf.load.i181, -1
  br i1 %bf.cast.not.i182, label %if.end92.i, label %land.rhs46.i

land.rhs46.i:                                     ; preds = %if.end39.i
  %call47.i = tail call i32 @___ratelimit(ptr noundef nonnull @mark_purgeable._rs.62, ptr noundef nonnull @__func__.mark_purgeable) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %land.rhs46.i.if.end119_crit_edge, label %do.end74.critedge.i, !prof !208

land.rhs46.i.if.end119_crit_edge:                 ; preds = %land.rhs46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

do.end74.critedge.i:                              ; preds = %land.rhs46.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 232, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.24) #12
  br label %if.end119

if.end92.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  %size.i183 = getelementptr inbounds %struct.drm_gem_object, ptr %msm_obj, i32 0, i32 5
  %79 = ptrtoint ptr %size.i183 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size.i183, align 8
  %shr.i184 = lshr i32 %80, 12
  %shrinkable_count.i = getelementptr inbounds %struct.msm_drm_private, ptr %73, i32 0, i32 19
  %81 = ptrtoint ptr %shrinkable_count.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %shrinkable_count.i, align 4
  %add.i185 = add i32 %82, %shr.i184
  store i32 %add.i185, ptr %shrinkable_count.i, align 4
  %83 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load95.i = load i8, ptr %dontneed, align 1
  %bf.set.i186 = or i8 %bf.load95.i, -128
  store i8 %bf.set.i186, ptr %dontneed, align 1
  br label %if.end119

land.rhs64:                                       ; preds = %land.lhs.true.land.rhs64_crit_edge, %list_del.exit.land.rhs64_crit_edge
  %sgt65 = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 8
  %84 = ptrtoint ptr %sgt65 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sgt65, align 4
  %tobool66.not = icmp eq ptr %85, null
  br i1 %tobool66.not, label %land.rhs64.if.end115_crit_edge, label %land.rhs73

land.rhs64.if.end115_crit_edge:                   ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

land.rhs73:                                       ; preds = %land.rhs64
  %call74 = tail call i32 @___ratelimit(ptr noundef nonnull @update_inactive._rs.59, ptr noundef nonnull @__func__.update_inactive) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.rhs73.if.end115_crit_edge, label %do.end101.critedge, !prof !208

land.rhs73.if.end115_crit_edge:                   ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

do.end101.critedge:                               ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 837, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.60) #12
  br label %if.end115

if.end115:                                        ; preds = %do.end101.critedge, %land.rhs73.if.end115_crit_edge, %land.rhs64.if.end115_crit_edge, %list_del.exit.if.end115_crit_edge
  %inactive_unpinned = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 18
  %prev.i187 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 18, i32 1
  %86 = ptrtoint ptr %prev.i187 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i187, align 4
  %call.i.i188 = tail call zeroext i1 @__list_add_valid(ptr noundef %mm_list, ptr noundef %87, ptr noundef %inactive_unpinned) #12
  br i1 %call.i.i188, label %if.end.i.i190, label %if.end115.if.end119_crit_edge

if.end115.if.end119_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.end.i.i190:                                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %prev.i187 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %mm_list, ptr %prev.i187, align 4
  %89 = ptrtoint ptr %mm_list to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %inactive_unpinned, ptr %mm_list, align 4
  %90 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %mm_list, ptr %87, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.end.i.i190, %if.end115.if.end119_crit_edge, %if.end92.i, %do.end74.critedge.i, %land.rhs46.i.if.end119_crit_edge, %is_unpurgeable.exit.i.if.end119_crit_edge, %if.end35.i.if.end119_crit_edge, %if.end55.i, %do.end39.i, %is_unevictable.exit.i164.if.end119_crit_edge, %is_unpurgeable.exit.i.i161.if.end119_crit_edge, %if.end.i158.if.end119_crit_edge
  tail call void @mutex_unlock(ptr noundef %mm_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %if.end36.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_put_pages(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #12
  %pin_count = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 14
  %2 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %pin_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp slt i32 %dec, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_put_pages._rs, ptr noundef nonnull @__func__.msm_gem_put_pages) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.rhs.if.end35_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 209, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end.critedge, %land.rhs.if.end35_crit_edge, %entry.if.end35_crit_edge
  tail call fastcc void @update_inactive(ptr noundef %obj)
  %4 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %5) #12
  tail call void @ww_mutex_unlock(ptr noundef %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @msm_gem_mmap_offset(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #12
  %dev1.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 8
  %4 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %5) #12
  br i1 %call.i.i.i.i, label %entry.if.end36.i_crit_edge, label %land.rhs.i

entry.if.end36.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

land.rhs.i:                                       ; preds = %entry
  %call4.i = tail call i32 @___ratelimit(ptr noundef nonnull @mmap_offset._rs, ptr noundef nonnull @__func__.mmap_offset) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.rhs.i.if.end36.i_crit_edge, label %do.end.critedge.i, !prof !208

land.rhs.i.if.end36.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 275, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end.critedge.i, %land.rhs.i.if.end36.i_crit_edge, %entry.if.end36.i_crit_edge
  %call38.i = tail call i32 @drm_gem_create_mmap_offset(ptr noundef %obj) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end42.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev41.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %dev41.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev41.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.51) #12
  br label %mmap_offset.exit

if.end42.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 4, i32 1, i32 1
  %8 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start.i.i, align 8
  %shl.i.i = shl i64 %9, 12
  br label %mmap_offset.exit

mmap_offset.exit:                                 ; preds = %if.end42.i, %if.then40.i
  %retval.0.i = phi i64 [ 0, %if.then40.i ], [ %shl.i.i, %if.end42.i ]
  %10 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %11) #12
  tail call void @ww_mutex_unlock(ptr noundef %11) #12
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gem_get_and_pin_iova_range(ptr noundef %obj, ptr noundef %aspace, ptr nocapture noundef writeonly %iova, i64 noundef %range_start, i64 noundef %range_end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #12
  %call = tail call fastcc i32 @get_and_pin_iova_range_locked(ptr noundef %obj, ptr noundef %aspace, ptr noundef %iova, i64 noundef %range_start, i64 noundef %range_end)
  %2 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %3) #12
  tail call void @ww_mutex_unlock(ptr noundef %3) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_and_pin_iova_range_locked(ptr noundef %obj, ptr noundef %aspace, ptr nocapture noundef writeonly %iova, i64 noundef %range_start, i64 noundef %range_end) unnamed_addr #0 align 64 {
entry:
  %local = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %local) #12
  %0 = ptrtoint ptr %local to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %local, align 8, !annotation !210
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %1 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %2) #12
  br i1 %call.i.i.i, label %entry.if.end35_crit_edge, label %land.rhs

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.rhs:                                         ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @get_and_pin_iova_range_locked._rs, ptr noundef nonnull @__func__.get_and_pin_iova_range_locked) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs.if.end35_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 453, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end.critedge, %land.rhs.if.end35_crit_edge, %entry.if.end35_crit_edge
  %call37 = call fastcc i32 @get_iova_locked(ptr noundef %obj, ptr noundef %aspace, ptr noundef nonnull %local, i64 noundef %range_start, i64 noundef %range_end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end35.if.end44_crit_edge

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then39:                                        ; preds = %if.end35
  %flags.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 1
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %4, 2
  %and2.i = lshr i32 %4, 24
  %5 = and i32 %and2.i, 32
  %6 = or i32 %5, %and.i
  %and8.i = lshr i32 %4, 17
  %7 = and i32 %and8.i, 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, 3
  %10 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resv.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %11) #12
  br i1 %call.i.i.i.i, label %if.then39.if.end51.i_crit_edge, label %land.rhs.i

if.then39.if.end51.i_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

land.rhs.i:                                       ; preds = %if.then39
  %call16.i = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_pin_iova._rs, ptr noundef nonnull @__func__.msm_gem_pin_iova) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %land.rhs.i.if.end51.i_crit_edge, label %do.end.critedge.i, !prof !208

land.rhs.i.if.end51.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end51.i

if.end51.i:                                       ; preds = %do.end.critedge.i, %land.rhs.i.if.end51.i_crit_edge, %if.then39.if.end51.i_crit_edge
  %madv.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 2
  %12 = ptrtoint ptr %madv.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %madv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.not.i = icmp eq i8 %13, 0
  br i1 %cmp.not.i, label %if.end106.i, label %land.rhs60.i

land.rhs60.i:                                     ; preds = %if.end51.i
  %call61.i = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_pin_iova._rs.52, ptr noundef nonnull @__func__.msm_gem_pin_iova) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %land.rhs60.i.if.end44_crit_edge, label %do.end88.critedge.i, !prof !208

land.rhs60.i.if.end44_crit_edge:                  ; preds = %land.rhs60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

do.end88.critedge.i:                              ; preds = %land.rhs60.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 426, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  br label %if.end44

if.end106.i:                                      ; preds = %if.end51.i
  %14 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resv.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %15) #12
  br i1 %call.i.i.i.i.i, label %if.end106.i.if.end36.i.i_crit_edge, label %land.rhs.i.i

if.end106.i.if.end36.i.i_crit_edge:               ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i.i

land.rhs.i.i:                                     ; preds = %if.end106.i
  %call3.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @lookup_vma._rs, ptr noundef nonnull @__func__.lookup_vma) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.rhs.i.i.if.end36.i.i_crit_edge, label %do.end.critedge.i.i, !prof !208

land.rhs.i.i.if.end36.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i.i

do.end.critedge.i.i:                              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 323, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %do.end.critedge.i.i, %land.rhs.i.i.if.end36.i.i_crit_edge, %if.end106.i.if.end36.i.i_crit_edge
  %vmas.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 10
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end36.i.i
  %.pn.in.i.i = phi ptr [ %vmas.i.i, %if.end36.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %16 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %vmas.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.land.rhs117.i_crit_edge, label %for.body.i.i

for.cond.i.i.land.rhs117.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs117.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %aspace44.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %17 = ptrtoint ptr %aspace44.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %aspace44.i.i, align 8
  %cmp45.i.i = icmp eq ptr %18, %aspace
  br i1 %cmp45.i.i, label %lookup_vma.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

lookup_vma.exit.i:                                ; preds = %for.body.i.i
  %vma.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -124
  %tobool109.not.i = icmp eq ptr %vma.0.le.i.i, null
  br i1 %tobool109.not.i, label %lookup_vma.exit.i.land.rhs117.i_crit_edge, label %if.end163.i

lookup_vma.exit.i.land.rhs117.i_crit_edge:        ; preds = %lookup_vma.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs117.i

land.rhs117.i:                                    ; preds = %lookup_vma.exit.i.land.rhs117.i_crit_edge, %for.cond.i.i.land.rhs117.i_crit_edge
  %call118.i = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_pin_iova._rs.53, ptr noundef nonnull @__func__.msm_gem_pin_iova) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i)
  %tobool119.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool119.not.i, label %land.rhs117.i.if.end44_crit_edge, label %do.end145.critedge.i, !prof !208

land.rhs117.i.if.end44_crit_edge:                 ; preds = %land.rhs117.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

do.end145.critedge.i:                             ; preds = %land.rhs117.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #12
  br label %if.end44

if.end163.i:                                      ; preds = %lookup_vma.exit.i
  %call164.i = tail call fastcc ptr @get_pages(ptr noundef %obj) #12
  %cmp.i.i = icmp ugt ptr %call164.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end41, label %if.end168.i

if.end168.i:                                      ; preds = %if.end163.i
  %sgt.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 8
  %19 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sgt.i, align 4
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 8
  %shr.i = lshr i32 %22, 12
  %call169.i = tail call i32 @msm_gem_map_vma(ptr noundef %aspace, ptr noundef nonnull %vma.0.le.i.i, i32 noundef %9, ptr noundef %20, i32 noundef %shr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169.i)
  %tobool170.not.i = icmp eq i32 %call169.i, 0
  br i1 %tobool170.not.i, label %if.end41.thread56, label %if.end168.i.if.end44_crit_edge

if.end168.i.if.end44_crit_edge:                   ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end41.thread56:                                ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #14
  %pin_count.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 14
  %23 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pin_count.i, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %pin_count.i, align 4
  %25 = ptrtoint ptr %local to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %local, align 8
  %27 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %iova, align 8
  br label %if.end44

if.end41:                                         ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %call164.i to i32
  br label %if.end44

if.end44:                                         ; preds = %if.end41, %if.end41.thread56, %if.end168.i.if.end44_crit_edge, %do.end145.critedge.i, %land.rhs117.i.if.end44_crit_edge, %do.end88.critedge.i, %land.rhs60.i.if.end44_crit_edge, %if.end35.if.end44_crit_edge
  %ret.055 = phi i32 [ 0, %if.end41.thread56 ], [ %28, %if.end41 ], [ -22, %land.rhs117.i.if.end44_crit_edge ], [ -16, %land.rhs60.i.if.end44_crit_edge ], [ %call169.i, %if.end168.i.if.end44_crit_edge ], [ -22, %do.end145.critedge.i ], [ -16, %do.end88.critedge.i ], [ %call37, %if.end35.if.end44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %local) #12
  ret i32 %ret.055
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gem_get_and_pin_iova_locked(ptr noundef %obj, ptr noundef %aspace, ptr nocapture noundef writeonly %iova) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @get_and_pin_iova_range_locked(ptr noundef %obj, ptr noundef %aspace, ptr noundef %iova, i64 noundef 0, i64 noundef -1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gem_get_and_pin_iova(ptr noundef %obj, ptr noundef %aspace, ptr nocapture noundef writeonly %iova) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #12
  %call.i = tail call fastcc i32 @get_and_pin_iova_range_locked(ptr noundef %obj, ptr noundef %aspace, ptr noundef %iova, i64 noundef 0, i64 noundef -1) #12
  %2 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %3) #12
  tail call void @ww_mutex_unlock(ptr noundef %3) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gem_get_iova(ptr noundef %obj, ptr noundef %aspace, ptr nocapture noundef writeonly %iova) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #12
  %call = tail call fastcc i32 @get_iova_locked(ptr noundef %obj, ptr noundef %aspace, ptr noundef %iova, i64 noundef 0, i64 noundef -1)
  %2 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %3) #12
  tail call void @ww_mutex_unlock(ptr noundef %3) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_iova_locked(ptr noundef %obj, ptr noundef %aspace, ptr nocapture noundef writeonly %iova, i64 noundef %range_start, i64 noundef %range_end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %1) #12
  br i1 %call.i.i.i, label %entry.if.end35_crit_edge, label %land.rhs

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.rhs:                                         ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @get_iova_locked._rs, ptr noundef nonnull @__func__.get_iova_locked) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs.if.end35_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 386, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end.critedge, %land.rhs.if.end35_crit_edge, %entry.if.end35_crit_edge
  %2 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #12
  br i1 %call.i.i.i.i, label %if.end35.if.end36.i_crit_edge, label %land.rhs.i

if.end35.if.end36.i_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

land.rhs.i:                                       ; preds = %if.end35
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @lookup_vma._rs, ptr noundef nonnull @__func__.lookup_vma) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.rhs.i.if.end36.i_crit_edge, label %do.end.critedge.i, !prof !208

land.rhs.i.if.end36.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 323, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end.critedge.i, %land.rhs.i.if.end36.i_crit_edge, %if.end35.if.end36.i_crit_edge
  %vmas.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end36.i
  %.pn.in.i = phi ptr [ %vmas.i, %if.end36.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %vmas.i
  br i1 %cmp.not.i, label %for.cond.i.if.then39_crit_edge, label %for.body.i

for.cond.i.if.then39_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

for.body.i:                                       ; preds = %for.cond.i
  %aspace44.i = getelementptr i8, ptr %.pn.i, i32 -4
  %5 = ptrtoint ptr %aspace44.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aspace44.i, align 8
  %cmp45.i = icmp eq ptr %6, %aspace
  br i1 %cmp45.i, label %lookup_vma.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

lookup_vma.exit:                                  ; preds = %for.body.i
  %vma.0.le.i = getelementptr i8, ptr %.pn.i, i32 -124
  %tobool38.not = icmp eq ptr %vma.0.le.i, null
  br i1 %tobool38.not, label %lookup_vma.exit.if.then39_crit_edge, label %lookup_vma.exit.if.end49_crit_edge

lookup_vma.exit.if.end49_crit_edge:               ; preds = %lookup_vma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

lookup_vma.exit.if.then39_crit_edge:              ; preds = %lookup_vma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

if.then39:                                        ; preds = %lookup_vma.exit.if.then39_crit_edge, %for.cond.i.if.then39_crit_edge
  %call40 = tail call fastcc ptr @add_vma(ptr noundef %obj, ptr noundef %aspace)
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call40 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.then39
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 8
  %shr = lshr i32 %9, 12
  %call45 = tail call i32 @msm_gem_init_vma(ptr noundef %aspace, ptr noundef %call40, i32 noundef %shr, i64 noundef %range_start, i64 noundef %range_end) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.if.end49_crit_edge, label %if.then47

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then47:                                        ; preds = %if.end44
  %tobool.not.i = icmp eq ptr %call40, null
  br i1 %tobool.not.i, label %if.then47.cleanup_crit_edge, label %if.end.i

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then47
  %list.i = getelementptr inbounds %struct.msm_gem_vma, ptr %call40, i32 0, i32 3
  %call.i.i.i66 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i66, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.msm_gem_vma, ptr %call40, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %16 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.msm_gem_vma, ptr %call40, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call40) #12
  br label %cleanup

if.end49:                                         ; preds = %if.end44.if.end49_crit_edge, %lookup_vma.exit.if.end49_crit_edge
  %vma.0 = phi ptr [ %vma.0.le.i, %lookup_vma.exit.if.end49_crit_edge ], [ %call40, %if.end44.if.end49_crit_edge ]
  %iova50 = getelementptr inbounds %struct.msm_gem_vma, ptr %vma.0, i32 0, i32 1
  %18 = ptrtoint ptr %iova50 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %iova50, align 8
  %20 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %iova, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %list_del.exit.i, %if.then47.cleanup_crit_edge, %if.then42
  %retval.0 = phi i32 [ 0, %if.end49 ], [ %7, %if.then42 ], [ %call45, %if.then47.cleanup_crit_edge ], [ %call45, %list_del.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @msm_gem_iova(ptr noundef readonly %obj, ptr noundef readnone %aspace) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #12
  %2 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #12
  br i1 %call.i.i.i.i, label %entry.if.end36.i_crit_edge, label %land.rhs.i

entry.if.end36.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

land.rhs.i:                                       ; preds = %entry
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @lookup_vma._rs, ptr noundef nonnull @__func__.lookup_vma) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.rhs.i.if.end36.i_crit_edge, label %do.end.critedge.i, !prof !208

land.rhs.i.if.end36.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 323, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end.critedge.i, %land.rhs.i.if.end36.i_crit_edge, %entry.if.end36.i_crit_edge
  %vmas.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end36.i
  %.pn.in.i = phi ptr [ %vmas.i, %if.end36.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %vmas.i
  br i1 %cmp.not.i, label %for.cond.i.lookup_vma.exit_crit_edge, label %for.body.i

for.cond.i.lookup_vma.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lookup_vma.exit

for.body.i:                                       ; preds = %for.cond.i
  %aspace44.i = getelementptr i8, ptr %.pn.i, i32 -4
  %5 = ptrtoint ptr %aspace44.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aspace44.i, align 8
  %cmp45.i = icmp eq ptr %6, %aspace
  br i1 %cmp45.i, label %cleanup.split.loop.exit62.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

cleanup.split.loop.exit62.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %vma.0.le.i = getelementptr i8, ptr %.pn.i, i32 -124
  br label %lookup_vma.exit

lookup_vma.exit:                                  ; preds = %cleanup.split.loop.exit62.i, %for.cond.i.lookup_vma.exit_crit_edge
  %retval.0.i = phi ptr [ %vma.0.le.i, %cleanup.split.loop.exit62.i ], [ null, %for.cond.i.lookup_vma.exit_crit_edge ]
  %7 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %8) #12
  tail call void @ww_mutex_unlock(ptr noundef %8) #12
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %land.rhs, label %cond.true.critedge

land.rhs:                                         ; preds = %lookup_vma.exit
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_iova._rs, ptr noundef nonnull @__func__.msm_gem_iova) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.rhs.cond.end_crit_edge, label %do.end.critedge, !prof !208

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 524, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #12
  br label %cond.end

cond.true.critedge:                               ; preds = %lookup_vma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %iova = getelementptr inbounds %struct.msm_gem_vma, ptr %retval.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %iova, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true.critedge, %do.end.critedge, %land.rhs.cond.end_crit_edge
  %cond = phi i64 [ %10, %cond.true.critedge ], [ 0, %do.end.critedge ], [ 0, %land.rhs.cond.end_crit_edge ]
  ret i64 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_unpin_iova_locked(ptr noundef %obj, ptr noundef %aspace) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %1) #12
  br i1 %call.i.i.i, label %entry.if.end36_crit_edge, label %land.rhs

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.rhs:                                         ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_unpin_iova_locked._rs, ptr noundef nonnull @__func__.msm_gem_unpin_iova_locked) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs.if.end36_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 538, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end.critedge, %land.rhs.if.end36_crit_edge, %entry.if.end36_crit_edge
  %2 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #12
  br i1 %call.i.i.i.i, label %if.end36.if.end36.i_crit_edge, label %land.rhs.i

if.end36.if.end36.i_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

land.rhs.i:                                       ; preds = %if.end36
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @lookup_vma._rs, ptr noundef nonnull @__func__.lookup_vma) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.rhs.i.if.end36.i_crit_edge, label %do.end.critedge.i, !prof !208

land.rhs.i.if.end36.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 323, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end.critedge.i, %land.rhs.i.if.end36.i_crit_edge, %if.end36.if.end36.i_crit_edge
  %vmas.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end36.i
  %.pn.in.i = phi ptr [ %vmas.i, %if.end36.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %vmas.i
  br i1 %cmp.not.i, label %for.cond.i.land.rhs48_crit_edge, label %for.body.i

for.cond.i.land.rhs48_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs48

for.body.i:                                       ; preds = %for.cond.i
  %aspace44.i = getelementptr i8, ptr %.pn.i, i32 -4
  %5 = ptrtoint ptr %aspace44.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aspace44.i, align 8
  %cmp45.i = icmp eq ptr %6, %aspace
  br i1 %cmp45.i, label %lookup_vma.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

lookup_vma.exit:                                  ; preds = %for.body.i
  %vma.0.le.i = getelementptr i8, ptr %.pn.i, i32 -124
  %tobool40.not = icmp eq ptr %vma.0.le.i, null
  br i1 %tobool40.not, label %lookup_vma.exit.land.rhs48_crit_edge, label %if.then93.critedge

lookup_vma.exit.land.rhs48_crit_edge:             ; preds = %lookup_vma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs48

land.rhs48:                                       ; preds = %lookup_vma.exit.land.rhs48_crit_edge, %for.cond.i.land.rhs48_crit_edge
  %call49 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_unpin_iova_locked._rs.7, ptr noundef nonnull @__func__.msm_gem_unpin_iova_locked) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.rhs48.if.end145_crit_edge, label %do.end76.critedge, !prof !208

land.rhs48.if.end145_crit_edge:                   ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145

do.end76.critedge:                                ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 542, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #12
  br label %if.end145

if.then93.critedge:                               ; preds = %lookup_vma.exit
  tail call void @msm_gem_unmap_vma(ptr noundef %aspace, ptr noundef nonnull %vma.0.le.i) #12
  %pin_count = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 14
  %7 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pin_count, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %pin_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp slt i32 %dec, 0
  br i1 %cmp, label %land.rhs101, label %if.then93.critedge.if.end143_crit_edge

if.then93.critedge.if.end143_crit_edge:           ; preds = %if.then93.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

land.rhs101:                                      ; preds = %if.then93.critedge
  %call102 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_unpin_iova_locked._rs.8, ptr noundef nonnull @__func__.msm_gem_unpin_iova_locked) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %land.rhs101.if.end143_crit_edge, label %do.end129.critedge, !prof !208

land.rhs101.if.end143_crit_edge:                  ; preds = %land.rhs101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

do.end129.critedge:                               ; preds = %land.rhs101
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 546, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #12
  br label %if.end143

if.end143:                                        ; preds = %do.end129.critedge, %land.rhs101.if.end143_crit_edge, %if.then93.critedge.if.end143_crit_edge
  tail call fastcc void @update_inactive(ptr noundef %obj)
  br label %if.end145

if.end145:                                        ; preds = %if.end143, %do.end76.critedge, %land.rhs48.if.end145_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unmap_vma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_unpin_iova(ptr noundef %obj, ptr noundef %aspace) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #12
  tail call void @msm_gem_unpin_iova_locked(ptr noundef %obj, ptr noundef %aspace)
  %2 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %3) #12
  tail call void @ww_mutex_unlock(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gem_dumb_create(ptr noundef %file, ptr noundef %dev, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bpp, align 8
  %add.i = add i32 %3, 7
  %div.i = sdiv i32 %add.i, 8
  %add1.i = add i32 %1, 31
  %and.i = and i32 %add1.i, -32
  %mul.i = mul i32 %div.i, %and.i
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %4 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul.i, ptr %pitch, align 4
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args, align 8
  %mul = mul i32 %mul.i, %6
  %add = add i32 %mul, 4095
  %and = and i32 %add, -4096
  %conv = zext i32 %and to i64
  %size = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 6
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %size, align 8
  %handle = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 4
  %call4 = tail call i32 @msm_gem_new_handle(ptr noundef %dev, ptr noundef %file, i32 noundef %and, i32 noundef 131073, ptr noundef %handle, ptr noundef nonnull @.str.9)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gem_new_handle(ptr noundef %dev, ptr noundef %file, i32 noundef %size, i32 noundef %flags, ptr noundef %handle, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @msm_gem_new(ptr noundef %dev, i32 noundef %size, i32 noundef %flags)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %call, ptr noundef nonnull @.str.2, ptr noundef nonnull %name)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @drm_gem_handle_create(ptr noundef %file, ptr noundef %call, ptr noundef %handle) #12
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end4.cleanup_crit_edge, label %if.then.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !212
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !208

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !213
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call5, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call5, %if.then10.i.i.i.i.i.i ], [ %call5, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gem_dumb_map_offset(ptr noundef %file, ptr nocapture noundef readnone %dev, i32 noundef %handle, ptr nocapture noundef writeonly %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %handle) #12
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.fail_crit_edge, label %if.then.i

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.then.i:                                        ; preds = %entry
  %call1 = tail call i64 @msm_gem_mmap_offset(ptr noundef nonnull %call)
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call1, ptr %offset, align 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !212
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.fail_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !208

if.end5.i.i.i.i.i.i.fail_crit_edge:               ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #12
  br label %fail

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !213
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #12
  br label %fail

fail:                                             ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.fail_crit_edge, %entry.fail_crit_edge
  %ret.0 = phi i32 [ -2, %entry.fail_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.fail_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_gem_get_vaddr_locked(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @get_vaddr(ptr noundef %obj, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_vaddr(ptr noundef %obj, i32 noundef %madv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %1) #12
  br i1 %call.i.i.i, label %entry.if.end36_crit_edge, label %land.rhs

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.rhs:                                         ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @get_vaddr._rs, ptr noundef nonnull @__func__.get_vaddr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs.if.end36_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 600, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end.critedge, %land.rhs.if.end36_crit_edge, %entry.if.end36_crit_edge
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 8
  %2 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %import_attach, align 4
  %tobool38.not = icmp eq ptr %3, null
  br i1 %tobool38.not, label %if.end41, label %if.end36.cleanup120_crit_edge

if.end36.cleanup120_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup120

if.end41:                                         ; preds = %if.end36
  %madv43 = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 2
  %4 = ptrtoint ptr %madv43 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %madv43, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %madv)
  %cmp = icmp ugt i32 %conv, %madv
  br i1 %cmp, label %land.rhs50, label %if.end100

land.rhs50:                                       ; preds = %if.end41
  %call51 = tail call i32 @___ratelimit(ptr noundef nonnull @get_vaddr._rs.54, ptr noundef nonnull @__func__.get_vaddr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.rhs50.if.then95_crit_edge, label %do.end78.critedge, !prof !208

land.rhs50.if.then95_crit_edge:                   ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then95

do.end78.critedge:                                ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 605, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #12
  br label %if.then95

if.then95:                                        ; preds = %do.end78.critedge, %land.rhs50.if.then95_crit_edge
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %dev96 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev96, align 4
  %10 = ptrtoint ptr %madv43 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %madv43, align 4
  %conv98 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.56, i32 noundef %conv98, i32 noundef %madv) #12
  br label %cleanup120

if.end100:                                        ; preds = %if.end41
  %vmap_count = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 4
  %12 = ptrtoint ptr %vmap_count to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vmap_count, align 2
  %inc = add i8 %13, 1
  store i8 %inc, ptr %vmap_count, align 2
  %vaddr = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 9
  %14 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vaddr, align 8
  %tobool101.not = icmp eq ptr %15, null
  br i1 %tobool101.not, label %if.then102, label %if.end100.if.end116_crit_edge

if.end100.if.end116_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.then102:                                       ; preds = %if.end100
  %call103 = tail call fastcc ptr @get_pages(ptr noundef %obj)
  %cmp.i = icmp ugt ptr %call103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then102.fail_crit_edge, label %if.end107

if.then102.fail_crit_edge:                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end107:                                        ; preds = %if.then102
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 8
  %shr = lshr i32 %17, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %18 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %18, 512
  %flags.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %20, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %or, -61
  %or.i = or i32 %and1.i, 4
  %retval.0.i = select i1 %tobool.not.i, i32 %or, i32 %or.i
  %call109 = tail call ptr @vmap(ptr noundef %call103, i32 noundef %shr, i32 noundef 4, i32 noundef %retval.0.i) #12
  %21 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call109, ptr %vaddr, align 8
  %cmp112 = icmp eq ptr %call109, null
  br i1 %cmp112, label %if.end107.fail_crit_edge, label %cleanup

if.end107.fail_crit_edge:                         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

cleanup:                                          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @update_inactive(ptr noundef %obj)
  br label %if.end116

if.end116:                                        ; preds = %cleanup, %if.end100.if.end116_crit_edge
  %22 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vaddr, align 8
  br label %cleanup120

fail:                                             ; preds = %if.end107.fail_crit_edge, %if.then102.fail_crit_edge
  %ret.0.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end107.fail_crit_edge ], [ %call103, %if.then102.fail_crit_edge ]
  %24 = ptrtoint ptr %vmap_count to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vmap_count, align 2
  %dec = add i8 %25, -1
  store i8 %dec, ptr %vmap_count, align 2
  br label %cleanup120

cleanup120:                                       ; preds = %fail, %if.end116, %if.then95, %if.end36.cleanup120_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %if.then95 ], [ %23, %if.end116 ], [ %ret.0.ph, %fail ], [ inttoptr (i32 -19 to ptr), %if.end36.cleanup120_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_gem_get_vaddr(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #12
  %call.i = tail call fastcc ptr @get_vaddr(ptr noundef %obj, i32 noundef 0) #12
  %2 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %3) #12
  tail call void @ww_mutex_unlock(ptr noundef %3) #12
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_gem_get_vaddr_active(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @get_vaddr(ptr noundef %obj, i32 noundef 2)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_put_vaddr_locked(ptr nocapture noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %1) #12
  br i1 %call.i.i.i, label %entry.if.end36_crit_edge, label %land.rhs

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.rhs:                                         ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_put_vaddr_locked._rs, ptr noundef nonnull @__func__.msm_gem_put_vaddr_locked) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs.if.end36_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 673, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end.critedge, %land.rhs.if.end36_crit_edge, %entry.if.end36_crit_edge
  %vmap_count = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 4
  %2 = ptrtoint ptr %vmap_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vmap_count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.rhs45, label %if.end36.if.end87_crit_edge

if.end36.if.end87_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

land.rhs45:                                       ; preds = %if.end36
  %call46 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_put_vaddr_locked._rs.10, ptr noundef nonnull @__func__.msm_gem_put_vaddr_locked) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.rhs45.if.end87_crit_edge, label %do.end73.critedge, !prof !208

land.rhs45.if.end87_crit_edge:                    ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

do.end73.critedge:                                ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 674, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #12
  br label %if.end87

if.end87:                                         ; preds = %do.end73.critedge, %land.rhs45.if.end87_crit_edge, %if.end36.if.end87_crit_edge
  %4 = ptrtoint ptr %vmap_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vmap_count, align 2
  %dec = add i8 %5, -1
  store i8 %dec, ptr %vmap_count, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_put_vaddr(ptr nocapture noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #12
  tail call void @msm_gem_put_vaddr_locked(ptr noundef %obj)
  %2 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %3) #12
  tail call void @ww_mutex_unlock(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gem_madvise(ptr noundef %obj, i32 noundef %madv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #12
  %madv1 = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %madv1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %madv1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.not = icmp eq i8 %3, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv3 = trunc i32 %madv to i8
  %4 = ptrtoint ptr %madv1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %madv1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %madv1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %madv1, align 4
  %active_count = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 13
  %7 = ptrtoint ptr %active_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @update_inactive(ptr noundef %obj)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %9 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %10) #12
  tail call void @ww_mutex_unlock(ptr noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp11 = icmp ne i8 %6, 2
  %conv12 = zext i1 %cmp11 to i32
  ret i32 %conv12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_purge(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %2 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #12
  br i1 %call.i.i.i, label %entry.if.end37_crit_edge, label %land.rhs

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.rhs:                                         ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_purge._rs, ptr noundef nonnull @__func__.msm_gem_purge) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.rhs.if.end37_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 716, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end37

if.end37:                                         ; preds = %do.end.critedge, %land.rhs.if.end37_crit_edge, %entry.if.end37_crit_edge
  %madv.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 2
  %4 = ptrtoint ptr %madv.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %madv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i = icmp eq i8 %5, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end37.land.rhs48_crit_edge

if.end37.land.rhs48_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs48

land.lhs.true.i:                                  ; preds = %if.end37
  %sgt.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 8
  %6 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgt.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true.i.land.rhs48_crit_edge, label %land.rhs.i

land.lhs.true.i.land.rhs48_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs48

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %import_attach.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 8
  %8 = ptrtoint ptr %import_attach.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %import_attach.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %is_purgeable.exit, label %land.rhs.i.land.rhs48_crit_edge

land.rhs.i.land.rhs48_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs48

is_purgeable.exit:                                ; preds = %land.rhs.i
  %pin_count.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 14
  %10 = ptrtoint ptr %pin_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pin_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.i.i, label %is_purgeable.exit.if.end90_crit_edge, label %is_purgeable.exit.land.rhs48_crit_edge

is_purgeable.exit.land.rhs48_crit_edge:           ; preds = %is_purgeable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs48

is_purgeable.exit.if.end90_crit_edge:             ; preds = %is_purgeable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

land.rhs48:                                       ; preds = %is_purgeable.exit.land.rhs48_crit_edge, %land.rhs.i.land.rhs48_crit_edge, %land.lhs.true.i.land.rhs48_crit_edge, %if.end37.land.rhs48_crit_edge
  %call49 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_purge._rs.12, ptr noundef nonnull @__func__.msm_gem_purge) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.rhs48.if.end90_crit_edge, label %do.end76.critedge, !prof !208

land.rhs48.if.end90_crit_edge:                    ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

do.end76.critedge:                                ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 717, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13) #12
  br label %if.end90

if.end90:                                         ; preds = %do.end76.critedge, %land.rhs48.if.end90_crit_edge, %is_purgeable.exit.if.end90_crit_edge
  tail call fastcc void @put_iova_spaces(ptr noundef %obj, i1 noundef zeroext true)
  tail call void @msm_gem_vunmap(ptr noundef %obj)
  %anon_inode = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %anon_inode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %anon_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_mapping, align 8
  %flags.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 4, i32 1, i32 12
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end90.drm_vma_node_unmap.exit_crit_edge, label %if.then.i

if.end90.drm_vma_node_unmap.exit_crit_edge:       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %drm_vma_node_unmap.exit

if.then.i:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 4, i32 1, i32 1
  %18 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %start.i.i, align 8
  %shl.i.i = shl i64 %19, 12
  %size.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 4, i32 1, i32 2
  %20 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %size.i.i, align 8
  %conv.i.i = trunc i64 %21 to i32
  %shl.i = shl i32 %conv.i.i, 12
  %conv.i = zext i32 %shl.i to i64
  tail call void @unmap_mapping_range(ptr noundef %15, i64 noundef %shl.i.i, i64 noundef %conv.i, i32 noundef 1) #12
  br label %drm_vma_node_unmap.exit

drm_vma_node_unmap.exit:                          ; preds = %if.then.i, %if.end90.drm_vma_node_unmap.exit_crit_edge
  tail call fastcc void @put_pages(ptr noundef %obj)
  tail call fastcc void @put_iova_vmas(ptr noundef %obj)
  %22 = ptrtoint ptr %madv.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %madv.i, align 4
  tail call fastcc void @update_inactive(ptr noundef %obj)
  tail call void @drm_gem_free_mmap_offset(ptr noundef %obj) #12
  %filp = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 3
  %23 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %filp, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_inode.i, align 8
  tail call void @shmem_truncate_range(ptr noundef %26, i64 noundef 0, i64 noundef -1) #12
  %27 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %filp, align 4
  %f_inode.i115 = getelementptr inbounds %struct.file, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %f_inode.i115 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %f_inode.i115, align 8
  %i_mapping95 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %i_mapping95 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_mapping95, align 8
  %call96 = tail call i32 @invalidate_mapping_pages(ptr noundef %32, i32 noundef 0, i32 noundef -1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_iova_spaces(ptr noundef readonly %obj, i1 noundef zeroext %close) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %1) #12
  br i1 %call.i.i.i, label %entry.if.end36_crit_edge, label %land.rhs

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.rhs:                                         ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @put_iova_spaces._rs, ptr noundef nonnull @__func__.put_iova_spaces) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs.if.end36_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 354, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end.critedge, %land.rhs.if.end36_crit_edge, %entry.if.end36_crit_edge
  %vmas = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 10
  %2 = ptrtoint ptr %vmas to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn68 = load ptr, ptr %vmas, align 4
  %cmp.not70 = icmp eq ptr %.pn68, %vmas
  br i1 %cmp.not70, label %if.end36.for.end_crit_edge, label %if.end36.for.body_crit_edge

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  br label %for.body

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end36.for.body_crit_edge
  %.pn71 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn68, %if.end36.for.body_crit_edge ]
  %vma.072 = getelementptr i8, ptr %.pn71, i32 -124
  %aspace = getelementptr i8, ptr %.pn71, i32 -4
  %3 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aspace, align 8
  %tobool44.not = icmp eq ptr %4, null
  br i1 %tobool44.not, label %for.body.for.inc_crit_edge, label %if.then45

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then45:                                        ; preds = %for.body
  tail call void @msm_gem_purge_vma(ptr noundef nonnull %4, ptr noundef %vma.072) #12
  br i1 %close, label %if.then48, label %if.then45.for.inc_crit_edge

if.then45.for.inc_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aspace, align 8
  tail call void @msm_gem_close_vma(ptr noundef %6, ptr noundef %vma.072) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %if.then45.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn71, align 4
  %cmp.not = icmp eq ptr %.pn, %vmas
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end36.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_vunmap(ptr nocapture noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %1) #12
  br i1 %call.i.i.i, label %entry.if.end36_crit_edge, label %land.rhs

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.rhs:                                         ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_vunmap._rs, ptr noundef nonnull @__func__.msm_gem_vunmap) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs.if.end36_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 773, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end.critedge, %land.rhs.if.end36_crit_edge, %entry.if.end36_crit_edge
  %vaddr = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 9
  %2 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr, align 8
  %tobool38.not = icmp eq ptr %3, null
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %lor.lhs.false

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end36
  %4 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %5) #12
  br i1 %call.i.i.i.i, label %lor.lhs.false.if.end35.i_crit_edge, label %land.rhs.i

lor.lhs.false.if.end35.i_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

land.rhs.i:                                       ; preds = %lor.lhs.false
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @is_vunmapable._rs, ptr noundef nonnull @__func__.is_vunmapable) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.rhs.i.if.end35.i_crit_edge, label %do.end.critedge.i, !prof !208

land.rhs.i.if.end35.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.58) #12
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end.critedge.i, %land.rhs.i.if.end35.i_crit_edge, %lor.lhs.false.if.end35.i_crit_edge
  %vmap_count.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 4
  %6 = ptrtoint ptr %vmap_count.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vmap_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  br i1 %cmp.i, label %is_vunmapable.exit, label %if.end35.i.land.rhs48_crit_edge

if.end35.i.land.rhs48_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs48

is_vunmapable.exit:                               ; preds = %if.end35.i
  %8 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vaddr, align 8
  %tobool39.i.not = icmp eq ptr %9, null
  br i1 %tobool39.i.not, label %is_vunmapable.exit.land.rhs48_crit_edge, label %if.end94

is_vunmapable.exit.land.rhs48_crit_edge:          ; preds = %is_vunmapable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs48

land.rhs48:                                       ; preds = %is_vunmapable.exit.land.rhs48_crit_edge, %if.end35.i.land.rhs48_crit_edge
  %call49 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_vunmap._rs.20, ptr noundef nonnull @__func__.msm_gem_vunmap) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.rhs48.cleanup_crit_edge, label %do.end76.critedge, !prof !208

land.rhs48.cleanup_crit_edge:                     ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end76.critedge:                                ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 775, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.21) #12
  br label %cleanup

if.end94:                                         ; preds = %is_vunmapable.exit
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr, align 8
  tail call void @vunmap(ptr noundef %11) #12
  %12 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %vaddr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %do.end76.critedge, %land.rhs48.cleanup_crit_edge, %if.end36.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_pages(ptr noundef %obj) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pages = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 7
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then:                                          ; preds = %entry
  %sgt = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 8
  %2 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end8_crit_edge, label %if.then2

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then2:                                         ; preds = %if.then
  %flags = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then2.if.end_crit_edge, label %if.then4

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %dev1.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 8
  %dev2.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2.i, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %orig_nents.i.i = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %orig_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %orig_nents.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef 0, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2.if.end_crit_edge
  %14 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sgt, align 4
  tail call void @sg_free_table(ptr noundef %15) #12
  %16 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sgt, align 4
  tail call void @kfree(ptr noundef %17) #12
  %18 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sgt, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then.if.end8_crit_edge
  %vram_node.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 11
  %19 = ptrtoint ptr %vram_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vram_node.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages, align 8
  tail call void @drm_gem_put_pages(ptr noundef %obj, ptr noundef %22, i1 noundef zeroext true, i1 noundef zeroext false) #12
  br label %if.end11

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_private.i, align 4
  %lock.i = getelementptr inbounds %struct.msm_drm_private, ptr %26, i32 0, i32 35, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %27 = ptrtoint ptr %vram_node.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vram_node.i, align 4
  tail call void @drm_mm_remove_node(ptr noundef %28) #12
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  %29 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pages, align 8
  tail call void @kvfree(ptr noundef %30) #12
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  %31 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %pages, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_iova_vmas(ptr noundef readonly %obj) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %1) #12
  br i1 %call.i.i.i, label %entry.if.end37_crit_edge, label %land.rhs

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.rhs:                                         ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @put_iova_vmas._rs, ptr noundef nonnull @__func__.put_iova_vmas) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.rhs.if.end37_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 372, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end37

if.end37:                                         ; preds = %do.end.critedge, %land.rhs.if.end37_crit_edge, %entry.if.end37_crit_edge
  %vmas = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 10
  %2 = ptrtoint ptr %vmas to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vmas, align 4
  %cmp.not65 = icmp eq ptr %3, %vmas
  br i1 %cmp.not65, label %if.end37.for.end_crit_edge, label %if.end37.for.body_crit_edge

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  br label %for.body

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %del_vma.exit.for.body_crit_edge, %if.end37.for.body_crit_edge
  %.pn.in66 = phi ptr [ %.pn, %del_vma.exit.for.body_crit_edge ], [ %3, %if.end37.for.body_crit_edge ]
  %vma.0 = getelementptr i8, ptr %.pn.in66, i32 -124
  %4 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in66, align 4
  %tobool.not.i = icmp eq ptr %vma.0, null
  br i1 %tobool.not.i, label %for.body.del_vma.exit_crit_edge, label %if.end.i

for.body.del_vma.exit_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %del_vma.exit

if.end.i:                                         ; preds = %for.body
  %call.i.i.i64 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in66) #12
  br i1 %call.i.i.i64, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %.pn.in66, i32 4
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in66, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in66, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in66, i32 4
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %vma.0) #12
  br label %del_vma.exit

del_vma.exit:                                     ; preds = %list_del.exit.i, %for.body.del_vma.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %vmas
  br i1 %cmp.not, label %del_vma.exit.for.end_crit_edge, label %del_vma.exit.for.body_crit_edge

del_vma.exit.for.body_crit_edge:                  ; preds = %del_vma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

del_vma.exit.for.end_crit_edge:                   ; preds = %del_vma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %del_vma.exit.for.end_crit_edge, %if.end37.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_free_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_truncate_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_evict(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %2 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #12
  br i1 %call.i.i.i, label %entry.if.end37_crit_edge, label %land.rhs

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.rhs:                                         ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_evict._rs, ptr noundef nonnull @__func__.msm_gem_evict) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.rhs.if.end37_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 754, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end37

if.end37:                                         ; preds = %do.end.critedge, %land.rhs.if.end37_crit_edge, %entry.if.end37_crit_edge
  %import_attach.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 8
  %4 = ptrtoint ptr %import_attach.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %import_attach.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %is_unpurgeable.exit.i, label %if.end37.land.rhs46_crit_edge

if.end37.land.rhs46_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs46

is_unpurgeable.exit.i:                            ; preds = %if.end37
  %pin_count.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 14
  %6 = ptrtoint ptr %pin_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pin_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.i.not.i, label %is_unevictable.exit, label %is_unpurgeable.exit.i.land.rhs46_crit_edge

is_unpurgeable.exit.i.land.rhs46_crit_edge:       ; preds = %is_unpurgeable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs46

is_unevictable.exit:                              ; preds = %is_unpurgeable.exit.i
  %vaddr.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 9
  %8 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vaddr.i, align 8
  %tobool.i.not = icmp eq ptr %9, null
  br i1 %tobool.i.not, label %is_unevictable.exit.if.end88_crit_edge, label %is_unevictable.exit.land.rhs46_crit_edge

is_unevictable.exit.land.rhs46_crit_edge:         ; preds = %is_unevictable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs46

is_unevictable.exit.if.end88_crit_edge:           ; preds = %is_unevictable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

land.rhs46:                                       ; preds = %is_unevictable.exit.land.rhs46_crit_edge, %is_unpurgeable.exit.i.land.rhs46_crit_edge, %if.end37.land.rhs46_crit_edge
  %call47 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_evict._rs.14, ptr noundef nonnull @__func__.msm_gem_evict) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.rhs46.if.end88_crit_edge, label %do.end74.critedge, !prof !208

land.rhs46.if.end88_crit_edge:                    ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

do.end74.critedge:                                ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 755, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15) #12
  br label %if.end88

if.end88:                                         ; preds = %do.end74.critedge, %land.rhs46.if.end88_crit_edge, %is_unevictable.exit.if.end88_crit_edge
  %evictable = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 3
  %10 = ptrtoint ptr %evictable to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %evictable, align 1
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %bf.cast.not = icmp eq i8 %11, 0
  br i1 %bf.cast.not, label %land.rhs98, label %if.end88.if.end140_crit_edge

if.end88.if.end140_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end140

land.rhs98:                                       ; preds = %if.end88
  %call99 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_evict._rs.16, ptr noundef nonnull @__func__.msm_gem_evict) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %land.rhs98.if.end140_crit_edge, label %do.end126.critedge, !prof !208

land.rhs98.if.end140_crit_edge:                   ; preds = %land.rhs98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end140

do.end126.critedge:                               ; preds = %land.rhs98
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 756, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17) #12
  br label %if.end140

if.end140:                                        ; preds = %do.end126.critedge, %land.rhs98.if.end140_crit_edge, %if.end88.if.end140_crit_edge
  %active_count = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 13
  %12 = ptrtoint ptr %active_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool143.not = icmp eq i32 %13, 0
  br i1 %tobool143.not, label %if.end140.if.end191_crit_edge, label %land.rhs149

if.end140.if.end191_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

land.rhs149:                                      ; preds = %if.end140
  %call150 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_evict._rs.18, ptr noundef nonnull @__func__.msm_gem_evict) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %land.rhs149.if.end191_crit_edge, label %do.end177.critedge, !prof !208

land.rhs149.if.end191_crit_edge:                  ; preds = %land.rhs149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

do.end177.critedge:                               ; preds = %land.rhs149
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 757, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.19) #12
  br label %if.end191

if.end191:                                        ; preds = %do.end177.critedge, %land.rhs149.if.end191_crit_edge, %if.end140.if.end191_crit_edge
  %14 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resv.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %15) #12
  br i1 %call.i.i.i.i, label %if.end191.if.end36.i_crit_edge, label %land.rhs.i

if.end191.if.end36.i_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

land.rhs.i:                                       ; preds = %if.end191
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @put_iova_spaces._rs, ptr noundef nonnull @__func__.put_iova_spaces) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.rhs.i.if.end36.i_crit_edge, label %do.end.critedge.i, !prof !208

land.rhs.i.if.end36.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 354, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end.critedge.i, %land.rhs.i.if.end36.i_crit_edge, %if.end191.if.end36.i_crit_edge
  %vmas.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 10
  %16 = ptrtoint ptr %vmas.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn68.i = load ptr, ptr %vmas.i, align 4
  %cmp.not70.i = icmp eq ptr %.pn68.i, %vmas.i
  br i1 %cmp.not70.i, label %if.end36.i.put_iova_spaces.exit_crit_edge, label %if.end36.i.for.body.i_crit_edge

if.end36.i.for.body.i_crit_edge:                  ; preds = %if.end36.i
  br label %for.body.i

if.end36.i.put_iova_spaces.exit_crit_edge:        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_iova_spaces.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end36.i.for.body.i_crit_edge
  %.pn71.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn68.i, %if.end36.i.for.body.i_crit_edge ]
  %aspace.i = getelementptr i8, ptr %.pn71.i, i32 -4
  %17 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %aspace.i, align 8
  %tobool44.not.i = icmp eq ptr %18, null
  br i1 %tobool44.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then45.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then45.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %vma.072.i = getelementptr i8, ptr %.pn71.i, i32 -124
  tail call void @msm_gem_purge_vma(ptr noundef nonnull %18, ptr noundef %vma.072.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then45.i, %for.body.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %.pn71.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load ptr, ptr %.pn71.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %vmas.i
  br i1 %cmp.not.i, label %for.inc.i.put_iova_spaces.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.put_iova_spaces.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_iova_spaces.exit

put_iova_spaces.exit:                             ; preds = %for.inc.i.put_iova_spaces.exit_crit_edge, %if.end36.i.put_iova_spaces.exit_crit_edge
  %anon_inode = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %anon_inode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %anon_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_mapping, align 8
  %flags.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 4, i32 1, i32 12
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %put_iova_spaces.exit.drm_vma_node_unmap.exit_crit_edge, label %if.then.i

put_iova_spaces.exit.drm_vma_node_unmap.exit_crit_edge: ; preds = %put_iova_spaces.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %drm_vma_node_unmap.exit

if.then.i:                                        ; preds = %put_iova_spaces.exit
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 4, i32 1, i32 1
  %26 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %start.i.i, align 8
  %shl.i.i = shl i64 %27, 12
  %size.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 4, i32 1, i32 2
  %28 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %size.i.i, align 8
  %conv.i.i = trunc i64 %29 to i32
  %shl.i = shl i32 %conv.i.i, 12
  %conv.i = zext i32 %shl.i to i64
  tail call void @unmap_mapping_range(ptr noundef %23, i64 noundef %shl.i.i, i64 noundef %conv.i, i32 noundef 1) #12
  br label %drm_vma_node_unmap.exit

drm_vma_node_unmap.exit:                          ; preds = %if.then.i, %put_iova_spaces.exit.drm_vma_node_unmap.exit_crit_edge
  tail call fastcc void @put_pages(ptr noundef %obj)
  tail call fastcc void @update_inactive(ptr noundef %obj)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_active_get(ptr noundef %obj, ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 787) #12
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %4 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %5) #12
  br i1 %call.i.i.i, label %entry.if.end42_crit_edge, label %land.rhs

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

land.rhs:                                         ; preds = %entry
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_active_get._rs, ptr noundef nonnull @__func__.msm_gem_active_get) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.rhs.if.end42_crit_edge, label %do.end29.critedge, !prof !208

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

do.end29.critedge:                                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 788, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end42

if.end42:                                         ; preds = %do.end29.critedge, %land.rhs.if.end42_crit_edge, %entry.if.end42_crit_edge
  %madv = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 2
  %6 = ptrtoint ptr %madv to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %madv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %if.end42.if.end93_crit_edge, label %land.rhs51

if.end42.if.end93_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

land.rhs51:                                       ; preds = %if.end42
  %call52 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_active_get._rs.22, ptr noundef nonnull @__func__.msm_gem_active_get) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.rhs51.if.end93_crit_edge, label %do.end79.critedge, !prof !208

land.rhs51.if.end93_crit_edge:                    ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

do.end79.critedge:                                ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 789, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  br label %if.end93

if.end93:                                         ; preds = %do.end79.critedge, %land.rhs51.if.end93_crit_edge, %if.end42.if.end93_crit_edge
  %dontneed = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 3
  %8 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %dontneed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end93.if.end143_crit_edge, label %land.rhs101

if.end93.if.end143_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

land.rhs101:                                      ; preds = %if.end93
  %call102 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_active_get._rs.23, ptr noundef nonnull @__func__.msm_gem_active_get) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %land.rhs101.if.end143_crit_edge, label %do.end129.critedge, !prof !208

land.rhs101.if.end143_crit_edge:                  ; preds = %land.rhs101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

do.end129.critedge:                               ; preds = %land.rhs101
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 790, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.24) #12
  br label %if.end143

if.end143:                                        ; preds = %do.end129.critedge, %land.rhs101.if.end143_crit_edge, %if.end93.if.end143_crit_edge
  %active_count = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 13
  %9 = ptrtoint ptr %active_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active_count, align 8
  %inc = add i32 %10, 1
  store i32 %inc, ptr %active_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp145 = icmp eq i32 %10, 0
  br i1 %cmp145, label %if.then147, label %if.end143.if.end154_crit_edge

if.end143.if.end154_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

if.then147:                                       ; preds = %if.end143
  %mm_lock = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mm_lock, i32 noundef 0) #12
  %11 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load148 = load i8, ptr %dontneed, align 1
  %12 = and i8 %bf.load148, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %bf.cast150.not = icmp eq i8 %12, 0
  br i1 %bf.cast150.not, label %if.then147.if.end152_crit_edge, label %if.then151

if.then147.if.end152_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.then151:                                       ; preds = %if.then147
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_private.i, align 4
  %mm_lock.i = getelementptr inbounds %struct.msm_drm_private, ptr %16, i32 0, i32 21
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mm_lock.i) #12
  br i1 %call.i, label %if.then151.if.end.i_crit_edge, label %do.end.i, !prof !208

if.then151.if.end.i_crit_edge:                    ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 281, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then151.if.end.i_crit_edge
  %import_attach.i.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 8
  %17 = ptrtoint ptr %import_attach.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %import_attach.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %is_unpurgeable.exit.i.i, label %if.end.i.if.end152_crit_edge

if.end.i.if.end152_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

is_unpurgeable.exit.i.i:                          ; preds = %if.end.i
  %pin_count.i.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 14
  %19 = ptrtoint ptr %pin_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pin_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool1.i.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool1.i.not.i.i, label %is_unevictable.exit.i, label %is_unpurgeable.exit.i.i.if.end152_crit_edge

is_unpurgeable.exit.i.i.if.end152_crit_edge:      ; preds = %is_unpurgeable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

is_unevictable.exit.i:                            ; preds = %is_unpurgeable.exit.i.i
  %vaddr.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 9
  %21 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vaddr.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %22, null
  br i1 %tobool.i.not.i, label %if.end22.i, label %is_unevictable.exit.i.if.end152_crit_edge

is_unevictable.exit.i.if.end152_crit_edge:        ; preds = %is_unevictable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.end22.i:                                       ; preds = %is_unevictable.exit.i
  %23 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %dontneed, align 1
  %24 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %bf.cast.not.i = icmp eq i8 %24, 0
  br i1 %bf.cast.not.i, label %do.end41.i, label %if.end57.i, !prof !209

do.end41.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 286, i32 noundef 9, ptr noundef null) #12
  br label %if.end152

if.end57.i:                                       ; preds = %if.end22.i
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i, align 8
  %shr.i = lshr i32 %26, 12
  %evictable_count.i = getelementptr inbounds %struct.msm_drm_private, ptr %16, i32 0, i32 20
  %27 = ptrtoint ptr %evictable_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %evictable_count.i, align 8
  %sub.i = sub i32 %28, %shr.i
  store i32 %sub.i, ptr %evictable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end76.i, label %if.end57.i.if.end82.i_crit_edge, !prof !209

if.end57.i.if.end82.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82.i

do.end76.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 290, i32 noundef 9, ptr noundef null) #12
  br label %if.end82.i

if.end82.i:                                       ; preds = %do.end76.i, %if.end57.i.if.end82.i_crit_edge
  %29 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load91.i = load i8, ptr %dontneed, align 1
  %bf.clear92.i = and i8 %bf.load91.i, -65
  store i8 %bf.clear92.i, ptr %dontneed, align 1
  br label %if.end152

if.end152:                                        ; preds = %if.end82.i, %do.end41.i, %is_unevictable.exit.i.if.end152_crit_edge, %is_unpurgeable.exit.i.i.if.end152_crit_edge, %if.end.i.if.end152_crit_edge, %if.then147.if.end152_crit_edge
  %mm_list = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 6
  %active_list = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mm_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end152.__list_del_entry.exit.i_crit_edge

if.end152.__list_del_entry.exit.i_crit_edge:      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %mm_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mm_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end152.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 16, i32 1
  %36 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i172 = tail call zeroext i1 @__list_add_valid(ptr noundef %mm_list, ptr noundef %37, ptr noundef %active_list) #12
  br i1 %call.i.i.i172, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %mm_list, ptr %prev.i2.i, align 4
  %39 = ptrtoint ptr %mm_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %active_list, ptr %mm_list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 6, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %mm_list, ptr %37, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mm_lock) #12
  br label %if.end154

if.end154:                                        ; preds = %list_move_tail.exit, %if.end143.if.end154_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_active_put(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 805) #12
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %1) #12
  br i1 %call.i.i.i, label %entry.if.end42_crit_edge, label %land.rhs

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

land.rhs:                                         ; preds = %entry
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_active_put._rs, ptr noundef nonnull @__func__.msm_gem_active_put) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.rhs.if.end42_crit_edge, label %do.end29.critedge, !prof !208

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

do.end29.critedge:                                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 806, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end42

if.end42:                                         ; preds = %do.end29.critedge, %land.rhs.if.end42_crit_edge, %entry.if.end42_crit_edge
  %active_count = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 13
  %2 = ptrtoint ptr %active_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_count, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %active_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then44, label %if.end42.if.end45_crit_edge

if.end42.if.end45_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @update_inactive(ptr noundef %obj)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end42.if.end45_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gem_cpu_prep(ptr nocapture noundef readonly %obj, i32 noundef %op, ptr nocapture noundef readonly %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and2 = and i32 %op, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call.i = tail call i64 @ktime_get() #12
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %timeout, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %call.i)
  %cmp.i.i = icmp slt i64 %1, %call.i
  br i1 %cmp.i.i, label %cond.false..thread.i_crit_edge, label %if.else.i

cond.false..thread.i_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %.thread.i

if.else.i:                                        ; preds = %cond.false
  %sub.i = sub i64 %1, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i)
  %cmp8.i.i = icmp sgt i64 %sub.i, -1
  %2 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #12
  %3 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %2) #16, !srcloc !214
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %2, i64 %3, i32 0) #16, !srcloc !215
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388607, i64 %asmresult10.i.i.i)
  %cmp3.i = icmp ugt i64 %asmresult10.i.i.i, 8388607
  %or.cond.i = select i1 %cmp8.i.i, i1 %cmp3.i, i1 false
  br i1 %or.cond.i, label %5, label %if.else.i..thread.i_crit_edge

if.else.i..thread.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %.thread.i

5:                                                ; preds = %if.else.i
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 23
  call void @__sanitizer_cov_trace_const_cmp8(i64 18014398501093376, i64 %asmresult10.i.i.i)
  %cmp5.i = icmp ult i64 %asmresult10.i.i.i, 18014398501093376
  %extract.t.i = trunc i64 %div1811.i.i to i32
  br i1 %cmp5.i, label %..thread.i_crit_edge, label %.cond.end_crit_edge

.cond.end_crit_edge:                              ; preds = %5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

..thread.i_crit_edge:                             ; preds = %5
  call void @__sanitizer_cov_trace_pc() #14
  br label %.thread.i

.thread.i:                                        ; preds = %..thread.i_crit_edge, %if.else.i..thread.i_crit_edge, %cond.false..thread.i_crit_edge
  %extract.t20.i = phi i32 [ %extract.t.i, %..thread.i_crit_edge ], [ 0, %cond.false..thread.i_crit_edge ], [ 0, %if.else.i..thread.i_crit_edge ]
  br label %cond.end

cond.end:                                         ; preds = %.thread.i, %.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ 0, %entry.cond.end_crit_edge ], [ %extract.t20.i, %.thread.i ], [ 2147483647, %.cond.end_crit_edge ]
  %and = and i32 %op, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %6 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv, align 8
  %call5 = tail call i32 @dma_resv_wait_timeout(ptr noundef %7, i1 noundef zeroext %tobool, i1 noundef zeroext true, i32 noundef %cond) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp6 = icmp eq i32 %cond, 0
  %spec.select = select i1 %cmp6, i32 -16, i32 -110
  %8 = tail call i32 @llvm.smin.i32(i32 %call5, i32 0)
  %retval.0 = select i1 %cmp, i32 %spec.select, i32 %8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @msm_gem_cpu_fini(ptr nocapture noundef readnone %obj) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_describe(ptr noundef %obj, ptr noundef %m, ptr nocapture noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv, align 8
  %start.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 4, i32 1, i32 1
  %2 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start.i, align 8
  %conv = and i64 %3, 4294967295
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #12
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %stats, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %size2 = getelementptr inbounds %struct.anon.112, ptr %stats, i32 0, i32 1
  %8 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size2, align 4
  %add = add i32 %9, %7
  store i32 %add, ptr %size2, align 4
  %10 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resv, align 8
  %call.i.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %11) #12
  br i1 %call.i.i.i.i, label %entry.is_active.exit_crit_edge, label %land.rhs.i

entry.is_active.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_active.exit

land.rhs.i:                                       ; preds = %entry
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @is_active._rs, ptr noundef nonnull @__func__.is_active) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.rhs.i.is_active.exit_crit_edge, label %do.end.critedge.i, !prof !208

land.rhs.i.is_active.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_active.exit

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 201, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.58) #12
  br label %is_active.exit

is_active.exit:                                   ; preds = %do.end.critedge.i, %land.rhs.i.is_active.exit_crit_edge, %entry.is_active.exit_crit_edge
  %active_count.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 13
  %12 = ptrtoint ptr %active_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool37.i.not = icmp eq i32 %13, 0
  br i1 %tobool37.i.not, label %is_active.exit.if.end_crit_edge, label %if.then

is_active.exit.if.end_crit_edge:                  ; preds = %is_active.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %is_active.exit
  call void @__sanitizer_cov_trace_pc() #14
  %active = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 1
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %active, align 4
  %inc5 = add i32 %15, 1
  store i32 %inc5, ptr %active, align 4
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 8
  %size8 = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %size8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size8, align 4
  %add9 = add i32 %19, %17
  store i32 %add9, ptr %size8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %is_active.exit.if.end_crit_edge
  %pages = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 7
  %20 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pages, align 8
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then10

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %resident = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 2
  %22 = ptrtoint ptr %resident to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resident, align 4
  %inc12 = add i32 %23, 1
  store i32 %inc12, ptr %resident, align 4
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 8
  %size15 = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %size15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size15, align 4
  %add16 = add i32 %27, %25
  store i32 %add16, ptr %size15, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.end.if.end17_crit_edge
  %madv18 = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 2
  %28 = ptrtoint ptr %madv18 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %madv18, align 4
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %29, label %if.end17.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb26
  ]

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %purged = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 4
  %31 = ptrtoint ptr %purged to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %purged, align 4
  %inc21 = add i32 %32, 1
  store i32 %inc21, ptr %purged, align 4
  %size24 = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 4, i32 1
  br label %sw.epilog.sink.split

sw.bb26:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %purgeable = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 3
  %33 = ptrtoint ptr %purgeable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %purgeable, align 4
  %inc28 = add i32 %34, 1
  store i32 %inc28, ptr %purgeable, align 4
  %size31 = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 3, i32 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb26, %sw.bb
  %size31.sink140 = phi ptr [ %size31, %sw.bb26 ], [ %size24, %sw.bb ]
  %madv.0.ph = phi ptr [ @.str.26, %sw.bb26 ], [ @.str.25, %sw.bb ]
  %35 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %35)
  %.sink139 = load i32, ptr %size, align 8
  %36 = ptrtoint ptr %size31.sink140 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size31.sink140, align 4
  %add32 = add i32 %37, %.sink139
  store i32 %add32, ptr %size31.sink140, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end17.sw.epilog_crit_edge
  %madv.0 = phi ptr [ @.str.27, %if.end17.sw.epilog_crit_edge ], [ %madv.0.ph, %sw.epilog.sink.split ]
  %flags = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 1
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 8
  %40 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %resv, align 8
  %call.i.i.i.i125 = tail call zeroext i1 @mutex_is_locked(ptr noundef %41) #12
  br i1 %call.i.i.i.i125, label %sw.epilog.is_active.exit132_crit_edge, label %land.rhs.i128

sw.epilog.is_active.exit132_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_active.exit132

land.rhs.i128:                                    ; preds = %sw.epilog
  %call3.i126 = tail call i32 @___ratelimit(ptr noundef nonnull @is_active._rs, ptr noundef nonnull @__func__.is_active) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i126)
  %tobool4.not.i127 = icmp eq i32 %call3.i126, 0
  br i1 %tobool4.not.i127, label %land.rhs.i128.is_active.exit132_crit_edge, label %do.end.critedge.i129, !prof !208

land.rhs.i128.is_active.exit132_crit_edge:        ; preds = %land.rhs.i128
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_active.exit132

do.end.critedge.i129:                             ; preds = %land.rhs.i128
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 201, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.58) #12
  br label %is_active.exit132

is_active.exit132:                                ; preds = %do.end.critedge.i129, %land.rhs.i128.is_active.exit132_crit_edge, %sw.epilog.is_active.exit132_crit_edge
  %42 = ptrtoint ptr %active_count.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %active_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool37.i131.not = icmp eq i32 %43, 0
  %cond = select i1 %tobool37.i131.not, i32 73, i32 65
  %name = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 6
  %44 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %name, align 4
  %call.i.i.i.i133 = tail call zeroext i1 @__kasan_check_read(ptr noundef %obj, i32 noundef 4) #12
  %46 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %obj, align 4
  %vaddr = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 9
  %48 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vaddr, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i32 noundef %39, i32 noundef %cond, i32 noundef %45, i32 noundef %47, i64 noundef %conv, ptr noundef %49) #12
  %50 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size, align 8
  %name38 = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef %51, ptr noundef nonnull %madv.0, ptr noundef %name38) #12
  %vmas = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 10
  %52 = ptrtoint ptr %vmas to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %vmas, align 4
  %cmp.i.not = icmp eq ptr %53, %vmas
  br i1 %cmp.i.not, label %is_active.exit132.if.end76_crit_edge, label %if.then41

is_active.exit132.if.end76_crit_edge:             ; preds = %is_active.exit132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then41:                                        ; preds = %is_active.exit132
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.30) #12
  %54 = ptrtoint ptr %vmas to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn136 = load ptr, ptr %vmas, align 4
  %cmp.not137 = icmp eq ptr %.pn136, %vmas
  br i1 %cmp.not137, label %if.then41.for.end_crit_edge, label %if.then41.for.body_crit_edge

if.then41.for.body_crit_edge:                     ; preds = %if.then41
  br label %for.body

if.then41.for.end_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end62.for.body_crit_edge, %if.then41.for.body_crit_edge
  %.pn138 = phi ptr [ %.pn, %if.end62.for.body_crit_edge ], [ %.pn136, %if.then41.for.body_crit_edge ]
  %aspace = getelementptr i8, ptr %.pn138, i32 -4
  %55 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %aspace, align 8
  %tobool49.not = icmp eq ptr %56, null
  br i1 %tobool49.not, label %for.body.if.end62_crit_edge, label %if.then50

for.body.if.end62_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then50:                                        ; preds = %for.body
  %pid = getelementptr inbounds %struct.msm_gem_address_space, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pid, align 4
  %call53 = tail call ptr @get_pid_task(ptr noundef %58, i32 noundef 0) #12
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.then50.if.end59_crit_edge, label %if.then55

if.then50.if.end59_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then55:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  %comm56 = getelementptr inbounds %struct.task_struct, ptr %call53, i32 0, i32 101
  %call58 = tail call noalias ptr @kstrdup(ptr noundef %comm56, i32 noundef 3264) #12
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.then50.if.end59_crit_edge
  %comm.0 = phi ptr [ %call58, %if.then55 ], [ null, %if.then50.if.end59_crit_edge ]
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.end59, %for.body.if.end62_crit_edge
  %name48.0 = phi ptr [ %60, %if.end59 ], [ null, %for.body.if.end62_crit_edge ]
  %comm.1 = phi ptr [ %comm.0, %if.end59 ], [ null, %for.body.if.end62_crit_edge ]
  %tobool63.not = icmp eq ptr %comm.1, null
  %cond64 = select i1 %tobool63.not, ptr @.str.27, ptr @.str.32
  %spec.select = select i1 %tobool63.not, ptr @.str.27, ptr %comm.1
  %61 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %aspace, align 8
  %iova = getelementptr i8, ptr %.pn138, i32 -12
  %63 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %iova, align 8
  %mapped = getelementptr i8, ptr %.pn138, i32 8
  %65 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %mapped, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool68.not = icmp eq i8 %66, 0
  %cond70 = select i1 %tobool68.not, ptr @.str.34, ptr @.str.33
  %inuse = getelementptr i8, ptr %.pn138, i32 12
  %67 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %inuse, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, ptr noundef %name48.0, ptr noundef nonnull %cond64, ptr noundef nonnull %spec.select, ptr noundef %62, i64 noundef %64, ptr noundef nonnull %cond70, i32 noundef %68) #12
  tail call void @kfree(ptr noundef %comm.1) #12
  %69 = ptrtoint ptr %.pn138 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn = load ptr, ptr %.pn138, align 4
  %cmp.not = icmp eq ptr %.pn, %vmas
  br i1 %cmp.not, label %if.end62.for.end_crit_edge, label %if.end62.for.body_crit_edge

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end62.for.end_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end62.for.end_crit_edge, %if.then41.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.35) #12
  br label %if.end76

if.end76:                                         ; preds = %for.end, %is_active.exit132.if.end76_crit_edge
  tail call void @dma_resv_describe(ptr noundef %1, ptr noundef %m) #12
  %70 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %resv, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %71) #12
  tail call void @ww_mutex_unlock(ptr noundef %71) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_describe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_describe_objects(ptr noundef readonly %list, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  %stats = alloca %struct.msm_gem_stats, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %stats) #12
  %0 = call ptr @memset(ptr %stats, i32 0, i32 40)
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.36) #12
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn29 = load ptr, ptr %list, align 4
  %cmp.not30 = icmp eq ptr %.pn29, %list
  br i1 %cmp.not30, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn31 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn29, %entry.for.body_crit_edge ]
  %msm_obj.0 = getelementptr i8, ptr %.pn31, i32 -360
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.37) #12
  call void @msm_gem_describe(ptr noundef %msm_obj.0, ptr noundef %m, ptr noundef nonnull %stats)
  %2 = ptrtoint ptr %.pn31 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn31, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %3 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stats, align 4
  %size = getelementptr inbounds %struct.anon.112, ptr %stats, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %4, i32 noundef %6) #12
  %active = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 1
  %7 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active, align 4
  %size9 = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %size9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %8, i32 noundef %10) #12
  %resident = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 2
  %11 = ptrtoint ptr %resident to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resident, align 4
  %size12 = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %size12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %12, i32 noundef %14) #12
  %purgeable = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 3
  %15 = ptrtoint ptr %purgeable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %purgeable, align 4
  %size15 = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %size15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, i32 noundef %16, i32 noundef %18) #12
  %purged = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 4
  %19 = ptrtoint ptr %purged to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %purged, align 4
  %size18 = getelementptr inbounds %struct.msm_gem_stats, ptr %stats, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %size18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %20, i32 noundef %22) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %stats) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_free_object(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %obj_lock = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %obj_lock, i32 noundef 0) #12
  %node = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %obj_lock) #12
  %mm_lock = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mm_lock, i32 noundef 0) #12
  %dontneed = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 3
  %12 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %dontneed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mark_unpurgeable(ptr noundef %obj)
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  %mm_list = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 6
  %call.i.i125 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mm_list) #12
  br i1 %call.i.i125, label %if.end.i.i128, label %if.end.list_del.exit130_crit_edge

if.end.list_del.exit130_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit130

if.end.i.i128:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i126 = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %prev.i.i126 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i126, align 4
  %15 = ptrtoint ptr %mm_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mm_list, align 4
  %prev1.i.i.i127 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i127, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit130

list_del.exit130:                                 ; preds = %if.end.i.i128, %if.end.list_del.exit130_crit_edge
  %19 = ptrtoint ptr %mm_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %mm_list, align 4
  %prev.i129 = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %prev.i129 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i129, align 4
  tail call void @mutex_unlock(ptr noundef %mm_lock) #12
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %21 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resv.i, align 8
  %call.i.i131 = tail call i32 @ww_mutex_lock(ptr noundef %22, ptr noundef null) #12
  %23 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resv.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %24) #12
  br i1 %call.i.i.i.i, label %list_del.exit130.is_active.exit_crit_edge, label %land.rhs.i

list_del.exit130.is_active.exit_crit_edge:        ; preds = %list_del.exit130
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_active.exit

land.rhs.i:                                       ; preds = %list_del.exit130
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @is_active._rs, ptr noundef nonnull @__func__.is_active) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.rhs.i.is_active.exit_crit_edge, label %do.end.critedge.i, !prof !208

land.rhs.i.is_active.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_active.exit

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 201, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.58) #12
  br label %is_active.exit

is_active.exit:                                   ; preds = %do.end.critedge.i, %land.rhs.i.is_active.exit_crit_edge, %list_del.exit130.is_active.exit_crit_edge
  %active_count.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 13
  %25 = ptrtoint ptr %active_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %active_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool37.i.not = icmp eq i32 %26, 0
  br i1 %tobool37.i.not, label %is_active.exit.if.end40_crit_edge, label %land.rhs

is_active.exit.if.end40_crit_edge:                ; preds = %is_active.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.rhs:                                         ; preds = %is_active.exit
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_free_object._rs, ptr noundef nonnull @__func__.msm_gem_free_object) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.rhs.if.end40_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 996, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.43) #12
  br label %if.end40

if.end40:                                         ; preds = %do.end.critedge, %land.rhs.if.end40_crit_edge, %is_active.exit.if.end40_crit_edge
  tail call fastcc void @put_iova_spaces(ptr noundef %obj, i1 noundef zeroext true)
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 8
  %27 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %import_attach, align 4
  %tobool42.not = icmp eq ptr %28, null
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.end40
  %vaddr = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 9
  %29 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vaddr, align 8
  %tobool45.not = icmp eq ptr %30, null
  br i1 %tobool45.not, label %if.then43.if.end93_crit_edge, label %land.rhs51

if.then43.if.end93_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

land.rhs51:                                       ; preds = %if.then43
  %call52 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_free_object._rs.44, ptr noundef nonnull @__func__.msm_gem_free_object) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.rhs51.if.end93_crit_edge, label %do.end79.critedge, !prof !208

land.rhs51.if.end93_crit_edge:                    ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

do.end79.critedge:                                ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1001, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.45) #12
  br label %if.end93

if.end93:                                         ; preds = %do.end79.critedge, %land.rhs51.if.end93_crit_edge, %if.then43.if.end93_crit_edge
  %pages = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 7
  %31 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pages, align 8
  tail call void @kvfree(ptr noundef %32) #12
  tail call fastcc void @put_iova_vmas(ptr noundef %obj)
  %33 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %34) #12
  tail call void @ww_mutex_unlock(ptr noundef %34) #12
  %sgt = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 8
  %35 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sgt, align 4
  tail call void @drm_prime_gem_destroy(ptr noundef %obj, ptr noundef %36) #12
  br label %if.end95

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msm_gem_vunmap(ptr noundef %obj)
  tail call fastcc void @put_pages(ptr noundef %obj)
  tail call fastcc void @put_iova_vmas(ptr noundef %obj)
  %37 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %38) #12
  tail call void @ww_mutex_unlock(ptr noundef %38) #12
  br label %if.end95

if.end95:                                         ; preds = %if.else, %if.end93
  tail call void @drm_gem_object_release(ptr noundef %obj) #12
  tail call void @kfree(ptr noundef %obj) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mark_unpurgeable(ptr nocapture noundef %msm_obj) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %msm_obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mm_lock = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 21
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mm_lock) #12
  br i1 %call, label %entry.if.end35_crit_edge, label %land.rhs

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.rhs:                                         ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @mark_unpurgeable._rs, ptr noundef nonnull @__func__.mark_unpurgeable) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs.if.end35_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.61) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end.critedge, %land.rhs.if.end35_crit_edge, %entry.if.end35_crit_edge
  %import_attach.i = getelementptr inbounds %struct.drm_gem_object, ptr %msm_obj, i32 0, i32 8
  %4 = ptrtoint ptr %import_attach.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %import_attach.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %is_unpurgeable.exit, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_unpurgeable.exit:                              ; preds = %if.end35
  %pin_count.i = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 14
  %6 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pin_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.i.not = icmp eq i32 %7, 0
  br i1 %tobool1.i.not, label %if.end39, label %is_unpurgeable.exit.cleanup_crit_edge

is_unpurgeable.exit.cleanup_crit_edge:            ; preds = %is_unpurgeable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %is_unpurgeable.exit
  %dontneed = getelementptr inbounds %struct.msm_gem_object, ptr %msm_obj, i32 0, i32 3
  %8 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %dontneed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %land.rhs48, label %if.end94

land.rhs48:                                       ; preds = %if.end39
  %call49 = tail call i32 @___ratelimit(ptr noundef nonnull @mark_unpurgeable._rs.63, ptr noundef nonnull @__func__.mark_unpurgeable) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.rhs48.cleanup_crit_edge, label %do.end76.critedge, !prof !208

land.rhs48.cleanup_crit_edge:                     ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end76.critedge:                                ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 248, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.64) #12
  br label %cleanup

if.end94:                                         ; preds = %if.end39
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %msm_obj, i32 0, i32 5
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 8
  %shr = lshr i32 %10, 12
  %shrinkable_count = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 19
  %11 = ptrtoint ptr %shrinkable_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shrinkable_count, align 4
  %sub = sub i32 %12, %shr
  store i32 %sub, ptr %shrinkable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.rhs103, label %if.end94.if.end145_crit_edge

if.end94.if.end145_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145

land.rhs103:                                      ; preds = %if.end94
  %call104 = tail call i32 @___ratelimit(ptr noundef nonnull @mark_unpurgeable._rs.65, ptr noundef nonnull @__func__.mark_unpurgeable) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %land.rhs103.if.end145_crit_edge, label %do.end131.critedge, !prof !208

land.rhs103.if.end145_crit_edge:                  ; preds = %land.rhs103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145

do.end131.critedge:                               ; preds = %land.rhs103
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.66) #12
  br label %if.end145

if.end145:                                        ; preds = %do.end131.critedge, %land.rhs103.if.end145_crit_edge, %if.end94.if.end145_crit_edge
  %13 = ptrtoint ptr %dontneed to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load148 = load i8, ptr %dontneed, align 1
  %bf.clear = and i8 %bf.load148, 127
  store i8 %bf.clear, ptr %dontneed, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end145, %do.end76.critedge, %land.rhs48.cleanup_crit_edge, %is_unpurgeable.exit.cleanup_crit_edge, %if.end35.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_gem_new(ptr noundef %dev, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  %call = tail call zeroext i1 @msm_use_mmu(ptr noundef %dev) #12
  br i1 %call, label %if.else, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.else:                                          ; preds = %entry
  %and1 = and i32 %flags, 268435457
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else.if.end54_crit_edge, label %if.end5

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.end5:                                          ; preds = %if.else
  %vram = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %vram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vram, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not.not = icmp eq i32 %3, 0
  br i1 %tobool3.not.not, label %if.end5.if.end54_crit_edge, label %if.end5.land.rhs_crit_edge

if.end5.land.rhs_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.end5.if.end54_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

land.rhs:                                         ; preds = %if.end5.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %vram7 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %vram7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vram7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %land.rhs13, label %land.rhs.if.end54_crit_edge

land.rhs.if.end54_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

land.rhs13:                                       ; preds = %land.rhs
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_new._rs, ptr noundef nonnull @__func__.msm_gem_new) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.rhs13.cleanup92_crit_edge, label %do.end.critedge, !prof !208

land.rhs13.cleanup92_crit_edge:                   ; preds = %land.rhs13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup92

do.end.critedge:                                  ; preds = %land.rhs13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1132, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.46) #12
  br label %cleanup92

if.end54:                                         ; preds = %land.rhs.if.end54_crit_edge, %if.end5.if.end54_crit_edge, %if.else.if.end54_crit_edge
  %use_vram.0.off0154 = phi i1 [ false, %if.end5.if.end54_crit_edge ], [ true, %land.rhs.if.end54_crit_edge ], [ false, %if.else.if.end54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end54.cleanup92_crit_edge, label %if.end57

if.end54.cleanup92_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup92

if.end57:                                         ; preds = %if.end54
  %and.i = and i32 %flags, 983040
  %6 = add nsw i32 %and.i, -65536
  %7 = lshr exact i32 %6, 16
  %trunc.i = trunc i32 %7 to i16
  %8 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %trunc.i, label %if.end57.sw.default.i_crit_edge [
    i16 3, label %if.end57.sw.epilog.i_crit_edge
    i16 0, label %if.end57.sw.epilog.i_crit_edge169
    i16 1, label %if.end57.sw.epilog.i_crit_edge170
    i16 7, label %sw.bb1.i
  ]

if.end57.sw.epilog.i_crit_edge170:                ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.end57.sw.epilog.i_crit_edge169:                ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.end57.sw.epilog.i_crit_edge:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.end57.sw.default.i_crit_edge:                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default.i

sw.bb1.i:                                         ; preds = %if.end57
  %9 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_private, align 4
  %has_cached_coherent.i = getelementptr inbounds %struct.msm_drm_private, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %has_cached_coherent.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %has_cached_coherent.i, align 1, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %sw.bb1.i.sw.default.i_crit_edge, label %sw.bb1.i.sw.epilog.i_crit_edge

sw.bb1.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb1.i.sw.default.i_crit_edge:                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb1.i.sw.default.i_crit_edge, %if.end57.sw.default.i_crit_edge
  %dev2.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %13 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %14, i32 noundef 1, ptr noundef nonnull @.str.67, i32 noundef %and.i) #12
  br label %cleanup92

sw.epilog.i:                                      ; preds = %sw.bb1.i.sw.epilog.i_crit_edge, %if.end57.sw.epilog.i_crit_edge, %if.end57.sw.epilog.i_crit_edge169, %if.end57.sw.epilog.i_crit_edge170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 440) #17
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %sw.epilog.i.cleanup92_crit_edge, label %if.end62

sw.epilog.i.cleanup92_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup92

if.end62:                                         ; preds = %sw.epilog.i
  %flags7.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %flags, ptr %flags7.i, align 8
  %madv.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %madv.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %madv.i, align 4
  %node.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %node.i, ptr %node.i, align 8
  %prev.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %node.i, ptr %prev.i.i, align 4
  %vmas.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %vmas.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %vmas.i, ptr %vmas.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vmas.i, ptr %prev.i1.i, align 8
  %funcs.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 11
  %22 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @msm_gem_object_funcs, ptr %funcs.i, align 4
  br i1 %use_vram.0.off0154, label %if.then65, label %if.else81

if.then65:                                        ; preds = %if.end62
  tail call void @drm_gem_private_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef %and) #12
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %24, ptr noundef null) #12
  %call66 = tail call fastcc ptr @add_vma(ptr noundef nonnull %call7.i.i.i, ptr noundef null)
  %25 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %26) #12
  tail call void @ww_mutex_unlock(ptr noundef %26) #12
  %cmp.i = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %call66 to i32
  br label %if.then.i

if.end70:                                         ; preds = %if.then65
  %vram_node = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 11
  %28 = ptrtoint ptr %vram_node to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call66, ptr %vram_node, align 4
  %mm_list = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %mm_list to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %mm_list, ptr %mm_list, align 8
  %prev.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %mm_list, ptr %prev.i, align 4
  %31 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resv.i, align 8
  %call.i.i130 = tail call i32 @ww_mutex_lock(ptr noundef %32, ptr noundef null) #12
  %call74 = tail call fastcc ptr @get_pages(ptr noundef nonnull %call7.i.i.i)
  %33 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %34) #12
  tail call void @ww_mutex_unlock(ptr noundef %34) #12
  %cmp.i132 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then76, label %cleanup

if.then76:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %call74 to i32
  br label %if.then.i

cleanup:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 8
  %dev_private.i133 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %dev_private.i133 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_private.i133, align 4
  %40 = ptrtoint ptr %vram_node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vram_node, align 4
  %start.i = getelementptr inbounds %struct.drm_mm_node, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %start.i, align 8
  %conv.i = trunc i64 %43 to i32
  %shl.i = shl i32 %conv.i, 12
  %paddr.i = getelementptr inbounds %struct.msm_drm_private, ptr %39, i32 0, i32 35, i32 1
  %44 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %paddr.i, align 4
  %add.i = add i32 %shl.i, %45
  %conv = zext i32 %add.i to i64
  %iova = getelementptr inbounds %struct.msm_gem_vma, ptr %call66, i32 0, i32 1
  %46 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv, ptr %iova, align 8
  br label %if.end86

if.else81:                                        ; preds = %if.end62
  %call82 = tail call i32 @drm_gem_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef %and) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.else81.if.then.i_crit_edge

if.else81.if.then.i_crit_edge:                    ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end85:                                         ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #14
  %filp = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %filp, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %f_mapping, align 4
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1051842, ptr %gfp_mask.i, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %cleanup
  %mm_lock = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mm_lock, i32 noundef 0) #12
  %mm_list87 = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 6
  %inactive_unpinned = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 18
  %prev.i134 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 18, i32 1
  %52 = ptrtoint ptr %prev.i134 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i134, align 4
  %call.i.i135 = tail call zeroext i1 @__list_add_valid(ptr noundef %mm_list87, ptr noundef %53, ptr noundef %inactive_unpinned) #12
  br i1 %call.i.i135, label %if.end.i.i, label %if.end86.list_add_tail.exit_crit_edge

if.end86.list_add_tail.exit_crit_edge:            ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %prev.i134 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %mm_list87, ptr %prev.i134, align 4
  %55 = ptrtoint ptr %mm_list87 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %inactive_unpinned, ptr %mm_list87, align 8
  %prev3.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %56 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %mm_list87, ptr %53, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end86.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mm_lock) #12
  %obj_lock = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %obj_lock, i32 noundef 0) #12
  %objects = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 14
  %prev.i136 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 14, i32 1
  %58 = ptrtoint ptr %prev.i136 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i136, align 4
  %call.i.i137 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %59, ptr noundef %objects) #12
  br i1 %call.i.i137, label %if.end.i.i139, label %list_add_tail.exit.list_add_tail.exit140_crit_edge

list_add_tail.exit.list_add_tail.exit140_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit140

if.end.i.i139:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %prev.i136 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %node.i, ptr %prev.i136, align 4
  %61 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %objects, ptr %node.i, align 8
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %node.i, ptr %59, align 4
  br label %list_add_tail.exit140

list_add_tail.exit140:                            ; preds = %if.end.i.i139, %list_add_tail.exit.list_add_tail.exit140_crit_edge
  tail call void @mutex_unlock(ptr noundef %obj_lock) #12
  br label %cleanup92

if.then.i:                                        ; preds = %if.else81.if.then.i_crit_edge, %if.then76, %if.then68
  %ret.1 = phi i32 [ %call82, %if.else81.if.then.i_crit_edge ], [ %35, %if.then76 ], [ %27, %if.then68 ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void @llvm.prefetch.p0(ptr nonnull %call7.i.i.i, i32 1, i32 3, i32 1) #12
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i.i, ptr nonnull %call7.i.i.i, i32 1, ptr nonnull elementtype(i32) %call7.i.i.i) #12, !srcloc !212
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !208

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i.i, i32 noundef 3) #12
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !213
  tail call void @drm_gem_object_free(ptr noundef nonnull %call7.i.i.i) #12
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge
  %65 = inttoptr i32 %ret.1 to ptr
  br label %cleanup92

cleanup92:                                        ; preds = %drm_gem_object_put.exit, %list_add_tail.exit140, %sw.epilog.i.cleanup92_crit_edge, %sw.default.i, %if.end54.cleanup92_crit_edge, %do.end.critedge, %land.rhs13.cleanup92_crit_edge
  %retval.0 = phi ptr [ %65, %drm_gem_object_put.exit ], [ %call7.i.i.i, %list_add_tail.exit140 ], [ inttoptr (i32 -22 to ptr), %land.rhs13.cleanup92_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.critedge ], [ inttoptr (i32 -22 to ptr), %if.end54.cleanup92_crit_edge ], [ inttoptr (i32 -12 to ptr), %sw.epilog.i.cleanup92_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.default.i ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_object_set_name(ptr nocapture noundef %bo, ptr noundef readonly %fmt, ...) local_unnamed_addr #5 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #12
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !210
  %tobool.not = icmp eq ptr %fmt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.va_start(ptr nonnull %ap)
  %name = getelementptr inbounds %struct.msm_gem_object, ptr %bo, i32 0, i32 12
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %ap)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_use_mmu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_private_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @add_vma(ptr noundef %obj, ptr noundef %aspace) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i, align 8
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %1) #12
  br i1 %call.i.i.i, label %entry.if.end36_crit_edge, label %land.rhs

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.rhs:                                         ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @add_vma._rs, ptr noundef nonnull @__func__.add_vma) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs.if.end36_crit_edge, label %do.end.critedge, !prof !208

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 304, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end.critedge, %land.rhs.if.end36_crit_edge, %entry.if.end36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 144) #17
  %tobool39.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool39.not, label %if.end36.cleanup_crit_edge, label %if.end42

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42:                                         ; preds = %if.end36
  %aspace43 = getelementptr inbounds %struct.msm_gem_vma, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %aspace43 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %aspace, ptr %aspace43, align 8
  %list = getelementptr inbounds %struct.msm_gem_vma, ptr %call7.i.i, i32 0, i32 3
  %vmas = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %vmas) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vmas, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.msm_gem_vma, ptr %call7.i.i, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end42.cleanup_crit_edge, %if.end36.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.end36.cleanup_crit_edge ], [ %call7.i.i, %if.end42.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_gem_import(ptr noundef %dev, ptr nocapture noundef readonly %dmabuf, ptr noundef %sgt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %call = tail call zeroext i1 @msm_use_mmu(ptr noundef %dev) #12
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dmabuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dmabuf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 440) #17
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %flags7.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 131072, ptr %flags7.i, align 8
  %madv.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %madv.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %madv.i, align 4
  %node.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %node.i, ptr %node.i, align 8
  %prev.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %node.i, ptr %prev.i.i, align 4
  %vmas.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %vmas.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %vmas.i, ptr %vmas.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vmas.i, ptr %prev.i1.i, align 8
  %funcs.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @msm_gem_object_funcs, ptr %funcs.i, align 4
  %add = add i32 %5, 4095
  %and = and i32 %add, -4096
  tail call void @drm_gem_private_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef %and) #12
  %div48 = lshr i32 %add, 12
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %15, ptr noundef null) #12
  %sgt8 = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %sgt8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sgt, ptr %sgt8, align 4
  %17 = shl nuw nsw i32 %div48, 2
  %call.i.i49 = tail call noalias ptr @kvmalloc_node(i32 noundef %17, i32 noundef 3264, i32 noundef -1) #15
  %pages = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i49, ptr %pages, align 8
  %tobool11.not = icmp eq ptr %call.i.i49, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %20) #12
  tail call void @ww_mutex_unlock(ptr noundef %20) #12
  br label %if.then.i

if.end13:                                         ; preds = %if.end7
  %call15 = tail call i32 @drm_prime_sg_to_page_array(ptr noundef %sgt, ptr noundef nonnull %call.i.i49, i32 noundef %div48) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  %21 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %22) #12
  tail call void @ww_mutex_unlock(ptr noundef %22) #12
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast = inttoptr i32 %call15 to ptr
  br label %if.then.i

if.end18:                                         ; preds = %if.end13
  %mm_lock = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mm_lock, i32 noundef 0) #12
  %mm_list = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 6
  %inactive_unpinned = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 18
  %prev.i = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i54 = tail call zeroext i1 @__list_add_valid(ptr noundef %mm_list, ptr noundef %24, ptr noundef %inactive_unpinned) #12
  br i1 %call.i.i54, label %if.end.i.i, label %if.end18.list_add_tail.exit_crit_edge

if.end18.list_add_tail.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mm_list, ptr %prev.i, align 4
  %26 = ptrtoint ptr %mm_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %inactive_unpinned, ptr %mm_list, align 8
  %prev3.i.i = getelementptr inbounds %struct.msm_gem_object, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %mm_list, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end18.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mm_lock) #12
  %obj_lock = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %obj_lock, i32 noundef 0) #12
  %objects = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 14
  %prev.i55 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 14, i32 1
  %29 = ptrtoint ptr %prev.i55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i55, align 4
  %call.i.i56 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %30, ptr noundef %objects) #12
  br i1 %call.i.i56, label %if.end.i.i58, label %list_add_tail.exit.list_add_tail.exit59_crit_edge

list_add_tail.exit.list_add_tail.exit59_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit59

if.end.i.i58:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %prev.i55 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %node.i, ptr %prev.i55, align 4
  %32 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %objects, ptr %node.i, align 8
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %node.i, ptr %30, align 4
  br label %list_add_tail.exit59

list_add_tail.exit59:                             ; preds = %if.end.i.i58, %list_add_tail.exit.list_add_tail.exit59_crit_edge
  tail call void @mutex_unlock(ptr noundef %obj_lock) #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then17, %if.then12
  %ret.0 = phi ptr [ %phi.cast, %if.then17 ], [ inttoptr (i32 -12 to ptr), %if.then12 ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void @llvm.prefetch.p0(ptr nonnull %call7.i.i.i, i32 1, i32 3, i32 1) #12
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i.i, ptr nonnull %call7.i.i.i, i32 1, ptr nonnull elementtype(i32) %call7.i.i.i) #12, !srcloc !212
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !208

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i.i, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !213
  tail call void @drm_gem_object_free(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %list_add_tail.exit59, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call7.i.i.i, %list_add_tail.exit59 ], [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i.i ], [ %ret.0, %if.then.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_sg_to_page_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_gem_kernel_new(ptr noundef %dev, i32 noundef %size, i32 noundef %flags, ptr noundef %aspace, ptr noundef writeonly %bo, ptr noundef writeonly %iova) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @msm_gem_new(ptr noundef %dev, i32 noundef %size, i32 noundef %flags)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %iova, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %resv.i.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i.i.i, align 8
  %call.i.i.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #12
  %call.i.i = tail call fastcc i32 @get_and_pin_iova_range_locked(ptr noundef %call, ptr noundef %aspace, ptr noundef nonnull %iova, i64 noundef 0, i64 noundef -1) #12
  %2 = ptrtoint ptr %resv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv.i.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %3) #12
  tail call void @ww_mutex_unlock(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.err_crit_edge

if.then3.err_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %resv.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock(ptr noundef %5, ptr noundef null) #12
  %call.i.i32 = tail call fastcc ptr @get_vaddr(ptr noundef %call, i32 noundef 0) #12
  %6 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %7) #12
  tail call void @ww_mutex_unlock(ptr noundef %7) #12
  %cmp.i33 = icmp ugt ptr %call.i.i32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv.i.i, align 8
  %call.i.i.i35 = tail call i32 @ww_mutex_lock(ptr noundef %9, ptr noundef null) #12
  tail call void @msm_gem_unpin_iova_locked(ptr noundef %call, ptr noundef %aspace) #12
  %10 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %11) #12
  tail call void @ww_mutex_unlock(ptr noundef %11) #12
  %12 = ptrtoint ptr %call.i.i32 to i32
  br label %err

if.end13:                                         ; preds = %if.end8
  %tobool14.not = icmp eq ptr %bo, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %bo, align 4
  br label %cleanup

err:                                              ; preds = %if.then11, %if.then3.err_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %if.then3.err_crit_edge ], [ %12, %if.then11 ]
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %err.drm_gem_object_put.exit_crit_edge, label %if.then.i

err.drm_gem_object_put.exit_crit_edge:            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #14
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %err
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !212
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !208

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #12
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !213
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #12
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %err.drm_gem_object_put.exit_crit_edge
  %15 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %drm_gem_object_put.exit, %if.then15, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %drm_gem_object_put.exit ], [ %call.i.i32, %if.then15 ], [ %call.i.i32, %if.end13.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_kernel_put(ptr noundef %bo, ptr noundef %aspace) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bo, null
  %cmp.i = icmp ugt ptr %bo, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.then.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then.i:                                        ; preds = %entry
  %resv.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %0 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #12
  tail call void @msm_gem_put_vaddr_locked(ptr noundef nonnull %bo) #12
  %2 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %3) #12
  tail call void @ww_mutex_unlock(ptr noundef %3) #12
  %4 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv.i.i, align 8
  %call.i.i.i5 = tail call i32 @ww_mutex_lock(ptr noundef %5, ptr noundef null) #12
  tail call void @msm_gem_unpin_iova_locked(ptr noundef nonnull %bo, ptr noundef %aspace) #12
  %6 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %7) #12
  tail call void @ww_mutex_unlock(ptr noundef %7) #12
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bo, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void @llvm.prefetch.p0(ptr nonnull %bo, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %bo, ptr nonnull %bo, i32 1, ptr nonnull elementtype(i32) %bo) #12, !srcloc !212
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !208

if.end5.i.i.i.i.i.i.return_crit_edge:             ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %bo, i32 noundef 3) #12
  br label %return

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !213
  tail call void @drm_gem_object_free(ptr noundef nonnull %bo) #12
  br label %return

return:                                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_get_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_prime_pages_to_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_map_vma(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_init_vma(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_purge_vma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_close_vma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_put_pages(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_prime_pin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_prime_unpin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_prime_get_sg_table(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_prime_vmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_prime_vunmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gem_object_mmap(ptr nocapture noundef readonly %obj, ptr nocapture noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags, align 4
  %or = or i32 %1, 335822848
  store i32 %or, ptr %vm_flags, align 4
  %call = tail call i32 @vm_get_page_prot(i32 noundef %or) #12
  %flags.i = getelementptr inbounds %struct.msm_gem_object, ptr %obj, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %call, -61
  %or.i = or i32 %and1.i, 4
  %retval.0.i = select i1 %tobool.not.i, i32 %call, i32 %or.i
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %4 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval.0.i, ptr %vm_page_prot, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gem_fault(ptr nocapture noundef readonly %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %5, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %madv = getelementptr inbounds %struct.msm_gem_object, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %madv to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %madv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %if.end44, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @msm_gem_fault._rs, ptr noundef nonnull @__func__.msm_gem_fault) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.rhs.cleanup.sink.split_crit_edge, label %do.end.critedge, !prof !208

land.rhs.cleanup.sink.split_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 242, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  br label %cleanup.sink.split

if.end44:                                         ; preds = %if.end
  %call45 = tail call fastcc ptr @get_pages(ptr noundef %3)
  %cmp.i = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %cmp.i75 = icmp eq ptr %call45, inttoptr (i32 -12 to ptr)
  %..i = select i1 %cmp.i75, i32 1, i32 2
  br label %cleanup.sink.split

if.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %address = getelementptr inbounds %struct.anon.54, ptr %vmf, i32 0, i32 3
  %8 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %address, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %sub = sub i32 %9, %11
  %shr = lshr i32 %sub, 12
  %arrayidx = getelementptr ptr, ptr %call45, i32 %shr
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %15 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %15
  %conv.i = zext i32 %add to i64
  %or.i = or i64 %conv.i, 2305843009213693952
  %.fca.0.insert = insertvalue [1 x i64] poison, i64 %or.i, 0
  %call52 = tail call i32 @vmf_insert_mixed(ptr noundef %1, i32 noundef %9, [1 x i64] %.fca.0.insert) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end50, %if.then47, %do.end.critedge, %land.rhs.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 2, %land.rhs.cleanup.sink.split_crit_edge ], [ 2, %do.end.critedge ], [ %..i, %if.then47 ], [ %call52, %if.end50 ]
  %16 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %17) #12
  tail call void @ww_mutex_unlock(ptr noundef %17) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 256, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmf_insert_mixed(ptr noundef, i32 noundef, [1 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !62, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !108, !109, !111, !112, !113, !115, !116, !118, !119, !121, !123, !125, !126, !128, !130, !131, !133, !134, !136, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !154, !155, !157, !158, !160, !161, !162, !163, !165, !166, !168, !169, !171, !172, !173, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !191, !193, !195, !196, !198}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 187, i32 6}
!2 = !{ptr @msm_gem_get_pages._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.msm_gem_get_pages, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @msm_gem_put_pages._rs, !8, !"_rs", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 209, i32 2}
!9 = !{ptr @__func__.msm_gem_put_pages, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @msm_gem_iova._rs, !12, !"_rs", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 524, i32 2}
!13 = !{ptr @__func__.msm_gem_iova, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @msm_gem_unpin_iova_locked._rs, !16, !"_rs", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 538, i32 2}
!17 = !{ptr @__func__.msm_gem_unpin_iova_locked, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @msm_gem_unpin_iova_locked._rs.7, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 542, i32 7}
!21 = !{ptr @msm_gem_unpin_iova_locked._rs.8, !22, !"_rs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 546, i32 3}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 571, i32 47}
!25 = !{ptr @msm_gem_put_vaddr_locked._rs, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 673, i32 2}
!27 = !{ptr @__func__.msm_gem_put_vaddr_locked, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @msm_gem_put_vaddr_locked._rs.10, !29, !"_rs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 674, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @msm_gem_purge._rs, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 716, i32 2}
!33 = !{ptr @__func__.msm_gem_purge, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @msm_gem_purge._rs.12, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 717, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @msm_gem_evict._rs, !38, !"_rs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 754, i32 2}
!39 = !{ptr @__func__.msm_gem_evict, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @msm_gem_evict._rs.14, !41, !"_rs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 755, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @msm_gem_evict._rs.16, !44, !"_rs", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 756, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @msm_gem_evict._rs.18, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 757, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @msm_gem_vunmap._rs, !50, !"_rs", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 773, i32 2}
!51 = !{ptr @__func__.msm_gem_vunmap, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @msm_gem_vunmap._rs.20, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 775, i32 25}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @msm_gem_active_get._rs, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 788, i32 2}
!57 = !{ptr @__func__.msm_gem_active_get, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @msm_gem_active_get._rs.22, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 789, i32 2}
!60 = !{ptr @msm_gem_active_get._rs.23, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 790, i32 2}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @msm_gem_active_put._rs, !64, !"_rs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 806, i32 2}
!65 = !{ptr @__func__.msm_gem_active_put, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 897, i32 10}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 902, i32 10}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 906, i32 10}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 910, i32 16}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 915, i32 16}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 919, i32 15}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 936, i32 18}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 937, i32 18}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 939, i32 19}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 939, i32 30}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 944, i32 15}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 956, i32 14}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 959, i32 15}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 963, i32 16}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 965, i32 16}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 967, i32 16}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 969, i32 16}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 971, i32 16}
!102 = !{ptr @msm_gem_free_object._rs, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 996, i32 2}
!104 = !{ptr @__func__.msm_gem_free_object, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @msm_gem_free_object._rs.44, !107, !"_rs", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 1001, i32 3}
!108 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @msm_gem_new._rs, !110, !"_rs", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 1132, i32 6}
!111 = !{ptr @__func__.msm_gem_new, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 1219, i32 3}
!115 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @get_pages._rs, !117, !"_rs", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 100, i32 2}
!118 = !{ptr @__func__.get_pages, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 113, i32 4}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 124, i32 4}
!123 = !{ptr @mmap_offset._rs, !124, !"_rs", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 275, i32 2}
!125 = !{ptr @__func__.mmap_offset, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 281, i32 3}
!128 = !{ptr @get_and_pin_iova_range_locked._rs, !129, !"_rs", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 453, i32 2}
!130 = !{ptr @__func__.get_and_pin_iova_range_locked, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @msm_gem_pin_iova._rs, !132, !"_rs", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 424, i32 2}
!133 = !{ptr @__func__.msm_gem_pin_iova, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @msm_gem_pin_iova._rs.52, !135, !"_rs", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 426, i32 6}
!136 = !{ptr @msm_gem_pin_iova._rs.53, !137, !"_rs", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 430, i32 6}
!138 = !{ptr @get_iova_locked._rs, !139, !"_rs", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 386, i32 2}
!140 = !{ptr @__func__.get_iova_locked, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @lookup_vma._rs, !142, !"_rs", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 323, i32 2}
!143 = !{ptr @__func__.lookup_vma, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @get_vaddr._rs, !145, !"_rs", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 600, i32 2}
!146 = !{ptr @__func__.get_vaddr, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @get_vaddr._rs.54, !148, !"_rs", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 605, i32 6}
!149 = !{ptr @.str.55, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.56, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 606, i32 3}
!152 = !{ptr @put_iova_spaces._rs, !153, !"_rs", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 354, i32 2}
!154 = !{ptr @__func__.put_iova_spaces, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @put_iova_vmas._rs, !156, !"_rs", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 372, i32 2}
!157 = !{ptr @__func__.put_iova_vmas, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @is_vunmapable._rs, !159, !"_rs", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/msm/msm_gem.h", i32 219, i32 2}
!160 = !{ptr @__func__.is_vunmapable, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @update_inactive._rs, !164, !"_rs", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 817, i32 2}
!165 = !{ptr @__func__.update_inactive, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @update_inactive._rs.59, !167, !"_rs", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 837, i32 3}
!168 = !{ptr @.str.60, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @mark_purgeable._rs, !170, !"_rs", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/msm/msm_gem.h", i32 227, i32 2}
!171 = !{ptr @__func__.mark_purgeable, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.61, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @mark_purgeable._rs.62, !174, !"_rs", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/msm/msm_gem.h", i32 232, i32 6}
!175 = !{ptr @is_active._rs, !176, !"_rs", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/msm/msm_gem.h", i32 201, i32 2}
!177 = !{ptr @__func__.is_active, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @mark_unpurgeable._rs, !179, !"_rs", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/msm/msm_gem.h", i32 243, i32 2}
!180 = !{ptr @__func__.mark_unpurgeable, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @mark_unpurgeable._rs.63, !182, !"_rs", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/msm/msm_gem.h", i32 248, i32 6}
!183 = !{ptr @.str.64, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @mark_unpurgeable._rs.65, !185, !"_rs", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/msm/msm_gem.h", i32 252, i32 2}
!186 = !{ptr @.str.66, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.67, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 1096, i32 3}
!189 = !{ptr @msm_gem_object_funcs, !190, !"msm_gem_object_funcs", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 1068, i32 42}
!191 = !{ptr @vm_ops, !192, !"vm_ops", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 1062, i32 42}
!193 = !{ptr @msm_gem_fault._rs, !194, !"_rs", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 242, i32 6}
!195 = !{ptr @__func__.msm_gem_fault, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @add_vma._rs, !197, !"_rs", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/msm/msm_gem.c", i32 304, i32 2}
!198 = !{ptr @__func__.add_vma, !197, !"<string literal>", i1 false, i1 false}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{!"branch_weights", i32 2000, i32 1}
!209 = !{!"branch_weights", i32 1, i32 2000}
!210 = !{!"auto-init"}
!211 = !{i64 2148639320}
!212 = !{i64 2148553784, i64 2148553816, i64 2148553845, i64 2148553879, i64 2148553910, i64 2148553933}
!213 = !{i64 2149661373}
!214 = !{i64 902538, i64 902565}
!215 = !{i64 903233, i64 903260, i64 903293, i64 903314, i64 903341, i64 903367}
!216 = !{i8 0, i8 2}
