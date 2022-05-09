; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_g2d.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_g2d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.component_ops = type { ptr, ptr }
%struct.drm_exynos_g2d_get_ver = type { i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.85 = type { i32, ptr }
%struct.exynos_drm_private = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.wait_queue_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.g2d_data = type { ptr, ptr, ptr, ptr, i32, ptr, %struct.work_struct, ptr, i32, ptr, %struct.list_head, %struct.mutex, i32, ptr, i32, ptr, %struct.list_head, %struct.mutex, ptr, i32, i32 }
%struct.drm_exynos_g2d_set_cmdlist = type { i64, i64, i32, i32, i64, i64 }
%struct.g2d_cmdlist_node = type { %struct.list_head, ptr, i32, %struct.g2d_buf_info, ptr }
%struct.g2d_buf_info = type { i32, [6 x i32], [6 x ptr], [6 x i32], [6 x %struct.g2d_buf_desc] }
%struct.g2d_buf_desc = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_exynos_pending_g2d_event = type { %struct.drm_pending_event, %struct.drm_exynos_g2d_event }
%struct.drm_pending_event = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.drm_exynos_g2d_event = type { %struct.drm_event, i64, i32, i32, i32, i32 }
%struct.drm_event = type { i32, i32 }
%struct.g2d_cmdlist = type { i32, [254 x i32], i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_exynos_file_private = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.drm_exynos_g2d_userptr = type { i32, i32 }
%struct.exynos_drm_gem = type { %struct.drm_gem_object, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.g2d_cmdlist_userptr = type { %struct.list_head, i32, i32, i32, ptr, i32, ptr, %struct.refcount_struct, i8, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.g2d_runqueue_node = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.completion, i32 }
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
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.timespec64 = type { i64, i32 }

@exynos_g2d_set_cmdlist_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"number of submitted G2D commands exceeds limit\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"exynos_g2d_set_cmdlist_ioctl\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/exynos/exynos_drm_g2d.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_g2d_set_cmdlist_ioctl._entry_ptr = internal global ptr @exynos_g2d_set_cmdlist_ioctl._entry, section ".printk_index", align 4
@exynos_g2d_set_cmdlist_ioctl._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1232, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cmdlist size is too big\0A\00", [39 x i8] zeroinitializer }, align 32
@exynos_g2d_set_cmdlist_ioctl._entry_ptr.7 = internal global ptr @exynos_g2d_set_cmdlist_ioctl._entry.5, section ".printk_index", align 4
@exynos_g2d_exec_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1324, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"there is no inuse cmdlist\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exynos_g2d_exec_ioctl\00", [42 x i8] zeroinitializer }, align 32
@exynos_g2d_exec_ioctl._entry_ptr = internal global ptr @exynos_g2d_exec_ioctl._entry, section ".printk_index", align 4
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exynos-drm-g2d\00", [17 x i8] zeroinitializer }, align 32
@exynos_g2d_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-g2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-g2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@g2d_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @g2d_suspend, ptr @g2d_resume, ptr @g2d_suspend, ptr @g2d_resume, ptr @g2d_suspend, ptr @g2d_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @g2d_runtime_suspend, ptr @g2d_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@g2d_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @g2d_probe, ptr @g2d_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_g2d_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @g2d_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@g2d_get_cmdlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 338, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"there is no free cmdlist\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"g2d_get_cmdlist\00", [16 x i8] zeroinitializer }, align 32
@g2d_get_cmdlist._entry_ptr = internal global ptr @g2d_get_cmdlist._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@g2d_check_reg_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1123, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bad register offset: 0x%lx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"g2d_check_reg_offset\00", [43 x i8] zeroinitializer }, align 32
@g2d_check_reg_offset._entry_ptr = internal global ptr @g2d_check_reg_offset._entry, section ".printk_index", align 4
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* Unknown register offset![%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* width[%d] is out of range!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* height[%d] is out of range!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"*ERROR* last engine access position [%lu] is out of range [%lu]!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* invalid userptr size.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"*ERROR* failed to get user pages from userptr.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* failed to get sgt from pages.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* failed to map sgt with dma region.\0A\00", [52 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@g2d_wait_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1004, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wait timed out, resetting engine...\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"g2d_wait_finish\00", [16 x i8] zeroinitializer }, align 32
@g2d_wait_finish._entry_ptr = internal global ptr @g2d_wait_finish._entry, section ".printk_index", align 4
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"g2d_runqueue_slab\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"g2d\00", [28 x i8] zeroinitializer }, align 32
@g2d_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1468, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to create workqueue\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"g2d_probe\00", [22 x i8] zeroinitializer }, align 32
@g2d_probe._entry_ptr = internal global ptr @g2d_probe._entry, section ".printk_index", align 4
@g2d_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&g2d->runqueue_work)\00", [57 x i8] zeroinitializer }, align 32
@g2d_probe.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&g2d->cmdlist_mutex\00", [44 x i8] zeroinitializer }, align 32
@g2d_probe.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&g2d->runqueue_mutex\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fimg2d\00", [25 x i8] zeroinitializer }, align 32
@g2d_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.2, i32 1482, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get gate clock\0A\00", [38 x i8] zeroinitializer }, align 32
@g2d_probe._entry_ptr.42 = internal global ptr @g2d_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"drm_g2d\00", [24 x i8] zeroinitializer }, align 32
@g2d_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.33, ptr @.str.2, i32 1508, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq request failed\0A\00", [44 x i8] zeroinitializer }, align 32
@g2d_probe._entry_ptr.46 = internal global ptr @g2d_probe._entry.44, section ".printk_index", align 4
@g2d_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @g2d_bind, ptr @g2d_unbind }, [24 x i8] zeroinitializer }, align 32
@g2d_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.33, ptr @.str.2, i32 1518, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register drm g2d device\0A\00", [61 x i8] zeroinitializer }, align 32
@g2d_probe._entry_ptr.49 = internal global ptr @g2d_probe._entry.47, section ".printk_index", align 4
@g2d_runqueue_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 900, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable G2D device.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"g2d_runqueue_worker\00", [44 x i8] zeroinitializer }, align 32
@g2d_runqueue_worker._entry_ptr = internal global ptr @g2d_runqueue_worker._entry, section ".printk_index", align 4
@g2d_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1412, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cmdlist init failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"g2d_bind\00", [23 x i8] zeroinitializer }, align 32
@g2d_bind._entry_ptr = internal global ptr @g2d_bind._entry, section ".printk_index", align 4
@g2d_bind._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 1418, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable iommu.\0A\00", [39 x i8] zeroinitializer }, align 32
@g2d_bind._entry_ptr.56 = internal global ptr @g2d_bind._entry.54, section ".printk_index", align 4
@g2d_bind._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 1425, ptr @.str.59, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"The Exynos G2D (ver %d.%d) successfully registered.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@g2d_bind._entry_ptr.60 = internal global ptr @g2d_bind._entry.57, section ".printk_index", align 4
@g2d_init_cmdlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 285, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate dma memory\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"g2d_init_cmdlist\00", [47 x i8] zeroinitializer }, align 32
@g2d_init_cmdlist._entry_ptr = internal global ptr @g2d_init_cmdlist._entry, section ".printk_index", align 4
@g2d_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1596, ptr @.str.65, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable clock.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"g2d_runtime_resume\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@g2d_runtime_resume._entry_ptr = internal global ptr @g2d_runtime_resume._entry, section ".printk_index", align 4
@switch.table.g2d_check_buf_desc_is_valid = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 4, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 772, i64 776, i64 780, i64 784, i64 788, i64 792, i64 1028, i64 1032, i64 1036, i64 1040, i64 1044, i64 1048, i64 1280, i64 1312]
@__sancov_gen_cov_switch_values.66 = internal global [16 x i64] [i64 14, i64 32, i64 772, i64 776, i64 780, i64 784, i64 788, i64 792, i64 1028, i64 1032, i64 1036, i64 1040, i64 1044, i64 1048, i64 1280, i64 1312]
@__sancov_gen_cov_switch_values.67 = internal global [9 x i64] [i64 7, i64 32, i64 776, i64 780, i64 784, i64 788, i64 792, i64 1028, i64 1032]
@__sancov_gen_cov_switch_values.68 = internal global [9 x i64] [i64 7, i64 32, i64 780, i64 784, i64 788, i64 792, i64 1028, i64 1032, i64 1036]
@__sancov_gen_cov_switch_values.69 = internal global [9 x i64] [i64 7, i64 32, i64 784, i64 788, i64 792, i64 1028, i64 1032, i64 1036, i64 1040]
@__sancov_gen_cov_switch_values.70 = internal global [9 x i64] [i64 7, i64 32, i64 788, i64 792, i64 1028, i64 1032, i64 1036, i64 1040, i64 1044]
@__sancov_gen_cov_switch_values.71 = internal global [16 x i64] [i64 14, i64 32, i64 772, i64 776, i64 780, i64 784, i64 788, i64 792, i64 1028, i64 1032, i64 1036, i64 1040, i64 1044, i64 1048, i64 1280, i64 1312]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1164, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1232, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1324, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1618, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"exynos_g2d_match\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1607, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant [11 x i8] c"g2d_pm_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1602, i32 32 }
@___asan_gen_.116 = private unnamed_addr constant [11 x i8] c"g2d_driver\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1614, i32 24 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 338, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 230, i32 6 }
@___asan_gen_.132 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 214, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 156, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1123, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 593, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 646, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 653, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 673, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 428, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 483, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 503, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 512, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 87, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1004, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1459, i32 41 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1466, i32 19 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1468, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1473, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1477, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1478, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1480, i32 36 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1482, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1506, i32 9 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1508, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [18 x i8] c"g2d_component_ops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1444, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1518, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 900, i32 5 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1412, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1418, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1424, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 285, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.300 = private constant [43 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_g2d.c\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1596, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [41 x i8] c"switch.table.g2d_check_buf_desc_is_valid\00", align 1
@llvm.compiler.used = appending global [93 x ptr] [ptr @exynos_g2d_exec_ioctl._entry, ptr @exynos_g2d_exec_ioctl._entry_ptr, ptr @exynos_g2d_set_cmdlist_ioctl._entry, ptr @exynos_g2d_set_cmdlist_ioctl._entry.5, ptr @exynos_g2d_set_cmdlist_ioctl._entry_ptr, ptr @exynos_g2d_set_cmdlist_ioctl._entry_ptr.7, ptr @g2d_bind._entry, ptr @g2d_bind._entry.54, ptr @g2d_bind._entry.57, ptr @g2d_bind._entry_ptr, ptr @g2d_bind._entry_ptr.56, ptr @g2d_bind._entry_ptr.60, ptr @g2d_check_reg_offset._entry, ptr @g2d_check_reg_offset._entry_ptr, ptr @g2d_get_cmdlist._entry, ptr @g2d_get_cmdlist._entry_ptr, ptr @g2d_init_cmdlist._entry, ptr @g2d_init_cmdlist._entry_ptr, ptr @g2d_probe._entry, ptr @g2d_probe._entry.40, ptr @g2d_probe._entry.44, ptr @g2d_probe._entry.47, ptr @g2d_probe._entry_ptr, ptr @g2d_probe._entry_ptr.42, ptr @g2d_probe._entry_ptr.46, ptr @g2d_probe._entry_ptr.49, ptr @g2d_runqueue_worker._entry, ptr @g2d_runqueue_worker._entry_ptr, ptr @g2d_runtime_resume._entry, ptr @g2d_runtime_resume._entry_ptr, ptr @g2d_wait_finish._entry, ptr @g2d_wait_finish._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @exynos_g2d_match, ptr @g2d_pm_ops, ptr @g2d_driver, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @init_completion.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @g2d_probe.__key, ptr @.str.34, ptr @g2d_probe.__key.35, ptr @.str.36, ptr @g2d_probe.__key.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @g2d_component_ops, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @switch.table.g2d_check_buf_desc_is_valid], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_g2d_set_cmdlist_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_g2d_set_cmdlist_ioctl._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_g2d_exec_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_g2d_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_get_cmdlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_check_reg_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_wait_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_runqueue_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_bind._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_bind._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_init_cmdlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.g2d_check_buf_desc_is_valid to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @exynos_g2d_get_ver_ioctl(ptr nocapture noundef readnone %drm_dev, ptr nocapture noundef writeonly %data, ptr nocapture noundef readnone %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %data, align 4
  %minor = getelementptr inbounds %struct.drm_exynos_g2d_get_ver, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %minor, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_g2d_set_cmdlist_ioctl(ptr noundef %drm_dev, ptr nocapture noundef readonly %data, ptr noundef %file) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %g2d_dev = getelementptr inbounds %struct.exynos_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %g2d_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %g2d_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cmdlist_mutex.i = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %cmdlist_mutex.i, i32 noundef 0) #11
  %free_cmdlist.i = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 10
  %10 = ptrtoint ptr %free_cmdlist.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %free_cmdlist.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %free_cmdlist.i
  br i1 %cmp.i.not.i, label %g2d_get_cmdlist.exit.thread, label %if.end.i

g2d_get_cmdlist.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.11) #14
  tail call void @mutex_unlock(ptr noundef %cmdlist_mutex.i) #11
  br label %cleanup150

if.end.i:                                         ; preds = %entry
  %call.i.i.i282 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #11
  br i1 %call.i.i.i282, label %if.end.i.i.i, label %if.end.i.g2d_get_cmdlist.exit_crit_edge

if.end.i.g2d_get_cmdlist.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_cmdlist.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %g2d_get_cmdlist.exit

g2d_get_cmdlist.exit:                             ; preds = %if.end.i.i.i, %if.end.i.g2d_get_cmdlist.exit_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %11, ptr %11, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %11, ptr %prev.i3.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %cmdlist_mutex.i) #11
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %g2d_get_cmdlist.exit.cleanup150_crit_edge, label %if.end

g2d_get_cmdlist.exit.cleanup150_crit_edge:        ; preds = %g2d_get_cmdlist.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup150

if.end:                                           ; preds = %g2d_get_cmdlist.exit
  %cmd_nr = getelementptr inbounds %struct.drm_exynos_g2d_set_cmdlist, ptr %data, i32 0, i32 2
  %20 = ptrtoint ptr %cmd_nr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %21)
  %cmp = icmp ugt i32 %21, 254
  br i1 %cmp, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %cmd_buf_nr = getelementptr inbounds %struct.drm_exynos_g2d_set_cmdlist, ptr %data, i32 0, i32 3
  %22 = ptrtoint ptr %cmd_buf_nr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmd_buf_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %23)
  %cmp2 = icmp ugt i32 %23, 254
  br i1 %cmp2, label %lor.lhs.false.do.end_crit_edge, label %if.end4

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str) #14
  br label %cleanup150

if.end4:                                          ; preds = %lor.lhs.false
  %event = getelementptr inbounds %struct.g2d_cmdlist_node, ptr %11, i32 0, i32 4
  %26 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %event, align 4
  %event_type = getelementptr inbounds %struct.drm_exynos_g2d_set_cmdlist, ptr %data, i32 0, i32 4
  %27 = ptrtoint ptr %event_type to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %event_type, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %cmp5.not = icmp eq i64 %28, 0
  br i1 %cmp5.not, label %if.end4.if.end24_crit_edge, label %if.then6

if.end4.if.end24_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then6:                                         ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 72) #15
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.then6.err_crit_edge, label %if.end10

if.then6.err_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end10:                                         ; preds = %if.then6
  %event11 = getelementptr inbounds %struct.drm_exynos_pending_g2d_event, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %event11 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -2147483648, ptr %event11, align 8
  %length = getelementptr inbounds %struct.drm_exynos_pending_g2d_event, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 32, ptr %length, align 4
  %user_data = getelementptr inbounds %struct.drm_exynos_g2d_set_cmdlist, ptr %data, i32 0, i32 5
  %32 = ptrtoint ptr %user_data to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %user_data, align 8
  %user_data15 = getelementptr inbounds %struct.drm_exynos_pending_g2d_event, ptr %call7.i.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %user_data15 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %user_data15, align 8
  %call19 = tail call i32 @drm_event_reserve_init(ptr noundef %drm_dev, ptr noundef %file, ptr noundef nonnull %call7.i.i, ptr noundef %event11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %err

if.end22:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %event, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.end4.if.end24_crit_edge
  %cmdlist25 = getelementptr inbounds %struct.g2d_cmdlist_node, ptr %11, i32 0, i32 1
  %36 = ptrtoint ptr %cmdlist25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cmdlist25, align 4
  %last = getelementptr inbounds %struct.g2d_cmdlist, ptr %37, i32 0, i32 2
  %data26 = getelementptr inbounds %struct.g2d_cmdlist, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %data26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %data26, align 4
  %arrayidx31 = getelementptr %struct.g2d_cmdlist, ptr %37, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %arrayidx31, align 4
  %arrayidx35 = getelementptr %struct.g2d_cmdlist, ptr %37, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 772, ptr %arrayidx35, align 4
  %41 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %last, align 4
  %arrayidx39 = getelementptr %struct.g2d_cmdlist, ptr %37, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx39, align 4
  %43 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %event, align 4
  %tobool41.not = icmp eq ptr %44, null
  %arrayidx62 = getelementptr %struct.g2d_cmdlist, ptr %37, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %arrayidx62, align 4
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx54 = getelementptr %struct.g2d_cmdlist, ptr %37, i32 0, i32 1, i32 6
  %46 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 144, ptr %arrayidx54, align 4
  %47 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 8, ptr %last, align 4
  %arrayidx58 = getelementptr %struct.g2d_cmdlist, ptr %37, i32 0, i32 1, i32 7
  %48 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %arrayidx58, align 4
  br label %if.end67

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 6, ptr %last, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then42
  %.sink = phi i32 [ 8, %if.else ], [ 10, %if.then42 ]
  %50 = getelementptr %struct.g2d_cmdlist, ptr %37, i32 0, i32 1, i32 5
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink, ptr %50, align 4
  %52 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %last, align 4
  %54 = ptrtoint ptr %cmd_nr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cmd_nr, align 8
  %56 = ptrtoint ptr %cmd_buf_nr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cmd_buf_nr, align 4
  %reass.add = add i32 %57, %55
  %reass.mul = shl i32 %reass.add, 1
  %add72 = add i32 %53, -253
  %58 = add i32 %add72, %reass.mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %58)
  %cmp74 = icmp ult i32 %58, -255
  br i1 %cmp74, label %do.end78, label %if.end80

do.end78:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.6) #14
  br label %err_free_event

if.end80:                                         ; preds = %if.end67
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %data, align 8
  %conv = trunc i64 %62 to i32
  %63 = inttoptr i32 %conv to ptr
  %add.ptr = getelementptr i32, ptr %data26, i32 %53
  %mul85 = shl i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul85)
  %cmp9.i.i = icmp slt i32 %mul85, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end80
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.err_free_event_crit_edge, label %if.then27.i.i, !prof !143

land.rhs16.i.i.err_free_event_crit_edge:          ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_event

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %err_free_event

if.then.i.i.i:                                    ; preds = %if.end80
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %mul85, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %64 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %63, i32 %mul85, i32 -1226833920) #16, !srcloc !144
  %asmresult.i.i = extractvalue { i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !143

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %mul85) #11
  %65 = tail call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i.i.i.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 4
  %67 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !145
  %and.i.i.i.i = and i32 %67, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %63, i32 noundef %mul85) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #11, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul85, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul85, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end89, label %if.then11.i.i, !prof !143

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %mul85, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %68 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %err_free_event

if.end89:                                         ; preds = %if.end.i.i
  %69 = ptrtoint ptr %cmd_nr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cmd_nr, align 8
  %mul91 = shl i32 %70, 1
  %71 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %last, align 4
  %add93 = add i32 %72, %mul91
  store i32 %add93, ptr %last, align 4
  %73 = load i32, ptr %cmd_nr, align 8
  %call95 = tail call fastcc i32 @g2d_check_reg_offset(ptr noundef %7, ptr noundef nonnull %11, i32 noundef %73, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.end89.err_free_event_crit_edge, label %if.end99

if.end89.err_free_event_crit_edge:                ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_event

if.end99:                                         ; preds = %if.end89
  %74 = ptrtoint ptr %cmd_buf_nr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cmd_buf_nr, align 4
  %buf_info = getelementptr inbounds %struct.g2d_cmdlist_node, ptr %11, i32 0, i32 3
  %76 = ptrtoint ptr %buf_info to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %buf_info, align 4
  %77 = load i32, ptr %cmd_buf_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool102.not = icmp eq i32 %77, 0
  br i1 %tobool102.not, label %if.end99.if.end131_crit_edge, label %if.then103

if.end99.if.end131_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.then103:                                       ; preds = %if.end99
  %cmd_buf104 = getelementptr inbounds %struct.drm_exynos_g2d_set_cmdlist, ptr %data, i32 0, i32 1
  %78 = ptrtoint ptr %cmd_buf104 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %cmd_buf104, align 8
  %conv105 = trunc i64 %79 to i32
  %80 = inttoptr i32 %conv105 to ptr
  %81 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %last, align 4
  %add.ptr109 = getelementptr i32, ptr %data26, i32 %82
  %mul111 = shl i32 %77, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul111)
  %cmp9.i.i255 = icmp slt i32 %mul111, 0
  br i1 %cmp9.i.i255, label %land.rhs16.i.i258, label %if.then.i.i.i261

land.rhs16.i.i258:                                ; preds = %if.then103
  %.b1.i.i257 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i257, label %land.rhs16.i.i258.err_free_event_crit_edge, label %if.then27.i.i259, !prof !143

land.rhs16.i.i258.err_free_event_crit_edge:       ; preds = %land.rhs16.i.i258
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_event

if.then27.i.i259:                                 ; preds = %land.rhs16.i.i258
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %err_free_event

if.then.i.i.i261:                                 ; preds = %if.then103
  tail call void @__check_object_size(ptr noundef %add.ptr109, i32 noundef %mul111, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #11
  %call.i.i262 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i262, label %if.then.i.i.i261.if.end.i.i276_crit_edge, label %land.lhs.true.i.i266

if.then.i.i.i261.if.end.i.i276_crit_edge:         ; preds = %if.then.i.i.i261
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i276

land.lhs.true.i.i266:                             ; preds = %if.then.i.i.i261
  %83 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %80, i32 %mul111, i32 -1226833920) #16, !srcloc !144
  %asmresult.i.i264 = extractvalue { i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i264)
  %cmp.i6.i265 = icmp eq i32 %asmresult.i.i264, 0
  br i1 %cmp.i6.i265, label %if.then.i7.i273, label %land.lhs.true.i.i266.if.end.i.i276_crit_edge, !prof !143

land.lhs.true.i.i266.if.end.i.i276_crit_edge:     ; preds = %land.lhs.true.i.i266
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i276

if.then.i7.i273:                                  ; preds = %land.lhs.true.i.i266
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i267 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr109, i32 noundef %mul111) #11
  %84 = tail call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i.i.i.i.i268 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i.i.i.i268 to ptr
  %cpu_domain.i.i.i.i.i269 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 4
  %86 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i269) #9, !srcloc !145
  %and.i.i.i.i270 = and i32 %86, -13
  %or.i.i.i.i271 = or i32 %and.i.i.i.i270, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i271) #11, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  %call1.i.i.i272 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr109, ptr noundef %80, i32 noundef %mul111) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #11, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  br label %if.end.i.i276

if.end.i.i276:                                    ; preds = %if.then.i7.i273, %land.lhs.true.i.i266.if.end.i.i276_crit_edge, %if.then.i.i.i261.if.end.i.i276_crit_edge
  %res.0.i.i274 = phi i32 [ %mul111, %if.then.i.i.i261.if.end.i.i276_crit_edge ], [ %call1.i.i.i272, %if.then.i7.i273 ], [ %mul111, %land.lhs.true.i.i266.if.end.i.i276_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i274)
  %tobool4.not.i.i275 = icmp eq i32 %res.0.i.i274, 0
  br i1 %tobool4.not.i.i275, label %if.end115, label %if.then11.i.i279, !prof !143

if.then11.i.i279:                                 ; preds = %if.end.i.i276
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i277 = sub i32 %mul111, %res.0.i.i274
  %add.ptr.i.i278 = getelementptr i8, ptr %add.ptr109, i32 %sub.i.i277
  %87 = call ptr @memset(ptr %add.ptr.i.i278, i32 0, i32 %res.0.i.i274)
  br label %err_free_event

if.end115:                                        ; preds = %if.end.i.i276
  %88 = ptrtoint ptr %cmd_buf_nr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cmd_buf_nr, align 4
  %mul117 = shl i32 %89, 1
  %90 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %last, align 4
  %add119 = add i32 %91, %mul117
  store i32 %add119, ptr %last, align 4
  %92 = load i32, ptr %cmd_buf_nr, align 4
  %call121 = tail call fastcc i32 @g2d_check_reg_offset(ptr noundef %7, ptr noundef nonnull %11, i32 noundef %92, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.end115.err_free_event_crit_edge, label %if.end125

if.end115.err_free_event_crit_edge:               ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_event

if.end125:                                        ; preds = %if.end115
  %call126 = tail call fastcc i32 @g2d_map_cmdlist_gem(ptr noundef %7, ptr noundef nonnull %11, ptr noundef %file)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %err_unmap, label %if.end125.if.end131_crit_edge

if.end125.if.end131_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.end131:                                        ; preds = %if.end125.if.end131_crit_edge, %if.end99.if.end131_crit_edge
  %93 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %last, align 4
  %inc134 = add i32 %94, 1
  store i32 %inc134, ptr %last, align 4
  %arrayidx135 = getelementptr %struct.g2d_cmdlist, ptr %37, i32 0, i32 1, i32 %94
  %95 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 256, ptr %arrayidx135, align 4
  %96 = load i32, ptr %last, align 4
  %inc138 = add i32 %96, 1
  store i32 %inc138, ptr %last, align 4
  %arrayidx139 = getelementptr %struct.g2d_cmdlist, ptr %37, i32 0, i32 1, i32 %96
  %97 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %arrayidx139, align 4
  %98 = load i32, ptr %last, align 4
  %div248 = lshr i32 %98, 1
  %99 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %div248, ptr %37, align 4
  %arrayidx143 = getelementptr %struct.g2d_cmdlist, ptr %37, i32 0, i32 1, i32 %98
  %100 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %arrayidx143, align 4
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile ptr, ptr %1, align 4
  %cmp.i.not.i286 = icmp eq ptr %102, %1
  br i1 %cmp.i.not.i286, label %if.end131.add_to_list.i_crit_edge, label %if.end.i287

if.end131.add_to_list.i_crit_edge:                ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_to_list.i

if.end.i287:                                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.g2d_cmdlist_node, ptr %11, i32 0, i32 2
  %105 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dma_addr.i, align 4
  %cmdlist.i = getelementptr inbounds %struct.g2d_cmdlist_node, ptr %104, i32 0, i32 1
  %107 = ptrtoint ptr %cmdlist.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cmdlist.i, align 4
  %last.i = getelementptr inbounds %struct.g2d_cmdlist, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %last.i, align 4
  %arrayidx.i = getelementptr %struct.g2d_cmdlist, ptr %108, i32 0, i32 1, i32 %110
  %111 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %106, ptr %arrayidx.i, align 4
  br label %add_to_list.i

add_to_list.i:                                    ; preds = %if.end.i287, %if.end131.add_to_list.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i288 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %11, ptr noundef %113, ptr noundef %1) #11
  br i1 %call.i.i.i288, label %if.end.i.i.i289, label %add_to_list.i.list_add_tail.exit.i_crit_edge

add_to_list.i.list_add_tail.exit.i_crit_edge:     ; preds = %add_to_list.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i289:                                  ; preds = %add_to_list.i
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %11, ptr %prev.i.i, align 4
  %115 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %1, ptr %11, align 4
  %116 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev.i3.i.i, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %11, ptr %113, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i289, %add_to_list.i.list_add_tail.exit.i_crit_edge
  %118 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %event, align 4
  %tobool4.not.i = icmp eq ptr %119, null
  br i1 %tobool4.not.i, label %list_add_tail.exit.i.cleanup150_crit_edge, label %if.then5.i

list_add_tail.exit.i.cleanup150_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup150

if.then5.i:                                       ; preds = %list_add_tail.exit.i
  %link.i = getelementptr inbounds %struct.drm_pending_event, ptr %119, i32 0, i32 5
  %event_list.i = getelementptr inbounds %struct.drm_exynos_file_private, ptr %1, i32 0, i32 1
  %prev.i15.i = getelementptr inbounds %struct.drm_exynos_file_private, ptr %1, i32 0, i32 1, i32 1
  %120 = ptrtoint ptr %prev.i15.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i15.i, align 4
  %call.i.i16.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef %121, ptr noundef %event_list.i) #11
  br i1 %call.i.i16.i, label %if.end.i.i18.i, label %if.then5.i.cleanup150_crit_edge

if.then5.i.cleanup150_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup150

if.end.i.i18.i:                                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %prev.i15.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %link.i, ptr %prev.i15.i, align 4
  %123 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %event_list.i, ptr %link.i, align 4
  %prev3.i.i17.i = getelementptr inbounds %struct.drm_pending_event, ptr %119, i32 0, i32 5, i32 1
  %124 = ptrtoint ptr %prev3.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev3.i.i17.i, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %link.i, ptr %121, align 4
  br label %cleanup150

err_unmap:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @g2d_unmap_cmdlist_gem(ptr noundef %7, ptr noundef nonnull %11)
  br label %err_free_event

err_free_event:                                   ; preds = %err_unmap, %if.end115.err_free_event_crit_edge, %if.then11.i.i279, %if.then27.i.i259, %land.rhs16.i.i258.err_free_event_crit_edge, %if.end89.err_free_event_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.err_free_event_crit_edge, %do.end78
  %ret.1 = phi i32 [ -22, %do.end78 ], [ %call95, %if.end89.err_free_event_crit_edge ], [ %call126, %err_unmap ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.err_free_event_crit_edge ], [ %call121, %if.end115.err_free_event_crit_edge ], [ -14, %if.then11.i.i279 ], [ -14, %if.then27.i.i259 ], [ -14, %land.rhs16.i.i258.err_free_event_crit_edge ]
  %126 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %event, align 4
  %tobool145.not = icmp eq ptr %127, null
  br i1 %tobool145.not, label %err_free_event.err_crit_edge, label %if.then146

err_free_event.err_crit_edge:                     ; preds = %err_free_event
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.then146:                                       ; preds = %err_free_event
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_event_cancel_free(ptr noundef %drm_dev, ptr noundef nonnull %127) #11
  br label %err

err:                                              ; preds = %if.then146, %err_free_event.err_crit_edge, %if.then21, %if.then6.err_crit_edge
  %ret.2 = phi i32 [ %call19, %if.then21 ], [ %ret.1, %if.then146 ], [ %ret.1, %err_free_event.err_crit_edge ], [ -12, %if.then6.err_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %cmdlist_mutex.i, i32 noundef 0) #11
  %call.i.i.i292 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %11) #11
  br i1 %call.i.i.i292, label %if.end.i.i.i295, label %err.__list_del_entry.exit.i.i_crit_edge

err.__list_del_entry.exit.i.i_crit_edge:          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i295:                                  ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %prev.i3.i.i, align 4
  %130 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i294 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %prev1.i.i.i.i294 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %129, ptr %prev1.i.i.i.i294, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %131, ptr %129, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i295, %err.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 10, i32 1
  %134 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %11, ptr noundef %135, ptr noundef %free_cmdlist.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.g2d_put_cmdlist.exit_crit_edge

__list_del_entry.exit.i.i.g2d_put_cmdlist.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_put_cmdlist.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %136 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %11, ptr %prev.i2.i.i, align 4
  %137 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %free_cmdlist.i, ptr %11, align 4
  %138 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev.i3.i.i, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %11, ptr %135, align 4
  br label %g2d_put_cmdlist.exit

g2d_put_cmdlist.exit:                             ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.g2d_put_cmdlist.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmdlist_mutex.i) #11
  br label %cleanup150

cleanup150:                                       ; preds = %g2d_put_cmdlist.exit, %if.end.i.i18.i, %if.then5.i.cleanup150_crit_edge, %list_add_tail.exit.i.cleanup150_crit_edge, %do.end, %g2d_get_cmdlist.exit.cleanup150_crit_edge, %g2d_get_cmdlist.exit.thread
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.2, %g2d_put_cmdlist.exit ], [ -12, %g2d_get_cmdlist.exit.cleanup150_crit_edge ], [ -12, %g2d_get_cmdlist.exit.thread ], [ 0, %list_add_tail.exit.i.cleanup150_crit_edge ], [ 0, %if.then5.i.cleanup150_crit_edge ], [ 0, %if.end.i.i18.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_event_reserve_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @g2d_check_reg_offset(ptr nocapture noundef readonly %g2d, ptr nocapture noundef %node, i32 noundef %nr, i1 noundef zeroext %for_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdlist1 = getelementptr inbounds %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 1
  %0 = ptrtoint ptr %cmdlist1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmdlist1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp169 = icmp sgt i32 %nr, 0
  br i1 %cmp169, label %for.body.lr.ph, label %entry.cleanup76_crit_edge

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

for.body.lr.ph:                                   ; preds = %entry
  %last = getelementptr inbounds %struct.g2d_cmdlist, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last, align 4
  %add = add nuw nsw i32 %i.0170, 1
  %mul.neg = mul i32 %add, -2
  %sub = add i32 %3, %mul.neg
  %arrayidx = getelementptr %struct.g2d_cmdlist, ptr %1, i32 0, i32 1, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, 4095
  %6 = add nsw i32 %and, -260
  call void @__sanitizer_cov_trace_const_cmp4(i32 1917, i32 %6)
  %7 = icmp ult i32 %6, 1917
  %rem = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond135 = select i1 %7, i1 %tobool.not, i1 false
  br i1 %or.cond135, label %if.end6, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end6:                                          ; preds = %for.body
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 772, label %if.end6.sw.bb_crit_edge
    i32 792, label %if.end6.sw.bb_crit_edge176
    i32 1028, label %if.end6.sw.bb_crit_edge177
    i32 1048, label %if.end6.sw.bb_crit_edge178
    i32 1280, label %if.end6.sw.bb_crit_edge179
    i32 1312, label %if.end6.sw.bb_crit_edge180
    i32 776, label %if.end6.sw.bb22_crit_edge
    i32 1032, label %if.end6.sw.bb22_crit_edge181
    i32 780, label %if.end6.sw.bb31_crit_edge
    i32 1036, label %if.end6.sw.bb31_crit_edge182
    i32 784, label %if.end6.sw.bb42_crit_edge
    i32 1040, label %if.end6.sw.bb42_crit_edge183
    i32 788, label %if.end6.sw.bb55_crit_edge
    i32 1044, label %if.end6.sw.bb55_crit_edge184
  ]

if.end6.sw.bb55_crit_edge184:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb55

if.end6.sw.bb55_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb55

if.end6.sw.bb42_crit_edge183:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb42

if.end6.sw.bb42_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb42

if.end6.sw.bb31_crit_edge182:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb31

if.end6.sw.bb31_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb31

if.end6.sw.bb22_crit_edge181:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22

if.end6.sw.bb22_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22

if.end6.sw.bb_crit_edge180:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end6.sw.bb_crit_edge179:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end6.sw.bb_crit_edge178:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end6.sw.bb_crit_edge177:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end6.sw.bb_crit_edge176:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end6.sw.bb_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end6.sw.bb_crit_edge, %if.end6.sw.bb_crit_edge176, %if.end6.sw.bb_crit_edge177, %if.end6.sw.bb_crit_edge178, %if.end6.sw.bb_crit_edge179, %if.end6.sw.bb_crit_edge180
  br i1 %for_addr, label %if.end9, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end9:                                          ; preds = %sw.bb
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %and, label %sw.default.i [
    i32 772, label %if.end9.g2d_get_reg_type.exit_crit_edge
    i32 776, label %if.end9.g2d_get_reg_type.exit_crit_edge185
    i32 780, label %if.end9.g2d_get_reg_type.exit_crit_edge186
    i32 784, label %if.end9.g2d_get_reg_type.exit_crit_edge187
    i32 788, label %if.end9.g2d_get_reg_type.exit_crit_edge188
    i32 792, label %sw.bb1.i
    i32 1028, label %if.end9.sw.bb2.i_crit_edge
    i32 1032, label %if.end9.sw.bb2.i_crit_edge189
    i32 1036, label %if.end9.sw.bb2.i_crit_edge190
    i32 1040, label %if.end9.sw.bb2.i_crit_edge191
    i32 1044, label %if.end9.sw.bb2.i_crit_edge192
    i32 1048, label %sw.bb3.i
    i32 1280, label %sw.bb4.i
    i32 1312, label %sw.bb5.i
  ]

if.end9.sw.bb2.i_crit_edge192:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

if.end9.sw.bb2.i_crit_edge191:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

if.end9.sw.bb2.i_crit_edge190:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

if.end9.sw.bb2.i_crit_edge189:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

if.end9.sw.bb2.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

if.end9.g2d_get_reg_type.exit_crit_edge188:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit

if.end9.g2d_get_reg_type.exit_crit_edge187:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit

if.end9.g2d_get_reg_type.exit_crit_edge186:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit

if.end9.g2d_get_reg_type.exit_crit_edge185:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit

if.end9.g2d_get_reg_type.exit_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit

sw.bb1.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit

sw.bb2.i:                                         ; preds = %if.end9.sw.bb2.i_crit_edge, %if.end9.sw.bb2.i_crit_edge189, %if.end9.sw.bb2.i_crit_edge190, %if.end9.sw.bb2.i_crit_edge191, %if.end9.sw.bb2.i_crit_edge192
  br label %g2d_get_reg_type.exit

sw.bb3.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit

sw.bb4.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit

sw.bb5.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit

sw.default.i:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %g2d, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, i32 noundef %and) #11
  br label %g2d_get_reg_type.exit

g2d_get_reg_type.exit:                            ; preds = %sw.default.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end9.g2d_get_reg_type.exit_crit_edge, %if.end9.g2d_get_reg_type.exit_crit_edge185, %if.end9.g2d_get_reg_type.exit_crit_edge186, %if.end9.g2d_get_reg_type.exit_crit_edge187, %if.end9.g2d_get_reg_type.exit_crit_edge188
  %reg_type.0.i = phi i32 [ -1, %sw.default.i ], [ 5, %sw.bb5.i ], [ 4, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.end9.g2d_get_reg_type.exit_crit_edge ], [ 0, %if.end9.g2d_get_reg_type.exit_crit_edge185 ], [ 0, %if.end9.g2d_get_reg_type.exit_crit_edge186 ], [ 0, %if.end9.g2d_get_reg_type.exit_crit_edge187 ], [ 0, %if.end9.g2d_get_reg_type.exit_crit_edge188 ]
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool13.not = icmp sgt i32 %13, -1
  %arrayidx20 = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 3, i32 %reg_type.0.i
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %g2d_get_reg_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %arrayidx20, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %and18 = and i32 %16, 2147483647
  store i32 %and18, ptr %arrayidx, align 4
  br label %cleanup

if.else:                                          ; preds = %g2d_get_reg_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %arrayidx20, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %if.end6.sw.bb22_crit_edge, %if.end6.sw.bb22_crit_edge181
  br i1 %for_addr, label %sw.bb22.do.end_crit_edge, label %if.end25

sw.bb22.do.end_crit_edge:                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end25:                                         ; preds = %sw.bb22
  %18 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %and, label %sw.default.i141 [
    i32 1032, label %if.end25.sw.bb2.i137_crit_edge
    i32 776, label %if.end25.g2d_get_reg_type.exit143_crit_edge
    i32 780, label %if.end25.g2d_get_reg_type.exit143_crit_edge193
    i32 784, label %if.end25.g2d_get_reg_type.exit143_crit_edge194
    i32 788, label %if.end25.g2d_get_reg_type.exit143_crit_edge195
    i32 792, label %sw.bb1.i136
    i32 1028, label %if.end25.sw.bb2.i137_crit_edge196
  ]

if.end25.sw.bb2.i137_crit_edge196:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i137

if.end25.g2d_get_reg_type.exit143_crit_edge195:   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit143

if.end25.g2d_get_reg_type.exit143_crit_edge194:   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit143

if.end25.g2d_get_reg_type.exit143_crit_edge193:   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit143

if.end25.g2d_get_reg_type.exit143_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit143

if.end25.sw.bb2.i137_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i137

sw.bb1.i136:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit143

sw.bb2.i137:                                      ; preds = %if.end25.sw.bb2.i137_crit_edge, %if.end25.sw.bb2.i137_crit_edge196
  br label %g2d_get_reg_type.exit143

sw.default.i141:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %g2d, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, i32 noundef %and) #11
  br label %g2d_get_reg_type.exit143

g2d_get_reg_type.exit143:                         ; preds = %sw.default.i141, %sw.bb2.i137, %sw.bb1.i136, %if.end25.g2d_get_reg_type.exit143_crit_edge, %if.end25.g2d_get_reg_type.exit143_crit_edge193, %if.end25.g2d_get_reg_type.exit143_crit_edge194, %if.end25.g2d_get_reg_type.exit143_crit_edge195
  %reg_type.0.i142 = phi i32 [ -1, %sw.default.i141 ], [ 2, %sw.bb2.i137 ], [ 1, %sw.bb1.i136 ], [ 0, %if.end25.g2d_get_reg_type.exit143_crit_edge ], [ 0, %if.end25.g2d_get_reg_type.exit143_crit_edge193 ], [ 0, %if.end25.g2d_get_reg_type.exit143_crit_edge194 ], [ 0, %if.end25.g2d_get_reg_type.exit143_crit_edge195 ]
  %add29 = add i32 %sub, 1
  %arrayidx30 = getelementptr %struct.g2d_cmdlist, ptr %1, i32 0, i32 1, i32 %add29
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx30, align 4
  %stride = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 4, i32 %reg_type.0.i142, i32 1
  %23 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %stride, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %if.end6.sw.bb31_crit_edge, %if.end6.sw.bb31_crit_edge182
  br i1 %for_addr, label %sw.bb31.do.end_crit_edge, label %if.end34

sw.bb31.do.end_crit_edge:                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end34:                                         ; preds = %sw.bb31
  %24 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %and, label %sw.default.i149 [
    i32 1036, label %if.end34.sw.bb2.i145_crit_edge
    i32 1032, label %if.end34.sw.bb2.i145_crit_edge197
    i32 780, label %if.end34.g2d_get_reg_type.exit151_crit_edge
    i32 784, label %if.end34.g2d_get_reg_type.exit151_crit_edge198
    i32 788, label %if.end34.g2d_get_reg_type.exit151_crit_edge199
    i32 792, label %sw.bb1.i144
    i32 1028, label %if.end34.sw.bb2.i145_crit_edge200
  ]

if.end34.sw.bb2.i145_crit_edge200:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i145

if.end34.g2d_get_reg_type.exit151_crit_edge199:   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit151

if.end34.g2d_get_reg_type.exit151_crit_edge198:   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit151

if.end34.g2d_get_reg_type.exit151_crit_edge:      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit151

if.end34.sw.bb2.i145_crit_edge197:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i145

if.end34.sw.bb2.i145_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i145

sw.bb1.i144:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit151

sw.bb2.i145:                                      ; preds = %if.end34.sw.bb2.i145_crit_edge, %if.end34.sw.bb2.i145_crit_edge197, %if.end34.sw.bb2.i145_crit_edge200
  br label %g2d_get_reg_type.exit151

sw.default.i149:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %g2d, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %26, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, i32 noundef %and) #11
  br label %g2d_get_reg_type.exit151

g2d_get_reg_type.exit151:                         ; preds = %sw.default.i149, %sw.bb2.i145, %sw.bb1.i144, %if.end34.g2d_get_reg_type.exit151_crit_edge, %if.end34.g2d_get_reg_type.exit151_crit_edge198, %if.end34.g2d_get_reg_type.exit151_crit_edge199
  %reg_type.0.i150 = phi i32 [ -1, %sw.default.i149 ], [ 2, %sw.bb2.i145 ], [ 1, %sw.bb1.i144 ], [ 0, %if.end34.g2d_get_reg_type.exit151_crit_edge ], [ 0, %if.end34.g2d_get_reg_type.exit151_crit_edge198 ], [ 0, %if.end34.g2d_get_reg_type.exit151_crit_edge199 ]
  %arrayidx37 = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 4, i32 %reg_type.0.i150
  %add39 = add i32 %sub, 1
  %arrayidx40 = getelementptr %struct.g2d_cmdlist, ptr %1, i32 0, i32 1, i32 %add39
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx40, align 4
  %and41 = and i32 %28, 15
  %29 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and41, ptr %arrayidx37, align 4
  br label %cleanup

sw.bb42:                                          ; preds = %if.end6.sw.bb42_crit_edge, %if.end6.sw.bb42_crit_edge183
  br i1 %for_addr, label %sw.bb42.do.end_crit_edge, label %if.end45

sw.bb42.do.end_crit_edge:                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end45:                                         ; preds = %sw.bb42
  %30 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %and, label %sw.default.i157 [
    i32 1040, label %if.end45.sw.bb2.i153_crit_edge
    i32 1036, label %if.end45.sw.bb2.i153_crit_edge201
    i32 1032, label %if.end45.sw.bb2.i153_crit_edge202
    i32 784, label %if.end45.g2d_get_reg_type.exit159_crit_edge
    i32 788, label %if.end45.g2d_get_reg_type.exit159_crit_edge203
    i32 792, label %sw.bb1.i152
    i32 1028, label %if.end45.sw.bb2.i153_crit_edge204
  ]

if.end45.sw.bb2.i153_crit_edge204:                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i153

if.end45.g2d_get_reg_type.exit159_crit_edge203:   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit159

if.end45.g2d_get_reg_type.exit159_crit_edge:      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit159

if.end45.sw.bb2.i153_crit_edge202:                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i153

if.end45.sw.bb2.i153_crit_edge201:                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i153

if.end45.sw.bb2.i153_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i153

sw.bb1.i152:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit159

sw.bb2.i153:                                      ; preds = %if.end45.sw.bb2.i153_crit_edge, %if.end45.sw.bb2.i153_crit_edge201, %if.end45.sw.bb2.i153_crit_edge202, %if.end45.sw.bb2.i153_crit_edge204
  br label %g2d_get_reg_type.exit159

sw.default.i157:                                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %g2d, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, i32 noundef %and) #11
  br label %g2d_get_reg_type.exit159

g2d_get_reg_type.exit159:                         ; preds = %sw.default.i157, %sw.bb2.i153, %sw.bb1.i152, %if.end45.g2d_get_reg_type.exit159_crit_edge, %if.end45.g2d_get_reg_type.exit159_crit_edge203
  %reg_type.0.i158 = phi i32 [ -1, %sw.default.i157 ], [ 2, %sw.bb2.i153 ], [ 1, %sw.bb1.i152 ], [ 0, %if.end45.g2d_get_reg_type.exit159_crit_edge ], [ 0, %if.end45.g2d_get_reg_type.exit159_crit_edge203 ]
  %add50 = add i32 %sub, 1
  %arrayidx51 = getelementptr %struct.g2d_cmdlist, ptr %1, i32 0, i32 1, i32 %add50
  %33 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx51, align 4
  %and52 = and i32 %34, 8191
  %left_x = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 4, i32 %reg_type.0.i158, i32 2
  %35 = ptrtoint ptr %left_x to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and52, ptr %left_x, align 4
  %and53 = lshr i32 %34, 16
  %shr54 = and i32 %and53, 8191
  %top_y = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 4, i32 %reg_type.0.i158, i32 3
  %36 = ptrtoint ptr %top_y to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr54, ptr %top_y, align 4
  br label %cleanup

sw.bb55:                                          ; preds = %if.end6.sw.bb55_crit_edge, %if.end6.sw.bb55_crit_edge184
  br i1 %for_addr, label %sw.bb55.do.end_crit_edge, label %if.end58

sw.bb55.do.end_crit_edge:                         ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end58:                                         ; preds = %sw.bb55
  %37 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %and, label %sw.default.i165 [
    i32 1044, label %if.end58.sw.bb2.i161_crit_edge
    i32 1040, label %if.end58.sw.bb2.i161_crit_edge205
    i32 1036, label %if.end58.sw.bb2.i161_crit_edge206
    i32 1032, label %if.end58.sw.bb2.i161_crit_edge207
    i32 788, label %if.end58.g2d_get_reg_type.exit167_crit_edge
    i32 792, label %sw.bb1.i160
    i32 1028, label %if.end58.sw.bb2.i161_crit_edge208
  ]

if.end58.sw.bb2.i161_crit_edge208:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i161

if.end58.g2d_get_reg_type.exit167_crit_edge:      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit167

if.end58.sw.bb2.i161_crit_edge207:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i161

if.end58.sw.bb2.i161_crit_edge206:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i161

if.end58.sw.bb2.i161_crit_edge205:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i161

if.end58.sw.bb2.i161_crit_edge:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i161

sw.bb1.i160:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_reg_type.exit167

sw.bb2.i161:                                      ; preds = %if.end58.sw.bb2.i161_crit_edge, %if.end58.sw.bb2.i161_crit_edge205, %if.end58.sw.bb2.i161_crit_edge206, %if.end58.sw.bb2.i161_crit_edge207, %if.end58.sw.bb2.i161_crit_edge208
  br label %g2d_get_reg_type.exit167

sw.default.i165:                                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %g2d, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, i32 noundef %and) #11
  br label %g2d_get_reg_type.exit167

g2d_get_reg_type.exit167:                         ; preds = %sw.default.i165, %sw.bb2.i161, %sw.bb1.i160, %if.end58.g2d_get_reg_type.exit167_crit_edge
  %reg_type.0.i166 = phi i32 [ -1, %sw.default.i165 ], [ 2, %sw.bb2.i161 ], [ 1, %sw.bb1.i160 ], [ 0, %if.end58.g2d_get_reg_type.exit167_crit_edge ]
  %add63 = add i32 %sub, 1
  %arrayidx64 = getelementptr %struct.g2d_cmdlist, ptr %1, i32 0, i32 1, i32 %add63
  %40 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx64, align 4
  %and65 = and i32 %41, 8191
  %right_x = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 4, i32 %reg_type.0.i166, i32 4
  %42 = ptrtoint ptr %right_x to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and65, ptr %right_x, align 4
  %and66 = lshr i32 %41, 16
  %shr67 = and i32 %and66, 8191
  %bottom_y = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 4, i32 %reg_type.0.i166, i32 5
  %43 = ptrtoint ptr %bottom_y to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr67, ptr %bottom_y, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end6
  br i1 %for_addr, label %sw.default.do.end_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.default.do.end_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

cleanup:                                          ; preds = %sw.default.cleanup_crit_edge, %g2d_get_reg_type.exit167, %g2d_get_reg_type.exit159, %g2d_get_reg_type.exit151, %g2d_get_reg_type.exit143, %if.else, %if.then14
  %exitcond.not = icmp eq i32 %add, %nr
  br i1 %exitcond.not, label %cleanup.cleanup76_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.cleanup76_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

do.end:                                           ; preds = %sw.default.do.end_crit_edge, %sw.bb55.do.end_crit_edge, %sw.bb42.do.end_crit_edge, %sw.bb31.do.end_crit_edge, %sw.bb22.do.end_crit_edge, %sw.bb.do.end_crit_edge, %for.body.do.end_crit_edge
  %44 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %g2d, align 4
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.16, i32 noundef %47) #14
  br label %cleanup76

cleanup76:                                        ; preds = %do.end, %cleanup.cleanup76_crit_edge, %entry.cleanup76_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup76_crit_edge ], [ 0, %cleanup.cleanup76_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @g2d_map_cmdlist_gem(ptr nocapture noundef %g2d, ptr nocapture noundef %node, ptr noundef %file) unnamed_addr #2 align 64 {
entry:
  %g2d_userptr = alloca %struct.drm_exynos_g2d_userptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdlist1 = getelementptr inbounds %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 1
  %0 = ptrtoint ptr %cmdlist1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmdlist1, align 4
  %buf_info2 = getelementptr inbounds %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3
  %last = getelementptr inbounds %struct.g2d_cmdlist, ptr %1, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drm_exynos_g2d_userptr, ptr %g2d_userptr, i32 0, i32 1
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %drm_dev.i = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 7
  %current_pool.i = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 19
  %max_pool.i = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 20
  br label %for.cond

for.cond:                                         ; preds = %cleanup41.for.cond_crit_edge, %entry
  %ret.0 = phi i32 [ -1, %entry ], [ %ret.4, %cleanup41.for.cond_crit_edge ]
  %i.0 = phi i32 [ 0, %entry ], [ %add, %cleanup41.for.cond_crit_edge ]
  %3 = ptrtoint ptr %buf_info2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf_info2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %4)
  %cmp = icmp ult i32 %i.0, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup49_crit_edge

for.cond.cleanup49_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup49

for.body:                                         ; preds = %for.cond
  %5 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last, align 4
  %add = add nuw i32 %i.0, 1
  %mul.neg = mul i32 %add, -2
  %sub = add i32 %6, %mul.neg
  %arrayidx = getelementptr %struct.g2d_cmdlist, ptr %1, i32 0, i32 1, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add4 = add i32 %sub, 1
  %arrayidx5 = getelementptr %struct.g2d_cmdlist, ptr %1, i32 0, i32 1, i32 %add4
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5, align 4
  %11 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %8, label %g2d_get_reg_type.exit [
    i32 772, label %for.body.if.end_crit_edge
    i32 776, label %for.body.if.end_crit_edge140
    i32 780, label %for.body.if.end_crit_edge141
    i32 784, label %for.body.if.end_crit_edge142
    i32 788, label %for.body.if.end_crit_edge143
    i32 792, label %sw.bb1.i
    i32 1028, label %for.body.sw.bb2.i_crit_edge
    i32 1032, label %for.body.sw.bb2.i_crit_edge144
    i32 1036, label %for.body.sw.bb2.i_crit_edge145
    i32 1040, label %for.body.sw.bb2.i_crit_edge146
    i32 1044, label %for.body.sw.bb2.i_crit_edge147
    i32 1048, label %sw.bb3.i
    i32 1280, label %sw.bb4.i
    i32 1312, label %sw.bb5.i
  ]

for.body.sw.bb2.i_crit_edge147:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

for.body.sw.bb2.i_crit_edge146:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

for.body.sw.bb2.i_crit_edge145:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

for.body.sw.bb2.i_crit_edge144:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

for.body.sw.bb2.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

for.body.if.end_crit_edge143:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.if.end_crit_edge142:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.if.end_crit_edge141:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.if.end_crit_edge140:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb1.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb2.i:                                         ; preds = %for.body.sw.bb2.i_crit_edge, %for.body.sw.bb2.i_crit_edge144, %for.body.sw.bb2.i_crit_edge145, %for.body.sw.bb2.i_crit_edge146, %for.body.sw.bb2.i_crit_edge147
  br label %if.end

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb4.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb5.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

g2d_get_reg_type.exit:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %g2d, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, i32 noundef %8) #11
  br label %err

if.end:                                           ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %for.body.if.end_crit_edge, %for.body.if.end_crit_edge140, %for.body.if.end_crit_edge141, %for.body.if.end_crit_edge142, %for.body.if.end_crit_edge143
  %reg_type.0.i.ph = phi i32 [ 0, %for.body.if.end_crit_edge ], [ 0, %for.body.if.end_crit_edge140 ], [ 0, %for.body.if.end_crit_edge141 ], [ 0, %for.body.if.end_crit_edge142 ], [ 0, %for.body.if.end_crit_edge143 ], [ 1, %sw.bb1.i ], [ 2, %sw.bb2.i ], [ 3, %sw.bb3.i ], [ 4, %sw.bb4.i ], [ 5, %sw.bb5.i ]
  %arrayidx7 = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 4, i32 %reg_type.0.i.ph
  %arrayidx8 = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 3, i32 %reg_type.0.i.ph
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp9 = icmp eq i32 %15, 1
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %call11 = call ptr @exynos_drm_gem_get(ptr noundef %file, i32 noundef %10) #11
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.then10.err_crit_edge, label %if.end13

if.then10.err_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end13:                                         ; preds = %if.then10
  %size = getelementptr inbounds %struct.exynos_drm_gem, ptr %call11, i32 0, i32 2
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %call14 = call fastcc zeroext i1 @g2d_check_buf_desc_is_valid(ptr noundef %g2d, ptr noundef %arrayidx7, i32 noundef %reg_type.0.i.ph, i32 noundef %17)
  br i1 %call14, label %cleanup, label %if.then.i.i2

if.then.i.i2:                                     ; preds = %if.end13
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call11, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  call void @llvm.prefetch.p0(ptr nonnull %call11, i32 1, i32 3, i32 1) #11
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call11, ptr nonnull %call11, i32 1, ptr nonnull elementtype(i32) %call11) #11, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.err_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !143

if.end5.i.i.i.i.i.i.i.err_crit_edge:              ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %call11, i32 noundef 3) #11
  br label %err

if.then.i.i.i.i:                                  ; preds = %if.then.i.i2
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  call void @drm_gem_object_free(ptr noundef nonnull %call11) #11
  br label %err

cleanup:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %dma_addr = getelementptr inbounds %struct.exynos_drm_gem, ptr %call11, i32 0, i32 5
  %arrayidx17 = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 2, i32 %reg_type.0.i.ph
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call11, ptr %arrayidx17, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %g2d_userptr) #11
  %20 = ptrtoint ptr %g2d_userptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %g2d_userptr, align 4, !annotation !151
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %2, align 4, !annotation !151
  %22 = inttoptr i32 %10 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.else.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.else.if.then11.i.i_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.else
  %23 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %22, i32 8, i32 -1226833920) #16, !srcloc !144
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !143

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %g2d_userptr, i32 noundef 8) #11
  %24 = call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !145
  %and.i.i.i.i = and i32 %26, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %g2d_userptr, ptr noundef %22, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #11, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end21, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !143

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.else.if.then11.i.i_crit_edge
  %res.0.i.i18 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.else.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i18
  %add.ptr.i.i = getelementptr i8, ptr %g2d_userptr, i32 %sub.i.i
  %27 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i18)
  br label %cleanup33.thread

if.end21:                                         ; preds = %if.end.i.i
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %2, align 4
  %call23 = call fastcc zeroext i1 @g2d_check_buf_desc_is_valid(ptr noundef %g2d, ptr noundef %arrayidx7, i32 noundef %reg_type.0.i.ph, i32 noundef %29)
  br i1 %call23, label %if.end25, label %if.end21.cleanup33.thread_crit_edge

if.end21.cleanup33.thread_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup33.thread

if.end25:                                         ; preds = %if.end21
  %30 = ptrtoint ptr %g2d_userptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %g2d_userptr, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %2, align 4
  %arrayidx28 = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 2, i32 %reg_type.0.i.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %g2d, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.22) #11
  br label %cleanup33.thread27

if.end.i:                                         ; preds = %if.end25
  %36 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_priv.i, align 4
  %userptr_list.i = getelementptr inbounds %struct.drm_exynos_file_private, ptr %37, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %g2d_userptr.0.in.i = phi ptr [ %userptr_list.i, %if.end.i ], [ %g2d_userptr.0.i, %for.body.i.for.cond.i_crit_edge ]
  %38 = ptrtoint ptr %g2d_userptr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %g2d_userptr.0.i = load ptr, ptr %g2d_userptr.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %g2d_userptr.0.i, %userptr_list.i
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %userptr2.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %g2d_userptr.0.i, i32 0, i32 2
  %39 = ptrtoint ptr %userptr2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %userptr2.i, align 4
  %cmp3.i = icmp eq i32 %40, %31
  br i1 %cmp3.i, label %if.then4.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then4.i:                                       ; preds = %for.body.i
  %size5.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %g2d_userptr.0.i, i32 0, i32 3
  %41 = ptrtoint ptr %size5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %33)
  %cmp6.i = icmp eq i32 %42, %33
  br i1 %cmp6.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.then4.i
  %refcount.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %g2d_userptr.0.i, i32 0, i32 7
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %43 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !152
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then7.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !153

if.then7.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then7.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %44 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i.i = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !143

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then7.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then7.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #11
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %45 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %g2d_userptr.0.i, ptr %arrayidx28, align 4
  %dma_addr.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %g2d_userptr.0.i, i32 0, i32 1
  br label %cleanup33

if.end8.i:                                        ; preds = %if.then4.i
  %out_of_list.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %g2d_userptr.0.i, i32 0, i32 9
  %46 = ptrtoint ptr %out_of_list.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %out_of_list.i, align 1
  %in_pool.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %g2d_userptr.0.i, i32 0, i32 8
  %47 = ptrtoint ptr %in_pool.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %in_pool.i, align 4
  %call.i.i.i3 = call zeroext i1 @__list_del_entry_valid(ptr noundef %g2d_userptr.0.i) #11
  br i1 %call.i.i.i3, label %if.end.i.i.i, label %if.end8.i.list_del_init.exit.i_crit_edge

if.end8.i.list_del_init.exit.i_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %g2d_userptr.0.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %g2d_userptr.0.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %g2d_userptr.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end8.i.list_del_init.exit.i_crit_edge
  %54 = ptrtoint ptr %g2d_userptr.0.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %g2d_userptr.0.i, ptr %g2d_userptr.0.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %g2d_userptr.0.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %g2d_userptr.0.i, ptr %prev.i3.i.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %list_del_init.exit.i, %for.cond.i.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 40) #15
  %tobool17.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool17.not.i, label %for.end.i.cleanup33.thread27_crit_edge, label %if.end20.i

for.end.i.cleanup33.thread27_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup33.thread27

if.end20.i:                                       ; preds = %for.end.i
  %refcount21.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %call7.i.i.i, i32 0, i32 7
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount21.i, i32 noundef 4) #11
  %57 = ptrtoint ptr %refcount21.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 1, ptr %refcount21.i, align 8
  %size22.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %call7.i.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %size22.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %33, ptr %size22.i, align 8
  %and.i = and i32 %31, -4096
  %and23.i = and i32 %31, 4095
  %add.i = add i32 %31, 4095
  %add24.i = add i32 %add.i, %33
  %and25.i = and i32 %add24.i, -4096
  %sub.i = sub i32 %and25.i, %and.i
  %shr.i = lshr exact i32 %sub.i, 12
  %59 = lshr exact i32 %sub.i, 10
  %call.i.i146.i = call noalias ptr @kvmalloc_node(i32 noundef %59, i32 noundef 3264, i32 noundef -1) #17
  %pages.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %call7.i.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i.i146.i, ptr %pages.i, align 4
  %tobool28.not.i = icmp eq ptr %call.i.i146.i, null
  br i1 %tobool28.not.i, label %if.end20.i.err_free.i_crit_edge, label %if.end30.i

if.end20.i.err_free.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free.i

if.end30.i:                                       ; preds = %if.end20.i
  %call32.i = call i32 @pin_user_pages_fast(i32 noundef %and.i, i32 noundef %shr.i, i32 noundef 65553, ptr noundef nonnull %call.i.i146.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call32.i, i32 %shr.i)
  %cmp33.not.i = icmp eq i32 %call32.i, %shr.i
  br i1 %cmp33.not.i, label %if.end39.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end30.i
  %61 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %g2d, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %62, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp36.i = icmp slt i32 %call32.i, 0
  br i1 %cmp36.i, label %if.then34.i.err_destroy_pages.i_crit_edge, label %if.then34.i.err_unpin_pages.i_crit_edge

if.then34.i.err_unpin_pages.i_crit_edge:          ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unpin_pages.i

if.then34.i.err_destroy_pages.i_crit_edge:        ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_pages.i

if.end39.i:                                       ; preds = %if.end30.i
  %npages40.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %call7.i.i.i, i32 0, i32 5
  %63 = ptrtoint ptr %npages40.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %shr.i, ptr %npages40.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i148.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 12) #15
  %tobool42.not.i = icmp eq ptr %call7.i.i148.i, null
  br i1 %tobool42.not.i, label %if.end39.i.err_unpin_pages.i_crit_edge, label %if.end44.i

if.end39.i.err_unpin_pages.i_crit_edge:           ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unpin_pages.i

if.end44.i:                                       ; preds = %if.end39.i
  %65 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pages.i, align 4
  %call.i.i4 = call i32 @sg_alloc_table_from_pages_segment(ptr noundef nonnull %call7.i.i148.i, ptr noundef %66, i32 noundef %shr.i, i32 noundef %and23.i, i32 noundef %33, i32 noundef -1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %cmp47.i = icmp slt i32 %call.i.i4, 0
  br i1 %cmp47.i, label %if.then48.i, label %if.end50.i

if.then48.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %g2d, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %68, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24) #11
  br label %err_free_sgt.i

if.end50.i:                                       ; preds = %if.end44.i
  %sgt51.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %call7.i.i.i, i32 0, i32 6
  %69 = ptrtoint ptr %sgt51.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i148.i, ptr %sgt51.i, align 4
  %70 = ptrtoint ptr %drm_dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %drm_dev.i, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_private.i.i, align 4
  %dma_dev.i.i = getelementptr inbounds %struct.exynos_drm_private, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dma_dev.i.i, align 4
  %call53.i = call i32 @dma_map_sgtable(ptr noundef %75, ptr noundef nonnull %call7.i.i148.i, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end57.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %g2d, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %77, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25) #11
  call void @sg_free_table(ptr noundef nonnull %call7.i.i148.i) #11
  br label %err_free_sgt.i

if.end57.i:                                       ; preds = %if.end50.i
  %78 = ptrtoint ptr %call7.i.i148.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call7.i.i148.i, align 8
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_address.i, align 4
  %dma_addr58.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %call7.i.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %dma_addr58.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %dma_addr58.i, align 8
  %userptr59.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %call7.i.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %userptr59.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %31, ptr %userptr59.i, align 4
  %prev.i.i = getelementptr inbounds %struct.drm_exynos_file_private, ptr %37, i32 0, i32 2, i32 1
  %84 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i, align 4
  %call.i.i149.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %85, ptr noundef %userptr_list.i) #11
  br i1 %call.i.i149.i, label %if.end.i.i150.i, label %if.end57.i.list_add_tail.exit.i_crit_edge

if.end57.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i150.i:                                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %87 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %userptr_list.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev3.i.i.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %call7.i.i.i, ptr %85, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i150.i, %if.end57.i.list_add_tail.exit.i_crit_edge
  %90 = ptrtoint ptr %current_pool.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %current_pool.i, align 4
  %add62.i = add i32 %91, %sub.i
  %92 = ptrtoint ptr %max_pool.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_pool.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add62.i, i32 %93)
  %cmp63.i = icmp ult i32 %add62.i, %93
  br i1 %cmp63.i, label %if.then64.i, label %list_add_tail.exit.i.if.end69.i_crit_edge

list_add_tail.exit.i.if.end69.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i

if.then64.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %current_pool.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add62.i, ptr %current_pool.i, align 4
  %in_pool68.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %call7.i.i.i, i32 0, i32 8
  %95 = ptrtoint ptr %in_pool68.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %in_pool68.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then64.i, %list_add_tail.exit.i.if.end69.i_crit_edge
  %96 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call7.i.i.i, ptr %arrayidx28, align 4
  br label %cleanup33

err_free_sgt.i:                                   ; preds = %if.then55.i, %if.then48.i
  %ret.0.i = phi i32 [ %call.i.i4, %if.then48.i ], [ %call53.i, %if.then55.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i148.i) #11
  br label %err_unpin_pages.i

err_unpin_pages.i:                                ; preds = %err_free_sgt.i, %if.end39.i.err_unpin_pages.i_crit_edge, %if.then34.i.err_unpin_pages.i_crit_edge
  %npages.0.i = phi i32 [ %shr.i, %err_free_sgt.i ], [ %call32.i, %if.then34.i.err_unpin_pages.i_crit_edge ], [ %shr.i, %if.end39.i.err_unpin_pages.i_crit_edge ]
  %ret.1.i = phi i32 [ %ret.0.i, %err_free_sgt.i ], [ -14, %if.then34.i.err_unpin_pages.i_crit_edge ], [ -12, %if.end39.i.err_unpin_pages.i_crit_edge ]
  %97 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pages.i, align 4
  call void @unpin_user_pages(ptr noundef %98, i32 noundef %npages.0.i) #11
  br label %err_destroy_pages.i

err_destroy_pages.i:                              ; preds = %err_unpin_pages.i, %if.then34.i.err_destroy_pages.i_crit_edge
  %ret.2.i = phi i32 [ %call32.i, %if.then34.i.err_destroy_pages.i_crit_edge ], [ %ret.1.i, %err_unpin_pages.i ]
  %99 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pages.i, align 4
  call void @kvfree(ptr noundef %100) #11
  br label %err_free.i

err_free.i:                                       ; preds = %err_destroy_pages.i, %if.end20.i.err_free.i_crit_edge
  %ret.3.i = phi i32 [ %ret.2.i, %err_destroy_pages.i ], [ -12, %if.end20.i.err_free.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %101 = inttoptr i32 %ret.3.i to ptr
  br label %cleanup33

cleanup33.thread:                                 ; preds = %if.end21.cleanup33.thread_crit_edge, %if.then11.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %g2d_userptr) #11
  br label %err

cleanup33.thread27:                               ; preds = %for.end.i.cleanup33.thread27_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %g2d_userptr) #11
  br label %err

cleanup33:                                        ; preds = %err_free.i, %if.end69.i, %refcount_inc.exit.i
  %retval.0.i = phi ptr [ %dma_addr.i, %refcount_inc.exit.i ], [ %101, %err_free.i ], [ %dma_addr58.i, %if.end69.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %g2d_userptr) #11
  br i1 %cmp.i, label %cleanup33.cleanup41_crit_edge, label %cleanup33.if.end36_crit_edge

cleanup33.if.end36_crit_edge:                     ; preds = %cleanup33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

cleanup33.cleanup41_crit_edge:                    ; preds = %cleanup33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup41

if.end36:                                         ; preds = %cleanup33.if.end36_crit_edge, %cleanup
  %addr.2 = phi ptr [ %dma_addr, %cleanup ], [ %retval.0.i, %cleanup33.if.end36_crit_edge ]
  %102 = ptrtoint ptr %addr.2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %addr.2, align 4
  %104 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx5, align 4
  %arrayidx40 = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 1, i32 %i.0
  %105 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %reg_type.0.i.ph, ptr %arrayidx40, align 4
  br label %cleanup41

cleanup41:                                        ; preds = %if.end36, %cleanup33.cleanup41_crit_edge
  %ret.4 = phi i32 [ %ret.0, %if.end36 ], [ -14, %cleanup33.cleanup41_crit_edge ]
  %cleanup.dest.slot.2 = phi i32 [ 0, %if.end36 ], [ 5, %cleanup33.cleanup41_crit_edge ]
  %106 = zext i32 %cleanup.dest.slot.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %cleanup.dest.slot.2, label %cleanup41.cleanup49_crit_edge [
    i32 0, label %cleanup41.for.cond_crit_edge
    i32 5, label %cleanup41.err_crit_edge
  ]

cleanup41.err_crit_edge:                          ; preds = %cleanup41
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

cleanup41.for.cond_crit_edge:                     ; preds = %cleanup41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

cleanup41.cleanup49_crit_edge:                    ; preds = %cleanup41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup49

err:                                              ; preds = %cleanup41.err_crit_edge, %cleanup33.thread27, %cleanup33.thread, %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.err_crit_edge, %if.then10.err_crit_edge, %g2d_get_reg_type.exit
  %ret.435 = phi i32 [ -14, %g2d_get_reg_type.exit ], [ -14, %cleanup33.thread ], [ -14, %cleanup33.thread27 ], [ -14, %if.end5.i.i.i.i.i.i.i.err_crit_edge ], [ -14, %if.then10.i.i.i.i.i.i.i ], [ -14, %if.then.i.i.i.i ], [ %ret.4, %cleanup41.err_crit_edge ], [ -14, %if.then10.err_crit_edge ]
  %107 = ptrtoint ptr %buf_info2 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %i.0, ptr %buf_info2, align 4
  br label %cleanup49

cleanup49:                                        ; preds = %err, %cleanup41.cleanup49_crit_edge, %for.cond.cleanup49_crit_edge
  %retval.0 = phi i32 [ %ret.435, %err ], [ 0, %cleanup41.cleanup49_crit_edge ], [ 0, %for.cond.cleanup49_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @g2d_unmap_cmdlist_gem(ptr nocapture noundef readonly %g2d, ptr nocapture noundef %node) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_info1 = getelementptr inbounds %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3
  %0 = ptrtoint ptr %buf_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_info1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.02 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 1, i32 %i.02
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 4, i32 %3
  %arrayidx4 = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 2, i32 %3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr %struct.g2d_cmdlist_node, ptr %node, i32 0, i32 3, i32 3, i32 %3
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp6 = icmp eq i32 %7, 1
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %if.then.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #11, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !143

if.end5.i.i.i.i.i.i.i.if.end_crit_edge:           ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #11
  br label %if.end

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  tail call void @drm_gem_object_free(ptr noundef nonnull %5) #11
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @g2d_userptr_put_dma_addr(ptr noundef %g2d, ptr noundef %5, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx4, align 4
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx5, align 4
  %12 = call ptr @memset(ptr %arrayidx2, i32 0, i32 24)
  %inc = add nuw i32 %i.02, 1
  %13 = ptrtoint ptr %buf_info1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_info1, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %15 = ptrtoint ptr %buf_info1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %buf_info1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_event_cancel_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_g2d_exec_ioctl(ptr nocapture noundef readonly %drm_dev, ptr nocapture noundef readonly %data, ptr noundef %file) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %g2d_dev = getelementptr inbounds %struct.exynos_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %g2d_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %g2d_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %runqueue_slab = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %runqueue_slab to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runqueue_slab, align 4
  %call1 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %run_cmdlist2 = getelementptr inbounds %struct.g2d_runqueue_node, ptr %call1, i32 0, i32 1
  %event_list3 = getelementptr inbounds %struct.g2d_runqueue_node, ptr %call1, i32 0, i32 2
  %10 = ptrtoint ptr %run_cmdlist2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %run_cmdlist2, ptr %run_cmdlist2, align 8
  %prev.i = getelementptr inbounds %struct.g2d_runqueue_node, ptr %call1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %run_cmdlist2, ptr %prev.i, align 4
  %12 = ptrtoint ptr %event_list3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %event_list3, ptr %event_list3, align 8
  %prev.i50 = getelementptr inbounds %struct.g2d_runqueue_node, ptr %call1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %event_list3, ptr %prev.i50, align 4
  %complete = getelementptr inbounds %struct.g2d_runqueue_node, ptr %call1, i32 0, i32 5
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %complete, align 8
  %wait.i = getelementptr inbounds %struct.g2d_runqueue_node, ptr %call1, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #11
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %data, align 8
  %conv = trunc i64 %16 to i32
  %async4 = getelementptr inbounds %struct.g2d_runqueue_node, ptr %call1, i32 0, i32 6
  %17 = ptrtoint ptr %async4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %async4, align 8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %1, align 4
  %cmp.i.not.i = icmp eq ptr %19, %1
  br i1 %cmp.i.not.i, label %if.end.list_splice_init.exit_crit_edge, label %if.then.i

if.end.list_splice_init.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %run_cmdlist2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %run_cmdlist2, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %run_cmdlist2, ptr %prev3.i.i, align 4
  store ptr %19, ptr %run_cmdlist2, align 8
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %21, ptr %23, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev6.i.i, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end.list_splice_init.exit_crit_edge
  %event_list5 = getelementptr inbounds %struct.drm_exynos_file_private, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %event_list5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %event_list5, align 4
  %cmp.i.not.i51 = icmp eq ptr %29, %event_list5
  br i1 %cmp.i.not.i51, label %list_splice_init.exit.list_splice_init.exit56_crit_edge, label %if.then.i55

list_splice_init.exit.list_splice_init.exit56_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_init.exit56

if.then.i55:                                      ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %event_list3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %event_list3, align 8
  %prev2.i.i52 = getelementptr inbounds %struct.drm_exynos_file_private, ptr %1, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev2.i.i52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev2.i.i52, align 4
  %prev3.i.i53 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i53 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %event_list3, ptr %prev3.i.i53, align 4
  store ptr %29, ptr %event_list3, align 8
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %31, ptr %33, align 4
  %prev6.i.i54 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %prev6.i.i54 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev6.i.i54, align 4
  %37 = ptrtoint ptr %event_list5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %event_list5, ptr %event_list5, align 4
  store ptr %event_list5, ptr %prev2.i.i52, align 4
  br label %list_splice_init.exit56

list_splice_init.exit56:                          ; preds = %if.then.i55, %list_splice_init.exit.list_splice_init.exit56_crit_edge
  %38 = ptrtoint ptr %run_cmdlist2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %run_cmdlist2, align 8
  %cmp.i.not = icmp eq ptr %39, %run_cmdlist2
  br i1 %cmp.i.not, label %do.end, label %if.end10

do.end:                                           ; preds = %list_splice_init.exit56
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.8) #14
  br label %cleanup.sink.split

if.end10:                                         ; preds = %list_splice_init.exit56
  %runqueue_mutex = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %runqueue_mutex, i32 noundef 0) #11
  %42 = tail call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid, align 8
  %pid12 = getelementptr inbounds %struct.g2d_runqueue_node, ptr %call1, i32 0, i32 4
  %48 = ptrtoint ptr %pid12 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %pid12, align 4
  %filp = getelementptr inbounds %struct.g2d_runqueue_node, ptr %call1, i32 0, i32 3
  %49 = ptrtoint ptr %filp to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %file, ptr %filp, align 8
  %runqueue = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 16
  %prev.i57 = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 16, i32 1
  %50 = ptrtoint ptr %prev.i57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i57, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call1, ptr noundef %51, ptr noundef %runqueue) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_add_tail.exit_crit_edge

if.end10.list_add_tail.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %prev.i57 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call1, ptr %prev.i57, align 4
  %53 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %runqueue, ptr %call1, align 8
  %prev3.i.i58 = getelementptr inbounds %struct.list_head, ptr %call1, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i58 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i58, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %call1, ptr %51, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end10.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %runqueue_mutex) #11
  %g2d_workq = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 5
  %56 = ptrtoint ptr %g2d_workq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %g2d_workq, align 4
  %runqueue_work = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 6
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %57, ptr noundef %runqueue_work) #11
  %58 = ptrtoint ptr %async4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %async4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool16.not = icmp eq i32 %59, 0
  br i1 %tobool16.not, label %if.end18, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %list_add_tail.exit
  tail call void @wait_for_completion(ptr noundef %complete) #11
  %cmdlist_mutex.i = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %cmdlist_mutex.i, i32 noundef 0) #11
  %60 = ptrtoint ptr %run_cmdlist2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %node.019.i = load ptr, ptr %run_cmdlist2, align 8
  %cmp.not20.i = icmp eq ptr %node.019.i, %run_cmdlist2
  br i1 %cmp.not20.i, label %if.end18.for.end.i_crit_edge, label %if.end18.for.body.i_crit_edge

if.end18.for.body.i_crit_edge:                    ; preds = %if.end18
  br label %for.body.i

if.end18.for.end.i_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end18.for.body.i_crit_edge
  %node.021.i = phi ptr [ %node.0.i, %for.body.i.for.body.i_crit_edge ], [ %node.019.i, %if.end18.for.body.i_crit_edge ]
  tail call fastcc void @g2d_unmap_cmdlist_gem(ptr noundef %7, ptr noundef %node.021.i) #11
  %61 = ptrtoint ptr %node.021.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %node.0.i = load ptr, ptr %node.021.i, align 4
  %cmp.not.i = icmp eq ptr %node.0.i, %run_cmdlist2
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end18.for.end.i_crit_edge
  %62 = ptrtoint ptr %run_cmdlist2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %run_cmdlist2, align 8
  %cmp.i.not.i.i = icmp eq ptr %63, %run_cmdlist2
  br i1 %cmp.i.not.i.i, label %for.end.i.g2d_free_runqueue_node.exit_crit_edge, label %if.then.i.i

for.end.i.g2d_free_runqueue_node.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_free_runqueue_node.exit

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %free_cmdlist.i = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 10
  %prev.i.i = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 10, i32 1
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i, align 4
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %63, ptr %65, align 4
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %free_cmdlist.i, ptr %67, align 4
  store ptr %67, ptr %prev.i.i, align 4
  %71 = ptrtoint ptr %run_cmdlist2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %run_cmdlist2, ptr %run_cmdlist2, align 8
  store ptr %run_cmdlist2, ptr %prev.i, align 4
  br label %g2d_free_runqueue_node.exit

g2d_free_runqueue_node.exit:                      ; preds = %if.then.i.i, %for.end.i.g2d_free_runqueue_node.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmdlist_mutex.i) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %g2d_free_runqueue_node.exit, %do.end
  %retval.0.ph = phi i32 [ 0, %g2d_free_runqueue_node.exit ], [ -1, %do.end ]
  %72 = ptrtoint ptr %runqueue_slab to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %runqueue_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %73, ptr noundef nonnull %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %list_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @g2d_free_runqueue_node(ptr noundef %g2d, ptr noundef %runqueue_node) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdlist_mutex = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %cmdlist_mutex, i32 noundef 0) #11
  %run_cmdlist = getelementptr inbounds %struct.g2d_runqueue_node, ptr %runqueue_node, i32 0, i32 1
  %0 = ptrtoint ptr %run_cmdlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.019 = load ptr, ptr %run_cmdlist, align 4
  %cmp.not20 = icmp eq ptr %node.019, %run_cmdlist
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %node.021 = phi ptr [ %node.0, %for.body.for.body_crit_edge ], [ %node.019, %entry.for.body_crit_edge ]
  tail call fastcc void @g2d_unmap_cmdlist_gem(ptr noundef %g2d, ptr noundef %node.021)
  %1 = ptrtoint ptr %node.021 to i32
  call void @__asan_load4_noabort(i32 %1)
  %node.0 = load ptr, ptr %node.021, align 4
  %cmp.not = icmp eq ptr %node.0, %run_cmdlist
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %2 = ptrtoint ptr %run_cmdlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %run_cmdlist, align 4
  %cmp.i.not.i = icmp eq ptr %3, %run_cmdlist
  br i1 %cmp.i.not.i, label %for.end.list_splice_tail_init.exit_crit_edge, label %if.then.i

for.end.list_splice_tail_init.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %free_cmdlist = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.g2d_runqueue_node, ptr %runqueue_node, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %5, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %free_cmdlist, ptr %7, align 4
  store ptr %7, ptr %prev.i, align 4
  %11 = ptrtoint ptr %run_cmdlist to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %run_cmdlist, ptr %run_cmdlist, align 4
  store ptr %run_cmdlist, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %for.end.list_splice_tail_init.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmdlist_mutex) #11
  %runqueue_slab = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 18
  %12 = ptrtoint ptr %runqueue_slab to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runqueue_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef %runqueue_node) #11
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @g2d_open(ptr nocapture noundef readnone %drm_dev, ptr nocapture noundef readonly %file) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %1, ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev.i, align 4
  %event_list = getelementptr inbounds %struct.drm_exynos_file_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %event_list, ptr %event_list, align 4
  %prev.i3 = getelementptr inbounds %struct.drm_exynos_file_private, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %event_list, ptr %prev.i3, align 4
  %userptr_list = getelementptr inbounds %struct.drm_exynos_file_private, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %userptr_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %userptr_list, ptr %userptr_list, align 4
  %prev.i4 = getelementptr inbounds %struct.drm_exynos_file_private, ptr %1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %userptr_list, ptr %prev.i4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g2d_close(ptr nocapture noundef readonly %drm_dev, ptr noundef %file) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %g2d_dev = getelementptr inbounds %struct.exynos_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %g2d_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %g2d_dev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %runqueue_mutex = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %runqueue_mutex, i32 noundef 0) #11
  tail call fastcc void @g2d_remove_runqueue_nodes(ptr noundef %7, ptr noundef %file)
  tail call void @mutex_unlock(ptr noundef %runqueue_mutex) #11
  tail call fastcc void @g2d_wait_finish(ptr noundef %7, ptr noundef %file)
  %cmdlist_mutex = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %cmdlist_mutex, i32 noundef 0) #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %cmp.not38 = icmp eq ptr %9, %1
  br i1 %cmp.not38, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %free_cmdlist = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 10
  %prev.i2.i = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 10, i32 1
  br label %for.body

for.body:                                         ; preds = %list_move_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %node.039 = phi ptr [ %9, %for.body.lr.ph ], [ %n.0, %list_move_tail.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %node.039 to i32
  call void @__asan_load4_noabort(i32 %10)
  %n.0 = load ptr, ptr %node.039, align 4
  tail call fastcc void @g2d_unmap_cmdlist_gem(ptr noundef %7, ptr noundef %node.039)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.039) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.039, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %node.039 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %node.039, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %17 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.039, ptr noundef %18, ptr noundef %free_cmdlist) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %node.039, ptr %prev.i2.i, align 4
  %20 = ptrtoint ptr %node.039 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %free_cmdlist, ptr %node.039, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.039, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %node.039, ptr %18, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %cmp.not = icmp eq ptr %n.0, %1
  br i1 %cmp.not, label %list_move_tail.exit.for.end_crit_edge, label %list_move_tail.exit.for.body_crit_edge

list_move_tail.exit.for.body_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_move_tail.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmdlist_mutex) #11
  %23 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_priv, align 4
  %userptr_list.i = getelementptr inbounds %struct.drm_exynos_file_private, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %userptr_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %userptr_list.i, align 4
  %cmp.not19.i = icmp eq ptr %26, %userptr_list.i
  br i1 %cmp.not19.i, label %for.end.g2d_userptr_free_all.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.g2d_userptr_free_all.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_userptr_free_all.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %g2d_userptr.020.i = phi ptr [ %n.021.i, %for.inc.i.for.body.i_crit_edge ], [ %26, %for.end.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %g2d_userptr.020.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %n.021.i = load ptr, ptr %g2d_userptr.020.i, align 4
  %in_pool.i = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %g2d_userptr.020.i, i32 0, i32 8
  %28 = ptrtoint ptr %in_pool.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %in_pool.i, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @g2d_userptr_put_dma_addr(ptr noundef %7, ptr noundef %g2d_userptr.020.i, i1 noundef zeroext true) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %n.021.i, %userptr_list.i
  br i1 %cmp.not.i, label %for.inc.i.g2d_userptr_free_all.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.g2d_userptr_free_all.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_userptr_free_all.exit

g2d_userptr_free_all.exit:                        ; preds = %for.inc.i.g2d_userptr_free_all.exit_crit_edge, %for.end.g2d_userptr_free_all.exit_crit_edge
  %current_pool.i = getelementptr inbounds %struct.g2d_data, ptr %7, i32 0, i32 19
  %30 = ptrtoint ptr %current_pool.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %current_pool.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %g2d_userptr_free_all.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @g2d_remove_runqueue_nodes(ptr noundef %g2d, ptr noundef readnone %file) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runqueue = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 16
  %0 = ptrtoint ptr %runqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %runqueue, align 4
  %cmp.i.not = icmp eq ptr %1, %runqueue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %tobool8.not = icmp eq ptr %file, null
  %cmdlist_mutex.i = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 11
  %free_cmdlist.i = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 10
  %prev.i.i28 = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 10, i32 1
  %runqueue_slab.i = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %node.031 = phi ptr [ %1, %for.cond.preheader ], [ %n.032, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %node.031 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.032 = load ptr, ptr %node.031, align 4
  br i1 %tobool8.not, label %for.body.if.end11_crit_edge, label %land.lhs.true

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %for.body
  %filp = getelementptr inbounds %struct.g2d_runqueue_node, ptr %node.031, i32 0, i32 3
  %3 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %filp, align 4
  %cmp9.not = icmp eq ptr %4, %file
  br i1 %cmp9.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.031) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_del_init.exit_crit_edge

if.end11.list_del_init.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.031, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %node.031 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node.031, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end11.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %node.031 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %node.031, ptr %node.031, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %node.031, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %node.031, ptr %prev.i3.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %cmdlist_mutex.i, i32 noundef 0) #11
  %run_cmdlist.i = getelementptr inbounds %struct.g2d_runqueue_node, ptr %node.031, i32 0, i32 1
  %13 = ptrtoint ptr %run_cmdlist.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.019.i = load ptr, ptr %run_cmdlist.i, align 4
  %cmp.not20.i = icmp eq ptr %node.019.i, %run_cmdlist.i
  br i1 %cmp.not20.i, label %list_del_init.exit.for.end.i_crit_edge, label %list_del_init.exit.for.body.i_crit_edge

list_del_init.exit.for.body.i_crit_edge:          ; preds = %list_del_init.exit
  br label %for.body.i

list_del_init.exit.for.end.i_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_del_init.exit.for.body.i_crit_edge
  %node.021.i = phi ptr [ %node.0.i, %for.body.i.for.body.i_crit_edge ], [ %node.019.i, %list_del_init.exit.for.body.i_crit_edge ]
  tail call fastcc void @g2d_unmap_cmdlist_gem(ptr noundef %g2d, ptr noundef %node.021.i) #11
  %14 = ptrtoint ptr %node.021.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %node.0.i = load ptr, ptr %node.021.i, align 4
  %cmp.not.i = icmp eq ptr %node.0.i, %run_cmdlist.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %list_del_init.exit.for.end.i_crit_edge
  %15 = ptrtoint ptr %run_cmdlist.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %run_cmdlist.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %16, %run_cmdlist.i
  br i1 %cmp.i.not.i.i, label %for.end.i.g2d_free_runqueue_node.exit_crit_edge, label %if.then.i.i

for.end.i.g2d_free_runqueue_node.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_free_runqueue_node.exit

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i28, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.g2d_runqueue_node, ptr %node.031, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %16, ptr %18, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %free_cmdlist.i, ptr %20, align 4
  store ptr %20, ptr %prev.i.i28, align 4
  %24 = ptrtoint ptr %run_cmdlist.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %run_cmdlist.i, ptr %run_cmdlist.i, align 4
  store ptr %run_cmdlist.i, ptr %prev2.i.i.i, align 4
  br label %g2d_free_runqueue_node.exit

g2d_free_runqueue_node.exit:                      ; preds = %if.then.i.i, %for.end.i.g2d_free_runqueue_node.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmdlist_mutex.i) #11
  %25 = ptrtoint ptr %runqueue_slab.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %runqueue_slab.i, align 4
  tail call void @kmem_cache_free(ptr noundef %26, ptr noundef %node.031) #11
  br label %for.inc

for.inc:                                          ; preds = %g2d_free_runqueue_node.exit, %land.lhs.true.for.inc_crit_edge
  %cmp.not = icmp eq ptr %n.032, %runqueue
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @g2d_wait_finish(ptr noundef %g2d, ptr noundef readnone %file) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %g2d, align 4
  %runqueue_mutex = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %runqueue_mutex, i32 noundef 0) #11
  %runqueue_node2 = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 15
  %2 = ptrtoint ptr %runqueue_node2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runqueue_node2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %file, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %filp = getelementptr inbounds %struct.g2d_runqueue_node, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filp, align 4
  %cmp.not = icmp eq ptr %5, %file
  br i1 %cmp.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %runqueue_mutex) #11
  br label %land.rhs

land.rhs:                                         ; preds = %while.body14.preheader.land.rhs_crit_edge, %if.end6
  %dec45 = phi i32 [ 9, %if.end6 ], [ %dec, %while.body14.preheader.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %runqueue_node2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runqueue_node2, align 4
  %cmp10 = icmp eq ptr %7, %3
  br i1 %cmp10, label %while.body14.preheader, label %land.rhs.while.end15_crit_edge

land.rhs.while.end15_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end15

while.body14.preheader:                           ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #11
  %dec = add nsw i32 %dec45, -1
  %tobool8.not = icmp eq i32 %dec45, 0
  br i1 %tobool8.not, label %while.body14.preheader.while.end15_crit_edge, label %while.body14.preheader.land.rhs_crit_edge

while.body14.preheader.land.rhs_crit_edge:        ; preds = %while.body14.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body14.preheader.while.end15_crit_edge:     ; preds = %while.body14.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end15

while.end15:                                      ; preds = %while.body14.preheader.while.end15_crit_edge, %land.rhs.while.end15_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %runqueue_mutex, i32 noundef 0) #11
  %18 = ptrtoint ptr %runqueue_node2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %runqueue_node2, align 4
  %cmp18.not = icmp eq ptr %19, %3
  br i1 %cmp18.not, label %do.end, label %while.end15.out_crit_edge

while.end15.out_crit_edge:                        ; preds = %while.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end:                                           ; preds = %while.end15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.27) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !155
  tail call void @arm_heavy_mb() #11
  %regs.i = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 3
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 50331648) #11, !srcloc !156
  %flags.i = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #11
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i43 = tail call i32 @__pm_runtime_suspend(ptr noundef %1, i32 noundef 13) #11
  %complete = getelementptr inbounds %struct.g2d_runqueue_node, ptr %3, i32 0, i32 5
  tail call void @complete(ptr noundef %complete) #11
  %async = getelementptr inbounds %struct.g2d_runqueue_node, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %async, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool21.not = icmp eq i32 %24, 0
  br i1 %tobool21.not, label %do.end.out_crit_edge, label %if.then22

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @g2d_free_runqueue_node(ptr noundef %g2d, ptr noundef nonnull %3)
  br label %out

out:                                              ; preds = %if.then22, %do.end.out_crit_edge, %while.end15.out_crit_edge, %land.lhs.true.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %runqueue_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 308, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.29, i32 noundef 92, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %runqueue_slab = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 18
  %0 = ptrtoint ptr %runqueue_slab to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %runqueue_slab, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %call8 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.30, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.31) #11
  %g2d_workq = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %g2d_workq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %g2d_workq, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %do.end, label %do.body13

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #14
  br label %err_destroy_slab

do.body13:                                        ; preds = %if.end6
  %runqueue_work = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %runqueue_work, i32 noundef 0) #11
  %3 = ptrtoint ptr %runqueue_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %runqueue_work, align 4
  %lockdep_map = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.34, ptr noundef nonnull @g2d_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry17 = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @g2d_runqueue_worker, ptr %func, align 4
  %free_cmdlist = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 10
  %7 = ptrtoint ptr %free_cmdlist to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %free_cmdlist, ptr %free_cmdlist, align 4
  %prev.i117 = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i117 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %free_cmdlist, ptr %prev.i117, align 4
  %runqueue = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 16
  %9 = ptrtoint ptr %runqueue to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %runqueue, ptr %runqueue, align 4
  %prev.i118 = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 16, i32 1
  %10 = ptrtoint ptr %prev.i118 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %runqueue, ptr %prev.i118, align 4
  %cmdlist_mutex = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %cmdlist_mutex, ptr noundef nonnull @.str.36, ptr noundef nonnull @g2d_probe.__key.35) #11
  %runqueue_mutex = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %runqueue_mutex, ptr noundef nonnull @.str.38, ptr noundef nonnull @g2d_probe.__key.37) #11
  %call27 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.39) #11
  %gate_clk = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %gate_clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call27, ptr %gate_clk, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end33, label %if.end36

do.end33:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41) #14
  %12 = ptrtoint ptr %gate_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gate_clk, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %err_destroy_workqueue

if.end36:                                         ; preds = %do.body13
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #11
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 2000) #11
  tail call void @pm_runtime_enable(ptr noundef %dev1) #11
  %flags = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #11
  %call38 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %regs = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call38, ptr %regs, align 4
  %cmp.i119 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call38 to i32
  br label %err_put_clk

if.end44:                                         ; preds = %if.end36
  %call45 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %irq = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call45, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp = icmp slt i32 %call45, 0
  br i1 %cmp, label %if.end44.err_put_clk_crit_edge, label %if.end49

if.end44.err_put_clk_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put_clk

if.end49:                                         ; preds = %if.end44
  %call.i120 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call45, ptr noundef nonnull @g2d_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.43, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp52 = icmp slt i32 %call.i120, 0
  br i1 %cmp52, label %do.end56, label %if.end57

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45) #14
  br label %err_put_clk

if.end57:                                         ; preds = %if.end49
  %max_pool = getelementptr inbounds %struct.g2d_data, ptr %call.i, i32 0, i32 20
  %18 = ptrtoint ptr %max_pool to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 67108864, ptr %max_pool, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call58 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @g2d_component_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end63, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.48) #14
  br label %err_put_clk

err_put_clk:                                      ; preds = %do.end63, %do.end56, %if.end44.err_put_clk_crit_edge, %if.then41
  %ret.0 = phi i32 [ %16, %if.then41 ], [ %call.i120, %do.end56 ], [ %call58, %do.end63 ], [ %call45, %if.end44.err_put_clk_crit_edge ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #11
  br label %err_destroy_workqueue

err_destroy_workqueue:                            ; preds = %err_put_clk, %do.end33
  %ret.1 = phi i32 [ %14, %do.end33 ], [ %ret.0, %err_put_clk ]
  %20 = ptrtoint ptr %g2d_workq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %g2d_workq, align 4
  tail call void @destroy_workqueue(ptr noundef %21) #11
  br label %err_destroy_slab

err_destroy_slab:                                 ; preds = %err_destroy_workqueue, %do.end
  %ret.2 = phi i32 [ %ret.1, %err_destroy_workqueue ], [ -22, %do.end ]
  %22 = ptrtoint ptr %runqueue_slab to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %runqueue_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %23) #11
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_slab, %if.end57.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_destroy_slab ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @g2d_component_ops) #11
  tail call fastcc void @g2d_remove_runqueue_nodes(ptr noundef %1, ptr noundef null)
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %cmdlist_node.i = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cmdlist_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmdlist_node.i, align 4
  tail call void @kfree(ptr noundef %3) #11
  %cmdlist_pool_virt.i = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %cmdlist_pool_virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmdlist_pool_virt.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.g2d_fini_cmdlist.exit_crit_edge, label %land.lhs.true.i

entry.g2d_fini_cmdlist.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_fini_cmdlist.exit

land.lhs.true.i:                                  ; preds = %entry
  %cmdlist_pool.i = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %cmdlist_pool.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmdlist_pool.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.g2d_fini_cmdlist.exit_crit_edge, label %if.then.i

land.lhs.true.i.g2d_fini_cmdlist.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_fini_cmdlist.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %drm_dev.i = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %drm_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drm_dev.i, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i.i, align 4
  %dma_dev.i.i = getelementptr inbounds %struct.exynos_drm_private, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_dev.i.i, align 4
  %cmdlist_dma_attrs.i = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %cmdlist_dma_attrs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmdlist_dma_attrs.i, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef 65536, ptr noundef nonnull %5, i32 noundef %7, i32 noundef %15) #11
  br label %g2d_fini_cmdlist.exit

g2d_fini_cmdlist.exit:                            ; preds = %if.then.i, %land.lhs.true.i.g2d_fini_cmdlist.exit_crit_edge, %entry.g2d_fini_cmdlist.exit_crit_edge
  %g2d_workq = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %g2d_workq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %g2d_workq, align 4
  tail call void @destroy_workqueue(ptr noundef %17) #11
  %runqueue_slab = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 18
  %18 = ptrtoint ptr %runqueue_slab to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %runqueue_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %19) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_gem_get(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @g2d_check_buf_desc_is_valid(ptr nocapture noundef readonly %g2d, ptr nocapture noundef readonly %buf_desc, i32 noundef %reg_type, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %reg_type, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 2, label %entry.if.end_crit_edge42
  ]

entry.if.end_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge42
  %right_x = getelementptr inbounds %struct.g2d_buf_desc, ptr %buf_desc, i32 0, i32 4
  %1 = ptrtoint ptr %right_x to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %right_x, align 4
  %left_x = getelementptr inbounds %struct.g2d_buf_desc, ptr %buf_desc, i32 0, i32 2
  %3 = ptrtoint ptr %left_x to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %left_x, align 4
  %sub = sub i32 %2, %4
  %5 = add i32 %sub, -8001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8000, i32 %5)
  %6 = icmp ult i32 %5, -8000
  br i1 %6, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %g2d, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.19, i32 noundef %sub) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %bottom_y = getelementptr inbounds %struct.g2d_buf_desc, ptr %buf_desc, i32 0, i32 5
  %9 = ptrtoint ptr %bottom_y to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bottom_y, align 4
  %top_y = getelementptr inbounds %struct.g2d_buf_desc, ptr %buf_desc, i32 0, i32 3
  %11 = ptrtoint ptr %top_y to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %top_y, align 4
  %sub6 = sub i32 %10, %12
  %13 = add i32 %sub6, -8001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8000, i32 %13)
  %14 = icmp ult i32 %13, -8000
  br i1 %14, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %g2d, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, i32 noundef %sub6) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %17 = ptrtoint ptr %buf_desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %switch.lookup, label %if.end12.g2d_get_buf_bpp.exit_crit_edge

if.end12.g2d_get_buf_bpp.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_buf_bpp.exit

switch.lookup:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.g2d_check_buf_desc_is_valid, i32 0, i32 %18
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %g2d_get_buf_bpp.exit

g2d_get_buf_bpp.exit:                             ; preds = %switch.lookup, %if.end12.g2d_get_buf_bpp.exit_crit_edge
  %bpp.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 1, %if.end12.g2d_get_buf_bpp.exit_crit_edge ]
  %sub14 = add i32 %10, -1
  %stride = getelementptr inbounds %struct.g2d_buf_desc, ptr %buf_desc, i32 0, i32 1
  %21 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stride, align 4
  %mul = mul i32 %22, %sub14
  %mul16 = mul i32 %bpp.0.i, %2
  %add = add i32 %mul16, -1
  %sub17 = add i32 %add, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17, i32 %size)
  %cmp18.not = icmp ult i32 %sub17, %size
  br i1 %cmp18.not, label %g2d_get_buf_bpp.exit.cleanup_crit_edge, label %if.then19

g2d_get_buf_bpp.exit.cleanup_crit_edge:           ; preds = %g2d_get_buf_bpp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %g2d_get_buf_bpp.exit
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %g2d to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %g2d, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.21, i32 noundef %sub17, i32 noundef %size) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %g2d_get_buf_bpp.exit.cleanup_crit_edge, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then4 ], [ false, %if.then10 ], [ false, %if.then19 ], [ true, %entry.cleanup_crit_edge ], [ true, %g2d_get_buf_bpp.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @g2d_userptr_put_dma_addr(ptr nocapture noundef readonly %g2d, ptr noundef %obj, i1 noundef zeroext %force) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %obj, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %force, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end3:                                          ; preds = %if.end
  %refcount = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %obj, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !149
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end3.refcount_dec.exit_crit_edge, !prof !153

if.end3.refcount_dec.exit_crit_edge:              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 4) #11
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %if.end3.refcount_dec.exit_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %1 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end6, label %refcount_dec.exit.cleanup_crit_edge

refcount_dec.exit.cleanup_crit_edge:              ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %refcount_dec.exit
  %in_pool = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %obj, i32 0, i32 8
  %3 = ptrtoint ptr %in_pool to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %in_pool, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %if.end6.out_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %if.end6.out_crit_edge, %if.end.out_crit_edge
  %drm_dev = getelementptr inbounds %struct.g2d_data, ptr %g2d, i32 0, i32 7
  %5 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drm_dev, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_private.i, align 4
  %dma_dev.i = getelementptr inbounds %struct.exynos_drm_private, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_dev.i, align 4
  %sgt = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %obj, i32 0, i32 6
  %11 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sgt, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %10, ptr noundef %14, i32 noundef %16, i32 noundef 0, i32 noundef 0) #11
  %pages = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %obj, i32 0, i32 4
  %17 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pages, align 4
  %npages = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %obj, i32 0, i32 5
  %19 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %npages, align 4
  tail call void @unpin_user_pages_dirty_lock(ptr noundef %18, i32 noundef %20, i1 noundef zeroext true) #11
  %21 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages, align 4
  tail call void @kvfree(ptr noundef %22) #11
  %out_of_list = getelementptr inbounds %struct.g2d_cmdlist_userptr, ptr %obj, i32 0, i32 9
  %23 = ptrtoint ptr %out_of_list to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %out_of_list, align 1, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool12.not = icmp eq i8 %24, 0
  br i1 %tobool12.not, label %if.then13, label %out.if.end14_crit_edge

out.if.end14_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %out
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %obj) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.list_del_init.exit_crit_edge

if.then13.list_del_init.exit_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %obj, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %obj, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then13.list_del_init.exit_crit_edge
  %31 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %obj, ptr %obj, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %obj, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %obj, ptr %prev.i3.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %list_del_init.exit, %out.if.end14_crit_edge
  %33 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sgt, align 4
  tail call void @sg_free_table(ptr noundef %34) #11
  %35 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sgt, align 4
  tail call void @kfree(ptr noundef %36) #11
  tail call void @kfree(ptr noundef nonnull %obj) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end6.cleanup_crit_edge, %refcount_dec.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages_dirty_lock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @g2d_runqueue_worker(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %flags = getelementptr i8, ptr %work, i32 48
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup29_crit_edge

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup29

if.end:                                           ; preds = %entry
  %runqueue_mutex = getelementptr i8, ptr %work, i32 180
  tail call void @mutex_lock_nested(ptr noundef %runqueue_mutex, i32 noundef 0) #11
  %runqueue_node1 = getelementptr i8, ptr %work, i32 168
  %3 = ptrtoint ptr %runqueue_node1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %runqueue_node1, align 4
  store ptr null, ptr %runqueue_node1, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call.i52 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #11
  %complete = getelementptr inbounds %struct.g2d_runqueue_node, ptr %4, i32 0, i32 5
  tail call void @complete(ptr noundef %complete) #11
  %async = getelementptr inbounds %struct.g2d_runqueue_node, ptr %4, i32 0, i32 6
  %10 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %async, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.then4.if.end10_crit_edge, label %if.then8

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.then4
  %cmdlist_mutex.i = getelementptr i8, ptr %work, i32 64
  tail call void @mutex_lock_nested(ptr noundef %cmdlist_mutex.i, i32 noundef 0) #11
  %run_cmdlist.i = getelementptr inbounds %struct.g2d_runqueue_node, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %run_cmdlist.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.019.i = load ptr, ptr %run_cmdlist.i, align 4
  %cmp.not20.i = icmp eq ptr %node.019.i, %run_cmdlist.i
  br i1 %cmp.not20.i, label %if.then8.for.end.i_crit_edge, label %if.then8.for.body.i_crit_edge

if.then8.for.body.i_crit_edge:                    ; preds = %if.then8
  br label %for.body.i

if.then8.for.end.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then8.for.body.i_crit_edge
  %node.021.i = phi ptr [ %node.0.i, %for.body.i.for.body.i_crit_edge ], [ %node.019.i, %if.then8.for.body.i_crit_edge ]
  tail call fastcc void @g2d_unmap_cmdlist_gem(ptr noundef %add.ptr, ptr noundef %node.021.i) #11
  %13 = ptrtoint ptr %node.021.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.0.i = load ptr, ptr %node.021.i, align 4
  %cmp.not.i = icmp eq ptr %node.0.i, %run_cmdlist.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then8.for.end.i_crit_edge
  %14 = ptrtoint ptr %run_cmdlist.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %run_cmdlist.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %15, %run_cmdlist.i
  br i1 %cmp.i.not.i.i, label %for.end.i.g2d_free_runqueue_node.exit_crit_edge, label %if.then.i.i

for.end.i.g2d_free_runqueue_node.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_free_runqueue_node.exit

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %free_cmdlist.i = getelementptr i8, ptr %work, i32 56
  %prev.i.i = getelementptr i8, ptr %work, i32 60
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.g2d_runqueue_node, ptr %4, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %15, ptr %17, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %free_cmdlist.i, ptr %19, align 4
  store ptr %19, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %run_cmdlist.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %run_cmdlist.i, ptr %run_cmdlist.i, align 4
  store ptr %run_cmdlist.i, ptr %prev2.i.i.i, align 4
  br label %g2d_free_runqueue_node.exit

g2d_free_runqueue_node.exit:                      ; preds = %if.then.i.i, %for.end.i.g2d_free_runqueue_node.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmdlist_mutex.i) #11
  %runqueue_slab.i = getelementptr i8, ptr %work, i32 272
  %24 = ptrtoint ptr %runqueue_slab.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runqueue_slab.i, align 4
  tail call void @kmem_cache_free(ptr noundef %25, ptr noundef nonnull %4) #11
  br label %if.end10

if.end10:                                         ; preds = %g2d_free_runqueue_node.exit, %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags, align 4
  %and1.i51 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i51)
  %tobool13.not = icmp eq i32 %and1.i51, 0
  br i1 %tobool13.not, label %if.then14, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then14:                                        ; preds = %if.end10
  %runqueue.i = getelementptr i8, ptr %work, i32 172
  %28 = ptrtoint ptr %runqueue.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %runqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %29, %runqueue.i
  br i1 %cmp.i.not.i, label %g2d_get_runqueue_node.exit.thread, label %if.end.i

g2d_get_runqueue_node.exit.thread:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %runqueue_node1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %runqueue_node1, align 4
  br label %out

if.end.i:                                         ; preds = %if.then14
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %29) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.g2d_get_runqueue_node.exit_crit_edge

if.end.i.g2d_get_runqueue_node.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_get_runqueue_node.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %29, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %g2d_get_runqueue_node.exit

g2d_get_runqueue_node.exit:                       ; preds = %if.end.i.i.i, %if.end.i.g2d_get_runqueue_node.exit_crit_edge
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %29, ptr %29, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %29, ptr %prev.i3.i.i, align 4
  %39 = ptrtoint ptr %runqueue_node1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %29, ptr %runqueue_node1, align 4
  %tobool18.not = icmp eq ptr %29, null
  br i1 %tobool18.not, label %g2d_get_runqueue_node.exit.out_crit_edge, label %if.then19

g2d_get_runqueue_node.exit.out_crit_edge:         ; preds = %g2d_get_runqueue_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then19:                                        ; preds = %g2d_get_runqueue_node.exit
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 4
  %call.i53 = tail call i32 @__pm_runtime_resume(ptr noundef %41, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp.i = icmp slt i32 %call.i53, 0
  br i1 %cmp.i, label %if.then.i, label %if.end24

if.then.i:                                        ; preds = %if.then19
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !158
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.50) #14
  br label %out

if.end24:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %runqueue_node1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %runqueue_node1, align 4
  %run_cmdlist.i55 = getelementptr inbounds %struct.g2d_runqueue_node, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %run_cmdlist.i55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %run_cmdlist.i55, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #11
  %dma_addr.i = getelementptr inbounds %struct.g2d_cmdlist_node, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_addr.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #11
  %regs.i = getelementptr i8, ptr %work, i32 -12
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %53, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %51) #11, !srcloc !156
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %55, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #11, !srcloc !156
  br label %out

out:                                              ; preds = %if.end24, %do.end, %g2d_get_runqueue_node.exit.out_crit_edge, %g2d_get_runqueue_node.exit.thread, %if.end10.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %runqueue_mutex) #11
  br label %cleanup29

cleanup29:                                        ; preds = %out, %entry.cleanup29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %now.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.g2d_data, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !160
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #11, !srcloc !156
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end19, label %if.then4

if.then4:                                         ; preds = %if.end
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 140
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #11, !srcloc !160
  %drm_dev1.i = getelementptr inbounds %struct.g2d_data, ptr %dev_id, i32 0, i32 7
  %9 = ptrtoint ptr %drm_dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm_dev1.i, align 4
  %runqueue_node2.i = getelementptr inbounds %struct.g2d_data, ptr %dev_id, i32 0, i32 15
  %11 = ptrtoint ptr %runqueue_node2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runqueue_node2.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i) #11
  %13 = call ptr @memset(ptr %now.i, i32 255, i32 16)
  %event_list.i = getelementptr inbounds %struct.g2d_runqueue_node, ptr %12, i32 0, i32 2
  %14 = ptrtoint ptr %event_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %event_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %event_list.i
  br i1 %cmp.i.not.i, label %if.then4.g2d_finish_event.exit_crit_edge, label %if.end.i

if.then4.g2d_finish_event.exit_crit_edge:         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %g2d_finish_event.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %16 = and i32 %8, 65025
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %shr = lshr exact i32 %17, 17
  %add.ptr.i = getelementptr i8, ptr %15, i32 -20
  call void @ktime_get_ts64(ptr noundef nonnull %now.i) #11
  %18 = ptrtoint ptr %now.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %now.i, align 8
  %conv.i = trunc i64 %19 to i32
  %tv_sec4.i = getelementptr i8, ptr %15, i32 36
  %20 = ptrtoint ptr %tv_sec4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i, ptr %tv_sec4.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %now.i, i32 0, i32 1
  %21 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %22, 1000
  %tv_usec.i = getelementptr i8, ptr %15, i32 40
  %23 = ptrtoint ptr %tv_usec.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div.i, ptr %tv_usec.i, align 4
  %cmdlist_no7.i = getelementptr i8, ptr %15, i32 44
  %24 = ptrtoint ptr %cmdlist_no7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr, ptr %cmdlist_no7.i, align 8
  call void @drm_send_event(ptr noundef %10, ptr noundef %add.ptr.i) #11
  br label %g2d_finish_event.exit

g2d_finish_event.exit:                            ; preds = %if.end.i, %if.then4.g2d_finish_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i) #11
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %26, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #11, !srcloc !156
  %and13 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end19.thread, label %g2d_finish_event.exit.if.then22_crit_edge

g2d_finish_event.exit.if.then22_crit_edge:        ; preds = %g2d_finish_event.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

if.end19.thread:                                  ; preds = %g2d_finish_event.exit
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %28, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 33554432) #11, !srcloc !156
  br label %if.end24

if.end19:                                         ; preds = %if.end
  %.pre = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool21.not = icmp eq i32 %.pre, 0
  br i1 %tobool21.not, label %if.end19.if.end24_crit_edge, label %if.end19.if.then22_crit_edge

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then22:                                        ; preds = %if.end19.if.then22_crit_edge, %g2d_finish_event.exit.if.then22_crit_edge
  %flags = getelementptr inbounds %struct.g2d_data, ptr %dev_id, i32 0, i32 8
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #11
  %g2d_workq = getelementptr inbounds %struct.g2d_data, ptr %dev_id, i32 0, i32 5
  %29 = ptrtoint ptr %g2d_workq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %g2d_workq, align 4
  %runqueue_work = getelementptr inbounds %struct.g2d_data, ptr %dev_id, i32 0, i32 6
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %runqueue_work) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge, %if.end19.thread
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_send_event(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %drm_dev1 = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %drm_dev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %drm_dev1, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %cmdlist_dma_attrs.i = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %cmdlist_dma_attrs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %cmdlist_dma_attrs.i, align 4
  %8 = load ptr, ptr %dev_private, align 4
  %dma_dev.i.i = getelementptr inbounds %struct.exynos_drm_private, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_dev.i.i, align 4
  %cmdlist_pool.i = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 12
  %call3.i = tail call ptr @dma_alloc_attrs(ptr noundef %10, i32 noundef 65536, ptr noundef %cmdlist_pool.i, i32 noundef 3264, i32 noundef 4) #11
  %cmdlist_pool_virt.i = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %cmdlist_pool_virt.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3.i, ptr %cmdlist_pool_virt.i, align 4
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.61) #14
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 15360, i32 noundef 3520, i32 noundef 2) #17
  %tobool6.not.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %free_cmdlist.i = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 10
  %prev.i.i = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 10, i32 1
  br label %for.body.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %drm_dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drm_dev1, align 4
  %dev_private.i58.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %dev_private.i58.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_private.i58.i, align 4
  %dma_dev.i59.i = getelementptr inbounds %struct.exynos_drm_private, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dma_dev.i59.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_dev.i59.i, align 4
  %18 = ptrtoint ptr %cmdlist_pool_virt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmdlist_pool_virt.i, align 4
  %20 = ptrtoint ptr %cmdlist_pool.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmdlist_pool.i, align 4
  %22 = ptrtoint ptr %cmdlist_dma_attrs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmdlist_dma_attrs.i, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef 65536, ptr noundef %19, i32 noundef %21, i32 noundef %23) #11
  br label %do.end

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.cond.preheader.i
  %nr.061.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc21.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %24 = mul nuw nsw i32 %nr.061.i, 240
  %25 = add nuw nsw i32 %24, 20
  %uglygep.i = getelementptr i8, ptr %call1.i.i.i.i.i, i32 %25
  %26 = ptrtoint ptr %cmdlist_pool_virt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmdlist_pool_virt.i, align 4
  %mul.i = shl i32 %nr.061.i, 10
  %add.ptr.i = getelementptr i8, ptr %27, i32 %mul.i
  %cmdlist.i = getelementptr %struct.g2d_cmdlist_node, ptr %call1.i.i.i.i.i, i32 %nr.061.i, i32 1
  %28 = ptrtoint ptr %cmdlist.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i, ptr %cmdlist.i, align 8
  %29 = ptrtoint ptr %cmdlist_pool.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmdlist_pool.i, align 4
  %add.i = add i32 %30, %mul.i
  %dma_addr.i = getelementptr %struct.g2d_cmdlist_node, ptr %call1.i.i.i.i.i, i32 %nr.061.i, i32 2
  %31 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %dma_addr.i, align 4
  %32 = call ptr @memset(ptr %uglygep.i, i32 255, i32 24)
  %arrayidx.i = getelementptr %struct.g2d_cmdlist_node, ptr %call1.i.i.i.i.i, i32 %nr.061.i
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %34, ptr noundef %free_cmdlist.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx.i, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %free_cmdlist.i, ptr %arrayidx.i, align 16
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %arrayidx.i, ptr %34, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %inc21.i = add nuw nsw i32 %nr.061.i, 1
  %exitcond.not.i = icmp eq i32 %inc21.i, 64
  br i1 %exitcond.not.i, label %if.end, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end:                                           ; preds = %if.then7.i, %do.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #14
  br label %cleanup

if.end:                                           ; preds = %list_add_tail.exit.i
  %dma_priv = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @exynos_drm_register_dma(ptr noundef %data, ptr noundef %dev, ptr noundef %dma_priv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55) #14
  %cmdlist_node.i = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 9
  %39 = ptrtoint ptr %cmdlist_node.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cmdlist_node.i, align 4
  tail call void @kfree(ptr noundef %40) #11
  %41 = ptrtoint ptr %cmdlist_pool_virt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cmdlist_pool_virt.i, align 4
  %tobool.not.i30 = icmp eq ptr %42, null
  br i1 %tobool.not.i30, label %do.end8.cleanup_crit_edge, label %land.lhs.true.i

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.end8
  %43 = ptrtoint ptr %cmdlist_pool.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cmdlist_pool.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool1.not.i = icmp eq i32 %44, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %drm_dev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %drm_dev1, align 4
  %dev_private.i.i33 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %dev_private.i.i33 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_private.i.i33, align 4
  %dma_dev.i.i34 = getelementptr inbounds %struct.exynos_drm_private, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dma_dev.i.i34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma_dev.i.i34, align 4
  %51 = ptrtoint ptr %cmdlist_dma_attrs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cmdlist_dma_attrs.i, align 4
  tail call void @dma_free_attrs(ptr noundef %50, i32 noundef 65536, ptr noundef nonnull %42, i32 noundef %44, i32 noundef %52) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %g2d_dev = getelementptr inbounds %struct.exynos_drm_private, ptr %3, i32 0, i32 1
  %53 = ptrtoint ptr %g2d_dev to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev, ptr %g2d_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef 4, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %do.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end9 ], [ %call3, %do.end8.cleanup_crit_edge ], [ %call3, %land.lhs.true.i.cleanup_crit_edge ], [ %call3, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @g2d_unbind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %flags = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #11
  tail call fastcc void @g2d_wait_finish(ptr noundef %1, ptr noundef null)
  %g2d_dev = getelementptr inbounds %struct.exynos_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %g2d_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %g2d_dev, align 4
  %runqueue_work = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 6
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %runqueue_work) #11
  %drm_dev2 = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %drm_dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drm_dev2, align 4
  %dma_priv = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 1
  tail call void @exynos_drm_unregister_dma(ptr noundef %6, ptr noundef %dev, ptr noundef %dma_priv) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_register_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_unregister_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #11
  tail call fastcc void @g2d_wait_finish(ptr noundef %1, ptr noundef null)
  %runqueue_work = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 6
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %runqueue_work) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  %g2d_workq = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %g2d_workq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %g2d_workq, align 4
  %runqueue_work = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 6
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %runqueue_work) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gate_clk = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gate_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gate_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #11
  tail call void @clk_unprepare(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gate_clk = getelementptr inbounds %struct.g2d_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gate_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gate_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %3) #11
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.63) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %retval.0.i6 = phi i32 [ %retval.0.i, %do.end ], [ %retval.0.i, %clk_prepare_enable.exit.if.end_crit_edge ], [ 0, %if.end.i.if.end_crit_edge ]
  ret i32 %retval.0.i6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !24, !25, !26, !28, !29, !31, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !60, !61, !62, !64, !66, !67, !69, !70, !71, !72, !74, !75, !77, !78, !80, !81, !83, !85, !86, !87, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !127, !129, !130, !131, !132}
!llvm.named.register.sp = !{!133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1164, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @exynos_g2d_set_cmdlist_ioctl._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @exynos_g2d_set_cmdlist_ioctl._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1232, i32 3}
!10 = !{ptr @exynos_g2d_set_cmdlist_ioctl._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @exynos_g2d_set_cmdlist_ioctl._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1324, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @exynos_g2d_exec_ioctl._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @exynos_g2d_exec_ioctl._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1618, i32 11}
!19 = !{ptr @g2d_driver, !20, !"g2d_driver", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1614, i32 24}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 338, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @g2d_get_cmdlist._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @g2d_get_cmdlist._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1123, i32 2}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @g2d_check_reg_offset._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @g2d_check_reg_offset._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 593, i32 3}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 646, i32 3}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 653, i32 3}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 673, i32 3}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 428, i32 3}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 483, i32 3}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 503, i32 3}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 512, i32 3}
!54 = !{ptr @init_completion.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../include/linux/completion.h", i32 87, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1004, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @g2d_wait_finish._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @g2d_wait_finish._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1459, i32 41}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1466, i32 19}
!66 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1468, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @g2d_probe._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @g2d_probe._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @g2d_probe.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1473, i32 2}
!74 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @g2d_probe.__key.35, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1477, i32 2}
!77 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @g2d_probe.__key.37, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1478, i32 2}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1480, i32 36}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1482, i32 3}
!85 = !{ptr @g2d_probe._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @g2d_probe._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1506, i32 9}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1508, i32 3}
!91 = !{ptr @g2d_probe._entry.44, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @g2d_probe._entry_ptr.46, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1518, i32 3}
!95 = !{ptr @g2d_probe._entry.47, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @g2d_probe._entry_ptr.49, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 900, i32 5}
!99 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @g2d_runqueue_worker._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @g2d_runqueue_worker._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @g2d_component_ops, !103, !"g2d_component_ops", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1444, i32 35}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1412, i32 3}
!106 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @g2d_bind._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @g2d_bind._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1418, i32 3}
!111 = !{ptr @g2d_bind._entry.54, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @g2d_bind._entry_ptr.56, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1424, i32 2}
!115 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @g2d_bind._entry.57, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @g2d_bind._entry_ptr.60, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 285, i32 3}
!120 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @g2d_init_cmdlist._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @g2d_init_cmdlist._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @exynos_g2d_match, !124, !"exynos_g2d_match", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1607, i32 34}
!125 = !{ptr @g2d_pm_ops, !126, !"g2d_pm_ops", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1602, i32 32}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/exynos/exynos_drm_g2d.c", i32 1596, i32 3}
!129 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @g2d_runtime_resume._entry, !128, !"_entry", i1 false, i1 false}
!132 = !{ptr @g2d_runtime_resume._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!133 = !{!"sp"}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{!"branch_weights", i32 2000, i32 1}
!144 = !{i64 2153294320, i64 2153294345}
!145 = !{i64 5789875}
!146 = !{i64 5790072}
!147 = !{i64 2153275305}
!148 = !{i64 2148258351}
!149 = !{i64 2148172815, i64 2148172847, i64 2148172876, i64 2148172910, i64 2148172941, i64 2148172964}
!150 = !{i64 2148625741}
!151 = !{!"auto-init"}
!152 = !{i64 2148170350, i64 2148170382, i64 2148170411, i64 2148170445, i64 2148170476, i64 2148170499}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{i8 0, i8 2}
!155 = !{i64 2156724217}
!156 = !{i64 6298444}
!157 = !{i64 2148168239}
!158 = !{i64 544160, i64 544185, i64 544207, i64 544223, i64 544235, i64 544255, i64 544279, i64 544295, i64 544307}
!159 = !{i64 2148168427}
!160 = !{i64 6298862}
