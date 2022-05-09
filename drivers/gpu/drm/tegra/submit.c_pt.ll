; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/submit.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/submit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.host1x_bo_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.gather_bo = type { %struct.host1x_bo, %struct.kref, ptr, ptr, i32, i32 }
%struct.host1x_bo = type { ptr, %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.host1x_bo_mapping = type { %struct.kref, ptr, i32, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.tegra_drm_file = type { %struct.idr, %struct.mutex, %struct.xarray, %struct.xarray }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
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
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_tegra_channel_submit = type { i32, i32, i32, i32, i64, i64, i64, i32, i32, %struct.drm_tegra_submit_syncpt }
%struct.drm_tegra_submit_syncpt = type { i32, i32, i32, i32 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.dma_fence = type { ptr, ptr, %union.anon.88, i64, i64, i32, %struct.kref, i32 }
%union.anon.88 = type { i64 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.anon.87 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.93 = type { i32, ptr }
%struct.tegra_drm_context = type { ptr, ptr, i32, %struct.xarray }
%struct.drm_tegra_submit_buf = type { i32, i32, %struct.anon.97 }
%struct.anon.97 = type { i64, i32, i32 }
%struct.tegra_drm_mapping = type { %struct.kref, ptr, ptr, i32, i32 }
%struct.tegra_drm_used_mapping = type { ptr, i32 }
%struct.tegra_drm_submit_data = type { ptr, i32 }
%struct.host1x_job = type { %struct.kref, %struct.list_head, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, i8 }
%struct.drm_tegra_submit_cmd = type { i32, i32, %union.anon.98 }
%union.anon.98 = type { %struct.drm_tegra_submit_cmd_gather_uptr }
%struct.drm_tegra_submit_cmd_gather_uptr = type { i32, [3 x i32] }
%struct.drm_tegra_submit_cmd_wait_syncpt = type { i32, i32, [2 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@gather_bo_ops = dso_local constant { %struct.host1x_bo_ops, [40 x i8] } { %struct.host1x_bo_ops { ptr @gather_bo_get, ptr @gather_bo_put, ptr @gather_bo_pin, ptr @gather_bo_unpin, ptr @gather_bo_mmap, ptr @gather_bo_munmap }, [40 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tegra_drm_ioctl_channel_submit = private unnamed_addr constant [31 x i8] c"tegra_drm_ioctl_channel_submit\00", align 1
@tegra_drm_ioctl_channel_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.tegra_drm_ioctl_channel_submit, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: %s: invalid channel context '%#x'\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/tegra/submit.c\00", [33 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry_ptr = internal global ptr @tegra_drm_ioctl_channel_submit._entry, section ".printk_index", align 4
@tegra_drm_ioctl_channel_submit._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tegra_drm_ioctl_channel_submit, ptr @.str.2, i32 539, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: job submission failed: invalid syncobj_in '%#x'\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry_ptr.8 = internal global ptr @tegra_drm_ioctl_channel_submit._entry.4, section ".printk_index", align 4
@tegra_drm_ioctl_channel_submit._rs.9 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.tegra_drm_ioctl_channel_submit, ptr @.str.2, i32 546, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: job submission failed: wait for syncobj_in timed out\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry_ptr.12 = internal global ptr @tegra_drm_ioctl_channel_submit._entry.10, section ".printk_index", align 4
@tegra_drm_ioctl_channel_submit._rs.13 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.tegra_drm_ioctl_channel_submit, ptr @.str.2, i32 554, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: job submission failed: invalid syncobj_out '%#x'\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry_ptr.16 = internal global ptr @tegra_drm_ioctl_channel_submit._entry.14, section ".printk_index", align 4
@tegra_drm_ioctl_channel_submit._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.tegra_drm_ioctl_channel_submit, ptr @.str.2, i32 567, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: job submission failed: failed to allocate memory for job data\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry_ptr.20 = internal global ptr @tegra_drm_ioctl_channel_submit._entry.18, section ".printk_index", align 4
@tegra_drm_ioctl_channel_submit._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.tegra_drm_ioctl_channel_submit, ptr @.str.2, i32 587, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: job submission failed: failed to pin job: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry_ptr.24 = internal global ptr @tegra_drm_ioctl_channel_submit._entry.22, section ".printk_index", align 4
@tegra_drm_ioctl_channel_submit._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.tegra_drm_ioctl_channel_submit, ptr @.str.2, i32 594, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: job submission failed: could not power up engine: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry_ptr.28 = internal global ptr @tegra_drm_ioctl_channel_submit._entry.26, section ".printk_index", align 4
@tegra_drm_ioctl_channel_submit._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.tegra_drm_ioctl_channel_submit, ptr @.str.2, i32 611, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: job submission failed: host1x job submission failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry_ptr.32 = internal global ptr @tegra_drm_ioctl_channel_submit._entry.30, section ".printk_index", align 4
@tegra_drm_ioctl_channel_submit._rs.33 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.tegra_drm_ioctl_channel_submit, ptr @.str.2, i32 622, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: job submission failed: failed to create postfence: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_drm_ioctl_channel_submit._entry_ptr.36 = internal global ptr @tegra_drm_ioctl_channel_submit._entry.34, section ".printk_index", align 4
@submit_copy_gather_data._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.submit_copy_gather_data = private unnamed_addr constant [24 x i8] c"submit_copy_gather_data\00", align 1
@submit_copy_gather_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @__func__.submit_copy_gather_data, ptr @.str.2, i32 192, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: job submission failed: gather_data_words cannot be zero\0A\00", [35 x i8] zeroinitializer }, align 32
@submit_copy_gather_data._entry_ptr = internal global ptr @submit_copy_gather_data._entry, section ".printk_index", align 4
@submit_copy_gather_data._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_copy_gather_data._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.submit_copy_gather_data, ptr @.str.2, i32 197, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: job submission failed: gather_data_words is too large\0A\00", [37 x i8] zeroinitializer }, align 32
@submit_copy_gather_data._entry_ptr.41 = internal global ptr @submit_copy_gather_data._entry.39, section ".printk_index", align 4
@submit_copy_gather_data._rs.42 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_copy_gather_data._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.submit_copy_gather_data, ptr @.str.2, i32 203, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: job submission failed: failed to allocate memory for bo info\0A\00", [62 x i8] zeroinitializer }, align 32
@submit_copy_gather_data._entry_ptr.45 = internal global ptr @submit_copy_gather_data._entry.43, section ".printk_index", align 4
@submit_copy_gather_data._rs.46 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_copy_gather_data._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @__func__.submit_copy_gather_data, ptr @.str.2, i32 214, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s: job submission failed: failed to allocate memory for gather data\0A\00", [58 x i8] zeroinitializer }, align 32
@submit_copy_gather_data._entry_ptr.49 = internal global ptr @submit_copy_gather_data._entry.47, section ".printk_index", align 4
@submit_copy_gather_data._rs.50 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_copy_gather_data._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @__func__.submit_copy_gather_data, ptr @.str.2, i32 220, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s: job submission failed: failed to copy gather data from userspace\0A\00", [58 x i8] zeroinitializer }, align 32
@submit_copy_gather_data._entry_ptr.53 = internal global ptr @submit_copy_gather_data._entry.51, section ".printk_index", align 4
@host1x_bo_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&bo->lock\00", [22 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@submit_process_bufs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.submit_process_bufs = private unnamed_addr constant [20 x i8] c"submit_process_bufs\00", align 1
@submit_process_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @__func__.submit_process_bufs, ptr @.str.2, i32 274, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: job submission failed: failed to copy bufs array from userspace\0A\00", [59 x i8] zeroinitializer }, align 32
@submit_process_bufs._entry_ptr = internal global ptr @submit_process_bufs._entry, section ".printk_index", align 4
@submit_process_bufs._rs.59 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_process_bufs._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.submit_process_bufs, ptr @.str.2, i32 280, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: job submission failed: failed to allocate memory for mapping info\0A\00", [57 x i8] zeroinitializer }, align 32
@submit_process_bufs._entry_ptr.62 = internal global ptr @submit_process_bufs._entry.60, section ".printk_index", align 4
@submit_process_bufs._rs.63 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_process_bufs._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @__func__.submit_process_bufs, ptr @.str.2, i32 290, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: job submission failed: invalid flag specified for buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@submit_process_bufs._entry_ptr.66 = internal global ptr @submit_process_bufs._entry.64, section ".printk_index", align 4
@submit_process_bufs._rs.67 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_process_bufs._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @__func__.submit_process_bufs, ptr @.str.2, i32 297, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: job submission failed: invalid mapping ID '%u' for buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@submit_process_bufs._entry_ptr.70 = internal global ptr @submit_process_bufs._entry.68, section ".printk_index", align 4
@submit_write_reloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.submit_write_reloc = private unnamed_addr constant [19 x i8] c"submit_write_reloc\00", align 1
@submit_write_reloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @__func__.submit_write_reloc, ptr @.str.2, i32 250, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"%s: job submission failed: relocation has too large gather offset (%u vs gather length %zu)\0A\00", [35 x i8] zeroinitializer }, align 32
@submit_write_reloc._entry_ptr = internal global ptr @submit_write_reloc._entry, section ".printk_index", align 4
@submit_create_job._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.submit_create_job = private unnamed_addr constant [18 x i8] c"submit_create_job\00", align 1
@submit_create_job._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @__func__.submit_create_job, ptr @.str.2, i32 413, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: job submission failed: failed to copy cmds array from userspace\0A\00", [59 x i8] zeroinitializer }, align 32
@submit_create_job._entry_ptr = internal global ptr @submit_create_job._entry, section ".printk_index", align 4
@submit_create_job._rs.73 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_create_job._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @__func__.submit_create_job, ptr @.str.2, i32 419, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: job submission failed: failed to allocate memory for job\0A\00", [34 x i8] zeroinitializer }, align 32
@submit_create_job._entry_ptr.76 = internal global ptr @submit_create_job._entry.74, section ".printk_index", align 4
@submit_create_job._rs.77 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_create_job._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @__func__.submit_create_job, ptr @.str.2, i32 436, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: job submission failed: unknown flags given for cmd\0A\00", [40 x i8] zeroinitializer }, align 32
@submit_create_job._entry_ptr.80 = internal global ptr @submit_create_job._entry.78, section ".printk_index", align 4
@submit_create_job._rs.81 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_create_job._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @__func__.submit_create_job, ptr @.str.2, i32 448, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: job submission failed: non-zero reserved value\0A\00", [44 x i8] zeroinitializer }, align 32
@submit_create_job._entry_ptr.84 = internal global ptr @submit_create_job._entry.82, section ".printk_index", align 4
@submit_create_job._rs.85 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_create_job._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @__func__.submit_create_job, ptr @.str.2, i32 457, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@submit_create_job._entry_ptr.87 = internal global ptr @submit_create_job._entry.86, section ".printk_index", align 4
@submit_create_job._rs.88 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_create_job._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @__func__.submit_create_job, ptr @.str.2, i32 463, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"%s: job submission failed: syncpoint ID in CMD_WAIT_SYNCPT_RELATIVE is not used by the job\0A\00", [36 x i8] zeroinitializer }, align 32
@submit_create_job._entry_ptr.91 = internal global ptr @submit_create_job._entry.89, section ".printk_index", align 4
@submit_create_job._rs.92 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_create_job._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @__func__.submit_create_job, ptr @.str.2, i32 471, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: job submission failed: unknown cmd type\0A\00", [51 x i8] zeroinitializer }, align 32
@submit_create_job._entry_ptr.95 = internal global ptr @submit_create_job._entry.93, section ".printk_index", align 4
@submit_create_job._rs.96 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_create_job._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @__func__.submit_create_job, ptr @.str.2, i32 478, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: job submission failed: job must have at least one gather\0A\00", [34 x i8] zeroinitializer }, align 32
@submit_create_job._entry_ptr.99 = internal global ptr @submit_create_job._entry.97, section ".printk_index", align 4
@submit_get_syncpt._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.submit_get_syncpt = private unnamed_addr constant [18 x i8] c"submit_get_syncpt\00", align 1
@submit_get_syncpt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @__func__.submit_get_syncpt, ptr @.str.2, i32 338, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: job submission failed: invalid flag specified for syncpt\0A\00", [34 x i8] zeroinitializer }, align 32
@submit_get_syncpt._entry_ptr = internal global ptr @submit_get_syncpt._entry, section ".printk_index", align 4
@submit_get_syncpt._rs.101 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_get_syncpt._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @__func__.submit_get_syncpt, ptr @.str.2, i32 345, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s: job submission failed: syncpoint specified in syncpt was not allocated\0A\00", [52 x i8] zeroinitializer }, align 32
@submit_get_syncpt._entry_ptr.104 = internal global ptr @submit_get_syncpt._entry.102, section ".printk_index", align 4
@submit_job_add_gather._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.submit_job_add_gather = private unnamed_addr constant [22 x i8] c"submit_job_add_gather\00", align 1
@submit_job_add_gather._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @__func__.submit_job_add_gather, ptr @.str.2, i32 364, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s: job submission failed: non-zero reserved field in GATHER_UPTR command\0A\00", [53 x i8] zeroinitializer }, align 32
@submit_job_add_gather._entry_ptr = internal global ptr @submit_job_add_gather._entry, section ".printk_index", align 4
@submit_job_add_gather._rs.106 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_job_add_gather._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @__func__.submit_job_add_gather, ptr @.str.2, i32 370, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: job submission failed: too many words in GATHER_UPTR command\0A\00", [62 x i8] zeroinitializer }, align 32
@submit_job_add_gather._entry_ptr.109 = internal global ptr @submit_job_add_gather._entry.107, section ".printk_index", align 4
@submit_job_add_gather._rs.110 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_job_add_gather._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @__func__.submit_job_add_gather, ptr @.str.2, i32 375, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: job submission failed: too many total words in job\0A\00", [40 x i8] zeroinitializer }, align 32
@submit_job_add_gather._entry_ptr.113 = internal global ptr @submit_job_add_gather._entry.111, section ".printk_index", align 4
@submit_job_add_gather._rs.114 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_job_add_gather._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @__func__.submit_job_add_gather, ptr @.str.2, i32 380, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s: job submission failed: GATHER_UPTR command overflows gather data\0A\00", [58 x i8] zeroinitializer }, align 32
@submit_job_add_gather._entry_ptr.117 = internal global ptr @submit_job_add_gather._entry.115, section ".printk_index", align 4
@submit_job_add_gather._rs.118 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@submit_job_add_gather._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @__func__.submit_job_add_gather, ptr @.str.2, i32 386, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: job submission failed: job was rejected by firewall\0A\00", [39 x i8] zeroinitializer }, align 32
@submit_job_add_gather._entry_ptr.121 = internal global ptr @submit_job_add_gather._entry.119, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"gather_bo_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 136, i32 28 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 529, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 539, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 546, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 554, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 567, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 587, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 594, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 611, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 622, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 192, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 197, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 203, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 214, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 220, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [26 x i8] c"../include/linux/host1x.h\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 154, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 230, i32 6 }
@___asan_gen_.273 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 214, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 156, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 274, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 280, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 290, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 297, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 248, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 413, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 419, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 436, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 448, i32 5 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 457, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 463, i32 5 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 471, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 478, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 338, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 345, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 364, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 370, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 375, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 380, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.449 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.452 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.453 = private constant [34 x i8] c"../drivers/gpu/drm/tegra/submit.c\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 386, i32 3 }
@llvm.compiler.used = appending global [145 x ptr] [ptr @submit_copy_gather_data._entry, ptr @submit_copy_gather_data._entry.39, ptr @submit_copy_gather_data._entry.43, ptr @submit_copy_gather_data._entry.47, ptr @submit_copy_gather_data._entry.51, ptr @submit_copy_gather_data._entry_ptr, ptr @submit_copy_gather_data._entry_ptr.41, ptr @submit_copy_gather_data._entry_ptr.45, ptr @submit_copy_gather_data._entry_ptr.49, ptr @submit_copy_gather_data._entry_ptr.53, ptr @submit_create_job._entry, ptr @submit_create_job._entry.74, ptr @submit_create_job._entry.78, ptr @submit_create_job._entry.82, ptr @submit_create_job._entry.86, ptr @submit_create_job._entry.89, ptr @submit_create_job._entry.93, ptr @submit_create_job._entry.97, ptr @submit_create_job._entry_ptr, ptr @submit_create_job._entry_ptr.76, ptr @submit_create_job._entry_ptr.80, ptr @submit_create_job._entry_ptr.84, ptr @submit_create_job._entry_ptr.87, ptr @submit_create_job._entry_ptr.91, ptr @submit_create_job._entry_ptr.95, ptr @submit_create_job._entry_ptr.99, ptr @submit_get_syncpt._entry, ptr @submit_get_syncpt._entry.102, ptr @submit_get_syncpt._entry_ptr, ptr @submit_get_syncpt._entry_ptr.104, ptr @submit_job_add_gather._entry, ptr @submit_job_add_gather._entry.107, ptr @submit_job_add_gather._entry.111, ptr @submit_job_add_gather._entry.115, ptr @submit_job_add_gather._entry.119, ptr @submit_job_add_gather._entry_ptr, ptr @submit_job_add_gather._entry_ptr.109, ptr @submit_job_add_gather._entry_ptr.113, ptr @submit_job_add_gather._entry_ptr.117, ptr @submit_job_add_gather._entry_ptr.121, ptr @submit_process_bufs._entry, ptr @submit_process_bufs._entry.60, ptr @submit_process_bufs._entry.64, ptr @submit_process_bufs._entry.68, ptr @submit_process_bufs._entry_ptr, ptr @submit_process_bufs._entry_ptr.62, ptr @submit_process_bufs._entry_ptr.66, ptr @submit_process_bufs._entry_ptr.70, ptr @submit_write_reloc._entry, ptr @submit_write_reloc._entry_ptr, ptr @tegra_drm_ioctl_channel_submit._entry, ptr @tegra_drm_ioctl_channel_submit._entry.10, ptr @tegra_drm_ioctl_channel_submit._entry.14, ptr @tegra_drm_ioctl_channel_submit._entry.18, ptr @tegra_drm_ioctl_channel_submit._entry.22, ptr @tegra_drm_ioctl_channel_submit._entry.26, ptr @tegra_drm_ioctl_channel_submit._entry.30, ptr @tegra_drm_ioctl_channel_submit._entry.34, ptr @tegra_drm_ioctl_channel_submit._entry.4, ptr @tegra_drm_ioctl_channel_submit._entry_ptr, ptr @tegra_drm_ioctl_channel_submit._entry_ptr.12, ptr @tegra_drm_ioctl_channel_submit._entry_ptr.16, ptr @tegra_drm_ioctl_channel_submit._entry_ptr.20, ptr @tegra_drm_ioctl_channel_submit._entry_ptr.24, ptr @tegra_drm_ioctl_channel_submit._entry_ptr.28, ptr @tegra_drm_ioctl_channel_submit._entry_ptr.32, ptr @tegra_drm_ioctl_channel_submit._entry_ptr.36, ptr @tegra_drm_ioctl_channel_submit._entry_ptr.8, ptr @gather_bo_ops, ptr @tegra_drm_ioctl_channel_submit._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tegra_drm_ioctl_channel_submit._rs.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tegra_drm_ioctl_channel_submit._rs.9, ptr @.str.11, ptr @tegra_drm_ioctl_channel_submit._rs.13, ptr @.str.15, ptr @tegra_drm_ioctl_channel_submit._rs.17, ptr @.str.19, ptr @tegra_drm_ioctl_channel_submit._rs.21, ptr @.str.23, ptr @tegra_drm_ioctl_channel_submit._rs.25, ptr @.str.27, ptr @tegra_drm_ioctl_channel_submit._rs.29, ptr @.str.31, ptr @tegra_drm_ioctl_channel_submit._rs.33, ptr @.str.35, ptr @submit_copy_gather_data._rs, ptr @.str.37, ptr @submit_copy_gather_data._rs.38, ptr @.str.40, ptr @submit_copy_gather_data._rs.42, ptr @.str.44, ptr @submit_copy_gather_data._rs.46, ptr @.str.48, ptr @submit_copy_gather_data._rs.50, ptr @.str.52, ptr @host1x_bo_init.__key, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @submit_process_bufs._rs, ptr @.str.58, ptr @submit_process_bufs._rs.59, ptr @.str.61, ptr @submit_process_bufs._rs.63, ptr @.str.65, ptr @submit_process_bufs._rs.67, ptr @.str.69, ptr @submit_write_reloc._rs, ptr @.str.71, ptr @submit_create_job._rs, ptr @.str.72, ptr @submit_create_job._rs.73, ptr @.str.75, ptr @submit_create_job._rs.77, ptr @.str.79, ptr @submit_create_job._rs.81, ptr @.str.83, ptr @submit_create_job._rs.85, ptr @submit_create_job._rs.88, ptr @.str.90, ptr @submit_create_job._rs.92, ptr @.str.94, ptr @submit_create_job._rs.96, ptr @.str.98, ptr @submit_get_syncpt._rs, ptr @.str.100, ptr @submit_get_syncpt._rs.101, ptr @.str.103, ptr @submit_job_add_gather._rs, ptr @.str.105, ptr @submit_job_add_gather._rs.106, ptr @.str.108, ptr @submit_job_add_gather._rs.110, ptr @.str.112, ptr @submit_job_add_gather._rs.114, ptr @.str.116, ptr @submit_job_add_gather._rs.118, ptr @.str.120], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gather_bo_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._rs.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._rs.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._rs.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctl_channel_submit._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_copy_gather_data._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_copy_gather_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_copy_gather_data._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_copy_gather_data._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_copy_gather_data._rs.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_copy_gather_data._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_copy_gather_data._rs.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_copy_gather_data._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_copy_gather_data._rs.50 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_copy_gather_data._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_bo_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_process_bufs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_process_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_process_bufs._rs.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_process_bufs._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_process_bufs._rs.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_process_bufs._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_process_bufs._rs.67 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_process_bufs._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_write_reloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_write_reloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._rs.73 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._rs.77 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._rs.81 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._rs.85 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._rs.88 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._rs.92 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._rs.96 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_create_job._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_get_syncpt._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_get_syncpt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_get_syncpt._rs.101 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_get_syncpt._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_job_add_gather._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_job_add_gather._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_job_add_gather._rs.106 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_job_add_gather._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_job_add_gather._rs.110 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_job_add_gather._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_job_add_gather._rs.114 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_job_add_gather._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_job_add_gather._rs.118 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_job_add_gather._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gather_bo_get(ptr noundef returned %host_bo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.gather_bo, ptr %host_bo, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #12, !srcloc !202
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !203

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !204

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #12
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret ptr %host_bo
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gather_bo_put(ptr noundef %host_bo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.gather_bo, ptr %host_bo, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #12, !srcloc !206
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !204

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !207
  %dev.i = getelementptr %struct.gather_bo, ptr %host_bo, i32 0, i32 2
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %gather_data_words.i = getelementptr %struct.gather_bo, ptr %host_bo, i32 0, i32 5
  %3 = ptrtoint ptr %gather_data_words.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gather_data_words.i, align 4
  %mul.i = shl i32 %4, 2
  %gather_data.i = getelementptr %struct.gather_bo, ptr %host_bo, i32 0, i32 3
  %5 = ptrtoint ptr %gather_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gather_data.i, align 4
  %gather_data_dma.i = getelementptr %struct.gather_bo, ptr %host_bo, i32 0, i32 4
  %7 = ptrtoint ptr %gather_data_dma.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gather_data_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %2, i32 noundef %mul.i, ptr noundef %6, i32 noundef %8, i32 noundef 0) #12
  tail call void @kfree(ptr noundef %host_bo) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gather_bo_pin(ptr noundef %dev, ptr noundef %bo, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #12
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call ptr %5(ptr noundef %bo) #12
  %bo3 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %bo3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %bo3, align 4
  %direction4 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %direction4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %direction, ptr %direction4, align 8
  %dev5 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev5, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 12) #15
  %sgt = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i56, ptr %sgt, align 8
  %tobool8.not = icmp eq ptr %call7.i.i56, null
  br i1 %tobool8.not, label %if.end.free_crit_edge, label %if.end10

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %free

if.end10:                                         ; preds = %if.end
  %dev11 = getelementptr inbounds %struct.gather_bo, ptr %bo, i32 0, i32 2
  %11 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev11, align 4
  %gather_data = getelementptr inbounds %struct.gather_bo, ptr %bo, i32 0, i32 3
  %13 = ptrtoint ptr %gather_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gather_data, align 4
  %gather_data_dma = getelementptr inbounds %struct.gather_bo, ptr %bo, i32 0, i32 4
  %15 = ptrtoint ptr %gather_data_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gather_data_dma, align 4
  %gather_data_words = getelementptr inbounds %struct.gather_bo, ptr %bo, i32 0, i32 5
  %17 = ptrtoint ptr %gather_data_words to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gather_data_words, align 4
  %mul = shl i32 %18, 2
  %call13 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %12, ptr noundef nonnull %call7.i.i56, ptr noundef %14, i32 noundef %16, i32 noundef %mul, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.free_sgt_crit_edge

if.end10.free_sgt_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_sgt

if.end16:                                         ; preds = %if.end10
  %19 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sgt, align 8
  %call18 = tail call i32 @dma_map_sgtable(ptr noundef %dev, ptr noundef %20, i32 noundef %direction, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.free_sgt_crit_edge

if.end16.free_sgt_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_sgt

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sgt, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_address, align 4
  %phys = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 8
  %27 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %phys, align 4
  %28 = ptrtoint ptr %gather_data_words to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gather_data_words, align 4
  %mul24 = shl i32 %29, 2
  %size = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 9
  %30 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul24, ptr %size, align 8
  %chunks = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %chunks to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %chunks, align 4
  br label %cleanup

free_sgt:                                         ; preds = %if.end16.free_sgt_crit_edge, %if.end10.free_sgt_crit_edge
  %err.0 = phi i32 [ %call13, %if.end10.free_sgt_crit_edge ], [ %call18, %if.end16.free_sgt_crit_edge ]
  %32 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sgt, align 8
  tail call void @sg_free_table(ptr noundef %33) #12
  %34 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sgt, align 8
  tail call void @kfree(ptr noundef %35) #12
  br label %free

free:                                             ; preds = %free_sgt, %if.end.free_crit_edge
  %err.1 = phi i32 [ %err.0, %free_sgt ], [ -12, %if.end.free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %36 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %36, %free ], [ %call7.i.i, %if.end21 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gather_bo_unpin(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %map, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.host1x_bo_mapping, ptr %map, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %sgt = getelementptr inbounds %struct.host1x_bo_mapping, ptr %map, i32 0, i32 5
  %2 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt, align 4
  %direction = getelementptr inbounds %struct.host1x_bo_mapping, ptr %map, i32 0, i32 2
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %direction, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %1, ptr noundef %7, i32 noundef %9, i32 noundef %5, i32 noundef 0) #12
  %10 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sgt, align 4
  tail call void @sg_free_table(ptr noundef %11) #12
  %12 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sgt, align 4
  tail call void @kfree(ptr noundef %13) #12
  %bo = getelementptr inbounds %struct.host1x_bo_mapping, ptr %map, i32 0, i32 4
  %14 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bo, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %put.i = getelementptr inbounds %struct.host1x_bo_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %put.i, align 4
  tail call void %19(ptr noundef %15) #12
  tail call void @kfree(ptr noundef nonnull %map) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @gather_bo_mmap(ptr nocapture noundef readonly %host_bo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gather_data = getelementptr inbounds %struct.gather_bo, ptr %host_bo, i32 0, i32 3
  %0 = ptrtoint ptr %gather_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gather_data, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gather_bo_munmap(ptr nocapture noundef %host_bo, ptr nocapture noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_channel_submit(ptr nocapture noundef readonly %drm, ptr nocapture noundef %data, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  %class.i = alloca i32, align 4
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %lock = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %contexts = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  %call = tail call ptr @xa_load(ptr noundef %contexts, i32 noundef %3) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.cleanup227_crit_edge, label %do.end

if.then.cleanup227_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup227

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %4 = tail call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit, ptr noundef %comm, i32 noundef %9) #16
  br label %cleanup227

if.end9:                                          ; preds = %entry
  %syncobj_in = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %data, i32 0, i32 7
  %10 = ptrtoint ptr %syncobj_in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %syncobj_in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.end9.if.end54_crit_edge, label %if.then11

if.end9.if.end54_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then11:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #12
  %12 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !208
  %call13 = call i32 @drm_syncobj_find_fence(ptr noundef %file, i32 noundef %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %fence) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end31, label %do.body16

do.body16:                                        ; preds = %if.then11
  %call17 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.3, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body16.cleanup.thread_crit_edge, label %do.end22

do.body16.cleanup.thread_crit_edge:               ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

do.end22:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %dev = getelementptr inbounds %struct.host1x_client, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i307 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i307 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task24, align 8
  %comm25 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %21 = ptrtoint ptr %syncobj_in to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %syncobj_in, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.5, ptr noundef %comm25, i32 noundef %22) #16
  br label %cleanup.thread

if.end31:                                         ; preds = %if.then11
  %23 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fence, align 4
  %call33 = call i32 @dma_fence_wait_timeout(ptr noundef %24, i1 noundef zeroext true, i32 noundef 1000) #12
  %25 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fence, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end31.dma_fence_put.exit_crit_edge, label %if.then.i

if.end31.dma_fence_put.exit_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end31
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %26, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !205
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !206
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !204

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !207
  call void @dma_fence_release(ptr noundef %refcount.i) #12, !callees !209
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end31.dma_fence_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %do.body36

do.body36:                                        ; preds = %dma_fence_put.exit
  %call37 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.9, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.body36.cleanup.thread_crit_edge, label %do.end42

do.body36.cleanup.thread_crit_edge:               ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

do.end42:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call, align 4
  %dev45 = getelementptr inbounds %struct.host1x_client, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev45, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i308 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i308 to ptr
  %task47 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task47, align 8
  %comm48 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.11, ptr noundef %comm48) #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end42, %do.body36.cleanup.thread_crit_edge, %do.end22, %do.body16.cleanup.thread_crit_edge
  %err.0.ph = phi i32 [ %call33, %do.body36.cleanup.thread_crit_edge ], [ %call33, %do.end42 ], [ %call13, %do.body16.cleanup.thread_crit_edge ], [ %call13, %do.end22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #12
  br label %if.end225

cleanup:                                          ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #12
  br label %if.end54

if.end54:                                         ; preds = %cleanup, %if.end9.if.end54_crit_edge
  %syncobj_out = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %data, i32 0, i32 8
  %36 = ptrtoint ptr %syncobj_out to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %syncobj_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool55.not = icmp eq i32 %37, 0
  br i1 %tobool55.not, label %if.end54.if.end80_crit_edge, label %if.then56

if.end54.if.end80_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then56:                                        ; preds = %if.end54
  %call58 = call ptr @drm_syncobj_find(ptr noundef %file, i32 noundef %37) #12
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %do.body61, label %if.then56.if.end80_crit_edge

if.then56.if.end80_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

do.body61:                                        ; preds = %if.then56
  %call62 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.13, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %do.body61.if.end225_crit_edge, label %do.end67

do.body61.if.end225_crit_edge:                    ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end225

do.end67:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call, align 4
  %dev70 = getelementptr inbounds %struct.host1x_client, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev70, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i309 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i309 to ptr
  %task72 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task72 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task72, align 8
  %comm73 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 101
  %46 = ptrtoint ptr %syncobj_out to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %syncobj_out, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.15, ptr noundef %comm73, i32 noundef %47) #16
  br label %if.end225

if.end80:                                         ; preds = %if.then56.if.end80_crit_edge, %if.end54.if.end80_crit_edge
  %syncobj.0 = phi ptr [ %call58, %if.then56.if.end80_crit_edge ], [ null, %if.end54.if.end80_crit_edge ]
  %dev81 = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %48 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev81, align 4
  %gather_data_words.i = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %data, i32 0, i32 3
  %50 = ptrtoint ptr %gather_data_words.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %gather_data_words.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i = icmp eq i32 %51, 0
  br i1 %cmp.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.end80
  %call.i = call i32 @___ratelimit(ptr noundef nonnull @submit_copy_gather_data._rs, ptr noundef nonnull @__func__.submit_copy_gather_data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i310 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i310, label %do.body.i.unlock_crit_edge, label %do.end.i

do.body.i.unlock_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call, align 4
  %dev3.i = getelementptr inbounds %struct.host1x_client, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev3.i, align 4
  %56 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.37, ptr noundef %comm.i) #16
  br label %unlock

if.end7.i:                                        ; preds = %if.end80
  %60 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 4) #12
  %61 = extractvalue { i32, i1 } %60, 1
  %62 = extractvalue { i32, i1 } %60, 0
  br i1 %61, label %do.body15.i, label %if.end32.i

do.body15.i:                                      ; preds = %if.end7.i
  %call16.i = call i32 @___ratelimit(ptr noundef nonnull @submit_copy_gather_data._rs.38, ptr noundef nonnull @__func__.submit_copy_gather_data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %do.body15.i.unlock_crit_edge, label %do.end21.i

do.body15.i.unlock_crit_edge:                     ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

do.end21.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call, align 4
  %dev24.i = getelementptr inbounds %struct.host1x_client, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev24.i, align 4
  %67 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i133.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i133.i to ptr
  %task26.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task26.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task26.i, align 8
  %comm27.i = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.40, ptr noundef %comm27.i) #16
  br label %unlock

if.end32.i:                                       ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3520, i32 noundef 76) #15
  %tobool34.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool34.not.i, label %do.body36.i, label %if.end53.i

do.body36.i:                                      ; preds = %if.end32.i
  %call37.i = call i32 @___ratelimit(ptr noundef nonnull @submit_copy_gather_data._rs.42, ptr noundef nonnull @__func__.submit_copy_gather_data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %do.body36.i.unlock_crit_edge, label %do.end42.i

do.body36.i.unlock_crit_edge:                     ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

do.end42.i:                                       ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call, align 4
  %dev45.i = getelementptr inbounds %struct.host1x_client, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %dev45.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev45.i, align 4
  %76 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i136.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i136.i to ptr
  %task47.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task47.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task47.i, align 8
  %comm48.i = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.44, ptr noundef %comm48.i) #16
  br label %unlock

if.end53.i:                                       ; preds = %if.end32.i
  %mappings.i.i = getelementptr inbounds %struct.host1x_bo, ptr %call7.i.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %mappings.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %mappings.i.i, ptr %mappings.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.host1x_bo, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %mappings.i.i, ptr %prev.i.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.host1x_bo, ptr %call7.i.i.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @host1x_bo_init.__key, i16 noundef signext 3) #12
  %82 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @gather_bo_ops, ptr %call7.i.i.i, align 8
  %ref.i = getelementptr inbounds %struct.gather_bo, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #12
  %83 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 1, ptr %ref.i, align 8
  %dev55.i = getelementptr inbounds %struct.gather_bo, ptr %call7.i.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %dev55.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %49, ptr %dev55.i, align 4
  %gather_data_dma.i = getelementptr inbounds %struct.gather_bo, ptr %call7.i.i.i, i32 0, i32 4
  %call56.i = call ptr @dma_alloc_attrs(ptr noundef %49, i32 noundef %62, ptr noundef %gather_data_dma.i, i32 noundef 11456, i32 noundef 0) #12
  %gather_data.i = getelementptr inbounds %struct.gather_bo, ptr %call7.i.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %gather_data.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call56.i, ptr %gather_data.i, align 8
  %tobool58.not.i = icmp eq ptr %call56.i, null
  br i1 %tobool58.not.i, label %do.body60.i, label %if.end77.i

do.body60.i:                                      ; preds = %if.end53.i
  %call61.i = call i32 @___ratelimit(ptr noundef nonnull @submit_copy_gather_data._rs.46, ptr noundef nonnull @__func__.submit_copy_gather_data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %do.body60.i.do.end76.i_crit_edge, label %do.end66.i

do.body60.i.do.end76.i_crit_edge:                 ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76.i

do.end66.i:                                       ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call, align 4
  %dev69.i = getelementptr inbounds %struct.host1x_client, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %dev69.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev69.i, align 4
  %90 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i137.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i137.i to ptr
  %task71.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task71.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task71.i, align 8
  %comm72.i = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.48, ptr noundef %comm72.i) #16
  br label %do.end76.i

do.end76.i:                                       ; preds = %do.end66.i, %do.body60.i.do.end76.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %unlock

if.end77.i:                                       ; preds = %if.end53.i
  %gather_data_ptr.i = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %data, i32 0, i32 6
  %94 = ptrtoint ptr %gather_data_ptr.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %gather_data_ptr.i, align 8
  %conv83.i = trunc i64 %95 to i32
  %96 = inttoptr i32 %conv83.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp9.i.i.i = icmp slt i32 %62, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end77.i
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.do.body87.i_crit_edge, label %if.then27.i.i.i, !prof !204

land.rhs16.i.i.i.do.body87.i_crit_edge:           ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body87.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %do.body87.i

if.then.i.i.i.i:                                  ; preds = %if.end77.i
  call void @__check_object_size(ptr noundef nonnull %call56.i, i32 noundef %62, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.57, i32 noundef 156) #12
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %97 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %96, i32 %62, i32 -1226833920) #17, !srcloc !210
  %asmresult.i.i.i = extractvalue { i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !204

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call56.i, i32 noundef %62) #12
  %98 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i.i.i.i.i.i.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 4
  %100 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #8, !srcloc !211
  %and.i.i.i.i.i = and i32 %100, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #12, !srcloc !212
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !213
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call56.i, ptr noundef %96, i32 noundef %62) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #12, !srcloc !212
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !213
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %62, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %62, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end85, label %if.then11.i.i.i, !prof !204

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = sub i32 %62, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call56.i, i32 %sub.i.i.i
  %101 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %do.body87.i

do.body87.i:                                      ; preds = %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.do.body87.i_crit_edge
  %call88.i = call i32 @___ratelimit(ptr noundef nonnull @submit_copy_gather_data._rs.50, ptr noundef nonnull @__func__.submit_copy_gather_data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool89.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool89.not.i, label %do.body87.i.do.end103.i_crit_edge, label %do.end93.i

do.body87.i.do.end103.i_crit_edge:                ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end103.i

do.end93.i:                                       ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call, align 4
  %dev96.i = getelementptr inbounds %struct.host1x_client, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %dev96.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev96.i, align 4
  %106 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i138.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i138.i to ptr
  %task98.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %task98.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task98.i, align 8
  %comm99.i = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.52, ptr noundef %comm99.i) #16
  br label %do.end103.i

do.end103.i:                                      ; preds = %do.end93.i, %do.body87.i.do.end103.i_crit_edge
  %110 = ptrtoint ptr %gather_data.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %gather_data.i, align 8
  %112 = ptrtoint ptr %gather_data_dma.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %gather_data_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %49, i32 noundef %62, ptr noundef %111, i32 noundef %113, i32 noundef 0) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %unlock

if.end85:                                         ; preds = %if.end.i.i.i
  %114 = ptrtoint ptr %gather_data_words.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %gather_data_words.i, align 4
  %gather_data_words108.i = getelementptr inbounds %struct.gather_bo, ptr %call7.i.i.i, i32 0, i32 5
  %116 = ptrtoint ptr %gather_data_words108.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %gather_data_words108.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %117 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %117, i32 noundef 3520, i32 noundef 8) #15
  %tobool87.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool87.not, label %do.body89, label %if.end106

do.body89:                                        ; preds = %if.end85
  %call90 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.17, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %do.body89.put_bo_crit_edge, label %do.end95

do.body89.put_bo_crit_edge:                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_bo

do.end95:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call, align 4
  %dev98 = getelementptr inbounds %struct.host1x_client, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev98, align 4
  %122 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i314 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i314 to ptr
  %task100 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %task100 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %task100, align 8
  %comm101 = getelementptr inbounds %struct.task_struct, ptr %125, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.19, ptr noundef %comm101) #16
  br label %put_bo

if.end106:                                        ; preds = %if.end85
  %bufs_ptr.i = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %data, i32 0, i32 4
  %126 = ptrtoint ptr %bufs_ptr.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %bufs_ptr.i, align 8
  %conv2.i = trunc i64 %127 to i32
  %128 = inttoptr i32 %conv2.i to ptr
  %num_bufs.i = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %data, i32 0, i32 1
  %129 = ptrtoint ptr %num_bufs.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_bufs.i, align 4
  %call.i315 = call fastcc ptr @alloc_copy_user_array(ptr noundef %128, i32 noundef %130) #12
  %cmp.i.i = icmp ugt ptr %call.i315, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body.i317, label %if.end11.i

do.body.i317:                                     ; preds = %if.end106
  %call4.i = call i32 @___ratelimit(ptr noundef nonnull @submit_process_bufs._rs, ptr noundef nonnull @__func__.submit_process_bufs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i316 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i316, label %do.body.i317.do.end9.i_crit_edge, label %do.end.i321

do.body.i317.do.end9.i_crit_edge:                 ; preds = %do.body.i317
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

do.end.i321:                                      ; preds = %do.body.i317
  call void @__sanitizer_cov_trace_pc() #14
  %131 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call, align 4
  %dev.i = getelementptr inbounds %struct.host1x_client, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev.i, align 4
  %135 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i.i318 = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i318 to ptr
  %task.i319 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %task.i319 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %task.i319, align 8
  %comm.i320 = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.58, ptr noundef %comm.i320) #16
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i321, %do.body.i317.do.end9.i_crit_edge
  %139 = ptrtoint ptr %call.i315 to i32
  br label %submit_process_bufs.exit

if.end11.i:                                       ; preds = %if.end106
  %140 = ptrtoint ptr %num_bufs.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %num_bufs.i, align 4
  %142 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %141, i32 8) #12
  %143 = extractvalue { i32, i1 } %142, 1
  br i1 %143, label %if.end11.i.do.body16.i_crit_edge, label %if.end7.i.i.i, !prof !203

if.end11.i.do.body16.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i

if.end7.i.i.i:                                    ; preds = %if.end11.i
  %144 = extractvalue { i32, i1 } %142, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %144, i32 noundef 3520) #18
  %tobool14.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool14.not.i, label %if.end7.i.i.i.do.body16.i_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.do.body16.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %145 = ptrtoint ptr %num_bufs.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %num_bufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp35152.not.i = icmp eq i32 %146, 0
  br i1 %cmp35152.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %mappings.i.i325 = getelementptr inbounds %struct.tegra_drm_context, ptr %call, i32 0, i32 3
  br label %for.body.i

do.body16.i:                                      ; preds = %if.end7.i.i.i.do.body16.i_crit_edge, %if.end11.i.do.body16.i_crit_edge
  %call17.i = call i32 @___ratelimit(ptr noundef nonnull @submit_process_bufs._rs.59, ptr noundef nonnull @__func__.submit_process_bufs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %do.body16.i.done.i_crit_edge, label %do.end22.i

do.body16.i.done.i_crit_edge:                     ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

do.end22.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  %147 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %call, align 4
  %dev25.i = getelementptr inbounds %struct.host1x_client, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev25.i, align 4
  %151 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i131.i = and i32 %151, -16384
  %152 = inttoptr i32 %and.i131.i to ptr
  %task27.i = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %task27.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %task27.i, align 8
  %comm28.i = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.61, ptr noundef %comm28.i) #16
  br label %done.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0153.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %flags.i = getelementptr %struct.drm_tegra_submit_buf, ptr %call.i315, i32 %i.0153.i, i32 1
  %155 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %156)
  %tobool37.not.i = icmp ult i32 %156, 2
  br i1 %tobool37.not.i, label %if.end56.i, label %do.body39.i

do.body39.i:                                      ; preds = %for.body.i
  %call40.i = call i32 @___ratelimit(ptr noundef nonnull @submit_process_bufs._rs.63, ptr noundef nonnull @__func__.submit_process_bufs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %do.body39.i.cleanup.i_crit_edge, label %do.end45.i

do.body39.i.cleanup.i_crit_edge:                  ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

do.end45.i:                                       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  %157 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %call, align 4
  %dev48.i = getelementptr inbounds %struct.host1x_client, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %dev48.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev48.i, align 4
  %161 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i132.i = and i32 %161, -16384
  %162 = inttoptr i32 %and.i132.i to ptr
  %task50.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %task50.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %task50.i, align 8
  %comm51.i = getelementptr inbounds %struct.task_struct, ptr %164, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.65, ptr noundef %comm51.i) #16
  br label %cleanup.i

if.end56.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.drm_tegra_submit_buf, ptr %call.i315, i32 %i.0153.i
  %165 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.i, align 8
  call void @_raw_spin_lock(ptr noundef %mappings.i.i325) #12
  %call.i.i = call ptr @xa_load(ptr noundef %mappings.i.i325, i32 noundef %166) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body61.i, label %if.then.i.i327

if.then.i.i327:                                   ; preds = %if.end56.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull %call.i.i, i32 1, i32 3, i32 1) #12
  %167 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i, ptr nonnull %call.i.i, i32 1, ptr nonnull elementtype(i32) %call.i.i) #12, !srcloc !202
  %asmresult.i.i.i.i.i.i.i.i326 = extractvalue { i32, i32, i32 } %167, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i326)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i326, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i327.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !203

if.then.i.i327.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i327
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i327
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i326, 1
  %168 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i326
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %168)
  %.not.i.i.i.i.i.i = icmp sgt i32 %168, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end79.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !204

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end79.i_crit_edge:         ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i327.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i327.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %call.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %if.end79.i

do.body61.i:                                      ; preds = %if.end56.i
  call void @_raw_spin_unlock(ptr noundef %mappings.i.i325) #12
  %call62.i = call i32 @___ratelimit(ptr noundef nonnull @submit_process_bufs._rs.67, ptr noundef nonnull @__func__.submit_process_bufs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %do.body61.i.cleanup.i_crit_edge, label %do.end67.i

do.body61.i.cleanup.i_crit_edge:                  ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

do.end67.i:                                       ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %call, align 4
  %dev70.i = getelementptr inbounds %struct.host1x_client, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %dev70.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev70.i, align 4
  %173 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i133.i328 = and i32 %173, -16384
  %174 = inttoptr i32 %and.i133.i328 to ptr
  %task72.i = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %task72.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %task72.i, align 8
  %comm73.i = getelementptr inbounds %struct.task_struct, ptr %176, i32 0, i32 101
  %177 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %172, ptr noundef nonnull @.str.69, ptr noundef %comm73.i, i32 noundef %178) #16
  br label %cleanup.i

if.end79.i:                                       ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end79.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %mappings.i.i325) #12
  %gather_offset_words.i.i = getelementptr %struct.drm_tegra_submit_buf, ptr %call.i315, i32 %i.0153.i, i32 2, i32 1
  %179 = ptrtoint ptr %gather_offset_words.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %gather_offset_words.i.i, align 8
  %181 = ptrtoint ptr %gather_data_words108.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %gather_data_words108.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %182)
  %cmp.not.i.i = icmp ult i32 %180, %182
  br i1 %cmp.not.i.i, label %for.inc.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end79.i
  %call.i134.i = call i32 @___ratelimit(ptr noundef nonnull @submit_write_reloc._rs, ptr noundef nonnull @__func__.submit_write_reloc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134.i)
  %tobool.not.i135.i = icmp eq i32 %call.i134.i, 0
  br i1 %tobool.not.i135.i, label %do.body.i.i.if.then82.i_crit_edge, label %do.end.i.i

do.body.i.i.if.then82.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then82.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %183 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %call, align 4
  %dev.i.i = getelementptr inbounds %struct.host1x_client, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev.i.i, align 4
  %187 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i.i.i = and i32 %187, -16384
  %188 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %190, i32 0, i32 101
  %191 = ptrtoint ptr %gather_offset_words.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %gather_offset_words.i.i, align 8
  %193 = ptrtoint ptr %gather_data_words108.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %gather_data_words108.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str.71, ptr noundef %comm.i.i, i32 noundef %192, i32 noundef %194) #16
  br label %if.then82.i

if.then82.i:                                      ; preds = %do.end.i.i, %do.body.i.i.if.then82.i_crit_edge
  call void @tegra_drm_mapping_put(ptr noundef nonnull %call.i.i) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then82.i, %do.end67.i, %do.body61.i.cleanup.i_crit_edge, %do.end45.i, %do.body39.i.cleanup.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0153.i)
  %tobool90.not154.i = icmp eq i32 %i.0153.i, 0
  br i1 %tobool90.not154.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

for.inc.i:                                        ; preds = %if.end79.i
  %reloc.i.i = getelementptr %struct.drm_tegra_submit_buf, ptr %call.i315, i32 %i.0153.i, i32 2
  %iova1.i.i = getelementptr inbounds %struct.tegra_drm_mapping, ptr %call.i.i, i32 0, i32 3
  %195 = ptrtoint ptr %iova1.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %iova1.i.i, align 4
  %197 = ptrtoint ptr %reloc.i.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %reloc.i.i, align 8
  %199 = trunc i64 %198 to i32
  %conv2.i.i = add i32 %196, %199
  %shift.i.i = getelementptr %struct.drm_tegra_submit_buf, ptr %call.i315, i32 %i.0153.i, i32 2, i32 2
  %200 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %shift.i.i, align 4
  %shr.i.i = lshr i32 %conv2.i.i, %201
  %202 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %180, i32 %182) #12, !srcloc !214
  %and.i136.i329 = and i32 %202, %180
  %203 = ptrtoint ptr %gather_offset_words.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %and.i136.i329, ptr %gather_offset_words.i.i, align 8
  %204 = ptrtoint ptr %gather_data.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %gather_data.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %205, i32 %and.i136.i329
  %206 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %shr.i.i, ptr %arrayidx.i.i, align 4
  %arrayidx84.i = getelementptr %struct.tegra_drm_used_mapping, ptr %call8.i.i.i, i32 %i.0153.i
  %207 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call.i.i, ptr %arrayidx84.i, align 8
  %208 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %flags.i, align 4
  %flags88.i = getelementptr %struct.tegra_drm_used_mapping, ptr %call8.i.i.i, i32 %i.0153.i, i32 1
  %210 = ptrtoint ptr %flags88.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %flags88.i, align 4
  %inc.i = add nuw i32 %i.0153.i, 1
  %211 = ptrtoint ptr %num_bufs.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %num_bufs.i, align 4
  %cmp35.i = icmp ult i32 %inc.i, %212
  br i1 %cmp35.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %213 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call8.i.i.i, ptr %call7.i.i, align 8
  %num_used_mappings.i = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %call7.i.i, i32 0, i32 1
  %214 = ptrtoint ptr %num_used_mappings.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %i.0.lcssa.i, ptr %num_used_mappings.i, align 4
  br label %done.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %cleanup.i.while.body.i_crit_edge
  %i.1155.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %i.0153.i, %cleanup.i.while.body.i_crit_edge ]
  %dec.i = add i32 %i.1155.i, -1
  %arrayidx91.i = getelementptr %struct.tegra_drm_used_mapping, ptr %call8.i.i.i, i32 %dec.i
  %215 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx91.i, align 8
  call void @tegra_drm_mapping_put(ptr noundef %216) #12
  %tobool90.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool90.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %cleanup.i.while.end.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #12
  %217 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %call7.i.i, align 8
  br label %done.i

done.i:                                           ; preds = %while.end.i, %for.end.i, %do.end22.i, %do.body16.i.done.i_crit_edge
  %err.1.i = phi i32 [ -22, %while.end.i ], [ 0, %for.end.i ], [ -12, %do.end22.i ], [ -12, %do.body16.i.done.i_crit_edge ]
  call void @kvfree(ptr noundef %call.i315) #12
  br label %submit_process_bufs.exit

submit_process_bufs.exit:                         ; preds = %done.i, %do.end9.i
  %retval.0.i330 = phi i32 [ %139, %do.end9.i ], [ %err.1.i, %done.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i330)
  %tobool108.not = icmp eq i32 %retval.0.i330, 0
  br i1 %tobool108.not, label %if.end110, label %submit_process_bufs.exit.free_job_data_crit_edge

submit_process_bufs.exit.free_job_data_crit_edge: ; preds = %submit_process_bufs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job_data

if.end110:                                        ; preds = %submit_process_bufs.exit
  %syncpoints = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %class.i) #12
  %218 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %call, align 4
  %class1.i = getelementptr inbounds %struct.host1x_client, ptr %219, i32 0, i32 5
  %220 = ptrtoint ptr %class1.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %class1.i, align 4
  %222 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %class.i, align 4
  %cmds_ptr.i = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %data, i32 0, i32 5
  %223 = ptrtoint ptr %cmds_ptr.i to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %cmds_ptr.i, align 8
  %conv3.i = trunc i64 %224 to i32
  %225 = inttoptr i32 %conv3.i to ptr
  %num_cmds.i = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %data, i32 0, i32 2
  %226 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %num_cmds.i, align 8
  %call.i331 = call fastcc ptr @alloc_copy_user_array(ptr noundef %225, i32 noundef %227) #12
  %cmp.i.i332 = icmp ugt ptr %call.i331, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i332, label %do.body.i334, label %if.end14.i

do.body.i334:                                     ; preds = %if.end110
  %call5.i = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs, ptr noundef nonnull @__func__.submit_create_job) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i333 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i333, label %do.body.i334.submit_create_job.exit_crit_edge, label %do.end.i339

do.body.i334.submit_create_job.exit_crit_edge:    ; preds = %do.body.i334
  call void @__sanitizer_cov_trace_pc() #14
  br label %submit_create_job.exit

do.end.i339:                                      ; preds = %do.body.i334
  call void @__sanitizer_cov_trace_pc() #14
  %228 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %call, align 4
  %dev.i335 = getelementptr inbounds %struct.host1x_client, ptr %229, i32 0, i32 2
  %230 = ptrtoint ptr %dev.i335 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev.i335, align 4
  %232 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i.i336 = and i32 %232, -16384
  %233 = inttoptr i32 %and.i.i336 to ptr
  %task.i337 = getelementptr inbounds %struct.thread_info, ptr %233, i32 0, i32 2
  %234 = ptrtoint ptr %task.i337 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %task.i337, align 8
  %comm.i338 = getelementptr inbounds %struct.task_struct, ptr %235, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %231, ptr noundef nonnull @.str.72, ptr noundef %comm.i338) #16
  br label %submit_create_job.exit

if.end14.i:                                       ; preds = %if.end110
  %channel.i = getelementptr inbounds %struct.tegra_drm_context, ptr %call, i32 0, i32 1
  %236 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %channel.i, align 4
  %238 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %num_cmds.i, align 8
  %call16.i340 = call ptr @host1x_job_alloc(ptr noundef %237, i32 noundef %239, i32 noundef 0, i1 noundef zeroext true) #12
  %tobool17.not.i341 = icmp eq ptr %call16.i340, null
  br i1 %tobool17.not.i341, label %do.body19.i, label %if.end37.i

do.body19.i:                                      ; preds = %if.end14.i
  %call20.i = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs.73, ptr noundef nonnull @__func__.submit_create_job) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %do.body19.i.done.i360_crit_edge, label %do.end25.i

do.body19.i.done.i360_crit_edge:                  ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i360

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #14
  %240 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %call, align 4
  %dev28.i = getelementptr inbounds %struct.host1x_client, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev28.i, align 4
  %244 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i261.i = and i32 %244, -16384
  %245 = inttoptr i32 %and.i261.i to ptr
  %task30.i = getelementptr inbounds %struct.thread_info, ptr %245, i32 0, i32 2
  %246 = ptrtoint ptr %task30.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %task30.i, align 8
  %comm31.i = getelementptr inbounds %struct.task_struct, ptr %247, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %243, ptr noundef nonnull @.str.75, ptr noundef %comm31.i) #16
  br label %done.i360

if.end37.i:                                       ; preds = %if.end14.i
  %flags.i.i = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %data, i32 0, i32 9, i32 1
  %248 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool.not.i.i342 = icmp eq i32 %249, 0
  br i1 %tobool.not.i.i342, label %if.end7.i.i, label %do.body.i.i344

do.body.i.i344:                                   ; preds = %if.end37.i
  %call.i.i343 = call i32 @___ratelimit(ptr noundef nonnull @submit_get_syncpt._rs, ptr noundef nonnull @__func__.submit_get_syncpt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i343)
  %tobool1.not.i.i = icmp eq i32 %call.i.i343, 0
  br i1 %tobool1.not.i.i, label %do.body.i.i344.free_job.i_crit_edge, label %do.body.i.i344.free_job.i.sink.split_crit_edge

do.body.i.i344.free_job.i.sink.split_crit_edge:   ; preds = %do.body.i.i344
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i.sink.split

do.body.i.i344.free_job.i_crit_edge:              ; preds = %do.body.i.i344
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i

if.end7.i.i:                                      ; preds = %if.end37.i
  %syncpt.i.i = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %data, i32 0, i32 9
  %250 = ptrtoint ptr %syncpt.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %syncpt.i.i, align 8
  %call9.i.i = call ptr @xa_load(ptr noundef %syncpoints, i32 noundef %251) #12
  %tobool10.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i.i, label %do.body12.i.i, label %if.end42.i

do.body12.i.i:                                    ; preds = %if.end7.i.i
  %call13.i.i = call i32 @___ratelimit(ptr noundef nonnull @submit_get_syncpt._rs.101, ptr noundef nonnull @__func__.submit_get_syncpt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %do.body12.i.i.free_job.i_crit_edge, label %do.body12.i.i.free_job.i.sink.split_crit_edge

do.body12.i.i.free_job.i.sink.split_crit_edge:    ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i.sink.split

do.body12.i.i.free_job.i_crit_edge:               ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i

if.end42.i:                                       ; preds = %if.end7.i.i
  %call30.i.i = call ptr @host1x_syncpt_get(ptr noundef nonnull %call9.i.i) #12
  %syncpt31.i.i = getelementptr inbounds %struct.host1x_job, ptr %call16.i340, i32 0, i32 13
  %252 = ptrtoint ptr %syncpt31.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %call30.i.i, ptr %syncpt31.i.i, align 4
  %increments.i.i = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %data, i32 0, i32 9, i32 2
  %253 = ptrtoint ptr %increments.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %increments.i.i, align 8
  %syncpt_incrs.i.i = getelementptr inbounds %struct.host1x_job, ptr %call16.i340, i32 0, i32 14
  %255 = ptrtoint ptr %syncpt_incrs.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %syncpt_incrs.i.i, align 4
  %256 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %call, align 4
  %client45.i = getelementptr inbounds %struct.host1x_job, ptr %call16.i340, i32 0, i32 3
  %258 = ptrtoint ptr %client45.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %257, ptr %client45.i, align 4
  %259 = load ptr, ptr %call, align 4
  %class48.i = getelementptr inbounds %struct.host1x_client, ptr %259, i32 0, i32 5
  %260 = ptrtoint ptr %class48.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %class48.i, align 4
  %class49.i = getelementptr inbounds %struct.host1x_job, ptr %call16.i340, i32 0, i32 26
  %262 = ptrtoint ptr %class49.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %class49.i, align 4
  %serialize.i = getelementptr inbounds %struct.host1x_job, ptr %call16.i340, i32 0, i32 27
  %263 = ptrtoint ptr %serialize.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 1, ptr %serialize.i, align 4
  %264 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %num_cmds.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %cmp51298.not.i = icmp eq i32 %265, 0
  br i1 %cmp51298.not.i, label %if.end42.i.do.body188.i_crit_edge, label %if.end42.i.for.body.i354_crit_edge

if.end42.i.for.body.i354_crit_edge:               ; preds = %if.end42.i
  br label %for.body.i354

if.end42.i.do.body188.i_crit_edge:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body188.i

for.body.i354:                                    ; preds = %for.inc.i358.for.body.i354_crit_edge, %if.end42.i.for.body.i354_crit_edge
  %i.0300.i = phi i32 [ %inc.i357, %for.inc.i358.for.body.i354_crit_edge ], [ 0, %if.end42.i.for.body.i354_crit_edge ]
  %gather_offset.0299.i = phi i32 [ %gather_offset.3.i, %for.inc.i358.for.body.i354_crit_edge ], [ 0, %if.end42.i.for.body.i354_crit_edge ]
  %flags.i353 = getelementptr %struct.drm_tegra_submit_cmd, ptr %call.i331, i32 %i.0300.i, i32 1
  %266 = ptrtoint ptr %flags.i353 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %flags.i353, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %tobool53.not.i = icmp eq i32 %267, 0
  br i1 %tobool53.not.i, label %if.end72.i, label %do.body55.i

do.body55.i:                                      ; preds = %for.body.i354
  %call56.i355 = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs.77, ptr noundef nonnull @__func__.submit_create_job) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i355)
  %tobool57.not.i = icmp eq i32 %call56.i355, 0
  br i1 %tobool57.not.i, label %do.body55.i.free_job.i_crit_edge, label %do.body55.i.free_job.i.sink.split_crit_edge

do.body55.i.free_job.i.sink.split_crit_edge:      ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i.sink.split

do.body55.i.free_job.i_crit_edge:                 ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i

if.end72.i:                                       ; preds = %for.body.i354
  %arrayidx.i356 = getelementptr %struct.drm_tegra_submit_cmd, ptr %call.i331, i32 %i.0300.i
  %268 = ptrtoint ptr %arrayidx.i356 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx.i356, align 4
  %270 = zext i32 %269 to i64
  call void @__sanitizer_cov_trace_switch(i64 %270, ptr @__sancov_gen_cov_switch_values)
  switch i32 %269, label %do.body165.i [
    i32 0, label %if.then75.i
    i32 1, label %if.then83.i
    i32 2, label %if.then112.i
  ]

if.then75.i:                                      ; preds = %if.end72.i
  %271 = getelementptr %struct.drm_tegra_submit_cmd, ptr %call.i331, i32 %i.0300.i, i32 2
  %reserved.i.i = getelementptr inbounds %struct.drm_tegra_submit_cmd_gather_uptr, ptr %271, i32 0, i32 1
  %272 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %reserved.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool.not.i263.i = icmp eq i32 %273, 0
  br i1 %tobool.not.i263.i, label %lor.lhs.false.i.i, label %if.then75.i.do.body.i265.i_crit_edge

if.then75.i.do.body.i265.i_crit_edge:             ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i265.i

lor.lhs.false.i.i:                                ; preds = %if.then75.i
  %arrayidx2.i.i = getelementptr %struct.drm_tegra_submit_cmd_gather_uptr, ptr %271, i32 0, i32 1, i32 1
  %274 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool3.not.i.i = icmp eq i32 %275, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.do.body.i265.i_crit_edge

lor.lhs.false.i.i.do.body.i265.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i265.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %arrayidx6.i.i = getelementptr %struct.drm_tegra_submit_cmd_gather_uptr, ptr %271, i32 0, i32 1, i32 2
  %276 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool7.not.i.i = icmp eq i32 %277, 0
  br i1 %tobool7.not.i.i, label %if.end14.i.i, label %lor.lhs.false4.i.i.do.body.i265.i_crit_edge

lor.lhs.false4.i.i.do.body.i265.i_crit_edge:      ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i265.i

do.body.i265.i:                                   ; preds = %lor.lhs.false4.i.i.do.body.i265.i_crit_edge, %lor.lhs.false.i.i.do.body.i265.i_crit_edge, %if.then75.i.do.body.i265.i_crit_edge
  %call.i264.i = call i32 @___ratelimit(ptr noundef nonnull @submit_job_add_gather._rs, ptr noundef nonnull @__func__.submit_job_add_gather) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264.i)
  %tobool8.not.i.i = icmp eq i32 %call.i264.i, 0
  br i1 %tobool8.not.i.i, label %do.body.i265.i.free_job.i_crit_edge, label %do.body.i265.i.free_job.i.sink.split_crit_edge

do.body.i265.i.free_job.i.sink.split_crit_edge:   ; preds = %do.body.i265.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i.sink.split

do.body.i265.i.free_job.i_crit_edge:              ; preds = %do.body.i265.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i

if.end14.i.i:                                     ; preds = %lor.lhs.false4.i.i
  %278 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %271, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %279)
  %cmp.i271.i = icmp ugt i32 %279, 16383
  br i1 %cmp.i271.i, label %do.body16.i.i, label %if.end33.i.i

do.body16.i.i:                                    ; preds = %if.end14.i.i
  %call17.i.i = call i32 @___ratelimit(ptr noundef nonnull @submit_job_add_gather._rs.106, ptr noundef nonnull @__func__.submit_job_add_gather) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %do.body16.i.i.free_job.i_crit_edge, label %do.body16.i.i.free_job.i.sink.split_crit_edge

do.body16.i.i.free_job.i.sink.split_crit_edge:    ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i.sink.split

do.body16.i.i.free_job.i_crit_edge:               ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i

if.end33.i.i:                                     ; preds = %if.end14.i.i
  %280 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %gather_offset.0299.i, i32 %279) #12
  %281 = extractvalue { i32, i1 } %280, 1
  %282 = extractvalue { i32, i1 } %280, 0
  br i1 %281, label %do.body41.i.i, label %if.end58.i.i

do.body41.i.i:                                    ; preds = %if.end33.i.i
  %call42.i.i = call i32 @___ratelimit(ptr noundef nonnull @submit_job_add_gather._rs.110, ptr noundef nonnull @__func__.submit_job_add_gather) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %do.body41.i.i.free_job.i_crit_edge, label %do.body41.i.i.free_job.i.sink.split_crit_edge

do.body41.i.i.free_job.i.sink.split_crit_edge:    ; preds = %do.body41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i.sink.split

do.body41.i.i.free_job.i_crit_edge:               ; preds = %do.body41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i

if.end58.i.i:                                     ; preds = %if.end33.i.i
  %283 = ptrtoint ptr %gather_data_words108.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %gather_data_words108.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %282, i32 %284)
  %cmp59.i.i = icmp ugt i32 %282, %284
  br i1 %cmp59.i.i, label %do.body62.i.i, label %if.end79.i.i

do.body62.i.i:                                    ; preds = %if.end58.i.i
  %call63.i.i = call i32 @___ratelimit(ptr noundef nonnull @submit_job_add_gather._rs.114, ptr noundef nonnull @__func__.submit_job_add_gather) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i.i)
  %tobool64.not.i.i = icmp eq i32 %call63.i.i, 0
  br i1 %tobool64.not.i.i, label %do.body62.i.i.free_job.i_crit_edge, label %do.body62.i.i.free_job.i.sink.split_crit_edge

do.body62.i.i.free_job.i.sink.split_crit_edge:    ; preds = %do.body62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i.sink.split

do.body62.i.i.free_job.i_crit_edge:               ; preds = %do.body62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i

if.end79.i.i:                                     ; preds = %if.end58.i.i
  %285 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %call, align 4
  %287 = ptrtoint ptr %gather_data.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %gather_data.i, align 8
  %call82.i.i = call i32 @tegra_drm_fw_validate(ptr noundef %286, ptr noundef %288, i32 noundef %gather_offset.0299.i, i32 noundef %279, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %class.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i.i)
  %tobool83.not.i.i = icmp eq i32 %call82.i.i, 0
  br i1 %tobool83.not.i.i, label %submit_job_add_gather.exit.i, label %do.body85.i.i

do.body85.i.i:                                    ; preds = %if.end79.i.i
  %call86.i.i = call i32 @___ratelimit(ptr noundef nonnull @submit_job_add_gather._rs.118, ptr noundef nonnull @__func__.submit_job_add_gather) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i.i)
  %tobool87.not.i.i = icmp eq i32 %call86.i.i, 0
  br i1 %tobool87.not.i.i, label %do.body85.i.i.free_job.i_crit_edge, label %do.body85.i.i.free_job.i.sink.split_crit_edge

do.body85.i.i.free_job.i.sink.split_crit_edge:    ; preds = %do.body85.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i.sink.split

do.body85.i.i.free_job.i_crit_edge:               ; preds = %do.body85.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i

submit_job_add_gather.exit.i:                     ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %289 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %271, align 4
  %mul.i.i = shl i32 %gather_offset.0299.i, 2
  call void @host1x_job_add_gather(ptr noundef nonnull %call16.i340, ptr noundef nonnull %call7.i.i.i, i32 noundef %290, i32 noundef %mul.i.i) #12
  br label %for.inc.i358

if.then83.i:                                      ; preds = %if.end72.i
  %291 = getelementptr %struct.drm_tegra_submit_cmd, ptr %call.i331, i32 %i.0300.i, i32 2
  %reserved.i = getelementptr inbounds %struct.drm_tegra_submit_cmd_wait_syncpt, ptr %291, i32 0, i32 2
  %292 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %reserved.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %tobool85.not.i = icmp eq i32 %293, 0
  br i1 %tobool85.not.i, label %lor.lhs.false.i, label %if.then83.i.do.body90.i_crit_edge

if.then83.i.do.body90.i_crit_edge:                ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body90.i

lor.lhs.false.i:                                  ; preds = %if.then83.i
  %arrayidx87.i = getelementptr %struct.drm_tegra_submit_cmd_wait_syncpt, ptr %291, i32 0, i32 2, i32 1
  %294 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx87.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %tobool88.not.i = icmp eq i32 %295, 0
  br i1 %tobool88.not.i, label %if.end107.i, label %lor.lhs.false.i.do.body90.i_crit_edge

lor.lhs.false.i.do.body90.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body90.i

do.body90.i:                                      ; preds = %lor.lhs.false.i.do.body90.i_crit_edge, %if.then83.i.do.body90.i_crit_edge
  %call91.i = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs.81, ptr noundef nonnull @__func__.submit_create_job) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %do.body90.i.free_job.i_crit_edge, label %do.body90.i.free_job.i.sink.split_crit_edge

do.body90.i.free_job.i.sink.split_crit_edge:      ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i.sink.split

do.body90.i.free_job.i_crit_edge:                 ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i

if.end107.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %296 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %291, align 4
  %value.i = getelementptr inbounds %struct.drm_tegra_submit_cmd_wait_syncpt, ptr %291, i32 0, i32 1
  %298 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %value.i, align 4
  %300 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %class.i, align 4
  call void @host1x_job_add_wait(ptr noundef nonnull %call16.i340, i32 noundef %297, i32 noundef %299, i1 noundef zeroext false, i32 noundef %301) #12
  br label %for.inc.i358

if.then112.i:                                     ; preds = %if.end72.i
  %302 = getelementptr %struct.drm_tegra_submit_cmd, ptr %call.i331, i32 %i.0300.i, i32 2
  %reserved113.i = getelementptr inbounds %struct.drm_tegra_submit_cmd_wait_syncpt, ptr %302, i32 0, i32 2
  %303 = ptrtoint ptr %reserved113.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %reserved113.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %tobool115.not.i = icmp eq i32 %304, 0
  br i1 %tobool115.not.i, label %lor.lhs.false116.i, label %if.then112.i.do.body121.i_crit_edge

if.then112.i.do.body121.i_crit_edge:              ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body121.i

lor.lhs.false116.i:                               ; preds = %if.then112.i
  %arrayidx118.i = getelementptr %struct.drm_tegra_submit_cmd_wait_syncpt, ptr %302, i32 0, i32 2, i32 1
  %305 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx118.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool119.not.i = icmp eq i32 %306, 0
  br i1 %tobool119.not.i, label %if.end138.i, label %lor.lhs.false116.i.do.body121.i_crit_edge

lor.lhs.false116.i.do.body121.i_crit_edge:        ; preds = %lor.lhs.false116.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body121.i

do.body121.i:                                     ; preds = %lor.lhs.false116.i.do.body121.i_crit_edge, %if.then112.i.do.body121.i_crit_edge
  %call122.i = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs.85, ptr noundef nonnull @__func__.submit_create_job) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %tobool123.not.i = icmp eq i32 %call122.i, 0
  br i1 %tobool123.not.i, label %do.body121.i.free_job.i_crit_edge, label %do.body121.i.free_job.i.sink.split_crit_edge

do.body121.i.free_job.i.sink.split_crit_edge:     ; preds = %do.body121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i.sink.split

do.body121.i.free_job.i_crit_edge:                ; preds = %do.body121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i

if.end138.i:                                      ; preds = %lor.lhs.false116.i
  %307 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %302, align 4
  %309 = ptrtoint ptr %syncpt.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %syncpt.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %308, i32 %310)
  %cmp141.not.i = icmp eq i32 %308, %310
  br i1 %cmp141.not.i, label %if.end161.i, label %do.body144.i

do.body144.i:                                     ; preds = %if.end138.i
  %call145.i = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs.88, ptr noundef nonnull @__func__.submit_create_job) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.i)
  %tobool146.not.i = icmp eq i32 %call145.i, 0
  br i1 %tobool146.not.i, label %do.body144.i.free_job.i_crit_edge, label %do.body144.i.free_job.i.sink.split_crit_edge

do.body144.i.free_job.i.sink.split_crit_edge:     ; preds = %do.body144.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i.sink.split

do.body144.i.free_job.i_crit_edge:                ; preds = %do.body144.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i

if.end161.i:                                      ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #14
  %value163.i = getelementptr inbounds %struct.drm_tegra_submit_cmd_wait_syncpt, ptr %302, i32 0, i32 1
  %311 = ptrtoint ptr %value163.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %value163.i, align 4
  %313 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %class.i, align 4
  call void @host1x_job_add_wait(ptr noundef nonnull %call16.i340, i32 noundef %308, i32 noundef %312, i1 noundef zeroext true, i32 noundef %314) #12
  br label %for.inc.i358

do.body165.i:                                     ; preds = %if.end72.i
  %call166.i = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs.92, ptr noundef nonnull @__func__.submit_create_job) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166.i)
  %tobool167.not.i = icmp eq i32 %call166.i, 0
  br i1 %tobool167.not.i, label %do.body165.i.free_job.i_crit_edge, label %do.body165.i.free_job.i.sink.split_crit_edge

do.body165.i.free_job.i.sink.split_crit_edge:     ; preds = %do.body165.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i.sink.split

do.body165.i.free_job.i_crit_edge:                ; preds = %do.body165.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i

for.inc.i358:                                     ; preds = %if.end161.i, %if.end107.i, %submit_job_add_gather.exit.i
  %gather_offset.3.i = phi i32 [ %gather_offset.0299.i, %if.end161.i ], [ %gather_offset.0299.i, %if.end107.i ], [ %282, %submit_job_add_gather.exit.i ]
  %inc.i357 = add nuw i32 %i.0300.i, 1
  %315 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %num_cmds.i, align 8
  %cmp51.i = icmp ult i32 %inc.i357, %316
  br i1 %cmp51.i, label %for.inc.i358.for.body.i354_crit_edge, label %for.end.i359

for.inc.i358.for.body.i354_crit_edge:             ; preds = %for.inc.i358
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i354

for.end.i359:                                     ; preds = %for.inc.i358
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gather_offset.3.i)
  %cmp185.i = icmp eq i32 %gather_offset.3.i, 0
  br i1 %cmp185.i, label %for.end.i359.do.body188.i_crit_edge, label %for.end.i359.done.i360_crit_edge

for.end.i359.done.i360_crit_edge:                 ; preds = %for.end.i359
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i360

for.end.i359.do.body188.i_crit_edge:              ; preds = %for.end.i359
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body188.i

do.body188.i:                                     ; preds = %for.end.i359.do.body188.i_crit_edge, %if.end42.i.do.body188.i_crit_edge
  %call189.i = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs.96, ptr noundef nonnull @__func__.submit_create_job) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189.i)
  %tobool190.not.i = icmp eq i32 %call189.i, 0
  br i1 %tobool190.not.i, label %do.body188.i.free_job.i_crit_edge, label %do.body188.i.free_job.i.sink.split_crit_edge

do.body188.i.free_job.i.sink.split_crit_edge:     ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i.sink.split

do.body188.i.free_job.i_crit_edge:                ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_job.i

free_job.i.sink.split:                            ; preds = %do.body188.i.free_job.i.sink.split_crit_edge, %do.body165.i.free_job.i.sink.split_crit_edge, %do.body144.i.free_job.i.sink.split_crit_edge, %do.body121.i.free_job.i.sink.split_crit_edge, %do.body90.i.free_job.i.sink.split_crit_edge, %do.body85.i.i.free_job.i.sink.split_crit_edge, %do.body62.i.i.free_job.i.sink.split_crit_edge, %do.body41.i.i.free_job.i.sink.split_crit_edge, %do.body16.i.i.free_job.i.sink.split_crit_edge, %do.body.i265.i.free_job.i.sink.split_crit_edge, %do.body55.i.free_job.i.sink.split_crit_edge, %do.body12.i.i.free_job.i.sink.split_crit_edge, %do.body.i.i344.free_job.i.sink.split_crit_edge
  %.str.98.sink = phi ptr [ @.str.100, %do.body.i.i344.free_job.i.sink.split_crit_edge ], [ @.str.103, %do.body12.i.i.free_job.i.sink.split_crit_edge ], [ @.str.79, %do.body55.i.free_job.i.sink.split_crit_edge ], [ @.str.105, %do.body.i265.i.free_job.i.sink.split_crit_edge ], [ @.str.108, %do.body16.i.i.free_job.i.sink.split_crit_edge ], [ @.str.112, %do.body41.i.i.free_job.i.sink.split_crit_edge ], [ @.str.116, %do.body62.i.i.free_job.i.sink.split_crit_edge ], [ @.str.120, %do.body85.i.i.free_job.i.sink.split_crit_edge ], [ @.str.83, %do.body90.i.free_job.i.sink.split_crit_edge ], [ @.str.83, %do.body121.i.free_job.i.sink.split_crit_edge ], [ @.str.90, %do.body144.i.free_job.i.sink.split_crit_edge ], [ @.str.94, %do.body165.i.free_job.i.sink.split_crit_edge ], [ @.str.98, %do.body188.i.free_job.i.sink.split_crit_edge ]
  %317 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %call, align 4
  %dev197.i = getelementptr inbounds %struct.host1x_client, ptr %318, i32 0, i32 2
  %319 = ptrtoint ptr %dev197.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev197.i, align 4
  %321 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i277.i = and i32 %321, -16384
  %322 = inttoptr i32 %and.i277.i to ptr
  %task199.i = getelementptr inbounds %struct.thread_info, ptr %322, i32 0, i32 2
  %323 = ptrtoint ptr %task199.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %task199.i, align 8
  %comm200.i = getelementptr inbounds %struct.task_struct, ptr %324, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %320, ptr noundef nonnull %.str.98.sink, ptr noundef %comm200.i) #16
  br label %free_job.i

free_job.i:                                       ; preds = %free_job.i.sink.split, %do.body188.i.free_job.i_crit_edge, %do.body165.i.free_job.i_crit_edge, %do.body144.i.free_job.i_crit_edge, %do.body121.i.free_job.i_crit_edge, %do.body90.i.free_job.i_crit_edge, %do.body85.i.i.free_job.i_crit_edge, %do.body62.i.i.free_job.i_crit_edge, %do.body41.i.i.free_job.i_crit_edge, %do.body16.i.i.free_job.i_crit_edge, %do.body.i265.i.free_job.i_crit_edge, %do.body55.i.free_job.i_crit_edge, %do.body12.i.i.free_job.i_crit_edge, %do.body.i.i344.free_job.i_crit_edge
  call void @host1x_job_put(ptr noundef nonnull %call16.i340) #12
  br label %done.i360

done.i360:                                        ; preds = %free_job.i, %for.end.i359.done.i360_crit_edge, %do.end25.i, %do.body19.i.done.i360_crit_edge
  %job.0.i = phi ptr [ inttoptr (i32 -22 to ptr), %free_job.i ], [ %call16.i340, %for.end.i359.done.i360_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end25.i ], [ inttoptr (i32 -12 to ptr), %do.body19.i.done.i360_crit_edge ]
  call void @kvfree(ptr noundef %call.i331) #12
  br label %submit_create_job.exit

submit_create_job.exit:                           ; preds = %done.i360, %do.end.i339, %do.body.i334.submit_create_job.exit_crit_edge
  %retval.0.i361 = phi ptr [ %job.0.i, %done.i360 ], [ %call.i331, %do.end.i339 ], [ %call.i331, %do.body.i334.submit_create_job.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %class.i) #12
  %cmp.i362 = icmp ugt ptr %retval.0.i361, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i362, label %if.then113, label %if.end115

if.then113:                                       ; preds = %submit_create_job.exit
  call void @__sanitizer_cov_trace_pc() #14
  %325 = ptrtoint ptr %retval.0.i361 to i32
  br label %free_job_data

if.end115:                                        ; preds = %submit_create_job.exit
  %326 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %call, align 4
  %dev118 = getelementptr inbounds %struct.host1x_client, ptr %327, i32 0, i32 2
  %328 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %dev118, align 4
  %call119 = call i32 @host1x_job_pin(ptr noundef %retval.0.i361, ptr noundef %329) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end139, label %do.body122

do.body122:                                       ; preds = %if.end115
  %call123 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.21, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %do.body122.put_job_crit_edge, label %do.end128

do.body122.put_job_crit_edge:                     ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_job

do.end128:                                        ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #14
  %330 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %call, align 4
  %dev131 = getelementptr inbounds %struct.host1x_client, ptr %331, i32 0, i32 2
  %332 = ptrtoint ptr %dev131 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %dev131, align 4
  %334 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i363 = and i32 %334, -16384
  %335 = inttoptr i32 %and.i363 to ptr
  %task133 = getelementptr inbounds %struct.thread_info, ptr %335, i32 0, i32 2
  %336 = ptrtoint ptr %task133 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %task133, align 8
  %comm134 = getelementptr inbounds %struct.task_struct, ptr %337, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %333, ptr noundef nonnull @.str.23, ptr noundef %comm134, i32 noundef %call119) #16
  br label %put_job

if.end139:                                        ; preds = %if.end115
  %338 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %call, align 4
  %dev142 = getelementptr inbounds %struct.host1x_client, ptr %339, i32 0, i32 2
  %340 = ptrtoint ptr %dev142 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %dev142, align 4
  %call143 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %341)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp = icmp slt i32 %call143, 0
  br i1 %cmp, label %do.body145, label %if.end162

do.body145:                                       ; preds = %if.end139
  %call146 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.25, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %do.body145.unpin_job_crit_edge, label %do.end151

do.body145.unpin_job_crit_edge:                   ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #14
  br label %unpin_job

do.end151:                                        ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #14
  %342 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %call, align 4
  %dev154 = getelementptr inbounds %struct.host1x_client, ptr %343, i32 0, i32 2
  %344 = ptrtoint ptr %dev154 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %dev154, align 4
  %346 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i364 = and i32 %346, -16384
  %347 = inttoptr i32 %and.i364 to ptr
  %task156 = getelementptr inbounds %struct.thread_info, ptr %347, i32 0, i32 2
  %348 = ptrtoint ptr %task156 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %task156, align 8
  %comm157 = getelementptr inbounds %struct.task_struct, ptr %349, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %345, ptr noundef nonnull @.str.27, ptr noundef %comm157, i32 noundef %call143) #16
  br label %unpin_job

if.end162:                                        ; preds = %if.end139
  %user_data = getelementptr inbounds %struct.host1x_job, ptr %retval.0.i361, i32 0, i32 30
  %350 = ptrtoint ptr %user_data to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr %call7.i.i, ptr %user_data, align 4
  %release = getelementptr inbounds %struct.host1x_job, ptr %retval.0.i361, i32 0, i32 29
  %351 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr @release_job, ptr %release, align 4
  %timeout = getelementptr inbounds %struct.host1x_job, ptr %retval.0.i361, i32 0, i32 17
  %352 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 10000, ptr %timeout, align 4
  %call163 = call i32 @host1x_job_submit(ptr noundef %retval.0.i361) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end183, label %do.body166

do.body166:                                       ; preds = %if.end162
  %call167 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.29, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %do.body166.unpin_job_crit_edge, label %do.end172

do.body166.unpin_job_crit_edge:                   ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #14
  br label %unpin_job

do.end172:                                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #14
  %353 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %call, align 4
  %dev175 = getelementptr inbounds %struct.host1x_client, ptr %354, i32 0, i32 2
  %355 = ptrtoint ptr %dev175 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %dev175, align 4
  %357 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i365 = and i32 %357, -16384
  %358 = inttoptr i32 %and.i365 to ptr
  %task177 = getelementptr inbounds %struct.thread_info, ptr %358, i32 0, i32 2
  %359 = ptrtoint ptr %task177 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %task177, align 8
  %comm178 = getelementptr inbounds %struct.task_struct, ptr %360, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %356, ptr noundef nonnull @.str.31, ptr noundef %comm178, i32 noundef %call163) #16
  br label %unpin_job

if.end183:                                        ; preds = %if.end162
  %syncpt_end = getelementptr inbounds %struct.host1x_job, ptr %retval.0.i361, i32 0, i32 15
  %361 = ptrtoint ptr %syncpt_end to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %syncpt_end, align 4
  %value = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %data, i32 0, i32 9, i32 3
  %363 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %362, ptr %value, align 4
  %tobool184.not = icmp eq ptr %syncobj.0, null
  br i1 %tobool184.not, label %if.end183.put_job_crit_edge, label %if.then185

if.end183.put_job_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_job

if.then185:                                       ; preds = %if.end183
  %syncpt187 = getelementptr inbounds %struct.host1x_job, ptr %retval.0.i361, i32 0, i32 13
  %364 = ptrtoint ptr %syncpt187 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %syncpt187, align 4
  %366 = ptrtoint ptr %syncpt_end to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %syncpt_end, align 4
  %call189 = call ptr @host1x_fence_create(ptr noundef %365, i32 noundef %367) #12
  %cmp.i366 = icmp ugt ptr %call189, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i366, label %if.then191, label %if.then185.if.end210_crit_edge

if.then185.if.end210_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end210

if.then191:                                       ; preds = %if.then185
  %368 = ptrtoint ptr %call189 to i32
  %call194 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.33, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.then191.if.end210_crit_edge, label %do.end199

if.then191.if.end210_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end210

do.end199:                                        ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #14
  %369 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %call, align 4
  %dev202 = getelementptr inbounds %struct.host1x_client, ptr %370, i32 0, i32 2
  %371 = ptrtoint ptr %dev202 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %dev202, align 4
  %373 = call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i367 = and i32 %373, -16384
  %374 = inttoptr i32 %and.i367 to ptr
  %task204 = getelementptr inbounds %struct.thread_info, ptr %374, i32 0, i32 2
  %375 = ptrtoint ptr %task204 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %task204, align 8
  %comm205 = getelementptr inbounds %struct.task_struct, ptr %376, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %372, ptr noundef nonnull @.str.35, ptr noundef %comm205, i32 noundef %368) #16
  br label %if.end210

if.end210:                                        ; preds = %do.end199, %if.then191.if.end210_crit_edge, %if.then185.if.end210_crit_edge
  %err.1 = phi i32 [ %368, %do.end199 ], [ %368, %if.then191.if.end210_crit_edge ], [ 0, %if.then185.if.end210_crit_edge ]
  call void @drm_syncobj_replace_fence(ptr noundef nonnull %syncobj.0, ptr noundef %call189) #12
  br label %put_job

unpin_job:                                        ; preds = %do.end172, %do.body166.unpin_job_crit_edge, %do.end151, %do.body145.unpin_job_crit_edge
  %job_data.0 = phi ptr [ %call7.i.i, %do.end151 ], [ %call7.i.i, %do.body145.unpin_job_crit_edge ], [ null, %do.end172 ], [ null, %do.body166.unpin_job_crit_edge ]
  %err.2 = phi i32 [ %call143, %do.end151 ], [ %call143, %do.body145.unpin_job_crit_edge ], [ %call163, %do.end172 ], [ %call163, %do.body166.unpin_job_crit_edge ]
  call void @host1x_job_unpin(ptr noundef %retval.0.i361) #12
  br label %put_job

put_job:                                          ; preds = %unpin_job, %if.end210, %if.end183.put_job_crit_edge, %do.end128, %do.body122.put_job_crit_edge
  %job_data.1 = phi ptr [ %call7.i.i, %do.end128 ], [ %call7.i.i, %do.body122.put_job_crit_edge ], [ %job_data.0, %unpin_job ], [ null, %if.end210 ], [ null, %if.end183.put_job_crit_edge ]
  %err.3 = phi i32 [ %call119, %do.end128 ], [ %call119, %do.body122.put_job_crit_edge ], [ %err.2, %unpin_job ], [ %err.1, %if.end210 ], [ 0, %if.end183.put_job_crit_edge ]
  call void @host1x_job_put(ptr noundef %retval.0.i361) #12
  br label %free_job_data

free_job_data:                                    ; preds = %put_job, %if.then113, %submit_process_bufs.exit.free_job_data_crit_edge
  %job_data.2 = phi ptr [ %call7.i.i, %submit_process_bufs.exit.free_job_data_crit_edge ], [ %call7.i.i, %if.then113 ], [ %job_data.1, %put_job ]
  %err.4 = phi i32 [ %retval.0.i330, %submit_process_bufs.exit.free_job_data_crit_edge ], [ %325, %if.then113 ], [ %err.3, %put_job ]
  %tobool212.not = icmp eq ptr %job_data.2, null
  br i1 %tobool212.not, label %free_job_data.put_bo_crit_edge, label %land.lhs.true

free_job_data.put_bo_crit_edge:                   ; preds = %free_job_data
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_bo

land.lhs.true:                                    ; preds = %free_job_data
  %377 = ptrtoint ptr %job_data.2 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %job_data.2, align 4
  %tobool213.not = icmp eq ptr %378, null
  br i1 %tobool213.not, label %land.lhs.true.if.then220_crit_edge, label %for.cond.preheader

land.lhs.true.if.then220_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then220

for.cond.preheader:                               ; preds = %land.lhs.true
  %num_used_mappings = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %job_data.2, i32 0, i32 1
  %379 = ptrtoint ptr %num_used_mappings to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %num_used_mappings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %380)
  %cmp215396.not = icmp eq i32 %380, 0
  br i1 %cmp215396.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0397 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %381 = ptrtoint ptr %job_data.2 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %job_data.2, align 4
  %arrayidx = getelementptr %struct.tegra_drm_used_mapping, ptr %382, i32 %i.0397
  %383 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %arrayidx, align 4
  call void @tegra_drm_mapping_put(ptr noundef %384) #12
  %inc = add nuw i32 %i.0397, 1
  %385 = ptrtoint ptr %num_used_mappings to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %num_used_mappings, align 4
  %cmp215 = icmp ult i32 %inc, %386
  br i1 %cmp215, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %387 = ptrtoint ptr %job_data.2 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %job_data.2, align 4
  call void @kfree(ptr noundef %388) #12
  br label %if.then220

if.then220:                                       ; preds = %for.end, %land.lhs.true.if.then220_crit_edge
  call void @kfree(ptr noundef nonnull %job_data.2) #12
  br label %put_bo

put_bo:                                           ; preds = %if.then220, %free_job_data.put_bo_crit_edge, %do.end95, %do.body89.put_bo_crit_edge
  %err.5 = phi i32 [ %err.4, %if.then220 ], [ -12, %do.end95 ], [ -12, %do.body89.put_bo_crit_edge ], [ %err.4, %free_job_data.put_bo_crit_edge ]
  call void @gather_bo_put(ptr noundef nonnull %call7.i.i.i)
  br label %unlock

unlock:                                           ; preds = %put_bo, %do.end103.i, %do.end76.i, %do.end42.i, %do.body36.i.unlock_crit_edge, %do.end21.i, %do.body15.i.unlock_crit_edge, %do.end.i, %do.body.i.unlock_crit_edge
  %err.6 = phi i32 [ %err.5, %put_bo ], [ -12, %do.body36.i.unlock_crit_edge ], [ -12, %do.end42.i ], [ -22, %do.body15.i.unlock_crit_edge ], [ -22, %do.end21.i ], [ -22, %do.body.i.unlock_crit_edge ], [ -22, %do.end.i ], [ -12, %do.end76.i ], [ -14, %do.end103.i ]
  %tobool223.not = icmp eq ptr %syncobj.0, null
  br i1 %tobool223.not, label %unlock.if.end225_crit_edge, label %if.then224

unlock.if.end225_crit_edge:                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end225

if.then224:                                       ; preds = %unlock
  %call.i.i.i.i.i.i.i368 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %syncobj.0, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !205
  call void @llvm.prefetch.p0(ptr nonnull %syncobj.0, i32 1, i32 3, i32 1) #12
  %389 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %syncobj.0, ptr nonnull %syncobj.0, i32 1, ptr nonnull elementtype(i32) %syncobj.0) #12, !srcloc !206
  %asmresult.i.i.i.i.i.i.i.i369 = extractvalue { i32, i32, i32 } %389, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i369)
  %cmp.i.i.i.i.i370 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i369, 1
  br i1 %cmp.i.i.i.i.i370, label %if.then.i.i374, label %if.end5.i.i.i.i.i372

if.end5.i.i.i.i.i372:                             ; preds = %if.then224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i369)
  %.not.i.i.i.i.i371 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i369, 0
  br i1 %.not.i.i.i.i.i371, label %if.end5.i.i.i.i.i372.if.end225_crit_edge, label %if.then10.i.i.i.i.i373, !prof !204

if.end5.i.i.i.i.i372.if.end225_crit_edge:         ; preds = %if.end5.i.i.i.i.i372
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end225

if.then10.i.i.i.i.i373:                           ; preds = %if.end5.i.i.i.i.i372
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %syncobj.0, i32 noundef 3) #12
  br label %if.end225

if.then.i.i374:                                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !207
  call void @drm_syncobj_free(ptr noundef nonnull %syncobj.0) #12, !callees !209
  br label %if.end225

if.end225:                                        ; preds = %if.then.i.i374, %if.then10.i.i.i.i.i373, %if.end5.i.i.i.i.i372.if.end225_crit_edge, %unlock.if.end225_crit_edge, %do.end67, %do.body61.if.end225_crit_edge, %cleanup.thread
  %err.6386 = phi i32 [ %err.6, %unlock.if.end225_crit_edge ], [ %err.6, %if.end5.i.i.i.i.i372.if.end225_crit_edge ], [ %err.6, %if.then10.i.i.i.i.i373 ], [ %err.6, %if.then.i.i374 ], [ %err.0.ph, %cleanup.thread ], [ -2, %do.body61.if.end225_crit_edge ], [ -2, %do.end67 ]
  call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup227

cleanup227:                                       ; preds = %if.end225, %do.end, %if.then.cleanup227_crit_edge
  %retval.0 = phi i32 [ %err.6386, %if.end225 ], [ -22, %do.end ], [ -22, %if.then.cleanup227_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_find_fence(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_syncobj_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_job_pin(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !216
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !217
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_job(ptr nocapture noundef readonly %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 3
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %user_data = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 30
  %2 = ptrtoint ptr %user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_data, align 4
  %num_used_mappings = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_used_mappings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_used_mappings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not = icmp eq i32 %5, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr %struct.tegra_drm_used_mapping, ptr %7, i32 %i.014
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @tegra_drm_mapping_put(ptr noundef %9) #12
  %inc = add nuw i32 %i.014, 1
  %10 = ptrtoint ptr %num_used_mappings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_used_mappings, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %13) #12
  tail call void @kfree(ptr noundef %3) #12
  %dev = getelementptr inbounds %struct.host1x_client, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.i12 = tail call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_job_submit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_fence_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_replace_fence(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_unpin(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_drm_mapping_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_copy_user_array(ptr noundef %from, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 24)
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %2)
  %cmp4 = icmp ugt i32 %2, 16384
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %2, i32 noundef 3264, i32 noundef -1) #18
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then.i.i.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end8
  tail call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %2, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.57, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %from, i32 %2, i32 -1226833920) #17, !srcloc !210
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !204

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef %2) #12
  %4 = tail call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !211
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !213
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i, ptr noundef %from, i32 noundef %2) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #12, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !213
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !204

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  tail call void @kvfree(ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then11.i.i, %if.end.i.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -14 to ptr), %if.then11.i.i ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -7 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.cleanup_crit_edge ], [ %call.i, %if.end.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_job_alloc(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_add_wait(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_fw_validate(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_add_gather(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !83, !84, !86, !88, !90, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !115, !117, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191}
!llvm.named.register.sp = !{!192}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @gather_bo_ops, !1, !"gather_bo_ops", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 136, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 529, i32 3}
!4 = !{ptr @tegra_drm_ioctl_channel_submit._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.tegra_drm_ioctl_channel_submit, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tegra_drm_ioctl_channel_submit._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @tegra_drm_ioctl_channel_submit._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @tegra_drm_ioctl_channel_submit._rs.3, !11, !"_rs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 539, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @tegra_drm_ioctl_channel_submit._entry.4, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @tegra_drm_ioctl_channel_submit._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @tegra_drm_ioctl_channel_submit._rs.9, !18, !"_rs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 546, i32 4}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tegra_drm_ioctl_channel_submit._entry.10, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @tegra_drm_ioctl_channel_submit._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tegra_drm_ioctl_channel_submit._rs.13, !23, !"_rs", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 554, i32 4}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tegra_drm_ioctl_channel_submit._entry.14, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @tegra_drm_ioctl_channel_submit._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @tegra_drm_ioctl_channel_submit._rs.17, !28, !"_rs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 567, i32 3}
!29 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tegra_drm_ioctl_channel_submit._entry.18, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_drm_ioctl_channel_submit._entry_ptr.20, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @tegra_drm_ioctl_channel_submit._rs.21, !33, !"_rs", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 587, i32 3}
!34 = !{ptr @.str.23, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tegra_drm_ioctl_channel_submit._entry.22, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @tegra_drm_ioctl_channel_submit._entry_ptr.24, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @tegra_drm_ioctl_channel_submit._rs.25, !38, !"_rs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 594, i32 3}
!39 = !{ptr @.str.27, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tegra_drm_ioctl_channel_submit._entry.26, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @tegra_drm_ioctl_channel_submit._entry_ptr.28, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @tegra_drm_ioctl_channel_submit._rs.29, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 611, i32 3}
!44 = !{ptr @.str.31, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @tegra_drm_ioctl_channel_submit._entry.30, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @tegra_drm_ioctl_channel_submit._entry_ptr.32, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @tegra_drm_ioctl_channel_submit._rs.33, !48, !"_rs", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 622, i32 4}
!49 = !{ptr @.str.35, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @tegra_drm_ioctl_channel_submit._entry.34, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @tegra_drm_ioctl_channel_submit._entry_ptr.36, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @submit_copy_gather_data._rs, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 192, i32 3}
!54 = !{ptr @__func__.submit_copy_gather_data, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.37, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @submit_copy_gather_data._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @submit_copy_gather_data._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @submit_copy_gather_data._rs.38, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 197, i32 3}
!60 = !{ptr @.str.40, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @submit_copy_gather_data._entry.39, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @submit_copy_gather_data._entry_ptr.41, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @submit_copy_gather_data._rs.42, !64, !"_rs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 203, i32 3}
!65 = !{ptr @.str.44, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @submit_copy_gather_data._entry.43, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @submit_copy_gather_data._entry_ptr.45, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @submit_copy_gather_data._rs.46, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 214, i32 3}
!70 = !{ptr @.str.48, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @submit_copy_gather_data._entry.47, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @submit_copy_gather_data._entry_ptr.49, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @submit_copy_gather_data._rs.50, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 220, i32 3}
!75 = !{ptr @.str.52, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @submit_copy_gather_data._entry.51, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @submit_copy_gather_data._entry_ptr.53, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @host1x_bo_init.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/host1x.h", i32 154, i32 2}
!80 = !{ptr @.str.54, !79, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!83 = !{ptr @.str.55, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.56, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!86 = !{ptr @.str.57, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!88 = !{ptr @submit_process_bufs._rs, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 274, i32 3}
!90 = !{ptr @__func__.submit_process_bufs, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.58, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @submit_process_bufs._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @submit_process_bufs._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @submit_process_bufs._rs.59, !95, !"_rs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 280, i32 3}
!96 = !{ptr @.str.61, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @submit_process_bufs._entry.60, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @submit_process_bufs._entry_ptr.62, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @submit_process_bufs._rs.63, !100, !"_rs", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 290, i32 4}
!101 = !{ptr @.str.65, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @submit_process_bufs._entry.64, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @submit_process_bufs._entry_ptr.66, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @submit_process_bufs._rs.67, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 297, i32 4}
!106 = !{ptr @.str.69, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @submit_process_bufs._entry.68, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @submit_process_bufs._entry_ptr.70, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @submit_write_reloc._rs, !110, !"_rs", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 248, i32 3}
!111 = !{ptr @__func__.submit_write_reloc, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.71, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @submit_write_reloc._entry, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @submit_write_reloc._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @submit_create_job._rs, !116, !"_rs", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 413, i32 3}
!117 = !{ptr @__func__.submit_create_job, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.72, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @submit_create_job._entry, !116, !"_entry", i1 false, i1 false}
!120 = !{ptr @submit_create_job._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @submit_create_job._rs.73, !122, !"_rs", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 419, i32 3}
!123 = !{ptr @.str.75, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @submit_create_job._entry.74, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @submit_create_job._entry_ptr.76, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @submit_create_job._rs.77, !127, !"_rs", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 436, i32 4}
!128 = !{ptr @.str.79, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @submit_create_job._entry.78, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @submit_create_job._entry_ptr.80, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @submit_create_job._rs.81, !132, !"_rs", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 448, i32 5}
!133 = !{ptr @.str.83, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @submit_create_job._entry.82, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @submit_create_job._entry_ptr.84, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @submit_create_job._rs.85, !137, !"_rs", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 457, i32 5}
!138 = !{ptr @submit_create_job._entry.86, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @submit_create_job._entry_ptr.87, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @submit_create_job._rs.88, !141, !"_rs", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 463, i32 5}
!142 = !{ptr @.str.90, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @submit_create_job._entry.89, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @submit_create_job._entry_ptr.91, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @submit_create_job._rs.92, !146, !"_rs", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 471, i32 4}
!147 = !{ptr @.str.94, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @submit_create_job._entry.93, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @submit_create_job._entry_ptr.95, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @submit_create_job._rs.96, !151, !"_rs", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 478, i32 3}
!152 = !{ptr @.str.98, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @submit_create_job._entry.97, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @submit_create_job._entry_ptr.99, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @submit_get_syncpt._rs, !156, !"_rs", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 338, i32 3}
!157 = !{ptr @__func__.submit_get_syncpt, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.100, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @submit_get_syncpt._entry, !156, !"_entry", i1 false, i1 false}
!160 = !{ptr @submit_get_syncpt._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @submit_get_syncpt._rs.101, !162, !"_rs", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 345, i32 3}
!163 = !{ptr @.str.103, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @submit_get_syncpt._entry.102, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @submit_get_syncpt._entry_ptr.104, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @submit_job_add_gather._rs, !167, !"_rs", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 364, i32 3}
!168 = !{ptr @__func__.submit_job_add_gather, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.105, !167, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @submit_job_add_gather._entry, !167, !"_entry", i1 false, i1 false}
!171 = !{ptr @submit_job_add_gather._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @submit_job_add_gather._rs.106, !173, !"_rs", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 370, i32 3}
!174 = !{ptr @.str.108, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @submit_job_add_gather._entry.107, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @submit_job_add_gather._entry_ptr.109, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @submit_job_add_gather._rs.110, !178, !"_rs", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 375, i32 3}
!179 = !{ptr @.str.112, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @submit_job_add_gather._entry.111, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @submit_job_add_gather._entry_ptr.113, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @submit_job_add_gather._rs.114, !183, !"_rs", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 380, i32 3}
!184 = !{ptr @.str.116, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @submit_job_add_gather._entry.115, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @submit_job_add_gather._entry_ptr.117, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @submit_job_add_gather._rs.118, !188, !"_rs", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/tegra/submit.c", i32 386, i32 3}
!189 = !{ptr @.str.120, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @submit_job_add_gather._entry.119, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @submit_job_add_gather._entry_ptr.121, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{!"sp"}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{i64 2148558105, i64 2148558137, i64 2148558166, i64 2148558200, i64 2148558231, i64 2148558254}
!203 = !{!"branch_weights", i32 1, i32 2000}
!204 = !{!"branch_weights", i32 2000, i32 1}
!205 = !{i64 2148646130}
!206 = !{i64 2148560570, i64 2148560602, i64 2148560631, i64 2148560665, i64 2148560696, i64 2148560719}
!207 = !{i64 2149292805}
!208 = !{!"auto-init"}
!209 = distinct !{ptr @dma_fence_release, ptr @drm_syncobj_free, null}
!210 = !{i64 2150612244, i64 2150612269}
!211 = !{i64 3107799}
!212 = !{i64 3107996}
!213 = !{i64 2150593229}
!214 = !{i64 655023, i64 655040}
!215 = !{i64 2148555994}
!216 = !{i64 1042594, i64 1042619, i64 1042641, i64 1042657, i64 1042669, i64 1042689, i64 1042713, i64 1042729, i64 1042741}
!217 = !{i64 2148556182}
