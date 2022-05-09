; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos-gsc/gsc-m2m.c_pt.bc'
source_filename = "../drivers/media/platform/exynos-gsc/gsc-m2m.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gsc_ctx = type { %struct.gsc_frame, %struct.gsc_frame, i32, i32, %struct.gsc_scaler, i32, i32, i32, i8, ptr, ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.gsc_ctrls, i8, i32 }
%struct.gsc_frame = type { i32, i32, %struct.v4l2_rect, [8 x i32], %struct.gsc_addr, ptr, i32, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.gsc_addr = type { i32, i32, i32 }
%struct.gsc_scaler = type { i32, i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gsc_ctrls = type { ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.gsc_dev = type { %struct.spinlock, %struct.mutex, ptr, ptr, i16, i32, [4 x ptr], ptr, %struct.wait_queue_head, %struct.gsc_m2m_device, i32, %struct.video_device, %struct.v4l2_device }
%struct.gsc_m2m_device = type { ptr, ptr, ptr, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.gsc_fmt = type { i32, i32, i32, i32, i32, i16, i16, [8 x i8], i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.gsc_variant = type { ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@gsc_m2m_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @gsc_m2m_poll, ptr @video_ioctl2, ptr null, ptr @gsc_m2m_mmap, ptr @gsc_m2m_open, ptr @gsc_m2m_release }, [60 x i8] zeroinitializer }, align 32
@gsc_m2m_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @gsc_m2m_querycap, ptr @gsc_m2m_enum_fmt, ptr null, ptr @gsc_m2m_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_m2m_g_fmt_mplane, ptr @gsc_m2m_g_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_m2m_s_fmt_mplane, ptr @gsc_m2m_s_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_m2m_try_fmt_mplane, ptr @gsc_m2m_try_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr @gsc_m2m_reqbufs, ptr @gsc_m2m_querybuf, ptr @gsc_m2m_qbuf, ptr @gsc_m2m_expbuf, ptr @gsc_m2m_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_m2m_streamon, ptr @gsc_m2m_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_m2m_g_selection, ptr @gsc_m2m_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s.%d:m2m\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos-gsc\00", [21 x i8] zeroinitializer }, align 32
@gsc_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @gsc_m2m_device_run, ptr null, ptr @gsc_m2m_job_abort }, [20 x i8] zeroinitializer }, align 32
@gsc_register_m2m_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 768, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to initialize v4l2-m2m device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gsc_register_m2m_device\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/platform/exynos-gsc/gsc-m2m.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gsc_register_m2m_device._entry_ptr = internal global ptr @gsc_register_m2m_device._entry, section ".printk_index", align 4
@gsc_register_m2m_device._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 775, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@gsc_register_m2m_device._entry_ptr.9 = internal global ptr @gsc_register_m2m_device._entry.7, section ".printk_index", align 4
@gsc_register_m2m_device.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos_gsc\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"gsc m2m driver registered as /dev/video%d\00", [54 x i8] zeroinitializer }, align 32
@gsc_m2m_open.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gsc_m2m_open\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pid: %d, state: 0x%lx\00", [42 x i8] zeroinitializer }, align 32
@gsc_m2m_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Failed to initialize m2m context\00", [61 x i8] zeroinitializer }, align 32
@gsc_m2m_open._entry_ptr = internal global ptr @gsc_m2m_open._entry, section ".printk_index", align 4
@gsc_m2m_open.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.12, ptr @.str.4, ptr @.str.15, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"gsc m2m driver is opened, ctx(0x%p)\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gsc_m2m_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @gsc_m2m_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @gsc_m2m_buf_prepare, ptr null, ptr null, ptr @gsc_m2m_start_streaming, ptr @gsc_m2m_stop_streaming, ptr @gsc_m2m_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@ctx_get_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Wrong buffer/video queue type (%d)\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx_get_frame\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/exynos-gsc/gsc-core.h\00", [51 x i8] zeroinitializer }, align 32
@ctx_get_frame._entry_ptr = internal global ptr @ctx_get_frame._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@gsc_m2m_buf_queue.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gsc_m2m_buf_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ctx: %p, ctx->state: 0x%x\00", [38 x i8] zeroinitializer }, align 32
@gsc_m2m_release.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gsc_m2m_release\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pid: %d, state: 0x%lx, refcnt= %d\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exynos-gsc gscaler\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@gsc_m2m_s_fmt_mplane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013queue (%d) busy\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gsc_m2m_s_fmt_mplane\00", [43 x i8] zeroinitializer }, align 32
@gsc_m2m_s_fmt_mplane._entry_ptr = internal global ptr @gsc_m2m_s_fmt_mplane._entry, section ".printk_index", align 4
@gsc_m2m_s_fmt_mplane.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"f_w: %d, f_h: %d\00", [47 x i8] zeroinitializer }, align 32
@gsc_m2m_s_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Out of scaler range\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gsc_m2m_s_selection\00", [44 x i8] zeroinitializer }, align 32
@gsc_m2m_s_selection._entry_ptr = internal global ptr @gsc_m2m_s_selection._entry, section ".printk_index", align 4
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"null hardware context\0A\00", [41 x i8] zeroinitializer }, align 32
@gsc_m2m_device_run.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gsc_m2m_device_run\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"gsc->m2m.ctx = 0x%p, current_ctx = 0x%p\00", [56 x i8] zeroinitializer }, align 32
@gsc_m2m_device_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013Wrong address\00", [16 x i8] zeroinitializer }, align 32
@gsc_m2m_device_run._entry_ptr = internal global ptr @gsc_m2m_device_run._entry, section ".printk_index", align 4
@gsc_m2m_device_run._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.32, ptr @.str.4, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013Scaler setup error\00", [43 x i8] zeroinitializer }, align 32
@gsc_m2m_device_run._entry_ptr.37 = internal global ptr @gsc_m2m_device_run._entry.35, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.40 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.41 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"gsc_m2m_fops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 728, i32 42 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"gsc_m2m_ioctl_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 555, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 760, i32 51 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 761, i32 6 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"gsc_m2m_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 737, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 768, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 774, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 779, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 617, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 650, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 658, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"gsc_m2m_qops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 275, i32 29 }
@___asan_gen_.116 = private unnamed_addr constant [48 x i8] c"../drivers/media/platform/exynos-gsc/gsc-core.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 489, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1163, i32 7 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 269, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 679, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 292, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 293, i32 49 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 336, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 361, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 544, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 152, i32 6 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 162, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 178, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [47 x i8] c"../drivers/media/platform/exynos-gsc/gsc-m2m.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 193, i32 4 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @ctx_get_frame._entry, ptr @ctx_get_frame._entry_ptr, ptr @gsc_m2m_device_run._entry, ptr @gsc_m2m_device_run._entry.35, ptr @gsc_m2m_device_run._entry_ptr, ptr @gsc_m2m_device_run._entry_ptr.37, ptr @gsc_m2m_open._entry, ptr @gsc_m2m_open._entry_ptr, ptr @gsc_m2m_s_fmt_mplane._entry, ptr @gsc_m2m_s_fmt_mplane._entry_ptr, ptr @gsc_m2m_s_selection._entry, ptr @gsc_m2m_s_selection._entry_ptr, ptr @gsc_register_m2m_device._entry, ptr @gsc_register_m2m_device._entry.7, ptr @gsc_register_m2m_device._entry_ptr, ptr @gsc_register_m2m_device._entry_ptr.9, ptr @gsc_m2m_fops, ptr @gsc_m2m_ioctl_ops, ptr @.str, ptr @.str.1, ptr @gsc_m2m_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @gsc_m2m_qops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_m2m_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_m2m_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_register_m2m_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_register_m2m_device._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_m2m_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_m2m_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx_get_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_m2m_s_fmt_mplane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_m2m_s_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_m2m_device_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_m2m_device_run._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_m2m_job_finish(ptr noundef readonly %ctx, i32 noundef %vb_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #8
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7
  %call.i32 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #8
  %tobool5.not = icmp eq ptr %call.i, null
  %tobool6.not = icmp eq ptr %call.i32, null
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %timestamp, align 8
  %timestamp9 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i32, i32 0, i32 5
  %6 = ptrtoint ptr %timestamp9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %timestamp9, align 8
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i32, i32 0, i32 3
  %timecode10 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %timecode, ptr %timecode10, i32 16)
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i32, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, -458753
  store i32 %and, ptr %flags, align 8
  %flags11 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags11, align 8
  %and12 = and i32 %11, 458752
  %or = or i32 %and12, %and
  store i32 %or, ptr %flags, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef %vb_state) #8
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i32, i32 noundef %vb_state) #8
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %12 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gsc_dev, align 4
  %m2m_dev = getelementptr inbounds %struct.gsc_dev, ptr %13, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_dev, align 4
  %16 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %15, ptr noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsc_register_m2m_device(ptr noundef %gsc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gsc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev1 = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %vdev = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 11
  %fops = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 11, i32 3
  %2 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @gsc_m2m_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 11, i32 24
  %3 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @gsc_m2m_ioctl_ops, ptr %ioctl_ops, align 4
  %release = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 11, i32 23
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @video_device_release_empty, ptr %release, align 8
  %lock = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 1
  %lock5 = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 11, i32 26
  %5 = ptrtoint ptr %lock5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %lock, ptr %lock5, align 8
  %vfl_dir = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 11, i32 14
  %6 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %vfl_dir, align 4
  %v4l2_dev = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 12
  %v4l2_dev8 = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 11, i32 7
  %7 = ptrtoint ptr %v4l2_dev8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %v4l2_dev, ptr %v4l2_dev8, align 4
  %device_caps = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 11, i32 4
  %8 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 67125248, ptr %device_caps, align 8
  %name = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 11, i32 12
  %id = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id, align 8
  %conv = zext i16 %10 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv)
  %driver_data.i.i = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 11, i32 5, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %gsc, ptr %driver_data.i.i, align 4
  %m2m = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 9
  %12 = ptrtoint ptr %m2m to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vdev, ptr %m2m, align 8
  %call13 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @gsc_m2m_ops) #8
  %m2m_dev = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call13, ptr %m2m_dev, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  %14 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_dev, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %17 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fops, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %do.body32, label %do.end29

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %dev30 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3) #11
  %21 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %22) #8
  br label %cleanup

do.body32:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_register_m2m_device.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_register_m2m_device, %if.then37)) #8
          to label %cleanup [label %if.then37], !srcloc !97

if.then37:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %num = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 11, i32 16
  %23 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num, align 4
  %conv39 = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_register_m2m_device.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.11, i32 noundef %conv39) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body32, %do.end29, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %do.end ], [ %call.i, %do.end29 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %do.body32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_unregister_m2m_device(ptr noundef %gsc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gsc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %m2m_dev = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %1) #8
  %vdev = getelementptr inbounds %struct.gsc_dev, ptr %gsc, i32 0, i32 11
  tail call void @video_unregister_device(ptr noundef %vdev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gsc_dev = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gsc_dev, align 4
  %lock = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %m2m_ctx = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %call1 = tail call i32 @v4l2_m2m_poll(ptr noundef %file, ptr noundef %5, ptr noundef %wait) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 8, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_mmap(ptr noundef %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gsc_dev = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gsc_dev, align 4
  %lock = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %m2m_ctx = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %call1 = tail call i32 @v4l2_m2m_mmap(ptr noundef %file, ptr noundef %5, ptr noundef %vma) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_m2m_open.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_m2m_open, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !97

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid.i, align 8
  %state = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_m2m_open.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.13, i32 noundef %7, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 1
  %call6 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 612) #12
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end9.cleanup.sink.split_crit_edge, label %if.end13

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end9
  %fh = getelementptr inbounds %struct.gsc_ctx, ptr %call7.i.i, i32 0, i32 11
  %m2m = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %m2m to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m, align 8
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %12) #8
  %call14 = tail call i32 @gsc_ctrls_create(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.error_fh_crit_edge

if.end13.error_fh_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_fh

if.end17:                                         ; preds = %if.end13
  %ctrl_handler = getelementptr inbounds %struct.gsc_ctx, ptr %call7.i.i, i32 0, i32 12
  %ctrl_handler19 = getelementptr inbounds %struct.gsc_ctx, ptr %call7.i.i, i32 0, i32 11, i32 2
  %13 = ptrtoint ptr %ctrl_handler19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ctrl_handler, ptr %ctrl_handler19, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %14 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #8
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %call7.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %gsc_dev, align 4
  %call22 = tail call ptr @get_format(i32 noundef 0) #8
  %fmt = getelementptr inbounds %struct.gsc_frame, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call22, ptr %fmt, align 4
  %call23 = tail call ptr @get_format(i32 noundef 0) #8
  %fmt24 = getelementptr inbounds %struct.gsc_ctx, ptr %call7.i.i, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %fmt24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call23, ptr %fmt24, align 4
  %state25 = getelementptr inbounds %struct.gsc_ctx, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %state25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %state25, align 8
  %flags = getelementptr inbounds %struct.gsc_ctx, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flags, align 4
  %in_path = getelementptr inbounds %struct.gsc_ctx, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %in_path to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %in_path, align 8
  %out_path = getelementptr inbounds %struct.gsc_ctx, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %out_path to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %out_path, align 4
  %m2m_dev = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_dev, align 4
  %call27 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %23, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #8
  %m2m_ctx = getelementptr inbounds %struct.gsc_ctx, ptr %call7.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call27, ptr %m2m_ctx, align 8
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end33, label %if.end38

do.end33:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #11
  %25 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_ctx, align 8
  %27 = ptrtoint ptr %26 to i32
  tail call void @gsc_ctrls_delete(ptr noundef nonnull %call7.i.i) #8
  tail call void @v4l2_fh_del(ptr noundef %fh) #8
  br label %error_fh

if.end38:                                         ; preds = %if.end17
  %refcnt = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 9, i32 3
  %28 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %refcnt, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %if.then40, label %if.end38.do.body43_crit_edge

if.end38.do.body43_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %state41 = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state41) #8
  br label %do.body43

do.body43:                                        ; preds = %if.then40, %if.end38.do.body43_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_m2m_open.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_m2m_open, %if.then55)) #8
          to label %cleanup.sink.split [label %if.then55], !srcloc !97

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_m2m_open.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.15, ptr noundef nonnull %call7.i.i) #8
  br label %cleanup.sink.split

error_fh:                                         ; preds = %do.end33, %if.end13.error_fh_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end13.error_fh_crit_edge ], [ %27, %do.end33 ]
  tail call void @v4l2_fh_exit(ptr noundef %fh) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %error_fh, %if.then55, %do.body43, %if.end9.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %do.body43 ], [ 0, %if.then55 ], [ %ret.0, %error_fh ], [ -12, %if.end9.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_release(ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -212
  %gsc_dev = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gsc_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_m2m_release.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_m2m_release, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !97

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid.i, align 8
  %state = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  %refcnt = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refcnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_m2m_release.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.23, i32 noundef %9, i32 noundef %11, i32 noundef %13) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %m2m_ctx = getelementptr i8, ptr %1, i32 -4
  %14 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %15) #8
  tail call void @gsc_ctrls_delete(ptr noundef %add.ptr) #8
  tail call void @v4l2_fh_del(ptr noundef %1) #8
  tail call void @v4l2_fh_exit(ptr noundef %1) #8
  %refcnt8 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 9, i32 3
  %16 = ptrtoint ptr %refcnt8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %refcnt8, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %refcnt8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp = icmp slt i32 %dec, 1
  br i1 %cmp, label %if.then9, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %state10 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state10) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end.if.end11_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_mmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_ctrls_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_format(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %src_vq, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 504)
  %2 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %3 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 19, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %drv_priv, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gsc_m2m_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %6 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %7 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 744, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %8 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16384, ptr %timestamp_flags, align 4
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %priv, i32 0, i32 9
  %9 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gsc_dev, align 4
  %lock = getelementptr inbounds %struct.gsc_dev, ptr %10, i32 0, i32 1
  %lock1 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %11 = ptrtoint ptr %lock1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lock, ptr %lock1, align 4
  %12 = load ptr, ptr %gsc_dev, align 4
  %pdev = getelementptr inbounds %struct.gsc_dev, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %15 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %dev3, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = getelementptr inbounds i8, ptr %dst_vq, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 504)
  %18 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 9, ptr %dst_vq, align 4
  %io_modes5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %19 = ptrtoint ptr %io_modes5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 19, ptr %io_modes5, align 4
  %drv_priv6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %20 = ptrtoint ptr %drv_priv6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %priv, ptr %drv_priv6, align 4
  %ops7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %21 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @gsc_m2m_qops, ptr %ops7, align 4
  %mem_ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %22 = ptrtoint ptr %mem_ops8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops8, align 4
  %buf_struct_size9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %23 = ptrtoint ptr %buf_struct_size9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 744, ptr %buf_struct_size9, align 4
  %timestamp_flags10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %24 = ptrtoint ptr %timestamp_flags10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16384, ptr %timestamp_flags10, align 4
  %25 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gsc_dev, align 4
  %lock12 = getelementptr inbounds %struct.gsc_dev, ptr %26, i32 0, i32 1
  %lock13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %27 = ptrtoint ptr %lock13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %lock12, ptr %lock13, align 4
  %28 = load ptr, ptr %gsc_dev, align 4
  %pdev15 = getelementptr inbounds %struct.gsc_dev, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev15, align 8
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %dev17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %31 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev16, ptr %dev17, align 4
  %call18 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_ctrls_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %ctx_get_frame.exit.thread [
    i32 10, label %entry.ctx_get_frame.exit_crit_edge
    i32 9, label %if.then2.i
  ]

entry.ctx_get_frame.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ctx_get_frame.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %d_frame.i = getelementptr inbounds %struct.gsc_ctx, ptr %1, i32 0, i32 1
  br label %ctx_get_frame.exit

ctx_get_frame.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %3) #11
  br label %if.then

ctx_get_frame.exit:                               ; preds = %if.then2.i, %entry.ctx_get_frame.exit_crit_edge
  %retval.0.i = phi ptr [ %d_frame.i, %if.then2.i ], [ %1, %entry.ctx_get_frame.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ctx_get_frame.exit.if.then_crit_edge, label %if.end

ctx_get_frame.exit.if.then_crit_edge:             ; preds = %ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %ctx_get_frame.exit.if.then_crit_edge, %ctx_get_frame.exit.thread
  %retval.0.i26 = phi ptr [ inttoptr (i32 -22 to ptr), %ctx_get_frame.exit.thread ], [ %retval.0.i, %ctx_get_frame.exit.if.then_crit_edge ]
  %5 = ptrtoint ptr %retval.0.i26 to i32
  br label %cleanup

if.end:                                           ; preds = %ctx_get_frame.exit
  %fmt = getelementptr inbounds %struct.gsc_frame, ptr %retval.0.i, i32 0, i32 5
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fmt, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %num_planes7 = getelementptr inbounds %struct.gsc_fmt, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %num_planes7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_planes7, align 4
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %num_planes, align 4
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt, align 4
  %num_planes927 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %num_planes927 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_planes927, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp29.not = icmp eq i16 %14, 0
  br i1 %cmp29.not, label %if.end5.cleanup_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end5.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gsc_frame, ptr %retval.0.i, i32 0, i32 3, i32 %i.030
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %arrayidx12 = getelementptr i32, ptr %sizes, i32 %i.030
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx12, align 4
  %inc = add nuw nsw i32 %i.030, 1
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fmt, align 4
  %num_planes9 = getelementptr inbounds %struct.gsc_fmt, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %num_planes9 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_planes9, align 4
  %conv10 = zext i16 %21 to i32
  %cmp = icmp ult i32 %inc, %conv10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %5, label %ctx_get_frame.exit.thread [
    i32 10, label %entry.ctx_get_frame.exit_crit_edge
    i32 9, label %if.then2.i
  ]

entry.ctx_get_frame.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ctx_get_frame.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %d_frame.i = getelementptr inbounds %struct.gsc_ctx, ptr %3, i32 0, i32 1
  br label %ctx_get_frame.exit

ctx_get_frame.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %5) #11
  br label %if.then

ctx_get_frame.exit:                               ; preds = %if.then2.i, %entry.ctx_get_frame.exit_crit_edge
  %retval.0.i = phi ptr [ %d_frame.i, %if.then2.i ], [ %3, %entry.ctx_get_frame.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ctx_get_frame.exit.if.then_crit_edge, label %if.end

ctx_get_frame.exit.if.then_crit_edge:             ; preds = %ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %ctx_get_frame.exit.if.then_crit_edge, %ctx_get_frame.exit.thread
  %retval.0.i59 = phi ptr [ inttoptr (i32 -22 to ptr), %ctx_get_frame.exit.thread ], [ %retval.0.i, %ctx_get_frame.exit.if.then_crit_edge ]
  %7 = ptrtoint ptr %retval.0.i59 to i32
  br label %cleanup

if.end:                                           ; preds = %ctx_get_frame.exit
  %8 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vb, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %switch.tableidx = add i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 13
  br i1 %12, label %switch.hole_check, label %if.end.for.cond.preheader_crit_edge

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %switch.hole_check.for.cond.preheader_crit_edge, %if.end.for.cond.preheader_crit_edge
  %fmt = getelementptr inbounds %struct.gsc_frame, ptr %retval.0.i, i32 0, i32 5
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fmt, align 4
  %num_planes60 = getelementptr inbounds %struct.gsc_fmt, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %num_planes60 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_planes60, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp3562.not = icmp eq i16 %16, 0
  br i1 %cmp3562.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %vb2_set_plane_payload.exit.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vb2_set_plane_payload.exit.for.body_crit_edge ]
  %17 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %i.063)
  %cmp.i56 = icmp ugt i32 %18, %i.063
  br i1 %cmp.i56, label %if.then.i, label %for.body.vb2_set_plane_payload.exit_crit_edge

for.body.vb2_set_plane_payload.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.gsc_frame, ptr %retval.0.i, i32 0, i32 3, i32 %i.063
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.063, i32 4
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp1.i = icmp ult i32 %22, %20
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b55.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !98

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %24, %if.then38.i ], [ %20, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.063, i32 3
  %25 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %for.body.vb2_set_plane_payload.exit_crit_edge
  %inc = add nuw nsw i32 %i.063, 1
  %26 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fmt, align 4
  %num_planes = getelementptr inbounds %struct.gsc_fmt, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %num_planes to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_planes, align 4
  %conv = zext i16 %29 to i32
  %cmp35 = icmp ult i32 %inc, %conv
  br i1 %cmp35, label %vb2_set_plane_payload.exit.for.body_crit_edge, label %vb2_set_plane_payload.exit.cleanup_crit_edge

vb2_set_plane_payload.exit.cleanup_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

vb2_set_plane_payload.exit.for.body_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 5483, %switch.maskindex
  %30 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %switch.lobit.not = icmp eq i16 %30, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.cond.preheader_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check.for.cond.preheader_crit_edge:   ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %vb2_set_plane_payload.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %switch.hole_check.cleanup_crit_edge ], [ 0, %vb2_set_plane_payload.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gsc_dev, align 4
  %pdev = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.pm_runtime_resume_and_get.exit_crit_edge

entry.pm_runtime_resume_and_get.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_resume_and_get.exit

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !100
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_resume_and_get.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !101
  br label %pm_runtime_resume_and_get.exit

pm_runtime_resume_and_get.exit:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, %entry.pm_runtime_resume_and_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsc_m2m_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  tail call fastcc void @__gsc_m2m_job_abort(ptr noundef %1)
  %m2m_ctx.i = getelementptr inbounds %struct.gsc_ctx, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx.i, align 4
  %num_rdy.i17.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %num_rdy.i17.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_rdy.i17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not18.i = icmp eq i8 %5, 0
  br i1 %cmp.not18.i, label %entry.while.cond3.preheader.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.cond3.preheader.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond3.preheader.i

while.cond3.preheader.i:                          ; preds = %while.body.i.while.cond3.preheader.i_crit_edge, %entry.while.cond3.preheader.i_crit_edge
  %6 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx.i, align 4
  %num_rdy.i1419.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %num_rdy.i1419.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_rdy.i1419.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp6.not20.i = icmp eq i8 %9, 0
  br i1 %cmp6.not20.i, label %while.cond3.preheader.i.__gsc_m2m_cleanup_queue.exit_crit_edge, label %while.cond3.preheader.i.while.body7.i_crit_edge

while.cond3.preheader.i.while.body7.i_crit_edge:  ; preds = %while.cond3.preheader.i
  br label %while.body7.i

while.cond3.preheader.i.__gsc_m2m_cleanup_queue.exit_crit_edge: ; preds = %while.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__gsc_m2m_cleanup_queue.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %10 = phi ptr [ %12, %while.body.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i.i) #8
  tail call void @vb2_buffer_done(ptr noundef %call.i.i, i32 noundef 6) #8
  %11 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_ctx.i, align 4
  %num_rdy.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %12, i32 0, i32 8, i32 3
  %13 = ptrtoint ptr %num_rdy.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_rdy.i.i, align 4
  %cmp.not.i = icmp eq i8 %14, 0
  br i1 %cmp.not.i, label %while.body.i.while.cond3.preheader.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.while.cond3.preheader.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond3.preheader.i

while.body7.i:                                    ; preds = %while.body7.i.while.body7.i_crit_edge, %while.cond3.preheader.i.while.body7.i_crit_edge
  %15 = phi ptr [ %17, %while.body7.i.while.body7.i_crit_edge ], [ %7, %while.cond3.preheader.i.while.body7.i_crit_edge ]
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %15, i32 0, i32 7
  %call.i16.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.i) #8
  tail call void @vb2_buffer_done(ptr noundef %call.i16.i, i32 noundef 6) #8
  %16 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx.i, align 4
  %num_rdy.i14.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %17, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %num_rdy.i14.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_rdy.i14.i, align 4
  %cmp6.not.i = icmp eq i8 %19, 0
  br i1 %cmp6.not.i, label %while.body7.i.__gsc_m2m_cleanup_queue.exit_crit_edge, label %while.body7.i.while.body7.i_crit_edge

while.body7.i.while.body7.i_crit_edge:            ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body7.i

while.body7.i.__gsc_m2m_cleanup_queue.exit_crit_edge: ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__gsc_m2m_cleanup_queue.exit

__gsc_m2m_cleanup_queue.exit:                     ; preds = %while.body7.i.__gsc_m2m_cleanup_queue.exit_crit_edge, %while.cond3.preheader.i.__gsc_m2m_cleanup_queue.exit_crit_edge
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gsc_dev, align 4
  %pdev = getelementptr inbounds %struct.gsc_dev, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsc_m2m_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_m2m_buf_queue.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_m2m_buf_queue, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !97

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.gsc_ctx, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_m2m_buf_queue.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.21, ptr noundef %3, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %m2m_ctx = getelementptr inbounds %struct.gsc_ctx, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %do.end.if.end8_crit_edge, label %if.then6

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_m2m_buf_queue(ptr noundef nonnull %7, ptr noundef %vb) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__gsc_m2m_job_abort(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev.i = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev.i, align 4
  %m2m_dev.i = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev.i, align 4
  %call.i = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %3) #8
  %state.i = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp ne i32 %6, 0
  %cmp.not.i = icmp eq ptr %call.i, %ctx
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %gsc_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gsc_dev.i, align 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #8
  %state5.i.i = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 6
  %9 = ptrtoint ptr %state5.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state5.i.i, align 4
  %or.i.i = or i32 %10, 64
  store i32 %or.i.i, ptr %state5.i.i, align 4
  %11 = ptrtoint ptr %gsc_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gsc_dev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call2.i.i) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 40) #8
  %13 = ptrtoint ptr %gsc_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gsc_dev.i, align 4
  %call2.i62.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #8
  %15 = ptrtoint ptr %state5.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state5.i.i, align 4
  %and.i.i = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp5.i.not.i = icmp eq i32 %and.i.i, 0
  %17 = ptrtoint ptr %gsc_dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gsc_dev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %call2.i62.i) #8
  br i1 %cmp5.i.not.i, label %if.end.i.lor.lhs.false_crit_edge, label %if.then14.i

if.end.i.lor.lhs.false_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.then14.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %19 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %irq_queue.i = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %if.then14.i
  %__ret15.0.i = phi i32 [ 10, %if.then14.i ], [ %call36.i, %cleanup.i ]
  %call16.i = call i32 @prepare_to_wait_event(ptr noundef %irq_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #8
  %20 = ptrtoint ptr %gsc_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gsc_dev.i, align 4
  %call2.i64.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #8
  %22 = ptrtoint ptr %state5.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state5.i.i, align 4
  %and.i66.i = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66.i)
  %cmp5.i67.not.i = icmp eq i32 %and.i66.i, 0
  %24 = ptrtoint ptr %gsc_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gsc_dev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %call2.i64.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.0.i)
  %tobool23.not.i = icmp eq i32 %__ret15.0.i, 0
  %26 = select i1 %cmp5.i67.not.i, i1 %tobool23.not.i, i1 false
  %__ret15.1.i = select i1 %26, i32 1, i32 %__ret15.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.1.i)
  %tobool29.not.i = icmp eq i32 %__ret15.1.i, 0
  %27 = select i1 %cmp5.i67.not.i, i1 true, i1 %tobool29.not.i
  br i1 %27, label %if.end39.i, label %cleanup.i

cleanup.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %call36.i = call i32 @schedule_timeout(i32 noundef %__ret15.1.i) #8
  br label %for.cond.i

if.end39.i:                                       ; preds = %for.cond.i
  call void @finish_wait(ptr noundef %irq_queue.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %28 = zext i32 %__ret15.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %__ret15.1.i, label %if.end39.i.lor.lhs.false_crit_edge [
    i32 -110, label %if.end39.i.if.then_crit_edge
    i32 0, label %if.end39.i.if.then_crit_edge10
  ]

if.end39.i.if.then_crit_edge10:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end39.i.if.then_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end39.i.lor.lhs.false_crit_edge:               ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end39.i.lor.lhs.false_crit_edge, %if.end.i.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %state = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 6
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state, align 4
  %and = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %if.end39.i.if.then_crit_edge, %if.end39.i.if.then_crit_edge10
  %31 = ptrtoint ptr %gsc_dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gsc_dev.i, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #8
  %state5.i = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 6
  %33 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state5.i, align 4
  %and.i = and i32 %34, -193
  store i32 %and.i, ptr %state5.i, align 4
  %35 = ptrtoint ptr %gsc_dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gsc_dev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %call2.i) #8
  call void @gsc_m2m_job_finish(ptr noundef %ctx, i32 noundef 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr i8, ptr %fh, i32 -8
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.1, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.24, i32 noundef 32) #8
  %pdev = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gsc_enum_fmt(ptr noundef %f) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_g_fmt_mplane(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fh, i32 -212
  %call = tail call i32 @gsc_g_fmt_mplane(ptr noundef %add.ptr, ptr noundef %f) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_s_fmt_mplane(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fh, i32 -212
  %call.i = tail call i32 @gsc_try_fmt_mplane(ptr noundef %add.ptr, ptr noundef %f) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %m2m_ctx = getelementptr i8, ptr %fh, i32 -4
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call1 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #8
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call1, i32 0, i32 28
  %4 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  %5 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f, align 4
  br i1 %tobool.i, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %6) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %6, label %if.else [
    i32 2, label %if.end7.if.end30_crit_edge
    i32 10, label %if.end7.if.end30_crit_edge104
    i32 3, label %if.end7.if.end30_crit_edge105
    i32 8, label %if.end7.if.end30_crit_edge106
    i32 5, label %if.end7.if.end30_crit_edge107
    i32 7, label %if.end7.if.end30_crit_edge108
    i32 12, label %if.end7.if.end30_crit_edge109
    i32 14, label %if.end7.if.end30_crit_edge110
  ]

if.end7.if.end30_crit_edge110:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end7.if.end30_crit_edge109:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end7.if.end30_crit_edge108:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end7.if.end30_crit_edge107:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end7.if.end30_crit_edge106:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end7.if.end30_crit_edge105:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end7.if.end30_crit_edge104:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end7.if.end30_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %d_frame = getelementptr i8, ptr %fh, i32 -132
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end7.if.end30_crit_edge, %if.end7.if.end30_crit_edge104, %if.end7.if.end30_crit_edge105, %if.end7.if.end30_crit_edge106, %if.end7.if.end30_crit_edge107, %if.end7.if.end30_crit_edge108, %if.end7.if.end30_crit_edge109, %if.end7.if.end30_crit_edge110
  %frame.0 = phi ptr [ %d_frame, %if.else ], [ %add.ptr, %if.end7.if.end30_crit_edge ], [ %add.ptr, %if.end7.if.end30_crit_edge104 ], [ %add.ptr, %if.end7.if.end30_crit_edge105 ], [ %add.ptr, %if.end7.if.end30_crit_edge106 ], [ %add.ptr, %if.end7.if.end30_crit_edge107 ], [ %add.ptr, %if.end7.if.end30_crit_edge108 ], [ %add.ptr, %if.end7.if.end30_crit_edge109 ], [ %add.ptr, %if.end7.if.end30_crit_edge110 ]
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %call31 = tail call ptr @find_fmt(ptr noundef %pixelformat, ptr noundef null, i32 noundef 0) #8
  %fmt32 = getelementptr inbounds %struct.gsc_frame, ptr %frame.0, i32 0, i32 5
  %8 = ptrtoint ptr %fmt32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call31, ptr %fmt32, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %colorspace to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %colorspace, align 1
  %colorspace33 = getelementptr inbounds %struct.gsc_frame, ptr %frame.0, i32 0, i32 6
  %11 = ptrtoint ptr %colorspace33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %colorspace33, align 4
  %tobool35.not = icmp eq ptr %call31, null
  br i1 %tobool35.not, label %if.end30.cleanup_crit_edge, label %for.cond.preheader

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end30
  %12 = ptrtoint ptr %fmt32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt32, align 4
  %num_planes100 = getelementptr inbounds %struct.gsc_fmt, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %num_planes100 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_planes100, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp39102.not = icmp eq i16 %15, 0
  br i1 %cmp39102.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0103 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.0103
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %arrayidx, align 1
  %arrayidx41 = getelementptr %struct.gsc_frame, ptr %frame.0, i32 0, i32 3, i32 %i.0103
  %18 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx41, align 4
  %inc = add nuw nsw i32 %i.0103, 1
  %19 = ptrtoint ptr %fmt32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fmt32, align 4
  %num_planes = getelementptr inbounds %struct.gsc_fmt, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %num_planes to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_planes, align 4
  %conv = zext i16 %22 to i32
  %cmp39 = icmp ult i32 %inc, %conv
  br i1 %cmp39, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %23 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %fmt, align 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %height, align 1
  tail call void @gsc_set_frame_size(ptr noundef %frame.0, i32 noundef %24, i32 noundef %26) #8
  %27 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %28)
  %cmp43 = icmp eq i32 %28, 9
  %gsc_dev.i = getelementptr i8, ptr %fh, i32 -8
  %29 = ptrtoint ptr %gsc_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gsc_dev.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #8
  %state5.i = getelementptr i8, ptr %fh, i32 -20
  %31 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state5.i, align 4
  %. = select i1 %cmp43, i32 5, i32 3
  %or.i = or i32 %32, %.
  store i32 %or.i, ptr %state5.i, align 4
  %33 = ptrtoint ptr %gsc_dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gsc_dev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %call2.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_m2m_s_fmt_mplane.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_m2m_s_fmt_mplane, %if.then54)) #8
          to label %cleanup [label %if.then54], !srcloc !97

if.then54:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %frame.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %frame.0, align 4
  %f_height = getelementptr inbounds %struct.gsc_frame, ptr %frame.0, i32 0, i32 1
  %37 = ptrtoint ptr %f_height to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %f_height, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_m2m_s_fmt_mplane.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.28, i32 noundef %36, i32 noundef %38) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %for.end, %if.end30.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ], [ 0, %if.then54 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_try_fmt_mplane(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fh, i32 -212
  %call = tail call i32 @gsc_try_fmt_mplane(ptr noundef %add.ptr, ptr noundef %f) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_reqbufs(ptr noundef %file, ptr nocapture noundef readonly %fh, ptr noundef %reqbufs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr i8, ptr %fh, i32 -8
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %type = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %reqbufs, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp eq i32 %3, 10
  %variant = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant, align 4
  %in_buf_cnt = getelementptr inbounds %struct.gsc_variant, ptr %5, i32 0, i32 3
  %out_buf_cnt = getelementptr inbounds %struct.gsc_variant, ptr %5, i32 0, i32 4
  %cond.in.in = select i1 %cmp, ptr %in_buf_cnt, ptr %out_buf_cnt
  %6 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %6)
  %cond.in = load i16, ptr %cond.in.in, align 2
  %cond = zext i16 %cond.in to i32
  %7 = ptrtoint ptr %reqbufs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reqbufs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %cond)
  %cmp3 = icmp ugt i32 %8, %cond
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %m2m_ctx = getelementptr i8, ptr %fh, i32 -4
  %9 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_ctx, align 4
  %call = tail call i32 @v4l2_m2m_reqbufs(ptr noundef %file, ptr noundef %10, ptr noundef %reqbufs) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_querybuf(ptr noundef %file, ptr nocapture noundef readonly %fh, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr i8, ptr %fh, i32 -4
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %call = tail call i32 @v4l2_m2m_querybuf(ptr noundef %file, ptr noundef %1, ptr noundef %buf) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_qbuf(ptr noundef %file, ptr nocapture noundef readonly %fh, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr i8, ptr %fh, i32 -4
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %call = tail call i32 @v4l2_m2m_qbuf(ptr noundef %file, ptr noundef %1, ptr noundef %buf) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_expbuf(ptr noundef %file, ptr nocapture noundef readonly %fh, ptr noundef %eb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr i8, ptr %fh, i32 -4
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %call = tail call i32 @v4l2_m2m_expbuf(ptr noundef %file, ptr noundef %1, ptr noundef %eb) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_dqbuf(ptr noundef %file, ptr nocapture noundef readonly %fh, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr i8, ptr %fh, i32 -4
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %call = tail call i32 @v4l2_m2m_dqbuf(ptr noundef %file, ptr noundef %1, ptr noundef %buf) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_streamon(ptr noundef %file, ptr nocapture noundef readonly %fh, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %type, label %if.else [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge35
    i32 3, label %entry.if.then_crit_edge36
    i32 8, label %entry.if.then_crit_edge37
    i32 5, label %entry.if.then_crit_edge38
    i32 7, label %entry.if.then_crit_edge39
    i32 12, label %entry.if.then_crit_edge40
    i32 14, label %entry.if.then_crit_edge41
  ]

entry.if.then_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge35, %entry.if.then_crit_edge36, %entry.if.then_crit_edge37, %entry.if.then_crit_edge38, %entry.if.then_crit_edge39, %entry.if.then_crit_edge40, %entry.if.then_crit_edge41
  %gsc_dev.i = getelementptr i8, ptr %fh, i32 -8
  %1 = ptrtoint ptr %gsc_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gsc_dev.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %state.i = getelementptr i8, ptr %fh, i32 -20
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp5.i.not = icmp eq i32 %and.i, 0
  %5 = ptrtoint ptr %gsc_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gsc_dev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call2.i) #8
  br i1 %cmp5.i.not, label %if.then.cleanup_crit_edge, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %gsc_dev.i30 = getelementptr i8, ptr %fh, i32 -8
  %7 = ptrtoint ptr %gsc_dev.i30 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gsc_dev.i30, align 4
  %call2.i31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #8
  %state.i32 = getelementptr i8, ptr %fh, i32 -20
  %9 = ptrtoint ptr %state.i32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i32, align 4
  %and.i33 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %cmp5.i34.not = icmp eq i32 %and.i33, 0
  %11 = ptrtoint ptr %gsc_dev.i30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gsc_dev.i30, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call2.i31) #8
  br i1 %cmp5.i34.not, label %if.else.cleanup_crit_edge, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.then.if.end18_crit_edge
  %m2m_ctx = getelementptr i8, ptr %fh, i32 -4
  %13 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx, align 4
  %call19 = tail call i32 @v4l2_m2m_streamon(ptr noundef %file, ptr noundef %14, i32 noundef %type) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end18 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_streamoff(ptr noundef %file, ptr nocapture noundef readonly %fh, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr i8, ptr %fh, i32 -4
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %call = tail call i32 @v4l2_m2m_streamoff(ptr noundef %file, ptr noundef %1, i32 noundef %type) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_g_selection(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr nocapture noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %ctx_get_frame.exit.thread, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ctx_get_frame.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %ctx_get_frame.exit.thread, %entry.cleanup_crit_edge
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_m2m_s_selection(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr nocapture noundef %s) #0 align 64 {
entry:
  %sel = alloca %struct.v4l2_selection, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr i8, ptr %fh, i32 -8
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %variant1 = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sel) #8
  %4 = call ptr @memcpy(ptr %sel, ptr %s, i32 64)
  %5 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s, align 4
  %.off = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %fh, i32 -212
  %call = call i32 @gsc_try_selection(ptr noundef %add.ptr, ptr noundef nonnull %sel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.if.end12_crit_edge, label %land.lhs.true7

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true7:                                   ; preds = %if.end5
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %r8 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %9 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %r, align 4
  %11 = ptrtoint ptr %r8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %r8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i = icmp slt i32 %10, %12
  br i1 %cmp.i, label %land.lhs.true7.cleanup_crit_edge, label %lor.lhs.false.i

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.lhs.true7
  %top.i = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %top.i, align 4
  %top2.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %top2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %top2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp3.i = icmp slt i32 %14, %16
  br i1 %cmp3.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %width.i = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width.i, align 4
  %add.i = add i32 %18, %10
  %width6.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %width6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width6.i, align 4
  %add7.i = add i32 %20, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add7.i)
  %cmp8.i = icmp ugt i32 %add.i, %add7.i
  br i1 %cmp8.i, label %if.end.i.cleanup_crit_edge, label %is_rectangle_enclosed.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_rectangle_enclosed.exit:                       ; preds = %if.end.i
  %height.i = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height.i, align 4
  %add12.i = add i32 %22, %14
  %height14.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %height14.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height14.i, align 4
  %add15.i = add i32 %24, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %add15.i)
  %cmp16.i.not = icmp ugt i32 %add12.i, %add15.i
  br i1 %cmp16.i.not, label %is_rectangle_enclosed.exit.cleanup_crit_edge, label %is_rectangle_enclosed.exit.if.end12_crit_edge

is_rectangle_enclosed.exit.if.end12_crit_edge:    ; preds = %is_rectangle_enclosed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

is_rectangle_enclosed.exit.cleanup_crit_edge:     ; preds = %is_rectangle_enclosed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %is_rectangle_enclosed.exit.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %and14 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end22_crit_edge, label %land.lhs.true16

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true16:                                  ; preds = %if.end12
  %r17 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %r18 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %25 = ptrtoint ptr %r17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %r17, align 4
  %27 = ptrtoint ptr %r18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %r18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.i92 = icmp slt i32 %26, %28
  br i1 %cmp.i92, label %land.lhs.true16.cleanup_crit_edge, label %lor.lhs.false.i96

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i96:                                ; preds = %land.lhs.true16
  %top.i93 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %top.i93 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %top.i93, align 4
  %top2.i94 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %top2.i94 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %top2.i94, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp3.i95 = icmp slt i32 %30, %32
  br i1 %cmp3.i95, label %lor.lhs.false.i96.cleanup_crit_edge, label %if.end.i102

lor.lhs.false.i96.cleanup_crit_edge:              ; preds = %lor.lhs.false.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i102:                                      ; preds = %lor.lhs.false.i96
  %width.i97 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %width.i97 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %width.i97, align 4
  %add.i98 = add i32 %34, %26
  %width6.i99 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %width6.i99 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width6.i99, align 4
  %add7.i100 = add i32 %36, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i98, i32 %add7.i100)
  %cmp8.i101 = icmp ugt i32 %add.i98, %add7.i100
  br i1 %cmp8.i101, label %if.end.i102.cleanup_crit_edge, label %is_rectangle_enclosed.exit111

if.end.i102.cleanup_crit_edge:                    ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_rectangle_enclosed.exit111:                    ; preds = %if.end.i102
  %height.i103 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %height.i103 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height.i103, align 4
  %add12.i104 = add i32 %38, %30
  %height14.i105 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %height14.i105 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height14.i105, align 4
  %add15.i106 = add i32 %40, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i104, i32 %add15.i106)
  %cmp16.i107.not = icmp ugt i32 %add12.i104, %add15.i106
  br i1 %cmp16.i107.not, label %is_rectangle_enclosed.exit111.cleanup_crit_edge, label %is_rectangle_enclosed.exit111.if.end22_crit_edge

is_rectangle_enclosed.exit111.if.end22_crit_edge: ; preds = %is_rectangle_enclosed.exit111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

is_rectangle_enclosed.exit111.cleanup_crit_edge:  ; preds = %is_rectangle_enclosed.exit111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %is_rectangle_enclosed.exit111.if.end22_crit_edge, %if.end12.if.end22_crit_edge
  %r23 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %r24 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %41 = call ptr @memcpy(ptr %r23, ptr %r24, i32 16)
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %42 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %target, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %43, label %if.end22.cleanup_crit_edge [
    i32 258, label %if.end22.sw.epilog_crit_edge
    i32 257, label %if.end22.sw.epilog_crit_edge118
    i32 256, label %if.end22.sw.epilog_crit_edge119
    i32 2, label %if.end22.sw.bb25_crit_edge
    i32 0, label %if.end22.sw.bb25_crit_edge120
    i32 1, label %if.end22.sw.bb25_crit_edge121
  ]

if.end22.sw.bb25_crit_edge121:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

if.end22.sw.bb25_crit_edge120:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

if.end22.sw.bb25_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

if.end22.sw.epilog_crit_edge119:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end22.sw.epilog_crit_edge118:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb25:                                          ; preds = %if.end22.sw.bb25_crit_edge, %if.end22.sw.bb25_crit_edge120, %if.end22.sw.bb25_crit_edge121
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %if.end22.sw.epilog_crit_edge, %if.end22.sw.epilog_crit_edge118, %if.end22.sw.epilog_crit_edge119
  %45 = phi i32 [ -132, %sw.bb25 ], [ -212, %if.end22.sw.epilog_crit_edge ], [ -212, %if.end22.sw.epilog_crit_edge118 ], [ -212, %if.end22.sw.epilog_crit_edge119 ]
  %46 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gsc_dev, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %47) #8
  %state.i = getelementptr i8, ptr %fh, i32 -20
  %48 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %state.i, align 4
  %and.i = and i32 %49, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 6
  %50 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gsc_dev, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %call2.i) #8
  br i1 %cmp5.i, label %if.then27, label %sw.epilog.if.end60_crit_edge

sw.epilog.if.end60_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then27:                                        ; preds = %sw.epilog
  %52 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %53)
  %cmp29 = icmp eq i32 %53, 10
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %56 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height, align 4
  %width34 = getelementptr i8, ptr %fh, i32 -116
  %58 = ptrtoint ptr %width34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %width34, align 4
  %height37 = getelementptr i8, ptr %fh, i32 -112
  %60 = ptrtoint ptr %height37 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %height37, align 4
  %gsc_ctrls = getelementptr i8, ptr %fh, i32 376
  %62 = ptrtoint ptr %gsc_ctrls to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %gsc_ctrls, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %63, i32 0, i32 22
  %64 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val, align 4
  %out_path = getelementptr i8, ptr %fh, i32 -48
  %66 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %out_path, align 4
  %call38 = call i32 @gsc_check_scaler_ratio(ptr noundef %3, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %65, i32 noundef %67) #8
  br label %if.end54

if.else:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %width41 = getelementptr i8, ptr %fh, i32 -196
  %68 = ptrtoint ptr %width41 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %width41, align 4
  %height44 = getelementptr i8, ptr %fh, i32 -192
  %70 = ptrtoint ptr %height44 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %height44, align 4
  %width46 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %72 = ptrtoint ptr %width46 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %width46, align 4
  %height48 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %74 = ptrtoint ptr %height48 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %height48, align 4
  %gsc_ctrls49 = getelementptr i8, ptr %fh, i32 376
  %76 = ptrtoint ptr %gsc_ctrls49 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %gsc_ctrls49, align 4
  %val51 = getelementptr inbounds %struct.v4l2_ctrl, ptr %77, i32 0, i32 22
  %78 = ptrtoint ptr %val51 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val51, align 4
  %out_path52 = getelementptr i8, ptr %fh, i32 -48
  %80 = ptrtoint ptr %out_path52 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %out_path52, align 4
  %call53 = call i32 @gsc_check_scaler_ratio(ptr noundef %3, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %79, i32 noundef %81) #8
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then30
  %ret.0 = phi i32 [ %call38, %if.then30 ], [ %call53, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool55.not = icmp eq i32 %ret.0, 0
  br i1 %tobool55.not, label %if.end54.if.end60_crit_edge, label %do.end

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

do.end:                                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #11
  br label %cleanup

if.end60:                                         ; preds = %if.end54.if.end60_crit_edge, %sw.epilog.if.end60_crit_edge
  %82 = getelementptr i8, ptr %fh, i32 %45
  %crop61 = getelementptr inbounds %struct.gsc_frame, ptr %82, i32 0, i32 2
  %83 = call ptr @memcpy(ptr %crop61, ptr %r24, i32 16)
  %84 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %gsc_dev, align 4
  %call2.i113 = call i32 @_raw_spin_lock_irqsave(ptr noundef %85) #8
  %86 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %state.i, align 4
  %or.i = or i32 %87, 1
  store i32 %or.i, ptr %state.i, align 4
  %88 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %gsc_dev, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %89, i32 noundef %call2.i113) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end, %if.end22.cleanup_crit_edge, %is_rectangle_enclosed.exit111.cleanup_crit_edge, %if.end.i102.cleanup_crit_edge, %lor.lhs.false.i96.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %is_rectangle_enclosed.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end60 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -34, %is_rectangle_enclosed.exit.cleanup_crit_edge ], [ -34, %is_rectangle_enclosed.exit111.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -34, %lor.lhs.false.i.cleanup_crit_edge ], [ -34, %land.lhs.true7.cleanup_crit_edge ], [ -34, %if.end.i.cleanup_crit_edge ], [ -34, %lor.lhs.false.i96.cleanup_crit_edge ], [ -34, %land.lhs.true16.cleanup_crit_edge ], [ -34, %if.end.i102.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sel) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_enum_fmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_g_fmt_mplane(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_fmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_set_frame_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_try_fmt_mplane(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_reqbufs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_querybuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_expbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_dqbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_streamoff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_try_selection(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_check_scaler_ratio(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsc_m2m_device_run(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !102

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 152, i32 noundef 9, ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %state = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #8
  %ctx32 = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %ctx32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx32, align 8
  %cmp33.not = icmp eq ptr %3, %priv
  br i1 %cmp33.not, label %if.end23.if.end55_crit_edge, label %do.body36

if.end23.if.end55_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.body36:                                        ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_m2m_device_run.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_m2m_device_run, %if.then46)) #8
          to label %do.end51 [label %if.then46], !srcloc !97

if.then46:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %ctx32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx32, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_m2m_device_run.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.33, ptr noundef %5, ptr noundef nonnull %priv) #8
  br label %do.end51

do.end51:                                         ; preds = %if.then46, %do.body36
  %state52 = getelementptr inbounds %struct.gsc_ctx, ptr %priv, i32 0, i32 6
  %6 = ptrtoint ptr %state52 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state52, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %state52, align 4
  %8 = ptrtoint ptr %ctx32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %priv, ptr %ctx32, align 8
  br label %if.end55

if.end55:                                         ; preds = %do.end51, %if.end23.if.end55_crit_edge
  %state56 = getelementptr inbounds %struct.gsc_ctx, ptr %priv, i32 0, i32 6
  %9 = ptrtoint ptr %state56 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state56, align 4
  %and = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %if.end65, label %if.then60

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %and62 = and i32 %10, -193
  %or64 = or i32 %and62, 128
  %11 = ptrtoint ptr %state56 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or64, ptr %state56, align 4
  %irq_queue = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %irq_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %put_device

if.end65:                                         ; preds = %if.end55
  %m2m_ctx.i = getelementptr inbounds %struct.gsc_ctx, ptr %priv, i32 0, i32 10
  %12 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %13, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i) #8
  %addr.i = getelementptr inbounds %struct.gsc_frame, ptr %priv, i32 0, i32 4
  %call3.i = tail call i32 @gsc_prepare_addr(ptr noundef nonnull %priv, ptr noundef %call.i.i, ptr noundef nonnull %priv, ptr noundef %addr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end65.do.end71_crit_edge

if.end65.do.end71_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

if.end.i:                                         ; preds = %if.end65
  %d_frame2.i = getelementptr inbounds %struct.gsc_ctx, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %15, i32 0, i32 7
  %call.i31.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #8
  %addr7.i = getelementptr inbounds %struct.gsc_ctx, ptr %priv, i32 0, i32 1, i32 4
  %call8.i = tail call i32 @gsc_prepare_addr(ptr noundef nonnull %priv, ptr noundef %call.i31.i, ptr noundef %d_frame2.i, ptr noundef %addr7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end74, label %if.end.i.do.end71_crit_edge

if.end.i.do.end71_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

do.end71:                                         ; preds = %if.end.i.do.end71_crit_edge, %if.end65.do.end71_crit_edge
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #11
  br label %put_device

if.end74:                                         ; preds = %if.end.i
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %timestamp.i, align 8
  %timestamp14.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i31.i, i32 0, i32 5
  %18 = ptrtoint ptr %timestamp14.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %timestamp14.i, align 8
  tail call void @gsc_set_prefbuf(ptr noundef %1, ptr noundef nonnull %priv) #8
  tail call void @gsc_hw_set_input_addr(ptr noundef %1, ptr noundef %addr.i, i32 noundef 0) #8
  tail call void @gsc_hw_set_output_addr(ptr noundef %1, ptr noundef %addr7.i, i32 noundef 0) #8
  %19 = ptrtoint ptr %state56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state56, align 4
  %and78 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end74.if.end90_crit_edge, label %if.then80

if.end74.if.end90_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then80:                                        ; preds = %if.end74
  tail call void @gsc_hw_set_input_buf_masking(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false) #8
  tail call void @gsc_hw_set_output_buf_masking(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false) #8
  tail call void @gsc_hw_set_frm_done_irq_mask(ptr noundef %1, i1 noundef zeroext false) #8
  tail call void @gsc_hw_set_gsc_irq_enable(ptr noundef %1, i1 noundef zeroext true) #8
  %call81 = tail call i32 @gsc_set_scaler_info(ptr noundef nonnull %priv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end89, label %do.end86

do.end86:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #11
  br label %put_device

if.end89:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gsc_hw_set_input_path(ptr noundef nonnull %priv) #8
  tail call void @gsc_hw_set_in_size(ptr noundef nonnull %priv) #8
  tail call void @gsc_hw_set_in_image_format(ptr noundef nonnull %priv) #8
  tail call void @gsc_hw_set_output_path(ptr noundef nonnull %priv) #8
  tail call void @gsc_hw_set_out_size(ptr noundef nonnull %priv) #8
  tail call void @gsc_hw_set_out_image_format(ptr noundef nonnull %priv) #8
  tail call void @gsc_hw_set_prescaler(ptr noundef nonnull %priv) #8
  tail call void @gsc_hw_set_mainscaler(ptr noundef nonnull %priv) #8
  tail call void @gsc_hw_set_rotation(ptr noundef nonnull %priv) #8
  tail call void @gsc_hw_set_global_alpha(ptr noundef nonnull %priv) #8
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end74.if.end90_crit_edge
  tail call void @gsc_hw_set_sfr_update(ptr noundef nonnull %priv) #8
  %21 = ptrtoint ptr %state56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state56, align 4
  %and92 = and i32 %22, -2
  store i32 %and92, ptr %state56, align 4
  %regs.i = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  %26 = or i32 %25, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #8, !srcloc !106
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call27) #8
  br label %cleanup

put_device:                                       ; preds = %do.end86, %do.end71, %if.then60
  %29 = ptrtoint ptr %state56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state56, align 4
  %and95 = and i32 %30, -2
  store i32 %and95, ptr %state56, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call27) #8
  br label %cleanup

cleanup:                                          ; preds = %put_device, %if.end90, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsc_m2m_job_abort(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__gsc_m2m_job_abort(ptr noundef %priv)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_set_prefbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_input_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_output_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_input_buf_masking(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_output_buf_masking(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_frm_done_irq_mask(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_gsc_irq_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_set_scaler_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_input_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_in_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_in_image_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_output_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_out_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_out_image_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_prescaler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_mainscaler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_rotation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_global_alpha(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_sfr_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_prepare_addr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !37, !38, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !71, !73, !75, !77, !78, !79, !81, !82, !83, !85, !86}
!llvm.named.register.sp = !{!87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 760, i32 51}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 761, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 768, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @gsc_register_m2m_device._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @gsc_register_m2m_device._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 774, i32 3}
!14 = !{ptr @gsc_register_m2m_device._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @gsc_register_m2m_device._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 779, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @gsc_register_m2m_device.__UNIQUE_ID_ddebug305, !17, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!20 = !{ptr @gsc_m2m_fops, !21, !"gsc_m2m_fops", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 728, i32 42}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 617, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @gsc_m2m_open.__UNIQUE_ID_ddebug302, !23, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 650, i32 3}
!28 = !{ptr @gsc_m2m_open._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @gsc_m2m_open._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 658, i32 2}
!32 = !{ptr @gsc_m2m_open.__UNIQUE_ID_ddebug303, !31, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!33 = !{ptr @gsc_m2m_qops, !34, !"gsc_m2m_qops", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 275, i32 29}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.h", i32 489, i32 3}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ctx_get_frame._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @ctx_get_frame._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 269, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @gsc_m2m_buf_queue.__UNIQUE_ID_ddebug300, !45, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 679, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @gsc_m2m_release.__UNIQUE_ID_ddebug304, !49, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!52 = !{ptr @gsc_m2m_ioctl_ops, !53, !"gsc_m2m_ioctl_ops", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 555, i32 36}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 292, i32 21}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 293, i32 49}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 336, i32 3}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @gsc_m2m_s_fmt_mplane._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @gsc_m2m_s_fmt_mplane._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 361, i32 2}
!65 = !{ptr @gsc_m2m_s_fmt_mplane.__UNIQUE_ID_ddebug301, !64, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 544, i32 4}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @gsc_m2m_s_selection._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @gsc_m2m_s_selection._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @gsc_m2m_ops, !72, !"gsc_m2m_ops", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 737, i32 34}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 152, i32 6}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 162, i32 3}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @gsc_m2m_device_run.__UNIQUE_ID_ddebug299, !76, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 178, i32 3}
!81 = !{ptr @gsc_m2m_device_run._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @gsc_m2m_device_run._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/exynos-gsc/gsc-m2m.c", i32 193, i32 4}
!85 = !{ptr @gsc_m2m_device_run._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @gsc_m2m_device_run._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{!"sp"}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2148971007, i64 2148971012, i64 2148971025, i64 2148971069, i64 2148971103, i64 2148971124}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2148357049}
!100 = !{i64 842669, i64 842694, i64 842716, i64 842732, i64 842744, i64 842764, i64 842788, i64 842804, i64 842816}
!101 = !{i64 2148357237}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{i64 4633930}
!104 = !{i64 2156531868}
!105 = !{i64 2156532104}
!106 = !{i64 4633512}
