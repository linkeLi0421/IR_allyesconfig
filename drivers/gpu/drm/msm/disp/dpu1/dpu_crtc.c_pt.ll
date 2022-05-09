; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.93 = type { i32, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.dpu_crtc = type { %struct.drm_crtc, [12 x i8], ptr, i32, i32, i64, i64, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, [4 x %struct.dpu_crtc_frame_event], %struct.list_head, %struct.spinlock, %struct.completion, %struct.spinlock, %struct.dpu_core_perf_params, %struct.dpu_crtc_smmu_state_data }
%struct.dpu_crtc_frame_event = type { %struct.kthread_work, ptr, %struct.list_head, i64, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dpu_core_perf_params = type { i64, i64, i64 }
%struct.dpu_crtc_smmu_state_data = type { i32, i32, i32 }
%struct.dpu_crtc_state = type { %struct.drm_crtc_state, i8, i8, [2 x %struct.drm_rect], i64, %struct.dpu_core_perf_params, i32, [2 x %struct.dpu_crtc_mixer], i32, [2 x ptr], i32, i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_crtc_mixer = type { ptr, ptr, ptr, i32, i32 }
%struct.dpu_hw_mixer = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, ptr, %struct.dpu_hw_lm_ops, %struct.dpu_hw_mixer_cfg }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_lm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_mixer_cfg = type { i32, i32, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
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
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, i32, ptr, i32, i32, i32, %struct.dpu_hw_ctl_ops }
%struct.dpu_hw_ctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_dspp = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_dspp_ops }
%struct.dpu_hw_dspp_ops = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.85, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.86, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.87, ptr, %struct.address_space, %struct.list_head, %union.anon.88, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.86 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.87 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.88 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.dpu_plane_state = type { %struct.drm_plane_state, ptr, i32, i8, i32, i32, i8, i64, i64 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.89, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.89 = type { [4 x i8] }
%struct.dpu_multirect_plane_states = type { ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.plane_state = type { ptr, ptr, i32, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_kms = type { %struct.msm_kms, ptr, i32, ptr, ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.dpu_core_perf, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.dpu_rm, i8, [2 x ptr], ptr, i8, ptr, i8, %struct.dss_module_power, %struct.atomic_t, [2 x ptr], i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.dpu_core_perf = type { ptr, ptr, ptr, ptr, i64, i64, %struct.dpu_core_perf_tune, i32, i64, i64, i64 }
%struct.dpu_core_perf_tune = type { i32, i64, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dss_module_power = type { i32, ptr }
%struct.dpu_hw_pcc_cfg = type { %struct.dpu_hw_pcc_coeff, %struct.dpu_hw_pcc_coeff, %struct.dpu_hw_pcc_coeff }
%struct.dpu_hw_pcc_coeff = type { i32, i32, i32 }
%struct.dpu_hw_stage_cfg = type { [12 x [2 x i32]], [12 x [2 x i32]] }
%struct.dpu_format = type { %struct.msm_format, i32, [4 x i8], [4 x i8], i32, i8, i8, i8, i8, i8, i8, i32, [1 x i32], i16, i16 }
%struct.msm_format = type { i32 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"crtc_commit\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"crtc%d first commit\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"crtc%d commit\0A\00", [17 x i8] zeroinitializer }, align 32
@dpu_crtc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dpu_crtc->spin_lock\00", [43 x i8] zeroinitializer }, align 32
@dpu_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @dpu_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @dpu_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @dpu_crtc_duplicate_state, ptr @dpu_crtc_destroy_state, ptr null, ptr null, ptr @dpu_crtc_late_register, ptr null, ptr @dpu_crtc_set_crc_source, ptr @dpu_crtc_verify_crc_source, ptr null, ptr @dpu_crtc_atomic_print_state, ptr @dpu_crtc_get_vblank_counter, ptr @msm_crtc_enable_vblank, ptr @msm_crtc_disable_vblank, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, [32 x i8] zeroinitializer }, align 32
@dpu_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpu_crtc_atomic_check, ptr @dpu_crtc_atomic_begin, ptr @dpu_crtc_atomic_flush, ptr @dpu_crtc_enable, ptr @dpu_crtc_disable, ptr @dpu_crtc_get_scanout_position }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crtc%u\00", [25 x i8] zeroinitializer }, align 32
@dpu_crtc_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&dpu_crtc->event_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: successfully initialized crtc\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MISR read failed\0A\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_crtc_vblank_cb = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", [54 x i8] zeroinitializer }, align 32
@trace_dpu_crtc_vblank_cb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_crtc_complete_commit = external dso_local global %struct.tracepoint, align 4
@trace_dpu_crtc_complete_commit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: send event: %pK\0A\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_crtc_complete_flip = external dso_local global %struct.tracepoint, align 4
@trace_dpu_crtc_complete_flip.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_tracing_mark_write = external dso_local global %struct.tracepoint, align 4
@trace_tracing_mark_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dpu_crtc_vblank = external dso_local global %struct.tracepoint, align 4
@trace_dpu_crtc_vblank.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dpu_crtc_vblank_enable = external dso_local global %struct.tracepoint, align 4
@trace_dpu_crtc_vblank_enable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"crtc_frame_event\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"crtc%d event:%u ts:%lld\0A\00", [39 x i8] zeroinitializer }, align 32
@dpu_crtc_frame_event_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013[drm:%s:%d] [dpu error]crtc%d ts:%lld received panel dead event\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dpu_crtc_frame_event_work\00", [38 x i8] zeroinitializer }, align 32
@dpu_crtc_frame_event_work._entry_ptr = internal global ptr @dpu_crtc_frame_event_work._entry, section ".printk_index", align 4
@__tracepoint_dpu_crtc_frame_event_done = external dso_local global %struct.tracepoint, align 4
@trace_dpu_crtc_frame_event_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dpu_crtc_frame_event_more_pending = external dso_local global %struct.tracepoint, align 4
@trace_dpu_crtc_frame_event_more_pending.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dpu_crtc_duplicate_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013[drm:%s:%d] [dpu error]failed to allocate state\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dpu_crtc_duplicate_state\00", [39 x i8] zeroinitializer }, align 32
@dpu_crtc_duplicate_state._entry_ptr = internal global ptr @dpu_crtc_duplicate_state._entry, section ".printk_index", align 4
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"crtc%d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@_dpu_debugfs_status_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @_dpu_debugfs_status_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@dpu_crtc_debugfs_state_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dpu_crtc_debugfs_state_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"crtc:%d width:%d height:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\09mixer:%d ctl:%d width:%d height:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09plane:%u stage:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\09fb:%d image format:%4.4s wxh:%ux%u \00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpp[%d]:%u \00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0A\09\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"modifier:%8llu \00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\09\00", [30 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pitches[%d]:%8u \00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"offsets[%d]:%8u \00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\09src_x:%4d src_y:%4d src_w:%4d src_h:%4d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\09dst x:%4d dst_y:%4d dst_w:%4d dst_h:%4d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\09multirect: mode: %d index: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"vblank fps:%lld count:%u total:%llums total_framecount:%llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"client type: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intf_mode: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"core_clk_rate: %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bw_ctl: %llu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max_per_pipe_ib: %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid CRC source %s for CRTC%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"lm\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid source %s for CRTC%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09lm[%d]=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09ctl[%d]=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\09dspp[%d]=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no encoder found for crtc %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"crtc%d -> enable %d, active %d, skip atomic_check\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: check\0A\00", [21 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013[drm:%s:%d] [dpu error]%s: failed to get plane%d state, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dpu_crtc_atomic_check\00", [42 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_check._entry_ptr = internal global ptr @dpu_crtc_atomic_check._entry, section ".printk_index", align 4
@dpu_crtc_atomic_check._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013[drm:%s:%d] [dpu error]invalid vertical/horizontal destination\0A\00", [62 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_check._entry_ptr.59 = internal global ptr @dpu_crtc_atomic_check._entry.57, section ".printk_index", align 4
@dpu_crtc_atomic_check._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013[drm:%s:%d] [dpu error]display: %dx%d%+d%+d plane: %dx%d%+d%+d\0A\00", [62 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_check._entry_ptr.62 = internal global ptr @dpu_crtc_atomic_check._entry.60, section ".printk_index", align 4
@dpu_crtc_atomic_check._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013[drm:%s:%d] [dpu error]r1 only virt plane:%d not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_check._entry_ptr.65 = internal global ptr @dpu_crtc_atomic_check._entry.63, section ".printk_index", align 4
@dpu_crtc_atomic_check._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013[drm:%s:%d] [dpu error]> %d plane stages assigned\0A\00", [43 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_check._entry_ptr.68 = internal global ptr @dpu_crtc_atomic_check._entry.66, section ".printk_index", align 4
@dpu_crtc_atomic_check._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.56, ptr @.str, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[drm:%s:%d] [dpu error]> 2 planes @ stage %d on left\0A\00", [40 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_check._entry_ptr.71 = internal global ptr @dpu_crtc_atomic_check._entry.69, section ".printk_index", align 4
@dpu_crtc_atomic_check._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.56, ptr @.str, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013[drm:%s:%d] [dpu error]> 2 planes @ stage %d on right\0A\00", [39 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_check._entry_ptr.74 = internal global ptr @dpu_crtc_atomic_check._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: zpos %d\0A\00", [19 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_check._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.56, ptr @.str, i32 1197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013[drm:%s:%d] [dpu error]multirect validation failed for planes (%d - %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_check._entry_ptr.78 = internal global ptr @dpu_crtc_atomic_check._entry.76, section ".printk_index", align 4
@dpu_crtc_atomic_check._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.56, ptr @.str, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013[drm:%s:%d] [dpu error]crtc%d failed performance check %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_check._entry_ptr.81 = internal global ptr @dpu_crtc_atomic_check._entry.79, section ".printk_index", align 4
@dpu_crtc_atomic_check._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.56, ptr @.str, i32 1251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013[drm:%s:%d] [dpu error]invalid src split cfg. priority mismatch. stage: %d left: %d right: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_check._entry_ptr.84 = internal global ptr @dpu_crtc_atomic_check._entry.82, section ".printk_index", align 4
@dpu_crtc_atomic_check._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.56, ptr @.str, i32 1259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\013[drm:%s:%d] [dpu error]non-contiguous coordinates for src split. stage: %d left: %dx%d%+d%+d right: %dx%d%+d%+d\0A\00", [45 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_check._entry_ptr.87 = internal global ptr @dpu_crtc_atomic_check._entry.85, section ".printk_index", align 4
@dpu_crtc_atomic_check._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.56, ptr @.str, i32 1268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"\013[drm:%s:%d] [dpu error]source split at stage: %d. invalid yoff/height: left: %dx%d%+d%+d right: %dx%d%+d%+d\0A\00", [49 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_check._entry_ptr.90 = internal global ptr @dpu_crtc_atomic_check._entry.88, section ".printk_index", align 4
@__tracepoint_dpu_crtc_setup_lm_bounds = external dso_local global %struct.tracepoint, align 4
@trace_dpu_crtc_setup_lm_bounds.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.91 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"crtc%d -> enable %d, skip atomic_begin\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"lm %d, op_mode 0x%X, ctl %d, flush mask 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"crtc %d stage:%d - plane %d sspp %d fb %d\0A\00", [53 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_crtc_setup_mixer = external dso_local global %struct.tracepoint, align 4
@trace_dpu_crtc_setup_mixer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.95 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"format:%p4cc, alpha_en:%u blend_op:0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lm %d, ctl %d, flush mask 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"crtc%d -> enable %d, skip atomic_flush\0A\00", [56 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013[drm:%s:%d] [dpu error]invalid crtc index[%d]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dpu_crtc_atomic_flush\00", [42 x i8] zeroinitializer }, align 32
@dpu_crtc_atomic_flush._entry_ptr = internal global ptr @dpu_crtc_atomic_flush._entry, section ".printk_index", align 4
@dpu_crtc_frame_event_cb._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.100, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.dpu_crtc_frame_event_cb = private unnamed_addr constant [24 x i8] c"dpu_crtc_frame_event_cb\00", align 1
@.str.101 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* crtc%d event %d overflow\0A\00", [62 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_crtc_frame_event_cb = external dso_local global %struct.tracepoint, align 4
@trace_dpu_crtc_frame_event_cb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dpu_crtc_enable = external dso_local global %struct.tracepoint, align 4
@trace_dpu_crtc_enable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dpu_crtc_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013[drm:%s:%d] [dpu error]crtc%d wait for frame done failed;frame_pending%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dpu_crtc_disable\00", [47 x i8] zeroinitializer }, align 32
@dpu_crtc_disable._entry_ptr = internal global ptr @dpu_crtc_disable._entry, section ".printk_index", align 4
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no frames pending\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"frame done completion wait\00", [37 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"frame done wait timed out, ret:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_crtc_disable = external dso_local global %struct.tracepoint, align 4
@trace_dpu_crtc_disable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dpu_crtc_disable_frame_pending = external dso_local global %struct.tracepoint, align 4
@trace_dpu_crtc_disable_frame_pending.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 505, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 870, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 882, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 884, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1509, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [15 x i8] c"dpu_crtc_funcs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1468, i32 36 }
@___asan_gen_.129 = private unnamed_addr constant [22 x i8] c"dpu_crtc_helper_funcs\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1485, i32 43 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1532, i32 47 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1535, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1537, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 207, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant [45 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 261, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 108, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 483, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 87, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 539, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 541, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 566, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 917, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 826, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1446, i32 22 }
@___asan_gen_.195 = private unnamed_addr constant [25 x i8] c"_dpu_debugfs_status_fops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1419, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1449, i32 22 }
@___asan_gen_.201 = private unnamed_addr constant [28 x i8] c"dpu_crtc_debugfs_state_fops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1436, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1336, i32 16 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1339, i32 14 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1343, i32 17 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1357, i32 17 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1363, i32 18 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1367, i32 19 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1369, i32 16 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1371, i32 18 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1374, i32 16 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1376, i32 19 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1382, i32 19 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1387, i32 17 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1390, i32 17 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1393, i32 17 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1405, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1426, i32 16 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1427, i32 16 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1428, i32 16 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1430, i32 16 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1431, i32 16 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 115, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 76, i32 24 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 78, i32 24 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 79, i32 24 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 92, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 934, i32 17 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 935, i32 17 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 937, i32 18 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 170, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1073, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1081, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1104, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1131, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1132, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1145, i32 5 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1165, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1171, i32 5 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1180, i32 5 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1189, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1194, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1207, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1249, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1255, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1264, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 723, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 428, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 455, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 369, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 311, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 709, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 768, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 781, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 614, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 970, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 839, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 843, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.433 = private constant [44 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 847, i32 3 }
@llvm.compiler.used = appending global [125 x ptr] [ptr @dpu_crtc_atomic_check._entry, ptr @dpu_crtc_atomic_check._entry.57, ptr @dpu_crtc_atomic_check._entry.60, ptr @dpu_crtc_atomic_check._entry.63, ptr @dpu_crtc_atomic_check._entry.66, ptr @dpu_crtc_atomic_check._entry.69, ptr @dpu_crtc_atomic_check._entry.72, ptr @dpu_crtc_atomic_check._entry.76, ptr @dpu_crtc_atomic_check._entry.79, ptr @dpu_crtc_atomic_check._entry.82, ptr @dpu_crtc_atomic_check._entry.85, ptr @dpu_crtc_atomic_check._entry.88, ptr @dpu_crtc_atomic_check._entry_ptr, ptr @dpu_crtc_atomic_check._entry_ptr.59, ptr @dpu_crtc_atomic_check._entry_ptr.62, ptr @dpu_crtc_atomic_check._entry_ptr.65, ptr @dpu_crtc_atomic_check._entry_ptr.68, ptr @dpu_crtc_atomic_check._entry_ptr.71, ptr @dpu_crtc_atomic_check._entry_ptr.74, ptr @dpu_crtc_atomic_check._entry_ptr.78, ptr @dpu_crtc_atomic_check._entry_ptr.81, ptr @dpu_crtc_atomic_check._entry_ptr.84, ptr @dpu_crtc_atomic_check._entry_ptr.87, ptr @dpu_crtc_atomic_check._entry_ptr.90, ptr @dpu_crtc_atomic_flush._entry, ptr @dpu_crtc_atomic_flush._entry_ptr, ptr @dpu_crtc_disable._entry, ptr @dpu_crtc_disable._entry_ptr, ptr @dpu_crtc_duplicate_state._entry, ptr @dpu_crtc_duplicate_state._entry_ptr, ptr @dpu_crtc_frame_event_work._entry, ptr @dpu_crtc_frame_event_work._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dpu_crtc_init.__key, ptr @.str.4, ptr @dpu_crtc_funcs, ptr @dpu_crtc_helper_funcs, ptr @.str.5, ptr @dpu_crtc_init.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @init_completion.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @_dpu_debugfs_status_fops, ptr @.str.23, ptr @dpu_crtc_debugfs_state_fops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @dpu_crtc_frame_event_cb._rs, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_frame_event_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_duplicate_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_debugfs_status_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_debugfs_state_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_atomic_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_atomic_check._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_atomic_check._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_atomic_check._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_atomic_check._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_atomic_check._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_atomic_check._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_atomic_check._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_atomic_check._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_atomic_check._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_atomic_check._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_atomic_check._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_atomic_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_frame_event_cb._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_crtc_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_crtc_get_intf_mode(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #11
  br i1 %call.i.i, label %entry.if.end_crit_edge, label %do.end, !prof !259

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 505, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %encoder_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state, align 4
  %encoder_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %encoder_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %encoder_mask, align 4
  %index.i.i = getelementptr i8, ptr %.pn, i32 36
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %8
  %and = and i32 %shl.i, %6
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %for.body.for.cond_crit_edge, label %if.else

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %encoder.0.le = getelementptr i8, ptr %.pn, i32 -4
  %call29 = tail call i32 @dpu_encoder_get_intf_mode(ptr noundef %encoder.0.le) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.else ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_get_intf_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_crtc_vblank_callback(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  %crcs.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vblank_cb_time = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 6
  %0 = ptrtoint ptr %vblank_cb_time to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %vblank_cb_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp3.not.i.not = icmp eq i64 %1, 0
  br i1 %cmp3.not.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i64 @ktime_get() #11
  %2 = ptrtoint ptr %vblank_cb_time to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call2, ptr %vblank_cb_time, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vblank_cb_count = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 4
  %3 = ptrtoint ptr %vblank_cb_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vblank_cb_count, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %vblank_cb_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crcs.i) #11
  %5 = ptrtoint ptr %crcs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %crcs.i, align 4, !annotation !260
  %6 = getelementptr inbounds [2 x i32], ptr %crcs.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !260
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 4
  %crc_frame_skip_count.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %crc_frame_skip_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crc_frame_skip_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i12 = icmp slt i32 %11, 2
  br i1 %cmp.i12, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end
  %num_mixers.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %num_mixers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_mixers.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp21.not.i = icmp eq i32 %13, 0
  br i1 %cmp21.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i = add nsw i32 %11, 1
  %14 = ptrtoint ptr %crc_frame_skip_count.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i, ptr %crc_frame_skip_count.i, align 4
  br label %dpu_crtc_get_crc.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc15.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dpu_crtc_state, ptr %9, i32 0, i32 7, i32 %i.02.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %collect_misr.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %16, i32 0, i32 6, i32 5
  %17 = ptrtoint ptr %collect_misr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %collect_misr.i, align 4
  %tobool4.not.i = icmp eq ptr %18, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end6.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %arrayidx11.i = getelementptr [2 x i32], ptr %crcs.i, i32 0, i32 %i.02.i
  %call.i = call i32 %18(ptr noundef nonnull %16, ptr noundef %arrayidx11.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end6.i.for.inc.i_crit_edge, label %if.then13.i

if.end6.i.for.inc.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then13.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9) #11
  br label %dpu_crtc_get_crc.exit

for.inc.i:                                        ; preds = %if.end6.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc15.i = add nuw i32 %i.02.i, 1
  %19 = ptrtoint ptr %num_mixers.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_mixers.i, align 8
  %cmp2.i = icmp ult i32 %inc15.i, %20
  br i1 %cmp2.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call16.i = call i64 @drm_crtc_accurate_vblank_count(ptr noundef %crtc) #11
  %conv.i = trunc i64 %call16.i to i32
  %call17.i = call i32 @drm_crtc_add_crc_entry(ptr noundef %crtc, i1 noundef zeroext true, i32 noundef %conv.i, ptr noundef nonnull %crcs.i) #11
  br label %dpu_crtc_get_crc.exit

dpu_crtc_get_crc.exit:                            ; preds = %for.end.i, %if.then13.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crcs.i) #11
  %call5 = call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %crtc) #11
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %dpu_crtc_get_crc.exit.cond.end_crit_edge, label %cond.true

dpu_crtc_get_crc.exit.cond.end_crit_edge:         ; preds = %dpu_crtc_get_crc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %dpu_crtc_get_crc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %dpu_crtc_get_crc.exit.cond.end_crit_edge
  %cond = phi i32 [ %22, %cond.true ], [ -1, %dpu_crtc_get_crc.exit.cond.end_crit_edge ]
  call fastcc void @trace_dpu_crtc_vblank_cb(i32 noundef %cond)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_crtc_vblank_cb(i32 noundef %drm_id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank_cb, i32 0, i32 1), ptr blockaddress(@trace_dpu_crtc_vblank_cb, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !261

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !259

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !262
  %call42 = tail call i32 @__traceiter_dpu_crtc_vblank_cb(ptr noundef null, i32 noundef %drm_id) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !263
  %13 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !259

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank_cb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank_cb, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_dpu_crtc_vblank_cb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_crtc_vblank_cb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 264, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
define dso_local void @dpu_crtc_complete_commit(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  tail call fastcc void @trace_dpu_crtc_complete_commit(i32 noundef %cond)
  %call = tail call i32 @dpu_core_perf_crtc_update(ptr noundef %crtc, i32 noundef 0, i1 noundef zeroext false) #11
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %event_lock.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #11
  %event.i = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 2
  %4 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %cond.end._dpu_crtc_complete_flip.exit_crit_edge, label %if.then.i

cond.end._dpu_crtc_complete_flip.exit_crit_edge:  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_crtc_complete_flip.exit

if.then.i:                                        ; preds = %cond.end
  %name.i = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 32, ptr noundef nonnull @.str.13, ptr noundef %name.i, ptr noundef nonnull %5) #11
  br i1 %tobool.not, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %base.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %7, %cond.true.i ], [ -1, %if.then.i.cond.end.i_crit_edge ]
  tail call fastcc void @trace_dpu_crtc_complete_flip(i32 noundef %cond.i) #11
  %8 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event.i, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %9) #11
  %10 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %event.i, align 4
  br label %_dpu_crtc_complete_flip.exit

_dpu_crtc_complete_flip.exit:                     ; preds = %cond.end.i, %cond.end._dpu_crtc_complete_flip.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call4.i) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_crtc_complete_commit(i32 noundef %drm_id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_complete_commit, i32 0, i32 1), ptr blockaddress(@trace_dpu_crtc_complete_commit, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !261

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !259

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !266
  %call42 = tail call i32 @__traceiter_dpu_crtc_complete_commit(ptr noundef null, i32 noundef %drm_id) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !267
  %13 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !259

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_complete_commit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_complete_commit, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_dpu_crtc_complete_commit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_crtc_complete_commit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 268, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
declare dso_local i32 @dpu_core_perf_crtc_update(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_crtc_commit_kickoff(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %num_mixers = getelementptr inbounds %struct.dpu_crtc_state, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %num_mixers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_mixers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !268

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 69
  %14 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tgid, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %15, ptr noundef nonnull @.str.1, i1 noundef zeroext true)
  %16 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 30, i32 16
  %18 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn92 = load ptr, ptr %encoder_list, align 4
  %cmp.not95 = icmp eq ptr %.pn92, %encoder_list
  br i1 %cmp.not95, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn96 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn92, %if.end.for.body_crit_edge ]
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  %encoder_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %encoder_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %encoder_mask, align 4
  %index.i.i = getelementptr i8, ptr %.pn96, i32 36
  %23 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %24
  %and = and i32 %shl.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %encoder.097 = getelementptr i8, ptr %.pn96, i32 -4
  tail call void @dpu_encoder_prepare_for_kickoff(ptr noundef %encoder.097) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %.pn96 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn96, align 4
  %26 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crtc, align 8
  %encoder_list13 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 30, i32 16
  %cmp.not = icmp eq ptr %.pn, %encoder_list13
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %frame_pending = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_pending, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !269
  tail call void @llvm.prefetch.p0(ptr %frame_pending, i32 1, i32 3, i32 1) #11
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frame_pending, ptr %frame_pending, i32 1, ptr elementtype(i32) %frame_pending) #11, !srcloc !270
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !271
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp27 = icmp eq i32 %asmresult.i.i.i.i, 1
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base, align 8
  %.str.2..str.3 = select i1 %cmp27, ptr @.str.2, ptr @.str.3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull %.str.2..str.3, i32 noundef %30) #11
  %play_count = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 5
  %31 = ptrtoint ptr %play_count to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %play_count, align 8
  %inc = add i64 %32, 1
  store i64 %inc, ptr %play_count, align 8
  tail call void @dpu_vbif_clear_errors(ptr noundef %5) #11
  %33 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %crtc, align 8
  %encoder_list36 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 30, i32 16
  %35 = ptrtoint ptr %encoder_list36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn8998 = load ptr, ptr %encoder_list36, align 4
  %cmp45.not101 = icmp eq ptr %.pn8998, %encoder_list36
  br i1 %cmp45.not101, label %for.end.for.end63_crit_edge, label %for.end.for.body48_crit_edge

for.end.for.body48_crit_edge:                     ; preds = %for.end
  br label %for.body48

for.end.for.end63_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end63

for.body48:                                       ; preds = %for.inc57.for.body48_crit_edge, %for.end.for.body48_crit_edge
  %.pn89102 = phi ptr [ %.pn89, %for.inc57.for.body48_crit_edge ], [ %.pn8998, %for.end.for.body48_crit_edge ]
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %state, align 4
  %encoder_mask50 = getelementptr inbounds %struct.drm_crtc_state, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %encoder_mask50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %encoder_mask50, align 4
  %index.i.i90 = getelementptr i8, ptr %.pn89102, i32 36
  %40 = ptrtoint ptr %index.i.i90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i.i90, align 4
  %shl.i91 = shl nuw i32 1, %41
  %and52 = and i32 %shl.i91, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %for.body48.for.inc57_crit_edge, label %if.else55

for.body48.for.inc57_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc57

if.else55:                                        ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #13
  %encoder.1103 = getelementptr i8, ptr %.pn89102, i32 -4
  tail call void @dpu_encoder_kickoff(ptr noundef %encoder.1103) #11
  br label %for.inc57

for.inc57:                                        ; preds = %if.else55, %for.body48.for.inc57_crit_edge
  %42 = ptrtoint ptr %.pn89102 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn89 = load ptr, ptr %.pn89102, align 4
  %43 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %crtc, align 8
  %encoder_list44 = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 30, i32 16
  %cmp45.not = icmp eq ptr %.pn89, %encoder_list44
  br i1 %cmp45.not, label %for.inc57.for.end63_crit_edge, label %for.inc57.for.body48_crit_edge

for.inc57.for.body48_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body48

for.inc57.for.end63_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end63

for.end63:                                        ; preds = %for.inc57.for.end63_crit_edge, %for.end.for.end63_crit_edge
  %frame_done_comp = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 17
  %45 = ptrtoint ptr %frame_done_comp to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %frame_done_comp, align 4
  %46 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task, align 8
  %tgid66 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 69
  %48 = ptrtoint ptr %tgid66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tgid66, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %49, ptr noundef nonnull @.str.1, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %for.end63, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tracing_mark_write(i32 noundef %pid, ptr noundef %name, i1 noundef zeroext %trace_begin) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), ptr blockaddress(@trace_tracing_mark_write, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !261

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !259

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !272
  %call43 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %pid, ptr noundef %name, i1 noundef zeroext %trace_begin) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !273
  %13 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !259

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_tracing_mark_write.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_tracing_mark_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 121, ptr noundef nonnull @.str.11) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_prepare_for_kickoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_vbif_clear_errors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_kickoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_crtc_vblank(ptr noundef %crtc, i1 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %0 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  tail call fastcc void @trace_dpu_crtc_vblank(i32 noundef %cond, i1 noundef zeroext %en, ptr noundef %crtc)
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  %4 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn45 = load ptr, ptr %encoder_list, align 4
  %cmp.not48 = icmp eq ptr %.pn45, %encoder_list
  br i1 %cmp.not48, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %base12 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %cond.end22.for.body_crit_edge, %for.body.lr.ph
  %.pn49 = phi ptr [ %.pn45, %for.body.lr.ph ], [ %.pn, %cond.end22.for.body_crit_edge ]
  %enc.050 = getelementptr i8, ptr %.pn49, i32 -4
  br i1 %tobool.not, label %for.body.cond.end15_crit_edge, label %cond.true11

for.body.cond.end15_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end15

cond.true11:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base12, align 8
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true11, %for.body.cond.end15_crit_edge
  %cond16 = phi i32 [ %6, %cond.true11 ], [ -1, %for.body.cond.end15_crit_edge ]
  %tobool17.not = icmp eq ptr %enc.050, null
  br i1 %tobool17.not, label %cond.end15.cond.end22_crit_edge, label %cond.true18

cond.end15.cond.end22_crit_edge:                  ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end22

cond.true18:                                      ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #13
  %base19 = getelementptr i8, ptr %.pn49, i32 8
  %7 = ptrtoint ptr %base19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base19, align 4
  br label %cond.end22

cond.end22:                                       ; preds = %cond.true18, %cond.end15.cond.end22_crit_edge
  %cond23 = phi i32 [ %8, %cond.true18 ], [ -1, %cond.end15.cond.end22_crit_edge ]
  tail call fastcc void @trace_dpu_crtc_vblank_enable(i32 noundef %cond16, i32 noundef %cond23, i1 noundef zeroext %en, ptr noundef %crtc)
  tail call void @dpu_encoder_toggle_vblank_for_crtc(ptr noundef %enc.050, ptr noundef %crtc, i1 noundef zeroext %en) #11
  %9 = ptrtoint ptr %.pn49 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn49, align 4
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 8
  %encoder_list9 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 16
  %cmp.not = icmp eq ptr %.pn, %encoder_list9
  br i1 %cmp.not, label %cond.end22.for.end_crit_edge, label %cond.end22.for.body_crit_edge

cond.end22.for.body_crit_edge:                    ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cond.end22.for.end_crit_edge:                     ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cond.end22.for.end_crit_edge, %cond.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_crtc_vblank(i32 noundef %drm_id, i1 noundef zeroext %enable, ptr noundef %crtc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank, i32 0, i32 1), ptr blockaddress(@trace_dpu_crtc_vblank, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !261

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !259

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !274
  %call43 = tail call i32 @__traceiter_dpu_crtc_vblank(ptr noundef null, i32 noundef %drm_id, i1 noundef zeroext %enable, ptr noundef %crtc) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !275
  %13 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !259

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_dpu_crtc_vblank.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_crtc_vblank.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 746, ptr noundef nonnull @.str.11) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_crtc_vblank_enable(i32 noundef %drm_id, i32 noundef %enc_id, i1 noundef zeroext %enable, ptr noundef %crtc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank_enable, i32 0, i32 1), ptr blockaddress(@trace_dpu_crtc_vblank_enable, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !261

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !259

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !276
  %call43 = tail call i32 @__traceiter_dpu_crtc_vblank_enable(ptr noundef null, i32 noundef %drm_id, i32 noundef %enc_id, i1 noundef zeroext %enable, ptr noundef %crtc) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !277
  %13 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !259

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank_enable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank_enable, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_dpu_crtc_vblank_enable.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_crtc_vblank_enable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 716, ptr noundef nonnull @.str.11) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_toggle_vblank_for_crtc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_crtc_init(ptr noundef %dev, ptr noundef %plane, ptr noundef %cursor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1464) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i.i, align 8
  %spin_lock = getelementptr inbounds %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %spin_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @dpu_crtc_init.__key, i16 noundef signext 3) #11
  %frame_pending = getelementptr inbounds %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_pending, i32 noundef 4) #11
  %2 = ptrtoint ptr %frame_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %frame_pending, align 4
  %frame_done_comp = getelementptr inbounds %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 17
  %3 = ptrtoint ptr %frame_done_comp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %frame_done_comp, align 4
  %wait.i = getelementptr inbounds %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 17, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #11
  %frame_event_list = getelementptr inbounds %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 15
  %4 = ptrtoint ptr %frame_event_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %frame_event_list, ptr %frame_event_list, align 8
  %prev.i = getelementptr inbounds %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 15, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %frame_event_list, ptr %prev.i, align 4
  %arrayidx = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 0
  %list = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 2
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %list, align 8
  %prev.i56 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i56, align 4
  %call.i.i57 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %frame_event_list, ptr noundef %frame_event_list) #11
  br i1 %call.i.i57, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 15, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %frame_event_list, ptr %list, align 8
  %10 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %frame_event_list, ptr %prev.i56, align 4
  %11 = ptrtoint ptr %frame_event_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %frame_event_list, align 8
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %12 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 1
  %13 = call ptr @memset(ptr %12, i32 0, i32 12)
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx, ptr %arrayidx, align 8
  %prev.i58 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i58 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %prev.i58, align 4
  %func = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @dpu_crtc_frame_event_work, ptr %func, align 8
  %arrayidx.1 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 1
  %list.1 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 2
  %17 = ptrtoint ptr %list.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list.1, ptr %list.1, align 8
  %prev.i56.1 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i56.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list.1, ptr %prev.i56.1, align 4
  %19 = ptrtoint ptr %frame_event_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %frame_event_list, align 8
  %call.i.i57.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.1, ptr noundef %frame_event_list, ptr noundef %20) #11
  br i1 %call.i.i57.1, label %if.end.i.i.1, label %list_add.exit.list_add.exit.1_crit_edge

list_add.exit.list_add.exit.1_crit_edge:          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.1

if.end.i.i.1:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.1 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list.1, ptr %prev1.i.i.1, align 4
  %22 = ptrtoint ptr %list.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %list.1, align 8
  %23 = ptrtoint ptr %prev.i56.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %frame_event_list, ptr %prev.i56.1, align 4
  %24 = ptrtoint ptr %frame_event_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list.1, ptr %frame_event_list, align 8
  br label %list_add.exit.1

list_add.exit.1:                                  ; preds = %if.end.i.i.1, %list_add.exit.list_add.exit.1_crit_edge
  %25 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 1
  %26 = call ptr @memset(ptr %25, i32 0, i32 12)
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 8
  %prev.i58.1 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i58.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.1, ptr %prev.i58.1, align 4
  %func.1 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %func.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dpu_crtc_frame_event_work, ptr %func.1, align 8
  %arrayidx.2 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 2
  %list.2 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 2
  %30 = ptrtoint ptr %list.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list.2, ptr %list.2, align 8
  %prev.i56.2 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 2, i32 1
  %31 = ptrtoint ptr %prev.i56.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list.2, ptr %prev.i56.2, align 4
  %32 = ptrtoint ptr %frame_event_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %frame_event_list, align 8
  %call.i.i57.2 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.2, ptr noundef %frame_event_list, ptr noundef %33) #11
  br i1 %call.i.i57.2, label %if.end.i.i.2, label %list_add.exit.1.list_add.exit.2_crit_edge

list_add.exit.1.list_add.exit.2_crit_edge:        ; preds = %list_add.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.2

if.end.i.i.2:                                     ; preds = %list_add.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.2 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list.2, ptr %prev1.i.i.2, align 4
  %35 = ptrtoint ptr %list.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %list.2, align 8
  %36 = ptrtoint ptr %prev.i56.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %frame_event_list, ptr %prev.i56.2, align 4
  %37 = ptrtoint ptr %frame_event_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list.2, ptr %frame_event_list, align 8
  br label %list_add.exit.2

list_add.exit.2:                                  ; preds = %if.end.i.i.2, %list_add.exit.1.list_add.exit.2_crit_edge
  %38 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 0, i32 1
  %39 = call ptr @memset(ptr %38, i32 0, i32 12)
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 8
  %prev.i58.2 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i58.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx.2, ptr %prev.i58.2, align 4
  %func.2 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 0, i32 1
  %42 = ptrtoint ptr %func.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @dpu_crtc_frame_event_work, ptr %func.2, align 8
  %arrayidx.3 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 3
  %list.3 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 3, i32 2
  %43 = ptrtoint ptr %list.3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %list.3, ptr %list.3, align 8
  %prev.i56.3 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 3, i32 2, i32 1
  %44 = ptrtoint ptr %prev.i56.3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list.3, ptr %prev.i56.3, align 4
  %45 = ptrtoint ptr %frame_event_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %frame_event_list, align 8
  %call.i.i57.3 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.3, ptr noundef %frame_event_list, ptr noundef %46) #11
  br i1 %call.i.i57.3, label %if.end.i.i.3, label %list_add.exit.2.list_add.exit.3_crit_edge

list_add.exit.2.list_add.exit.3_crit_edge:        ; preds = %list_add.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.3

if.end.i.i.3:                                     ; preds = %list_add.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.3 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list.3, ptr %prev1.i.i.3, align 4
  %48 = ptrtoint ptr %list.3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %list.3, align 8
  %49 = ptrtoint ptr %prev.i56.3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %frame_event_list, ptr %prev.i56.3, align 4
  %50 = ptrtoint ptr %frame_event_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %list.3, ptr %frame_event_list, align 8
  br label %list_add.exit.3

list_add.exit.3:                                  ; preds = %if.end.i.i.3, %list_add.exit.2.list_add.exit.3_crit_edge
  %51 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 3, i32 0, i32 1
  %52 = call ptr @memset(ptr %51, i32 0, i32 12)
  %53 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 8
  %prev.i58.3 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 3, i32 0, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i58.3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx.3, ptr %prev.i58.3, align 4
  %func.3 = getelementptr %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 14, i32 3, i32 0, i32 1
  %55 = ptrtoint ptr %func.3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @dpu_crtc_frame_event_work, ptr %func.3, align 8
  %call19 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %plane, ptr noundef %cursor, ptr noundef nonnull @dpu_crtc_funcs, ptr noundef null) #11
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i, i32 0, i32 19
  %56 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @dpu_crtc_helper_funcs, ptr %helper_private.i, align 8
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef nonnull %call7.i.i, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0) #11
  %name = getelementptr inbounds %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 1
  %base20 = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %base20 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %base20, align 8
  %call21 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 12, ptr noundef nonnull @.str.5, i32 noundef %58)
  %event_lock = getelementptr inbounds %struct.dpu_crtc, ptr %call7.i.i, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %event_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @dpu_crtc_init.__key.6, i16 noundef signext 3) #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef %name) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit.3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %list_add.exit.3 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_crtc_frame_event_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc1 = getelementptr inbounds %struct.dpu_crtc_frame_event, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %crtc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tgid, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %7, ptr noundef nonnull @.str.15, i1 noundef zeroext true)
  %base = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 8
  %event = getelementptr inbounds %struct.dpu_crtc_frame_event, ptr %work, i32 0, i32 4
  %10 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event, align 8
  %ts = getelementptr inbounds %struct.dpu_crtc_frame_event, ptr %work, i32 0, i32 3
  %12 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %9, i32 noundef %11, i64 noundef %13) #11
  %14 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %event, align 8
  %and = and i32 %15, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end32_crit_edge, label %if.then

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then:                                          ; preds = %entry
  %frame_pending = getelementptr inbounds %struct.dpu_crtc, ptr %1, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %frame_pending, i32 noundef 4) #11
  %16 = ptrtoint ptr %frame_pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %frame_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp slt i32 %17, 1
  br i1 %cmp, label %if.then.if.end26_crit_edge, label %if.else

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.else:                                          ; preds = %if.then
  %call.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_pending, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !278
  tail call void @llvm.prefetch.p0(ptr %frame_pending, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frame_pending, ptr %frame_pending, i32 1, ptr elementtype(i32) %frame_pending) #11, !srcloc !279
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp11 = icmp eq i32 %asmresult.i.i.i.i, 0
  %tobool13.not = icmp eq ptr %1, null
  br i1 %cmp11, label %if.then12, label %if.else17

if.then12:                                        ; preds = %if.else
  br i1 %tobool13.not, label %if.then12.cond.end_crit_edge, label %cond.true

if.then12.cond.end_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then12.cond.end_crit_edge
  %cond = phi i32 [ %20, %cond.true ], [ -1, %if.then12.cond.end_crit_edge ]
  %21 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %event, align 8
  tail call fastcc void @trace_dpu_crtc_frame_event_done(i32 noundef %cond, i32 noundef %22)
  tail call void @dpu_core_perf_crtc_release_bw(ptr noundef %1) #11
  br label %if.end26

if.else17:                                        ; preds = %if.else
  br i1 %tobool13.not, label %if.else17.cond.end23_crit_edge, label %cond.true19

if.else17.cond.end23_crit_edge:                   ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end23

cond.true19:                                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base, align 8
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true19, %if.else17.cond.end23_crit_edge
  %cond24 = phi i32 [ %24, %cond.true19 ], [ -1, %if.else17.cond.end23_crit_edge ]
  %25 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %event, align 8
  tail call fastcc void @trace_dpu_crtc_frame_event_more_pending(i32 noundef %cond24, i32 noundef %26)
  br label %if.end26

if.end26:                                         ; preds = %cond.end23, %cond.end, %if.then.if.end26_crit_edge
  %27 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %event, align 8
  %and28 = and i32 %28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp ne i32 %and28, 0
  br label %if.end32

if.end32:                                         ; preds = %if.end26, %entry.if.end32_crit_edge
  %frame_done.0.off0 = phi i1 [ false, %entry.if.end32_crit_edge ], [ %tobool29.not, %if.end26 ]
  %29 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %event, align 8
  %and34 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end43_crit_edge, label %do.end

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base, align 8
  %33 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ts, align 8
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 567, i32 noundef %32, i64 noundef %34) #15
  br label %if.end43

if.end43:                                         ; preds = %do.end, %if.end32.if.end43_crit_edge
  br i1 %frame_done.0.off0, label %if.then45, label %if.end43.do.body48_crit_edge

if.end43.do.body48_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body48

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %frame_done_comp = getelementptr inbounds %struct.dpu_crtc, ptr %1, i32 0, i32 17
  tail call void @complete_all(ptr noundef %frame_done_comp) #11
  br label %do.body48

do.body48:                                        ; preds = %if.then45, %if.end43.do.body48_crit_edge
  %spin_lock = getelementptr inbounds %struct.dpu_crtc, ptr %1, i32 0, i32 16
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock) #11
  %list = getelementptr inbounds %struct.dpu_crtc_frame_event, ptr %work, i32 0, i32 2
  %frame_event_list = getelementptr inbounds %struct.dpu_crtc, ptr %1, i32 0, i32 15
  %prev.i = getelementptr inbounds %struct.dpu_crtc, ptr %1, i32 0, i32 15, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i, align 4
  %call.i.i83 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %36, ptr noundef %frame_event_list) #11
  br i1 %call.i.i83, label %if.end.i.i, label %do.body48.list_add_tail.exit_crit_edge

do.body48.list_add_tail.exit_crit_edge:           ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %list, ptr %prev.i, align 4
  %38 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %frame_event_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dpu_crtc_frame_event, ptr %work, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %list, ptr %36, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body48.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock, i32 noundef %call52) #11
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %tgid60 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 69
  %43 = ptrtoint ptr %tgid60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tgid60, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %44, ptr noundef nonnull @.str.15, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_add_crc_entry(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_crtc_accurate_vblank_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_vblank_cb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_complete_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_crtc_complete_flip(i32 noundef %drm_id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_complete_flip, i32 0, i32 1), ptr blockaddress(@trace_dpu_crtc_complete_flip, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !261

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !259

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !281
  %call42 = tail call i32 @__traceiter_dpu_crtc_complete_flip(ptr noundef null, i32 noundef %drm_id) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !282
  %13 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !259

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_complete_flip, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_complete_flip, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_dpu_crtc_complete_flip.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_crtc_complete_flip.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 260, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_complete_flip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tracing_mark_write(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_vblank(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_vblank_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_crtc_frame_event_done(i32 noundef %drm_id, i32 noundef %event) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_done, i32 0, i32 1), ptr blockaddress(@trace_dpu_crtc_frame_event_done, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !261

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !259

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !283
  %call42 = tail call i32 @__traceiter_dpu_crtc_frame_event_done(ptr noundef null, i32 noundef %drm_id, i32 noundef %event) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !284
  %13 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !259

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_done, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_dpu_crtc_frame_event_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_crtc_frame_event_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 502, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
declare dso_local void @dpu_core_perf_crtc_release_bw(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_crtc_frame_event_more_pending(i32 noundef %drm_id, i32 noundef %event) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_more_pending, i32 0, i32 1), ptr blockaddress(@trace_dpu_crtc_frame_event_more_pending, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !261

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !259

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !285
  %call42 = tail call i32 @__traceiter_dpu_crtc_frame_event_more_pending(ptr noundef null, i32 noundef %drm_id, i32 noundef %event) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !286
  %13 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !259

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_more_pending, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_more_pending, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_dpu_crtc_frame_event_more_pending.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_crtc_frame_event_more_pending.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 506, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_frame_event_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_frame_event_more_pending(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_crtc_reset(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 416) #14
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %4) #11
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %2) #11
  tail call void @kfree(ptr noundef nonnull %2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef %call7.i.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_crtc_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_crtc_cleanup(ptr noundef nonnull %crtc) #11
  tail call void @kfree(ptr noundef nonnull %crtc) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dpu_crtc_duplicate_state(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 416, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 917) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_crtc_destroy_state(ptr nocapture noundef readonly %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %1) #11
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %state) #11
  tail call void @kfree(ptr noundef %state) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_crtc_late_register(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name.i = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 1
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %primary.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary.i, align 4
  %debugfs_root1.i = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %debugfs_root1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_root1.i, align 4
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef %name.i, ptr noundef %5) #11
  %call2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 256, ptr noundef %call.i, ptr noundef %crtc, ptr noundef nonnull @_dpu_debugfs_status_fops) #11
  %call3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 384, ptr noundef %call.i, ptr noundef %crtc, ptr noundef nonnull @dpu_crtc_debugfs_state_fops) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_crtc_set_crc_source(ptr noundef %crtc, ptr noundef %src_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %src_name, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %src_name, ptr noundef nonnull dereferenceable(5) @.str.45) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @strcmp(ptr noundef nonnull %src_name, ptr noundef nonnull dereferenceable(5) @.str.46) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end_crit_edge, label %lor.lhs.false4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false4.i:                                 ; preds = %if.end.i
  %call5.i = tail call i32 @strcmp(ptr noundef nonnull %src_name, ptr noundef nonnull dereferenceable(3) @.str.47) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false4.i.if.end_crit_edge, label %if.then

lor.lhs.false4.i.if.end_crit_edge:                ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #13
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.44, ptr noundef nonnull %src_name, i32 noundef %1) #11
  br label %cleanup35

if.end:                                           ; preds = %lor.lhs.false4.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %cmp4.not = phi i1 [ false, %lor.lhs.false4.i.if.end_crit_edge ], [ true, %lor.lhs.false.i.if.end_crit_edge ], [ true, %entry.if.end_crit_edge ], [ false, %if.end.i.if.end_crit_edge ]
  %retval.0.i.ph = phi i32 [ 1, %lor.lhs.false4.i.if.end_crit_edge ], [ 0, %lor.lhs.false.i.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ 1, %if.end.i.if.end_crit_edge ]
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %mutex = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 4
  %call1 = tail call i32 @drm_modeset_lock(ptr noundef %mutex, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup35_crit_edge

if.end.cleanup35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #11
  %crc_source = getelementptr inbounds %struct.dpu_crtc_state, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %crc_source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crc_source, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.not = icmp eq i32 %7, 0
  %cmp6.not.not = xor i1 %cmp6.not, true
  %brmerge = or i1 %cmp4.not, %cmp6.not.not
  br i1 %brmerge, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end3
  %call11 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end20_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.if.end20_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else:                                          ; preds = %if.end3
  %cmp4.not.not = xor i1 %cmp4.not, true
  %brmerge71 = or i1 %cmp6.not, %cmp4.not.not
  br i1 %brmerge71, label %if.else.if.end20_crit_edge, label %if.then18

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_crtc_vblank_put(ptr noundef %crtc) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.else.if.end20_crit_edge, %if.then10.if.end20_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #11
  %8 = ptrtoint ptr %crc_source to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i.ph, ptr %crc_source, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #11
  %crc_frame_skip_count = getelementptr inbounds %struct.dpu_crtc_state, ptr %5, i32 0, i32 11
  %9 = ptrtoint ptr %crc_frame_skip_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %crc_frame_skip_count, align 4
  %num_mixers = getelementptr inbounds %struct.dpu_crtc_state, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %num_mixers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_mixers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2475.not = icmp eq i32 %11, 0
  br i1 %cmp2475.not, label %if.end20.cleanup_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end20.for.body_crit_edge
  %i.076 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end20.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_crtc_state, ptr %5, i32 0, i32 7, i32 %i.076
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %setup_misr = getelementptr inbounds %struct.dpu_hw_mixer, ptr %13, i32 0, i32 6, i32 4
  %14 = ptrtoint ptr %setup_misr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %setup_misr, align 4
  %tobool27.not = icmp eq ptr %15, null
  br i1 %tobool27.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end29

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end29:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %15(ptr noundef nonnull %13, i1 noundef zeroext true, i32 noundef 1) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.076, 1
  %16 = ptrtoint ptr %num_mixers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_mixers, align 8
  %cmp24 = icmp ult i32 %inc, %17
  br i1 %cmp24, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %ret.1 = phi i32 [ %call11, %if.then10.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  tail call void @drm_modeset_unlock(ptr noundef %mutex) #11
  br label %cleanup35

cleanup35:                                        ; preds = %cleanup, %if.end.cleanup35_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %ret.1, %cleanup ], [ %call1, %if.end.cleanup35_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_crtc_verify_crc_source(ptr nocapture noundef readonly %crtc, ptr noundef %src_name, ptr nocapture noundef writeonly %values_cnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %src_name, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %src_name, ptr noundef nonnull dereferenceable(5) @.str.45) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @strcmp(ptr noundef nonnull %src_name, ptr noundef nonnull dereferenceable(5) @.str.46) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.then2_crit_edge, label %lor.lhs.false4.i

if.end.i.if.then2_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

lor.lhs.false4.i:                                 ; preds = %if.end.i
  %call5.i = tail call i32 @strcmp(ptr noundef nonnull %src_name, ptr noundef nonnull dereferenceable(3) @.str.47) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false4.i.if.then2_crit_edge, label %if.then

lor.lhs.false4.i.if.then2_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

if.then:                                          ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #13
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.48, ptr noundef nonnull %src_name, i32 noundef %1) #11
  br label %cleanup

if.then2:                                         ; preds = %lor.lhs.false4.i.if.then2_crit_edge, %if.end.i.if.then2_crit_edge
  %state913 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %2 = ptrtoint ptr %state913 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state913, align 4
  %num_mixers = getelementptr inbounds %struct.dpu_crtc_state, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_mixers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_mixers, align 8
  %6 = ptrtoint ptr %values_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %values_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.then2 ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_crtc_atomic_print_state(ptr noundef %p, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_mixers = getelementptr inbounds %struct.dpu_crtc_state, ptr %state, i32 0, i32 6
  %0 = ptrtoint ptr %num_mixers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_mixers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26.not = icmp eq i32 %1, 0
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_crtc_state, ptr %state, i32 0, i32 7, i32 %i.027
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %idx = getelementptr inbounds %struct.dpu_hw_mixer, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  %sub = add i32 %5, -1
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.49, i32 noundef %i.027, i32 noundef %sub) #11
  %lm_ctl = getelementptr %struct.dpu_crtc_state, ptr %state, i32 0, i32 7, i32 %i.027, i32 1
  %6 = ptrtoint ptr %lm_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lm_ctl, align 4
  %idx3 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %idx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx3, align 4
  %sub4 = add i32 %9, -1
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.50, i32 noundef %i.027, i32 noundef %sub4) #11
  %hw_dspp = getelementptr %struct.dpu_crtc_state, ptr %state, i32 0, i32 7, i32 %i.027, i32 2
  %10 = ptrtoint ptr %hw_dspp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_dspp, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %idx10 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %idx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx10, align 4
  %sub11 = add i32 %13, -1
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.51, i32 noundef %i.027, i32 noundef %sub11) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.027, 1
  %14 = ptrtoint ptr %num_mixers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_mixers, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_crtc_get_vblank_counter(ptr noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %crtc4.i = getelementptr i8, ptr %.pn.i, i32 48
  %3 = ptrtoint ptr %crtc4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crtc4.i, align 4
  %cmp5.i = icmp eq ptr %4, %crtc
  br i1 %cmp5.i, label %get_encoder_from_crtc.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

get_encoder_from_crtc.exit:                       ; preds = %for.body.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool.not, label %get_encoder_from_crtc.exit.if.then_crit_edge, label %if.end

get_encoder_from_crtc.exit.if.then_crit_edge:     ; preds = %get_encoder_from_crtc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %get_encoder_from_crtc.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.52, i32 noundef %6) #11
  br label %cleanup

if.end:                                           ; preds = %get_encoder_from_crtc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @dpu_encoder_get_vsync_count(ptr noundef nonnull %encoder.0.le.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_crtc_enable_vblank(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_crtc_disable_vblank(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_vblank_helper_get_vblank_timestamp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_dpu_debugfs_status_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @_dpu_debugfs_status_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_dpu_debugfs_status_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @drm_modeset_lock_all(ptr noundef %3) #11
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state1, align 4
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %7 to i32
  %num_mixers = getelementptr inbounds %struct.dpu_crtc_state, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %num_mixers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_mixers, align 8
  %div = udiv i32 %conv, %9
  %base3 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base3, align 8
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 6
  %12 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdisplay, align 2
  %conv6 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, i32 noundef %11, i32 noundef %conv, i32 noundef %conv6) #11
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.25) #11
  %14 = ptrtoint ptr %num_mixers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_mixers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp184.not = icmp eq i32 %15, 0
  br i1 %cmp184.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0185 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_crtc_state, ptr %5, i32 0, i32 7, i32 %i.0185
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %idx = getelementptr inbounds %struct.dpu_hw_mixer, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 4
  %sub = add i32 %19, -1
  %lm_ctl = getelementptr %struct.dpu_crtc_state, ptr %5, i32 0, i32 7, i32 %i.0185, i32 1
  %20 = ptrtoint ptr %lm_ctl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lm_ctl, align 4
  %idx9 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %idx9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx9, align 4
  %sub10 = add i32 %23, -1
  %24 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vdisplay, align 2
  %conv12 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.26, i32 noundef %sub, i32 noundef %sub10, i32 noundef %div, i32 noundef %conv12) #11
  %inc = add nuw i32 %i.0185, 1
  %26 = ptrtoint ptr %num_mixers to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_mixers, align 8
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.25) #11
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 30, i32 18
  %30 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn189 = load ptr, ptr %plane_list, align 4
  %cmp21.not191 = icmp eq ptr %.pn189, %plane_list
  br i1 %cmp21.not191, label %for.end.for.end78_crit_edge, label %for.end.for.body23_crit_edge

for.end.for.body23_crit_edge:                     ; preds = %for.end
  br label %for.body23

for.end.for.end78_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end78

for.body23:                                       ; preds = %for.inc72.for.body23_crit_edge, %for.end.for.body23_crit_edge
  %.pn192 = phi ptr [ %.pn, %for.inc72.for.body23_crit_edge ], [ %.pn189, %for.end.for.body23_crit_edge ]
  %31 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %state1, align 4
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %plane_mask, align 4
  %index.i.i = getelementptr i8, ptr %.pn192, i32 480
  %35 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %36
  %and = and i32 %shl.i, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body23.for.inc72_crit_edge, label %if.else

for.body23.for.inc72_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc72

if.else:                                          ; preds = %for.body23
  %state26 = getelementptr i8, ptr %.pn192, i32 488
  %37 = ptrtoint ptr %state26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %state26, align 4
  %tobool30.not = icmp eq ptr %38, null
  br i1 %tobool30.not, label %if.else.for.inc72_crit_edge, label %if.end

if.else.for.inc72_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc72

if.end:                                           ; preds = %if.else
  %base33 = getelementptr i8, ptr %.pn192, i32 120
  %39 = ptrtoint ptr %base33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base33, align 4
  %stage = getelementptr inbounds %struct.dpu_plane_state, ptr %38, i32 0, i32 2
  %41 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stage, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, i32 noundef %40, i32 noundef %42) #11
  %43 = ptrtoint ptr %state26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %state26, align 4
  %fb36 = getelementptr inbounds %struct.drm_plane_state, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %fb36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fb36, align 4
  %tobool37.not = icmp eq ptr %46, null
  br i1 %tobool37.not, label %if.end.if.end70_crit_edge, label %if.then38

if.end.if.end70_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %base41 = getelementptr inbounds %struct.drm_framebuffer, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %base41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %base41, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %46, i32 0, i32 4
  %49 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %format, align 8
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %46, i32 0, i32 9
  %51 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %46, i32 0, i32 10
  %53 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.28, i32 noundef %48, ptr noundef %50, i32 noundef %52, i32 noundef %54) #11
  %55 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %format, align 8
  %57 = getelementptr inbounds %struct.drm_format_info, ptr %56, i32 0, i32 3
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  %conv50 = zext i8 %59 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef %conv50) #11
  %60 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %format, align 8
  %arrayidx49.1 = getelementptr %struct.drm_format_info, ptr %61, i32 0, i32 3, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx49.1, align 1
  %conv50.1 = zext i8 %63 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef %conv50.1) #11
  %64 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %format, align 8
  %arrayidx49.2 = getelementptr %struct.drm_format_info, ptr %65, i32 0, i32 3, i32 0, i32 2
  %66 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx49.2, align 1
  %conv50.2 = zext i8 %67 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef 2, i32 noundef %conv50.2) #11
  %68 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %format, align 8
  %arrayidx49.3 = getelementptr %struct.drm_format_info, ptr %69, i32 0, i32 3, i32 0, i32 3
  %70 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx49.3, align 1
  %conv50.3 = zext i8 %71 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef 3, i32 noundef %conv50.3) #11
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.30) #11
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %46, i32 0, i32 8
  %72 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %modifier, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.31, i64 noundef %73) #11
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.25) #11
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.32) #11
  %arrayidx58 = getelementptr %struct.drm_framebuffer, ptr %46, i32 0, i32 6, i32 0
  %74 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx58, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef %75) #11
  %arrayidx58.1 = getelementptr %struct.drm_framebuffer, ptr %46, i32 0, i32 6, i32 1
  %76 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx58.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef %77) #11
  %arrayidx58.2 = getelementptr %struct.drm_framebuffer, ptr %46, i32 0, i32 6, i32 2
  %78 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx58.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.33, i32 noundef 2, i32 noundef %79) #11
  %arrayidx58.3 = getelementptr %struct.drm_framebuffer, ptr %46, i32 0, i32 6, i32 3
  %80 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx58.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.33, i32 noundef 3, i32 noundef %81) #11
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.25) #11
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.32) #11
  %arrayidx66 = getelementptr %struct.drm_framebuffer, ptr %46, i32 0, i32 7, i32 0
  %82 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx66, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef %83) #11
  %arrayidx66.1 = getelementptr %struct.drm_framebuffer, ptr %46, i32 0, i32 7, i32 1
  %84 = ptrtoint ptr %arrayidx66.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx66.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef %85) #11
  %arrayidx66.2 = getelementptr %struct.drm_framebuffer, ptr %46, i32 0, i32 7, i32 2
  %86 = ptrtoint ptr %arrayidx66.2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx66.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef 2, i32 noundef %87) #11
  %arrayidx66.3 = getelementptr %struct.drm_framebuffer, ptr %46, i32 0, i32 7, i32 3
  %88 = ptrtoint ptr %arrayidx66.3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx66.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef 3, i32 noundef %89) #11
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.25) #11
  br label %if.end70

if.end70:                                         ; preds = %if.then38, %if.end.if.end70_crit_edge
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %38, i32 0, i32 8
  %90 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %src_x, align 4
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %38, i32 0, i32 9
  %92 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %src_y, align 4
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %38, i32 0, i32 11
  %94 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %src_w, align 4
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %38, i32 0, i32 10
  %96 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %src_h, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97) #11
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %38, i32 0, i32 4
  %98 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %crtc_x, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %38, i32 0, i32 5
  %100 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %crtc_y, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %38, i32 0, i32 6
  %102 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %crtc_w, align 4
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %38, i32 0, i32 7
  %104 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %crtc_h, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.36, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105) #11
  %multirect_mode = getelementptr inbounds %struct.dpu_plane_state, ptr %38, i32 0, i32 5
  %106 = ptrtoint ptr %multirect_mode to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %multirect_mode, align 4
  %multirect_index = getelementptr inbounds %struct.dpu_plane_state, ptr %38, i32 0, i32 4
  %108 = ptrtoint ptr %multirect_index to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %multirect_index, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.37, i32 noundef %107, i32 noundef %109) #11
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.25) #11
  br label %for.inc72

for.inc72:                                        ; preds = %if.end70, %if.else.for.inc72_crit_edge, %for.body23.for.inc72_crit_edge
  %110 = ptrtoint ptr %.pn192 to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pn = load ptr, ptr %.pn192, align 4
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 8
  %plane_list20 = getelementptr inbounds %struct.drm_device, ptr %112, i32 0, i32 30, i32 18
  %cmp21.not = icmp eq ptr %.pn, %plane_list20
  br i1 %cmp21.not, label %for.inc72.for.end78_crit_edge, label %for.inc72.for.body23_crit_edge

for.inc72.for.body23_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body23

for.inc72.for.end78_crit_edge:                    ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end78

for.end78:                                        ; preds = %for.inc72.for.end78_crit_edge, %for.end.for.end78_crit_edge
  %vblank_cb_count = getelementptr inbounds %struct.dpu_crtc, ptr %1, i32 0, i32 4
  %113 = ptrtoint ptr %vblank_cb_count to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %vblank_cb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool79.not = icmp eq i32 %114, 0
  br i1 %tobool79.not, label %for.end78.if.end94_crit_edge, label %if.then80

for.end78.if.end94_crit_edge:                     ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then80:                                        ; preds = %for.end78
  %call81 = tail call i64 @ktime_get() #11
  %vblank_cb_time = getelementptr inbounds %struct.dpu_crtc, ptr %1, i32 0, i32 6
  %115 = ptrtoint ptr %vblank_cb_time to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %vblank_cb_time, align 8
  %sub82 = sub i64 %call81, %116
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub82)
  %cmp8.i.i = icmp slt i64 %sub82, 0
  %117 = tail call i64 @llvm.abs.i64(i64 %sub82, i1 false) #11
  %118 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %117) #17, !srcloc !287
  %119 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %117, i64 %118, i32 0) #17, !srcloc !288
  %asmresult10.i.i.i = extractvalue { i64, i32 } %119, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond213.i.i)
  %tobool84.not = icmp eq i64 %cond213.i.i, 0
  br i1 %tobool84.not, label %if.then80.cond.end_crit_edge, label %cond.true

if.then80.cond.end_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %vblank_cb_count to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %vblank_cb_count, align 4
  %mul = mul i32 %121, 1000
  %conv86 = zext i32 %mul to i64
  %conv87 = trunc i64 %cond213.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #11
  %122 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %remainder.i, align 4, !annotation !260
  %call.i = call i64 @div_s64_rem(i64 noundef %conv86, i32 noundef %conv87, ptr noundef nonnull %remainder.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then80.cond.end_crit_edge
  %cond = phi i64 [ %call.i, %cond.true ], [ 0, %if.then80.cond.end_crit_edge ]
  %123 = ptrtoint ptr %vblank_cb_count to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %vblank_cb_count, align 4
  %play_count = getelementptr inbounds %struct.dpu_crtc, ptr %1, i32 0, i32 5
  %125 = ptrtoint ptr %play_count to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %play_count, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i64 noundef %cond, i32 noundef %124, i64 noundef %cond213.i.i, i64 noundef %126) #11
  %127 = ptrtoint ptr %vblank_cb_count to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %vblank_cb_count, align 4
  %128 = ptrtoint ptr %vblank_cb_time to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 0, ptr %vblank_cb_time, align 8
  br label %if.end94

if.end94:                                         ; preds = %cond.end, %for.end78.if.end94_crit_edge
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %1, align 8
  call void @drm_modeset_unlock_all(ptr noundef %130) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_crtc_debugfs_state_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dpu_crtc_debugfs_state_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_crtc_debugfs_state_show(ptr noundef %s, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dpu_crtc_get_client_type.exit_crit_edge, label %land.rhs.i

entry.dpu_crtc_get_client_type.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_crtc_get_client_type.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state.i, align 4
  %tobool1.i = icmp eq ptr %3, null
  %phi.cast.i = zext i1 %tobool1.i to i32
  br label %dpu_crtc_get_client_type.exit

dpu_crtc_get_client_type.exit:                    ; preds = %land.rhs.i, %entry.dpu_crtc_get_client_type.exit_crit_edge
  %4 = phi i32 [ 1, %entry.dpu_crtc_get_client_type.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, i32 noundef %4) #11
  %mutex.i = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #11
  br i1 %call.i.i.i, label %dpu_crtc_get_client_type.exit.if.end.i_crit_edge, label %do.end.i, !prof !259

dpu_crtc_get_client_type.exit.if.end.i_crit_edge: ; preds = %dpu_crtc_get_client_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %dpu_crtc_get_client_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 505, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %dpu_crtc_get_client_type.exit.if.end.i_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 16
  %state.i13 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %encoder_list.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.dpu_crtc_get_intf_mode.exit_crit_edge, label %for.body.i

for.cond.i.dpu_crtc_get_intf_mode.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_crtc_get_intf_mode.exit

for.body.i:                                       ; preds = %for.cond.i
  %8 = ptrtoint ptr %state.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i13, align 4
  %encoder_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %encoder_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %encoder_mask.i, align 4
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %12 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %13
  %and.i = and i32 %shl.i.i, %11
  %tobool27.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool27.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.else.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %call29.i = tail call i32 @dpu_encoder_get_intf_mode(ptr noundef %encoder.0.le.i) #11
  br label %dpu_crtc_get_intf_mode.exit

dpu_crtc_get_intf_mode.exit:                      ; preds = %if.else.i, %for.cond.i.dpu_crtc_get_intf_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %call29.i, %if.else.i ], [ 0, %for.cond.i.dpu_crtc_get_intf_mode.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i) #11
  %cur_perf = getelementptr inbounds %struct.dpu_crtc, ptr %1, i32 0, i32 19
  %core_clk_rate = getelementptr inbounds %struct.dpu_crtc, ptr %1, i32 0, i32 19, i32 2
  %14 = ptrtoint ptr %core_clk_rate to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %core_clk_rate, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.41, i64 noundef %15) #11
  %bw_ctl = getelementptr inbounds %struct.dpu_crtc, ptr %1, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %bw_ctl to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bw_ctl, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.42, i64 noundef %17) #11
  %18 = ptrtoint ptr %cur_perf to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cur_perf, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.43, i64 noundef %19) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_get_vsync_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_crtc_atomic_check(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %multirect_plane = alloca [24 x %struct.dpu_multirect_plane_states], align 4
  %pipe_staged = alloca [15 x ptr], align 4
  %dst = alloca %struct.drm_rect, align 4
  %clip = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %multirect_plane) #11
  %6 = call ptr @memset(ptr %multirect_plane, i32 255, i32 192)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %pipe_staged) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 768) #14
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enable, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 8
  %14 = zext i8 %9 to i32
  %active8 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %active8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %active8, align 1, !range !289
  %17 = zext i8 %16 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.53, i32 noundef %13, i32 noundef %14, i32 noundef %17) #11
  %new_perf = getelementptr inbounds %struct.dpu_crtc_state, ptr %5, i32 0, i32 5
  %18 = call ptr @memset(ptr %new_perf, i32 0, i32 24)
  br label %cleanup338

if.end:                                           ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.54, ptr noundef %name) #11
  %active_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %active_changed to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %active_changed, align 2
  %20 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %bf.cast.not = icmp eq i8 %20, 0
  br i1 %bf.cast.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set = or i8 %bf.load, 64
  %21 = ptrtoint ptr %active_changed to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %bf.set, ptr %active_changed, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %22 = call ptr @memset(ptr %pipe_staged, i32 0, i32 60)
  %num_mixers = getelementptr inbounds %struct.dpu_crtc_state, ptr %5, i32 0, i32 6
  %23 = ptrtoint ptr %num_mixers to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_mixers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool16.not = icmp eq i32 %24, 0
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %for.body.lr.ph.i

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

for.body.lr.ph.i:                                 ; preds = %if.end14
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hdisplay, align 4
  %conv18 = zext i16 %26 to i32
  %div = udiv i32 %conv18, %24
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 6
  %tobool.not.i = icmp eq ptr %crtc, null
  %base.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cond.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dpu_crtc_state, ptr %5, i32 0, i32 3, i32 %i.021.i
  %mul.i = mul i32 %i.021.i, %div
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul.i, ptr %arrayidx.i, align 4
  %y1.i = getelementptr %struct.dpu_crtc_state, ptr %5, i32 0, i32 3, i32 %i.021.i, i32 1
  %28 = ptrtoint ptr %y1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %y1.i, align 4
  %add.i = add i32 %mul.i, %div
  %x2.i = getelementptr %struct.dpu_crtc_state, ptr %5, i32 0, i32 3, i32 %i.021.i, i32 2
  %29 = ptrtoint ptr %x2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i, ptr %x2.i, align 4
  %30 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vdisplay.i, align 2
  %conv4.i = zext i16 %31 to i32
  %y2.i = getelementptr %struct.dpu_crtc_state, ptr %5, i32 0, i32 3, i32 %i.021.i, i32 3
  %32 = ptrtoint ptr %y2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv4.i, ptr %y2.i, align 4
  br i1 %tobool.not.i, label %for.body.i.cond.end.i_crit_edge, label %cond.true.i

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %34, %cond.true.i ], [ -1, %for.body.i.cond.end.i_crit_edge ]
  tail call fastcc void @trace_dpu_crtc_setup_lm_bounds(i32 noundef %cond.i, i32 noundef %i.021.i, ptr noundef %arrayidx.i) #11
  %inc.i = add nuw i32 %i.021.i, 1
  %35 = ptrtoint ptr %num_mixers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_mixers, align 8
  %cmp.i = icmp ult i32 %inc.i, %36
  br i1 %cmp.i, label %cond.end.i.for.body.i_crit_edge, label %cond.end.i.if.end20_crit_edge

cond.end.i.if.end20_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end20:                                         ; preds = %cond.end.i.if.end20_crit_edge, %if.end14.if.end20_crit_edge
  %mixer_width.0 = phi i32 [ 0, %if.end14.if.end20_crit_edge ], [ %div, %cond.end.i.if.end20_crit_edge ]
  %hdisplay21 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %hdisplay21 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hdisplay21, align 4
  %conv22 = zext i16 %38 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 6
  %39 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vdisplay, align 2
  %conv23 = zext i16 %40 to i32
  %state25 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 20
  %41 = ptrtoint ptr %state25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %state25, align 4
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 30, i32 18
  %45 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn608 = load ptr, ptr %plane_list, align 4
  %cmp.not612 = icmp eq ptr %.pn608, %plane_list
  br i1 %cmp.not612, label %if.end20.for.cond109.preheader_crit_edge, label %for.body.lr.ph

if.end20.for.cond109.preheader_crit_edge:         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond109.preheader

for.body.lr.ph:                                   ; preds = %if.end20
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 4
  %46 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 1
  %47 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 2
  %48 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 3
  %49 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %50 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %51 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  br label %for.body

for.cond109.preheader:                            ; preds = %for.inc.for.cond109.preheader_crit_edge, %if.end20.for.cond109.preheader_crit_edge
  %multirect_count.0.lcssa = phi i32 [ 0, %if.end20.for.cond109.preheader_crit_edge ], [ %multirect_count.3, %for.inc.for.cond109.preheader_crit_edge ]
  %cnt.0.lcssa = phi i32 [ 0, %if.end20.for.cond109.preheader_crit_edge ], [ %cnt.2, %for.inc.for.cond109.preheader_crit_edge ]
  %arrayidx113 = getelementptr inbounds [15 x ptr], ptr %pipe_staged, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx113, align 4
  %tobool114.not = icmp eq ptr %53, null
  br i1 %tobool114.not, label %for.cond109.preheader.for.inc132_crit_edge, label %if.then115

for.cond109.preheader.for.inc132_crit_edge:       ; preds = %for.cond109.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %54 = phi ptr [ %42, %for.body.lr.ph ], [ %105, %for.inc.for.body_crit_edge ]
  %.pn615 = phi ptr [ %.pn608, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %cnt.0614 = phi i32 [ 0, %for.body.lr.ph ], [ %cnt.2, %for.inc.for.body_crit_edge ]
  %multirect_count.0613 = phi i32 [ 0, %for.body.lr.ph ], [ %multirect_count.3, %for.inc.for.body_crit_edge ]
  %plane.0616 = getelementptr i8, ptr %.pn615, i32 -4
  %55 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %plane_mask, align 4
  %index.i.i472 = getelementptr i8, ptr %.pn615, i32 480
  %57 = ptrtoint ptr %index.i.i472 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %index.i.i472, align 4
  %shl.i = shl nuw i32 1, %58
  %and = and i32 %shl.i, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else:                                          ; preds = %for.body
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %54, i32 0, i32 3
  %59 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %planes.i, align 4
  %state1.i = getelementptr %struct.__drm_planes_state, ptr %60, i32 %58, i32 1
  %61 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %state1.i, align 4
  %tobool.not.i474 = icmp eq ptr %62, null
  %state6.i = getelementptr i8, ptr %.pn615, i32 488
  %spec.select.i = select i1 %tobool.not.i474, ptr %state6.i, ptr %state1.i
  %63 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %retval.0.i = load ptr, ptr %spec.select.i, align 4
  %tobool38.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool38.not, label %if.else.for.inc_crit_edge, label %if.else40

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else40:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst) #11
  %64 = call ptr @memset(ptr %dst, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #11
  %65 = ptrtoint ptr %clip to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %clip, align 4
  %66 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %49, align 4
  %67 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv22, ptr %50, align 4
  %68 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv23, ptr %51, align 4
  %cmp.i476 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i476, label %if.then42, label %if.end50

if.then42:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %retval.0.i to i32
  %base47 = getelementptr i8, ptr %.pn615, i32 120
  %70 = ptrtoint ptr %base47 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base47, align 4
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 1105, ptr noundef %name, i32 noundef %71, i32 noundef %69) #15
  br label %cleanup

if.end50:                                         ; preds = %if.else40
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %cnt.0614)
  %cmp51 = icmp sgt i32 %cnt.0614, 47
  br i1 %cmp51, label %if.end50.cleanup.thread_crit_edge, label %if.end54

if.end50.cleanup.thread_crit_edge:                ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end54:                                         ; preds = %if.end50
  %arrayidx = getelementptr %struct.plane_state, ptr %call7.i.i, i32 %cnt.0614
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %retval.0.i, ptr %arrayidx, align 8
  %drm_pstate = getelementptr %struct.plane_state, ptr %call7.i.i, i32 %cnt.0614, i32 1
  %73 = ptrtoint ptr %drm_pstate to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %retval.0.i, ptr %drm_pstate, align 4
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i, i32 0, i32 16
  %74 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %normalized_zpos, align 4
  %stage = getelementptr %struct.plane_state, ptr %call7.i.i, i32 %cnt.0614, i32 2
  %76 = ptrtoint ptr %stage to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %stage, align 8
  %call60 = call i32 @dpu_plane_pipe(ptr noundef %plane.0616) #11
  %pipe_id = getelementptr %struct.plane_state, ptr %call7.i.i, i32 %cnt.0614, i32 3
  %77 = ptrtoint ptr %pipe_id to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call60, ptr %pipe_id, align 4
  %arrayidx64 = getelementptr [15 x ptr], ptr %pipe_staged, i32 0, i32 %call60
  %78 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %79, null
  br i1 %tobool65.not, label %if.end54.if.end79_crit_edge, label %if.then66

if.end54.if.end79_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then66:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx70 = getelementptr [24 x %struct.dpu_multirect_plane_states], ptr %multirect_plane, i32 0, i32 %multirect_count.0613
  %80 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %arrayidx70, align 4
  %r1 = getelementptr [24 x %struct.dpu_multirect_plane_states], ptr %multirect_plane, i32 0, i32 %multirect_count.0613, i32 1
  %81 = ptrtoint ptr %r1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %retval.0.i, ptr %r1, align 4
  %inc = add i32 %multirect_count.0613, 1
  br label %if.end79

if.end79:                                         ; preds = %if.then66, %if.end54.if.end79_crit_edge
  %storemerge = phi ptr [ null, %if.then66 ], [ %retval.0.i, %if.end54.if.end79_crit_edge ]
  %multirect_count.1 = phi i32 [ %inc, %if.then66 ], [ %multirect_count.0613, %if.end54.if.end79_crit_edge ]
  %82 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %storemerge, ptr %arrayidx64, align 4
  %inc80 = add nsw i32 %cnt.0614, 1
  %crtc_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i, i32 0, i32 4
  %83 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %crtc_x.i, align 4, !noalias !290
  %crtc_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i, i32 0, i32 5
  %85 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %crtc_y.i, align 4, !noalias !290
  %crtc_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i, i32 0, i32 6
  %87 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %crtc_w.i, align 4, !noalias !290
  %add.i478 = add i32 %88, %84
  %crtc_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i, i32 0, i32 7
  %89 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %crtc_h.i, align 4, !noalias !290
  %add3.i = add i32 %90, %86
  %91 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %84, ptr %dst, align 4
  %92 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %86, ptr %46, align 4
  %93 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add.i478, ptr %47, align 4
  %94 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add3.i, ptr %48, align 4
  %call82 = call zeroext i1 @drm_rect_intersect(ptr noundef nonnull %clip, ptr noundef nonnull %dst) #11
  br i1 %call82, label %if.end79.cleanup.thread_crit_edge, label %do.end86

if.end79.cleanup.thread_crit_edge:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef 1131) #15
  %95 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %47, align 4
  %97 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dst, align 4
  %sub.i484 = sub i32 %96, %98
  %99 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %48, align 4
  %101 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %46, align 4
  %sub.i487 = sub i32 %100, %102
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.56, i32 noundef 1134, i32 noundef %conv22, i32 noundef %conv23, i32 noundef 0, i32 noundef 0, i32 noundef %sub.i484, i32 noundef %sub.i487, i32 noundef %98, i32 noundef %102) #15
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end79.cleanup.thread_crit_edge, %if.end50.cleanup.thread_crit_edge
  %multirect_count.2.ph = phi i32 [ %multirect_count.1, %if.end79.cleanup.thread_crit_edge ], [ %multirect_count.0613, %if.end50.cleanup.thread_crit_edge ]
  %cnt.1.ph = phi i32 [ %inc80, %if.end79.cleanup.thread_crit_edge ], [ %cnt.0614, %if.end50.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst) #11
  br label %for.inc

cleanup:                                          ; preds = %do.end86, %if.then42
  %rc.1 = phi i32 [ %69, %if.then42 ], [ -7, %do.end86 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst) #11
  br label %cleanup338

for.inc:                                          ; preds = %cleanup.thread, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %multirect_count.3 = phi i32 [ %multirect_count.0613, %if.else.for.inc_crit_edge ], [ %multirect_count.0613, %for.body.for.inc_crit_edge ], [ %multirect_count.2.ph, %cleanup.thread ]
  %cnt.2 = phi i32 [ %cnt.0614, %if.else.for.inc_crit_edge ], [ %cnt.0614, %for.body.for.inc_crit_edge ], [ %cnt.1.ph, %cleanup.thread ]
  %103 = ptrtoint ptr %.pn615 to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pn = load ptr, ptr %.pn615, align 4
  %104 = ptrtoint ptr %state25 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %state25, align 4
  %dev29 = getelementptr inbounds %struct.drm_atomic_state, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev29, align 4
  %plane_list31 = getelementptr inbounds %struct.drm_device, ptr %107, i32 0, i32 30, i32 18
  %cmp.not = icmp eq ptr %.pn, %plane_list31
  br i1 %cmp.not, label %for.inc.for.cond109.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.cond109.preheader_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond109.preheader

if.then115:                                       ; preds = %for.cond109.preheader
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %53) #11
  %108 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %53, align 4
  %call119 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %109) #11
  br i1 %call119, label %if.then115.do.end123_crit_edge, label %if.then115.for.inc132_crit_edge

if.then115.for.inc132_crit_edge:                  ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132

if.then115.do.end123_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

do.end123:                                        ; preds = %if.then115.13.do.end123_crit_edge, %if.then115.12.do.end123_crit_edge, %if.then115.11.do.end123_crit_edge, %if.then115.10.do.end123_crit_edge, %if.then115.9.do.end123_crit_edge, %if.then115.8.do.end123_crit_edge, %if.then115.7.do.end123_crit_edge, %if.then115.6.do.end123_crit_edge, %if.then115.5.do.end123_crit_edge, %if.then115.4.do.end123_crit_edge, %if.then115.3.do.end123_crit_edge, %if.then115.2.do.end123_crit_edge, %if.then115.1.do.end123_crit_edge, %if.then115.do.end123_crit_edge
  %.lcssa657 = phi ptr [ %53, %if.then115.do.end123_crit_edge ], [ %115, %if.then115.1.do.end123_crit_edge ], [ %119, %if.then115.2.do.end123_crit_edge ], [ %123, %if.then115.3.do.end123_crit_edge ], [ %127, %if.then115.4.do.end123_crit_edge ], [ %131, %if.then115.5.do.end123_crit_edge ], [ %135, %if.then115.6.do.end123_crit_edge ], [ %139, %if.then115.7.do.end123_crit_edge ], [ %143, %if.then115.8.do.end123_crit_edge ], [ %147, %if.then115.9.do.end123_crit_edge ], [ %151, %if.then115.10.do.end123_crit_edge ], [ %155, %if.then115.11.do.end123_crit_edge ], [ %159, %if.then115.12.do.end123_crit_edge ], [ %163, %if.then115.13.do.end123_crit_edge ]
  %110 = ptrtoint ptr %.lcssa657 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %.lcssa657, align 4
  %base127 = getelementptr inbounds %struct.drm_plane, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %base127 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %base127, align 4
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.56, i32 noundef 1147, i32 noundef %113) #15
  br label %cleanup338

for.inc132:                                       ; preds = %if.then115.for.inc132_crit_edge, %for.cond109.preheader.for.inc132_crit_edge
  %arrayidx113.1 = getelementptr inbounds [15 x ptr], ptr %pipe_staged, i32 0, i32 2
  %114 = ptrtoint ptr %arrayidx113.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx113.1, align 4
  %tobool114.not.1 = icmp eq ptr %115, null
  br i1 %tobool114.not.1, label %for.inc132.for.inc132.1_crit_edge, label %if.then115.1

for.inc132.for.inc132.1_crit_edge:                ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.1

if.then115.1:                                     ; preds = %for.inc132
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %115) #11
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %call119.1 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %117) #11
  br i1 %call119.1, label %if.then115.1.do.end123_crit_edge, label %if.then115.1.for.inc132.1_crit_edge

if.then115.1.for.inc132.1_crit_edge:              ; preds = %if.then115.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.1

if.then115.1.do.end123_crit_edge:                 ; preds = %if.then115.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

for.inc132.1:                                     ; preds = %if.then115.1.for.inc132.1_crit_edge, %for.inc132.for.inc132.1_crit_edge
  %arrayidx113.2 = getelementptr inbounds [15 x ptr], ptr %pipe_staged, i32 0, i32 3
  %118 = ptrtoint ptr %arrayidx113.2 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx113.2, align 4
  %tobool114.not.2 = icmp eq ptr %119, null
  br i1 %tobool114.not.2, label %for.inc132.1.for.inc132.2_crit_edge, label %if.then115.2

for.inc132.1.for.inc132.2_crit_edge:              ; preds = %for.inc132.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.2

if.then115.2:                                     ; preds = %for.inc132.1
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %119) #11
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %call119.2 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %121) #11
  br i1 %call119.2, label %if.then115.2.do.end123_crit_edge, label %if.then115.2.for.inc132.2_crit_edge

if.then115.2.for.inc132.2_crit_edge:              ; preds = %if.then115.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.2

if.then115.2.do.end123_crit_edge:                 ; preds = %if.then115.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

for.inc132.2:                                     ; preds = %if.then115.2.for.inc132.2_crit_edge, %for.inc132.1.for.inc132.2_crit_edge
  %arrayidx113.3 = getelementptr inbounds [15 x ptr], ptr %pipe_staged, i32 0, i32 4
  %122 = ptrtoint ptr %arrayidx113.3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx113.3, align 4
  %tobool114.not.3 = icmp eq ptr %123, null
  br i1 %tobool114.not.3, label %for.inc132.2.for.inc132.3_crit_edge, label %if.then115.3

for.inc132.2.for.inc132.3_crit_edge:              ; preds = %for.inc132.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.3

if.then115.3:                                     ; preds = %for.inc132.2
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %123) #11
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %call119.3 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %125) #11
  br i1 %call119.3, label %if.then115.3.do.end123_crit_edge, label %if.then115.3.for.inc132.3_crit_edge

if.then115.3.for.inc132.3_crit_edge:              ; preds = %if.then115.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.3

if.then115.3.do.end123_crit_edge:                 ; preds = %if.then115.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

for.inc132.3:                                     ; preds = %if.then115.3.for.inc132.3_crit_edge, %for.inc132.2.for.inc132.3_crit_edge
  %arrayidx113.4 = getelementptr inbounds [15 x ptr], ptr %pipe_staged, i32 0, i32 5
  %126 = ptrtoint ptr %arrayidx113.4 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx113.4, align 4
  %tobool114.not.4 = icmp eq ptr %127, null
  br i1 %tobool114.not.4, label %for.inc132.3.for.inc132.4_crit_edge, label %if.then115.4

for.inc132.3.for.inc132.4_crit_edge:              ; preds = %for.inc132.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.4

if.then115.4:                                     ; preds = %for.inc132.3
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %127) #11
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %call119.4 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %129) #11
  br i1 %call119.4, label %if.then115.4.do.end123_crit_edge, label %if.then115.4.for.inc132.4_crit_edge

if.then115.4.for.inc132.4_crit_edge:              ; preds = %if.then115.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.4

if.then115.4.do.end123_crit_edge:                 ; preds = %if.then115.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

for.inc132.4:                                     ; preds = %if.then115.4.for.inc132.4_crit_edge, %for.inc132.3.for.inc132.4_crit_edge
  %arrayidx113.5 = getelementptr inbounds [15 x ptr], ptr %pipe_staged, i32 0, i32 6
  %130 = ptrtoint ptr %arrayidx113.5 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx113.5, align 4
  %tobool114.not.5 = icmp eq ptr %131, null
  br i1 %tobool114.not.5, label %for.inc132.4.for.inc132.5_crit_edge, label %if.then115.5

for.inc132.4.for.inc132.5_crit_edge:              ; preds = %for.inc132.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.5

if.then115.5:                                     ; preds = %for.inc132.4
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %131) #11
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %call119.5 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %133) #11
  br i1 %call119.5, label %if.then115.5.do.end123_crit_edge, label %if.then115.5.for.inc132.5_crit_edge

if.then115.5.for.inc132.5_crit_edge:              ; preds = %if.then115.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.5

if.then115.5.do.end123_crit_edge:                 ; preds = %if.then115.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

for.inc132.5:                                     ; preds = %if.then115.5.for.inc132.5_crit_edge, %for.inc132.4.for.inc132.5_crit_edge
  %arrayidx113.6 = getelementptr inbounds [15 x ptr], ptr %pipe_staged, i32 0, i32 7
  %134 = ptrtoint ptr %arrayidx113.6 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx113.6, align 4
  %tobool114.not.6 = icmp eq ptr %135, null
  br i1 %tobool114.not.6, label %for.inc132.5.for.inc132.6_crit_edge, label %if.then115.6

for.inc132.5.for.inc132.6_crit_edge:              ; preds = %for.inc132.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.6

if.then115.6:                                     ; preds = %for.inc132.5
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %135) #11
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %call119.6 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %137) #11
  br i1 %call119.6, label %if.then115.6.do.end123_crit_edge, label %if.then115.6.for.inc132.6_crit_edge

if.then115.6.for.inc132.6_crit_edge:              ; preds = %if.then115.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.6

if.then115.6.do.end123_crit_edge:                 ; preds = %if.then115.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

for.inc132.6:                                     ; preds = %if.then115.6.for.inc132.6_crit_edge, %for.inc132.5.for.inc132.6_crit_edge
  %arrayidx113.7 = getelementptr inbounds [15 x ptr], ptr %pipe_staged, i32 0, i32 8
  %138 = ptrtoint ptr %arrayidx113.7 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx113.7, align 4
  %tobool114.not.7 = icmp eq ptr %139, null
  br i1 %tobool114.not.7, label %for.inc132.6.for.inc132.7_crit_edge, label %if.then115.7

for.inc132.6.for.inc132.7_crit_edge:              ; preds = %for.inc132.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.7

if.then115.7:                                     ; preds = %for.inc132.6
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %139) #11
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %call119.7 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %141) #11
  br i1 %call119.7, label %if.then115.7.do.end123_crit_edge, label %if.then115.7.for.inc132.7_crit_edge

if.then115.7.for.inc132.7_crit_edge:              ; preds = %if.then115.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.7

if.then115.7.do.end123_crit_edge:                 ; preds = %if.then115.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

for.inc132.7:                                     ; preds = %if.then115.7.for.inc132.7_crit_edge, %for.inc132.6.for.inc132.7_crit_edge
  %arrayidx113.8 = getelementptr inbounds [15 x ptr], ptr %pipe_staged, i32 0, i32 9
  %142 = ptrtoint ptr %arrayidx113.8 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx113.8, align 4
  %tobool114.not.8 = icmp eq ptr %143, null
  br i1 %tobool114.not.8, label %for.inc132.7.for.inc132.8_crit_edge, label %if.then115.8

for.inc132.7.for.inc132.8_crit_edge:              ; preds = %for.inc132.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.8

if.then115.8:                                     ; preds = %for.inc132.7
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %143) #11
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %call119.8 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %145) #11
  br i1 %call119.8, label %if.then115.8.do.end123_crit_edge, label %if.then115.8.for.inc132.8_crit_edge

if.then115.8.for.inc132.8_crit_edge:              ; preds = %if.then115.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.8

if.then115.8.do.end123_crit_edge:                 ; preds = %if.then115.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

for.inc132.8:                                     ; preds = %if.then115.8.for.inc132.8_crit_edge, %for.inc132.7.for.inc132.8_crit_edge
  %arrayidx113.9 = getelementptr inbounds [15 x ptr], ptr %pipe_staged, i32 0, i32 10
  %146 = ptrtoint ptr %arrayidx113.9 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx113.9, align 4
  %tobool114.not.9 = icmp eq ptr %147, null
  br i1 %tobool114.not.9, label %for.inc132.8.for.inc132.9_crit_edge, label %if.then115.9

for.inc132.8.for.inc132.9_crit_edge:              ; preds = %for.inc132.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.9

if.then115.9:                                     ; preds = %for.inc132.8
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %147) #11
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %call119.9 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %149) #11
  br i1 %call119.9, label %if.then115.9.do.end123_crit_edge, label %if.then115.9.for.inc132.9_crit_edge

if.then115.9.for.inc132.9_crit_edge:              ; preds = %if.then115.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.9

if.then115.9.do.end123_crit_edge:                 ; preds = %if.then115.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

for.inc132.9:                                     ; preds = %if.then115.9.for.inc132.9_crit_edge, %for.inc132.8.for.inc132.9_crit_edge
  %arrayidx113.10 = getelementptr inbounds [15 x ptr], ptr %pipe_staged, i32 0, i32 11
  %150 = ptrtoint ptr %arrayidx113.10 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx113.10, align 4
  %tobool114.not.10 = icmp eq ptr %151, null
  br i1 %tobool114.not.10, label %for.inc132.9.for.inc132.10_crit_edge, label %if.then115.10

for.inc132.9.for.inc132.10_crit_edge:             ; preds = %for.inc132.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.10

if.then115.10:                                    ; preds = %for.inc132.9
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %151) #11
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %call119.10 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %153) #11
  br i1 %call119.10, label %if.then115.10.do.end123_crit_edge, label %if.then115.10.for.inc132.10_crit_edge

if.then115.10.for.inc132.10_crit_edge:            ; preds = %if.then115.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.10

if.then115.10.do.end123_crit_edge:                ; preds = %if.then115.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

for.inc132.10:                                    ; preds = %if.then115.10.for.inc132.10_crit_edge, %for.inc132.9.for.inc132.10_crit_edge
  %arrayidx113.11 = getelementptr inbounds [15 x ptr], ptr %pipe_staged, i32 0, i32 12
  %154 = ptrtoint ptr %arrayidx113.11 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx113.11, align 4
  %tobool114.not.11 = icmp eq ptr %155, null
  br i1 %tobool114.not.11, label %for.inc132.10.for.inc132.11_crit_edge, label %if.then115.11

for.inc132.10.for.inc132.11_crit_edge:            ; preds = %for.inc132.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.11

if.then115.11:                                    ; preds = %for.inc132.10
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %155) #11
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %call119.11 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %157) #11
  br i1 %call119.11, label %if.then115.11.do.end123_crit_edge, label %if.then115.11.for.inc132.11_crit_edge

if.then115.11.for.inc132.11_crit_edge:            ; preds = %if.then115.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.11

if.then115.11.do.end123_crit_edge:                ; preds = %if.then115.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

for.inc132.11:                                    ; preds = %if.then115.11.for.inc132.11_crit_edge, %for.inc132.10.for.inc132.11_crit_edge
  %arrayidx113.12 = getelementptr inbounds [15 x ptr], ptr %pipe_staged, i32 0, i32 13
  %158 = ptrtoint ptr %arrayidx113.12 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx113.12, align 4
  %tobool114.not.12 = icmp eq ptr %159, null
  br i1 %tobool114.not.12, label %for.inc132.11.for.inc132.12_crit_edge, label %if.then115.12

for.inc132.11.for.inc132.12_crit_edge:            ; preds = %for.inc132.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.12

if.then115.12:                                    ; preds = %for.inc132.11
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %159) #11
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %call119.12 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %161) #11
  br i1 %call119.12, label %if.then115.12.do.end123_crit_edge, label %if.then115.12.for.inc132.12_crit_edge

if.then115.12.for.inc132.12_crit_edge:            ; preds = %if.then115.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.12

if.then115.12.do.end123_crit_edge:                ; preds = %if.then115.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

for.inc132.12:                                    ; preds = %if.then115.12.for.inc132.12_crit_edge, %for.inc132.11.for.inc132.12_crit_edge
  %arrayidx113.13 = getelementptr inbounds [15 x ptr], ptr %pipe_staged, i32 0, i32 14
  %162 = ptrtoint ptr %arrayidx113.13 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx113.13, align 4
  %tobool114.not.13 = icmp eq ptr %163, null
  br i1 %tobool114.not.13, label %for.inc132.12.for.inc132.13_crit_edge, label %if.then115.13

for.inc132.12.for.inc132.13_crit_edge:            ; preds = %for.inc132.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.13

if.then115.13:                                    ; preds = %for.inc132.12
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %163) #11
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %call119.13 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %165) #11
  br i1 %call119.13, label %if.then115.13.do.end123_crit_edge, label %if.then115.13.for.inc132.13_crit_edge

if.then115.13.for.inc132.13_crit_edge:            ; preds = %if.then115.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc132.13

if.then115.13.do.end123_crit_edge:                ; preds = %if.then115.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

for.inc132.13:                                    ; preds = %if.then115.13.for.inc132.13_crit_edge, %for.inc132.12.for.inc132.13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.lcssa)
  %cmp136619 = icmp sgt i32 %cnt.0.lcssa, 0
  br i1 %cmp136619, label %for.inc132.13.for.body138_crit_edge, label %for.inc132.13.for.cond192.preheader_crit_edge

for.inc132.13.for.cond192.preheader_crit_edge:    ; preds = %for.inc132.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond192.preheader

for.inc132.13.for.body138_crit_edge:              ; preds = %for.inc132.13
  br label %for.body138

for.cond192.preheader:                            ; preds = %if.end183.for.cond192.preheader_crit_edge, %for.inc132.13.for.cond192.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %multirect_count.0.lcssa)
  %cmp193624 = icmp sgt i32 %multirect_count.0.lcssa, 0
  br i1 %cmp193624, label %for.cond192.preheader.for.body195_crit_edge, label %for.cond192.preheader.for.end218_crit_edge

for.cond192.preheader.for.end218_crit_edge:       ; preds = %for.cond192.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end218

for.cond192.preheader.for.body195_crit_edge:      ; preds = %for.cond192.preheader
  br label %for.body195

for.body138:                                      ; preds = %if.end183.for.body138_crit_edge, %for.inc132.13.for.body138_crit_edge
  %i.1623 = phi i32 [ %inc190, %if.end183.for.body138_crit_edge ], [ 0, %for.inc132.13.for.body138_crit_edge ]
  %z_pos.0622 = phi i32 [ %167, %if.end183.for.body138_crit_edge ], [ -1, %for.inc132.13.for.body138_crit_edge ]
  %left_zpos_cnt.0621 = phi i32 [ %left_zpos_cnt.2, %if.end183.for.body138_crit_edge ], [ 0, %for.inc132.13.for.body138_crit_edge ]
  %right_zpos_cnt.0620 = phi i32 [ %right_zpos_cnt.2, %if.end183.for.body138_crit_edge ], [ 0, %for.inc132.13.for.body138_crit_edge ]
  %arrayidx139 = getelementptr %struct.plane_state, ptr %call7.i.i, i32 %i.1623
  %stage140 = getelementptr %struct.plane_state, ptr %call7.i.i, i32 %i.1623, i32 2
  %166 = ptrtoint ptr %stage140 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %stage140, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %z_pos.0622)
  %cmp141.not = icmp eq i32 %167, %z_pos.0622
  %right_zpos_cnt.1 = select i1 %cmp141.not, i32 %right_zpos_cnt.0620, i32 0
  %left_zpos_cnt.1 = select i1 %cmp141.not, i32 %left_zpos_cnt.0621, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %167)
  %cmp147 = icmp sgt i32 %167, 10
  br i1 %cmp147, label %do.end152, label %if.else155

do.end152:                                        ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #13
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.56, i32 noundef 1166, i32 noundef 11) #15
  br label %cleanup338

if.else155:                                       ; preds = %for.body138
  %drm_pstate157 = getelementptr %struct.plane_state, ptr %call7.i.i, i32 %i.1623, i32 1
  %168 = ptrtoint ptr %drm_pstate157 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %drm_pstate157, align 4
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %crtc_x, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %mixer_width.0)
  %cmp158 = icmp slt i32 %171, %mixer_width.0
  br i1 %cmp158, label %if.then160, label %if.else171

if.then160:                                       ; preds = %if.else155
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %left_zpos_cnt.1)
  %cmp161 = icmp eq i32 %left_zpos_cnt.1, 2
  br i1 %cmp161, label %do.end166, label %if.end169

do.end166:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #13
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.56, i32 noundef 1172, i32 noundef %167) #15
  br label %cleanup338

if.end169:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #13
  %inc170 = add i32 %left_zpos_cnt.1, 1
  br label %if.end183

if.else171:                                       ; preds = %if.else155
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %right_zpos_cnt.1)
  %cmp172 = icmp eq i32 %right_zpos_cnt.1, 2
  br i1 %cmp172, label %do.end177, label %if.end180

do.end177:                                        ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #13
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.56, i32 noundef 1181, i32 noundef %167) #15
  br label %cleanup338

if.end180:                                        ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #13
  %inc181 = add i32 %right_zpos_cnt.1, 1
  br label %if.end183

if.end183:                                        ; preds = %if.end180, %if.end169
  %right_zpos_cnt.2 = phi i32 [ %right_zpos_cnt.1, %if.end169 ], [ %inc181, %if.end180 ]
  %left_zpos_cnt.2 = phi i32 [ %inc170, %if.end169 ], [ %left_zpos_cnt.1, %if.end180 ]
  %add = add nsw i32 %167, 1
  %172 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx139, align 8
  %stage186 = getelementptr inbounds %struct.dpu_plane_state, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %stage186 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %add, ptr %stage186, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.75, ptr noundef %name, i32 noundef %167) #11
  %inc190 = add nuw nsw i32 %i.1623, 1
  %exitcond.not = icmp eq i32 %inc190, %cnt.0.lcssa
  br i1 %exitcond.not, label %if.end183.for.cond192.preheader_crit_edge, label %if.end183.for.body138_crit_edge

if.end183.for.body138_crit_edge:                  ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body138

if.end183.for.cond192.preheader_crit_edge:        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond192.preheader

for.body195:                                      ; preds = %for.inc216.for.body195_crit_edge, %for.cond192.preheader.for.body195_crit_edge
  %i.2625 = phi i32 [ %inc217, %for.inc216.for.body195_crit_edge ], [ 0, %for.cond192.preheader.for.body195_crit_edge ]
  %arrayidx196 = getelementptr [24 x %struct.dpu_multirect_plane_states], ptr %multirect_plane, i32 0, i32 %i.2625
  %call197 = call i32 @dpu_plane_validate_multirect_v2(ptr noundef %arrayidx196) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %for.inc216, label %do.end202

do.end202:                                        ; preds = %for.body195
  call void @__sanitizer_cov_trace_pc() #13
  %175 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx196, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %base207 = getelementptr inbounds %struct.drm_plane, ptr %178, i32 0, i32 4
  %179 = ptrtoint ptr %base207 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %base207, align 4
  %r1210 = getelementptr [24 x %struct.dpu_multirect_plane_states], ptr %multirect_plane, i32 0, i32 %i.2625, i32 1
  %181 = ptrtoint ptr %r1210 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %r1210, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 4
  %base212 = getelementptr inbounds %struct.drm_plane, ptr %184, i32 0, i32 4
  %185 = ptrtoint ptr %base212 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %base212, align 4
  %call214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.56, i32 noundef 1197, i32 noundef %180, i32 noundef %186) #15
  br label %cleanup338

for.inc216:                                       ; preds = %for.body195
  %inc217 = add nuw nsw i32 %i.2625, 1
  %exitcond662.not = icmp eq i32 %inc217, %multirect_count.0.lcssa
  br i1 %exitcond662.not, label %for.inc216.for.end218_crit_edge, label %for.inc216.for.body195_crit_edge

for.inc216.for.body195_crit_edge:                 ; preds = %for.inc216
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body195

for.inc216.for.end218_crit_edge:                  ; preds = %for.inc216
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end218

for.end218:                                       ; preds = %for.inc216.for.end218_crit_edge, %for.cond192.preheader.for.end218_crit_edge
  %187 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %188, i32 0, i32 5
  %189 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %kms.i, align 4
  %bandwidth_ref = getelementptr inbounds %struct.dpu_kms, ptr %192, i32 0, i32 22
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bandwidth_ref, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %bandwidth_ref, i32 1, i32 3, i32 1) #11
  %193 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bandwidth_ref, ptr %bandwidth_ref, i32 1, ptr elementtype(i32) %bandwidth_ref) #11, !srcloc !293
  %call220 = call i32 @dpu_core_perf_crtc_check(ptr noundef %crtc, ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %for.cond231.preheader, label %do.end225

for.cond231.preheader:                            ; preds = %for.end218
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt.0.lcssa)
  %cmp232626 = icmp sgt i32 %cnt.0.lcssa, 1
  br i1 %cmp232626, label %for.cond231.preheader.for.body234_crit_edge, label %for.cond231.preheader.cleanup338_crit_edge

for.cond231.preheader.cleanup338_crit_edge:       ; preds = %for.cond231.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup338

for.cond231.preheader.for.body234_crit_edge:      ; preds = %for.cond231.preheader
  br label %for.body234

do.end225:                                        ; preds = %for.end218
  call void @__sanitizer_cov_trace_pc() #13
  %base227 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %194 = ptrtoint ptr %base227 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %base227, align 8
  %call229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.56, i32 noundef 1208, i32 noundef %195, i32 noundef %call220) #15
  br label %cleanup338

for.body234:                                      ; preds = %for.inc335.for.body234_crit_edge, %for.cond231.preheader.for.body234_crit_edge
  %i.3627 = phi i32 [ %inc336, %for.inc335.for.body234_crit_edge ], [ 1, %for.cond231.preheader.for.body234_crit_edge ]
  %sub = add nsw i32 %i.3627, -1
  %stage238 = getelementptr %struct.plane_state, ptr %call7.i.i, i32 %sub, i32 2
  %196 = ptrtoint ptr %stage238 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %stage238, align 8
  %stage239 = getelementptr %struct.plane_state, ptr %call7.i.i, i32 %i.3627, i32 2
  %198 = ptrtoint ptr %stage239 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %stage239, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %199)
  %cmp240.not = icmp eq i32 %197, %199
  br i1 %cmp240.not, label %if.end243, label %for.body234.for.inc335_crit_edge

for.body234.for.inc335_crit_edge:                 ; preds = %for.body234
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc335

if.end243:                                        ; preds = %for.body234
  %arrayidx237 = getelementptr %struct.plane_state, ptr %call7.i.i, i32 %i.3627
  %arrayidx236 = getelementptr %struct.plane_state, ptr %call7.i.i, i32 %sub
  %200 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx236, align 8
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 8
  %base248 = getelementptr inbounds %struct.drm_plane, ptr %203, i32 0, i32 4
  %204 = ptrtoint ptr %base248 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %base248, align 4
  %drm_pstate251 = getelementptr %struct.plane_state, ptr %call7.i.i, i32 %sub, i32 1
  %206 = ptrtoint ptr %drm_pstate251 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %drm_pstate251, align 4
  %crtc_x.i488 = getelementptr inbounds %struct.drm_plane_state, ptr %207, i32 0, i32 4
  %208 = ptrtoint ptr %crtc_x.i488 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %crtc_x.i488, align 4, !noalias !294
  %crtc_y.i489 = getelementptr inbounds %struct.drm_plane_state, ptr %207, i32 0, i32 5
  %210 = ptrtoint ptr %crtc_y.i489 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %crtc_y.i489, align 4, !noalias !294
  %crtc_w.i490 = getelementptr inbounds %struct.drm_plane_state, ptr %207, i32 0, i32 6
  %212 = ptrtoint ptr %crtc_w.i490 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %crtc_w.i490, align 4, !noalias !294
  %add.i491 = add i32 %213, %209
  %crtc_h.i492 = getelementptr inbounds %struct.drm_plane_state, ptr %207, i32 0, i32 7
  %214 = ptrtoint ptr %crtc_h.i492 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %crtc_h.i492, align 4, !noalias !294
  %add3.i493 = add i32 %215, %211
  %216 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx237, align 8
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %217, align 8
  %base255 = getelementptr inbounds %struct.drm_plane, ptr %219, i32 0, i32 4
  %220 = ptrtoint ptr %base255 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %base255, align 4
  %drm_pstate258 = getelementptr %struct.plane_state, ptr %call7.i.i, i32 %i.3627, i32 1
  %222 = ptrtoint ptr %drm_pstate258 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %drm_pstate258, align 4
  %crtc_x.i494 = getelementptr inbounds %struct.drm_plane_state, ptr %223, i32 0, i32 4
  %224 = ptrtoint ptr %crtc_x.i494 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %crtc_x.i494, align 4, !noalias !297
  %crtc_y.i495 = getelementptr inbounds %struct.drm_plane_state, ptr %223, i32 0, i32 5
  %226 = ptrtoint ptr %crtc_y.i495 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %crtc_y.i495, align 4, !noalias !297
  %crtc_w.i496 = getelementptr inbounds %struct.drm_plane_state, ptr %223, i32 0, i32 6
  %228 = ptrtoint ptr %crtc_w.i496 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %crtc_w.i496, align 4, !noalias !297
  %add.i497 = add i32 %229, %225
  %crtc_h.i498 = getelementptr inbounds %struct.drm_plane_state, ptr %223, i32 0, i32 7
  %230 = ptrtoint ptr %crtc_h.i498 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %crtc_h.i498, align 4, !noalias !297
  %add3.i499 = add i32 %231, %227
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %209)
  %cmp261 = icmp slt i32 %225, %209
  br i1 %cmp261, label %do.body264, label %if.end243.if.end271_crit_edge

if.end243.if.end271_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end271

do.body264:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end271

if.end271:                                        ; preds = %do.body264, %if.end243.if.end271_crit_edge
  %right_rect.sroa.12.0 = phi i32 [ %211, %do.body264 ], [ %227, %if.end243.if.end271_crit_edge ]
  %right_rect.sroa.0.0 = phi i32 [ %209, %do.body264 ], [ %225, %if.end243.if.end271_crit_edge ]
  %right_rect.sroa.21.0 = phi i32 [ %add.i491, %do.body264 ], [ %add.i497, %if.end243.if.end271_crit_edge ]
  %right_rect.sroa.26.0 = phi i32 [ %add3.i493, %do.body264 ], [ %add3.i499, %if.end243.if.end271_crit_edge ]
  %left_rect.sroa.0.0 = phi i32 [ %225, %do.body264 ], [ %209, %if.end243.if.end271_crit_edge ]
  %left_rect.sroa.11.0 = phi i32 [ %227, %do.body264 ], [ %211, %if.end243.if.end271_crit_edge ]
  %left_rect.sroa.21.0 = phi i32 [ %add.i497, %do.body264 ], [ %add.i491, %if.end243.if.end271_crit_edge ]
  %left_rect.sroa.28.0 = phi i32 [ %add3.i499, %do.body264 ], [ %add3.i493, %if.end243.if.end271_crit_edge ]
  %left_pid.0 = phi i32 [ %221, %do.body264 ], [ %205, %if.end243.if.end271_crit_edge ]
  %right_pid.0 = phi i32 [ %205, %do.body264 ], [ %221, %if.end243.if.end271_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %right_pid.0, i32 %left_pid.0)
  %cmp272 = icmp slt i32 %right_pid.0, %left_pid.0
  br i1 %cmp272, label %do.end277, label %if.else280

do.end277:                                        ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  %call279 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.56, i32 noundef 1251, i32 noundef %197, i32 noundef %left_pid.0, i32 noundef %right_pid.0) #15
  br label %cleanup338

if.else280:                                       ; preds = %if.end271
  %sub.i501 = sub i32 %left_rect.sroa.21.0, %left_rect.sroa.0.0
  call void @__sanitizer_cov_trace_cmp4(i32 %right_rect.sroa.0.0, i32 %sub.i501)
  %cmp283.not = icmp eq i32 %right_rect.sroa.0.0, %sub.i501
  br i1 %cmp283.not, label %if.else299, label %do.end288

do.end288:                                        ; preds = %if.else280
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i506 = sub i32 %left_rect.sroa.28.0, %left_rect.sroa.11.0
  %sub.i508 = sub i32 %right_rect.sroa.21.0, %right_rect.sroa.0.0
  %sub.i511 = sub i32 %right_rect.sroa.26.0, %right_rect.sroa.12.0
  %call298 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.56, i32 noundef 1259, i32 noundef %197, i32 noundef %sub.i501, i32 noundef %sub.i506, i32 noundef %left_rect.sroa.0.0, i32 noundef %left_rect.sroa.11.0, i32 noundef %sub.i508, i32 noundef %sub.i511, i32 noundef %right_rect.sroa.0.0, i32 noundef %right_rect.sroa.12.0) #15
  br label %cleanup338

if.else299:                                       ; preds = %if.else280
  call void @__sanitizer_cov_trace_cmp4(i32 %left_rect.sroa.11.0, i32 %right_rect.sroa.12.0)
  %cmp302.not = icmp eq i32 %left_rect.sroa.11.0, %right_rect.sroa.12.0
  br i1 %cmp302.not, label %lor.lhs.false304, label %if.else299.do.end312_crit_edge

if.else299.do.end312_crit_edge:                   ; preds = %if.else299
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end312

lor.lhs.false304:                                 ; preds = %if.else299
  call void @__sanitizer_cov_trace_cmp4(i32 %left_rect.sroa.28.0, i32 %right_rect.sroa.26.0)
  %cmp307.not = icmp eq i32 %left_rect.sroa.28.0, %right_rect.sroa.26.0
  br i1 %cmp307.not, label %lor.lhs.false304.for.inc335_crit_edge, label %lor.lhs.false304.do.end312_crit_edge

lor.lhs.false304.do.end312_crit_edge:             ; preds = %lor.lhs.false304
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end312

lor.lhs.false304.for.inc335_crit_edge:            ; preds = %lor.lhs.false304
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc335

do.end312:                                        ; preds = %lor.lhs.false304.do.end312_crit_edge, %if.else299.do.end312_crit_edge
  %left_rect.sroa.11.0.lcssa636 = phi i32 [ %left_rect.sroa.11.0, %if.else299.do.end312_crit_edge ], [ %right_rect.sroa.12.0, %lor.lhs.false304.do.end312_crit_edge ]
  %sub.i522.pre-phi = sub i32 %left_rect.sroa.28.0, %left_rect.sroa.11.0.lcssa636
  %sub.i527.pre-phi = sub i32 %right_rect.sroa.26.0, %right_rect.sroa.12.0
  %sub.i524 = sub i32 %right_rect.sroa.21.0, %right_rect.sroa.0.0
  %call322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.56, i32 noundef 1268, i32 noundef %197, i32 noundef %right_rect.sroa.0.0, i32 noundef %sub.i522.pre-phi, i32 noundef %left_rect.sroa.0.0, i32 noundef %left_rect.sroa.11.0.lcssa636, i32 noundef %sub.i524, i32 noundef %sub.i527.pre-phi, i32 noundef %right_rect.sroa.0.0, i32 noundef %right_rect.sroa.12.0) #15
  br label %cleanup338

for.inc335:                                       ; preds = %lor.lhs.false304.for.inc335_crit_edge, %for.body234.for.inc335_crit_edge
  %inc336 = add nuw nsw i32 %i.3627, 1
  %exitcond663.not = icmp eq i32 %inc336, %cnt.0.lcssa
  br i1 %exitcond663.not, label %for.inc335.cleanup338_crit_edge, label %for.inc335.for.body234_crit_edge

for.inc335.for.body234_crit_edge:                 ; preds = %for.inc335
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body234

for.inc335.cleanup338_crit_edge:                  ; preds = %for.inc335
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup338

cleanup338:                                       ; preds = %for.inc335.cleanup338_crit_edge, %do.end312, %do.end288, %do.end277, %do.end225, %for.cond231.preheader.cleanup338_crit_edge, %do.end202, %do.end177, %do.end166, %do.end152, %do.end123, %cleanup, %if.then
  %rc.5 = phi i32 [ %rc.1, %cleanup ], [ -22, %do.end123 ], [ -22, %do.end152 ], [ -22, %do.end166 ], [ -22, %do.end177 ], [ -22, %do.end202 ], [ %call220, %do.end225 ], [ 0, %if.then ], [ -22, %do.end277 ], [ -22, %do.end288 ], [ -22, %do.end312 ], [ 0, %for.cond231.preheader.cleanup338_crit_edge ], [ 0, %for.inc335.cleanup338_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %pipe_staged) #11
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %multirect_plane) #11
  ret i32 %rc.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_crtc_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %cfg.i = alloca %struct.dpu_hw_pcc_cfg, align 4
  %cfg.i.i.i = alloca %struct.dpu_hw_mixer_cfg, align 4
  %flush_mask.i.i = alloca i32, align 4
  %zpos_cnt.i.i = alloca [13 x i32], align 4
  %fetch_active.i.i = alloca [1 x i32], align 4
  %stage_cfg.i = alloca %struct.dpu_hw_stage_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 8
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.91, i32 noundef %5, i32 noundef 0) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %5) #11
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay.i, align 4
  %conv.i = zext i16 %9 to i32
  %num_mixers.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %num_mixers.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_mixers.i, align 8
  %div.i = udiv i32 %conv.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20.not.i = icmp eq i32 %11, 0
  br i1 %cmp20.not.i, label %if.end._dpu_crtc_setup_lm_bounds.exit_crit_edge, label %for.body.lr.ph.i

if.end._dpu_crtc_setup_lm_bounds.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_crtc_setup_lm_bounds.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 6
  %tobool.not.i = icmp eq ptr %crtc, null
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cond.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dpu_crtc_state, ptr %7, i32 0, i32 3, i32 %i.021.i
  %mul.i = mul i32 %i.021.i, %div.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul.i, ptr %arrayidx.i, align 4
  %y1.i = getelementptr %struct.dpu_crtc_state, ptr %7, i32 0, i32 3, i32 %i.021.i, i32 1
  %13 = ptrtoint ptr %y1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %y1.i, align 4
  %add.i = add i32 %mul.i, %div.i
  %x2.i = getelementptr %struct.dpu_crtc_state, ptr %7, i32 0, i32 3, i32 %i.021.i, i32 2
  %14 = ptrtoint ptr %x2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %x2.i, align 4
  %15 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vdisplay.i, align 2
  %conv4.i = zext i16 %16 to i32
  %y2.i = getelementptr %struct.dpu_crtc_state, ptr %7, i32 0, i32 3, i32 %i.021.i, i32 3
  %17 = ptrtoint ptr %y2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv4.i, ptr %y2.i, align 4
  br i1 %tobool.not.i, label %for.body.i.cond.end.i_crit_edge, label %cond.true.i

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %19, %cond.true.i ], [ -1, %for.body.i.cond.end.i_crit_edge ]
  tail call fastcc void @trace_dpu_crtc_setup_lm_bounds(i32 noundef %cond.i, i32 noundef %i.021.i, ptr noundef %arrayidx.i) #11
  %inc.i = add nuw i32 %i.021.i, 1
  %20 = ptrtoint ptr %num_mixers.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_mixers.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %cond.end.i.for.body.i_crit_edge, label %cond.end.i._dpu_crtc_setup_lm_bounds.exit_crit_edge

cond.end.i._dpu_crtc_setup_lm_bounds.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_crtc_setup_lm_bounds.exit

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

_dpu_crtc_setup_lm_bounds.exit:                   ; preds = %cond.end.i._dpu_crtc_setup_lm_bounds.exit_crit_edge, %if.end._dpu_crtc_setup_lm_bounds.exit_crit_edge
  %22 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crtc, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 30, i32 16
  %24 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn71 = load ptr, ptr %encoder_list, align 4
  %cmp.not74 = icmp eq ptr %.pn71, %encoder_list
  br i1 %cmp.not74, label %_dpu_crtc_setup_lm_bounds.exit.for.end_crit_edge, label %_dpu_crtc_setup_lm_bounds.exit.for.body_crit_edge

_dpu_crtc_setup_lm_bounds.exit.for.body_crit_edge: ; preds = %_dpu_crtc_setup_lm_bounds.exit
  br label %for.body

_dpu_crtc_setup_lm_bounds.exit.for.end_crit_edge: ; preds = %_dpu_crtc_setup_lm_bounds.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %_dpu_crtc_setup_lm_bounds.exit.for.body_crit_edge
  %.pn75 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn71, %_dpu_crtc_setup_lm_bounds.exit.for.body_crit_edge ]
  %25 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state1, align 4
  %encoder_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %encoder_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %encoder_mask, align 4
  %index.i.i = getelementptr i8, ptr %.pn75, i32 36
  %29 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %30
  %and = and i32 %shl.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %encoder.076 = getelementptr i8, ptr %.pn75, i32 -4
  tail call void @dpu_encoder_trigger_kickoff_pending(ptr noundef %encoder.076) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %31 = ptrtoint ptr %.pn75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn75, align 4
  %32 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crtc, align 8
  %encoder_list14 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 30, i32 16
  %cmp.not = icmp eq ptr %.pn, %encoder_list14
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %_dpu_crtc_setup_lm_bounds.exit.for.end_crit_edge
  %num_mixers = getelementptr inbounds %struct.dpu_crtc_state, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %num_mixers to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_mixers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool25.not = icmp eq i32 %35, 0
  br i1 %tobool25.not, label %for.end.cleanup_crit_edge, label %if.end31, !prof !268

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %for.end
  %36 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %state1, align 4
  %mixers.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %37, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %stage_cfg.i) #11
  %name.i = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.92, ptr noundef %name.i) #11
  %num_mixers.i47 = getelementptr inbounds %struct.dpu_crtc_state, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %num_mixers.i47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_mixers.i47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp92.not.i = icmp eq i32 %39, 0
  br i1 %cmp92.not.i, label %if.end31.for.end.i_crit_edge, label %if.end31.for.body.i49_crit_edge

if.end31.for.body.i49_crit_edge:                  ; preds = %if.end31
  br label %for.body.i49

if.end31.for.end.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i49:                                     ; preds = %for.inc.i.for.body.i49_crit_edge, %if.end31.for.body.i49_crit_edge
  %i.093.i = phi i32 [ %inc.i50, %for.inc.i.for.body.i49_crit_edge ], [ 0, %if.end31.for.body.i49_crit_edge ]
  %mixer_op_mode.i = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i, i32 %i.093.i, i32 3
  %40 = ptrtoint ptr %mixer_op_mode.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %mixer_op_mode.i, align 4
  %flush_mask.i = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i, i32 %i.093.i, i32 4
  %41 = ptrtoint ptr %flush_mask.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %flush_mask.i, align 4
  %lm_ctl.i = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i, i32 %i.093.i, i32 1
  %42 = ptrtoint ptr %lm_ctl.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lm_ctl.i, align 4
  %clear_all_blendstages.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %43, i32 0, i32 9, i32 15
  %44 = ptrtoint ptr %clear_all_blendstages.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clear_all_blendstages.i, align 4
  %tobool.not.i48 = icmp eq ptr %45, null
  br i1 %tobool.not.i48, label %for.body.i49.for.inc.i_crit_edge, label %if.then.i

for.body.i49.for.inc.i_crit_edge:                 ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %45(ptr noundef %43) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i49.for.inc.i_crit_edge
  %inc.i50 = add nuw i32 %i.093.i, 1
  %46 = ptrtoint ptr %num_mixers.i47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_mixers.i47, align 8
  %cmp.i51 = icmp ult i32 %inc.i50, %47
  br i1 %cmp.i51, label %for.inc.i.for.body.i49_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i.for.body.i49_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i49

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end31.for.end.i_crit_edge
  %48 = call ptr @memset(ptr %stage_cfg.i, i32 0, i32 192)
  %49 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state1, align 4
  %lm_ctl.i.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %37, i32 0, i32 7, i32 0, i32 1
  %51 = ptrtoint ptr %lm_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lm_ctl.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flush_mask.i.i) #11
  %53 = ptrtoint ptr %flush_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %flush_mask.i.i, align 4, !annotation !260
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %zpos_cnt.i.i) #11
  %54 = call ptr @memset(ptr %zpos_cnt.i.i, i32 0, i32 52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fetch_active.i.i) #11
  %55 = ptrtoint ptr %fetch_active.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %fetch_active.i.i, align 4
  %56 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %crtc, align 8
  %plane_list.i.i = getelementptr inbounds %struct.drm_device, ptr %57, i32 0, i32 30, i32 18
  %58 = ptrtoint ptr %plane_list.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn13.i.i = load ptr, ptr %plane_list.i.i, align 4
  %cmp.not16.i.i = icmp eq ptr %.pn13.i.i, %plane_list.i.i
  br i1 %cmp.not16.i.i, label %for.end.i.for.end97.i.i_crit_edge, label %for.body.lr.ph.i.i

for.end.i.for.end97.i.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end97.i.i

for.body.lr.ph.i.i:                               ; preds = %for.end.i
  %tobool47.not.i.i = icmp eq ptr %crtc, null
  %num_mixers.i.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %50, i32 0, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc91.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn18.i.i = phi ptr [ %.pn13.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc91.i.i.for.body.i.i_crit_edge ]
  %bg_alpha_enable.0.off017.i.i = phi i1 [ false, %for.body.lr.ph.i.i ], [ %bg_alpha_enable.2.off0.i.i, %for.inc91.i.i.for.body.i.i_crit_edge ]
  %plane.019.i.i = getelementptr i8, ptr %.pn18.i.i, i32 -4
  %59 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %state1, align 4
  %plane_mask.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %plane_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %plane_mask.i.i, align 4
  %index.i.i.i.i = getelementptr i8, ptr %.pn18.i.i, i32 480
  %63 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %index.i.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %64
  %and.i.i = and i32 %shl.i.i.i, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc91.i.i_crit_edge, label %if.else.i.i

for.body.i.i.for.inc91.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc91.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %state9.i.i = getelementptr i8, ptr %.pn18.i.i, i32 488
  %65 = ptrtoint ptr %state9.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %state9.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %66, null
  br i1 %tobool10.not.i.i, label %if.else.i.i.for.inc91.i.i_crit_edge, label %if.end.i.i

if.else.i.i.for.inc91.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc91.i.i

if.end.i.i:                                       ; preds = %if.else.i.i
  %fb15.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %fb15.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fb15.i.i, align 4
  call void @dpu_plane_get_ctl_flush(ptr noundef %plane.019.i.i, ptr noundef %52, ptr noundef nonnull %flush_mask.i.i) #11
  %call16.i.i = call i32 @dpu_plane_pipe(ptr noundef %plane.019.i.i) #11
  call void @_set_bit(i32 noundef %call16.i.i, ptr noundef nonnull %fetch_active.i.i) #11
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %base, align 8
  %stage.i.i = getelementptr inbounds %struct.dpu_plane_state, ptr %66, i32 0, i32 2
  %71 = ptrtoint ptr %stage.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %stage.i.i, align 8
  %base18.i.i = getelementptr i8, ptr %.pn18.i.i, i32 120
  %73 = ptrtoint ptr %base18.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %base18.i.i, align 4
  %call20.i.i = call i32 @dpu_plane_pipe(ptr noundef %plane.019.i.i) #11
  %sub.i.i = add i32 %call20.i.i, -1
  %75 = ptrtoint ptr %fb15.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fb15.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %76, null
  br i1 %tobool22.not.i.i, label %if.end.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end.i.i.cond.end.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %base24.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %base24.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %base24.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %78, %cond.true.i.i ], [ -1, %if.end.i.i.cond.end.i.i_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.94, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %sub.i.i, i32 noundef %cond.i.i) #11
  %79 = ptrtoint ptr %fb15.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fb15.i.i, align 8
  %call29.i.i = call ptr @msm_framebuffer_format(ptr noundef %80) #11
  %81 = ptrtoint ptr %stage.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %stage.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp33.i.i = icmp eq i32 %82, 0
  br i1 %cmp33.i.i, label %land.lhs.true.i.i, label %cond.end.i.i.if.end36.i.i_crit_edge

cond.end.i.i.if.end36.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i.i

land.lhs.true.i.i:                                ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %alpha_enable.i.i = getelementptr inbounds %struct.dpu_format, ptr %call29.i.i, i32 0, i32 9
  %83 = ptrtoint ptr %alpha_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %alpha_enable.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool34.not.i.i = icmp ne i8 %84, 0
  %spec.select.i.i = select i1 %tobool34.not.i.i, i1 true, i1 %bg_alpha_enable.0.off017.i.i
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %land.lhs.true.i.i, %cond.end.i.i.if.end36.i.i_crit_edge
  %bg_alpha_enable.1.off0.i.i = phi i1 [ %bg_alpha_enable.0.off017.i.i, %cond.end.i.i.if.end36.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %arrayidx.i.i = getelementptr [13 x i32], ptr %zpos_cnt.i.i, i32 0, i32 %82
  %85 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %86, 1
  store i32 %inc.i.i, ptr %arrayidx.i.i, align 4
  %call38.i.i = call i32 @dpu_plane_pipe(ptr noundef %plane.019.i.i) #11
  %87 = ptrtoint ptr %stage.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %stage.i.i, align 8
  %arrayidx42.i.i = getelementptr [12 x [2 x i32]], ptr %stage_cfg.i, i32 0, i32 %88, i32 %86
  %89 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call38.i.i, ptr %arrayidx42.i.i, align 4
  %multirect_index.i.i = getelementptr inbounds %struct.dpu_plane_state, ptr %66, i32 0, i32 4
  %90 = ptrtoint ptr %multirect_index.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %multirect_index.i.i, align 8
  %92 = load i32, ptr %stage.i.i, align 8
  %arrayidx46.i.i = getelementptr %struct.dpu_hw_stage_cfg, ptr %stage_cfg.i, i32 0, i32 1, i32 %92, i32 %86
  %93 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %91, ptr %arrayidx46.i.i, align 4
  br i1 %tobool47.not.i.i, label %if.end36.i.i.cond.end52.i.i_crit_edge, label %cond.true48.i.i

if.end36.i.i.cond.end52.i.i_crit_edge:            ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end52.i.i

cond.true48.i.i:                                  ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %base, align 8
  br label %cond.end52.i.i

cond.end52.i.i:                                   ; preds = %cond.true48.i.i, %if.end36.i.i.cond.end52.i.i_crit_edge
  %cond53.i.i = phi i32 [ %95, %cond.true48.i.i ], [ -1, %if.end36.i.i.cond.end52.i.i_crit_edge ]
  %tobool54.not.i.i = icmp eq ptr %plane.019.i.i, null
  br i1 %tobool54.not.i.i, label %cond.end52.i.i.cond.end59.i.i_crit_edge, label %cond.true55.i.i

cond.end52.i.i.cond.end59.i.i_crit_edge:          ; preds = %cond.end52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end59.i.i

cond.true55.i.i:                                  ; preds = %cond.end52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %base18.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %base18.i.i, align 4
  br label %cond.end59.i.i

cond.end59.i.i:                                   ; preds = %cond.true55.i.i, %cond.end52.i.i.cond.end59.i.i_crit_edge
  %cond60.i.i = phi i32 [ %97, %cond.true55.i.i ], [ -1, %cond.end52.i.i.cond.end59.i.i_crit_edge ]
  %call61.i.i = call i32 @dpu_plane_pipe(ptr noundef %plane.019.i.i) #11
  %sub62.i.i = add i32 %call61.i.i, -1
  %98 = ptrtoint ptr %call29.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %call29.i.i, align 4
  %tobool64.not.i.i = icmp eq ptr %68, null
  br i1 %tobool64.not.i.i, label %cond.end59.i.i.cond.end67.i.i_crit_edge, label %cond.true65.i.i

cond.end59.i.i.cond.end67.i.i_crit_edge:          ; preds = %cond.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end67.i.i

cond.true65.i.i:                                  ; preds = %cond.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %modifier.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %68, i32 0, i32 8
  %100 = ptrtoint ptr %modifier.i.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %modifier.i.i, align 8
  br label %cond.end67.i.i

cond.end67.i.i:                                   ; preds = %cond.true65.i.i, %cond.end59.i.i.cond.end67.i.i_crit_edge
  %cond68.i.i = phi i64 [ %101, %cond.true65.i.i ], [ 0, %cond.end59.i.i.cond.end67.i.i_crit_edge ]
  call fastcc void @trace_dpu_crtc_setup_mixer(i32 noundef %cond53.i.i, i32 noundef %cond60.i.i, ptr noundef nonnull %66, ptr noundef nonnull %66, i32 noundef %86, i32 noundef %sub62.i.i, i32 noundef %99, i64 noundef %cond68.i.i) #11
  %102 = ptrtoint ptr %num_mixers.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_mixers.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp709.not.i.i = icmp eq i32 %103, 0
  br i1 %cmp709.not.i.i, label %cond.end67.i.i.for.inc91.i.i_crit_edge, label %for.body72.lr.ph.i.i

cond.end67.i.i.for.inc91.i.i_crit_edge:           ; preds = %cond.end67.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc91.i.i

for.body72.lr.ph.i.i:                             ; preds = %cond.end67.i.i
  %alpha.i.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %66, i32 0, i32 12
  %pixel_blend_mode.i.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %66, i32 0, i32 13
  %alpha_enable.i.i.i = getelementptr inbounds %struct.dpu_format, ptr %call29.i.i, i32 0, i32 9
  br label %for.body72.i.i

for.body72.i.i:                                   ; preds = %for.inc.i.i.for.body72.i.i_crit_edge, %for.body72.lr.ph.i.i
  %lm_idx.010.i.i = phi i32 [ 0, %for.body72.lr.ph.i.i ], [ %inc89.i.i, %for.inc.i.i.for.body72.i.i_crit_edge ]
  %add.ptr73.i.i = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i, i32 %lm_idx.010.i.i
  %104 = ptrtoint ptr %add.ptr73.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr73.i.i, align 4
  %106 = ptrtoint ptr %alpha.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %alpha.i.i.i, align 8
  %108 = lshr i16 %107, 8
  %109 = zext i16 %108 to i32
  %sub.i.i.i = xor i32 %109, 255
  %110 = ptrtoint ptr %pixel_blend_mode.i.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %pixel_blend_mode.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %111)
  %cmp.i.i.i = icmp eq i16 %111, 2
  br i1 %cmp.i.i.i, label %for.body72.i.i._dpu_crtc_setup_blend_cfg.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.body72.i.i._dpu_crtc_setup_blend_cfg.exit.i.i_crit_edge: ; preds = %for.body72.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_crtc_setup_blend_cfg.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body72.i.i
  %112 = ptrtoint ptr %alpha_enable.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %alpha_enable.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i.i.i = icmp eq i8 %113, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i._dpu_crtc_setup_blend_cfg.exit.i.i_crit_edge, label %if.else.i.i.i

lor.lhs.false.i.i.i._dpu_crtc_setup_blend_cfg.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_crtc_setup_blend_cfg.exit.i.i

if.else.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %cmp7.i.i.i = icmp eq i16 %111, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %108)
  %cmp10.not.i.i.i = icmp eq i16 %108, 255
  br i1 %cmp7.i.i.i, label %if.then9.i.i.i, label %if.else15.i.i.i

if.then9.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %..i.i.i = select i1 %cmp10.not.i.i.i, i32 1536, i32 6656
  %sub..i.i.i = select i1 %cmp10.not.i.i.i, i32 %sub.i.i.i, i32 %109
  br label %_dpu_crtc_setup_blend_cfg.exit.i.i

if.else15.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %.44.i.i.i = select i1 %cmp10.not.i.i.i, i32 1538, i32 6682
  %sub.45.i.i.i = select i1 %cmp10.not.i.i.i, i32 %sub.i.i.i, i32 %109
  br label %_dpu_crtc_setup_blend_cfg.exit.i.i

_dpu_crtc_setup_blend_cfg.exit.i.i:               ; preds = %if.else15.i.i.i, %if.then9.i.i.i, %lor.lhs.false.i.i.i._dpu_crtc_setup_blend_cfg.exit.i.i_crit_edge, %for.body72.i.i._dpu_crtc_setup_blend_cfg.exit.i.i_crit_edge
  %blend_op.0.i.i.i = phi i32 [ 256, %lor.lhs.false.i.i.i._dpu_crtc_setup_blend_cfg.exit.i.i_crit_edge ], [ 256, %for.body72.i.i._dpu_crtc_setup_blend_cfg.exit.i.i_crit_edge ], [ %..i.i.i, %if.then9.i.i.i ], [ %.44.i.i.i, %if.else15.i.i.i ]
  %bg_alpha.0.i.i.i = phi i32 [ %sub.i.i.i, %lor.lhs.false.i.i.i._dpu_crtc_setup_blend_cfg.exit.i.i_crit_edge ], [ %sub.i.i.i, %for.body72.i.i._dpu_crtc_setup_blend_cfg.exit.i.i_crit_edge ], [ %sub..i.i.i, %if.then9.i.i.i ], [ %sub.45.i.i.i, %if.else15.i.i.i ]
  %setup_blend_config.i.i.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %105, i32 0, i32 6, i32 1
  %114 = ptrtoint ptr %setup_blend_config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %setup_blend_config.i.i.i, align 4
  %116 = ptrtoint ptr %stage.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %stage.i.i, align 8
  call void %115(ptr noundef %105, i32 noundef %117, i32 noundef %109, i32 noundef %bg_alpha.0.i.i.i, i32 noundef %blend_op.0.i.i.i) #11
  %118 = ptrtoint ptr %alpha_enable.i.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %alpha_enable.i.i.i, align 4
  %conv27.i.i.i = zext i8 %119 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.95, ptr noundef %call29.i.i, i32 noundef %conv27.i.i.i, i32 noundef %blend_op.0.i.i.i) #11
  %120 = ptrtoint ptr %flush_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flush_mask.i.i, align 4
  %flush_mask75.i.i = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i, i32 %lm_idx.010.i.i, i32 4
  %122 = ptrtoint ptr %flush_mask75.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flush_mask75.i.i, align 4
  %or.i.i = or i32 %123, %121
  store i32 %or.i.i, ptr %flush_mask75.i.i, align 4
  br i1 %bg_alpha_enable.1.off0.i.i, label %land.lhs.true78.i.i, label %_dpu_crtc_setup_blend_cfg.exit.i.i.if.else83.i.i_crit_edge

_dpu_crtc_setup_blend_cfg.exit.i.i.if.else83.i.i_crit_edge: ; preds = %_dpu_crtc_setup_blend_cfg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else83.i.i

land.lhs.true78.i.i:                              ; preds = %_dpu_crtc_setup_blend_cfg.exit.i.i
  %124 = ptrtoint ptr %alpha_enable.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %alpha_enable.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool80.not.i.i = icmp eq i8 %125, 0
  br i1 %tobool80.not.i.i, label %if.then81.i.i, label %land.lhs.true78.i.i.if.else83.i.i_crit_edge

land.lhs.true78.i.i.if.else83.i.i_crit_edge:      ; preds = %land.lhs.true78.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else83.i.i

if.then81.i.i:                                    ; preds = %land.lhs.true78.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mixer_op_mode.i.i = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i, i32 %lm_idx.010.i.i, i32 3
  %126 = ptrtoint ptr %mixer_op_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %mixer_op_mode.i.i, align 4
  br label %for.inc.i.i

if.else83.i.i:                                    ; preds = %land.lhs.true78.i.i.if.else83.i.i_crit_edge, %_dpu_crtc_setup_blend_cfg.exit.i.i.if.else83.i.i_crit_edge
  %127 = ptrtoint ptr %stage.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %stage.i.i, align 8
  %shl.i.i = shl nuw i32 1, %128
  %mixer_op_mode86.i.i = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i, i32 %lm_idx.010.i.i, i32 3
  %129 = ptrtoint ptr %mixer_op_mode86.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %mixer_op_mode86.i.i, align 4
  %or87.i.i = or i32 %130, %shl.i.i
  store i32 %or87.i.i, ptr %mixer_op_mode86.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else83.i.i, %if.then81.i.i
  %inc89.i.i = add nuw i32 %lm_idx.010.i.i, 1
  %131 = ptrtoint ptr %num_mixers.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_mixers.i.i, align 8
  %cmp70.i.i = icmp ult i32 %inc89.i.i, %132
  br i1 %cmp70.i.i, label %for.inc.i.i.for.body72.i.i_crit_edge, label %for.inc.i.i.for.inc91.i.i_crit_edge

for.inc.i.i.for.inc91.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc91.i.i

for.inc.i.i.for.body72.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body72.i.i

for.inc91.i.i:                                    ; preds = %for.inc.i.i.for.inc91.i.i_crit_edge, %cond.end67.i.i.for.inc91.i.i_crit_edge, %if.else.i.i.for.inc91.i.i_crit_edge, %for.body.i.i.for.inc91.i.i_crit_edge
  %bg_alpha_enable.2.off0.i.i = phi i1 [ %bg_alpha_enable.0.off017.i.i, %if.else.i.i.for.inc91.i.i_crit_edge ], [ %bg_alpha_enable.0.off017.i.i, %for.body.i.i.for.inc91.i.i_crit_edge ], [ %bg_alpha_enable.1.off0.i.i, %cond.end67.i.i.for.inc91.i.i_crit_edge ], [ %bg_alpha_enable.1.off0.i.i, %for.inc.i.i.for.inc91.i.i_crit_edge ]
  %133 = ptrtoint ptr %.pn18.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %.pn.i.i = load ptr, ptr %.pn18.i.i, align 4
  %134 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %crtc, align 8
  %plane_list7.i.i = getelementptr inbounds %struct.drm_device, ptr %135, i32 0, i32 30, i32 18
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %plane_list7.i.i
  br i1 %cmp.not.i.i, label %for.inc91.i.i.for.end97.i.i_crit_edge, label %for.inc91.i.i.for.body.i.i_crit_edge

for.inc91.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc91.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc91.i.i.for.end97.i.i_crit_edge:            ; preds = %for.inc91.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end97.i.i

for.end97.i.i:                                    ; preds = %for.inc91.i.i.for.end97.i.i_crit_edge, %for.end.i.for.end97.i.i_crit_edge
  %set_active_pipes.i.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %52, i32 0, i32 9, i32 17
  %136 = ptrtoint ptr %set_active_pipes.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %set_active_pipes.i.i, align 4
  %tobool98.not.i.i = icmp eq ptr %137, null
  br i1 %tobool98.not.i.i, label %for.end97.i.i.if.end103.i.i_crit_edge, label %if.then99.i.i

for.end97.i.i.if.end103.i.i_crit_edge:            ; preds = %for.end97.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i.i

if.then99.i.i:                                    ; preds = %for.end97.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %137(ptr noundef %52, ptr noundef nonnull %fetch_active.i.i) #11
  br label %if.end103.i.i

if.end103.i.i:                                    ; preds = %if.then99.i.i, %for.end97.i.i.if.end103.i.i_crit_edge
  %138 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %state1, align 4
  %num_mixers.i.i.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %139, i32 0, i32 6
  %140 = ptrtoint ptr %num_mixers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %num_mixers.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp19.not.i.i.i = icmp eq i32 %141, 0
  br i1 %cmp19.not.i.i.i, label %if.end103.i.i._dpu_crtc_blend_setup_mixer.exit.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end103.i.i._dpu_crtc_blend_setup_mixer.exit.i_crit_edge: ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_crtc_blend_setup_mixer.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end103.i.i
  %out_height.i.i.i = getelementptr inbounds %struct.dpu_hw_mixer_cfg, ptr %cfg.i.i.i, i32 0, i32 1
  %right_mixer.i.i.i = getelementptr inbounds %struct.dpu_hw_mixer_cfg, ptr %cfg.i.i.i, i32 0, i32 2
  %flags.i.i.i = getelementptr inbounds %struct.dpu_hw_mixer_cfg, ptr %cfg.i.i.i, i32 0, i32 3
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %cleanup.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %lm_idx.021.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc8.i.i.i, %cleanup.i.i.i.for.body.i.i.i_crit_edge ]
  %lm_horiz_position.020.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %lm_horiz_position.1.i.i.i, %cleanup.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.dpu_crtc_state, ptr %139, i32 0, i32 3, i32 %lm_idx.021.i.i.i
  %arrayidx1.i.i.i = getelementptr %struct.dpu_crtc_state, ptr %139, i32 0, i32 7, i32 %lm_idx.021.i.i.i
  %142 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfg.i.i.i) #11
  %144 = ptrtoint ptr %right_mixer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %right_mixer.i.i.i, align 4
  %tobool.not.i6.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i6.i.i, label %for.body.i.i.i.cleanup.i.i.i_crit_edge, label %lor.lhs.false.i7.i.i

for.body.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i.i

lor.lhs.false.i7.i.i:                             ; preds = %for.body.i.i.i
  %x2.i.i.i.i.i = getelementptr %struct.dpu_crtc_state, ptr %139, i32 0, i32 3, i32 %lm_idx.021.i.i.i, i32 2
  %145 = ptrtoint ptr %x2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %x2.i.i.i.i.i, align 4
  %147 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i.i.i, align 4
  %sub.i.i.i.i.i = sub i32 %146, %148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %drm_rect_visible.exit.i.i.i, label %lor.lhs.false.i7.i.i.cleanup.i.i.i_crit_edge

lor.lhs.false.i7.i.i.cleanup.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i.i

drm_rect_visible.exit.i.i.i:                      ; preds = %lor.lhs.false.i7.i.i
  %y2.i.i.i.i.i = getelementptr %struct.dpu_crtc_state, ptr %139, i32 0, i32 3, i32 %lm_idx.021.i.i.i, i32 3
  %149 = ptrtoint ptr %y2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %y2.i.i.i.i.i, align 4
  %y1.i.i.i.i.i = getelementptr %struct.dpu_crtc_state, ptr %139, i32 0, i32 3, i32 %lm_idx.021.i.i.i, i32 1
  %151 = ptrtoint ptr %y1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %y1.i.i.i.i.i, align 4
  %sub.i4.i.i.i.i = sub i32 %150, %152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i4.i.i.i.i)
  %cmp2.i.i.i.i = icmp sgt i32 %sub.i4.i.i.i.i, 0
  br i1 %cmp2.i.i.i.i, label %if.end.i.i.i, label %drm_rect_visible.exit.i.i.i.cleanup.i.i.i_crit_edge

drm_rect_visible.exit.i.i.i.cleanup.i.i.i_crit_edge: ; preds = %drm_rect_visible.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i.i

if.end.i.i.i:                                     ; preds = %drm_rect_visible.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %sub.i.i.i.i.i, ptr %cfg.i.i.i, align 4
  %154 = ptrtoint ptr %y2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %y2.i.i.i.i.i, align 4
  %156 = ptrtoint ptr %y1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %y1.i.i.i.i.i, align 4
  %sub.i18.i.i.i = sub i32 %155, %157
  %158 = ptrtoint ptr %out_height.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %sub.i18.i.i.i, ptr %out_height.i.i.i, align 4
  %inc.i.i.i = add i32 %lm_horiz_position.020.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lm_horiz_position.020.i.i.i)
  %tobool5.i.i.i = icmp ne i32 %lm_horiz_position.020.i.i.i, 0
  %frombool.i.i.i = zext i1 %tobool5.i.i.i to i8
  %159 = ptrtoint ptr %right_mixer.i.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %frombool.i.i.i, ptr %right_mixer.i.i.i, align 4
  %160 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %flags.i.i.i, align 4
  %ops.i.i.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %143, i32 0, i32 6
  %161 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ops.i.i.i, align 4
  call void %162(ptr noundef %143, ptr noundef nonnull %cfg.i.i.i) #11
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.end.i.i.i, %drm_rect_visible.exit.i.i.i.cleanup.i.i.i_crit_edge, %lor.lhs.false.i7.i.i.cleanup.i.i.i_crit_edge, %for.body.i.i.i.cleanup.i.i.i_crit_edge
  %lm_horiz_position.1.i.i.i = phi i32 [ %inc.i.i.i, %if.end.i.i.i ], [ %lm_horiz_position.020.i.i.i, %drm_rect_visible.exit.i.i.i.cleanup.i.i.i_crit_edge ], [ %lm_horiz_position.020.i.i.i, %for.body.i.i.i.cleanup.i.i.i_crit_edge ], [ %lm_horiz_position.020.i.i.i, %lor.lhs.false.i7.i.i.cleanup.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfg.i.i.i) #11
  %inc8.i.i.i = add nuw i32 %lm_idx.021.i.i.i, 1
  %163 = ptrtoint ptr %num_mixers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %num_mixers.i.i.i, align 8
  %cmp.i8.i.i = icmp ult i32 %inc8.i.i.i, %164
  br i1 %cmp.i8.i.i, label %cleanup.i.i.i.for.body.i.i.i_crit_edge, label %cleanup.i.i.i._dpu_crtc_blend_setup_mixer.exit.i_crit_edge

cleanup.i.i.i._dpu_crtc_blend_setup_mixer.exit.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_crtc_blend_setup_mixer.exit.i

cleanup.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

_dpu_crtc_blend_setup_mixer.exit.i:               ; preds = %cleanup.i.i.i._dpu_crtc_blend_setup_mixer.exit.i_crit_edge, %if.end103.i.i._dpu_crtc_blend_setup_mixer.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fetch_active.i.i) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %zpos_cnt.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flush_mask.i.i) #11
  %165 = ptrtoint ptr %num_mixers.i47 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %num_mixers.i47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp1594.not.i = icmp eq i32 %166, 0
  br i1 %cmp1594.not.i, label %_dpu_crtc_blend_setup_mixer.exit.i._dpu_crtc_blend_setup.exit_crit_edge, label %_dpu_crtc_blend_setup_mixer.exit.i.for.body16.i_crit_edge

_dpu_crtc_blend_setup_mixer.exit.i.for.body16.i_crit_edge: ; preds = %_dpu_crtc_blend_setup_mixer.exit.i
  br label %for.body16.i

_dpu_crtc_blend_setup_mixer.exit.i._dpu_crtc_blend_setup.exit_crit_edge: ; preds = %_dpu_crtc_blend_setup_mixer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_crtc_blend_setup.exit

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %_dpu_crtc_blend_setup_mixer.exit.i.for.body16.i_crit_edge
  %i.195.i = phi i32 [ %inc45.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %_dpu_crtc_blend_setup_mixer.exit.i.for.body16.i_crit_edge ]
  %arrayidx17.i = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i, i32 %i.195.i
  %lm_ctl18.i = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i, i32 %i.195.i, i32 1
  %167 = ptrtoint ptr %lm_ctl18.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %lm_ctl18.i, align 4
  %169 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx17.i, align 4
  %setup_alpha_out.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %170, i32 0, i32 6, i32 2
  %171 = ptrtoint ptr %setup_alpha_out.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %setup_alpha_out.i, align 4
  %mixer_op_mode22.i = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i, i32 %i.195.i, i32 3
  %173 = ptrtoint ptr %mixer_op_mode22.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %mixer_op_mode22.i, align 4
  call void %172(ptr noundef %170, i32 noundef %174) #11
  %get_bitmask_mixer.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %168, i32 0, i32 9, i32 13
  %175 = ptrtoint ptr %get_bitmask_mixer.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %get_bitmask_mixer.i, align 4
  %177 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx17.i, align 4
  %idx.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %idx.i, align 4
  %call.i = call i32 %176(ptr noundef %168, i32 noundef %180) #11
  %flush_mask27.i = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i, i32 %i.195.i, i32 4
  %181 = ptrtoint ptr %flush_mask27.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %flush_mask27.i, align 4
  %or.i = or i32 %182, %call.i
  store i32 %or.i, ptr %flush_mask27.i, align 4
  %update_pending_flush.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %168, i32 0, i32 9, i32 4
  %183 = ptrtoint ptr %update_pending_flush.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %update_pending_flush.i, align 4
  call void %184(ptr noundef %168, i32 noundef %or.i) #11
  %185 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx17.i, align 4
  %idx33.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %idx33.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %idx33.i, align 4
  %sub.i = add i32 %188, -1
  %189 = ptrtoint ptr %mixer_op_mode22.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %mixer_op_mode22.i, align 4
  %idx36.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %168, i32 0, i32 2
  %191 = ptrtoint ptr %idx36.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %idx36.i, align 4
  %sub37.i = add i32 %192, -1
  %193 = ptrtoint ptr %flush_mask27.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %flush_mask27.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.93, i32 noundef %sub.i, i32 noundef %190, i32 noundef %sub37.i, i32 noundef %194) #11
  %setup_blendstage.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %168, i32 0, i32 9, i32 16
  %195 = ptrtoint ptr %setup_blendstage.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %setup_blendstage.i, align 4
  %197 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %arrayidx17.i, align 4
  %idx43.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %198, i32 0, i32 2
  %199 = ptrtoint ptr %idx43.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %idx43.i, align 4
  call void %196(ptr noundef %168, i32 noundef %200, ptr noundef nonnull %stage_cfg.i) #11
  %inc45.i = add nuw i32 %i.195.i, 1
  %201 = ptrtoint ptr %num_mixers.i47 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %num_mixers.i47, align 8
  %cmp15.i = icmp ult i32 %inc45.i, %202
  br i1 %cmp15.i, label %for.body16.i.for.body16.i_crit_edge, label %for.body16.i._dpu_crtc_blend_setup.exit_crit_edge

for.body16.i._dpu_crtc_blend_setup.exit_crit_edge: ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_crtc_blend_setup.exit

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body16.i

_dpu_crtc_blend_setup.exit:                       ; preds = %for.body16.i._dpu_crtc_blend_setup.exit_crit_edge, %_dpu_crtc_blend_setup_mixer.exit.i._dpu_crtc_blend_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %stage_cfg.i) #11
  %203 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %state1, align 4
  %mixers.i52 = getelementptr inbounds %struct.dpu_crtc_state, ptr %204, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cfg.i) #11
  %205 = call ptr @memset(ptr %cfg.i, i32 255, i32 36)
  %color_mgmt_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 3
  %206 = ptrtoint ptr %color_mgmt_changed.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %bf.load.i = load i8, ptr %color_mgmt_changed.i, align 2
  %207 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %bf.cast.not.i = icmp eq i8 %207, 0
  br i1 %bf.cast.not.i, label %_dpu_crtc_blend_setup.exit._dpu_crtc_setup_cp_blocks.exit_crit_edge, label %for.cond.preheader.i

_dpu_crtc_blend_setup.exit._dpu_crtc_setup_cp_blocks.exit_crit_edge: ; preds = %_dpu_crtc_blend_setup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_crtc_setup_cp_blocks.exit

for.cond.preheader.i:                             ; preds = %_dpu_crtc_blend_setup.exit
  %num_mixers.i53 = getelementptr inbounds %struct.dpu_crtc_state, ptr %204, i32 0, i32 6
  %208 = ptrtoint ptr %num_mixers.i53 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %num_mixers.i53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp61.not.i = icmp eq i32 %209, 0
  br i1 %cmp61.not.i, label %for.cond.preheader.i._dpu_crtc_setup_cp_blocks.exit_crit_edge, label %for.body.lr.ph.i54

for.cond.preheader.i._dpu_crtc_setup_cp_blocks.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_crtc_setup_cp_blocks.exit

for.body.lr.ph.i54:                               ; preds = %for.cond.preheader.i
  %ctm.i = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 11
  %g.i.i = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %cfg.i, i32 0, i32 1
  %b.i.i = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %cfg.i, i32 0, i32 2
  %g25.i.i = getelementptr inbounds %struct.dpu_hw_pcc_coeff, ptr %cfg.i, i32 0, i32 1
  %g33.i.i = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %cfg.i, i32 0, i32 1, i32 1
  %g41.i.i = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %cfg.i, i32 0, i32 2, i32 1
  %b49.i.i = getelementptr inbounds %struct.dpu_hw_pcc_coeff, ptr %cfg.i, i32 0, i32 2
  %b57.i.i = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %cfg.i, i32 0, i32 1, i32 2
  %b65.i.i = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %cfg.i, i32 0, i32 2, i32 2
  br label %for.body.i58

for.body.i58:                                     ; preds = %for.inc.i70.for.body.i58_crit_edge, %for.body.lr.ph.i54
  %i.062.i = phi i32 [ 0, %for.body.lr.ph.i54 ], [ %inc.i68, %for.inc.i70.for.body.i58_crit_edge ]
  %arrayidx.i55 = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i52, i32 %i.062.i
  %lm_ctl.i56 = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i52, i32 %i.062.i, i32 1
  %210 = ptrtoint ptr %lm_ctl.i56 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %lm_ctl.i56, align 4
  %hw_dspp.i = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i52, i32 %i.062.i, i32 2
  %212 = ptrtoint ptr %hw_dspp.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %hw_dspp.i, align 4
  %tobool.not.i57 = icmp eq ptr %213, null
  br i1 %tobool.not.i57, label %for.body.i58.for.inc.i70_crit_edge, label %lor.lhs.false.i

for.body.i58.for.inc.i70_crit_edge:               ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i70

lor.lhs.false.i:                                  ; preds = %for.body.i58
  %ops.i = getelementptr inbounds %struct.dpu_hw_dspp, ptr %213, i32 0, i32 4
  %214 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ops.i, align 4
  %tobool4.not.i = icmp eq ptr %215, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.for.inc.i70_crit_edge, label %if.end6.i

lor.lhs.false.i.for.inc.i70_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i70

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %216 = ptrtoint ptr %ctm.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ctm.i, align 4
  %tobool7.not.i = icmp eq ptr %217, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %215(ptr noundef nonnull %213, ptr noundef null) #11
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end6.i
  %218 = call ptr @memset(ptr %cfg.i, i32 0, i32 36)
  %data.i.i = getelementptr inbounds %struct.drm_property_blob, ptr %217, i32 0, i32 5
  %219 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %data.i.i, align 4
  %tobool.not.i.i59 = icmp eq ptr %220, null
  br i1 %tobool.not.i.i59, label %if.else.i._dpu_crtc_get_pcc_coeff.exit.i_crit_edge, label %if.end.i.i61

if.else.i._dpu_crtc_get_pcc_coeff.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_crtc_get_pcc_coeff.exit.i

if.end.i.i61:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %220, align 8
  %and.i.i60 = lshr i64 %222, 17
  %223 = trunc i64 %and.i.i60 to i32
  %conv.i.i = and i32 %223, 262143
  %224 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %conv.i.i, ptr %cfg.i, align 4
  %arrayidx5.i.i = getelementptr [9 x i64], ptr %220, i32 0, i32 1
  %225 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %arrayidx5.i.i, align 8
  %and6.i.i = lshr i64 %226, 17
  %227 = trunc i64 %and6.i.i to i32
  %conv9.i.i = and i32 %227, 262143
  %228 = ptrtoint ptr %g.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %conv9.i.i, ptr %g.i.i, align 4
  %arrayidx12.i.i = getelementptr [9 x i64], ptr %220, i32 0, i32 2
  %229 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %arrayidx12.i.i, align 8
  %and13.i.i = lshr i64 %230, 17
  %231 = trunc i64 %and13.i.i to i32
  %conv16.i.i = and i32 %231, 262143
  %232 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %conv16.i.i, ptr %b.i.i, align 4
  %arrayidx19.i.i = getelementptr [9 x i64], ptr %220, i32 0, i32 3
  %233 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %arrayidx19.i.i, align 8
  %and20.i.i = lshr i64 %234, 17
  %235 = trunc i64 %and20.i.i to i32
  %conv23.i.i = and i32 %235, 262143
  %236 = ptrtoint ptr %g25.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %conv23.i.i, ptr %g25.i.i, align 4
  %arrayidx27.i.i = getelementptr [9 x i64], ptr %220, i32 0, i32 4
  %237 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %arrayidx27.i.i, align 8
  %and28.i.i = lshr i64 %238, 17
  %239 = trunc i64 %and28.i.i to i32
  %conv31.i.i = and i32 %239, 262143
  %240 = ptrtoint ptr %g33.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %conv31.i.i, ptr %g33.i.i, align 4
  %arrayidx35.i.i = getelementptr [9 x i64], ptr %220, i32 0, i32 5
  %241 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %arrayidx35.i.i, align 8
  %and36.i.i = lshr i64 %242, 17
  %243 = trunc i64 %and36.i.i to i32
  %conv39.i.i = and i32 %243, 262143
  %244 = ptrtoint ptr %g41.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %conv39.i.i, ptr %g41.i.i, align 4
  %arrayidx43.i.i = getelementptr [9 x i64], ptr %220, i32 0, i32 6
  %245 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %arrayidx43.i.i, align 8
  %and44.i.i = lshr i64 %246, 17
  %247 = trunc i64 %and44.i.i to i32
  %conv47.i.i = and i32 %247, 262143
  %248 = ptrtoint ptr %b49.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %conv47.i.i, ptr %b49.i.i, align 4
  %arrayidx51.i.i = getelementptr [9 x i64], ptr %220, i32 0, i32 7
  %249 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %arrayidx51.i.i, align 8
  %and52.i.i = lshr i64 %250, 17
  %251 = trunc i64 %and52.i.i to i32
  %conv55.i.i = and i32 %251, 262143
  %252 = ptrtoint ptr %b57.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %conv55.i.i, ptr %b57.i.i, align 4
  %arrayidx59.i.i = getelementptr [9 x i64], ptr %220, i32 0, i32 8
  %253 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %arrayidx59.i.i, align 8
  %and60.i.i = lshr i64 %254, 17
  %255 = trunc i64 %and60.i.i to i32
  %conv63.i.i = and i32 %255, 262143
  %256 = ptrtoint ptr %b65.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %conv63.i.i, ptr %b65.i.i, align 4
  br label %_dpu_crtc_get_pcc_coeff.exit.i

_dpu_crtc_get_pcc_coeff.exit.i:                   ; preds = %if.end.i.i61, %if.else.i._dpu_crtc_get_pcc_coeff.exit.i_crit_edge
  %257 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %ops.i, align 4
  call void %258(ptr noundef nonnull %213, ptr noundef nonnull %cfg.i) #11
  br label %if.end13.i

if.end13.i:                                       ; preds = %_dpu_crtc_get_pcc_coeff.exit.i, %if.then8.i
  %get_bitmask_dspp.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %211, i32 0, i32 9, i32 14
  %259 = ptrtoint ptr %get_bitmask_dspp.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %get_bitmask_dspp.i, align 4
  %261 = ptrtoint ptr %hw_dspp.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %hw_dspp.i, align 4
  %idx.i62 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %idx.i62 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %idx.i62, align 4
  %call.i63 = call i32 %260(ptr noundef %211, i32 noundef %264) #11
  %flush_mask.i64 = getelementptr %struct.dpu_crtc_mixer, ptr %mixers.i52, i32 %i.062.i, i32 4
  %265 = ptrtoint ptr %flush_mask.i64 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %flush_mask.i64, align 4
  %or.i65 = or i32 %266, %call.i63
  store i32 %or.i65, ptr %flush_mask.i64, align 4
  %update_pending_flush.i66 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %211, i32 0, i32 9, i32 4
  %267 = ptrtoint ptr %update_pending_flush.i66 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %update_pending_flush.i66, align 4
  call void %268(ptr noundef %211, i32 noundef %or.i65) #11
  %269 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %arrayidx.i55, align 4
  %idx22.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %270, i32 0, i32 2
  %271 = ptrtoint ptr %idx22.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %idx22.i, align 4
  %sub.i67 = add i32 %272, -1
  %idx23.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %211, i32 0, i32 2
  %273 = ptrtoint ptr %idx23.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %idx23.i, align 4
  %sub24.i = add i32 %274, -1
  %275 = ptrtoint ptr %flush_mask.i64 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %flush_mask.i64, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.96, i32 noundef %sub.i67, i32 noundef %sub24.i, i32 noundef %276) #11
  br label %for.inc.i70

for.inc.i70:                                      ; preds = %if.end13.i, %lor.lhs.false.i.for.inc.i70_crit_edge, %for.body.i58.for.inc.i70_crit_edge
  %inc.i68 = add nuw i32 %i.062.i, 1
  %277 = ptrtoint ptr %num_mixers.i53 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %num_mixers.i53, align 8
  %cmp.i69 = icmp ult i32 %inc.i68, %278
  br i1 %cmp.i69, label %for.inc.i70.for.body.i58_crit_edge, label %for.inc.i70._dpu_crtc_setup_cp_blocks.exit_crit_edge

for.inc.i70._dpu_crtc_setup_cp_blocks.exit_crit_edge: ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_crtc_setup_cp_blocks.exit

for.inc.i70.for.body.i58_crit_edge:               ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i58

_dpu_crtc_setup_cp_blocks.exit:                   ; preds = %for.inc.i70._dpu_crtc_setup_cp_blocks.exit_crit_edge, %for.cond.preheader.i._dpu_crtc_setup_cp_blocks.exit_crit_edge, %_dpu_crtc_blend_setup.exit._dpu_crtc_setup_cp_blocks.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cfg.i) #11
  br label %cleanup

cleanup:                                          ; preds = %_dpu_crtc_setup_cp_blocks.exit, %for.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 8
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.97, i32 noundef %5, i32 noundef 0) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %5) #11
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cmp = icmp ugt i32 %11, 7
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 781, i32 noundef %11) #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %event = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 2
  %12 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %event, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %if.end16.if.end35_crit_edge, label %do.end29, !prof !259

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end29:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 785, i32 noundef 9, ptr noundef null) #11
  br label %if.end35

if.end35:                                         ; preds = %do.end29, %if.end16.if.end35_crit_edge
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 28
  %call49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #11
  %14 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state1, align 4
  %event55 = getelementptr inbounds %struct.drm_crtc_state, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %event55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %event55, align 4
  %18 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %event, align 4
  store ptr null, ptr %event55, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call49) #11
  %num_mixers = getelementptr inbounds %struct.dpu_crtc_state, ptr %7, i32 0, i32 6
  %19 = ptrtoint ptr %num_mixers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_mixers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool60.not = icmp eq i32 %20, 0
  br i1 %tobool60.not, label %if.end35.cleanup_crit_edge, label %if.end70, !prof !268

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end70:                                         ; preds = %if.end35
  %call71 = tail call i32 @dpu_core_perf_crtc_update(ptr noundef %crtc, i32 noundef 1, i1 noundef zeroext false) #11
  %21 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %crtc, align 8
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 30, i32 18
  %23 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn124 = load ptr, ptr %plane_list, align 4
  %cmp79.not127 = icmp eq ptr %.pn124, %plane_list
  br i1 %cmp79.not127, label %if.end70.cleanup_crit_edge, label %for.body.lr.ph

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end70
  %transition_error = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 20, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn128 = phi ptr [ %.pn124, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %plane.0129 = getelementptr i8, ptr %.pn128, i32 -4
  %24 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state1, align 4
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %plane_mask, align 4
  %index.i.i = getelementptr i8, ptr %.pn128, i32 480
  %28 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %29
  %and = and i32 %shl.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool85.not = icmp eq i32 %and, 0
  br i1 %tobool85.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else:                                          ; preds = %for.body
  %30 = ptrtoint ptr %transition_error to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %transition_error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool87.not = icmp eq i32 %31, 0
  br i1 %tobool87.not, label %if.else.if.end89_crit_edge, label %if.then88

if.else.if.end89_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then88:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dpu_plane_set_error(ptr noundef %plane.0129, i1 noundef zeroext true) #11
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.else.if.end89_crit_edge
  tail call void @dpu_plane_flush(ptr noundef %plane.0129) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end89, %for.body.for.inc_crit_edge
  %32 = ptrtoint ptr %.pn128 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load ptr, ptr %.pn128, align 4
  %33 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %crtc, align 8
  %plane_list78 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 30, i32 18
  %cmp79.not = icmp eq ptr %.pn, %plane_list78
  br i1 %cmp79.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_crtc_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #11
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %5) #11
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 16
  %8 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn86 = load ptr, ptr %encoder_list, align 4
  %cmp.not89 = icmp eq ptr %.pn86, %encoder_list
  br i1 %cmp.not89, label %entry.if.end23_crit_edge, label %for.body.lr.ph

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

for.body.lr.ph:                                   ; preds = %entry
  %state9 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn91 = phi ptr [ %.pn86, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %request_bandwidth.0.off090 = phi i1 [ false, %for.body.lr.ph ], [ %request_bandwidth.2.off0, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state9, align 4
  %encoder_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %encoder_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %encoder_mask, align 4
  %index.i.i = getelementptr i8, ptr %.pn91, i32 36
  %13 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %14
  %and = and i32 %shl.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %encoder.092 = getelementptr i8, ptr %.pn91, i32 -4
  %call11 = tail call i32 @dpu_encoder_get_intf_mode(ptr noundef %encoder.092) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 2
  %spec.select = select i1 %cmp12, i1 true, i1 %request_bandwidth.0.off090
  tail call void @dpu_encoder_register_frame_event_callback(ptr noundef %encoder.092, ptr noundef nonnull @dpu_crtc_frame_event_cb, ptr noundef %crtc) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %request_bandwidth.2.off0 = phi i1 [ %spec.select, %if.else ], [ %request_bandwidth.0.off090, %for.body.for.inc_crit_edge ]
  %15 = ptrtoint ptr %.pn91 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn91, align 4
  %16 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc, align 8
  %encoder_list8 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 30, i32 16
  %cmp.not = icmp eq ptr %.pn, %encoder_list8
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %request_bandwidth.2.off0, label %if.then21, label %for.end.if.end23_crit_edge

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kms.i, align 4
  %bandwidth_ref = getelementptr inbounds %struct.dpu_kms, ptr %21, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bandwidth_ref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %bandwidth_ref, i32 1, i32 3, i32 1) #11
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bandwidth_ref, ptr %bandwidth_ref, i32 1, ptr elementtype(i32) %bandwidth_ref) #11, !srcloc !293
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %for.end.if.end23_crit_edge, %entry.if.end23_crit_edge
  %tobool24.not = icmp eq ptr %crtc, null
  br i1 %tobool24.not, label %if.end23.cond.end_crit_edge, label %cond.true

if.end23.cond.end_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end23.cond.end_crit_edge
  %cond = phi i32 [ %24, %cond.true ], [ -1, %if.end23.cond.end_crit_edge ]
  tail call fastcc void @trace_dpu_crtc_enable(i32 noundef %cond, ptr noundef %crtc)
  %enabled = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 7
  %25 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %enabled, align 8
  %26 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crtc, align 8
  %encoder_list30 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 30, i32 16
  %28 = ptrtoint ptr %encoder_list30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn8394 = load ptr, ptr %encoder_list30, align 4
  %cmp39.not97 = icmp eq ptr %.pn8394, %encoder_list30
  br i1 %cmp39.not97, label %cond.end.for.end56_crit_edge, label %for.body41.lr.ph

cond.end.for.end56_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end56

for.body41.lr.ph:                                 ; preds = %cond.end
  %state42 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  br label %for.body41

for.body41:                                       ; preds = %for.inc50.for.body41_crit_edge, %for.body41.lr.ph
  %.pn8398 = phi ptr [ %.pn8394, %for.body41.lr.ph ], [ %.pn83, %for.inc50.for.body41_crit_edge ]
  %29 = ptrtoint ptr %state42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %state42, align 4
  %encoder_mask43 = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %encoder_mask43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %encoder_mask43, align 4
  %index.i.i84 = getelementptr i8, ptr %.pn8398, i32 36
  %33 = ptrtoint ptr %index.i.i84 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index.i.i84, align 4
  %shl.i85 = shl nuw i32 1, %34
  %and45 = and i32 %shl.i85, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %for.body41.for.inc50_crit_edge, label %if.else48

for.body41.for.inc50_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc50

if.else48:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  %encoder.199 = getelementptr i8, ptr %.pn8398, i32 -4
  tail call void @dpu_encoder_assign_crtc(ptr noundef %encoder.199, ptr noundef %crtc) #11
  br label %for.inc50

for.inc50:                                        ; preds = %if.else48, %for.body41.for.inc50_crit_edge
  %35 = ptrtoint ptr %.pn8398 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn83 = load ptr, ptr %.pn8398, align 4
  %36 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %crtc, align 8
  %encoder_list38 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 30, i32 16
  %cmp39.not = icmp eq ptr %.pn83, %encoder_list38
  br i1 %cmp39.not, label %for.inc50.for.end56_crit_edge, label %for.inc50.for.body41_crit_edge

for.inc50.for.body41_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body41

for.inc50.for.end56_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end56

for.end56:                                        ; preds = %for.inc50.for.end56_crit_edge, %cond.end.for.end56_crit_edge
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_crtc_disable(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 8
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %6 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state2, align 4
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %9) #11
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #11
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 16
  %12 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn162 = load ptr, ptr %encoder_list, align 4
  %cmp.not165 = icmp eq ptr %.pn162, %encoder_list
  br i1 %cmp.not165, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %encoder_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn167 = phi ptr [ %.pn162, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %release_bandwidth.0.off0166 = phi i1 [ false, %for.body.lr.ph ], [ %release_bandwidth.2.off0, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %encoder_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %encoder_mask, align 4
  %index.i.i156 = getelementptr i8, ptr %.pn167, i32 36
  %15 = ptrtoint ptr %index.i.i156 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index.i.i156, align 4
  %shl.i = shl nuw i32 1, %16
  %and = and i32 %shl.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %encoder.0168 = getelementptr i8, ptr %.pn167, i32 -4
  %call12 = tail call i32 @dpu_encoder_get_intf_mode(ptr noundef %encoder.0168) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 2
  %spec.select = select i1 %cmp13, i1 true, i1 %release_bandwidth.0.off0166
  tail call void @dpu_encoder_assign_crtc(ptr noundef %encoder.0168, ptr noundef null) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %release_bandwidth.2.off0 = phi i1 [ %spec.select, %if.else ], [ %release_bandwidth.0.off0166, %for.body.for.inc_crit_edge ]
  %17 = ptrtoint ptr %.pn167 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn167, align 4
  %18 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc, align 8
  %encoder_list10 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 30, i32 16
  %cmp.not = icmp eq ptr %.pn, %encoder_list10
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %release_bandwidth.0.off0.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ %release_bandwidth.2.off0, %for.inc.for.end_crit_edge ]
  %frame_pending.i = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %frame_pending.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %frame_pending.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %frame_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %_dpu_crtc_wait_for_frame_done.exit.thread, label %if.end.i

_dpu_crtc_wait_for_frame_done.exit.thread:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.105) #11
  br label %if.end29

if.end.i:                                         ; preds = %for.end
  %22 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %tgid.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 69
  %26 = ptrtoint ptr %tgid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tgid.i, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %27, ptr noundef nonnull @.str.106, i1 noundef zeroext true) #11
  %frame_done_comp.i = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 17
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %frame_done_comp.i, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end29.critedge

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.107, i32 noundef 0) #11
  %28 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i, align 8
  %tgid9.i.c161 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 69
  %30 = ptrtoint ptr %tgid9.i.c161 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tgid9.i.c161, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %31, ptr noundef nonnull @.str.106, i1 noundef zeroext false) #11
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %frame_pending.i, i32 noundef 4) #11
  %34 = ptrtoint ptr %frame_pending.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %frame_pending.i, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, i32 noundef 972, i32 noundef %33, i32 noundef %35) #15
  br label %if.end29

if.end29.critedge:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i, align 8
  %tgid9.i.c = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 69
  %38 = ptrtoint ptr %tgid9.i.c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tgid9.i.c, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %39, ptr noundef nonnull @.str.106, i1 noundef zeroext false) #11
  br label %if.end29

if.end29:                                         ; preds = %if.end29.critedge, %if.then5.i, %_dpu_crtc_wait_for_frame_done.exit.thread
  %tobool30.not = icmp eq ptr %crtc, null
  br i1 %tobool30.not, label %if.end29.cond.end_crit_edge, label %cond.true

if.end29.cond.end_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end29.cond.end_crit_edge
  %cond = phi i32 [ %41, %cond.true ], [ -1, %if.end29.cond.end_crit_edge ]
  tail call fastcc void @trace_dpu_crtc_disable(i32 noundef %cond, ptr noundef %crtc)
  %enabled = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 7
  %42 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %enabled, align 8
  %call.i.i153 = tail call zeroext i1 @__kasan_check_read(ptr noundef %frame_pending.i, i32 noundef 4) #11
  %43 = ptrtoint ptr %frame_pending.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %frame_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool35.not = icmp eq i32 %44, 0
  br i1 %tobool35.not, label %cond.end.if.end50_crit_edge, label %if.then36

cond.end.if.end50_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then36:                                        ; preds = %cond.end
  br i1 %tobool30.not, label %if.then36.cond.end42_crit_edge, label %cond.true38

if.then36.cond.end42_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end42

cond.true38:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base, align 8
  br label %cond.end42

cond.end42:                                       ; preds = %cond.true38, %if.then36.cond.end42_crit_edge
  %cond43 = phi i32 [ %46, %cond.true38 ], [ -1, %if.then36.cond.end42_crit_edge ]
  %call.i.i154 = tail call zeroext i1 @__kasan_check_read(ptr noundef %frame_pending.i, i32 noundef 4) #11
  %47 = ptrtoint ptr %frame_pending.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %frame_pending.i, align 4
  tail call fastcc void @trace_dpu_crtc_disable_frame_pending(i32 noundef %cond43, i32 noundef %48)
  br i1 %release_bandwidth.0.off0.lcssa, label %if.then47, label %cond.end42.if.end48_crit_edge

cond.end42.if.end48_crit_edge:                    ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then47:                                        ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dpu_core_perf_crtc_release_bw(ptr noundef %crtc) #11
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %cond.end42.if.end48_crit_edge
  %call.i.i155 = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_pending.i, i32 noundef 4) #11
  %49 = ptrtoint ptr %frame_pending.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 0, ptr %frame_pending.i, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %cond.end.if.end50_crit_edge
  %call51 = tail call i32 @dpu_core_perf_crtc_update(ptr noundef %crtc, i32 noundef 0, i1 noundef zeroext true) #11
  %50 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %crtc, align 8
  %encoder_list55 = getelementptr inbounds %struct.drm_device, ptr %51, i32 0, i32 30, i32 16
  %52 = ptrtoint ptr %encoder_list55 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn152169 = load ptr, ptr %encoder_list55, align 4
  %cmp64.not172 = icmp eq ptr %.pn152169, %encoder_list55
  br i1 %cmp64.not172, label %if.end50.for.end81_crit_edge, label %if.end50.for.body66_crit_edge

if.end50.for.body66_crit_edge:                    ; preds = %if.end50
  br label %for.body66

if.end50.for.end81_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end81

for.body66:                                       ; preds = %for.inc75.for.body66_crit_edge, %if.end50.for.body66_crit_edge
  %.pn152173 = phi ptr [ %.pn152, %for.inc75.for.body66_crit_edge ], [ %.pn152169, %if.end50.for.body66_crit_edge ]
  %53 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %state2, align 4
  %encoder_mask68 = getelementptr inbounds %struct.drm_crtc_state, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %encoder_mask68 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %encoder_mask68, align 4
  %index.i.i157 = getelementptr i8, ptr %.pn152173, i32 36
  %57 = ptrtoint ptr %index.i.i157 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %index.i.i157, align 4
  %shl.i158 = shl nuw i32 1, %58
  %and70 = and i32 %shl.i158, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %for.body66.for.inc75_crit_edge, label %if.else73

for.body66.for.inc75_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc75

if.else73:                                        ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #13
  %encoder.1174 = getelementptr i8, ptr %.pn152173, i32 -4
  tail call void @dpu_encoder_register_frame_event_callback(ptr noundef %encoder.1174, ptr noundef null, ptr noundef null) #11
  br label %for.inc75

for.inc75:                                        ; preds = %if.else73, %for.body66.for.inc75_crit_edge
  %59 = ptrtoint ptr %.pn152173 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn152 = load ptr, ptr %.pn152173, align 4
  %60 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %crtc, align 8
  %encoder_list63 = getelementptr inbounds %struct.drm_device, ptr %61, i32 0, i32 30, i32 16
  %cmp64.not = icmp eq ptr %.pn152, %encoder_list63
  br i1 %cmp64.not, label %for.inc75.for.end81_crit_edge, label %for.inc75.for.body66_crit_edge

for.inc75.for.body66_crit_edge:                   ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body66

for.inc75.for.end81_crit_edge:                    ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end81

for.end81:                                        ; preds = %for.inc75.for.end81_crit_edge, %if.end50.for.end81_crit_edge
  %num_mixers = getelementptr inbounds %struct.dpu_crtc_state, ptr %7, i32 0, i32 6
  %bw_control = getelementptr inbounds %struct.dpu_crtc_state, ptr %7, i32 0, i32 1
  %62 = ptrtoint ptr %bw_control to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %bw_control, align 4
  %bw_split_vote = getelementptr inbounds %struct.dpu_crtc_state, ptr %7, i32 0, i32 2
  %63 = ptrtoint ptr %bw_split_vote to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %bw_split_vote, align 1
  %64 = call ptr @memset(ptr %num_mixers, i32 0, i32 44)
  %65 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %state2, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %66, i32 0, i32 18
  %67 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %event, align 4
  %tobool83.not = icmp eq ptr %68, null
  br i1 %tobool83.not, label %for.end81.if.end104_crit_edge, label %land.lhs.true

for.end81.if.end104_crit_edge:                    ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

land.lhs.true:                                    ; preds = %for.end81
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %66, i32 0, i32 2
  %69 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %active, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool85.not = icmp eq i8 %70, 0
  br i1 %tobool85.not, label %do.body88, label %land.lhs.true.if.end104_crit_edge

land.lhs.true.if.end104_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

do.body88:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %72, i32 0, i32 28
  %call93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #11
  %73 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %state2, align 4
  %event99 = getelementptr inbounds %struct.drm_crtc_state, ptr %74, i32 0, i32 18
  %75 = ptrtoint ptr %event99 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %event99, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %76) #11
  %77 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %state2, align 4
  %event101 = getelementptr inbounds %struct.drm_crtc_state, ptr %78, i32 0, i32 18
  %79 = ptrtoint ptr %event101 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %event101, align 4
  %80 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %crtc, align 8
  %event_lock103 = getelementptr inbounds %struct.drm_device, ptr %81, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock103, i32 noundef %call93) #11
  br label %if.end104

if.end104:                                        ; preds = %do.body88, %land.lhs.true.if.end104_crit_edge, %for.end81.if.end104_crit_edge
  %82 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %crtc, align 8
  %dev106 = getelementptr inbounds %struct.drm_device, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev106, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %85, i32 noundef 4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dpu_crtc_get_scanout_position(ptr noundef readonly %crtc, i1 noundef zeroext %in_vblank_irq, ptr nocapture noundef writeonly %vpos, ptr nocapture noundef writeonly %hpos, ptr noundef writeonly %stime, ptr noundef writeonly %etime, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %crtc4.i = getelementptr i8, ptr %.pn.i, i32 48
  %5 = ptrtoint ptr %crtc4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %crtc4.i, align 4
  %cmp5.i = icmp eq ptr %6, %crtc
  br i1 %cmp5.i, label %get_encoder_from_crtc.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

get_encoder_from_crtc.exit:                       ; preds = %for.body.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool.not, label %get_encoder_from_crtc.exit.if.then_crit_edge, label %if.end

get_encoder_from_crtc.exit.if.then_crit_edge:     ; preds = %get_encoder_from_crtc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %get_encoder_from_crtc.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.52, i32 noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %get_encoder_from_crtc.exit
  %crtc_vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 24
  %7 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %crtc_vsync_end, align 2
  %conv = zext i16 %8 to i32
  %crtc_vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %9 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %crtc_vsync_start, align 4
  %conv1 = zext i16 %10 to i32
  %sub = sub nsw i32 %conv, %conv1
  %crtc_vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %11 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %crtc_vtotal, align 4
  %conv2 = zext i16 %12 to i32
  %sub5 = sub nsw i32 %conv2, %conv
  %add = add nsw i32 %sub5, %sub
  %add6 = add nsw i32 %add, 1
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %13 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %crtc_vdisplay, align 2
  %conv7 = zext i16 %14 to i32
  %add8 = add nsw i32 %add6, %conv7
  %tobool11.not = icmp eq ptr %stime, null
  br i1 %tobool11.not, label %if.end.if.end14_crit_edge, label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i64 @ktime_get() #11
  %15 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call13, ptr %stime, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  %call15 = tail call i32 @dpu_encoder_get_linecount(ptr noundef nonnull %encoder.0.le.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %add)
  %cmp.not = icmp sgt i32 %call15, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %add8)
  %cmp19 = icmp sgt i32 %call15, %add8
  %or.cond = select i1 %cmp.not, i1 %cmp19, i1 false
  %sub22 = select i1 %or.cond, i32 %conv2, i32 0
  %add6.neg = xor i32 %add, -1
  %.neg = add i32 %call15, %add6.neg
  %line.0 = sub i32 %.neg, %sub22
  %16 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %line.0, ptr %vpos, align 4
  %17 = ptrtoint ptr %hpos to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %hpos, align 4
  %tobool28.not = icmp eq ptr %etime, null
  br i1 %tobool28.not, label %if.end14.cleanup_crit_edge, label %if.then29

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then29:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call i64 @ktime_get() #11
  %18 = ptrtoint ptr %etime to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call30, ptr %etime, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end14.cleanup_crit_edge, %if.then
  %tobool.not59 = phi i1 [ true, %if.end14.cleanup_crit_edge ], [ true, %if.then29 ], [ false, %if.then ]
  ret i1 %tobool.not59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_plane_pipe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_rect_intersect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_plane_clear_multirect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_dpu_plane_virtual(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_plane_validate_multirect_v2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_core_perf_crtc_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_crtc_setup_lm_bounds(i32 noundef %drm_id, i32 noundef %mixer, ptr noundef %bounds) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_setup_lm_bounds, i32 0, i32 1), ptr blockaddress(@trace_dpu_crtc_setup_lm_bounds, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !261

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !259

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !300
  %call42 = tail call i32 @__traceiter_dpu_crtc_setup_lm_bounds(ptr noundef null, i32 noundef %drm_id, i32 noundef %mixer, ptr noundef %bounds) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !301
  %13 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !259

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_setup_lm_bounds, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_setup_lm_bounds, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_dpu_crtc_setup_lm_bounds.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_crtc_setup_lm_bounds.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 694, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
declare dso_local i32 @__traceiter_dpu_crtc_setup_lm_bounds(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_trigger_kickoff_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_plane_get_ctl_flush(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_crtc_setup_mixer(i32 noundef %crtc_id, i32 noundef %plane_id, ptr noundef %state, ptr noundef %pstate, i32 noundef %stage_idx, i32 noundef %sspp, i32 noundef %pixel_format, i64 noundef %modifier) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_setup_mixer, i32 0, i32 1), ptr blockaddress(@trace_dpu_crtc_setup_mixer, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !261

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !259

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !302
  %call42 = tail call i32 @__traceiter_dpu_crtc_setup_mixer(ptr noundef null, i32 noundef %crtc_id, i32 noundef %plane_id, ptr noundef %state, ptr noundef %pstate, i32 noundef %stage_idx, i32 noundef %sspp, i32 noundef %pixel_format, i64 noundef %modifier) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !303
  %13 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !259

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_setup_mixer, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_setup_mixer, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_dpu_crtc_setup_mixer.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_crtc_setup_mixer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 677, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
declare dso_local i32 @__traceiter_dpu_crtc_setup_mixer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_plane_set_error(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_plane_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_register_frame_event_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_crtc_frame_event_cb(ptr noundef %data, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %data, i32 0, i32 8
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %tobool1.not = icmp eq ptr %data, null
  br i1 %tobool1.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %base = getelementptr inbounds %struct.drm_crtc, ptr %data, i32 0, i32 5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ -1, %if.end.cond.end_crit_edge ]
  tail call fastcc void @trace_dpu_crtc_frame_event_cb(i32 noundef %cond, i32 noundef %event)
  %spin_lock = getelementptr inbounds %struct.dpu_crtc, ptr %data, i32 0, i32 16
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock) #11
  %frame_event_list = getelementptr inbounds %struct.dpu_crtc, ptr %data, i32 0, i32 15
  %8 = ptrtoint ptr %frame_event_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %frame_event_list, align 4
  %cmp13.not = icmp eq ptr %9, %frame_event_list
  %add.ptr18 = getelementptr i8, ptr %9, i32 -24
  %tobool22.not63 = icmp eq ptr %add.ptr18, null
  %tobool22.not = or i1 %cmp13.not, %tobool22.not63
  br i1 %tobool22.not, label %if.then27.critedge, label %if.then23

if.then23:                                        ; preds = %cond.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then23.list_del_init.exit_crit_edge

if.then23.list_del_init.exit_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then23.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock, i32 noundef %call5) #11
  %event35 = getelementptr i8, ptr %9, i32 16
  %18 = ptrtoint ptr %event35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %event, ptr %event35, align 8
  %crtc36 = getelementptr i8, ptr %9, i32 -4
  %19 = ptrtoint ptr %crtc36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data, ptr %crtc36, align 4
  %call37 = tail call i64 @ktime_get() #11
  %ts = getelementptr i8, ptr %9, i32 8
  %20 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call37, ptr %ts, align 8
  %worker = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 27, i32 %5, i32 2
  %21 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %worker, align 4
  %call38 = tail call zeroext i1 @kthread_queue_work(ptr noundef %22, ptr noundef nonnull %add.ptr18) #11
  br label %cleanup

if.then27.critedge:                               ; preds = %cond.end
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock, i32 noundef %call5) #11
  %call28 = tail call i32 @___ratelimit(ptr noundef nonnull @dpu_crtc_frame_event_cb._rs, ptr noundef nonnull @__func__.dpu_crtc_frame_event_cb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then27.critedge.cleanup_crit_edge, label %if.then30

if.then27.critedge.cleanup_crit_edge:             ; preds = %if.then27.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then30:                                        ; preds = %if.then27.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %base31 = getelementptr inbounds %struct.drm_crtc, ptr %data, i32 0, i32 5
  %23 = ptrtoint ptr %base31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base31, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, i32 noundef %24, i32 noundef %event) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.then27.critedge.cleanup_crit_edge, %list_del_init.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_crtc_enable(i32 noundef %drm_id, ptr noundef %crtc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_enable, i32 0, i32 1), ptr blockaddress(@trace_dpu_crtc_enable, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !261

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !259

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !304
  %call43 = tail call i32 @__traceiter_dpu_crtc_enable(ptr noundef null, i32 noundef %drm_id, i1 noundef zeroext true, ptr noundef %crtc) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %13 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !259

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_enable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_enable, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_dpu_crtc_enable.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_crtc_enable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.11) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_assign_crtc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_crtc_frame_event_cb(i32 noundef %drm_id, i32 noundef %event) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_cb, i32 0, i32 1), ptr blockaddress(@trace_dpu_crtc_frame_event_cb, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !261

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !259

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %call42 = tail call i32 @__traceiter_dpu_crtc_frame_event_cb(ptr noundef null, i32 noundef %drm_id, i32 noundef %event) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %13 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !259

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_cb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_cb, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_dpu_crtc_frame_event_cb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_crtc_frame_event_cb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 498, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_frame_event_cb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_enable(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_crtc_disable(i32 noundef %drm_id, ptr noundef %crtc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_disable, i32 0, i32 1), ptr blockaddress(@trace_dpu_crtc_disable, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !261

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !259

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %call43 = tail call i32 @__traceiter_dpu_crtc_disable(ptr noundef null, i32 noundef %drm_id, i1 noundef zeroext false, ptr noundef %crtc) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !309
  %13 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !259

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_disable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_disable, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_dpu_crtc_disable.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_crtc_disable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 742, ptr noundef nonnull @.str.11) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_crtc_disable_frame_pending(i32 noundef %drm_id, i32 noundef %frame_pending) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_disable_frame_pending, i32 0, i32 1), ptr blockaddress(@trace_dpu_crtc_disable_frame_pending, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !261

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !259

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !310
  %call42 = tail call i32 @__traceiter_dpu_crtc_disable_frame_pending(ptr noundef null, i32 noundef %drm_id, i32 noundef %frame_pending) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !311
  %13 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !259

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_disable_frame_pending, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_disable_frame_pending, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_dpu_crtc_disable_frame_pending.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_crtc_disable_frame_pending.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 761, ptr noundef nonnull @.str.11) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %31 = tail call i32 @llvm.read_register.i32(metadata !249) #11
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
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_disable(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_disable_frame_pending(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_get_linecount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !23, !24, !25, !27, !28, !30, !31, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60, !62, !63, !65, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !200, !202, !204, !206, !208, !209, !211, !213, !215, !217, !218, !219, !220, !222, !223, !224, !225, !226, !228, !229, !231, !232, !234, !235, !236, !237, !239, !241, !243, !245, !246, !248}
!llvm.named.register.sp = !{!249}
!llvm.module.flags = !{!250, !251, !252, !253, !254, !255, !256, !257}
!llvm.ident = !{!258}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 505, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 870, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 882, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 884, i32 3}
!8 = !{ptr @dpu_crtc_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1509, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1532, i32 47}
!13 = !{ptr @dpu_crtc_init.__key.6, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1535, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1537, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 207, i32 4}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 261, i32 1}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!24 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 265, i32 1}
!30 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 483, i32 3}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 257, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 106, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 743, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 696, i32 1}
!44 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!45 = !{ptr @init_completion.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../include/linux/completion.h", i32 87, i32 2}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 539, i32 2}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 541, i32 2}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 566, i32 3}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @dpu_crtc_frame_event_work._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @dpu_crtc_frame_event_work._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 499, i32 1}
!59 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 503, i32 1}
!62 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!63 = !{ptr @dpu_crtc_funcs, !64, !"dpu_crtc_funcs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1468, i32 36}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 917, i32 3}
!67 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @dpu_crtc_duplicate_state._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @dpu_crtc_duplicate_state._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 826, i32 2}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1446, i32 22}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1449, i32 22}
!76 = !{ptr @_dpu_debugfs_status_fops, !77, !"_dpu_debugfs_status_fops", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1419, i32 1}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1336, i32 16}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1339, i32 14}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1343, i32 17}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1357, i32 17}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1363, i32 18}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1367, i32 19}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1369, i32 16}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1371, i32 18}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1374, i32 16}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1376, i32 19}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1382, i32 19}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1387, i32 17}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1390, i32 17}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1393, i32 17}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1405, i32 4}
!108 = !{ptr @dpu_crtc_debugfs_state_fops, !109, !"dpu_crtc_debugfs_state_fops", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1436, i32 1}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1426, i32 16}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1427, i32 16}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1428, i32 16}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1430, i32 16}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1431, i32 16}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 115, i32 3}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 76, i32 24}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 78, i32 24}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 79, i32 24}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 92, i32 3}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 934, i32 17}
!132 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 935, i32 17}
!134 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 937, i32 18}
!136 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 170, i32 3}
!138 = !{ptr @dpu_crtc_helper_funcs, !139, !"dpu_crtc_helper_funcs", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1485, i32 43}
!140 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1073, i32 3}
!142 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1081, i32 2}
!144 = !{ptr @.str.55, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1104, i32 4}
!146 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @dpu_crtc_atomic_check._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @dpu_crtc_atomic_check._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1131, i32 4}
!151 = !{ptr @dpu_crtc_atomic_check._entry.57, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @dpu_crtc_atomic_check._entry_ptr.59, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1132, i32 4}
!155 = !{ptr @dpu_crtc_atomic_check._entry.60, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @dpu_crtc_atomic_check._entry_ptr.62, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1145, i32 5}
!159 = !{ptr @dpu_crtc_atomic_check._entry.63, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @dpu_crtc_atomic_check._entry_ptr.65, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.67, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1165, i32 4}
!163 = !{ptr @dpu_crtc_atomic_check._entry.66, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @dpu_crtc_atomic_check._entry_ptr.68, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1171, i32 5}
!167 = !{ptr @dpu_crtc_atomic_check._entry.69, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @dpu_crtc_atomic_check._entry_ptr.71, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1180, i32 5}
!171 = !{ptr @dpu_crtc_atomic_check._entry.72, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @dpu_crtc_atomic_check._entry_ptr.74, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1189, i32 3}
!175 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1194, i32 4}
!177 = !{ptr @dpu_crtc_atomic_check._entry.76, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @dpu_crtc_atomic_check._entry_ptr.78, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.80, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1207, i32 3}
!181 = !{ptr @dpu_crtc_atomic_check._entry.79, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @dpu_crtc_atomic_check._entry_ptr.81, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.83, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1249, i32 4}
!185 = !{ptr @dpu_crtc_atomic_check._entry.82, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @dpu_crtc_atomic_check._entry_ptr.84, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1255, i32 4}
!189 = !{ptr @dpu_crtc_atomic_check._entry.85, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @dpu_crtc_atomic_check._entry_ptr.87, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.89, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 1264, i32 4}
!193 = !{ptr @dpu_crtc_atomic_check._entry.88, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @dpu_crtc_atomic_check._entry_ptr.90, !192, !"_entry_ptr", i1 false, i1 false}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 679, i32 1}
!197 = distinct !{null, !196, !"__warned", i1 false, i1 false}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 723, i32 3}
!200 = !{ptr @.str.92, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 428, i32 2}
!202 = !{ptr @.str.93, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 455, i32 3}
!204 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 369, i32 3}
!206 = distinct !{null, !207, !"__already_done", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 632, i32 1}
!208 = distinct !{null, !207, !"__warned", i1 false, i1 false}
!209 = !{ptr @.str.95, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 311, i32 2}
!211 = !{ptr @.str.96, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 709, i32 3}
!213 = !{ptr @.str.97, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 768, i32 3}
!215 = !{ptr @.str.98, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 781, i32 3}
!217 = !{ptr @.str.99, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @dpu_crtc_atomic_flush._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @dpu_crtc_atomic_flush._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.100, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 614, i32 3}
!222 = !{ptr @dpu_crtc_frame_event_cb._rs, !221, !"_rs", i1 false, i1 false}
!223 = !{ptr @__func__.dpu_crtc_frame_event_cb, !221, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.101, !221, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!226 = distinct !{null, !227, !"__already_done", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 495, i32 1}
!228 = distinct !{null, !227, !"__warned", i1 false, i1 false}
!229 = distinct !{null, !230, !"__already_done", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 735, i32 1}
!231 = distinct !{null, !230, !"__warned", i1 false, i1 false}
!232 = !{ptr @.str.103, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 970, i32 3}
!234 = !{ptr @.str.104, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @dpu_crtc_disable._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @dpu_crtc_disable._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.105, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 839, i32 3}
!239 = !{ptr @.str.106, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 843, i32 2}
!241 = !{ptr @.str.107, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c", i32 847, i32 3}
!243 = distinct !{null, !244, !"__already_done", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 739, i32 1}
!245 = distinct !{null, !244, !"__warned", i1 false, i1 false}
!246 = distinct !{null, !247, !"__already_done", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 748, i32 1}
!248 = distinct !{null, !247, !"__warned", i1 false, i1 false}
!249 = !{!"sp"}
!250 = !{i32 1, !"wchar_size", i32 2}
!251 = !{i32 1, !"min_enum_size", i32 4}
!252 = !{i32 8, !"branch-target-enforcement", i32 0}
!253 = !{i32 8, !"sign-return-address", i32 0}
!254 = !{i32 8, !"sign-return-address-all", i32 0}
!255 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!256 = !{i32 7, !"uwtable", i32 1}
!257 = !{i32 7, !"frame-pointer", i32 2}
!258 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!259 = !{!"branch_weights", i32 2000, i32 1}
!260 = !{!"auto-init"}
!261 = !{i64 2148529651, i64 2148529656, i64 2148529669, i64 2148529713, i64 2148529747, i64 2148529768}
!262 = !{i64 2157807703}
!263 = !{i64 2157807914}
!264 = !{i64 2149526058}
!265 = !{i64 2149527094}
!266 = !{i64 2157828281}
!267 = !{i64 2157828504}
!268 = !{!"branch_weights", i32 1, i32 2000}
!269 = !{i64 2148790488}
!270 = !{i64 2148705773, i64 2148705805, i64 2148705834, i64 2148705868, i64 2148705899, i64 2148705922}
!271 = !{i64 2148790717}
!272 = !{i64 2157572969}
!273 = !{i64 2157573212}
!274 = !{i64 2158448482}
!275 = !{i64 2158448715}
!276 = !{i64 2158393366}
!277 = !{i64 2158393629}
!278 = !{i64 2148793529}
!279 = !{i64 2148708238, i64 2148708270, i64 2148708299, i64 2148708333, i64 2148708364, i64 2148708387}
!280 = !{i64 2148793758}
!281 = !{i64 2157791198}
!282 = !{i64 2157791417}
!283 = !{i64 2158196611}
!284 = !{i64 2158196850}
!285 = !{i64 2158214143}
!286 = !{i64 2158214398}
!287 = !{i64 1069007, i64 1069034}
!288 = !{i64 1069702, i64 1069729, i64 1069762, i64 1069783, i64 1069810, i64 1069836}
!289 = !{i8 0, i8 2}
!290 = !{!291}
!291 = distinct !{!291, !292, !"drm_plane_state_dest: %agg.result"}
!292 = distinct !{!292, !"drm_plane_state_dest"}
!293 = !{i64 2148705053, i64 2148705079, i64 2148705108, i64 2148705142, i64 2148705173, i64 2148705196}
!294 = !{!295}
!295 = distinct !{!295, !296, !"drm_plane_state_dest: %agg.result"}
!296 = distinct !{!296, !"drm_plane_state_dest"}
!297 = !{!298}
!298 = distinct !{!298, !299, !"drm_plane_state_dest: %agg.result"}
!299 = distinct !{!299, !"drm_plane_state_dest"}
!300 = !{i64 2158375427}
!301 = !{i64 2158375680}
!302 = !{i64 2158353202}
!303 = !{i64 2158353555}
!304 = !{i64 2158410675}
!305 = !{i64 2158410908}
!306 = !{i64 2158175430}
!307 = !{i64 2158175665}
!308 = !{i64 2158431601}
!309 = !{i64 2158431836}
!310 = !{i64 2158465650}
!311 = !{i64 2158465915}
