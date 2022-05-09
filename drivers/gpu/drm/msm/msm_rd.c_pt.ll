; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/msm_rd.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_rd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.88, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.94, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.88 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.94 = type { i32, ptr }
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
%struct.msm_rd_state = type { ptr, i8, ptr, %struct.mutex, %struct.wait_queue_head, %struct.circ_buf, [512 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.__va_list = type { ptr }
%struct.msm_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, %struct.list_head, %struct.ww_acquire_ctx, i32, ptr, ptr, i32, ptr, ptr, i8, i8, i8, ptr, ptr, i32, i32, i32, ptr, [0 x %struct.anon.97] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.95, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.95 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.anon.97 = type { i32, %union.anon.98, i64 }
%union.anon.98 = type { ptr }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.108, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.108 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.85, ptr }
%union.anon.85 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.upid = type { i32, ptr }
%struct.anon.96 = type { i32, i32, i64, i32, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.81 = type { ptr }

@rd_full = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_rd_full338 = internal constant [76 x i8] c"msm.parm=rd_full:If true, $debugfs/.../rd will snapshot all buffer contents\00", section ".modinfo", align 1
@__param_str_rd_full = internal constant [12 x i8] c"msm.rd_full\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_rd_full = internal constant %struct.kernel_param { ptr @__param_str_rd_full, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @rd_full } }, section "__param", align 4
@__UNIQUE_ID_rd_fulltype339 = internal constant [26 x i8] c"msm.parmtype=rd_full:bool\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rd\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hangrd\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpu/drm/msm/msm_rd.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%.*s/%d: fence=%u\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"???/%d: fence=%u\00", [47 x i8] zeroinitializer }, align 32
@rd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&rd->read_lock\00", [17 x i8] zeroinitializer }, align 32
@rd_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rd->fifo_event\00", [16 x i8] zeroinitializer }, align 32
@rd_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @rd_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rd_open, ptr null, ptr @rd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"rd_full\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 44, i32 6 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 270, i32 22 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 278, i32 22 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 360, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 375, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 379, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 250, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 252, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"rd_debugfs_fops\00", align 1
@___asan_gen_.45 = private constant [32 x i8] c"../drivers/gpu/drm/msm/msm_rd.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 221, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 230, i32 6 }
@___asan_gen_.51 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 214, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 174, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 695, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 723, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_rd_full338, ptr @__UNIQUE_ID_rd_fulltype339, ptr @__param_rd_full, ptr @rd_full, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rd_init.__key, ptr @.str.5, ptr @rd_init.__key.6, ptr @.str.7, ptr @rd_debugfs_fops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_full to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_rd_debugfs_init(ptr nocapture noundef readonly %minor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %rd1 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %rd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rd1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 680) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.fail_crit_edge, label %rd_init.exit

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

rd_init.exit:                                     ; preds = %if.end
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call7.i.i.i, align 8
  %buf.i = getelementptr inbounds %struct.msm_rd_state, ptr %call7.i.i.i, i32 0, i32 6
  %fifo.i = getelementptr inbounds %struct.msm_rd_state, ptr %call7.i.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %fifo.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf.i, ptr %fifo.i, align 4
  %read_lock.i = getelementptr inbounds %struct.msm_rd_state, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %read_lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @rd_init.__key) #8
  %fifo_event.i = getelementptr inbounds %struct.msm_rd_state, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %fifo_event.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @rd_init.__key.6) #8
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 4
  %11 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugfs_root.i, align 4
  %call7.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext -32476, ptr noundef %12, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @rd_debugfs_fops) #8
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %rd_init.exit.fail_crit_edge, label %if.end5

rd_init.exit.fail_crit_edge:                      ; preds = %rd_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end5:                                          ; preds = %rd_init.exit
  %13 = ptrtoint ptr %rd1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %rd1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 680) #11
  %tobool.not.i25 = icmp eq ptr %call7.i.i.i24, null
  br i1 %tobool.not.i25, label %if.end5.fail_crit_edge, label %rd_init.exit35

if.end5.fail_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

rd_init.exit35:                                   ; preds = %if.end5
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %call7.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %call7.i.i.i24, align 8
  %buf.i27 = getelementptr inbounds %struct.msm_rd_state, ptr %call7.i.i.i24, i32 0, i32 6
  %fifo.i28 = getelementptr inbounds %struct.msm_rd_state, ptr %call7.i.i.i24, i32 0, i32 5
  %18 = ptrtoint ptr %fifo.i28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i27, ptr %fifo.i28, align 4
  %read_lock.i29 = getelementptr inbounds %struct.msm_rd_state, ptr %call7.i.i.i24, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %read_lock.i29, ptr noundef nonnull @.str.5, ptr noundef nonnull @rd_init.__key) #8
  %fifo_event.i30 = getelementptr inbounds %struct.msm_rd_state, ptr %call7.i.i.i24, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %fifo_event.i30, ptr noundef nonnull @.str.7, ptr noundef nonnull @rd_init.__key.6) #8
  %19 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %debugfs_root.i, align 4
  %call7.i32 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext -32476, ptr noundef %20, ptr noundef nonnull %call7.i.i.i24, ptr noundef nonnull @rd_debugfs_fops) #8
  %cmp.i36 = icmp ugt ptr %call7.i.i.i24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %rd_init.exit35.fail_crit_edge, label %if.end11

rd_init.exit35.fail_crit_edge:                    ; preds = %rd_init.exit35
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end11:                                         ; preds = %rd_init.exit35
  call void @__sanitizer_cov_trace_pc() #10
  %hangrd = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %hangrd to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.i24, ptr %hangrd, align 8
  br label %cleanup

fail:                                             ; preds = %rd_init.exit35.fail_crit_edge, %if.end5.fail_crit_edge, %rd_init.exit.fail_crit_edge, %if.end.fail_crit_edge
  %ret.0.in = phi ptr [ %call7.i.i.i, %rd_init.exit.fail_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.fail_crit_edge ], [ %call7.i.i.i24, %rd_init.exit35.fail_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.fail_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  %22 = ptrtoint ptr %rd1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rd1, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %fail.rd_cleanup.exit.i_crit_edge, label %if.end.i.i

fail.rd_cleanup.exit.i_crit_edge:                 ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  br label %rd_cleanup.exit.i

if.end.i.i:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  %read_lock.i.i = getelementptr inbounds %struct.msm_rd_state, ptr %23, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %read_lock.i.i) #8
  tail call void @kfree(ptr noundef nonnull %23) #8
  br label %rd_cleanup.exit.i

rd_cleanup.exit.i:                                ; preds = %if.end.i.i, %fail.rd_cleanup.exit.i_crit_edge
  %24 = ptrtoint ptr %rd1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rd1, align 4
  %hangrd.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 12
  %25 = ptrtoint ptr %hangrd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hangrd.i, align 8
  %tobool.not.i6.i = icmp eq ptr %26, null
  br i1 %tobool.not.i6.i, label %rd_cleanup.exit.i.msm_rd_debugfs_cleanup.exit_crit_edge, label %if.end.i8.i

rd_cleanup.exit.i.msm_rd_debugfs_cleanup.exit_crit_edge: ; preds = %rd_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_rd_debugfs_cleanup.exit

if.end.i8.i:                                      ; preds = %rd_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read_lock.i7.i = getelementptr inbounds %struct.msm_rd_state, ptr %26, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %read_lock.i7.i) #8
  tail call void @kfree(ptr noundef nonnull %26) #8
  br label %msm_rd_debugfs_cleanup.exit

msm_rd_debugfs_cleanup.exit:                      ; preds = %if.end.i8.i, %rd_cleanup.exit.i.msm_rd_debugfs_cleanup.exit_crit_edge
  %27 = ptrtoint ptr %hangrd.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %hangrd.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %msm_rd_debugfs_cleanup.exit, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %msm_rd_debugfs_cleanup.exit ], [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_rd_debugfs_cleanup(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rd = getelementptr inbounds %struct.msm_drm_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rd, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.rd_cleanup.exit_crit_edge, label %if.end.i

entry.rd_cleanup.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rd_cleanup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read_lock.i = getelementptr inbounds %struct.msm_rd_state, ptr %1, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %read_lock.i) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %rd_cleanup.exit

rd_cleanup.exit:                                  ; preds = %if.end.i, %entry.rd_cleanup.exit_crit_edge
  %2 = ptrtoint ptr %rd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rd, align 4
  %hangrd = getelementptr inbounds %struct.msm_drm_private, ptr %priv, i32 0, i32 12
  %3 = ptrtoint ptr %hangrd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hangrd, align 8
  %tobool.not.i6 = icmp eq ptr %4, null
  br i1 %tobool.not.i6, label %rd_cleanup.exit.rd_cleanup.exit9_crit_edge, label %if.end.i8

rd_cleanup.exit.rd_cleanup.exit9_crit_edge:       ; preds = %rd_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rd_cleanup.exit9

if.end.i8:                                        ; preds = %rd_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read_lock.i7 = getelementptr inbounds %struct.msm_rd_state, ptr %4, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %read_lock.i7) #8
  tail call void @kfree(ptr noundef nonnull %4) #8
  br label %rd_cleanup.exit9

rd_cleanup.exit9:                                 ; preds = %if.end.i8, %rd_cleanup.exit.rd_cleanup.exit9_crit_edge
  %5 = ptrtoint ptr %hangrd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %hangrd, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_rd_dump_submit(ptr noundef %rd, ptr nocapture noundef readonly %submit, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %type.addr.i149 = alloca i32, align 4
  %sz.addr.i150 = alloca i32, align 4
  %type.addr.i140 = alloca i32, align 4
  %sz.addr.i141 = alloca i32, align 4
  %type.addr.i = alloca i32, align 4
  %sz.addr.i = alloca i32, align 4
  %msg = alloca [256 x i8], align 1
  %args = alloca %struct.__va_list, align 4
  %.compoundliteral = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg) #8
  %0 = call ptr @memset(ptr %msg, i32 255, i32 256)
  %open = getelementptr inbounds %struct.msm_rd_state, ptr %rd, i32 0, i32 1
  %1 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %open, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpu = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 3
  %3 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpu, align 8
  %lock = getelementptr inbounds %struct.msm_gpu, ptr %4, i32 0, i32 17
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #8
  br i1 %call, label %if.end.if.end16_crit_edge, label %do.end, !prof !51

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 360, i32 noundef 9, ptr noundef null) #8
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end.if.end16_crit_edge
  %tobool23.not = icmp eq ptr %fmt, null
  br i1 %tobool23.not, label %if.end16.if.end27_crit_edge, label %if.then24

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #8
  %5 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !52
  call void @llvm.va_start(ptr nonnull %args)
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call25 = call i32 @vscnprintf(ptr noundef nonnull %msg, i32 noundef 256, ptr noundef nonnull %fmt, [1 x i32] %.fca.0.insert) #8
  call void @llvm.va_end(ptr nonnull %args)
  %add = add i32 %call25, 3
  %and = and i32 %add, -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.addr.i)
  %7 = ptrtoint ptr %type.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %type.addr.i, align 4
  %8 = ptrtoint ptr %sz.addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %sz.addr.i, align 4
  call fastcc void @rd_write(ptr noundef %rd, ptr noundef nonnull %type.addr.i, i32 noundef 4) #8
  call fastcc void @rd_write(ptr noundef %rd, ptr noundef nonnull %sz.addr.i, i32 noundef 4) #8
  call fastcc void @rd_write(ptr noundef %rd, ptr noundef nonnull %msg, i32 noundef %and) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end16.if.end27_crit_edge
  %9 = call i32 @llvm.read_register.i32(metadata !40) #8
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !53
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end27.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end27.rcu_read_lock.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end27
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end27.rcu_read_lock.exit_crit_edge
  %pid = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 12
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pid, align 4
  %call28 = call ptr @pid_task(ptr noundef %14, i32 noundef 0) #8
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %rcu_read_lock.exit
  %comm = getelementptr inbounds %struct.task_struct, ptr %call28, i32 0, i32 101
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pid, align 4
  %tobool.not.i124 = icmp eq ptr %16, null
  br i1 %tobool.not.i124, label %if.then30.pid_nr.exit_crit_edge, label %if.then.i125

if.then30.pid_nr.exit_crit_edge:                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %pid_nr.exit

if.then.i125:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %numbers.i = getelementptr inbounds %struct.pid, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %numbers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %numbers.i, align 4
  br label %pid_nr.exit

pid_nr.exit:                                      ; preds = %if.then.i125, %if.then30.pid_nr.exit_crit_edge
  %nr.0.i = phi i32 [ %18, %if.then.i125 ], [ 0, %if.then30.pid_nr.exit_crit_edge ]
  %seqno = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 7
  %19 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seqno, align 8
  %call35 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %msg, i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef 16, ptr noundef %comm, i32 noundef %nr.0.i, i32 noundef %20) #8
  br label %if.end41

if.else:                                          ; preds = %rcu_read_lock.exit
  %21 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pid, align 4
  %tobool.not.i126 = icmp eq ptr %22, null
  br i1 %tobool.not.i126, label %if.else.pid_nr.exit130_crit_edge, label %if.then.i128

if.else.pid_nr.exit130_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %pid_nr.exit130

if.then.i128:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %numbers.i127 = getelementptr inbounds %struct.pid, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %numbers.i127 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %numbers.i127, align 4
  br label %pid_nr.exit130

pid_nr.exit130:                                   ; preds = %if.then.i128, %if.else.pid_nr.exit130_crit_edge
  %nr.0.i129 = phi i32 [ %24, %if.then.i128 ], [ 0, %if.else.pid_nr.exit130_crit_edge ]
  %seqno39 = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 7
  %25 = ptrtoint ptr %seqno39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %seqno39, align 8
  %call40 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %msg, i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %nr.0.i129, i32 noundef %26) #8
  br label %if.end41

if.end41:                                         ; preds = %pid_nr.exit130, %pid_nr.exit
  %n.0 = phi i32 [ %call35, %pid_nr.exit ], [ %call40, %pid_nr.exit130 ]
  %call.i131 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i131, label %if.end41.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i134

if.end41.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i134:                               ; preds = %if.end41
  %call1.i132 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132)
  %tobool.not.i133 = icmp eq i32 %call1.i132, 0
  br i1 %tobool.not.i133, label %land.lhs.true.i134.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i136

land.lhs.true.i134.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i136:                              ; preds = %land.lhs.true.i134
  %.b4.i135 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i135, label %land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge, label %if.then.i137

land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i137:                                     ; preds = %land.lhs.true2.i136
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i137, %land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i134.rcu_read_unlock.exit_crit_edge, %if.end41.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !54
  %27 = call i32 @llvm.read_register.i32(metadata !40) #8
  %and.i.i.i.i.i138 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i138 to ptr
  %preempt_count.i.i.i.i139 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i139, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i139, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %add43 = add i32 %n.0, 3
  %and44 = and i32 %add43, -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.addr.i140)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.addr.i141)
  %31 = ptrtoint ptr %type.addr.i140 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %type.addr.i140, align 4
  %32 = ptrtoint ptr %sz.addr.i141 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and44, ptr %sz.addr.i141, align 4
  call fastcc void @rd_write(ptr noundef %rd, ptr noundef nonnull %type.addr.i140, i32 noundef 4) #8
  call fastcc void @rd_write(ptr noundef %rd, ptr noundef nonnull %sz.addr.i141, i32 noundef 4) #8
  call fastcc void @rd_write(ptr noundef %rd, ptr noundef nonnull %msg, i32 noundef %and44) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.addr.i140)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.addr.i141)
  %nr_bos = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 19
  %33 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp151.not = icmp eq i32 %34, 0
  br i1 %cmp151.not, label %rcu_read_unlock.exit.for.cond46.preheader_crit_edge, label %rcu_read_unlock.exit.for.body_crit_edge

rcu_read_unlock.exit.for.body_crit_edge:          ; preds = %rcu_read_unlock.exit
  br label %for.body

rcu_read_unlock.exit.for.cond46.preheader_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %should_dump.exit.for.cond46.preheader_crit_edge, %rcu_read_unlock.exit.for.cond46.preheader_crit_edge
  %nr_cmds = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 18
  %35 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp47154.not = icmp eq i32 %36, 0
  br i1 %cmp47154.not, label %for.cond46.preheader.cleanup_crit_edge, label %for.body48.lr.ph

for.cond46.preheader.cleanup_crit_edge:           ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body48.lr.ph:                                 ; preds = %for.cond46.preheader
  %cmd = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 21
  br label %for.body48

for.body:                                         ; preds = %should_dump.exit.for.body_crit_edge, %rcu_read_unlock.exit.for.body_crit_edge
  %i.0152 = phi i32 [ %inc, %should_dump.exit.for.body_crit_edge ], [ 0, %rcu_read_unlock.exit.for.body_crit_edge ]
  %37 = load i8, ptr @rd_full, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i142 = icmp eq i8 %37, 0
  br i1 %tobool.not.i142, label %lor.rhs.i, label %for.body.should_dump.exit_crit_edge

for.body.should_dump.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %should_dump.exit

lor.rhs.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.0152
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 8
  %and.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i = icmp ne i32 %and.i, 0
  br label %should_dump.exit

should_dump.exit:                                 ; preds = %lor.rhs.i, %for.body.should_dump.exit_crit_edge
  %40 = phi i1 [ true, %for.body.should_dump.exit_crit_edge ], [ %tobool1.i, %lor.rhs.i ]
  call fastcc void @snapshot_buf(ptr noundef %rd, ptr noundef %submit, i32 noundef %i.0152, i64 noundef 0, i32 noundef 0, i1 noundef zeroext %40)
  %inc = add nuw i32 %i.0152, 1
  %41 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_bos, align 8
  %cmp = icmp ult i32 %inc, %42
  br i1 %cmp, label %should_dump.exit.for.body_crit_edge, label %should_dump.exit.for.cond46.preheader_crit_edge

should_dump.exit.for.cond46.preheader_crit_edge:  ; preds = %should_dump.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond46.preheader

should_dump.exit.for.body_crit_edge:              ; preds = %should_dump.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond59.preheader:                             ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp61157.not = icmp eq i32 %55, 0
  br i1 %cmp61157.not, label %for.cond59.preheader.cleanup_crit_edge, label %for.body62.lr.ph

for.cond59.preheader.cleanup_crit_edge:           ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body62.lr.ph:                                 ; preds = %for.cond59.preheader
  %cmd64 = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 21
  %arrayinit.element = getelementptr inbounds i32, ptr %.compoundliteral, i32 1
  %arrayinit.element73 = getelementptr inbounds i32, ptr %.compoundliteral, i32 2
  br label %for.body62

for.body48:                                       ; preds = %if.end55.for.body48_crit_edge, %for.body48.lr.ph
  %i.1155 = phi i32 [ 0, %for.body48.lr.ph ], [ %inc57, %if.end55.for.body48_crit_edge ]
  %43 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cmd, align 8
  %size = getelementptr %struct.anon.96, ptr %44, i32 %i.1155, i32 1
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size, align 4
  %47 = load i8, ptr @rd_full, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i143 = icmp eq i8 %47, 0
  br i1 %tobool.not.i143, label %should_dump.exit148, label %for.body48.if.end55_crit_edge

for.body48.if.end55_crit_edge:                    ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

should_dump.exit148:                              ; preds = %for.body48
  %arrayidx.i144 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %i.1155
  %48 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i144, align 8
  %and.i145 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145)
  %tobool1.i146.not = icmp eq i32 %and.i145, 0
  br i1 %tobool1.i146.not, label %if.then50, label %should_dump.exit148.if.end55_crit_edge

should_dump.exit148.if.end55_crit_edge:           ; preds = %should_dump.exit148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then50:                                        ; preds = %should_dump.exit148
  call void @__sanitizer_cov_trace_pc() #10
  %idx = getelementptr %struct.anon.96, ptr %44, i32 %i.1155, i32 4
  %50 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %idx, align 4
  %iova = getelementptr %struct.anon.96, ptr %44, i32 %i.1155, i32 2
  %52 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %iova, align 8
  %mul = shl i32 %46, 2
  call fastcc void @snapshot_buf(ptr noundef %rd, ptr noundef %submit, i32 noundef %51, i64 noundef %53, i32 noundef %mul, i1 noundef zeroext true)
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %should_dump.exit148.if.end55_crit_edge, %for.body48.if.end55_crit_edge
  %inc57 = add nuw i32 %i.1155, 1
  %54 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_cmds, align 4
  %cmp47 = icmp ult i32 %inc57, %55
  br i1 %cmp47, label %if.end55.for.body48_crit_edge, label %for.cond59.preheader

if.end55.for.body48_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body48

for.body62:                                       ; preds = %sw.epilog.for.body62_crit_edge, %for.body62.lr.ph
  %i.2158 = phi i32 [ 0, %for.body62.lr.ph ], [ %inc77, %sw.epilog.for.body62_crit_edge ]
  %56 = ptrtoint ptr %cmd64 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cmd64, align 8
  %arrayidx65 = getelementptr %struct.anon.96, ptr %57, i32 %i.2158
  %58 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx65, align 8
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i32 %59, label %for.body62.sw.epilog_crit_edge [
    i32 1, label %for.body62.sw.bb_crit_edge
    i32 3, label %for.body62.sw.bb_crit_edge161
  ]

for.body62.sw.bb_crit_edge161:                    ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

for.body62.sw.bb_crit_edge:                       ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

for.body62.sw.epilog_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body62.sw.bb_crit_edge, %for.body62.sw.bb_crit_edge161
  %size70 = getelementptr %struct.anon.96, ptr %57, i32 %i.2158, i32 1
  %61 = ptrtoint ptr %size70 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size70, align 4
  %iova66 = getelementptr %struct.anon.96, ptr %57, i32 %i.2158, i32 2
  %63 = ptrtoint ptr %iova66 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %iova66, align 8
  %conv = trunc i64 %64 to i32
  %65 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv, ptr %.compoundliteral, align 4
  %66 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %62, ptr %arrayinit.element, align 4
  %shr = lshr i64 %64, 32
  %conv74 = trunc i64 %shr to i32
  %67 = ptrtoint ptr %arrayinit.element73 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv74, ptr %arrayinit.element73, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.addr.i149)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.addr.i150)
  %68 = ptrtoint ptr %type.addr.i149 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 6, ptr %type.addr.i149, align 4
  %69 = ptrtoint ptr %sz.addr.i150 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 12, ptr %sz.addr.i150, align 4
  call fastcc void @rd_write(ptr noundef %rd, ptr noundef nonnull %type.addr.i149, i32 noundef 4) #8
  call fastcc void @rd_write(ptr noundef %rd, ptr noundef nonnull %sz.addr.i150, i32 noundef 4) #8
  call fastcc void @rd_write(ptr noundef %rd, ptr noundef nonnull %.compoundliteral, i32 noundef 12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.addr.i149)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.addr.i150)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %for.body62.sw.epilog_crit_edge
  %inc77 = add nuw i32 %i.2158, 1
  %70 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_cmds, align 4
  %cmp61 = icmp ult i32 %inc77, %71
  br i1 %cmp61, label %sw.epilog.for.body62_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog.for.body62_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %for.cond59.preheader.cleanup_crit_edge, %for.cond46.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snapshot_buf(ptr noundef %rd, ptr nocapture noundef readonly %submit, i32 noundef %idx, i64 noundef %iova, i32 noundef %size, i1 noundef zeroext %full) unnamed_addr #0 align 64 {
entry:
  %type.addr.i49 = alloca i32, align 4
  %sz.addr.i50 = alloca i32, align 4
  %type.addr.i = alloca i32, align 4
  %sz.addr.i = alloca i32, align 4
  %.compoundliteral = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %idx
  %0 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %idx, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %iova)
  %tobool.not = icmp eq i64 %iova, 0
  %iova6 = getelementptr %struct.msm_gem_submit, ptr %submit, i32 0, i32 22, i32 %idx, i32 2
  %3 = ptrtoint ptr %iova6 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %iova6, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i64 %iova, %4
  %conv = trunc i64 %sub to i32
  %extract.t59 = trunc i64 %iova to i32
  %extract62 = lshr i64 %iova, 32
  %extract.t63 = trunc i64 %extract62 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %size7 = getelementptr inbounds %struct.drm_gem_object, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size7, align 8
  %extract.t58 = trunc i64 %4 to i32
  %extract60 = lshr i64 %4, 32
  %extract.t61 = trunc i64 %extract60 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink57.off0 = phi i32 [ %extract.t58, %if.else ], [ %extract.t59, %if.then ]
  %.sink57.off32 = phi i32 [ %extract.t61, %if.else ], [ %extract.t63, %if.then ]
  %size.addr.0 = phi i32 [ %6, %if.else ], [ %size, %if.then ]
  %offset.0 = phi i32 [ 0, %if.else ], [ %conv, %if.then ]
  %7 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink57.off0, ptr %.compoundliteral, align 4
  %arrayinit.element = getelementptr inbounds i32, ptr %.compoundliteral, i32 1
  %8 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %size.addr.0, ptr %arrayinit.element, align 4
  %arrayinit.element9 = getelementptr inbounds i32, ptr %.compoundliteral, i32 2
  %9 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink57.off32, ptr %arrayinit.element9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.addr.i)
  %10 = ptrtoint ptr %type.addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %type.addr.i, align 4
  %11 = ptrtoint ptr %sz.addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12, ptr %sz.addr.i, align 4
  call fastcc void @rd_write(ptr noundef %rd, ptr noundef nonnull %type.addr.i, i32 noundef 4) #8
  call fastcc void @rd_write(ptr noundef %rd, ptr noundef nonnull %sz.addr.i, i32 noundef 4) #8
  call fastcc void @rd_write(ptr noundef %rd, ptr noundef nonnull %.compoundliteral, i32 noundef 12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.addr.i)
  br i1 %full, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 8
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %2, i32 0, i32 9
  %14 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resv.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %15, ptr noundef null) #8
  %call = tail call ptr @msm_gem_get_vaddr_active(ptr noundef %2) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end18.out_unlock_crit_edge, label %if.end23

if.end18.out_unlock_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %call, i32 %offset.0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.addr.i49)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.addr.i50)
  %16 = ptrtoint ptr %type.addr.i49 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 12, ptr %type.addr.i49, align 4
  %17 = ptrtoint ptr %sz.addr.i50 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %size.addr.0, ptr %sz.addr.i50, align 4
  call fastcc void @rd_write(ptr noundef %rd, ptr noundef nonnull %type.addr.i49, i32 noundef 4) #8
  call fastcc void @rd_write(ptr noundef %rd, ptr noundef nonnull %sz.addr.i50, i32 noundef 4) #8
  tail call fastcc void @rd_write(ptr noundef %rd, ptr noundef %add.ptr, i32 noundef %size.addr.0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.addr.i49)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.addr.i50)
  tail call void @msm_gem_put_vaddr_locked(ptr noundef %2) #8
  br label %out_unlock

out_unlock:                                       ; preds = %if.end23, %if.end18.out_unlock_crit_edge
  %18 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %19) #8
  tail call void @ww_mutex_unlock(ptr noundef %19) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rd_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %sz, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fifo1 = getelementptr inbounds %struct.msm_rd_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifo1, align 4
  %tail = getelementptr inbounds %struct.msm_rd_state, ptr %1, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 %5
  %read_lock = getelementptr inbounds %struct.msm_rd_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %read_lock, i32 noundef 0) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 148) #8
  %head = getelementptr inbounds %struct.msm_rd_state, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  %sub = sub i32 %7, %9
  %and = and i32 %sub, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %fifo_event = getelementptr inbounds %struct.msm_rd_state, ptr %1, i32 0, i32 4
  %call125 = call i32 @prepare_to_wait_event(ptr noundef %fifo_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %11 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %head, align 4
  %13 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tail, align 4
  %sub14126 = sub i32 %12, %14
  %and15127 = and i32 %sub14126, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15127)
  %cmp16.not128 = icmp eq i32 %and15127, 0
  br i1 %cmp16.not128, label %if.then.if.end_crit_edge, label %if.then.if.end21.thread115_crit_edge

if.then.if.end21.thread115_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.thread115

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call129 = phi i32 [ %call, %cleanup.if.end_crit_edge ], [ %call125, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool.not = icmp eq i32 %call129, 0
  br i1 %tobool.not, label %cleanup, label %if.end21

cleanup:                                          ; preds = %if.end
  call void @schedule() #8
  %call = call i32 @prepare_to_wait_event(ptr noundef %fifo_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %15 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %head, align 4
  %17 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tail, align 4
  %sub14 = sub i32 %16, %18
  %and15 = and i32 %sub14, 511
  %cmp16.not = icmp eq i32 %and15, 0
  br i1 %cmp16.not, label %cleanup.if.end_crit_edge, label %cleanup.if.end21.thread115_crit_edge

cleanup.if.end21.thread115_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.thread115

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end21.thread115:                               ; preds = %cleanup.if.end21.thread115_crit_edge, %if.then.if.end21.thread115_crit_edge
  call void @finish_wait(ptr noundef %fifo_event, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end25

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %out.thread

if.end25:                                         ; preds = %if.end21.thread115, %entry.if.end25_crit_edge
  %19 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail, align 4
  %sub28 = sub i32 512, %20
  %21 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %head, align 4
  %add = add i32 %22, %sub28
  %and32 = and i32 %add, 511
  %23 = call i32 @llvm.smin.i32(i32 %and32, i32 %sub28)
  %24 = call i32 @llvm.smin.i32(i32 %23, i32 %sz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9.i.i = icmp slt i32 %24, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end25
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.out.thread_crit_edge, label %if.then27.i.i, !prof !51

land.rhs16.i.i.out.thread_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %out.thread

if.then.i.i.i:                                    ; preds = %if.end25
  call void @__check_object_size(ptr noundef %arrayidx, i32 noundef %24, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %25 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %24, i32 -1226833920) #12, !srcloc !55
  %asmresult.i.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef %24) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef %24) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %24, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %24, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool42.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool42.not, label %26, label %copy_to_user.exit.out.thread_crit_edge

copy_to_user.exit.out.thread_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

26:                                               ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  %27 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tail, align 4
  %add59 = add i32 %28, %24
  %and60 = and i32 %add59, 511
  store volatile i32 %and60, ptr %tail, align 4
  %conv133 = zext i32 %24 to i64
  %29 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ppos, align 8
  %add70 = add i64 %30, %conv133
  store i64 %add70, ptr %ppos, align 8
  %fifo_event71 = getelementptr inbounds %struct.msm_rd_state, ptr %1, i32 0, i32 4
  call void @__wake_up(ptr noundef %fifo_event71, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %out.thread

out.thread:                                       ; preds = %26, %copy_to_user.exit.out.thread_crit_edge, %if.then27.i.i, %land.rhs16.i.i.out.thread_crit_edge, %if.end21
  %31 = phi i32 [ %24, %26 ], [ -14, %copy_to_user.exit.out.thread_crit_edge ], [ %call129, %if.end21 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %read_lock) #8
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rd_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  %type.addr.i = alloca i32, align 4
  %sz.addr.i = alloca i32, align 4
  %val = alloca i64, align 8
  %gpu_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %gpu2 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %gpu2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpu2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %val, align 8, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpu_id) #8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.msm_gpu, ptr %7, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %open = getelementptr inbounds %struct.msm_rd_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %open, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %private_data, align 4
  %12 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %open, align 4
  %funcs = getelementptr inbounds %struct.msm_gpu, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call = call i32 %16(ptr noundef nonnull %7, i32 noundef 1, ptr noundef nonnull %val) #8
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %val, align 8
  %conv = trunc i64 %18 to i32
  %19 = ptrtoint ptr %gpu_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %gpu_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.addr.i)
  %20 = ptrtoint ptr %type.addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 13, ptr %type.addr.i, align 4
  %21 = ptrtoint ptr %sz.addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %sz.addr.i, align 4
  call fastcc void @rd_write(ptr noundef %1, ptr noundef nonnull %type.addr.i, i32 noundef 4) #8
  call fastcc void @rd_write(ptr noundef %1, ptr noundef nonnull %sz.addr.i, i32 noundef 4) #8
  call fastcc void @rd_write(ptr noundef %1, ptr noundef nonnull %gpu_id, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.addr.i)
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end5 ], [ -16, %if.end.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpu_id) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rd_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %open = getelementptr inbounds %struct.msm_rd_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %open, align 4
  %fifo_event = getelementptr inbounds %struct.msm_rd_state, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %fifo_event, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rd_write(ptr noundef %rd, ptr nocapture noundef readonly %buf, i32 noundef %sz) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo1 = getelementptr inbounds %struct.msm_rd_state, ptr %rd, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz)
  %cmp121 = icmp sgt i32 %sz, 0
  br i1 %cmp121, label %while.body.lr.ph, label %entry.cleanup79_crit_edge

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup79

while.body.lr.ph:                                 ; preds = %entry
  %head = getelementptr inbounds %struct.msm_rd_state, ptr %rd, i32 0, i32 5, i32 1
  %tail = getelementptr inbounds %struct.msm_rd_state, ptr %rd, i32 0, i32 5, i32 2
  %open = getelementptr inbounds %struct.msm_rd_state, ptr %rd, i32 0, i32 1
  %fifo_event = getelementptr inbounds %struct.msm_rd_state, ptr %rd, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup75.while.body_crit_edge, %while.body.lr.ph
  %sz.addr.0123 = phi i32 [ %sz, %while.body.lr.ph ], [ %sub73, %cleanup75.while.body_crit_edge ]
  %ptr.0122 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup75.while.body_crit_edge ]
  %0 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo1, align 4
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %3
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 110) #8
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail, align 4
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  %add.neg = xor i32 %7, -1
  %sub = add i32 %5, %add.neg
  %and = and i32 %sub, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp10.not = icmp eq i32 %and, 0
  br i1 %cmp10.not, label %lor.lhs.false, label %while.body.do.end26_crit_edge

while.body.do.end26_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

lor.lhs.false:                                    ; preds = %while.body
  %8 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %open, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup79_crit_edge, label %if.end

lor.lhs.false.cleanup79_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup79

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call115 = call i32 @prepare_to_wait_event(ptr noundef %fifo_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %11 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail, align 4
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %head, align 4
  %add15.neg116 = xor i32 %14, -1
  %sub16117 = add i32 %12, %add15.neg116
  %and17118 = and i32 %sub16117, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17118)
  %cmp18.not119 = icmp eq i32 %and17118, 0
  br i1 %cmp18.not119, label %if.end.lor.lhs.false19_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.lor.lhs.false19_crit_edge:                 ; preds = %if.end
  br label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %cleanup.lor.lhs.false19_crit_edge, %if.end.lor.lhs.false19_crit_edge
  %15 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %open, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool21.not = icmp eq i8 %16, 0
  br i1 %tobool21.not, label %lor.lhs.false19.for.end_crit_edge, label %cleanup

lor.lhs.false19.for.end_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false19
  call void @schedule() #8
  %call = call i32 @prepare_to_wait_event(ptr noundef %fifo_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %17 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tail, align 4
  %19 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %head, align 4
  %add15.neg = xor i32 %20, -1
  %sub16 = add i32 %18, %add15.neg
  %and17 = and i32 %sub16, 511
  %cmp18.not = icmp eq i32 %and17, 0
  br i1 %cmp18.not, label %cleanup.lor.lhs.false19_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.lor.lhs.false19_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false19

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false19.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %fifo_event, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %do.end26

do.end26:                                         ; preds = %for.end, %while.body.do.end26_crit_edge
  %21 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr = load i8, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool28.not = icmp eq i8 %.pr, 0
  br i1 %tobool28.not, label %do.end26.cleanup79_crit_edge, label %cleanup75

do.end26.cleanup79_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup79

cleanup75:                                        ; preds = %do.end26
  %22 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %head, align 4
  %sub33 = sub i32 511, %23
  %24 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tail, align 4
  %add37 = add i32 %sub33, %25
  %and38 = and i32 %add37, 511
  call void @__sanitizer_cov_trace_cmp4(i32 %and38, i32 %sub33)
  %cmp40.not = icmp sgt i32 %and38, %sub33
  %add41 = sub i32 512, %23
  %cond = select i1 %cmp40.not, i32 %add41, i32 %and38
  %26 = call i32 @llvm.smin.i32(i32 %sz.addr.0123, i32 %cond)
  %27 = call ptr @memcpy(ptr %arrayidx, ptr %ptr.0122, i32 %26)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  %28 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %head, align 4
  %add62 = add i32 %26, %29
  %and63 = and i32 %add62, 511
  store volatile i32 %and63, ptr %head, align 4
  %sub73 = sub i32 %sz.addr.0123, %26
  %add.ptr = getelementptr i8, ptr %ptr.0122, i32 %26
  call void @__wake_up(ptr noundef %fifo_event, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  %cmp = icmp sgt i32 %sub73, 0
  br i1 %cmp, label %cleanup75.while.body_crit_edge, label %cleanup75.cleanup79_crit_edge

cleanup75.cleanup79_crit_edge:                    ; preds = %cleanup75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup79

cleanup75.while.body_crit_edge:                   ; preds = %cleanup75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup79:                                        ; preds = %cleanup75.cleanup79_crit_edge, %do.end26.cleanup79_crit_edge, %lor.lhs.false.cleanup79_crit_edge, %entry.cleanup79_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !20, !21, !23, !24, !26, !28, !29, !31, !33, !35, !36, !37, !39}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @rd_full, !1, !"rd_full", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/msm_rd.c", i32 44, i32 6}
!2 = !{ptr @__UNIQUE_ID_rd_full338, !3, !"__UNIQUE_ID_rd_full338", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/msm_rd.c", i32 45, i32 1}
!4 = !{ptr @__param_rd_full, !5, !"__param_rd_full", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/msm_rd.c", i32 46, i32 1}
!6 = !{ptr @__UNIQUE_ID_rd_fulltype339, !5, !"__UNIQUE_ID_rd_fulltype339", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/msm_rd.c", i32 270, i32 22}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/msm_rd.c", i32 278, i32 22}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/msm_rd.c", i32 360, i32 2}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/msm_rd.c", i32 375, i32 35}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/msm_rd.c", i32 379, i32 35}
!17 = !{ptr @__param_str_rd_full, !5, !"__param_str_rd_full", i1 false, i1 false}
!18 = !{ptr @rd_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/msm_rd.c", i32 250, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rd_init.__key.6, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/msm_rd.c", i32 252, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rd_debugfs_fops, !25, !"rd_debugfs_fops", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/msm_rd.c", i32 221, i32 37}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{!"sp"}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i8 0, i8 2}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!"auto-init"}
!53 = !{i64 2149484957}
!54 = !{i64 2149485223}
!55 = !{i64 2152185671, i64 2152185696}
!56 = !{i64 2157243677}
!57 = !{i64 2157234066}
