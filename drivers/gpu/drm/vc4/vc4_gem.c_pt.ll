; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_gem.c"
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
%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.89, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.90, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.89 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.90 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_vc4_get_hang_state = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32] }
%struct.vc4_hang_state = type { %struct.drm_vc4_get_hang_state, i32, ptr }
%struct.drm_vc4_get_hang_state_bo = type { i32, i32, i32, i32 }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.vc4_v3d = type { ptr, ptr, ptr, ptr, %struct.debugfs_regset32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.vc4_exec_info = type { i64, i64, ptr, i32, i32, ptr, ptr, i32, [4 x ptr], i32, %struct.list_head, %struct.list_head, [2 x i32], ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i8 }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.vc4_seqno_cb = type { %struct.work_struct, i64, ptr }
%struct.drm_vc4_wait_seqno = type { i64, i64 }
%struct.drm_vc4_wait_bo = type { i32, i32, i64 }
%struct.vc4_bo = type { %struct.drm_gem_cma_object, i64, i64, i8, %struct.list_head, i32, %struct.list_head, ptr, i32, %struct.refcount_struct, i32, %struct.mutex }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_vc4_submit_cl = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, [2 x i32], i32, i8, [3 x i8], i32, i64, i32, i32, i32, i32 }
%struct.drm_vc4_submit_rcl_surface = type { i32, i32, i16, i16 }
%struct.vc4_fence = type { %struct.dma_fence, ptr, i64 }
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
%struct.drm_vc4_gem_madvise = type { i32, i32, i32, i32 }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VC4_GET_HANG_STATE with no VC4 V3D probed\0A\00", [53 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@vc4_queue_seqno_cb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&cb->work)\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to look up GEM BO %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VC4_SUBMIT_CL with no VC4 V3D probed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown flags: 0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid pad: 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"malloc failure on exec struct\0A\00", [33 x i8] zeroinitializer }, align 32
@vc4_gem_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&vc4->job_lock\00", [17 x i8] zeroinitializer }, align 32
@vc4_gem_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&vc4->hangcheck.reset_work)\00", [50 x i8] zeroinitializer }, align 32
@vc4_gem_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&vc4->hangcheck.timer)\00", [40 x i8] zeroinitializer }, align 32
@vc4_gem_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&vc4->job_done_work)\00", [57 x i8] zeroinitializer }, align 32
@vc4_gem_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&vc4->power_lock\00", [47 x i8] zeroinitializer }, align 32
@vc4_gem_init.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&vc4->purgeable.lock\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vc4_gem_destroy\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"madvise not supported on this BO\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"madvise not supported on imported BOs\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_vc4_wait_for_seqno_begin = external dso_local global %struct.tracepoint, align 4
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/vc4/vc4_trace.h\00", [32 x i8] zeroinitializer }, align 32
@trace_vc4_wait_for_seqno_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_vc4_wait_for_seqno_end = external dso_local global %struct.tracepoint, align 4
@trace_vc4_wait_for_seqno_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/vc4/vc4_gem.c\00", [34 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Rendering requires BOs to validate\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to allocate validated BO pointers\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to allocate incoming GEM handles\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to copy in GEM handles\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to look up GEM BO %d: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"overflow in exec arguments\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Failed to allocate storage for copying in bin/render CLs.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't allocate BO for binning\0A\00", [62 x i8] zeroinitializer }, align 32
@reservation_ww_class = external dso_local global %struct.ww_class, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/ww_mutex.h\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!ctx->contending_lock\00", [42 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ctx->done_acquire\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx->acquired\00", [18 x i8] zeroinitializer }, align 32
@vc4_fence_ops = external dso_local constant %struct.dma_fence_ops, align 4
@vc4_save_hang_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vc4_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.27, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016[drm] Resetting GPU.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vc4_reset\00", [22 x i8] zeroinitializer }, align 32
@vc4_reset._entry_ptr = internal global ptr @vc4_reset._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966784, i64 4294967292]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 4294966784, i64 4294967292]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 80, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1032, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1101, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1139, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1147, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1152, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1158, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1276, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1278, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1279, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1281, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1283, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1286, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1288, i32 9 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1341, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1350, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 230, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 214, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 174, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/vc4/vc4_trace.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 17, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 108, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 440, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 742, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 750, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 757, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 764, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 773, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 843, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 857, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 891, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 333, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 173, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [28 x i8] c"../include/linux/ww_mutex.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 191, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [33 x i8] c"../drivers/gpu/drm/vc4/vc4_gem.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 290, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @vc4_reset._entry, ptr @vc4_reset._entry_ptr, ptr @.str, ptr @vc4_queue_seqno_cb.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @vc4_gem_init.__key, ptr @.str.7, ptr @vc4_gem_init.__key.8, ptr @.str.9, ptr @vc4_gem_init.__key.10, ptr @.str.11, ptr @vc4_gem_init.__key.12, ptr @.str.13, ptr @vc4_gem_init.__key.14, ptr @.str.15, ptr @vc4_gem_init.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_queue_seqno_cb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_gem_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_gem_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_gem_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_gem_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_gem_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_gem_init.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_get_hang_state_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %v3d = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #11
  br label %cleanup74

do.body1:                                         ; preds = %entry
  %job_lock = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 19
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock) #11
  %hang_state = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %hang_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hang_state, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call3) #11
  br label %cleanup74

if.end9:                                          ; preds = %do.body1
  %bo_count = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bo_count, align 8
  %bo_count10 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %bo_count10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bo_count10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp11 = icmp ult i32 %5, %7
  br i1 %cmp11, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %bo_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %bo_count, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call3) #11
  br label %cleanup74

if.end17:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %hang_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %hang_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call3) #11
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %data, align 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %3, align 8
  %13 = call ptr @memcpy(ptr %data, ptr %3, i32 160)
  %14 = ptrtoint ptr %bo_count10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bo_count10, align 8
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 16) #11
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %if.end17.err_free_crit_edge, label %if.end7.i.i, !prof !100

if.end17.err_free_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.end7.i.i:                                      ; preds = %if.end17
  %18 = extractvalue { i32, i1 } %16, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #14
  %tobool23.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool23.not, label %if.end7.i.i.err_free_crit_edge, label %for.cond.preheader

if.end7.i.i.err_free_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

for.cond.preheader:                               ; preds = %if.end7.i.i
  %19 = ptrtoint ptr %bo_count10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bo_count10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp27144.not = icmp eq i32 %20, 0
  br i1 %cmp27144.not, label %if.end8.i.i.thread, label %for.body.lr.ph

if.end8.i.i.thread:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %data, align 8
  %conv54157 = trunc i64 %22 to i32
  br label %if.end59.i.i

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bo29 = getelementptr inbounds %struct.vc4_hang_state, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0145 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %23 = ptrtoint ptr %bo29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bo29, align 4
  %arrayidx = getelementptr ptr, ptr %24, i32 %i.0145
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #11
  %27 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %handle, align 4, !annotation !101
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %call33 = call i32 @drm_gem_handle_create(ptr noundef %file_priv, ptr noundef %29, ptr noundef nonnull %handle) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %bo_count10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.0145, ptr %bo_count10, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #11
  br label %err_delete_handle

for.inc:                                          ; preds = %for.body
  %31 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %handle, align 4
  %arrayidx38 = getelementptr %struct.drm_vc4_get_hang_state_bo, ptr %call8.i.i, i32 %i.0145
  %33 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx38, align 16
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %paddr, align 8
  %paddr41 = getelementptr %struct.drm_vc4_get_hang_state_bo, ptr %call8.i.i, i32 %i.0145, i32 1
  %36 = ptrtoint ptr %paddr41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %paddr41, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %26, i32 0, i32 5
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size, align 8
  %size45 = getelementptr %struct.drm_vc4_get_hang_state_bo, ptr %call8.i.i, i32 %i.0145, i32 2
  %39 = ptrtoint ptr %size45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %size45, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #11
  %inc = add nuw i32 %i.0145, 1
  %40 = ptrtoint ptr %bo_count10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bo_count10, align 8
  %cmp27 = icmp ult i32 %inc, %41
  br i1 %cmp27, label %for.inc.for.body_crit_edge, label %if.end8.i.i

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end8.i.i:                                      ; preds = %for.inc
  %phi.bo = shl i32 %41, 4
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %data, align 8
  %conv54 = trunc i64 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %cmp9.i.i = icmp slt i32 %phi.bo, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.end8.i.i.if.end59.i.i_crit_edge

if.end8.i.i.if.end59.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.err_delete_handlethread-pre-split_crit_edge, label %if.then27.i.i, !prof !102

land.rhs16.i.i.err_delete_handlethread-pre-split_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_delete_handlethread-pre-split

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %err_delete_handlethread-pre-split

if.end59.i.i:                                     ; preds = %if.end8.i.i.if.end59.i.i_crit_edge, %if.end8.i.i.thread
  %.lcssa161164 = phi i32 [ 0, %if.end8.i.i.thread ], [ %phi.bo, %if.end8.i.i.if.end59.i.i_crit_edge ]
  %.in = phi i32 [ %conv54157, %if.end8.i.i.thread ], [ %conv54, %if.end8.i.i.if.end59.i.i_crit_edge ]
  %44 = inttoptr i32 %.in to ptr
  call void @__check_object_size(ptr noundef nonnull %call8.i.i, i32 noundef %.lcssa161164, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end59.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end59.i.i.copy_to_user.exit_crit_edge:         ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end59.i.i
  %45 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %44, i32 %.lcssa161164, i32 -1226833920) #15, !srcloc !103
  %asmresult.i.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call8.i.i, i32 noundef %.lcssa161164) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %44, ptr noundef nonnull %call8.i.i, i32 noundef %.lcssa161164) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end59.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %.lcssa161164, %if.end59.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %.lcssa161164, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool57.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool57.not, label %copy_to_user.exit.err_free_crit_edge, label %copy_to_user.exit.err_delete_handlethread-pre-split_crit_edge

copy_to_user.exit.err_delete_handlethread-pre-split_crit_edge: ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_delete_handlethread-pre-split

copy_to_user.exit.err_free_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

err_delete_handlethread-pre-split:                ; preds = %copy_to_user.exit.err_delete_handlethread-pre-split_crit_edge, %if.then27.i.i, %land.rhs16.i.i.err_delete_handlethread-pre-split_crit_edge
  %46 = ptrtoint ptr %bo_count10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load i32, ptr %bo_count10, align 8
  br label %err_delete_handle

err_delete_handle:                                ; preds = %err_delete_handlethread-pre-split, %cleanup
  %47 = phi i32 [ %.pr, %err_delete_handlethread-pre-split ], [ %i.0145, %cleanup ]
  %ret.1 = phi i32 [ -14, %err_delete_handlethread-pre-split ], [ %call33, %cleanup ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp64146.not = icmp eq i32 %47, 0
  br i1 %cmp64146.not, label %err_delete_handle.err_free_crit_edge, label %err_delete_handle.for.body66_crit_edge

err_delete_handle.for.body66_crit_edge:           ; preds = %err_delete_handle
  br label %for.body66

err_delete_handle.err_free_crit_edge:             ; preds = %err_delete_handle
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %err_delete_handle.for.body66_crit_edge
  %i.1147 = phi i32 [ %inc71, %for.body66.for.body66_crit_edge ], [ 0, %err_delete_handle.for.body66_crit_edge ]
  %arrayidx67 = getelementptr %struct.drm_vc4_get_hang_state_bo, ptr %call8.i.i, i32 %i.1147
  %48 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx67, align 16
  %call69 = call i32 @drm_gem_handle_delete(ptr noundef %file_priv, i32 noundef %49) #11
  %inc71 = add nuw i32 %i.1147, 1
  %50 = ptrtoint ptr %bo_count10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bo_count10, align 8
  %cmp64 = icmp ult i32 %inc71, %51
  br i1 %cmp64, label %for.body66.for.body66_crit_edge, label %for.body66.err_free_crit_edge

for.body66.err_free_crit_edge:                    ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body66

err_free:                                         ; preds = %for.body66.err_free_crit_edge, %err_delete_handle.err_free_crit_edge, %copy_to_user.exit.err_free_crit_edge, %if.end7.i.i.err_free_crit_edge, %if.end17.err_free_crit_edge
  %retval.0.i.i134 = phi ptr [ null, %if.end7.i.i.err_free_crit_edge ], [ null, %if.end17.err_free_crit_edge ], [ %call8.i.i, %copy_to_user.exit.err_free_crit_edge ], [ %call8.i.i, %err_delete_handle.err_free_crit_edge ], [ %call8.i.i, %for.body66.err_free_crit_edge ]
  %ret.2 = phi i32 [ -12, %if.end7.i.i.err_free_crit_edge ], [ -12, %if.end17.err_free_crit_edge ], [ 0, %copy_to_user.exit.err_free_crit_edge ], [ %ret.1, %err_delete_handle.err_free_crit_edge ], [ %ret.1, %for.body66.err_free_crit_edge ]
  call fastcc void @vc4_free_hang_state(ptr noundef nonnull %3)
  call void @kfree(ptr noundef %retval.0.i.i134) #11
  br label %cleanup74

cleanup74:                                        ; preds = %err_free, %if.then13, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then13 ], [ %ret.2, %err_free ], [ -2, %if.then7 ], [ -19, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_free_hang_state(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bo_count = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bo_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bo = getelementptr inbounds %struct.vc4_hang_state, ptr %state, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %drm_gem_object_put.exit.for.body_crit_edge, %for.body.lr.ph
  %i.02 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %drm_gem_object_put.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.02
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.drm_gem_object_put.exit_crit_edge, label %if.then.i

for.body.drm_gem_object_put.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %for.body
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !102

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #11
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  tail call void @drm_gem_object_free(ptr noundef nonnull %5) #11, !callees !107
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %for.body.drm_gem_object_put.exit_crit_edge
  %inc = add nuw i32 %i.02, 1
  %7 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bo_count, align 8
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %drm_gem_object_put.exit.for.body_crit_edge, label %drm_gem_object_put.exit.for.end_crit_edge

drm_gem_object_put.exit.for.end_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

drm_gem_object_put.exit.for.body_crit_edge:       ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %drm_gem_object_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %state) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_wait_for_seqno(ptr noundef %dev, i64 noundef %seqno, i64 noundef %timeout_ns, i1 noundef zeroext %interruptible) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #11
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !90) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %finished_seqno = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 15
  %13 = ptrtoint ptr %finished_seqno to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %finished_seqno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %seqno)
  %cmp.not = icmp ult i64 %14, %seqno
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %timeout_ns)
  %cmp5 = icmp eq i64 %timeout_ns, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %call8 = call i32 @nsecs_to_jiffies(i64 noundef %timeout_ns) #11
  %add = add i32 %call8, %15
  call fastcc void @trace_vc4_wait_for_seqno_begin(ptr noundef %dev, i64 noundef %seqno, i64 noundef %timeout_ns)
  %job_wait_queue = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 20
  %cond = select i1 %interruptible, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %timeout_ns)
  %cmp20.not = icmp eq i64 %timeout_ns, -1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end7
  call void @prepare_to_wait(ptr noundef %job_wait_queue, ptr noundef nonnull %wait, i32 noundef %cond) #11
  br i1 %interruptible, label %land.lhs.true, label %for.cond.if.end15_crit_edge

for.cond.if.end15_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %for.cond
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stack.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.lhs.true.for.end_crit_edge, !prof !102

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

signal_pending.exit:                              ; preds = %land.lhs.true
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %19, align 4
  %and1.i.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool13.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool13.not, label %signal_pending.exit.if.end15_crit_edge, label %signal_pending.exit.for.end_crit_edge

signal_pending.exit.for.end_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

signal_pending.exit.if.end15_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %signal_pending.exit.if.end15_crit_edge, %for.cond.if.end15_crit_edge
  %25 = ptrtoint ptr %finished_seqno to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %finished_seqno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %seqno)
  %cmp17.not = icmp ult i64 %26, %seqno
  br i1 %cmp17.not, label %if.end19, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end19:                                         ; preds = %if.end15
  br i1 %cmp20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %27, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp22 = icmp sgt i32 %sub, -1
  br i1 %cmp22, label %if.then21.for.end_crit_edge, label %if.end24

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end24:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub25 = sub i32 %add, %28
  %call26 = call i32 @schedule_timeout(i32 noundef %sub25) #11
  br label %for.cond.backedge

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @schedule() #11
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.else, %if.end24
  br label %for.cond

for.end:                                          ; preds = %if.then21.for.end_crit_edge, %if.end15.for.end_crit_edge, %signal_pending.exit.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.end15.for.end_crit_edge ], [ -512, %signal_pending.exit.for.end_crit_edge ], [ -62, %if.then21.for.end_crit_edge ], [ -512, %land.lhs.true.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %job_wait_queue, ptr noundef nonnull %wait) #11
  call fastcc void @trace_vc4_wait_for_seqno_end(ptr noundef %dev, i64 noundef %seqno)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ -62, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_vc4_wait_for_seqno_begin(ptr noundef %dev, i64 noundef %seqno, i64 noundef %timeout) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_vc4_wait_for_seqno_begin, i32 0, i32 1), ptr blockaddress(@trace_vc4_wait_for_seqno_begin, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !108

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !90) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %call42 = tail call i32 @__traceiter_vc4_wait_for_seqno_begin(ptr noundef null, ptr noundef %dev, i64 noundef %seqno, i64 noundef %timeout) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  %13 = tail call i32 @llvm.read_register.i32(metadata !90) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !90) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !102

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !90) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_vc4_wait_for_seqno_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_vc4_wait_for_seqno_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_vc4_wait_for_seqno_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_vc4_wait_for_seqno_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 35, ptr noundef nonnull @.str.25) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !112
  %31 = tail call i32 @llvm.read_register.i32(metadata !90) #11
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
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_vc4_wait_for_seqno_end(ptr noundef %dev, i64 noundef %seqno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_vc4_wait_for_seqno_end, i32 0, i32 1), ptr blockaddress(@trace_vc4_wait_for_seqno_end, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !108

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !90) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !113
  %call42 = tail call i32 @__traceiter_vc4_wait_for_seqno_end(ptr noundef null, ptr noundef %dev, i64 noundef %seqno) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !114
  %13 = tail call i32 @llvm.read_register.i32(metadata !90) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !90) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !102

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !90) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_vc4_wait_for_seqno_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_vc4_wait_for_seqno_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_vc4_wait_for_seqno_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_vc4_wait_for_seqno_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 53, ptr noundef nonnull @.str.25) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !112
  %31 = tail call i32 @llvm.read_register.i32(metadata !90) #11
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_submit_next_bin_job(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bin_job_list.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 16
  %v3d.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 3
  %active_perfmon = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 22
  %render_job_list.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 17
  %prev.i2.i.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 17, i32 1
  br label %again

again:                                            ; preds = %land.lhs.true13.again_crit_edge, %entry
  %0 = ptrtoint ptr %bin_job_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %bin_job_list.i, align 4
  %cmp.not.i = icmp eq ptr %1, %bin_job_list.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -60
  %tobool.not52 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not52
  br i1 %tobool.not, label %again.cleanup20_crit_edge, label %if.end

again.cleanup20_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup20

if.end:                                           ; preds = %again
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !115
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v3d.i, align 4
  %regs.i = getelementptr inbounds %struct.vc4_v3d, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 67108864) #11, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !117
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v3d.i, align 4
  %regs261.i = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regs261.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs261.i, align 4
  %add.ptr262.i = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr262.i, i32 252645135) #11, !srcloc !116
  %perfmon = getelementptr i8, ptr %1, i32 108
  %10 = ptrtoint ptr %perfmon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %perfmon, align 8
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %active_perfmon to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %active_perfmon, align 4
  %cmp.not = icmp eq ptr %13, %11
  br i1 %cmp.not, label %land.lhs.true.if.end6_crit_edge, label %if.then4

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vc4_perfmon_start(ptr noundef %dev, ptr noundef nonnull %11) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %ct0ca = getelementptr i8, ptr %1, i32 56
  %14 = ptrtoint ptr %ct0ca to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ct0ca, align 4
  %ct0ea = getelementptr i8, ptr %1, i32 60
  %16 = ptrtoint ptr %ct0ea to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ct0ea, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp7.not = icmp eq i32 %15, %17
  br i1 %cmp7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !118
  tail call void @arm_heavy_mb() #11
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  %19 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %v3d.i, align 4
  %regs.i44 = getelementptr inbounds %struct.vc4_v3d, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %22, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %18) #11, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !119
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  %24 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %v3d.i, align 4
  %regs5.i = getelementptr inbounds %struct.vc4_v3d, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs5.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %27, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %23) #11, !srcloc !116
  br label %cleanup20

if.else:                                          ; preds = %if.end6
  %28 = ptrtoint ptr %render_job_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %render_job_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %29, %render_job_list.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.__list_del_entry.exit.i.i_crit_edge

if.else.__list_del_entry.exit.i.i_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %1, i32 4
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.else.__list_del_entry.exit.i.i_crit_edge
  %36 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %37, ptr noundef %render_job_list.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %1, ptr %prev.i2.i.i, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %render_job_list.i, ptr %1, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %1, i32 4
  %40 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %1, ptr %37, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  br i1 %cmp.i.not.i, label %if.then.i, label %list_move_tail.exit.i.vc4_move_job_to_render.exit_crit_edge

list_move_tail.exit.i.vc4_move_job_to_render.exit_crit_edge: ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_move_job_to_render.exit

if.then.i:                                        ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vc4_submit_next_render_job(ptr noundef %dev) #11
  br label %vc4_move_job_to_render.exit

vc4_move_job_to_render.exit:                      ; preds = %if.then.i, %list_move_tail.exit.i.vc4_move_job_to_render.exit_crit_edge
  %42 = ptrtoint ptr %bin_job_list.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %bin_job_list.i, align 4
  %cmp.not.i47 = icmp eq ptr %43, %bin_job_list.i
  %add.ptr.i48 = getelementptr i8, ptr %43, i32 -60
  %tobool12.not53 = icmp eq ptr %add.ptr.i48, null
  %tobool12.not = or i1 %cmp.not.i47, %tobool12.not53
  br i1 %tobool12.not, label %vc4_move_job_to_render.exit.cleanup20_crit_edge, label %land.lhs.true13

vc4_move_job_to_render.exit.cleanup20_crit_edge:  ; preds = %vc4_move_job_to_render.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup20

land.lhs.true13:                                  ; preds = %vc4_move_job_to_render.exit
  %perfmon14 = getelementptr i8, ptr %43, i32 108
  %44 = ptrtoint ptr %perfmon14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %perfmon14, align 8
  %46 = ptrtoint ptr %perfmon to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %perfmon, align 8
  %cmp16 = icmp eq ptr %45, %47
  br i1 %cmp16, label %land.lhs.true13.again_crit_edge, label %land.lhs.true13.cleanup20_crit_edge

land.lhs.true13.cleanup20_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup20

land.lhs.true13.again_crit_edge:                  ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %again

cleanup20:                                        ; preds = %land.lhs.true13.cleanup20_crit_edge, %vc4_move_job_to_render.exit.cleanup20_crit_edge, %if.then8, %again.cleanup20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_perfmon_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_move_job_to_render(ptr noundef %dev, ptr noundef %exec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %render_job_list = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %render_job_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %render_job_list, align 4
  %cmp.i.not = icmp eq ptr %1, %render_job_list
  %head = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 17, i32 1
  %8 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %9, ptr noundef %render_job_list) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %head, ptr %prev.i2.i, align 4
  %11 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %render_job_list, ptr %head, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %head, ptr %9, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  br i1 %cmp.i.not, label %if.then, label %list_move_tail.exit.if.end_crit_edge

list_move_tail.exit.if.end_crit_edge:             ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vc4_submit_next_render_job(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %list_move_tail.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_submit_next_render_job(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %render_job_list.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %render_job_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %render_job_list.i, align 4
  %cmp.not.i = icmp eq ptr %1, %render_job_list.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -60
  %tobool.not11 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not11
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !120
  tail call void @arm_heavy_mb() #11
  %v3d.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v3d.i, align 4
  %regs.i = getelementptr inbounds %struct.vc4_v3d, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 67108864) #11, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !121
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v3d.i, align 4
  %regs127.i = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regs127.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs127.i, align 4
  %add.ptr128.i = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128.i, i32 3855) #11, !srcloc !116
  %ct1ca = getelementptr i8, ptr %1, i32 64
  %10 = ptrtoint ptr %ct1ca to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ct1ca, align 4
  %ct1ea = getelementptr i8, ptr %1, i32 68
  %12 = ptrtoint ptr %ct1ea to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ct1ea, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !118
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  %15 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %v3d.i, align 4
  %regs.i9 = getelementptr inbounds %struct.vc4_v3d, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %regs.i9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %18, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %14) #11, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !119
  tail call void @arm_heavy_mb() #11
  %19 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  %20 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %v3d.i, align 4
  %regs5.i = getelementptr inbounds %struct.vc4_v3d, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs5.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %23, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %19) #11, !srcloc !116
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_job_handle_completed(ptr noundef %vc4) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %job_lock = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 19
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock) #11
  %job_done_list = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 18
  %0 = ptrtoint ptr %job_done_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %job_done_list, align 4
  %cmp.i.not73 = icmp eq ptr %1, %job_done_list
  br i1 %cmp.i.not73, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %irqflags.074 = phi i32 [ %call18, %list_del.exit.while.body_crit_edge ], [ %call2, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -60
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %irqflags.074) #11
  tail call fastcc void @vc4_complete_exec(ptr noundef %vc4, ptr noundef %add.ptr)
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock) #11
  %11 = ptrtoint ptr %job_done_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %job_done_list, align 4
  %cmp.i.not = icmp eq ptr %12, %job_done_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %irqflags.0.lcssa = phi i32 [ %call2, %entry.while.end_crit_edge ], [ %call18, %list_del.exit.while.end_crit_edge ]
  %seqno_cb_list = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 23
  %13 = ptrtoint ptr %seqno_cb_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %seqno_cb_list, align 8
  %cmp35.not77 = icmp eq ptr %14, %seqno_cb_list
  br i1 %cmp35.not77, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %finished_seqno = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in78 = phi ptr [ %14, %for.body.lr.ph ], [ %.pn81, %for.inc.for.body_crit_edge ]
  %cb.080 = getelementptr i8, ptr %.pn.in78, i32 -4
  %15 = ptrtoint ptr %.pn.in78 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn81 = load ptr, ptr %.pn.in78, align 4
  %seqno = getelementptr i8, ptr %.pn.in78, i32 44
  %16 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %seqno, align 8
  %18 = ptrtoint ptr %finished_seqno to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %finished_seqno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp38.not = icmp ugt i64 %17, %19
  br i1 %cmp38.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i.i68 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in78) #11
  br i1 %call.i.i68, label %if.end.i.i71, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i71:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i69 = getelementptr inbounds %struct.list_head, ptr %.pn.in78, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i69 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i69, align 4
  %22 = ptrtoint ptr %.pn.in78 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %.pn.in78, align 4
  %prev1.i.i.i70 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i70, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i71, %if.then.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %.pn.in78 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %.pn.in78, ptr %.pn.in78, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in78, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %.pn.in78, ptr %prev.i3.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i72 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %cb.080) #11
  br label %for.inc

for.inc:                                          ; preds = %list_del_init.exit, %for.body.for.inc_crit_edge
  %cmp35.not = icmp eq ptr %.pn81, %seqno_cb_list
  br i1 %cmp35.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %irqflags.0.lcssa) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_complete_exec(ptr noundef %dev, ptr noundef %exec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fence = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 2
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @dma_fence_signal(ptr noundef nonnull %1) #11
  %2 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fence, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !102

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  tail call void @dma_fence_release(ptr noundef %refcount.i) #11, !callees !107
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %bo = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 6
  %5 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bo, align 8
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %for.cond.preheader

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

for.cond.preheader:                               ; preds = %if.end
  %bo_count = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 7
  %7 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bo_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp64.not = icmp eq i32 %8, 0
  br i1 %cmp64.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %drm_gem_object_put.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.065 = phi i32 [ %inc, %drm_gem_object_put.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %9 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bo, align 8
  %arrayidx = getelementptr ptr, ptr %10, i32 %i.065
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  tail call void @vc4_bo_dec_usecnt(ptr noundef %12) #11
  %13 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bo, align 8
  %arrayidx10 = getelementptr ptr, ptr %14, i32 %i.065
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx10, align 4
  %tobool.not.i52 = icmp eq ptr %16, null
  br i1 %tobool.not.i52, label %for.body.drm_gem_object_put.exit_crit_edge, label %if.then.i53

for.body.drm_gem_object_put.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_gem_object_put.exit

if.then.i53:                                      ; preds = %for.body
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %16, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr nonnull %16, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !102

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef 3) #11
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  tail call void @drm_gem_object_free(ptr noundef nonnull %16) #11, !callees !107
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %for.body.drm_gem_object_put.exit_crit_edge
  %inc = add nuw i32 %i.065, 1
  %18 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bo_count, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %drm_gem_object_put.exit.for.body_crit_edge, label %drm_gem_object_put.exit.for.end_crit_edge

drm_gem_object_put.exit.for.end_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

drm_gem_object_put.exit.for.body_crit_edge:       ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %drm_gem_object_put.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %20 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bo, align 8
  tail call void @kvfree(ptr noundef %21) #11
  br label %if.end13

if.end13:                                         ; preds = %for.end, %if.end.if.end13_crit_edge
  %unref_list = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 11
  %22 = ptrtoint ptr %unref_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %unref_list, align 4
  %cmp.i.not66 = icmp eq ptr %23, %unref_list
  br i1 %cmp.i.not66, label %if.end13.do.body20_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  br label %while.body

if.end13.do.body20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20

while.body:                                       ; preds = %drm_gem_object_put.exit63.while.body_crit_edge, %if.end13.while.body_crit_edge
  %24 = phi ptr [ %35, %drm_gem_object_put.exit63.while.body_crit_edge ], [ %23, %if.end13.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %24, i32 -388
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not.i54 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i54, label %list_del.exit.drm_gem_object_put.exit63_crit_edge, label %if.then.i58

list_del.exit.drm_gem_object_put.exit63_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_gem_object_put.exit63

if.then.i58:                                      ; preds = %list_del.exit
  %call.i.i.i.i.i.i.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr, i32 1, i32 3, i32 1) #11
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr, ptr nonnull %add.ptr, i32 1, ptr nonnull elementtype(i32) %add.ptr) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i.i56 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i56)
  %cmp.i.i.i.i.i.i57 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i56, 1
  br i1 %cmp.i.i.i.i.i.i57, label %if.then.i.i.i62, label %if.end5.i.i.i.i.i.i60

if.end5.i.i.i.i.i.i60:                            ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i56)
  %.not.i.i.i.i.i.i59 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i56, 0
  br i1 %.not.i.i.i.i.i.i59, label %if.end5.i.i.i.i.i.i60.drm_gem_object_put.exit63_crit_edge, label %if.then10.i.i.i.i.i.i61, !prof !102

if.end5.i.i.i.i.i.i60.drm_gem_object_put.exit63_crit_edge: ; preds = %if.end5.i.i.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_gem_object_put.exit63

if.then10.i.i.i.i.i.i61:                          ; preds = %if.end5.i.i.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr, i32 noundef 3) #11
  br label %drm_gem_object_put.exit63

if.then.i.i.i62:                                  ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  tail call void @drm_gem_object_free(ptr noundef nonnull %add.ptr) #11, !callees !107
  br label %drm_gem_object_put.exit63

drm_gem_object_put.exit63:                        ; preds = %if.then.i.i.i62, %if.then10.i.i.i.i.i.i61, %if.end5.i.i.i.i.i.i60.drm_gem_object_put.exit63_crit_edge, %list_del.exit.drm_gem_object_put.exit63_crit_edge
  %34 = ptrtoint ptr %unref_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %unref_list, align 4
  %cmp.i.not = icmp eq ptr %35, %unref_list
  br i1 %cmp.i.not, label %drm_gem_object_put.exit63.do.body20_crit_edge, label %drm_gem_object_put.exit63.while.body_crit_edge

drm_gem_object_put.exit63.while.body_crit_edge:   ; preds = %drm_gem_object_put.exit63
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

drm_gem_object_put.exit63.do.body20_crit_edge:    ; preds = %drm_gem_object_put.exit63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20

do.body20:                                        ; preds = %drm_gem_object_put.exit63.do.body20_crit_edge, %if.end13.do.body20_crit_edge
  %job_lock = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 19
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock) #11
  %bin_slots = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 24
  %36 = ptrtoint ptr %bin_slots to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bin_slots, align 8
  %neg = xor i32 %37, -1
  %bin_alloc_used = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 26
  %38 = ptrtoint ptr %bin_alloc_used to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bin_alloc_used, align 8
  %and = and i32 %39, %neg
  store i32 %and, ptr %bin_alloc_used, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call24) #11
  %bin_bo_used = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 39
  %40 = ptrtoint ptr %bin_bo_used to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bin_bo_used, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool28.not = icmp eq i8 %41, 0
  br i1 %tobool28.not, label %do.body20.if.end30_crit_edge, label %if.then29

do.body20.if.end30_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then29:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vc4_v3d_bin_bo_put(ptr noundef %dev) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %do.body20.if.end30_crit_edge
  %perfmon = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 38
  %42 = ptrtoint ptr %perfmon to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %perfmon, align 8
  tail call void @vc4_perfmon_put(ptr noundef %43) #11
  tail call void @vc4_v3d_pm_put(ptr noundef %dev) #11
  tail call void @kfree(ptr noundef %exec) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_queue_seqno_cb(ptr noundef %dev, ptr noundef %cb, i64 noundef %seqno, ptr noundef %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %func1 = getelementptr inbounds %struct.vc4_seqno_cb, ptr %cb, i32 0, i32 2
  %0 = ptrtoint ptr %func1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %func1, align 8
  tail call void @__init_work(ptr noundef %cb, i32 noundef 0) #11
  %1 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %cb, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %cb, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @vc4_queue_seqno_cb.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry5 = getelementptr inbounds %struct.work_struct, ptr %cb, i32 0, i32 1
  %2 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %cb, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry5, ptr %prev.i, align 4
  %func7 = getelementptr inbounds %struct.work_struct, ptr %cb, i32 0, i32 2
  %4 = ptrtoint ptr %func7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vc4_seqno_cb_work, ptr %func7, align 4
  %job_lock = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 19
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock) #11
  %finished_seqno = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 15
  %5 = ptrtoint ptr %finished_seqno to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %finished_seqno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %seqno)
  %cmp16 = icmp ult i64 %6, %seqno
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %seqno18 = getelementptr inbounds %struct.vc4_seqno_cb, ptr %cb, i32 0, i32 1
  %7 = ptrtoint ptr %seqno18 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %seqno, ptr %seqno18, align 8
  %seqno_cb_list = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 23
  %prev.i36 = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 23, i32 1
  %8 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i36, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry5, ptr noundef %9, ptr noundef %seqno_cb_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry5, ptr %prev.i36, align 4
  %11 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %seqno_cb_list, ptr %entry5, align 4
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry5, ptr %9, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i37 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %cb) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.i, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call11) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_seqno_cb_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.vc4_seqno_cb, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 8
  tail call void %1(ptr noundef %work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_wait_seqno_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data, align 8
  %timeout_ns = getelementptr inbounds %struct.drm_vc4_wait_seqno, ptr %data, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %timeout_ns, align 8
  %call.i = tail call i32 @vc4_wait_for_seqno(ptr noundef %dev, i64 noundef %1, i64 noundef %4, i1 noundef zeroext true) #11
  %5 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %entry.vc4_wait_for_seqno_ioctl_helper.exit_crit_edge [
    i32 -4, label %entry.land.lhs.true.i_crit_edge
    i32 -512, label %entry.land.lhs.true.i_crit_edge2
  ]

entry.land.lhs.true.i_crit_edge2:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

entry.vc4_wait_for_seqno_ioctl_helper.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_wait_for_seqno_ioctl_helper.exit

land.lhs.true.i:                                  ; preds = %entry.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge2
  %6 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %timeout_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp2.not.i = icmp eq i64 %7, -1
  br i1 %cmp2.not.i, label %land.lhs.true.i.vc4_wait_for_seqno_ioctl_helper.exit_crit_edge, label %if.then.i

land.lhs.true.i.vc4_wait_for_seqno_ioctl_helper.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_wait_for_seqno_ioctl_helper.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %8, %2
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef %sub.i) #11
  %conv.i.i = zext i32 %call.i.i to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 1000
  %9 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timeout_ns, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %mul.i.i)
  %cmp4.not.i = icmp ult i64 %10, %mul.i.i
  br i1 %cmp4.not.i, label %if.then.i.vc4_wait_for_seqno_ioctl_helper.exit_crit_edge, label %if.then5.i

if.then.i.vc4_wait_for_seqno_ioctl_helper.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_wait_for_seqno_ioctl_helper.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub6.i = sub i64 %10, %mul.i.i
  %11 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %sub6.i, ptr %timeout_ns, align 8
  br label %vc4_wait_for_seqno_ioctl_helper.exit

vc4_wait_for_seqno_ioctl_helper.exit:             ; preds = %if.then5.i, %if.then.i.vc4_wait_for_seqno_ioctl_helper.exit_crit_edge, %land.lhs.true.i.vc4_wait_for_seqno_ioctl_helper.exit_crit_edge, %entry.vc4_wait_for_seqno_ioctl_helper.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_wait_bo_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.drm_vc4_wait_bo, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %3) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %5) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %seqno = getelementptr inbounds %struct.vc4_bo, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %seqno, align 8
  %timeout_ns = getelementptr inbounds %struct.drm_vc4_wait_bo, ptr %data, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timeout_ns, align 8
  %call.i = tail call i32 @vc4_wait_for_seqno(ptr noundef %dev, i64 noundef %7, i64 noundef %10, i1 noundef zeroext true) #11
  %11 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call.i, label %if.end3.if.then.i14_crit_edge [
    i32 -4, label %if.end3.land.lhs.true.i_crit_edge
    i32 -512, label %if.end3.land.lhs.true.i_crit_edge15
  ]

if.end3.land.lhs.true.i_crit_edge15:              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end3.land.lhs.true.i_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end3.if.then.i14_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i14

land.lhs.true.i:                                  ; preds = %if.end3.land.lhs.true.i_crit_edge, %if.end3.land.lhs.true.i_crit_edge15
  %12 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %timeout_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp2.not.i = icmp eq i64 %13, -1
  br i1 %cmp2.not.i, label %land.lhs.true.i.if.then.i14_crit_edge, label %if.then.i

land.lhs.true.i.if.then.i14_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i14

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %14, %8
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef %sub.i) #11
  %conv.i.i = zext i32 %call.i.i to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 1000
  %15 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %timeout_ns, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %mul.i.i)
  %cmp4.not.i = icmp ult i64 %16, %mul.i.i
  br i1 %cmp4.not.i, label %if.then.i.if.then.i14_crit_edge, label %if.then5.i

if.then.i.if.then.i14_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i14

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub6.i = sub i64 %16, %mul.i.i
  %17 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %sub6.i, ptr %timeout_ns, align 8
  br label %if.then.i14

if.then.i14:                                      ; preds = %if.then5.i, %if.then.i.if.then.i14_crit_edge, %land.lhs.true.i.if.then.i14_crit_edge, %if.end3.if.then.i14_crit_edge
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !102

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #11, !callees !107
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then1 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call.i, %if.then10.i.i.i.i.i.i ], [ %call.i, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_submit_cl_ioctl(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %acquire_ctx = alloca %struct.ww_acquire_ctx, align 4
  %in_fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %acquire_ctx) #11
  %2 = call ptr @memset(ptr %acquire_ctx, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_fence) #11
  %3 = ptrtoint ptr %in_fence to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %in_fence, align 4, !annotation !101
  %v3d = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v3d, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %data, i32 0, i32 25
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp.not = icmp ult i32 %7, 16
  br i1 %cmp.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %7) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pad2 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %data, i32 0, i32 30
  %8 = ptrtoint ptr %pad2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pad2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.not = icmp eq i32 %9, 0
  br i1 %cmp4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %9) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 176) #16
  %tobool9.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @vc4_v3d_pm_get(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %args16 = getelementptr inbounds %struct.vc4_exec_info, ptr %call7.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %args16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data, ptr %args16, align 4
  %unref_list = getelementptr inbounds %struct.vc4_exec_info, ptr %call7.i.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %unref_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %unref_list, ptr %unref_list, align 4
  %prev.i = getelementptr inbounds %struct.vc4_exec_info, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %unref_list, ptr %prev.i, align 8
  %bo_handle_count.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %data, i32 0, i32 8
  %14 = ptrtoint ptr %bo_handle_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bo_handle_count.i, align 8
  %bo_count.i = getelementptr inbounds %struct.vc4_exec_info, ptr %call7.i.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %bo_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28) #11
  br label %fail

if.end.i:                                         ; preds = %if.end15
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 4) #11
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %kvmalloc_array.exit.thread.i, label %kvmalloc_array.exit.i, !prof !100

kvmalloc_array.exit.thread.i:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %bo10.i = getelementptr inbounds %struct.vc4_exec_info, ptr %call7.i.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %bo10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %bo10.i, align 8
  br label %if.then6.i

kvmalloc_array.exit.i:                            ; preds = %if.end.i
  %20 = extractvalue { i32, i1 } %17, 0
  %call.i.i1.i = tail call noalias ptr @kvmalloc_node(i32 noundef %20, i32 noundef 3520, i32 noundef -1) #14
  %bo.i = getelementptr inbounds %struct.vc4_exec_info, ptr %call7.i.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %bo.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i1.i, ptr %bo.i, align 8
  %tobool5.not.i = icmp eq ptr %call.i.i1.i, null
  br i1 %tobool5.not.i, label %kvmalloc_array.exit.i.if.then6.i_crit_edge, label %if.end7.i

kvmalloc_array.exit.i.if.then6.i_crit_edge:       ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

if.then6.i:                                       ; preds = %kvmalloc_array.exit.i.if.then6.i_crit_edge, %kvmalloc_array.exit.thread.i
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #11
  br label %fail

if.end7.i:                                        ; preds = %kvmalloc_array.exit.i
  %22 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bo_count.i, align 4
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 4) #11
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %if.end7.i.fail.sink.split.i_crit_edge, label %kvmalloc_array.exit5.i, !prof !100

if.end7.i.fail.sink.split.i_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.sink.split.i

kvmalloc_array.exit5.i:                           ; preds = %if.end7.i
  %26 = extractvalue { i32, i1 } %24, 0
  %call.i.i2.i = tail call noalias ptr @kvmalloc_node(i32 noundef %26, i32 noundef 3264, i32 noundef -1) #14
  %tobool10.not.i = icmp eq ptr %call.i.i2.i, null
  br i1 %tobool10.not.i, label %kvmalloc_array.exit5.i.fail.sink.split.i_crit_edge, label %if.end12.i

kvmalloc_array.exit5.i.fail.sink.split.i_crit_edge: ; preds = %kvmalloc_array.exit5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.sink.split.i

if.end12.i:                                       ; preds = %kvmalloc_array.exit5.i
  %bo_handles.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %data, i32 0, i32 3
  %27 = ptrtoint ptr %bo_handles.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bo_handles.i, align 8
  %conv14.i = trunc i64 %28 to i32
  %29 = inttoptr i32 %conv14.i to ptr
  %30 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bo_count.i, align 4
  %mul.i = shl i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp9.i.i.i = icmp slt i32 %mul.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end12.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.fail.sink.split.i_crit_edge, label %if.then27.i.i.i, !prof !102

land.rhs16.i.i.i.fail.sink.split.i_crit_edge:     ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.sink.split.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %fail.sink.split.i

if.then.i.i.i.i:                                  ; preds = %if.end12.i
  tail call void @__check_object_size(ptr noundef nonnull %call.i.i2.i, i32 noundef %mul.i, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %29, i32 %mul.i, i32 -1226833920) #15, !srcloc !123
  %asmresult.i.i.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !102

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i2.i, i32 noundef %mul.i) #11
  %33 = tail call i32 @llvm.read_register.i32(metadata !90) #11
  %and.i.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !124
  %and.i.i.i.i.i = and i32 %35, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !126
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i.i2.i, ptr noundef %29, i32 noundef %mul.i) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #11, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !126
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %mul.i, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %mul.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end19.i, label %if.then11.i.i.i, !prof !102

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = sub i32 %mul.i, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i2.i, i32 %sub.i.i.i
  %36 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %fail.sink.split.i

if.end19.i:                                       ; preds = %if.end.i.i.i
  %table_lock.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %table_lock.i) #11
  %37 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bo_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp2137.not.i = icmp eq i32 %38, 0
  br i1 %cmp2137.not.i, label %if.end19.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end19.i.for.end.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end19.i
  %object_idr.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %call.i.i2.i, i32 %i.038.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %call24.i = tail call ptr @idr_find(ptr noundef %object_idr.i, i32 noundef %40) #11
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %for.end.thread.i, label %if.end28.i

if.end28.i:                                       ; preds = %for.body.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call24.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull %call24.i, i32 1, i32 3, i32 1) #11
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call24.i, ptr nonnull %call24.i, i32 1, ptr nonnull elementtype(i32) %call24.i) #11, !srcloc !127
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end28.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !100

if.end28.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end28.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %42 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %.not.i.i.i.i.i.i = icmp sgt i32 %42, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.for.inc.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !102

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.for.inc.i_crit_edge:          ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end28.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end28.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call24.i, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %for.inc.i

for.end.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.le = getelementptr i32, ptr %call.i.i2.i, i32 %i.038.i
  %43 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.le, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.32, i32 noundef %i.038.i, i32 noundef %44) #11
  tail call void @_raw_spin_unlock(ptr noundef %table_lock.i) #11
  br label %fail_put_bo.i

for.inc.i:                                        ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.for.inc.i_crit_edge
  %45 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bo.i, align 8
  %arrayidx30.i = getelementptr ptr, ptr %46, i32 %i.038.i
  %47 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call24.i, ptr %arrayidx30.i, align 4
  %inc.i = add nuw i32 %i.038.i, 1
  %48 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bo_count.i, align 4
  %cmp21.i = icmp ult i32 %inc.i, %49
  br i1 %cmp21.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end19.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %table_lock.i) #11
  %50 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bo_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp3739.not.i = icmp eq i32 %51, 0
  br i1 %cmp3739.not.i, label %for.end.i.vc4_cl_lookup_bos.exit.thread140_crit_edge, label %for.end.i.for.body39.i_crit_edge

for.end.i.for.body39.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body39.i

for.end.i.vc4_cl_lookup_bos.exit.thread140_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_cl_lookup_bos.exit.thread140

for.body39.i:                                     ; preds = %for.inc47.i.for.body39.i_crit_edge, %for.end.i.for.body39.i_crit_edge
  %i.140.i = phi i32 [ %inc48.i, %for.inc47.i.for.body39.i_crit_edge ], [ 0, %for.end.i.for.body39.i_crit_edge ]
  %52 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bo.i, align 8
  %arrayidx41.i = getelementptr ptr, ptr %53, i32 %i.140.i
  %54 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx41.i, align 4
  %call43.i = tail call i32 @vc4_bo_inc_usecnt(ptr noundef %55) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %for.inc47.i, label %for.cond50.preheader.i

for.cond50.preheader.i:                           ; preds = %for.body39.i
  %i.241.i = add i32 %i.140.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.241.i)
  %cmp5142.i = icmp sgt i32 %i.241.i, -1
  br i1 %cmp5142.i, label %for.cond50.preheader.i.for.body53.i_crit_edge, label %for.cond50.preheader.i.fail_put_bo.i_crit_edge

for.cond50.preheader.i.fail_put_bo.i_crit_edge:   ; preds = %for.cond50.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_put_bo.i

for.cond50.preheader.i.for.body53.i_crit_edge:    ; preds = %for.cond50.preheader.i
  br label %for.body53.i

for.inc47.i:                                      ; preds = %for.body39.i
  %inc48.i = add nuw i32 %i.140.i, 1
  %56 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bo_count.i, align 4
  %cmp37.i = icmp ult i32 %inc48.i, %57
  br i1 %cmp37.i, label %for.inc47.i.for.body39.i_crit_edge, label %for.inc47.i.vc4_cl_lookup_bos.exit.thread140_crit_edge

for.inc47.i.vc4_cl_lookup_bos.exit.thread140_crit_edge: ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_cl_lookup_bos.exit.thread140

for.inc47.i.for.body39.i_crit_edge:               ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body39.i

vc4_cl_lookup_bos.exit.thread140:                 ; preds = %for.inc47.i.vc4_cl_lookup_bos.exit.thread140_crit_edge, %for.end.i.vc4_cl_lookup_bos.exit.thread140_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i2.i) #11
  %perfmonid = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %data, i32 0, i32 27
  %58 = ptrtoint ptr %perfmonid to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %perfmonid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool21.not = icmp eq i32 %59, 0
  br i1 %tobool21.not, label %vc4_cl_lookup_bos.exit.thread140.if.end29_crit_edge, label %if.then22

vc4_cl_lookup_bos.exit.thread140.if.end29_crit_edge: ; preds = %vc4_cl_lookup_bos.exit.thread140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

for.body53.i:                                     ; preds = %for.body53.i.for.body53.i_crit_edge, %for.cond50.preheader.i.for.body53.i_crit_edge
  %i.243.i = phi i32 [ %i.2.i, %for.body53.i.for.body53.i_crit_edge ], [ %i.241.i, %for.cond50.preheader.i.for.body53.i_crit_edge ]
  %60 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bo.i, align 8
  %arrayidx55.i = getelementptr ptr, ptr %61, i32 %i.243.i
  %62 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx55.i, align 4
  tail call void @vc4_bo_dec_usecnt(ptr noundef %63) #11
  %i.2.i = add nsw i32 %i.243.i, -1
  %cmp51.i.not = icmp eq i32 %i.243.i, 0
  br i1 %cmp51.i.not, label %for.body53.i.fail_put_bo.i_crit_edge, label %for.body53.i.for.body53.i_crit_edge

for.body53.i.for.body53.i_crit_edge:              ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body53.i

for.body53.i.fail_put_bo.i_crit_edge:             ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_put_bo.i

fail_put_bo.i:                                    ; preds = %for.body53.i.fail_put_bo.i_crit_edge, %for.cond50.preheader.i.fail_put_bo.i_crit_edge, %for.end.thread.i
  %ret.3.i = phi i32 [ -22, %for.end.thread.i ], [ %call43.i, %for.cond50.preheader.i.fail_put_bo.i_crit_edge ], [ %call43.i, %for.body53.i.fail_put_bo.i_crit_edge ]
  %64 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bo_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp6344.not.i = icmp eq i32 %65, 0
  br i1 %cmp6344.not.i, label %fail_put_bo.i.vc4_cl_lookup_bos.exit_crit_edge, label %fail_put_bo.i.land.rhs.i_crit_edge

fail_put_bo.i.land.rhs.i_crit_edge:               ; preds = %fail_put_bo.i
  br label %land.rhs.i

fail_put_bo.i.vc4_cl_lookup_bos.exit_crit_edge:   ; preds = %fail_put_bo.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_cl_lookup_bos.exit

land.rhs.i:                                       ; preds = %drm_gem_object_put.exit.i.land.rhs.i_crit_edge, %fail_put_bo.i.land.rhs.i_crit_edge
  %i.345.i = phi i32 [ %inc73.i, %drm_gem_object_put.exit.i.land.rhs.i_crit_edge ], [ 0, %fail_put_bo.i.land.rhs.i_crit_edge ]
  %66 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bo.i, align 8
  %arrayidx66.i = getelementptr ptr, ptr %67, i32 %i.345.i
  %68 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx66.i, align 4
  %tobool67.not.i = icmp eq ptr %69, null
  br i1 %tobool67.not.i, label %land.rhs.i.vc4_cl_lookup_bos.exit_crit_edge, label %if.then.i6.i

land.rhs.i.vc4_cl_lookup_bos.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_cl_lookup_bos.exit

if.then.i6.i:                                     ; preds = %land.rhs.i
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %69, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr nonnull %69, i32 1, i32 3, i32 1) #11
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %69, ptr nonnull %69, i32 1, ptr nonnull elementtype(i32) %69) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i7.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !102

if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_gem_object_put.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %69, i32 noundef 3) #11
  br label %drm_gem_object_put.exit.i

if.then.i.i.i7.i:                                 ; preds = %if.then.i6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  tail call void @drm_gem_object_free(ptr noundef nonnull %69) #11, !callees !107
  br label %drm_gem_object_put.exit.i

drm_gem_object_put.exit.i:                        ; preds = %if.then.i.i.i7.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge
  %inc73.i = add nuw i32 %i.345.i, 1
  %71 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bo_count.i, align 4
  %cmp63.i = icmp ult i32 %inc73.i, %72
  br i1 %cmp63.i, label %drm_gem_object_put.exit.i.land.rhs.i_crit_edge, label %drm_gem_object_put.exit.i.vc4_cl_lookup_bos.exit_crit_edge

drm_gem_object_put.exit.i.vc4_cl_lookup_bos.exit_crit_edge: ; preds = %drm_gem_object_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_cl_lookup_bos.exit

drm_gem_object_put.exit.i.land.rhs.i_crit_edge:   ; preds = %drm_gem_object_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

fail.sink.split.i:                                ; preds = %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.fail.sink.split.i_crit_edge, %kvmalloc_array.exit5.i.fail.sink.split.i_crit_edge, %if.end7.i.fail.sink.split.i_crit_edge
  %.str.31.sink.i = phi ptr [ @.str.30, %if.end7.i.fail.sink.split.i_crit_edge ], [ @.str.30, %kvmalloc_array.exit5.i.fail.sink.split.i_crit_edge ], [ @.str.31, %if.then11.i.i.i ], [ @.str.31, %if.then27.i.i.i ], [ @.str.31, %land.rhs16.i.i.i.fail.sink.split.i_crit_edge ]
  %retval.0.i419.ph.i = phi ptr [ null, %if.end7.i.fail.sink.split.i_crit_edge ], [ null, %kvmalloc_array.exit5.i.fail.sink.split.i_crit_edge ], [ %call.i.i2.i, %if.then11.i.i.i ], [ %call.i.i2.i, %if.then27.i.i.i ], [ %call.i.i2.i, %land.rhs16.i.i.i.fail.sink.split.i_crit_edge ]
  %ret.4.ph.i = phi i32 [ -12, %if.end7.i.fail.sink.split.i_crit_edge ], [ -12, %kvmalloc_array.exit5.i.fail.sink.split.i_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.fail.sink.split.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.31.sink.i) #11
  br label %vc4_cl_lookup_bos.exit

vc4_cl_lookup_bos.exit:                           ; preds = %fail.sink.split.i, %drm_gem_object_put.exit.i.vc4_cl_lookup_bos.exit_crit_edge, %land.rhs.i.vc4_cl_lookup_bos.exit_crit_edge, %fail_put_bo.i.vc4_cl_lookup_bos.exit_crit_edge
  %retval.0.i419.i = phi ptr [ %call.i.i2.i, %fail_put_bo.i.vc4_cl_lookup_bos.exit_crit_edge ], [ %retval.0.i419.ph.i, %fail.sink.split.i ], [ %call.i.i2.i, %drm_gem_object_put.exit.i.vc4_cl_lookup_bos.exit_crit_edge ], [ %call.i.i2.i, %land.rhs.i.vc4_cl_lookup_bos.exit_crit_edge ]
  %ret.4.i = phi i32 [ %ret.3.i, %fail_put_bo.i.vc4_cl_lookup_bos.exit_crit_edge ], [ %ret.4.ph.i, %fail.sink.split.i ], [ %ret.3.i, %drm_gem_object_put.exit.i.vc4_cl_lookup_bos.exit_crit_edge ], [ %ret.3.i, %land.rhs.i.vc4_cl_lookup_bos.exit_crit_edge ]
  tail call void @kvfree(ptr noundef %retval.0.i419.i) #11
  %73 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bo.i, align 8
  tail call void @kvfree(ptr noundef %74) #11
  %75 = ptrtoint ptr %bo.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %bo.i, align 8
  br label %fail

if.then22:                                        ; preds = %vc4_cl_lookup_bos.exit.thread140
  %call24 = tail call ptr @vc4_perfmon_find(ptr noundef %1, i32 noundef %59) #11
  %perfmon = getelementptr inbounds %struct.vc4_exec_info, ptr %call7.i.i.i, i32 0, i32 38
  %76 = ptrtoint ptr %perfmon to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call24, ptr %perfmon, align 8
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %if.then22.fail_crit_edge, label %if.then22.if.end29_crit_edge

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then22.fail_crit_edge:                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end29:                                         ; preds = %if.then22.if.end29_crit_edge, %vc4_cl_lookup_bos.exit.thread140.if.end29_crit_edge
  %in_sync = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %data, i32 0, i32 28
  %77 = ptrtoint ptr %in_sync to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %in_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool30.not = icmp eq i32 %78, 0
  br i1 %tobool30.not, label %if.end29.if.end44_crit_edge, label %if.then31

if.end29.if.end44_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then31:                                        ; preds = %if.end29
  %call33 = call i32 @drm_syncobj_find_fence(ptr noundef %file_priv, i32 noundef %78, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %in_fence) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then31.fail_crit_edge

if.then31.fail_crit_edge:                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end36:                                         ; preds = %if.then31
  %79 = ptrtoint ptr %in_fence to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %in_fence, align 4
  %dma_fence_context = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 13
  %81 = ptrtoint ptr %dma_fence_context to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %dma_fence_context, align 8
  %call37 = call zeroext i1 @dma_fence_match_context(ptr noundef %80, i64 noundef %82) #11
  br i1 %call37, label %if.end36.if.end43_crit_edge, label %if.then38

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then38:                                        ; preds = %if.end36
  %83 = ptrtoint ptr %in_fence to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %in_fence, align 4
  %call.i = call i32 @dma_fence_wait_timeout(ptr noundef %84, i1 noundef zeroext true, i32 noundef 2147483647) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool40.not = icmp sgt i32 %call.i, -1
  br i1 %tobool40.not, label %if.then38.if.end43_crit_edge, label %if.then41

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %in_fence to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %in_fence, align 4
  call fastcc void @dma_fence_put(ptr noundef %86)
  br label %fail

if.end43:                                         ; preds = %if.then38.if.end43_crit_edge, %if.end36.if.end43_crit_edge
  %87 = ptrtoint ptr %in_fence to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %in_fence, align 4
  call fastcc void @dma_fence_put(ptr noundef %88)
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end29.if.end44_crit_edge
  %89 = ptrtoint ptr %args16 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %args16, align 4
  %bin_cl_size = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %bin_cl_size to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bin_cl_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp46.not = icmp eq i32 %92, 0
  br i1 %cmp46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end44
  %call48 = call fastcc i32 @vc4_get_bcl(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then47.if.end52_crit_edge, label %if.then47.fail_crit_edge

if.then47.fail_crit_edge:                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %ct0ca = getelementptr inbounds %struct.vc4_exec_info, ptr %call7.i.i.i, i32 0, i32 25
  %93 = ptrtoint ptr %ct0ca to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %ct0ca, align 4
  %ct0ea = getelementptr inbounds %struct.vc4_exec_info, ptr %call7.i.i.i, i32 0, i32 26
  %94 = ptrtoint ptr %ct0ea to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %ct0ea, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then47.if.end52_crit_edge
  %call53 = call i32 @vc4_get_rcl(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.fail_crit_edge

if.end52.fail_crit_edge:                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end56:                                         ; preds = %if.end52
  %call57 = call fastcc i32 @vc4_lock_bo_reservations(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %acquire_ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.fail_crit_edge

if.end56.fail_crit_edge:                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end60:                                         ; preds = %if.end56
  %out_sync61 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %data, i32 0, i32 29
  %95 = ptrtoint ptr %out_sync61 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %out_sync61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool62.not = icmp eq i32 %96, 0
  br i1 %tobool62.not, label %if.end69.thread, label %if.then63

if.end69.thread:                                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %args16 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %args16, align 4
  %call71144 = call fastcc i32 @vc4_queue_submit(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %acquire_ctx, ptr noundef null)
  br label %if.end74

if.then63:                                        ; preds = %if.end60
  %call65 = call ptr @drm_syncobj_find(ptr noundef %file_priv, i32 noundef %96) #11
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.then63.fail_crit_edge, label %if.then73

if.then63.fail_crit_edge:                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then73:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %args16 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %args16, align 4
  %call71 = call fastcc i32 @vc4_queue_submit(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %acquire_ctx, ptr noundef nonnull %call65)
  call fastcc void @drm_syncobj_put(ptr noundef nonnull %call65)
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end69.thread
  %call71146 = phi i32 [ %call71144, %if.end69.thread ], [ %call71, %if.then73 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71146)
  %tobool75.not = icmp eq i32 %call71146, 0
  br i1 %tobool75.not, label %if.end77, label %if.end74.fail_crit_edge

if.end74.fail_crit_edge:                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end77:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %emit_seqno = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 14
  %99 = ptrtoint ptr %emit_seqno to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %emit_seqno, align 8
  %seqno = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %data, i32 0, i32 26
  %101 = ptrtoint ptr %seqno to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %seqno, align 8
  br label %cleanup

fail:                                             ; preds = %if.end74.fail_crit_edge, %if.then63.fail_crit_edge, %if.end56.fail_crit_edge, %if.end52.fail_crit_edge, %if.then47.fail_crit_edge, %if.then41, %if.then31.fail_crit_edge, %if.then22.fail_crit_edge, %vc4_cl_lookup_bos.exit, %if.then6.i, %if.then.i
  %ret.0 = phi i32 [ %ret.4.i, %vc4_cl_lookup_bos.exit ], [ %call33, %if.then31.fail_crit_edge ], [ %call48, %if.then47.fail_crit_edge ], [ %call53, %if.end52.fail_crit_edge ], [ %call57, %if.end56.fail_crit_edge ], [ %call71146, %if.end74.fail_crit_edge ], [ %call.i, %if.then41 ], [ -2, %if.then22.fail_crit_edge ], [ -22, %if.then63.fail_crit_edge ], [ -22, %if.then.i ], [ -12, %if.then6.i ]
  call fastcc void @vc4_complete_exec(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end77, %if.then14, %if.then10, %if.then5, %if.then1, %if.then
  %retval.0 = phi i32 [ -22, %if.then1 ], [ -22, %if.then5 ], [ %call12, %if.then14 ], [ %ret.0, %fail ], [ 0, %if.end77 ], [ -12, %if.then10 ], [ -19, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_fence) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %acquire_ctx) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_v3d_pm_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_perfmon_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_find_fence(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_match_context(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_fence_put(ptr noundef %fence) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !102

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  tail call void @dma_fence_release(ptr noundef %refcount) #11, !callees !107
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_get_bcl(ptr noundef %dev, ptr noundef %exec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %args1 = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 5
  %0 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args1, align 4
  %bin_cl_size = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bin_cl_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bin_cl_size, align 8
  %add2 = add i32 %3, 15
  %div180 = and i32 %add2, -16
  %shader_rec_size = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %shader_rec_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shader_rec_size, align 4
  %add3 = add i32 %div180, %5
  %uniforms_size = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %uniforms_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uniforms_size, align 4
  %add4 = add i32 %add3, %7
  %shader_rec_count = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %shader_rec_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shader_rec_count, align 8
  %mul5 = shl i32 %9, 3
  %add6 = add i32 %add4, %mul5
  call void @__sanitizer_cov_trace_cmp4(i32 %div180, i32 %3)
  %cmp = icmp ult i32 %div180, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %div180)
  %cmp8 = icmp ult i32 %add3, %div180
  %or.cond = select i1 %cmp, i1 true, i1 %cmp8
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %add3)
  %cmp10 = icmp ult i32 %add4, %add3
  %or.cond181 = select i1 %or.cond, i1 true, i1 %cmp10
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870910, i32 %9)
  %cmp13 = icmp ugt i32 %9, 536870910
  %or.cond182 = select i1 %or.cond181, i1 true, i1 %cmp13
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %add4)
  %cmp15 = icmp ult i32 %add6, %add4
  %or.cond183 = select i1 %or.cond182, i1 true, i1 %cmp15
  br i1 %or.cond183, label %if.then, label %kvmalloc_array.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.33) #11
  br label %fail

kvmalloc_array.exit:                              ; preds = %entry
  %call.i.i250 = tail call noalias ptr @kvmalloc_node(i32 noundef %add6, i32 noundef 3264, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i250, null
  br i1 %tobool.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34) #11
  br label %fail

if.end18:                                         ; preds = %kvmalloc_array.exit
  %add.ptr19 = getelementptr i8, ptr %call.i.i250, i32 %div180
  %shader_rec_u = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 30
  %10 = ptrtoint ptr %shader_rec_u to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr19, ptr %shader_rec_u, align 8
  %add.ptr20 = getelementptr i8, ptr %call.i.i250, i32 %add3
  %uniforms_u = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 34
  %11 = ptrtoint ptr %uniforms_u to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr20, ptr %uniforms_u, align 8
  %add.ptr21 = getelementptr i8, ptr %call.i.i250, i32 %add4
  %shader_state = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 14
  %12 = ptrtoint ptr %shader_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr21, ptr %shader_state, align 8
  %13 = ptrtoint ptr %shader_rec_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shader_rec_count, align 8
  %shader_state_size = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 15
  %15 = ptrtoint ptr %shader_state_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %shader_state_size, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %1, align 8
  %conv26 = trunc i64 %17 to i32
  %18 = inttoptr i32 %conv26 to ptr
  %19 = ptrtoint ptr %bin_cl_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bin_cl_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp9.i.i = icmp slt i32 %20, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end18
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.fail_crit_edge, label %if.then27.i.i, !prof !102

land.rhs16.i.i.fail_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %fail

if.then.i.i.i:                                    ; preds = %if.end18
  tail call void @__check_object_size(ptr noundef nonnull %call.i.i250, i32 noundef %20, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 %20, i32 -1226833920) #15, !srcloc !123
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !102

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i250, i32 noundef %20) #11
  %22 = tail call i32 @llvm.read_register.i32(metadata !90) #11
  %and.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !124
  %and.i.i.i.i = and i32 %24, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !126
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i.i250, ptr noundef %18, i32 noundef %20) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #11, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !126
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %20, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %20, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end31, label %if.then11.i.i, !prof !102

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %20, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i250, i32 %sub.i.i
  %25 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %fail

if.end31:                                         ; preds = %if.end.i.i
  %26 = ptrtoint ptr %shader_rec_u to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shader_rec_u, align 8
  %shader_rec = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %shader_rec to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %shader_rec, align 8
  %conv39 = trunc i64 %29 to i32
  %30 = inttoptr i32 %conv39 to ptr
  %31 = ptrtoint ptr %shader_rec_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %shader_rec_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp9.i.i190 = icmp slt i32 %32, 0
  br i1 %cmp9.i.i190, label %land.rhs16.i.i193, label %if.then.i.i.i196

land.rhs16.i.i193:                                ; preds = %if.end31
  %.b71.i.i192 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i192, label %land.rhs16.i.i193.fail_crit_edge, label %if.then27.i.i194, !prof !102

land.rhs16.i.i193.fail_crit_edge:                 ; preds = %land.rhs16.i.i193
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then27.i.i194:                                 ; preds = %land.rhs16.i.i193
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %fail

if.then.i.i.i196:                                 ; preds = %if.end31
  tail call void @__check_object_size(ptr noundef %27, i32 noundef %32, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 156) #11
  %call.i.i197 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i197, label %if.then.i.i.i196.if.end.i.i211_crit_edge, label %land.lhs.true.i.i201

if.then.i.i.i196.if.end.i.i211_crit_edge:         ; preds = %if.then.i.i.i196
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i211

land.lhs.true.i.i201:                             ; preds = %if.then.i.i.i196
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %30, i32 %32, i32 -1226833920) #15, !srcloc !123
  %asmresult.i.i199 = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i199)
  %cmp.i6.i200 = icmp eq i32 %asmresult.i.i199, 0
  br i1 %cmp.i6.i200, label %if.then.i7.i208, label %land.lhs.true.i.i201.if.end.i.i211_crit_edge, !prof !102

land.lhs.true.i.i201.if.end.i.i211_crit_edge:     ; preds = %land.lhs.true.i.i201
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i211

if.then.i7.i208:                                  ; preds = %land.lhs.true.i.i201
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i202 = tail call zeroext i1 @__kasan_check_write(ptr noundef %27, i32 noundef %32) #11
  %34 = tail call i32 @llvm.read_register.i32(metadata !90) #11
  %and.i.i.i.i.i.i203 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i.i203 to ptr
  %cpu_domain.i.i.i.i.i204 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i204) #7, !srcloc !124
  %and.i.i.i.i205 = and i32 %36, -13
  %or.i.i.i.i206 = or i32 %and.i.i.i.i205, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i206) #11, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !126
  %call1.i.i.i207 = tail call i32 @arm_copy_from_user(ptr noundef %27, ptr noundef %30, i32 noundef %32) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #11, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !126
  br label %if.end.i.i211

if.end.i.i211:                                    ; preds = %if.then.i7.i208, %land.lhs.true.i.i201.if.end.i.i211_crit_edge, %if.then.i.i.i196.if.end.i.i211_crit_edge
  %res.0.i.i209 = phi i32 [ %32, %if.then.i.i.i196.if.end.i.i211_crit_edge ], [ %call1.i.i.i207, %if.then.i7.i208 ], [ %32, %land.lhs.true.i.i201.if.end.i.i211_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i209)
  %tobool4.not.i.i210 = icmp eq i32 %res.0.i.i209, 0
  br i1 %tobool4.not.i.i210, label %if.end44, label %if.then11.i.i214, !prof !102

if.then11.i.i214:                                 ; preds = %if.end.i.i211
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i212 = sub i32 %32, %res.0.i.i209
  %add.ptr.i.i213 = getelementptr i8, ptr %27, i32 %sub.i.i212
  %37 = call ptr @memset(ptr %add.ptr.i.i213, i32 0, i32 %res.0.i.i209)
  br label %fail

if.end44:                                         ; preds = %if.end.i.i211
  %38 = ptrtoint ptr %uniforms_u to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %uniforms_u, align 8
  %uniforms = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %uniforms to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %uniforms, align 8
  %conv52 = trunc i64 %41 to i32
  %42 = inttoptr i32 %conv52 to ptr
  %43 = ptrtoint ptr %uniforms_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %uniforms_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp9.i.i223 = icmp slt i32 %44, 0
  br i1 %cmp9.i.i223, label %land.rhs16.i.i226, label %if.then.i.i.i229

land.rhs16.i.i226:                                ; preds = %if.end44
  %.b71.i.i225 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i225, label %land.rhs16.i.i226.fail_crit_edge, label %if.then27.i.i227, !prof !102

land.rhs16.i.i226.fail_crit_edge:                 ; preds = %land.rhs16.i.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then27.i.i227:                                 ; preds = %land.rhs16.i.i226
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %fail

if.then.i.i.i229:                                 ; preds = %if.end44
  tail call void @__check_object_size(ptr noundef %39, i32 noundef %44, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 156) #11
  %call.i.i230 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i230, label %if.then.i.i.i229.if.end.i.i244_crit_edge, label %land.lhs.true.i.i234

if.then.i.i.i229.if.end.i.i244_crit_edge:         ; preds = %if.then.i.i.i229
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i244

land.lhs.true.i.i234:                             ; preds = %if.then.i.i.i229
  %45 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %42, i32 %44, i32 -1226833920) #15, !srcloc !123
  %asmresult.i.i232 = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i232)
  %cmp.i6.i233 = icmp eq i32 %asmresult.i.i232, 0
  br i1 %cmp.i6.i233, label %if.then.i7.i241, label %land.lhs.true.i.i234.if.end.i.i244_crit_edge, !prof !102

land.lhs.true.i.i234.if.end.i.i244_crit_edge:     ; preds = %land.lhs.true.i.i234
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i244

if.then.i7.i241:                                  ; preds = %land.lhs.true.i.i234
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i235 = tail call zeroext i1 @__kasan_check_write(ptr noundef %39, i32 noundef %44) #11
  %46 = tail call i32 @llvm.read_register.i32(metadata !90) #11
  %and.i.i.i.i.i.i236 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i236 to ptr
  %cpu_domain.i.i.i.i.i237 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i237) #7, !srcloc !124
  %and.i.i.i.i238 = and i32 %48, -13
  %or.i.i.i.i239 = or i32 %and.i.i.i.i238, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i239) #11, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !126
  %call1.i.i.i240 = tail call i32 @arm_copy_from_user(ptr noundef %39, ptr noundef %42, i32 noundef %44) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #11, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !126
  br label %if.end.i.i244

if.end.i.i244:                                    ; preds = %if.then.i7.i241, %land.lhs.true.i.i234.if.end.i.i244_crit_edge, %if.then.i.i.i229.if.end.i.i244_crit_edge
  %res.0.i.i242 = phi i32 [ %44, %if.then.i.i.i229.if.end.i.i244_crit_edge ], [ %call1.i.i.i240, %if.then.i7.i241 ], [ %44, %land.lhs.true.i.i234.if.end.i.i244_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i242)
  %tobool4.not.i.i243 = icmp eq i32 %res.0.i.i242, 0
  br i1 %tobool4.not.i.i243, label %if.end57, label %if.then11.i.i247, !prof !102

if.then11.i.i247:                                 ; preds = %if.end.i.i244
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i245 = sub i32 %44, %res.0.i.i242
  %add.ptr.i.i246 = getelementptr i8, ptr %39, i32 %sub.i.i245
  %49 = call ptr @memset(ptr %add.ptr.i.i246, i32 0, i32 %res.0.i.i242)
  br label %fail

if.end57:                                         ; preds = %if.end.i.i244
  %call58 = tail call ptr @vc4_bo_create(ptr noundef %dev, i32 noundef %add4, i1 noundef zeroext true, i32 noundef 6) #11
  %cmp.i = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #11
  %50 = ptrtoint ptr %call58 to i32
  br label %fail

if.end62:                                         ; preds = %if.end57
  %exec_bo = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 13
  %51 = ptrtoint ptr %exec_bo to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call58, ptr %exec_bo, align 4
  %unref_head = getelementptr inbounds %struct.vc4_bo, ptr %call58, i32 0, i32 4
  %unref_list = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 11, i32 1
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i, align 4
  %call.i.i251 = tail call zeroext i1 @__list_add_valid(ptr noundef %unref_head, ptr noundef %53, ptr noundef %unref_list) #11
  br i1 %call.i.i251, label %if.end.i.i252, label %if.end62.list_add_tail.exit_crit_edge

if.end62.list_add_tail.exit_crit_edge:            ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i252:                                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %unref_head, ptr %prev.i, align 4
  %55 = ptrtoint ptr %unref_head to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %unref_list, ptr %unref_head, align 4
  %prev3.i.i = getelementptr inbounds %struct.vc4_bo, ptr %call58, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %unref_head, ptr %53, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i252, %if.end62.list_add_tail.exit_crit_edge
  %58 = ptrtoint ptr %exec_bo to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %exec_bo, align 4
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %paddr, align 8
  %ct0ca = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 25
  %62 = ptrtoint ptr %ct0ca to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %ct0ca, align 4
  %bin_u = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 29
  %63 = ptrtoint ptr %bin_u to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i250, ptr %bin_u, align 4
  %vaddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %59, i32 0, i32 3
  %64 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vaddr, align 8
  %add.ptr69 = getelementptr i8, ptr %65, i32 %div180
  %shader_rec_v = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 31
  %66 = ptrtoint ptr %shader_rec_v to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr69, ptr %shader_rec_v, align 4
  %67 = load i32, ptr %paddr, align 8
  %add72 = add i32 %67, %div180
  %shader_rec_p = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 32
  %68 = ptrtoint ptr %shader_rec_p to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add72, ptr %shader_rec_p, align 8
  %69 = ptrtoint ptr %shader_rec_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %shader_rec_size, align 4
  %shader_rec_size74 = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 33
  %71 = ptrtoint ptr %shader_rec_size74 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %shader_rec_size74, align 4
  %72 = load ptr, ptr %vaddr, align 8
  %add.ptr77 = getelementptr i8, ptr %72, i32 %add3
  %uniforms_v = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 35
  %73 = ptrtoint ptr %uniforms_v to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr77, ptr %uniforms_v, align 4
  %74 = load i32, ptr %paddr, align 8
  %add80 = add i32 %74, %add3
  %uniforms_p = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 36
  %75 = ptrtoint ptr %uniforms_p to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add80, ptr %uniforms_p, align 8
  %76 = ptrtoint ptr %uniforms_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %uniforms_size, align 4
  %uniforms_size82 = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 37
  %78 = ptrtoint ptr %uniforms_size82 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %uniforms_size82, align 4
  %79 = load ptr, ptr %vaddr, align 8
  %call86 = tail call i32 @vc4_validate_bin_cl(ptr noundef %dev, ptr noundef %79, ptr noundef nonnull %call.i.i250, ptr noundef %exec) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %list_add_tail.exit.fail_crit_edge

list_add_tail.exit.fail_crit_edge:                ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end89:                                         ; preds = %list_add_tail.exit
  %call90 = tail call i32 @vc4_validate_shader_recs(ptr noundef %dev, ptr noundef %exec) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end89.fail_crit_edge

if.end89.fail_crit_edge:                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end93:                                         ; preds = %if.end89
  %found_tile_binning_mode_config_packet = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 17
  %80 = ptrtoint ptr %found_tile_binning_mode_config_packet to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %found_tile_binning_mode_config_packet, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool94.not = icmp eq i8 %81, 0
  br i1 %tobool94.not, label %if.end93.if.end100_crit_edge, label %if.then95

if.end93.if.end100_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then95:                                        ; preds = %if.end93
  %bin_bo_used = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 39
  %call96 = tail call i32 @vc4_v3d_bin_bo_get(ptr noundef %dev, ptr noundef %bin_bo_used) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then95.if.end100_crit_edge, label %if.then95.fail_crit_edge

if.then95.fail_crit_edge:                         ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then95.if.end100_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.end100:                                        ; preds = %if.then95.if.end100_crit_edge, %if.end93.if.end100_crit_edge
  %bin_dep_seqno = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 1
  %82 = ptrtoint ptr %bin_dep_seqno to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %bin_dep_seqno, align 8
  %call101 = tail call i32 @vc4_wait_for_seqno(ptr noundef %dev, i64 noundef %83, i64 noundef -1, i1 noundef zeroext true)
  br label %fail

fail:                                             ; preds = %if.end100, %if.then95.fail_crit_edge, %if.end89.fail_crit_edge, %list_add_tail.exit.fail_crit_edge, %if.then60, %if.then11.i.i247, %if.then27.i.i227, %land.rhs16.i.i226.fail_crit_edge, %if.then11.i.i214, %if.then27.i.i194, %land.rhs16.i.i193.fail_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.fail_crit_edge, %if.then17, %if.then
  %ret.0 = phi i32 [ -22, %if.then ], [ %50, %if.then60 ], [ %call86, %list_add_tail.exit.fail_crit_edge ], [ %call90, %if.end89.fail_crit_edge ], [ %call96, %if.then95.fail_crit_edge ], [ %call101, %if.end100 ], [ -12, %if.then17 ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.fail_crit_edge ], [ -14, %if.then11.i.i214 ], [ -14, %if.then27.i.i194 ], [ -14, %land.rhs16.i.i193.fail_crit_edge ], [ -14, %if.then11.i.i247 ], [ -14, %if.then27.i.i227 ], [ -14, %land.rhs16.i.i226.fail_crit_edge ]
  %temp.0 = phi ptr [ null, %if.then ], [ %call.i.i250, %if.then60 ], [ %call.i.i250, %list_add_tail.exit.fail_crit_edge ], [ %call.i.i250, %if.end89.fail_crit_edge ], [ %call.i.i250, %if.then95.fail_crit_edge ], [ %call.i.i250, %if.end100 ], [ null, %if.then17 ], [ %call.i.i250, %if.then11.i.i ], [ %call.i.i250, %if.then27.i.i ], [ %call.i.i250, %land.rhs16.i.i.fail_crit_edge ], [ %call.i.i250, %if.then11.i.i214 ], [ %call.i.i250, %if.then27.i.i194 ], [ %call.i.i250, %land.rhs16.i.i193.fail_crit_edge ], [ %call.i.i250, %if.then11.i.i247 ], [ %call.i.i250, %if.then27.i.i227 ], [ %call.i.i250, %land.rhs16.i.i226.fail_crit_edge ]
  tail call void @kvfree(ptr noundef %temp.0) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_get_rcl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_lock_bo_reservations(ptr nocapture noundef readonly %exec, ptr noundef %acquire_ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %4 = ptrtoint ptr %acquire_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %acquire_ctx, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @reservation_ww_class, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @reservation_ww_class, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @reservation_ww_class, ptr nonnull @reservation_ww_class, i32 1, ptr nonnull elementtype(i32) @reservation_ww_class) #11, !srcloc !128
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %stamp3.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %acquire_ctx, i32 0, i32 1
  %6 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %asmresult.i.i.i.i.i, ptr %stamp3.i, align 4
  %acquired.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %acquire_ctx, i32 0, i32 2
  %7 = ptrtoint ptr %acquired.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %acquired.i, align 4
  %wounded.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %acquire_ctx, i32 0, i32 3
  %8 = ptrtoint ptr %wounded.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %wounded.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5), align 4
  %conv.i = trunc i32 %9 to i16
  %is_wait_die4.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %acquire_ctx, i32 0, i32 4
  %10 = ptrtoint ptr %is_wait_die4.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %is_wait_die4.i, align 2
  %ww_class5.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %acquire_ctx, i32 0, i32 6
  %11 = ptrtoint ptr %ww_class5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @reservation_ww_class, ptr %ww_class5.i, align 4
  %done_acquire.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %acquire_ctx, i32 0, i32 5
  %12 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %done_acquire.i, align 4
  %contending_lock.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %acquire_ctx, i32 0, i32 7
  %13 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %contending_lock.i, align 4
  tail call void @debug_check_no_locks_freed(ptr noundef %acquire_ctx, i32 noundef 64) #11
  %dep_map.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %acquire_ctx, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 3) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 3), align 4
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef %14, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %15 = tail call ptr @llvm.returnaddress(i32 0) #11
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %16) #11
  %deadlock_inject_interval.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %acquire_ctx, i32 0, i32 9
  %17 = ptrtoint ptr %deadlock_inject_interval.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %deadlock_inject_interval.i, align 4
  %18 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stamp3.i, align 4
  %and.i = and i32 %19, 15
  %deadlock_inject_countdown.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %acquire_ctx, i32 0, i32 10
  %20 = ptrtoint ptr %deadlock_inject_countdown.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and.i, ptr %deadlock_inject_countdown.i, align 4
  %bo1 = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 6
  %bo_count = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 7
  br label %retry

retry:                                            ; preds = %if.end29.retry_crit_edge, %entry
  %contended_lock.0 = phi i32 [ -1, %entry ], [ %i.047, %if.end29.retry_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %contended_lock.0)
  %cmp.not = icmp eq i32 %contended_lock.0, -1
  br i1 %cmp.not, label %retry.if.end3_crit_edge, label %if.then

retry.if.end3_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %retry
  %21 = ptrtoint ptr %bo1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bo1, align 8
  %arrayidx = getelementptr ptr, ptr %22, i32 %contended_lock.0
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %27 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.dma_resv_lock_slow_interruptible.exit_crit_edge

if.then.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_resv_lock_slow_interruptible.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %28 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %contending_lock.i, align 4
  %tobool1.not.i.i = icmp eq ptr %29, null
  br i1 %tobool1.not.i.i, label %do.end.i.i, label %land.lhs.true.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, !prof !100

land.lhs.true.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_resv_lock_slow_interruptible.exit

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 @debug_locks_off() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i.i, label %do.end.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, label %land.lhs.true6.i.i

do.end.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_resv_lock_slow_interruptible.exit

land.lhs.true6.i.i:                               ; preds = %do.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %30 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool7.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool7.not.i.i, label %do.end20.i.i, label %land.lhs.true6.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge

land.lhs.true6.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_resv_lock_slow_interruptible.exit

do.end20.i.i:                                     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 333, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #11
  br label %dma_resv_lock_slow_interruptible.exit

dma_resv_lock_slow_interruptible.exit:            ; preds = %do.end20.i.i, %land.lhs.true6.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, %do.end.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, %land.lhs.true.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, %if.then.dma_resv_lock_slow_interruptible.exit_crit_edge
  %call38.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %26, ptr noundef %acquire_ctx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %tobool.not = icmp eq i32 %call38.i.i, 0
  br i1 %tobool.not, label %dma_resv_lock_slow_interruptible.exit.if.end3_crit_edge, label %if.then2

dma_resv_lock_slow_interruptible.exit.if.end3_crit_edge: ; preds = %dma_resv_lock_slow_interruptible.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %dma_resv_lock_slow_interruptible.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %31 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.then2.if.end.i_crit_edge, label %land.rhs.i

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then2
  %call.i.i2 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i2)
  %cmp.not.i = icmp eq i32 %call.i.i2, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !100

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 171, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then2.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %32 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool24.not.i = icmp eq i32 %32, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i, label %if.end.i.ww_acquire_done.exit_crit_edge

if.end.i.ww_acquire_done.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ww_acquire_done.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %33 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %done_acquire.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool25.not.i = icmp eq i32 %34, 0
  br i1 %tobool25.not.i, label %land.lhs.true.i.ww_acquire_done.exit_crit_edge, label %do.end35.i, !prof !102

land.lhs.true.i.ww_acquire_done.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ww_acquire_done.exit

do.end35.i:                                       ; preds = %land.lhs.true.i
  %call36.i = tail call i32 @debug_locks_off() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %do.end35.i.ww_acquire_done.exit_crit_edge, label %land.lhs.true38.i

do.end35.i.ww_acquire_done.exit_crit_edge:        ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ww_acquire_done.exit

land.lhs.true38.i:                                ; preds = %do.end35.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %35 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool39.not.i = icmp eq i32 %35, 0
  br i1 %tobool39.not.i, label %do.end53.i, label %land.lhs.true38.i.ww_acquire_done.exit_crit_edge

land.lhs.true38.i.ww_acquire_done.exit_crit_edge: ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ww_acquire_done.exit

do.end53.i:                                       ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 173, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.39) #11
  br label %ww_acquire_done.exit

ww_acquire_done.exit:                             ; preds = %do.end53.i, %land.lhs.true38.i.ww_acquire_done.exit_crit_edge, %do.end35.i.ww_acquire_done.exit_crit_edge, %land.lhs.true.i.ww_acquire_done.exit_crit_edge, %if.end.i.ww_acquire_done.exit_crit_edge
  %36 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %done_acquire.i, align 4
  br label %cleanup52

if.end3:                                          ; preds = %dma_resv_lock_slow_interruptible.exit.if.end3_crit_edge, %retry.if.end3_crit_edge
  %37 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bo_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp446.not = icmp eq i32 %38, 0
  br i1 %cmp446.not, label %if.end3.for.end36_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.for.end36_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end36

for.body:                                         ; preds = %for.inc34.for.body_crit_edge, %if.end3.for.body_crit_edge
  %i.047 = phi i32 [ %inc35, %for.inc34.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.047, i32 %contended_lock.0)
  %cmp5 = icmp eq i32 %i.047, %contended_lock.0
  br i1 %cmp5, label %for.body.for.inc34_crit_edge, label %if.end7

for.body.for.inc34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc34

if.end7:                                          ; preds = %for.body
  %39 = ptrtoint ptr %bo1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bo1, align 8
  %arrayidx9 = getelementptr ptr, ptr %40, i32 %i.047
  %41 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx9, align 4
  %resv11 = getelementptr inbounds %struct.drm_gem_object, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %resv11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %resv11, align 8
  %call.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %44, ptr noundef %acquire_ctx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end7.for.inc34_crit_edge, label %for.cond15.preheader

if.end7.for.inc34_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc34

for.cond15.preheader:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.047)
  %cmp1649 = icmp sgt i32 %i.047, 0
  br i1 %cmp1649, label %for.cond15.preheader.for.body17_crit_edge, label %for.cond15.preheader.for.end_crit_edge

for.cond15.preheader.for.end_crit_edge:           ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond15.preheader.for.body17_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond15.preheader.for.body17_crit_edge
  %j.050 = phi i32 [ %inc, %for.body17.for.body17_crit_edge ], [ 0, %for.cond15.preheader.for.body17_crit_edge ]
  %45 = ptrtoint ptr %bo1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bo1, align 8
  %arrayidx19 = getelementptr ptr, ptr %46, i32 %j.050
  %47 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx19, align 4
  %resv21 = getelementptr inbounds %struct.drm_gem_object, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %resv21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %resv21, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %50) #11
  tail call void @ww_mutex_unlock(ptr noundef %50) #11
  %inc = add nuw nsw i32 %j.050, 1
  %exitcond.not = icmp eq i32 %inc, %i.047
  br i1 %exitcond.not, label %for.body17.for.end_crit_edge, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17

for.body17.for.end_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body17.for.end_crit_edge, %for.cond15.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %contended_lock.0, i32 %i.047)
  %cmp23.not = icmp slt i32 %contended_lock.0, %i.047
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp23.not
  br i1 %or.cond, label %for.end.if.end29_crit_edge, label %if.then24

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %bo1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bo1, align 8
  %arrayidx26 = getelementptr ptr, ptr %52, i32 %contended_lock.0
  %53 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx26, align 4
  %resv28 = getelementptr inbounds %struct.drm_gem_object, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %resv28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %resv28, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %56) #11
  tail call void @ww_mutex_unlock(ptr noundef %56) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %for.end.if.end29_crit_edge
  %cmp30 = icmp eq i32 %call.i, -35
  br i1 %cmp30, label %if.end29.retry_crit_edge, label %if.end32

if.end29.retry_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry

if.end32:                                         ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %57 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i4 = icmp eq i32 %57, 0
  br i1 %tobool.not.i4, label %if.end32.if.end.i11_crit_edge, label %land.rhs.i8

if.end32.if.end.i11_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i11

land.rhs.i8:                                      ; preds = %if.end32
  %call.i.i6 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %cmp.not.i7 = icmp eq i32 %call.i.i6, 0
  br i1 %cmp.not.i7, label %do.end.i9, label %land.rhs.i8.if.end.i11_crit_edge, !prof !100

land.rhs.i8.if.end.i11_crit_edge:                 ; preds = %land.rhs.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i11

do.end.i9:                                        ; preds = %land.rhs.i8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 171, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i11

if.end.i11:                                       ; preds = %do.end.i9, %land.rhs.i8.if.end.i11_crit_edge, %if.end32.if.end.i11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %58 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool24.not.i10 = icmp eq i32 %58, 0
  br i1 %tobool24.not.i10, label %land.lhs.true.i14, label %if.end.i11.cleanup.thread_crit_edge

if.end.i11.cleanup.thread_crit_edge:              ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

land.lhs.true.i14:                                ; preds = %if.end.i11
  %59 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %done_acquire.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool25.not.i13 = icmp eq i32 %60, 0
  br i1 %tobool25.not.i13, label %land.lhs.true.i14.cleanup.thread_crit_edge, label %do.end35.i17, !prof !102

land.lhs.true.i14.cleanup.thread_crit_edge:       ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

do.end35.i17:                                     ; preds = %land.lhs.true.i14
  %call36.i15 = tail call i32 @debug_locks_off() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i15)
  %tobool37.not.i16 = icmp eq i32 %call36.i15, 0
  br i1 %tobool37.not.i16, label %do.end35.i17.cleanup.thread_crit_edge, label %land.lhs.true38.i19

do.end35.i17.cleanup.thread_crit_edge:            ; preds = %do.end35.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

land.lhs.true38.i19:                              ; preds = %do.end35.i17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %61 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool39.not.i18 = icmp eq i32 %61, 0
  br i1 %tobool39.not.i18, label %do.end53.i20, label %land.lhs.true38.i19.cleanup.thread_crit_edge

land.lhs.true38.i19.cleanup.thread_crit_edge:     ; preds = %land.lhs.true38.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

do.end53.i20:                                     ; preds = %land.lhs.true38.i19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 173, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.39) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end53.i20, %land.lhs.true38.i19.cleanup.thread_crit_edge, %do.end35.i17.cleanup.thread_crit_edge, %land.lhs.true.i14.cleanup.thread_crit_edge, %if.end.i11.cleanup.thread_crit_edge
  %62 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %done_acquire.i, align 4
  br label %cleanup52

for.inc34:                                        ; preds = %if.end7.for.inc34_crit_edge, %for.body.for.inc34_crit_edge
  %inc35 = add nuw i32 %i.047, 1
  %63 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bo_count, align 4
  %cmp4 = icmp ult i32 %inc35, %64
  br i1 %cmp4, label %for.inc34.for.body_crit_edge, label %for.inc34.for.end36_crit_edge

for.inc34.for.end36_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end36

for.inc34.for.body_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end36:                                        ; preds = %for.inc34.for.end36_crit_edge, %if.end3.for.end36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %65 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i23 = icmp eq i32 %65, 0
  br i1 %tobool.not.i23, label %for.end36.if.end.i30_crit_edge, label %land.rhs.i27

for.end36.if.end.i30_crit_edge:                   ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i30

land.rhs.i27:                                     ; preds = %for.end36
  %call.i.i25 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25)
  %cmp.not.i26 = icmp eq i32 %call.i.i25, 0
  br i1 %cmp.not.i26, label %do.end.i28, label %land.rhs.i27.if.end.i30_crit_edge, !prof !100

land.rhs.i27.if.end.i30_crit_edge:                ; preds = %land.rhs.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i30

do.end.i28:                                       ; preds = %land.rhs.i27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 171, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i30

if.end.i30:                                       ; preds = %do.end.i28, %land.rhs.i27.if.end.i30_crit_edge, %for.end36.if.end.i30_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %66 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool24.not.i29 = icmp eq i32 %66, 0
  br i1 %tobool24.not.i29, label %land.lhs.true.i33, label %if.end.i30.ww_acquire_done.exit41_crit_edge

if.end.i30.ww_acquire_done.exit41_crit_edge:      ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %ww_acquire_done.exit41

land.lhs.true.i33:                                ; preds = %if.end.i30
  %67 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %done_acquire.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool25.not.i32 = icmp eq i32 %68, 0
  br i1 %tobool25.not.i32, label %land.lhs.true.i33.ww_acquire_done.exit41_crit_edge, label %do.end35.i36, !prof !102

land.lhs.true.i33.ww_acquire_done.exit41_crit_edge: ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %ww_acquire_done.exit41

do.end35.i36:                                     ; preds = %land.lhs.true.i33
  %call36.i34 = tail call i32 @debug_locks_off() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i34)
  %tobool37.not.i35 = icmp eq i32 %call36.i34, 0
  br i1 %tobool37.not.i35, label %do.end35.i36.ww_acquire_done.exit41_crit_edge, label %land.lhs.true38.i38

do.end35.i36.ww_acquire_done.exit41_crit_edge:    ; preds = %do.end35.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %ww_acquire_done.exit41

land.lhs.true38.i38:                              ; preds = %do.end35.i36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %69 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool39.not.i37 = icmp eq i32 %69, 0
  br i1 %tobool39.not.i37, label %do.end53.i39, label %land.lhs.true38.i38.ww_acquire_done.exit41_crit_edge

land.lhs.true38.i38.ww_acquire_done.exit41_crit_edge: ; preds = %land.lhs.true38.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %ww_acquire_done.exit41

do.end53.i39:                                     ; preds = %land.lhs.true38.i38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 173, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.39) #11
  br label %ww_acquire_done.exit41

ww_acquire_done.exit41:                           ; preds = %do.end53.i39, %land.lhs.true38.i38.ww_acquire_done.exit41_crit_edge, %do.end35.i36.ww_acquire_done.exit41_crit_edge, %land.lhs.true.i33.ww_acquire_done.exit41_crit_edge, %if.end.i30.ww_acquire_done.exit41_crit_edge
  %70 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %done_acquire.i, align 4
  %71 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bo_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp3951.not = icmp eq i32 %72, 0
  br i1 %cmp3951.not, label %ww_acquire_done.exit41.cleanup52_crit_edge, label %ww_acquire_done.exit41.for.body40_crit_edge

ww_acquire_done.exit41.for.body40_crit_edge:      ; preds = %ww_acquire_done.exit41
  br label %for.body40

ww_acquire_done.exit41.cleanup52_crit_edge:       ; preds = %ww_acquire_done.exit41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

for.cond37:                                       ; preds = %for.body40
  %inc50 = add nuw i32 %i.152, 1
  %73 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bo_count, align 4
  %cmp39 = icmp ult i32 %inc50, %74
  br i1 %cmp39, label %for.cond37.for.body40_crit_edge, label %for.cond37.cleanup52_crit_edge

for.cond37.cleanup52_crit_edge:                   ; preds = %for.cond37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

for.cond37.for.body40_crit_edge:                  ; preds = %for.cond37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body40

for.body40:                                       ; preds = %for.cond37.for.body40_crit_edge, %ww_acquire_done.exit41.for.body40_crit_edge
  %i.152 = phi i32 [ %inc50, %for.cond37.for.body40_crit_edge ], [ 0, %ww_acquire_done.exit41.for.body40_crit_edge ]
  %75 = ptrtoint ptr %bo1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bo1, align 8
  %arrayidx42 = getelementptr ptr, ptr %76, i32 %i.152
  %77 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx42, align 4
  %resv44 = getelementptr inbounds %struct.drm_gem_object, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %resv44 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %resv44, align 8
  %call45 = tail call i32 @dma_resv_reserve_shared(ptr noundef %80, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.cond37, label %if.then47

if.then47:                                        ; preds = %for.body40
  %81 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bo_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp1.not.i = icmp eq i32 %82, 0
  br i1 %cmp1.not.i, label %if.then47.vc4_unlock_bo_reservations.exit_crit_edge, label %if.then47.for.body.i_crit_edge

if.then47.for.body.i_crit_edge:                   ; preds = %if.then47
  br label %for.body.i

if.then47.vc4_unlock_bo_reservations.exit_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_unlock_bo_reservations.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then47.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then47.for.body.i_crit_edge ]
  %83 = ptrtoint ptr %bo1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bo1, align 8
  %arrayidx.i = getelementptr ptr, ptr %84, i32 %i.02.i
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i, align 4
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %86, i32 0, i32 9
  %87 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %88) #11
  tail call void @ww_mutex_unlock(ptr noundef %88) #11
  %inc.i = add nuw i32 %i.02.i, 1
  %89 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bo_count, align 4
  %cmp.i = icmp ult i32 %inc.i, %90
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vc4_unlock_bo_reservations.exit_crit_edge

for.body.i.vc4_unlock_bo_reservations.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_unlock_bo_reservations.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

vc4_unlock_bo_reservations.exit:                  ; preds = %for.body.i.vc4_unlock_bo_reservations.exit_crit_edge, %if.then47.vc4_unlock_bo_reservations.exit_crit_edge
  tail call fastcc void @ww_acquire_fini(ptr noundef %acquire_ctx) #11
  br label %cleanup52

cleanup52:                                        ; preds = %vc4_unlock_bo_reservations.exit, %for.cond37.cleanup52_crit_edge, %ww_acquire_done.exit41.cleanup52_crit_edge, %cleanup.thread, %ww_acquire_done.exit
  %retval.2 = phi i32 [ %call38.i.i, %ww_acquire_done.exit ], [ %call45, %vc4_unlock_bo_reservations.exit ], [ %call.i, %cleanup.thread ], [ 0, %ww_acquire_done.exit41.cleanup52_crit_edge ], [ 0, %for.cond37.cleanup52_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_syncobj_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_queue_submit(ptr noundef %dev, ptr noundef %exec, ptr noundef %acquire_ctx, ptr noundef %out_sync) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.vc4_fence, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev2, align 8
  %job_lock = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 19
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock) #11
  %emit_seqno = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %emit_seqno to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %emit_seqno, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %emit_seqno, align 8
  %4 = ptrtoint ptr %exec to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %inc, ptr %exec, align 8
  %dma_fence_context = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 13
  %5 = ptrtoint ptr %dma_fence_context to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %dma_fence_context, align 8
  tail call void @dma_fence_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @vc4_fence_ops, ptr noundef %job_lock, i64 noundef %6, i64 noundef %inc) #11
  %7 = ptrtoint ptr %exec to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %exec, align 8
  %seqno12 = getelementptr inbounds %struct.vc4_fence, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %seqno12 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %seqno12, align 8
  %fence14 = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 2
  %10 = ptrtoint ptr %fence14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %fence14, align 8
  %tobool15.not = icmp eq ptr %out_sync, null
  br i1 %tobool15.not, label %if.end.if.end18_crit_edge, label %if.then16

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_syncobj_replace_fence(ptr noundef nonnull %out_sync, ptr noundef nonnull %call7.i.i) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end.if.end18_crit_edge
  %bo_count.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 7
  %11 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bo_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp50.not.i = icmp eq i32 %12, 0
  br i1 %cmp50.not.i, label %if.end18.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end18.for.end.i_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end18
  %bo1.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %bo1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bo1.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %i.051.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %seqno2.i = getelementptr inbounds %struct.vc4_bo, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %seqno2.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %inc, ptr %seqno2.i, align 8
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %16, i32 0, i32 9
  %18 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resv.i, align 8
  %20 = ptrtoint ptr %fence14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fence14, align 8
  tail call void @dma_resv_add_shared_fence(ptr noundef %19, ptr noundef %21) #11
  %inc.i = add nuw i32 %i.051.i, 1
  %22 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bo_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end18.for.end.i_crit_edge
  %unref_list.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 11
  %24 = ptrtoint ptr %unref_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn52.i = load ptr, ptr %unref_list.i, align 4
  %cmp7.not53.i = icmp eq ptr %.pn52.i, %unref_list.i
  br i1 %cmp7.not53.i, label %for.end.i.for.cond17.preheader.i_crit_edge, label %for.end.i.for.body8.i_crit_edge

for.end.i.for.body8.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body8.i

for.end.i.for.cond17.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond17.preheader.i

for.cond17.preheader.i:                           ; preds = %for.body8.i.for.cond17.preheader.i_crit_edge, %for.end.i.for.cond17.preheader.i_crit_edge
  %rcl_write_bo_count.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 9
  %25 = ptrtoint ptr %rcl_write_bo_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rcl_write_bo_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1855.not.i = icmp eq i32 %26, 0
  br i1 %cmp1855.not.i, label %for.cond17.preheader.i.vc4_update_bo_seqnos.exit_crit_edge, label %for.cond17.preheader.i.for.body19.i_crit_edge

for.cond17.preheader.i.for.body19.i_crit_edge:    ; preds = %for.cond17.preheader.i
  br label %for.body19.i

for.cond17.preheader.i.vc4_update_bo_seqnos.exit_crit_edge: ; preds = %for.cond17.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_update_bo_seqnos.exit

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.end.i.for.body8.i_crit_edge
  %.pn54.i = phi ptr [ %.pn.i, %for.body8.i.for.body8.i_crit_edge ], [ %.pn52.i, %for.end.i.for.body8.i_crit_edge ]
  %seqno9.i = getelementptr i8, ptr %.pn54.i, i32 -20
  %27 = ptrtoint ptr %seqno9.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %inc, ptr %seqno9.i, align 8
  %28 = ptrtoint ptr %.pn54.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %.pn54.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %unref_list.i
  br i1 %cmp7.not.i, label %for.body8.i.for.cond17.preheader.i_crit_edge, label %for.body8.i.for.body8.i_crit_edge

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8.i

for.body8.i.for.cond17.preheader.i_crit_edge:     ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond17.preheader.i

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.cond17.preheader.i.for.body19.i_crit_edge
  %i.156.i = phi i32 [ %inc28.i, %for.body19.i.for.body19.i_crit_edge ], [ 0, %for.cond17.preheader.i.for.body19.i_crit_edge ]
  %arrayidx20.i = getelementptr %struct.vc4_exec_info, ptr %exec, i32 0, i32 8, i32 %i.156.i
  %29 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx20.i, align 4
  %write_seqno.i = getelementptr inbounds %struct.vc4_bo, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %write_seqno.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %inc, ptr %write_seqno.i, align 8
  %resv25.i = getelementptr inbounds %struct.drm_gem_object, ptr %30, i32 0, i32 9
  %32 = ptrtoint ptr %resv25.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %resv25.i, align 8
  %34 = ptrtoint ptr %fence14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fence14, align 8
  tail call void @dma_resv_add_excl_fence(ptr noundef %33, ptr noundef %35) #11
  %inc28.i = add nuw i32 %i.156.i, 1
  %36 = ptrtoint ptr %rcl_write_bo_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rcl_write_bo_count.i, align 8
  %cmp18.i = icmp ult i32 %inc28.i, %37
  br i1 %cmp18.i, label %for.body19.i.for.body19.i_crit_edge, label %for.body19.i.vc4_update_bo_seqnos.exit_crit_edge

for.body19.i.vc4_update_bo_seqnos.exit_crit_edge: ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_update_bo_seqnos.exit

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19.i

vc4_update_bo_seqnos.exit:                        ; preds = %for.body19.i.vc4_update_bo_seqnos.exit_crit_edge, %for.cond17.preheader.i.vc4_update_bo_seqnos.exit_crit_edge
  %38 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bo_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp1.not.i = icmp eq i32 %39, 0
  br i1 %cmp1.not.i, label %vc4_update_bo_seqnos.exit.vc4_unlock_bo_reservations.exit_crit_edge, label %for.body.lr.ph.i63

vc4_update_bo_seqnos.exit.vc4_unlock_bo_reservations.exit_crit_edge: ; preds = %vc4_update_bo_seqnos.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_unlock_bo_reservations.exit

for.body.lr.ph.i63:                               ; preds = %vc4_update_bo_seqnos.exit
  %bo1.i62 = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 6
  br label %for.body.i68

for.body.i68:                                     ; preds = %for.body.i68.for.body.i68_crit_edge, %for.body.lr.ph.i63
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i63 ], [ %inc.i66, %for.body.i68.for.body.i68_crit_edge ]
  %40 = ptrtoint ptr %bo1.i62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bo1.i62, align 8
  %arrayidx.i64 = getelementptr ptr, ptr %41, i32 %i.02.i
  %42 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i64, align 4
  %resv.i65 = getelementptr inbounds %struct.drm_gem_object, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %resv.i65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resv.i65, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %45) #11
  tail call void @ww_mutex_unlock(ptr noundef %45) #11
  %inc.i66 = add nuw i32 %i.02.i, 1
  %46 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bo_count.i, align 4
  %cmp.i67 = icmp ult i32 %inc.i66, %47
  br i1 %cmp.i67, label %for.body.i68.for.body.i68_crit_edge, label %for.body.i68.vc4_unlock_bo_reservations.exit_crit_edge

for.body.i68.vc4_unlock_bo_reservations.exit_crit_edge: ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_unlock_bo_reservations.exit

for.body.i68.for.body.i68_crit_edge:              ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i68

vc4_unlock_bo_reservations.exit:                  ; preds = %for.body.i68.vc4_unlock_bo_reservations.exit_crit_edge, %vc4_update_bo_seqnos.exit.vc4_unlock_bo_reservations.exit_crit_edge
  tail call fastcc void @ww_acquire_fini(ptr noundef %acquire_ctx) #11
  %head = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 10
  %bin_job_list = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 16, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %49, ptr noundef %bin_job_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %vc4_unlock_bo_reservations.exit.list_add_tail.exit_crit_edge

vc4_unlock_bo_reservations.exit.list_add_tail.exit_crit_edge: ; preds = %vc4_unlock_bo_reservations.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %vc4_unlock_bo_reservations.exit
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %head, ptr %prev.i, align 4
  %51 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %bin_job_list, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %head, ptr %49, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %vc4_unlock_bo_reservations.exit.list_add_tail.exit_crit_edge
  %render_job_list.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 17
  %54 = ptrtoint ptr %render_job_list.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %render_job_list.i, align 4
  %cmp.not.i = icmp eq ptr %55, %render_job_list.i
  %add.ptr.i = getelementptr i8, ptr %55, i32 -60
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %56 = ptrtoint ptr %bin_job_list to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %bin_job_list, align 4
  %cmp.not.i70 = icmp eq ptr %57, %bin_job_list
  %add.ptr.i71 = getelementptr i8, ptr %57, i32 -60
  %spec.select.i72 = select i1 %cmp.not.i70, ptr null, ptr %add.ptr.i71
  %cmp21 = icmp eq ptr %spec.select.i72, %exec
  br i1 %cmp21, label %land.lhs.true, label %list_add_tail.exit.if.end28_crit_edge

list_add_tail.exit.if.end28_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true:                                    ; preds = %list_add_tail.exit
  %tobool23.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool23.not, label %land.lhs.true.if.then27_crit_edge, label %lor.lhs.false

land.lhs.true.if.then27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false:                                    ; preds = %land.lhs.true
  %perfmon = getelementptr inbounds %struct.vc4_exec_info, ptr %spec.select.i, i32 0, i32 38
  %58 = ptrtoint ptr %perfmon to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %perfmon, align 8
  %perfmon24 = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 38
  %60 = ptrtoint ptr %perfmon24 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %perfmon24, align 8
  %cmp25 = icmp eq ptr %59, %61
  br i1 %cmp25, label %lor.lhs.false.if.then27_crit_edge, label %lor.lhs.false.if.end28_crit_edge

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %land.lhs.true.if.then27_crit_edge
  tail call void @vc4_submit_next_bin_job(ptr noundef %dev)
  %hangcheck.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %62, 10
  %call2.i = tail call i32 @round_jiffies_up(i32 noundef %add.i) #11
  %call3.i = tail call i32 @mod_timer(ptr noundef %hangcheck.i, i32 noundef %call2.i) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %lor.lhs.false.if.end28_crit_edge, %list_add_tail.exit.if.end28_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_syncobj_put(ptr noundef %obj) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %obj, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %obj, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %obj, ptr %obj, i32 1, ptr elementtype(i32) %obj) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !102

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %obj, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  tail call void @drm_syncobj_free(ptr noundef %obj) #11, !callees !107
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_gem_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #11
  %dma_fence_context = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %dma_fence_context to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call1, ptr %dma_fence_context, align 8
  %bin_job_list = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %bin_job_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %bin_job_list, ptr %bin_job_list, align 4
  %prev.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %bin_job_list, ptr %prev.i, align 4
  %render_job_list = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %render_job_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %render_job_list, ptr %render_job_list, align 4
  %prev.i60 = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %render_job_list, ptr %prev.i60, align 4
  %job_done_list = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %job_done_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %job_done_list, ptr %job_done_list, align 4
  %prev.i61 = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %prev.i61 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %job_done_list, ptr %prev.i61, align 4
  %seqno_cb_list = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 23
  %7 = ptrtoint ptr %seqno_cb_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %seqno_cb_list, ptr %seqno_cb_list, align 4
  %prev.i62 = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 23, i32 1
  %8 = ptrtoint ptr %prev.i62 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %seqno_cb_list, ptr %prev.i62, align 4
  %job_lock = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %job_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @vc4_gem_init.__key, i16 noundef signext 3) #11
  %hangcheck = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 33
  %reset_work = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 33, i32 1
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #11
  %9 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %reset_work, align 4
  %lockdep_map = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 33, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @vc4_gem_init.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry10 = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 33, i32 1, i32 1
  %10 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i63 = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 33, i32 1, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i63 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry10, ptr %prev.i63, align 4
  %func = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 33, i32 1, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vc4_reset_work, ptr %func, align 4
  tail call void @init_timer_key(ptr noundef %hangcheck, ptr noundef nonnull @vc4_hangcheck_elapsed, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @vc4_gem_init.__key.10) #11
  %job_done_work = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 21
  tail call void @__init_work(ptr noundef %job_done_work, i32 noundef 0) #11
  %13 = ptrtoint ptr %job_done_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %job_done_work, align 8
  %lockdep_map25 = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 21, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map25, ptr noundef nonnull @.str.13, ptr noundef nonnull @vc4_gem_init.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry27 = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 21, i32 1
  %14 = ptrtoint ptr %entry27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry27, ptr %entry27, align 4
  %prev.i64 = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 21, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry27, ptr %prev.i64, align 4
  %func29 = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 21, i32 2
  %16 = ptrtoint ptr %func29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vc4_job_done_work, ptr %func29, align 4
  %power_lock = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 32
  tail call void @__mutex_init(ptr noundef %power_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @vc4_gem_init.__key.14) #11
  %purgeable = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 12
  %17 = ptrtoint ptr %purgeable to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %purgeable, ptr %purgeable, align 4
  %prev.i65 = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 12, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %purgeable, ptr %prev.i65, align 4
  %lock = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 12, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @vc4_gem_init.__key.16) #11
  %call39 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %dev, ptr noundef nonnull @vc4_gem_destroy, ptr noundef null, ptr noundef nonnull @.str.18) #11
  ret i32 %call39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_reset_work(ptr noundef %work) #0 align 64 {
entry:
  %exec.i = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %exec.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 168) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.vc4_save_hang_state.exit_crit_edge, label %if.end.i

entry.vc4_save_hang_state.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_save_hang_state.exit

if.end.i:                                         ; preds = %entry
  %1 = getelementptr inbounds [2 x ptr], ptr %exec.i, i32 0, i32 1
  %job_lock.i = getelementptr i8, ptr %work, i32 -364
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock.i) #11
  %bin_job_list.i.i = getelementptr i8, ptr %work, i32 -388
  %2 = ptrtoint ptr %bin_job_list.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %bin_job_list.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %3, %bin_job_list.i.i
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -60
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %add.ptr.i.i
  %4 = ptrtoint ptr %exec.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.select.i.i, ptr %exec.i, align 4
  %render_job_list.i.i = getelementptr i8, ptr %work, i32 -380
  %5 = ptrtoint ptr %render_job_list.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %render_job_list.i.i, align 4
  %cmp.not.i558.i = icmp eq ptr %6, %render_job_list.i.i
  %add.ptr.i559.i = getelementptr i8, ptr %6, i32 -60
  %spec.select.i560.i = select i1 %cmp.not.i558.i, ptr null, ptr %add.ptr.i559.i
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i560.i, ptr %1, align 4
  %tobool11.not.i = icmp eq ptr %spec.select.i.i, null
  %tobool13.not.i = icmp eq ptr %spec.select.i560.i, null
  %or.cond.i = select i1 %tobool11.not.i, i1 %tobool13.not.i, i1 false
  br i1 %or.cond.i, label %if.then14.i, label %if.end16.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock.i, i32 noundef %call4.i) #11
  br label %vc4_save_hang_state.exit

if.end16.i:                                       ; preds = %if.end.i
  %bo_count.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bo_count.i, align 8
  br i1 %tobool11.not.i, label %if.end16.i.for.inc40.i_crit_edge, label %if.end22.i

if.end16.i.for.inc40.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc40.i

if.end22.i:                                       ; preds = %if.end16.i
  %unref_list.i = getelementptr inbounds %struct.vc4_exec_info, ptr %spec.select.i.i, i32 0, i32 11
  br label %for.cond25.i

for.cond25.i:                                     ; preds = %for.cond25.i.for.cond25.i_crit_edge, %if.end22.i
  %unref_list_count.0.i = phi i32 [ 0, %if.end22.i ], [ %inc.i, %for.cond25.i.for.cond25.i_crit_edge ]
  %.pn557.in.i = phi ptr [ %unref_list.i, %if.end22.i ], [ %.pn557.i, %for.cond25.i.for.cond25.i_crit_edge ]
  %9 = ptrtoint ptr %.pn557.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn557.i = load ptr, ptr %.pn557.in.i, align 4
  %cmp28.not.i = icmp eq ptr %.pn557.i, %unref_list.i
  %inc.i = add i32 %unref_list_count.0.i, 1
  br i1 %cmp28.not.i, label %for.end.i, label %for.cond25.i.for.cond25.i_crit_edge

for.cond25.i.for.cond25.i_crit_edge:              ; preds = %for.cond25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond25.i

for.end.i:                                        ; preds = %for.cond25.i
  call void @__sanitizer_cov_trace_pc() #13
  %bo_count37.i = getelementptr inbounds %struct.vc4_exec_info, ptr %spec.select.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %bo_count37.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bo_count37.i, align 4
  %add.i = add i32 %11, %unref_list_count.0.i
  %12 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %bo_count.i, align 8
  br label %for.inc40.i

for.inc40.i:                                      ; preds = %for.end.i, %if.end16.i.for.inc40.i_crit_edge
  br i1 %tobool13.not.i, label %for.inc40.i.for.inc40.1.i_crit_edge, label %if.end22.1.i

for.inc40.i.for.inc40.1.i_crit_edge:              ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc40.1.i

if.end22.1.i:                                     ; preds = %for.inc40.i
  %unref_list.1.i = getelementptr inbounds %struct.vc4_exec_info, ptr %spec.select.i560.i, i32 0, i32 11
  br label %for.cond25.1.i

for.cond25.1.i:                                   ; preds = %for.cond25.1.i.for.cond25.1.i_crit_edge, %if.end22.1.i
  %unref_list_count.0.1.i = phi i32 [ 0, %if.end22.1.i ], [ %inc.1.i, %for.cond25.1.i.for.cond25.1.i_crit_edge ]
  %.pn557.in.1.i = phi ptr [ %unref_list.1.i, %if.end22.1.i ], [ %.pn557.1.i, %for.cond25.1.i.for.cond25.1.i_crit_edge ]
  %13 = ptrtoint ptr %.pn557.in.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn557.1.i = load ptr, ptr %.pn557.in.1.i, align 4
  %cmp28.not.1.i = icmp eq ptr %.pn557.1.i, %unref_list.1.i
  %inc.1.i = add i32 %unref_list_count.0.1.i, 1
  br i1 %cmp28.not.1.i, label %for.end.1.i, label %for.cond25.1.i.for.cond25.1.i_crit_edge

for.cond25.1.i.for.cond25.1.i_crit_edge:          ; preds = %for.cond25.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond25.1.i

for.end.1.i:                                      ; preds = %for.cond25.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %bo_count37.1.i = getelementptr inbounds %struct.vc4_exec_info, ptr %spec.select.i560.i, i32 0, i32 7
  %14 = ptrtoint ptr %bo_count37.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bo_count37.1.i, align 4
  %add.1.i = add i32 %15, %unref_list_count.0.1.i
  %16 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bo_count.i, align 8
  %add39.1.i = add i32 %add.1.i, %17
  store i32 %add39.1.i, ptr %bo_count.i, align 8
  br label %for.inc40.1.i

for.inc40.1.i:                                    ; preds = %for.end.1.i, %for.inc40.i.for.inc40.1.i_crit_edge
  %18 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bo_count.i, align 8
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 4) #11
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !100

kcalloc.exit.thread.i:                            ; preds = %for.inc40.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %bo45573.i = getelementptr inbounds %struct.vc4_hang_state, ptr %call7.i.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %bo45573.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %bo45573.i, align 4
  br label %if.then48.i

if.end7.i.i.i:                                    ; preds = %for.inc40.1.i
  %23 = extractvalue { i32, i1 } %20, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 2848) #14
  %bo45.i = getelementptr inbounds %struct.vc4_hang_state, ptr %call7.i.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %bo45.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i.i.i, ptr %bo45.i, align 4
  %tobool47.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool47.not.i, label %if.end7.i.i.i.if.then48.i_crit_edge, label %if.end7.i.i.i.for.body54.i_crit_edge

if.end7.i.i.i.for.body54.i_crit_edge:             ; preds = %if.end7.i.i.i
  br label %for.body54.i

if.end7.i.i.i.if.then48.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48.i

if.then48.i:                                      ; preds = %if.end7.i.i.i.if.then48.i_crit_edge, %kcalloc.exit.thread.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock.i, i32 noundef %call4.i) #11
  br label %vc4_save_hang_state.exit

for.body54.i:                                     ; preds = %for.inc142.i.for.body54.i_crit_edge, %if.end7.i.i.i.for.body54.i_crit_edge
  %i.1585.i = phi i32 [ %inc143.i, %for.inc142.i.for.body54.i_crit_edge ], [ 0, %if.end7.i.i.i.for.body54.i_crit_edge ]
  %k.0584.i = phi i32 [ %k.3.i, %for.inc142.i.for.body54.i_crit_edge ], [ 0, %if.end7.i.i.i.for.body54.i_crit_edge ]
  %arrayidx55.i = getelementptr [2 x ptr], ptr %exec.i, i32 0, i32 %i.1585.i
  %25 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx55.i, align 4
  %tobool56.not.i = icmp eq ptr %26, null
  br i1 %tobool56.not.i, label %for.body54.i.for.inc142.i_crit_edge, label %for.cond59.preheader.i

for.body54.i.for.inc142.i_crit_edge:              ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc142.i

for.cond59.preheader.i:                           ; preds = %for.body54.i
  %bo_count61.i = getelementptr inbounds %struct.vc4_exec_info, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %bo_count61.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bo_count61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp62576.not.i = icmp eq i32 %28, 0
  br i1 %cmp62576.not.i, label %for.cond59.preheader.i.for.end112.i_crit_edge, label %for.body64.lr.ph.i

for.cond59.preheader.i.for.end112.i_crit_edge:    ; preds = %for.cond59.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end112.i

for.body64.lr.ph.i:                               ; preds = %for.cond59.preheader.i
  %bo66.i = getelementptr inbounds %struct.vc4_exec_info, ptr %26, i32 0, i32 6
  br label %for.body64.i

for.body64.i:                                     ; preds = %drm_gem_object_get.exit.i.for.body64.i_crit_edge, %for.body64.lr.ph.i
  %j.0578.i = phi i32 [ 0, %for.body64.lr.ph.i ], [ %inc111.i, %drm_gem_object_get.exit.i.for.body64.i_crit_edge ]
  %k.1577.i = phi i32 [ %k.0584.i, %for.body64.lr.ph.i ], [ %inc108.i, %drm_gem_object_get.exit.i.for.body64.i_crit_edge ]
  %29 = ptrtoint ptr %bo66.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bo66.i, align 8
  %arrayidx67.i = getelementptr ptr, ptr %30, i32 %j.0578.i
  %31 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx67.i, align 4
  %usecnt.i = getelementptr inbounds %struct.vc4_bo, ptr %32, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt.i, i32 noundef 4) #11
  %33 = ptrtoint ptr %usecnt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %usecnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool70.not.i = icmp eq i32 %34, 0
  br i1 %tobool70.not.i, label %do.end84.i, label %for.body64.i.if.end90.i_crit_edge, !prof !100

for.body64.i.if.end90.i_crit_edge:                ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.i

do.end84.i:                                       ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 205, i32 noundef 9, ptr noundef null) #11
  br label %if.end90.i

if.end90.i:                                       ; preds = %do.end84.i, %for.body64.i.if.end90.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %usecnt.i, i32 1, i32 3, i32 1) #11
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt.i, ptr %usecnt.i, i32 1, ptr elementtype(i32) %usecnt.i) #11, !srcloc !127
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end90.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !100

if.end90.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end90.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %36 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !102

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end90.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end90.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usecnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %37 = ptrtoint ptr %bo66.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bo66.i, align 8
  %arrayidx101.i = getelementptr ptr, ptr %38, i32 %j.0578.i
  %39 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx101.i, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %40, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %40, i32 1, i32 3, i32 1) #11
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #11, !srcloc !127
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %refcount_inc.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !100

refcount_inc.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %refcount_inc.exit.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %42 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %.not.i.i.i.i.i.i = icmp sgt i32 %42, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !102

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_gem_object_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %refcount_inc.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %refcount_inc.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %drm_gem_object_get.exit.i

drm_gem_object_get.exit.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge
  %43 = ptrtoint ptr %bo66.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bo66.i, align 8
  %arrayidx105.i = getelementptr ptr, ptr %44, i32 %j.0578.i
  %45 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx105.i, align 4
  %47 = ptrtoint ptr %bo45.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bo45.i, align 4
  %inc108.i = add i32 %k.1577.i, 1
  %arrayidx109.i = getelementptr ptr, ptr %48, i32 %k.1577.i
  %49 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %arrayidx109.i, align 4
  %inc111.i = add nuw i32 %j.0578.i, 1
  %50 = ptrtoint ptr %bo_count61.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bo_count61.i, align 4
  %cmp62.i = icmp ult i32 %inc111.i, %51
  br i1 %cmp62.i, label %drm_gem_object_get.exit.i.for.body64.i_crit_edge, label %drm_gem_object_get.exit.i.for.end112.i_crit_edge

drm_gem_object_get.exit.i.for.end112.i_crit_edge: ; preds = %drm_gem_object_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end112.i

drm_gem_object_get.exit.i.for.body64.i_crit_edge: ; preds = %drm_gem_object_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body64.i

for.end112.i:                                     ; preds = %drm_gem_object_get.exit.i.for.end112.i_crit_edge, %for.cond59.preheader.i.for.end112.i_crit_edge
  %k.1.lcssa.i = phi i32 [ %k.0584.i, %for.cond59.preheader.i.for.end112.i_crit_edge ], [ %inc108.i, %drm_gem_object_get.exit.i.for.end112.i_crit_edge ]
  %unref_list115.i = getelementptr inbounds %struct.vc4_exec_info, ptr %26, i32 0, i32 11
  %52 = ptrtoint ptr %unref_list115.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn579.i = load ptr, ptr %unref_list115.i, align 4
  %cmp123.not580.i = icmp eq ptr %.pn579.i, %unref_list115.i
  br i1 %cmp123.not580.i, label %for.end112.i.for.inc142.i_crit_edge, label %for.end112.i.for.body127.i_crit_edge

for.end112.i.for.body127.i_crit_edge:             ; preds = %for.end112.i
  br label %for.body127.i

for.end112.i.for.inc142.i_crit_edge:              ; preds = %for.end112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc142.i

for.body127.i:                                    ; preds = %drm_gem_object_get.exit570.i.for.body127.i_crit_edge, %for.end112.i.for.body127.i_crit_edge
  %.pn582.i = phi ptr [ %.pn.i, %drm_gem_object_get.exit570.i.for.body127.i_crit_edge ], [ %.pn579.i, %for.end112.i.for.body127.i_crit_edge ]
  %k.2581.i = phi i32 [ %inc133.i, %drm_gem_object_get.exit570.i.for.body127.i_crit_edge ], [ %k.1.lcssa.i, %for.end112.i.for.body127.i_crit_edge ]
  %bo.1.i = getelementptr i8, ptr %.pn582.i, i32 -388
  %call.i.i.i.i.i.i.i562.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bo.1.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %bo.1.i, i32 1, i32 3, i32 1) #11
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bo.1.i, ptr %bo.1.i, i32 1, ptr elementtype(i32) %bo.1.i) #11, !srcloc !127
  %asmresult.i.i.i.i.i.i.i563.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i563.i)
  %tobool1.not.i.i.i.i.i564.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i563.i, 0
  br i1 %tobool1.not.i.i.i.i.i564.i, label %for.body127.i.if.end15.sink.split.i.i.i.i.i569.i_crit_edge, label %if.else.i.i.i.i.i567.i, !prof !100

for.body127.i.if.end15.sink.split.i.i.i.i.i569.i_crit_edge: ; preds = %for.body127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i569.i

if.else.i.i.i.i.i567.i:                           ; preds = %for.body127.i
  %add.i.i.i.i.i565.i = add i32 %asmresult.i.i.i.i.i.i.i563.i, 1
  %54 = or i32 %add.i.i.i.i.i565.i, %asmresult.i.i.i.i.i.i.i563.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %.not.i.i.i.i.i566.i = icmp sgt i32 %54, -1
  br i1 %.not.i.i.i.i.i566.i, label %if.else.i.i.i.i.i567.i.drm_gem_object_get.exit570.i_crit_edge, label %if.else.i.i.i.i.i567.i.if.end15.sink.split.i.i.i.i.i569.i_crit_edge, !prof !102

if.else.i.i.i.i.i567.i.if.end15.sink.split.i.i.i.i.i569.i_crit_edge: ; preds = %if.else.i.i.i.i.i567.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i569.i

if.else.i.i.i.i.i567.i.drm_gem_object_get.exit570.i_crit_edge: ; preds = %if.else.i.i.i.i.i567.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_gem_object_get.exit570.i

if.end15.sink.split.i.i.i.i.i569.i:               ; preds = %if.else.i.i.i.i.i567.i.if.end15.sink.split.i.i.i.i.i569.i_crit_edge, %for.body127.i.if.end15.sink.split.i.i.i.i.i569.i_crit_edge
  %.sink.i.i.i.i.i568.i = phi i32 [ 2, %for.body127.i.if.end15.sink.split.i.i.i.i.i569.i_crit_edge ], [ 1, %if.else.i.i.i.i.i567.i.if.end15.sink.split.i.i.i.i.i569.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %bo.1.i, i32 noundef %.sink.i.i.i.i.i568.i) #11
  br label %drm_gem_object_get.exit570.i

drm_gem_object_get.exit570.i:                     ; preds = %if.end15.sink.split.i.i.i.i.i569.i, %if.else.i.i.i.i.i567.i.drm_gem_object_get.exit570.i_crit_edge
  %55 = ptrtoint ptr %bo45.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bo45.i, align 4
  %inc133.i = add i32 %k.2581.i, 1
  %arrayidx134.i = getelementptr ptr, ptr %56, i32 %k.2581.i
  %57 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %bo.1.i, ptr %arrayidx134.i, align 4
  %58 = ptrtoint ptr %.pn582.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn.i = load ptr, ptr %.pn582.i, align 4
  %cmp123.not.i = icmp eq ptr %.pn.i, %unref_list115.i
  br i1 %cmp123.not.i, label %drm_gem_object_get.exit570.i.for.inc142.i_crit_edge, label %drm_gem_object_get.exit570.i.for.body127.i_crit_edge

drm_gem_object_get.exit570.i.for.body127.i_crit_edge: ; preds = %drm_gem_object_get.exit570.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body127.i

drm_gem_object_get.exit570.i.for.inc142.i_crit_edge: ; preds = %drm_gem_object_get.exit570.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc142.i

for.inc142.i:                                     ; preds = %drm_gem_object_get.exit570.i.for.inc142.i_crit_edge, %for.end112.i.for.inc142.i_crit_edge, %for.body54.i.for.inc142.i_crit_edge
  %k.3.i = phi i32 [ %k.0584.i, %for.body54.i.for.inc142.i_crit_edge ], [ %k.1.lcssa.i, %for.end112.i.for.inc142.i_crit_edge ], [ %inc133.i, %drm_gem_object_get.exit570.i.for.inc142.i_crit_edge ]
  %inc143.i = add nuw nsw i32 %i.1585.i, 1
  %exitcond.not.i = icmp eq i32 %inc143.i, 2
  br i1 %exitcond.not.i, label %for.end144.i, label %for.inc142.i.for.body54.i_crit_edge

for.inc142.i.for.body54.i_crit_edge:              ; preds = %for.inc142.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.i

for.end144.i:                                     ; preds = %for.inc142.i
  %59 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bo_count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %k.3.i, i32 %60)
  %cmp146.not.i = icmp eq i32 %k.3.i, %60
  br i1 %cmp146.not.i, label %for.end144.i.if.end190.i_crit_edge, label %land.rhs.i

for.end144.i.if.end190.i_crit_edge:               ; preds = %for.end144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end190.i

land.rhs.i:                                       ; preds = %for.end144.i
  %.b556.i = load i1, ptr @vc4_save_hang_state.__already_done, align 1
  br i1 %.b556.i, label %land.rhs.i.if.end190.i_crit_edge, label %if.then163.i, !prof !102

land.rhs.i.if.end190.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end190.i

if.then163.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vc4_save_hang_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 220, i32 noundef 9, ptr noundef null) #11
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.then163.i, %land.rhs.i.if.end190.i_crit_edge, %for.end144.i.if.end190.i_crit_edge
  br i1 %tobool11.not.i, label %if.end190.i.if.end202.i_crit_edge, label %if.then200.i

if.end190.i.if.end202.i_crit_edge:                ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202.i

if.then200.i:                                     ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #13
  %ct0ca.i = getelementptr inbounds %struct.vc4_exec_info, ptr %spec.select.i.i, i32 0, i32 25
  %61 = ptrtoint ptr %ct0ca.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ct0ca.i, align 4
  %start_bin.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %start_bin.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %start_bin.i, align 4
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.then200.i, %if.end190.i.if.end202.i_crit_edge
  br i1 %tobool13.not.i, label %if.end202.i.if.end207.i_crit_edge, label %if.then205.i

if.end202.i.if.end207.i_crit_edge:                ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end207.i

if.then205.i:                                     ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #13
  %ct1ca.i = getelementptr inbounds %struct.vc4_exec_info, ptr %spec.select.i560.i, i32 0, i32 27
  %64 = ptrtoint ptr %ct1ca.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ct1ca.i, align 4
  %start_render.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %start_render.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %start_render.i, align 8
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.then205.i, %if.end202.i.if.end207.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock.i, i32 noundef %call4.i) #11
  %v3d.i = getelementptr i8, ptr %work, i32 -760
  %67 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %v3d.i, align 4
  %regs.i = getelementptr inbounds %struct.vc4_v3d, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i, align 4
  %add.ptr209.i = getelementptr i8, ptr %70, i32 272
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr209.i) #11, !srcloc !129
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !130
  %ct0ca213.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 4
  %73 = ptrtoint ptr %ct0ca213.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %ct0ca213.i, align 4
  %74 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %v3d.i, align 4
  %regs217.i = getelementptr inbounds %struct.vc4_v3d, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %regs217.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs217.i, align 4
  %add.ptr218.i = getelementptr i8, ptr %77, i32 264
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr218.i) #11, !srcloc !129
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !131
  %ct0ea.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 5
  %80 = ptrtoint ptr %ct0ea.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %ct0ea.i, align 8
  %81 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %v3d.i, align 4
  %regs225.i = getelementptr inbounds %struct.vc4_v3d, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %regs225.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs225.i, align 4
  %add.ptr226.i = getelementptr i8, ptr %84, i32 276
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr226.i) #11, !srcloc !129
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !132
  %ct1ca230.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 6
  %87 = ptrtoint ptr %ct1ca230.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %ct1ca230.i, align 4
  %88 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %v3d.i, align 4
  %regs234.i = getelementptr inbounds %struct.vc4_v3d, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %regs234.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs234.i, align 4
  %add.ptr235.i = getelementptr i8, ptr %91, i32 268
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr235.i) #11, !srcloc !129
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  %ct1ea.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 7
  %94 = ptrtoint ptr %ct1ea.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %ct1ea.i, align 8
  %95 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %v3d.i, align 4
  %regs242.i = getelementptr inbounds %struct.vc4_v3d, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %regs242.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs242.i, align 4
  %add.ptr243.i = getelementptr i8, ptr %98, i32 256
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr243.i) #11, !srcloc !129
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !134
  %ct0cs.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 8
  %101 = ptrtoint ptr %ct0cs.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %ct0cs.i, align 4
  %102 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %v3d.i, align 4
  %regs250.i = getelementptr inbounds %struct.vc4_v3d, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %regs250.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs250.i, align 4
  %add.ptr251.i = getelementptr i8, ptr %105, i32 260
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr251.i) #11, !srcloc !129
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  %ct1cs.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 9
  %108 = ptrtoint ptr %ct1cs.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %ct1cs.i, align 8
  %109 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %v3d.i, align 4
  %regs258.i = getelementptr inbounds %struct.vc4_v3d, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %regs258.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs258.i, align 4
  %add.ptr259.i = getelementptr i8, ptr %112, i32 280
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr259.i) #11, !srcloc !129
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %ct0ra0.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 10
  %115 = ptrtoint ptr %ct0ra0.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %ct0ra0.i, align 4
  %116 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %v3d.i, align 4
  %regs266.i = getelementptr inbounds %struct.vc4_v3d, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %regs266.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs266.i, align 4
  %add.ptr267.i = getelementptr i8, ptr %119, i32 284
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr267.i) #11, !srcloc !129
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !137
  %ct1ra0.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 11
  %122 = ptrtoint ptr %ct1ra0.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %ct1ra0.i, align 8
  %123 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %v3d.i, align 4
  %regs274.i = getelementptr inbounds %struct.vc4_v3d, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %regs274.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs274.i, align 4
  %add.ptr275.i = getelementptr i8, ptr %126, i32 768
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr275.i) #11, !srcloc !129
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %bpca.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 12
  %129 = ptrtoint ptr %bpca.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %bpca.i, align 4
  %130 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %v3d.i, align 4
  %regs282.i = getelementptr inbounds %struct.vc4_v3d, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %regs282.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs282.i, align 4
  %add.ptr283.i = getelementptr i8, ptr %133, i32 772
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr283.i) #11, !srcloc !129
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !139
  %bpcs.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 13
  %136 = ptrtoint ptr %bpcs.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %bpcs.i, align 8
  %137 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %v3d.i, align 4
  %regs290.i = getelementptr inbounds %struct.vc4_v3d, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %regs290.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs290.i, align 4
  %add.ptr291.i = getelementptr i8, ptr %140, i32 776
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr291.i) #11, !srcloc !129
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  %bpoa.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 14
  %143 = ptrtoint ptr %bpoa.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %bpoa.i, align 4
  %144 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %v3d.i, align 4
  %regs298.i = getelementptr inbounds %struct.vc4_v3d, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %regs298.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs298.i, align 4
  %add.ptr299.i = getelementptr i8, ptr %147, i32 780
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr299.i) #11, !srcloc !129
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  %bpos.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 15
  %150 = ptrtoint ptr %bpos.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %bpos.i, align 8
  %151 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %v3d.i, align 4
  %regs306.i = getelementptr inbounds %struct.vc4_v3d, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %regs306.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs306.i, align 4
  %add.ptr307.i = getelementptr i8, ptr %154, i32 1284
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr307.i) #11, !srcloc !129
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  %vpmbase.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 16
  %157 = ptrtoint ptr %vpmbase.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %vpmbase.i, align 4
  %158 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %v3d.i, align 4
  %regs314.i = getelementptr inbounds %struct.vc4_v3d, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %regs314.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs314.i, align 4
  %add.ptr315.i = getelementptr i8, ptr %161, i32 3840
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr315.i) #11, !srcloc !129
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !143
  %dbge.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 17
  %164 = ptrtoint ptr %dbge.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %dbge.i, align 8
  %165 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %v3d.i, align 4
  %regs322.i = getelementptr inbounds %struct.vc4_v3d, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %regs322.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regs322.i, align 4
  %add.ptr323.i = getelementptr i8, ptr %168, i32 3844
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr323.i) #11, !srcloc !129
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %fdbgo.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 18
  %171 = ptrtoint ptr %fdbgo.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %fdbgo.i, align 4
  %172 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %v3d.i, align 4
  %regs330.i = getelementptr inbounds %struct.vc4_v3d, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %regs330.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs330.i, align 4
  %add.ptr331.i = getelementptr i8, ptr %175, i32 3848
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr331.i) #11, !srcloc !129
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %fdbgb.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 19
  %178 = ptrtoint ptr %fdbgb.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %fdbgb.i, align 8
  %179 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %v3d.i, align 4
  %regs338.i = getelementptr inbounds %struct.vc4_v3d, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %regs338.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs338.i, align 4
  %add.ptr339.i = getelementptr i8, ptr %182, i32 3852
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr339.i) #11, !srcloc !129
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  %fdbgr.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 20
  %185 = ptrtoint ptr %fdbgr.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %fdbgr.i, align 4
  %186 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %v3d.i, align 4
  %regs346.i = getelementptr inbounds %struct.vc4_v3d, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %regs346.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs346.i, align 4
  %add.ptr347.i = getelementptr i8, ptr %189, i32 3856
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr347.i) #11, !srcloc !129
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  %fdbgs.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 21
  %192 = ptrtoint ptr %fdbgs.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %fdbgs.i, align 8
  %193 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %v3d.i, align 4
  %regs354.i = getelementptr inbounds %struct.vc4_v3d, ptr %194, i32 0, i32 2
  %195 = ptrtoint ptr %regs354.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regs354.i, align 4
  %add.ptr355.i = getelementptr i8, ptr %196, i32 3872
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr355.i) #11, !srcloc !129
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  %errstat.i = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %call7.i.i.i.i, i32 0, i32 22
  %199 = ptrtoint ptr %errstat.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %errstat.i, align 4
  %200 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %bo_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp362586.not.i = icmp eq i32 %201, 0
  br i1 %cmp362586.not.i, label %if.end207.i.do.body416.i_crit_edge, label %if.end207.i.for.body364.i_crit_edge

if.end207.i.for.body364.i_crit_edge:              ; preds = %if.end207.i
  br label %for.body364.i

if.end207.i.do.body416.i_crit_edge:               ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body416.i

for.body364.i:                                    ; preds = %cleanup.i.for.body364.i_crit_edge, %if.end207.i.for.body364.i_crit_edge
  %i.2587.i = phi i32 [ %inc413.i, %cleanup.i.for.body364.i_crit_edge ], [ 0, %if.end207.i.for.body364.i_crit_edge ]
  %202 = ptrtoint ptr %bo45.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %bo45.i, align 4
  %arrayidx367.i = getelementptr ptr, ptr %203, i32 %i.2587.i
  %204 = ptrtoint ptr %arrayidx367.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx367.i, align 4
  %madv.i = getelementptr inbounds %struct.vc4_bo, ptr %205, i32 0, i32 10
  %206 = ptrtoint ptr %madv.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %madv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %207)
  %cmp369.i = icmp eq i32 %207, 3
  br i1 %cmp369.i, label %for.body364.i.cleanup.i_crit_edge, label %if.end372.i

for.body364.i.cleanup.i_crit_edge:                ; preds = %for.body364.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end372.i:                                      ; preds = %for.body364.i
  %madv_lock.i = getelementptr inbounds %struct.vc4_bo, ptr %205, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %madv_lock.i, i32 noundef 0) #11
  %208 = ptrtoint ptr %madv.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %madv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %209)
  %cmp375.i = icmp eq i32 %209, 2
  br i1 %cmp375.i, label %do.end392.i, label %if.then407.critedge.i, !prof !100

do.end392.i:                                      ; preds = %if.end372.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 269, i32 noundef 9, ptr noundef null) #11
  br label %if.end409.i

if.then407.critedge.i:                            ; preds = %if.end372.i
  call void @__sanitizer_cov_trace_pc() #13
  %210 = ptrtoint ptr %madv.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 0, ptr %madv.i, align 4
  br label %if.end409.i

if.end409.i:                                      ; preds = %if.then407.critedge.i, %do.end392.i
  %usecnt410.i = getelementptr inbounds %struct.vc4_bo, ptr %205, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt410.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %usecnt410.i, i32 1, i32 3, i32 1) #11
  %211 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt410.i, ptr %usecnt410.i, i32 1, ptr elementtype(i32) %usecnt410.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i571.i = extractvalue { i32, i32, i32 } %211, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i571.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i571.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.end409.i.refcount_dec.exit.i_crit_edge, !prof !100

if.end409.i.refcount_dec.exit.i_crit_edge:        ; preds = %if.end409.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_dec.exit.i

if.then3.i.i.i:                                   ; preds = %if.end409.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usecnt410.i, i32 noundef 4) #11
  br label %refcount_dec.exit.i

refcount_dec.exit.i:                              ; preds = %if.then3.i.i.i, %if.end409.i.refcount_dec.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %madv_lock.i) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %refcount_dec.exit.i, %for.body364.i.cleanup.i_crit_edge
  %inc413.i = add nuw i32 %i.2587.i, 1
  %212 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %bo_count.i, align 8
  %cmp362.i = icmp ult i32 %inc413.i, %213
  br i1 %cmp362.i, label %cleanup.i.for.body364.i_crit_edge, label %cleanup.i.do.body416.i_crit_edge

cleanup.i.do.body416.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body416.i

cleanup.i.for.body364.i_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body364.i

do.body416.i:                                     ; preds = %cleanup.i.do.body416.i_crit_edge, %if.end207.i.do.body416.i_crit_edge
  %call424.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock.i) #11
  %hang_state.i = getelementptr i8, ptr %work, i32 -744
  %214 = ptrtoint ptr %hang_state.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %hang_state.i, align 4
  %tobool429.not.i = icmp eq ptr %215, null
  br i1 %tobool429.not.i, label %if.else.i, label %if.then430.i

if.then430.i:                                     ; preds = %do.body416.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock.i, i32 noundef %call424.i) #11
  tail call fastcc void @vc4_free_hang_state(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %vc4_save_hang_state.exit

if.else.i:                                        ; preds = %do.body416.i
  call void @__sanitizer_cov_trace_pc() #13
  %216 = ptrtoint ptr %hang_state.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %call7.i.i.i.i, ptr %hang_state.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock.i, i32 noundef %call424.i) #11
  br label %vc4_save_hang_state.exit

vc4_save_hang_state.exit:                         ; preds = %if.else.i, %if.then430.i, %if.then48.i, %if.then14.i, %entry.vc4_save_hang_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %exec.i) #11
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #17
  %power_lock.i = getelementptr i8, ptr %work, i32 -140
  tail call void @mutex_lock_nested(ptr noundef %power_lock.i, i32 noundef 0) #11
  %power_refcount.i = getelementptr i8, ptr %work, i32 -148
  %217 = ptrtoint ptr %power_refcount.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %power_refcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool.not.i3 = icmp eq i32 %218, 0
  br i1 %tobool.not.i3, label %vc4_save_hang_state.exit.vc4_reset.exit_crit_edge, label %if.then.i

vc4_save_hang_state.exit.vc4_reset.exit_crit_edge: ; preds = %vc4_save_hang_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vc4_reset.exit

if.then.i:                                        ; preds = %vc4_save_hang_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  %v3d.i4 = getelementptr i8, ptr %work, i32 -760
  %219 = ptrtoint ptr %v3d.i4 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %v3d.i4, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_v3d, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pdev.i, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %222, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev2.i, i32 noundef 4) #11
  %223 = ptrtoint ptr %v3d.i4 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %v3d.i4, align 4
  %pdev5.i = getelementptr inbounds %struct.vc4_v3d, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %pdev5.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pdev5.i, align 4
  %dev6.i = getelementptr inbounds %struct.platform_device, ptr %226, i32 0, i32 3
  %call.i15.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev6.i, i32 noundef 4) #11
  br label %vc4_reset.exit

vc4_reset.exit:                                   ; preds = %if.then.i, %vc4_save_hang_state.exit.vc4_reset.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -3100
  tail call void @mutex_unlock(ptr noundef %power_lock.i) #11
  tail call void @vc4_irq_reset(ptr noundef %add.ptr) #11
  %hangcheck.i.i = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %227 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %227, 10
  %call2.i.i = tail call i32 @round_jiffies_up(i32 noundef %add.i.i) #11
  %call3.i.i = tail call i32 @mod_timer(ptr noundef %hangcheck.i.i, i32 noundef %call2.i.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hangcheck_elapsed(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %job_lock = getelementptr i8, ptr %t, i32 -316
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock) #11
  %bin_job_list.i = getelementptr i8, ptr %t, i32 -340
  %0 = ptrtoint ptr %bin_job_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %bin_job_list.i, align 4
  %cmp.not.i = icmp eq ptr %1, %bin_job_list.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -60
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %render_job_list.i = getelementptr i8, ptr %t, i32 -332
  %2 = ptrtoint ptr %render_job_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %render_job_list.i, align 4
  %cmp.not.i70 = icmp eq ptr %3, %render_job_list.i
  %add.ptr.i71 = getelementptr i8, ptr %3, i32 -60
  %spec.select.i72 = select i1 %cmp.not.i70, ptr null, ptr %add.ptr.i71
  %tobool.not = icmp eq ptr %spec.select.i, null
  %tobool8.not = icmp eq ptr %spec.select.i72, null
  %or.cond = select i1 %tobool.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %v3d = getelementptr i8, ptr %t, i32 -712
  %4 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v3d, align 4
  %regs = getelementptr inbounds %struct.vc4_v3d, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 272
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #11, !srcloc !129
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !149
  %10 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v3d, align 4
  %regs17 = getelementptr inbounds %struct.vc4_v3d, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %regs17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs17, align 4
  %add.ptr18 = getelementptr i8, ptr %13, i32 276
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #11, !srcloc !129
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !150
  br i1 %tobool.not, label %if.end.lor.lhs.false_crit_edge, label %land.lhs.true23

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true23:                                  ; preds = %if.end
  %last_ct0ca = getelementptr inbounds %struct.vc4_exec_info, ptr %spec.select.i, i32 0, i32 3
  %16 = ptrtoint ptr %last_ct0ca to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_ct0ca, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %17)
  %cmp24.not = icmp eq i32 %9, %17
  br i1 %cmp24.not, label %land.lhs.true23.lor.lhs.false_crit_edge, label %if.end34

land.lhs.true23.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true23.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  br i1 %tobool8.not, label %lor.lhs.false.if.end40_crit_edge, label %land.lhs.true27

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true27:                                  ; preds = %lor.lhs.false
  %last_ct1ca = getelementptr inbounds %struct.vc4_exec_info, ptr %spec.select.i72, i32 0, i32 4
  %18 = ptrtoint ptr %last_ct1ca to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_ct1ca, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp28.not = icmp eq i32 %15, %19
  br i1 %cmp28.not, label %land.lhs.true27.if.end40_crit_edge, label %if.then30

land.lhs.true27.if.end40_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then30:                                        ; preds = %land.lhs.true27
  br i1 %tobool.not, label %if.then30.if.then36_crit_edge, label %if.end34.thread73

if.then30.if.then36_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.end34.thread73:                                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %last_ct0ca3374 = getelementptr inbounds %struct.vc4_exec_info, ptr %spec.select.i, i32 0, i32 3
  %20 = ptrtoint ptr %last_ct0ca3374 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %9, ptr %last_ct0ca3374, align 4
  br label %if.then36

if.end34:                                         ; preds = %land.lhs.true23
  %21 = ptrtoint ptr %last_ct0ca to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %9, ptr %last_ct0ca, align 4
  br i1 %tobool8.not, label %if.end34.if.end38_crit_edge, label %if.end34.if.then36_crit_edge

if.end34.if.then36_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then36:                                        ; preds = %if.end34.if.then36_crit_edge, %if.end34.thread73, %if.then30.if.then36_crit_edge
  %last_ct1ca37 = getelementptr inbounds %struct.vc4_exec_info, ptr %spec.select.i72, i32 0, i32 4
  %22 = ptrtoint ptr %last_ct1ca37 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %last_ct1ca37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end34.if.end38_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call3) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %23, 10
  %call2.i = tail call i32 @round_jiffies_up(i32 noundef %add.i) #11
  %call3.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %call2.i) #11
  br label %cleanup

if.end40:                                         ; preds = %land.lhs.true27.if.end40_crit_edge, %lor.lhs.false.if.end40_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call3) #11
  %reset_work = getelementptr inbounds %struct.anon.90, ptr %t, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %reset_work) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end38, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_job_done_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2832
  tail call void @vc4_job_handle_completed(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_gem_destroy(ptr nocapture noundef %dev, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %emit_seqno = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %emit_seqno to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %emit_seqno, align 8
  %finished_seqno = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %finished_seqno to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %finished_seqno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp.not = icmp eq i64 %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !102

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 1298, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %bin_bo = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 24
  %4 = ptrtoint ptr %bin_bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bin_bo, align 8
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %if.end.if.end24_crit_edge, label %if.then.i

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !102

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #11
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  tail call void @drm_gem_object_free(ptr noundef nonnull %5) #11, !callees !107
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge
  %7 = ptrtoint ptr %bin_bo to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bin_bo, align 8
  br label %if.end24

if.end24:                                         ; preds = %drm_gem_object_put.exit, %if.end.if.end24_crit_edge
  %hang_state = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 7
  %8 = ptrtoint ptr %hang_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hang_state, align 4
  %tobool25.not = icmp eq ptr %9, null
  br i1 %tobool25.not, label %if.end24.if.end28_crit_edge, label %if.then26

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @vc4_free_hang_state(ptr noundef nonnull %9)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_gem_madvise_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %madv = getelementptr inbounds %struct.drm_vc4_gem_madvise, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %madv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %pad = getelementptr inbounds %struct.drm_vc4_gem_madvise, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %5) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %7) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %madv5 = getelementptr inbounds %struct.vc4_bo, ptr %call, i32 0, i32 10
  %8 = ptrtoint ptr %madv5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %madv5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp6 = icmp eq i32 %9, 3
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19) #11
  br label %if.then.i

if.end8:                                          ; preds = %if.end3
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 8
  %10 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %import_attach, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20) #11
  br label %if.then.i

if.end11:                                         ; preds = %if.end8
  %madv_lock = getelementptr inbounds %struct.vc4_bo, ptr %call, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %madv_lock, i32 noundef 0) #11
  %12 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %madv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp13 = icmp eq i32 %13, 1
  br i1 %cmp13, label %land.lhs.true, label %if.end11.if.else_crit_edge

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end11
  %14 = ptrtoint ptr %madv5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %madv5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15 = icmp eq i32 %15, 0
  br i1 %cmp15, label %land.lhs.true16, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true16:                                  ; preds = %land.lhs.true
  %usecnt = getelementptr inbounds %struct.vc4_bo, ptr %call, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #11
  %16 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  br i1 %tobool18.not, label %if.then19, label %if.elsethread-pre-split

if.then19:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vc4_bo_add_to_purgeable_pool(ptr noundef nonnull %call) #11
  br label %if.end31

if.elsethread-pre-split:                          ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %madv, align 4
  br label %if.else

if.else:                                          ; preds = %if.elsethread-pre-split, %if.end11.if.else_crit_edge
  %19 = phi i32 [ %.pr, %if.elsethread-pre-split ], [ %13, %if.end11.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp21 = icmp eq i32 %19, 0
  br i1 %cmp21, label %land.lhs.true22, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true22:                                  ; preds = %if.else
  %20 = ptrtoint ptr %madv5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %madv5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp24 = icmp eq i32 %21, 1
  br i1 %cmp24, label %land.lhs.true25, label %land.lhs.true22.if.end31_crit_edge

land.lhs.true22.if.end31_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %usecnt26 = getelementptr inbounds %struct.vc4_bo, ptr %call, i32 0, i32 9
  %call.i.i.i66 = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt26, i32 noundef 4) #11
  %22 = ptrtoint ptr %usecnt26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %usecnt26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool28.not = icmp eq i32 %23, 0
  br i1 %tobool28.not, label %if.then29, label %land.lhs.true25.if.end31_crit_edge

land.lhs.true25.if.end31_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then29:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vc4_bo_remove_from_purgeable_pool(ptr noundef nonnull %call) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %land.lhs.true25.if.end31_crit_edge, %land.lhs.true22.if.end31_crit_edge, %if.else.if.end31_crit_edge, %if.then19, %land.lhs.true.if.end31_crit_edge
  %24 = ptrtoint ptr %madv5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %madv5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp33 = icmp ne i32 %25, 2
  %conv = zext i1 %cmp33 to i32
  %retained = getelementptr inbounds %struct.drm_vc4_gem_madvise, ptr %data, i32 0, i32 2
  %26 = ptrtoint ptr %retained to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %retained, align 4
  %27 = ptrtoint ptr %madv5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %madv5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp35.not = icmp eq i32 %28, 2
  br i1 %cmp35.not, label %if.end31.if.end40_crit_edge, label %if.then37

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %madv, align 4
  %31 = ptrtoint ptr %madv5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %madv5, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end31.if.end40_crit_edge
  tail call void @mutex_unlock(ptr noundef %madv_lock) #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.end40, %if.then10, %if.then7
  %ret.0 = phi i32 [ -22, %if.then7 ], [ -22, %if.then10 ], [ 0, %if.end40 ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #11
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !102

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #11, !callees !107
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then1, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then1 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i.i ], [ %ret.0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_bo_add_to_purgeable_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_bo_remove_from_purgeable_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_vc4_wait_for_seqno_begin(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_vc4_wait_for_seqno_end(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_bo_dec_usecnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_v3d_bin_bo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_perfmon_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_v3d_pm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_bo_inc_usecnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_bo_create(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_validate_bin_cl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_validate_shader_recs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_v3d_bin_bo_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ww_acquire_fini(ptr noundef %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@ww_acquire_fini, %__here) to i32)) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %__here.if.end36_crit_edge

__here.if.end36_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true:                                    ; preds = %__here
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %acquired, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end36_crit_edge, label %do.end, !prof !102

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end.if.end36_crit_edge, label %land.lhs.true5

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end36_crit_edge

land.lhs.true5.if.end36_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.40) #11
  br label %if.end36

if.end36:                                         ; preds = %do.end19, %land.lhs.true5.if.end36_crit_edge, %do.end.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %__here.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_replace_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_irq_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !37, !39, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !81, !83, !85, !87, !88, !89}
!llvm.named.register.sp = !{!90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 80, i32 3}
!2 = !{ptr @vc4_queue_seqno_cb.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1032, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1101, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1139, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1147, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1152, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1158, i32 3}
!15 = !{ptr @vc4_gem_init.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1276, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @vc4_gem_init.__key.8, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1278, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @vc4_gem_init.__key.10, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1279, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vc4_gem_init.__key.12, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1281, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vc4_gem_init.__key.14, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1283, i32 2}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @vc4_gem_init.__key.16, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1286, i32 2}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1288, i32 9}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1341, i32 3}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 1350, i32 3}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/vc4/vc4_trace.h", i32 17, i32 1}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!50 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/vc4/vc4_trace.h", i32 37, i32 1}
!56 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 440, i32 2}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 742, i32 3}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 750, i32 3}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 757, i32 3}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 764, i32 3}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 773, i32 4}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 843, i32 3}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 857, i32 3}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 891, i32 3}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/ww_mutex.h", i32 333, i32 2}
!77 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/ww_mutex.h", i32 173, i32 2}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/ww_mutex.h", i32 191, i32 2}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 220, i32 2}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/vc4/vc4_gem.c", i32 290, i32 2}
!87 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @vc4_reset._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @vc4_reset._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{!"sp"}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{!"auto-init"}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2152512779, i64 2152512804}
!104 = !{i64 2148462677}
!105 = !{i64 2148377117, i64 2148377149, i64 2148377178, i64 2148377212, i64 2148377243, i64 2148377266}
!106 = !{i64 2149338791}
!107 = !{ptr @dma_fence_release, ptr @drm_gem_object_free, ptr @drm_syncobj_free}
!108 = !{i64 2148986499, i64 2148986504, i64 2148986517, i64 2148986561, i64 2148986595, i64 2148986616}
!109 = !{i64 2156963341}
!110 = !{i64 2156963590}
!111 = !{i64 2149397840}
!112 = !{i64 2149398876}
!113 = !{i64 2156980617}
!114 = !{i64 2156980844}
!115 = !{i64 2157025469}
!116 = !{i64 4845309}
!117 = !{i64 2157527201}
!118 = !{i64 2157023541}
!119 = !{i64 2157024096}
!120 = !{i64 2157715813}
!121 = !{i64 2157964172}
!122 = !{i8 0, i8 2}
!123 = !{i64 2152512098, i64 2152512123}
!124 = !{i64 5007653}
!125 = !{i64 5007850}
!126 = !{i64 2152493083}
!127 = !{i64 2148374652, i64 2148374684, i64 2148374713, i64 2148374747, i64 2148374778, i64 2148374801}
!128 = !{i64 2148373842, i64 2148373874, i64 2148373903, i64 2148373937, i64 2148373968, i64 2148373991}
!129 = !{i64 4845727}
!130 = !{i64 2157005827}
!131 = !{i64 2157006487}
!132 = !{i64 2157007147}
!133 = !{i64 2157007807}
!134 = !{i64 2157008450}
!135 = !{i64 2157009093}
!136 = !{i64 2157009654}
!137 = !{i64 2157010215}
!138 = !{i64 2157010776}
!139 = !{i64 2157011337}
!140 = !{i64 2157011898}
!141 = !{i64 2157012459}
!142 = !{i64 2157013020}
!143 = !{i64 2157013581}
!144 = !{i64 2157014142}
!145 = !{i64 2157014703}
!146 = !{i64 2157015264}
!147 = !{i64 2157015825}
!148 = !{i64 2157016386}
!149 = !{i64 2157022530}
!150 = !{i64 2157023190}
