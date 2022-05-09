; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos4-is/fimc-m2m.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-m2m.c"
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
%struct.fimc_ctx = type { %struct.fimc_frame, %struct.fimc_frame, i32, i32, i32, i32, i32, i32, %struct.fimc_scaler, %struct.fimc_effect, i32, i8, i32, i32, ptr, %struct.v4l2_fh, %struct.fimc_ctrls }
%struct.fimc_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], %struct.fimc_addr, %struct.fimc_dma_offset, ptr, i8 }
%struct.fimc_addr = type { i32, i32, i32 }
%struct.fimc_dma_offset = type { i32, i32, i32, i32, i32, i32 }
%struct.fimc_scaler = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fimc_effect = type { i32, i8, i8 }
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
%struct.fimc_ctrls = type { %struct.v4l2_ctrl_handler, %struct.anon.114, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.114 = type { ptr, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.fimc_dev = type { %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, [2 x ptr], ptr, %struct.wait_queue_head, ptr, %struct.fimc_m2m_device, %struct.fimc_vid_cap, i32 }
%struct.fimc_m2m_device = type { %struct.video_device, ptr, ptr, i32 }
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
%struct.fimc_vid_cap = type { ptr, %struct.v4l2_subdev, %struct.exynos_video_entity, %struct.media_pad, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, %struct.fimc_source_info, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i8, i32, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.111, i16, i16, i16, [10 x i16] }
%union.anon.111 = type { i16 }
%struct.fimc_source_info = type { i32, i32, i16, i16 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
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
%struct.kuid_t = type { i32 }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fimc_fmt = type { i32, i32, i32, i16, i16, i8, [3 x i8], i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.fimc_variant = type { i8, ptr, i16, i16, i16, i16 }
%struct.fimc_pix_limit = type { i16, i16, i16, i16, i16, i16 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.fimc_drvdata = type { [4 x ptr], i32, i32, i8, i8, i8, i8 }

@fimc_m2m_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @fimc_m2m_open, ptr @fimc_m2m_release }, [60 x i8] zeroinitializer }, align 32
@fimc_m2m_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @fimc_m2m_querycap, ptr @fimc_m2m_enum_fmt, ptr null, ptr @fimc_m2m_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_m2m_g_fmt_mplane, ptr @fimc_m2m_g_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_m2m_s_fmt_mplane, ptr @fimc_m2m_s_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_m2m_try_fmt_mplane, ptr @fimc_m2m_try_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_m2m_g_selection, ptr @fimc_m2m_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fimc.%d.m2m\00", [20 x i8] zeroinitializer }, align 32
@m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @fimc_device_run, ptr null, ptr @fimc_job_abort }, [20 x i8] zeroinitializer }, align 32
@fimc_register_m2m_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: failed to initialize v4l2-m2m device\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fimc_register_m2m_device\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/exynos4-is/fimc-m2m.c\00", [51 x i8] zeroinitializer }, align 32
@fimc_register_m2m_device._entry_ptr = internal global ptr @fimc_register_m2m_device._entry, section ".printk_index", align 4
@fimc_register_m2m_device._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Registered %s as /dev/%s\0A\00", [32 x i8] zeroinitializer }, align 32
@fimc_register_m2m_device._entry_ptr.6 = internal global ptr @fimc_register_m2m_device._entry.4, section ".printk_index", align 4
@fimc_m2m_open.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"s5p_fimc\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fimc_m2m_open\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pid: %d, state: %#lx\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fimc_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @fimc_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @fimc_buf_prepare, ptr null, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @fimc_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@ctx_get_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Wrong buffer/video queue type (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx_get_frame\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/exynos4-is/fimc-core.h\00", [50 x i8] zeroinitializer }, align 32
@ctx_get_frame._entry_ptr = internal global ptr @ctx_get_frame._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@fimc_m2m_release.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fimc_m2m_release\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%d: pid: %d, state: 0x%lx, refcnt= %d\0A\00", [54 x i8] zeroinitializer }, align 32
@fimc_m2m_s_fmt_mplane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: queue (%d) busy\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fimc_m2m_s_fmt_mplane\00", [42 x i8] zeroinitializer }, align 32
@fimc_m2m_s_fmt_mplane._entry_ptr = internal global ptr @fimc_m2m_s_fmt_mplane._entry, section ".printk_index", align 4
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Pixel format lookup failed\00", [37 x i8] zeroinitializer }, align 32
@fimc_m2m_s_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: Out of scaler range\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fimc_m2m_s_selection\00", [43 x i8] zeroinitializer }, align 32
@fimc_m2m_s_selection._entry_ptr = internal global ptr @fimc_m2m_s_selection._entry, section ".printk_index", align 4
@fimc_m2m_try_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: doesn't support negative values for top & left\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fimc_m2m_try_selection\00", [41 x i8] zeroinitializer }, align 32
@fimc_m2m_try_selection._entry_ptr = internal global ptr @fimc_m2m_try_selection._entry, section ".printk_index", align 4
@fimc_m2m_try_selection.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d: l:%d, t:%d, w:%d, h:%d, f_w: %d, f_h: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Null context\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.28 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"fimc_m2m_fops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 700, i32 42 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"fimc_m2m_ioctl_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 525, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 733, i32 41 }
@___asan_gen_.41 = private unnamed_addr constant [8 x i8] c"m2m_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 709, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 738, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 750, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 609, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [10 x i8] c"fimc_qops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 215, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant [49 x i8] c"../drivers/media/platform/exynos4-is/fimc-core.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 603, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1163, i32 7 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 682, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 355, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 277, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 511, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 436, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 478, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [48 x i8] c"../drivers/media/platform/exynos4-is/fimc-m2m.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 98, i32 6 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @ctx_get_frame._entry, ptr @ctx_get_frame._entry_ptr, ptr @fimc_m2m_s_fmt_mplane._entry, ptr @fimc_m2m_s_fmt_mplane._entry_ptr, ptr @fimc_m2m_s_selection._entry, ptr @fimc_m2m_s_selection._entry_ptr, ptr @fimc_m2m_try_selection._entry, ptr @fimc_m2m_try_selection._entry_ptr, ptr @fimc_register_m2m_device._entry, ptr @fimc_register_m2m_device._entry.4, ptr @fimc_register_m2m_device._entry_ptr, ptr @fimc_register_m2m_device._entry_ptr.6, ptr @fimc_m2m_fops, ptr @fimc_m2m_ioctl_ops, ptr @.str, ptr @m2m_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @fimc_qops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_m2m_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_m2m_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_register_m2m_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_register_m2m_device._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx_get_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_m2m_s_fmt_mplane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_m2m_s_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_m2m_try_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_m2m_job_finish(ptr noundef readonly %ctx, i32 noundef %vb_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 15, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #9
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7
  %call.i30 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #9
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end9, label %if.end9.thread

if.end9:                                          ; preds = %if.end
  %tobool10.not = icmp eq ptr %call.i30, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9.thread:                                   ; preds = %if.end
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef %vb_state) #9
  %tobool10.not32 = icmp eq ptr %call.i30, null
  br i1 %tobool10.not32, label %if.end9.thread.cleanup_crit_edge, label %if.then15

if.end9.thread.cleanup_crit_edge:                 ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i30, i32 noundef %vb_state) #9
  br label %cleanup

if.then15:                                        ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i30, i32 noundef %vb_state) #9
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %4 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fimc_dev, align 4
  %m2m_dev = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_dev, align 8
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %7, ptr noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12, %if.end9.thread.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_register_m2m_device(ptr noundef %fimc, ptr noundef %v4l2_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12
  %v4l2_dev2 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 11
  %0 = ptrtoint ptr %v4l2_dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %v4l2_dev, ptr %v4l2_dev2, align 8
  %1 = call ptr @memset(ptr %m2m, i32 0, i32 1352)
  %fops = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 0, i32 3
  %2 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fimc_m2m_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 0, i32 24
  %3 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @fimc_m2m_ioctl_ops, ptr %ioctl_ops, align 4
  %v4l2_dev3 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 0, i32 7
  %4 = ptrtoint ptr %v4l2_dev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %v4l2_dev, ptr %v4l2_dev3, align 4
  %minor = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 0, i32 15
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %minor, align 8
  %release = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 0, i32 23
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @video_device_release_empty, ptr %release, align 8
  %lock = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 1
  %lock4 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 0, i32 26
  %7 = ptrtoint ptr %lock4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %lock, ptr %lock4, align 8
  %vfl_dir = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 0, i32 14
  %8 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %vfl_dir, align 4
  %device_caps = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 0, i32 4
  %9 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 67125248, ptr %device_caps, align 8
  %flags = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #9
  %name = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 0, i32 12
  %id = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 7
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %11)
  %driver_data.i.i = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 0, i32 5, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fimc, ptr %driver_data.i.i, align 4
  %call5 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @m2m_ops) #9
  %m2m_dev = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5, ptr %m2m_dev, align 8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name10 = getelementptr inbounds %struct.v4l2_device, ptr %v4l2_dev, i32 0, i32 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name10) #12
  %14 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_dev, align 8
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call16 = tail call i32 @media_entity_pads_init(ptr noundef %m2m, i16 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %if.end.err_me_crit_edge

if.end.err_me_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_me

if.end18:                                         ; preds = %if.end
  %17 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fops, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %m2m, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %do.end25, label %if.end18.err_me_crit_edge

if.end18.err_me_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_me

do.end25:                                         ; preds = %if.end18
  %name27 = getelementptr inbounds %struct.v4l2_device, ptr %v4l2_dev, i32 0, i32 4
  %init_name.i.i = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 0, i32 5, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end25.video_device_node_name.exit_crit_edge

do.end25.video_device_node_name.exit_crit_edge:   ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 0, i32 5
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end25.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i ], [ %22, %do.end25.video_device_node_name.exit_crit_edge ]
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name27, ptr noundef %name, ptr noundef %retval.0.i.i) #12
  br label %cleanup

err_me:                                           ; preds = %if.end18.err_me_crit_edge, %if.end.err_me_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end.err_me_crit_edge ], [ %call.i, %if.end18.err_me_crit_edge ]
  %25 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %26) #9
  br label %cleanup

cleanup:                                          ; preds = %err_me, %video_device_node_name.exit, %do.end
  %retval.0 = phi i32 [ %16, %do.end ], [ %ret.0, %err_me ], [ 0, %video_device_node_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_unregister_m2m_device(ptr noundef %fimc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fimc, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.end

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end:                                           ; preds = %entry
  %m2m = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12
  %m2m_dev = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @v4l2_m2m_release(ptr noundef nonnull %1) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %flags.i = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 12, i32 0, i32 17
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool7.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool7.not, label %if.end5.if.end13_crit_edge, label %if.then8

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @video_unregister_device(ptr noundef %m2m) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end5.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_m2m_open(ptr noundef %file) #0 align 64 {
entry:
  %pixm.i = alloca %struct.v4l2_pix_format_mplane, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_m2m_open.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_m2m_open, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  %state = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_m2m_open.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.9, i32 noundef %7, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 1
  %call6 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %state10 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state10, align 4
  %12 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup.sink.split_crit_edge

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 780) #13
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end14.cleanup.sink.split_crit_edge, label %if.end18

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end14
  %fh = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 15
  %m2m = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 12
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %m2m) #9
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 14
  %14 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %fimc_dev, align 4
  %call19 = tail call ptr @fimc_get_format(i32 noundef 0) #9
  %fmt = getelementptr inbounds %struct.fimc_frame, ptr %call7.i.i, i32 0, i32 12
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call19, ptr %fmt, align 4
  %call20 = tail call ptr @fimc_get_format(i32 noundef 0) #9
  %fmt21 = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 1, i32 12
  %16 = ptrtoint ptr %fmt21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call20, ptr %fmt21, align 8
  %call22 = tail call i32 @fimc_ctrls_create(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end18.error_fh_crit_edge

if.end18.error_fh_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_fh

if.end25:                                         ; preds = %if.end18
  %ctrls = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 16
  %ctrl_handler = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 15, i32 2
  %17 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #9
  %state29 = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 13
  %19 = ptrtoint ptr %state29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 65536, ptr %state29, align 8
  %flags = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 12
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags, align 4
  %in_path = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %in_path to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %in_path, align 8
  %out_path = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %out_path to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %out_path, align 4
  %scaler = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %scaler to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %scaler, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %scaler, align 8
  %m2m_dev = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 12, i32 1
  %24 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m2m_dev, align 8
  %call31 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %25, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #9
  %m2m_ctx = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 15, i32 10
  %26 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call31, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call31 to i32
  br label %error_c

if.end40:                                         ; preds = %if.end25
  %refcnt = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 12, i32 3
  %28 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %refcnt, align 8
  %inc = add i32 %29, 1
  store i32 %inc, ptr %refcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %if.then42, label %if.end40.if.end44_crit_edge

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state10) #9
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40.if.end44_crit_edge
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %pixm.i) #9
  %30 = getelementptr inbounds i8, ptr %pixm.i, i32 12
  %31 = call ptr @memset(ptr %30, i32 0, i32 180)
  %32 = ptrtoint ptr %pixm.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 800, ptr %pixm.i, align 4
  %33 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm.i, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 600, ptr %33, align 4
  %35 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm.i, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 876758866, ptr %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm.i, i32 0, i32 5
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1920000, ptr %37, align 4
  %39 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm.i, i32 0, i32 5, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3200, ptr %39, align 4
  %call.i93 = call ptr @fimc_find_format(ptr noundef %35, ptr noundef null, i32 noundef 6, i32 noundef 0) #9
  %tobool.not.i = icmp eq ptr %call.i93, null
  br i1 %tobool.not.i, label %error_m2m_ctx, label %if.end.i

if.end.i:                                         ; preds = %if.end44
  %memplanes.i.i = getelementptr inbounds %struct.fimc_fmt, ptr %call.i93, i32 0, i32 3
  %41 = ptrtoint ptr %memplanes.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %memplanes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp38.not.i.i = icmp eq i16 %42, 0
  br i1 %cmp38.not.i.i, label %if.end.i.__set_frame_format.exit.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.__set_frame_format.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__set_frame_format.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.039.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pixm.i, i32 0, i32 5, i32 %i.039.i.i
  %bytesperline.i.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pixm.i, i32 0, i32 5, i32 %i.039.i.i, i32 1
  %43 = ptrtoint ptr %bytesperline.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bytesperline.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.fimc_frame, ptr %call7.i.i, i32 0, i32 9, i32 %i.039.i.i
  %45 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx3.i.i, align 4
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.fimc_frame, ptr %call7.i.i, i32 0, i32 8, i32 %i.039.i.i
  %48 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx6.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.039.i.i, 1
  %49 = ptrtoint ptr %memplanes.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %memplanes.i.i, align 4
  %conv.i.i = zext i16 %50 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.__set_frame_format.exit.i_crit_edge

for.body.i.i.__set_frame_format.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__set_frame_format.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

__set_frame_format.exit.i:                        ; preds = %for.body.i.i.__set_frame_format.exit.i_crit_edge, %if.end.i.__set_frame_format.exit.i_crit_edge
  %51 = ptrtoint ptr %pixm.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pixm.i, align 4
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %call7.i.i, align 8
  %54 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %33, align 4
  %f_height.i.i = getelementptr inbounds %struct.fimc_frame, ptr %call7.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %f_height.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %f_height.i.i, align 4
  %o_width.i.i = getelementptr inbounds %struct.fimc_frame, ptr %call7.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %o_width.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %52, ptr %o_width.i.i, align 8
  %o_height.i.i = getelementptr inbounds %struct.fimc_frame, ptr %call7.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %o_height.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %55, ptr %o_height.i.i, align 4
  %width10.i.i = getelementptr inbounds %struct.fimc_frame, ptr %call7.i.i, i32 0, i32 6
  %59 = ptrtoint ptr %width10.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %52, ptr %width10.i.i, align 8
  %height12.i.i = getelementptr inbounds %struct.fimc_frame, ptr %call7.i.i, i32 0, i32 7
  %60 = ptrtoint ptr %height12.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %55, ptr %height12.i.i, align 4
  %offs_h.i.i = getelementptr inbounds %struct.fimc_frame, ptr %call7.i.i, i32 0, i32 4
  %61 = ptrtoint ptr %offs_h.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %offs_h.i.i, align 8
  %offs_v.i.i = getelementptr inbounds %struct.fimc_frame, ptr %call7.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %offs_v.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %offs_v.i.i, align 4
  %63 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i93, ptr %fmt, align 4
  %d_frame.i = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %memplanes.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %memplanes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp38.not.i6.i = icmp eq i16 %65, 0
  br i1 %cmp38.not.i6.i, label %__set_frame_format.exit.i.if.end48_crit_edge, label %__set_frame_format.exit.i.for.body.i15.i_crit_edge

__set_frame_format.exit.i.for.body.i15.i_crit_edge: ; preds = %__set_frame_format.exit.i
  br label %for.body.i15.i

__set_frame_format.exit.i.if.end48_crit_edge:     ; preds = %__set_frame_format.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

for.body.i15.i:                                   ; preds = %for.body.i15.i.for.body.i15.i_crit_edge, %__set_frame_format.exit.i.for.body.i15.i_crit_edge
  %i.039.i7.i = phi i32 [ %inc.i12.i, %for.body.i15.i.for.body.i15.i_crit_edge ], [ 0, %__set_frame_format.exit.i.for.body.i15.i_crit_edge ]
  %arrayidx.i8.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pixm.i, i32 0, i32 5, i32 %i.039.i7.i
  %bytesperline.i9.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pixm.i, i32 0, i32 5, i32 %i.039.i7.i, i32 1
  %66 = ptrtoint ptr %bytesperline.i9.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bytesperline.i9.i, align 4
  %arrayidx3.i10.i = getelementptr %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 1, i32 9, i32 %i.039.i7.i
  %68 = ptrtoint ptr %arrayidx3.i10.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx3.i10.i, align 4
  %69 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i8.i, align 4
  %arrayidx6.i11.i = getelementptr %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 %i.039.i7.i
  %71 = ptrtoint ptr %arrayidx6.i11.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx6.i11.i, align 4
  %inc.i12.i = add nuw nsw i32 %i.039.i7.i, 1
  %72 = ptrtoint ptr %memplanes.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %memplanes.i.i, align 4
  %conv.i13.i = zext i16 %73 to i32
  %cmp.i14.i = icmp ult i32 %inc.i12.i, %conv.i13.i
  br i1 %cmp.i14.i, label %for.body.i15.i.for.body.i15.i_crit_edge, label %for.body.i15.i.if.end48_crit_edge

for.body.i15.i.if.end48_crit_edge:                ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

for.body.i15.i.for.body.i15.i_crit_edge:          ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i15.i

if.end48:                                         ; preds = %for.body.i15.i.if.end48_crit_edge, %__set_frame_format.exit.i.if.end48_crit_edge
  %74 = ptrtoint ptr %d_frame.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %52, ptr %d_frame.i, align 4
  %f_height.i17.i = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %f_height.i17.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %55, ptr %f_height.i17.i, align 8
  %o_width.i18.i = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %o_width.i18.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %52, ptr %o_width.i18.i, align 4
  %o_height.i19.i = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 1, i32 3
  %77 = ptrtoint ptr %o_height.i19.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %55, ptr %o_height.i19.i, align 8
  %width10.i20.i = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 1, i32 6
  %78 = ptrtoint ptr %width10.i20.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %52, ptr %width10.i20.i, align 4
  %height12.i21.i = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 1, i32 7
  %79 = ptrtoint ptr %height12.i21.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %55, ptr %height12.i21.i, align 8
  %offs_h.i22.i = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 1, i32 4
  %80 = ptrtoint ptr %offs_h.i22.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %offs_h.i22.i, align 4
  %offs_v.i23.i = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i, i32 0, i32 1, i32 5
  %81 = ptrtoint ptr %offs_v.i23.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %offs_v.i23.i, align 8
  %82 = ptrtoint ptr %fmt21 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i93, ptr %fmt21, align 8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %pixm.i) #9
  br label %cleanup.sink.split

error_m2m_ctx:                                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %pixm.i) #9
  %83 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %m2m_ctx, align 4
  call void @v4l2_m2m_ctx_release(ptr noundef %84) #9
  br label %error_c

error_c:                                          ; preds = %error_m2m_ctx, %if.then36
  %ret.0 = phi i32 [ %27, %if.then36 ], [ -22, %error_m2m_ctx ]
  call void @fimc_ctrls_delete(ptr noundef nonnull %call7.i.i) #9
  call void @v4l2_fh_del(ptr noundef %fh) #9
  br label %error_fh

error_fh:                                         ; preds = %error_c, %if.end18.error_fh_crit_edge
  %ret.1 = phi i32 [ %call22, %if.end18.error_fh_crit_edge ], [ %ret.0, %error_c ]
  call void @v4l2_fh_exit(ptr noundef %fh) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %error_fh, %if.end48, %if.end14.cleanup.sink.split_crit_edge, %if.end9.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end48 ], [ -16, %if.end9.cleanup.sink.split_crit_edge ], [ %ret.1, %error_fh ], [ -12, %if.end14.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_m2m_release(ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -376
  %fimc_dev = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fimc_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_m2m_release.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_m2m_release, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  %state = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  %refcnt = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 12, i32 3
  %12 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refcnt, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_m2m_release.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef 683, i32 noundef %9, i32 noundef %11, i32 noundef %13) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %15) #9
  tail call void @fimc_ctrls_delete(ptr noundef %add.ptr) #9
  tail call void @v4l2_fh_del(ptr noundef %1) #9
  tail call void @v4l2_fh_exit(ptr noundef %1) #9
  %refcnt9 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 12, i32 3
  %16 = ptrtoint ptr %refcnt9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %refcnt9, align 8
  %dec = add i32 %17, -1
  store i32 %dec, ptr %refcnt9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp = icmp slt i32 %dec, 1
  br i1 %cmp, label %if.then10, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %state11 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state11) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end.if.end12_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_get_format(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_ctrls_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 19, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %drv_priv, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @fimc_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %4 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %5 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 744, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %6 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %timestamp_flags, align 4
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %priv, i32 0, i32 14
  %7 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fimc_dev, align 4
  %lock = getelementptr inbounds %struct.fimc_dev, ptr %8, i32 0, i32 1
  %lock1 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %9 = ptrtoint ptr %lock1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lock, ptr %lock1, align 4
  %10 = load ptr, ptr %fimc_dev, align 4
  %pdev = getelementptr inbounds %struct.fimc_dev, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %dev3, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 9, ptr %dst_vq, align 4
  %io_modes5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %15 = ptrtoint ptr %io_modes5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 19, ptr %io_modes5, align 4
  %drv_priv6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %16 = ptrtoint ptr %drv_priv6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv, ptr %drv_priv6, align 4
  %ops7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %17 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @fimc_qops, ptr %ops7, align 4
  %mem_ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %18 = ptrtoint ptr %mem_ops8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops8, align 4
  %buf_struct_size9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %19 = ptrtoint ptr %buf_struct_size9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 744, ptr %buf_struct_size9, align 4
  %timestamp_flags10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %20 = ptrtoint ptr %timestamp_flags10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16384, ptr %timestamp_flags10, align 4
  %21 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fimc_dev, align 4
  %lock12 = getelementptr inbounds %struct.fimc_dev, ptr %22, i32 0, i32 1
  %lock13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %23 = ptrtoint ptr %lock13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %lock12, ptr %lock13, align 4
  %24 = load ptr, ptr %fimc_dev, align 4
  %pdev15 = getelementptr inbounds %struct.fimc_dev, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev15, align 8
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %dev17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %27 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev16, ptr %dev17, align 4
  %call18 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_ctrls_delete(ptr noundef) local_unnamed_addr #2

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
define internal i32 @fimc_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  switch i32 %3, label %do.end.i [
    i32 10, label %entry.if.then.i_crit_edge
    i32 2, label %entry.if.then.i_crit_edge30
    i32 9, label %entry.if.then8.i_crit_edge
    i32 1, label %entry.if.then8.i_crit_edge31
  ]

entry.if.then8.i_crit_edge31:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

entry.if.then8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

entry.if.then.i_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge30
  %fimc_dev.i.i = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %fimc_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fimc_dev.i.i, align 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  %state.i.i = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp5.i.not.i = icmp eq i32 %and.i.i, 0
  %9 = ptrtoint ptr %fimc_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fimc_dev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call2.i.i) #9
  br i1 %cmp5.i.not.i, label %if.then.i.if.then_crit_edge, label %if.then.i.ctx_get_frame.exit_crit_edge

if.then.i.ctx_get_frame.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ctx_get_frame.exit

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then8.i:                                       ; preds = %entry.if.then8.i_crit_edge, %entry.if.then8.i_crit_edge31
  %d_frame.i = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 1
  br label %ctx_get_frame.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fimc_dev.i = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %fimc_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fimc_dev.i, align 4
  %v4l2_dev.i = getelementptr inbounds %struct.fimc_dev, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %v4l2_dev.i, align 8
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %14, i32 0, i32 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef %3) #12
  br label %if.then

ctx_get_frame.exit:                               ; preds = %if.then8.i, %if.then.i.ctx_get_frame.exit_crit_edge
  %retval.0.i = phi ptr [ %d_frame.i, %if.then8.i ], [ %1, %if.then.i.ctx_get_frame.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ctx_get_frame.exit.if.then_crit_edge, label %if.end

ctx_get_frame.exit.if.then_crit_edge:             ; preds = %ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %ctx_get_frame.exit.if.then_crit_edge, %do.end.i, %if.then.i.if.then_crit_edge
  %retval.0.i25 = phi ptr [ %retval.0.i, %ctx_get_frame.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i25 to i32
  br label %cleanup

if.end:                                           ; preds = %ctx_get_frame.exit
  %fmt = getelementptr inbounds %struct.fimc_frame, ptr %retval.0.i, i32 0, i32 12
  %16 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fmt, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %memplanes, align 4
  %conv = zext i16 %19 to i32
  %20 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %num_planes, align 4
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fmt, align 4
  %memplanes826 = getelementptr inbounds %struct.fimc_fmt, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %memplanes826 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %memplanes826, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp28.not = icmp eq i16 %24, 0
  br i1 %cmp28.not, label %if.end5.cleanup_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end5.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fimc_frame, ptr %retval.0.i, i32 0, i32 8, i32 %i.029
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %arrayidx11 = getelementptr i32, ptr %sizes, i32 %i.029
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx11, align 4
  %inc = add nuw nsw i32 %i.029, 1
  %28 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fmt, align 4
  %memplanes8 = getelementptr inbounds %struct.fimc_fmt, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %memplanes8 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %memplanes8, align 4
  %conv9 = zext i16 %31 to i32
  %cmp = icmp ult i32 %inc, %conv9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %5, label %do.end.i [
    i32 10, label %entry.if.then.i_crit_edge
    i32 2, label %entry.if.then.i_crit_edge27
    i32 9, label %entry.if.then8.i_crit_edge
    i32 1, label %entry.if.then8.i_crit_edge28
  ]

entry.if.then8.i_crit_edge28:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

entry.if.then8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

entry.if.then.i_crit_edge27:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge27
  %fimc_dev.i.i = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 14
  %7 = ptrtoint ptr %fimc_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fimc_dev.i.i, align 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  %state.i.i = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 13
  %9 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp5.i.not.i = icmp eq i32 %and.i.i, 0
  %11 = ptrtoint ptr %fimc_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fimc_dev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call2.i.i) #9
  br i1 %cmp5.i.not.i, label %if.then.i.if.then_crit_edge, label %if.then.i.ctx_get_frame.exit_crit_edge

if.then.i.ctx_get_frame.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ctx_get_frame.exit

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then8.i:                                       ; preds = %entry.if.then8.i_crit_edge, %entry.if.then8.i_crit_edge28
  %d_frame.i = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 1
  br label %ctx_get_frame.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fimc_dev.i = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %fimc_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fimc_dev.i, align 4
  %v4l2_dev.i = getelementptr inbounds %struct.fimc_dev, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %v4l2_dev.i, align 8
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef %5) #12
  br label %if.then

ctx_get_frame.exit:                               ; preds = %if.then8.i, %if.then.i.ctx_get_frame.exit_crit_edge
  %retval.0.i = phi ptr [ %d_frame.i, %if.then8.i ], [ %3, %if.then.i.ctx_get_frame.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ctx_get_frame.exit.if.then_crit_edge, label %for.cond.preheader

ctx_get_frame.exit.if.then_crit_edge:             ; preds = %ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.preheader:                               ; preds = %ctx_get_frame.exit
  %fmt = getelementptr inbounds %struct.fimc_frame, ptr %retval.0.i, i32 0, i32 12
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fmt, align 4
  %memplanes22 = getelementptr inbounds %struct.fimc_fmt, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %memplanes22 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %memplanes22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp24.not = icmp eq i16 %20, 0
  br i1 %cmp24.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  br label %for.body

if.then:                                          ; preds = %ctx_get_frame.exit.if.then_crit_edge, %do.end.i, %if.then.i.if.then_crit_edge
  %retval.0.i21 = phi ptr [ %retval.0.i, %ctx_get_frame.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.if.then_crit_edge ]
  %21 = ptrtoint ptr %retval.0.i21 to i32
  br label %cleanup

for.body:                                         ; preds = %vb2_set_plane_payload.exit.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vb2_set_plane_payload.exit.for.body_crit_edge ]
  %22 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %i.025)
  %cmp.i16 = icmp ugt i32 %23, %i.025
  br i1 %cmp.i16, label %if.then.i17, label %for.body.vb2_set_plane_payload.exit_crit_edge

for.body.vb2_set_plane_payload.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

if.then.i17:                                      ; preds = %for.body
  %arrayidx = getelementptr %struct.fimc_frame, ptr %retval.0.i, i32 0, i32 8, i32 %i.025
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.025, i32 4
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp1.i = icmp ult i32 %27, %25
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i17.if.end42.i_crit_edge

if.then.i17.if.end42.i_crit_edge:                 ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i17
  %.b55.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i18, !prof !71

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then8.i18:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i18, %land.rhs.i.if.then38.i_crit_edge
  %28 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i17.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %29, %if.then38.i ], [ %25, %if.then.i17.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.025, i32 3
  %30 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %for.body.vb2_set_plane_payload.exit_crit_edge
  %inc = add nuw nsw i32 %i.025, 1
  %31 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fmt, align 4
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %memplanes, align 4
  %conv = zext i16 %34 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %vb2_set_plane_payload.exit.for.body_crit_edge, label %vb2_set_plane_payload.exit.cleanup_crit_edge

vb2_set_plane_payload.exit.cleanup_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vb2_set_plane_payload.exit.for.body_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %vb2_set_plane_payload.exit.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.then ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %vb2_set_plane_payload.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fimc_dev, align 4
  %pdev = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.pm_runtime_resume_and_get.exit_crit_edge

entry.pm_runtime_resume_and_get.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_resume_and_get.exit

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_resume_and_get.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  br label %pm_runtime_resume_and_get.exit

pm_runtime_resume_and_get.exit:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, %entry.pm_runtime_resume_and_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  tail call fastcc void @fimc_m2m_shutdown(ptr noundef %1)
  tail call void @fimc_m2m_job_finish(ptr noundef %1, i32 noundef 6)
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fimc_dev, align 4
  %pdev = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fimc_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 15, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fimc_m2m_shutdown(ptr nocapture noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %state = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup40_crit_edge, label %if.end

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

if.end:                                           ; preds = %entry
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %state5.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 13
  %5 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state5.i, align 4
  %or.i = or i32 %6, 262144
  store i32 %or.i, ptr %state5.i, align 4
  %7 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fimc_dev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %call2.i) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 70) #9
  %9 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fimc_dev, align 4
  %call2.i57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #9
  %11 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state5.i, align 4
  %and.i = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp5.i.not = icmp eq i32 %and.i, 0
  %13 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fimc_dev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %call2.i57) #9
  br i1 %cmp5.i.not, label %if.end.cleanup40_crit_edge, label %if.then13

if.end.cleanup40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

if.then13:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %irq_queue = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then13
  %__ret14.0 = phi i32 [ 10, %if.then13 ], [ %call35, %cleanup ]
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %16 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fimc_dev, align 4
  %call2.i59 = call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #9
  %18 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state5.i, align 4
  %and.i61 = and i32 %19, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %cmp5.i62.not = icmp eq i32 %and.i61, 0
  %20 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fimc_dev, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call2.i59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.0)
  %tobool22.not = icmp eq i32 %__ret14.0, 0
  %22 = select i1 %cmp5.i62.not, i1 %tobool22.not, i1 false
  %__ret14.1 = select i1 %22, i32 1, i32 %__ret14.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool28.not = icmp eq i32 %__ret14.1, 0
  %23 = select i1 %cmp5.i62.not, i1 true, i1 %tobool28.not
  br i1 %23, label %for.end, label %cleanup

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = call i32 @schedule_timeout(i32 noundef %__ret14.1) #9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %cleanup40

cleanup40:                                        ; preds = %for.end, %if.end.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  ret void
}

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
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_find_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_m2m_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdev = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @__fimc_vidioc_querycap(ptr noundef %dev, ptr noundef %cap) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_m2m_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp.i = icmp eq i32 %1, 10
  %..i = select i1 %cmp.i, i32 2, i32 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call1 = tail call ptr @fimc_find_format(ptr noundef null, ptr noundef null, i32 noundef %..i, i32 noundef %3) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fourcc = getelementptr inbounds %struct.fimc_fmt, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_m2m_g_fmt_mplane(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %do.end.i [
    i32 10, label %entry.if.then.i_crit_edge
    i32 2, label %entry.if.then.i_crit_edge10
    i32 9, label %entry.if.then8.i_crit_edge
    i32 1, label %entry.if.then8.i_crit_edge11
  ]

entry.if.then8.i_crit_edge11:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

entry.if.then8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

entry.if.then.i_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge10
  %add.ptr = getelementptr i8, ptr %fh, i32 -376
  %fimc_dev.i.i = getelementptr i8, ptr %fh, i32 -4
  %3 = ptrtoint ptr %fimc_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fimc_dev.i.i, align 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %state.i.i = getelementptr i8, ptr %fh, i32 -8
  %5 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp5.i.not.i = icmp eq i32 %and.i.i, 0
  %7 = ptrtoint ptr %fimc_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fimc_dev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %call2.i.i) #9
  br i1 %cmp5.i.not.i, label %if.then.i.if.then_crit_edge, label %if.then.i.ctx_get_frame.exit_crit_edge

if.then.i.ctx_get_frame.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ctx_get_frame.exit

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then8.i:                                       ; preds = %entry.if.then8.i_crit_edge, %entry.if.then8.i_crit_edge11
  %d_frame.i = getelementptr i8, ptr %fh, i32 -236
  br label %ctx_get_frame.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fimc_dev.i = getelementptr i8, ptr %fh, i32 -4
  %9 = ptrtoint ptr %fimc_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fimc_dev.i, align 4
  %v4l2_dev.i = getelementptr inbounds %struct.fimc_dev, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %v4l2_dev.i, align 8
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %12, i32 0, i32 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef %1) #12
  br label %if.then

ctx_get_frame.exit:                               ; preds = %if.then8.i, %if.then.i.ctx_get_frame.exit_crit_edge
  %retval.0.i = phi ptr [ %d_frame.i, %if.then8.i ], [ %add.ptr, %if.then.i.ctx_get_frame.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ctx_get_frame.exit.if.then_crit_edge, label %if.end

ctx_get_frame.exit.if.then_crit_edge:             ; preds = %ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %ctx_get_frame.exit.if.then_crit_edge, %do.end.i, %if.then.i.if.then_crit_edge
  %retval.0.i9 = phi ptr [ %retval.0.i, %ctx_get_frame.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.if.then_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i9 to i32
  br label %cleanup

if.end:                                           ; preds = %ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__fimc_get_format(ptr noundef %retval.0.i, ptr noundef %f) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_m2m_s_fmt_mplane(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fh, i32 -376
  %fimc_dev = getelementptr i8, ptr %fh, i32 -4
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %call = tail call fastcc i32 @fimc_try_fmt_mplane(ptr noundef %add.ptr, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %fh, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %3, i32 noundef %5) #9
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %6 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 12, i32 0, i32 12
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %9) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp = icmp eq i32 %11, 10
  %d_frame = getelementptr i8, ptr %fh, i32 -236
  %frame.0 = select i1 %cmp, ptr %add.ptr, ptr %d_frame
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %..i = select i1 %cmp, i32 2, i32 4
  %call15 = tail call ptr @fimc_find_format(ptr noundef %pixelformat, ptr noundef null, i32 noundef %..i, i32 noundef 0) #9
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end8.cleanup_crit_edge, label %if.end18

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %fmt12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %memplanes.i = getelementptr inbounds %struct.fimc_fmt, ptr %call15, i32 0, i32 3
  %12 = ptrtoint ptr %memplanes.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %memplanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp38.not.i = icmp eq i16 %13, 0
  br i1 %cmp38.not.i, label %if.end18.__set_frame_format.exit_crit_edge, label %if.end18.for.body.i_crit_edge

if.end18.for.body.i_crit_edge:                    ; preds = %if.end18
  br label %for.body.i

if.end18.__set_frame_format.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %__set_frame_format.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end18.for.body.i_crit_edge
  %i.039.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end18.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %fmt12, i32 0, i32 5, i32 %i.039.i
  %bytesperline.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %fmt12, i32 0, i32 5, i32 %i.039.i, i32 1
  %14 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %bytesperline.i, align 1
  %arrayidx3.i = getelementptr %struct.fimc_frame, ptr %frame.0, i32 0, i32 9, i32 %i.039.i
  %16 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx3.i, align 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %arrayidx.i, align 1
  %arrayidx6.i = getelementptr %struct.fimc_frame, ptr %frame.0, i32 0, i32 8, i32 %i.039.i
  %19 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx6.i, align 4
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %20 = ptrtoint ptr %memplanes.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %memplanes.i, align 4
  %conv.i = zext i16 %21 to i32
  %cmp.i39 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i39, label %for.body.i.for.body.i_crit_edge, label %for.body.i.__set_frame_format.exit_crit_edge

for.body.i.__set_frame_format.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__set_frame_format.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

__set_frame_format.exit:                          ; preds = %for.body.i.__set_frame_format.exit_crit_edge, %if.end18.__set_frame_format.exit_crit_edge
  %22 = ptrtoint ptr %fmt12 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %fmt12, align 1
  %24 = ptrtoint ptr %frame.0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %frame.0, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %height.i, align 1
  %f_height.i = getelementptr inbounds %struct.fimc_frame, ptr %frame.0, i32 0, i32 1
  %27 = ptrtoint ptr %f_height.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %f_height.i, align 4
  %28 = load i32, ptr %fmt12, align 1
  %o_width.i = getelementptr inbounds %struct.fimc_frame, ptr %frame.0, i32 0, i32 2
  %29 = ptrtoint ptr %o_width.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %o_width.i, align 4
  %30 = load i32, ptr %height.i, align 1
  %o_height.i = getelementptr inbounds %struct.fimc_frame, ptr %frame.0, i32 0, i32 3
  %31 = ptrtoint ptr %o_height.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %o_height.i, align 4
  %32 = load i32, ptr %fmt12, align 1
  %width10.i = getelementptr inbounds %struct.fimc_frame, ptr %frame.0, i32 0, i32 6
  %33 = ptrtoint ptr %width10.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %width10.i, align 4
  %34 = load i32, ptr %height.i, align 1
  %height12.i = getelementptr inbounds %struct.fimc_frame, ptr %frame.0, i32 0, i32 7
  %35 = ptrtoint ptr %height12.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %height12.i, align 4
  %offs_h.i = getelementptr inbounds %struct.fimc_frame, ptr %frame.0, i32 0, i32 4
  %36 = ptrtoint ptr %offs_h.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %offs_h.i, align 4
  %offs_v.i = getelementptr inbounds %struct.fimc_frame, ptr %frame.0, i32 0, i32 5
  %37 = ptrtoint ptr %offs_v.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %offs_v.i, align 4
  %fmt13.i = getelementptr inbounds %struct.fimc_frame, ptr %frame.0, i32 0, i32 12
  %38 = ptrtoint ptr %fmt13.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call15, ptr %fmt13.i, align 4
  tail call void @fimc_alpha_ctrl_update(ptr noundef %add.ptr) #9
  br label %cleanup

cleanup:                                          ; preds = %__set_frame_format.exit, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %__set_frame_format.exit ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_m2m_try_fmt_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fh, i32 -376
  %call = tail call fastcc i32 @fimc_try_fmt_mplane(ptr noundef %add.ptr, ptr noundef %f)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_m2m_g_selection(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr nocapture noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %1, label %do.end.i [
    i32 10, label %entry.if.then.i_crit_edge
    i32 2, label %entry.if.then.i_crit_edge52
    i32 9, label %entry.if.then8.i_crit_edge
    i32 1, label %entry.if.then8.i_crit_edge53
  ]

entry.if.then8.i_crit_edge53:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

entry.if.then8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

entry.if.then.i_crit_edge52:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge52
  %add.ptr = getelementptr i8, ptr %fh, i32 -376
  %fimc_dev.i.i = getelementptr i8, ptr %fh, i32 -4
  %3 = ptrtoint ptr %fimc_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fimc_dev.i.i, align 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %state.i.i = getelementptr i8, ptr %fh, i32 -8
  %5 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp5.i.not.i = icmp eq i32 %and.i.i, 0
  %7 = ptrtoint ptr %fimc_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fimc_dev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %call2.i.i) #9
  br i1 %cmp5.i.not.i, label %if.then.i.if.then_crit_edge, label %if.then.i.ctx_get_frame.exit_crit_edge

if.then.i.ctx_get_frame.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ctx_get_frame.exit

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then8.i:                                       ; preds = %entry.if.then8.i_crit_edge, %entry.if.then8.i_crit_edge53
  %d_frame.i = getelementptr i8, ptr %fh, i32 -236
  br label %ctx_get_frame.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fimc_dev.i = getelementptr i8, ptr %fh, i32 -4
  %9 = ptrtoint ptr %fimc_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fimc_dev.i, align 4
  %v4l2_dev.i = getelementptr inbounds %struct.fimc_dev, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %v4l2_dev.i, align 8
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %12, i32 0, i32 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef %1) #12
  br label %if.then

ctx_get_frame.exit:                               ; preds = %if.then8.i, %if.then.i.ctx_get_frame.exit_crit_edge
  %retval.0.i = phi ptr [ %d_frame.i, %if.then8.i ], [ %add.ptr, %if.then.i.ctx_get_frame.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ctx_get_frame.exit.if.then_crit_edge, label %if.end

ctx_get_frame.exit.if.then_crit_edge:             ; preds = %ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %ctx_get_frame.exit.if.then_crit_edge, %do.end.i, %if.then.i.if.then_crit_edge
  %retval.0.i51 = phi ptr [ %retval.0.i, %ctx_get_frame.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.if.then_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i51 to i32
  br label %cleanup

if.end:                                           ; preds = %ctx_get_frame.exit
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %14 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %target, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %15, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge54
    i32 2, label %if.end.sw.bb_crit_edge55
    i32 256, label %if.end.sw.bb6_crit_edge
    i32 257, label %if.end.sw.bb6_crit_edge56
    i32 258, label %if.end.sw.bb6_crit_edge57
  ]

if.end.sw.bb6_crit_edge57:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

if.end.sw.bb6_crit_edge56:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

if.end.sw.bb_crit_edge55:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge54:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge54, %if.end.sw.bb_crit_edge55
  %17 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.not = icmp eq i32 %18, 2
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge56, %if.end.sw.bb6_crit_edge57
  %19 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp8.not = icmp eq i32 %20, 1
  br i1 %cmp8.not, label %sw.bb6.sw.epilog_crit_edge, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %21 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %15, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.bb12_crit_edge
    i32 256, label %sw.epilog.sw.bb12_crit_edge58
    i32 1, label %sw.epilog.sw.bb18_crit_edge
    i32 2, label %sw.epilog.sw.bb18_crit_edge59
    i32 257, label %sw.epilog.sw.bb18_crit_edge60
    i32 258, label %sw.epilog.sw.bb18_crit_edge61
  ]

sw.epilog.sw.bb18_crit_edge61:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

sw.epilog.sw.bb18_crit_edge60:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

sw.epilog.sw.bb18_crit_edge59:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

sw.epilog.sw.bb18_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

sw.epilog.sw.bb12_crit_edge58:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb12:                                          ; preds = %sw.epilog.sw.bb12_crit_edge, %sw.epilog.sw.bb12_crit_edge58
  %offs_h = getelementptr inbounds %struct.fimc_frame, ptr %retval.0.i, i32 0, i32 4
  %22 = ptrtoint ptr %offs_h to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offs_h, align 4
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %24 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %r, align 4
  %offs_v = getelementptr inbounds %struct.fimc_frame, ptr %retval.0.i, i32 0, i32 5
  %25 = ptrtoint ptr %offs_v to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offs_v, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %top, align 4
  %width = getelementptr inbounds %struct.fimc_frame, ptr %retval.0.i, i32 0, i32 6
  %28 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width, align 4
  %width15 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %width15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %width15, align 4
  %height = getelementptr inbounds %struct.fimc_frame, ptr %retval.0.i, i32 0, i32 7
  %31 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height, align 4
  %height17 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %height17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %height17, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %sw.epilog.sw.bb18_crit_edge, %sw.epilog.sw.bb18_crit_edge59, %sw.epilog.sw.bb18_crit_edge60, %sw.epilog.sw.bb18_crit_edge61
  %r19 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %34 = ptrtoint ptr %r19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %r19, align 4
  %top22 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %top22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %top22, align 4
  %o_width = getelementptr inbounds %struct.fimc_frame, ptr %retval.0.i, i32 0, i32 2
  %36 = ptrtoint ptr %o_width to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %o_width, align 4
  %width24 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %width24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %width24, align 4
  %o_height = getelementptr inbounds %struct.fimc_frame, ptr %retval.0.i, i32 0, i32 3
  %39 = ptrtoint ptr %o_height to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %o_height, align 4
  %height26 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %height26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %height26, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb18, %sw.bb12, %sw.epilog.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb18 ], [ 0, %sw.bb12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_m2m_s_selection(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fh, i32 -376
  %fimc_dev = getelementptr i8, ptr %fh, i32 -4
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %call = tail call fastcc i32 @fimc_m2m_try_selection(ptr noundef %add.ptr, ptr noundef %s)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %d_frame = getelementptr i8, ptr %fh, i32 -236
  %cond = select i1 %cmp, ptr %add.ptr, ptr %d_frame
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %width6 = getelementptr i8, ptr %fh, i32 -212
  %8 = ptrtoint ptr %width6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width6, align 4
  %height8 = getelementptr i8, ptr %fh, i32 -208
  %10 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height8, align 4
  %rotation = getelementptr i8, ptr %fh, i32 -20
  %12 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rotation, align 4
  %call9 = tail call i32 @fimc_check_scaler_ratio(ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #9
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %width11 = getelementptr i8, ptr %fh, i32 -352
  %14 = ptrtoint ptr %width11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width11, align 4
  %height13 = getelementptr i8, ptr %fh, i32 -348
  %16 = ptrtoint ptr %height13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height13, align 4
  %width15 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %width15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width15, align 4
  %height17 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %height17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height17, align 4
  %rotation18 = getelementptr i8, ptr %fh, i32 -20
  %22 = ptrtoint ptr %rotation18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rotation18, align 4
  %call19 = tail call i32 @fimc_check_scaler_ratio(ptr noundef %add.ptr, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #9
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then3
  %ret.0 = phi i32 [ %call9, %if.then3 ], [ %call19, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool21.not = icmp eq i32 %ret.0, 0
  br i1 %tobool21.not, label %if.end25, label %do.end

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 12, i32 0, i32 12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %r26 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %24 = ptrtoint ptr %r26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %r26, align 4
  %offs_h = getelementptr inbounds %struct.fimc_frame, ptr %cond, i32 0, i32 4
  %26 = ptrtoint ptr %offs_h to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %offs_h, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %top, align 4
  %offs_v = getelementptr inbounds %struct.fimc_frame, ptr %cond, i32 0, i32 5
  %29 = ptrtoint ptr %offs_v to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %offs_v, align 4
  %width29 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %width29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width29, align 4
  %width30 = getelementptr inbounds %struct.fimc_frame, ptr %cond, i32 0, i32 6
  %32 = ptrtoint ptr %width30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %width30, align 4
  %height32 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %height32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height32, align 4
  %height33 = getelementptr inbounds %struct.fimc_frame, ptr %cond, i32 0, i32 7
  %35 = ptrtoint ptr %height33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %height33, align 4
  %36 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fimc_dev, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #9
  %state5.i = getelementptr i8, ptr %fh, i32 -8
  %38 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state5.i, align 4
  %or.i = or i32 %39, 1
  store i32 %or.i, ptr %state5.i, align 4
  %40 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fimc_dev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %call2.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end25 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fimc_vidioc_querycap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fimc_get_format(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_try_fmt_mplane(ptr nocapture noundef readonly %ctx, ptr noundef %f) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %variant1 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %.off = add i32 %5, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp.i = icmp eq i32 %5, 10
  %..i = select i1 %cmp.i, i32 2, i32 4
  %call6 = tail call ptr @fimc_find_format(ptr noundef %pixelformat, ptr noundef null, i32 noundef %..i, i32 noundef 0) #9
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %do.end, label %if.end30, !prof !75

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 277, i32 noundef 9, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %field, align 1
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %7, label %if.end30.cleanup_crit_edge [
    i32 0, label %if.then32
    i32 1, label %if.end30.if.end38_crit_edge
  ]

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 1, ptr %field, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.end30.if.end38_crit_edge
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp40 = icmp eq i32 %11, 10
  %pix_limit = getelementptr inbounds %struct.fimc_variant, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %pix_limit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pix_limit, align 4
  %out_rot_dis_w = getelementptr inbounds %struct.fimc_pix_limit, ptr %13, i32 0, i32 5
  %min_out_pixsize = getelementptr inbounds %struct.fimc_variant, ptr %3, i32 0, i32 3
  %scaler_dis_w = getelementptr inbounds %struct.fimc_pix_limit, ptr %13, i32 0, i32 1
  %min_inp_pixsize = getelementptr inbounds %struct.fimc_variant, ptr %3, i32 0, i32 2
  %.sink.in = select i1 %cmp40, ptr %min_inp_pixsize, ptr %min_out_pixsize
  %max_w.0.in.in = select i1 %cmp40, ptr %scaler_dis_w, ptr %out_rot_dis_w
  %14 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %14)
  %.sink = load i16, ptr %.sink.in, align 2
  %15 = tail call i16 @llvm.cttz.i16(i16 %.sink, i1 true), !range !76
  %16 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.sink)
  %iszero47 = icmp eq i16 %.sink, 0
  %sub49 = select i1 %iszero47, i32 -1, i32 %16
  %17 = ptrtoint ptr %max_w.0.in.in to i32
  call void @__asan_load2_noabort(i32 %17)
  %max_w.0.in = load i16, ptr %max_w.0.in.in, align 2
  %max_w.0 = zext i16 %max_w.0.in to i32
  %fourcc.i = getelementptr inbounds %struct.fimc_fmt, ptr %call6, i32 0, i32 1
  %18 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fourcc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091860, i32 %19)
  %cmp.i107.not = icmp eq i32 %19, 842091860
  br i1 %cmp.i107.not, label %if.end38.if.end71_crit_edge, label %if.else54

if.end38.if.end71_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.else54:                                        ; preds = %if.end38
  %min_vsize_align = getelementptr inbounds %struct.fimc_variant, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %min_vsize_align to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %min_vsize_align, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp56 = icmp eq i16 %21, 1
  br i1 %cmp56, label %if.then58, label %if.else64

if.then58:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #11
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %call6, i32 0, i32 2
  %22 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %color, align 4
  %and = lshr i32 %23, 4
  %and.lobit = and i32 %and, 1
  %24 = xor i32 %and.lobit, 1
  br label %if.end71

if.else64:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #11
  %25 = tail call i16 @llvm.cttz.i16(i16 %21, i1 true), !range !76
  %26 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %iszero67 = icmp eq i16 %21, 0
  %sub69 = select i1 %iszero67, i32 -1, i32 %26
  br label %if.end71

if.end71:                                         ; preds = %if.else64, %if.then58, %if.end38.if.end71_crit_edge
  %mod_x.1 = phi i32 [ %sub49, %if.then58 ], [ %sub49, %if.else64 ], [ 6, %if.end38.if.end71_crit_edge ]
  %mod_y.0 = phi i32 [ %24, %if.then58 ], [ %sub69, %if.else64 ], [ 5, %if.end38.if.end71_crit_edge ]
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %pix_limit72 = getelementptr inbounds %struct.fimc_variant, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %pix_limit72 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pix_limit72, align 4
  %scaler_dis_w73 = getelementptr inbounds %struct.fimc_pix_limit, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %scaler_dis_w73 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %scaler_dis_w73, align 2
  %conv74 = zext i16 %30 to i32
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 16, i32 noundef %max_w.0, i32 noundef %mod_x.1, ptr noundef %height, i32 noundef 8, i32 noundef %conv74, i32 noundef %mod_y.0, i32 noundef 0) #9
  %31 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %fmt, align 1
  %33 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %height, align 1
  tail call void @fimc_adjust_mplane_format(ptr noundef nonnull %call6, i32 noundef %32, i32 noundef %34, ptr noundef %fmt) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end30.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end71 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_alpha_ctrl_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_adjust_mplane_format(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_m2m_try_selection(ptr noundef readonly %ctx, ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %top, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %name = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 12, i32 0, i32 12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 1, label %if.then4
    i32 2, label %if.then10
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %9 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %10)
  %cmp5.not = icmp eq i32 %10, 256
  br i1 %cmp5.not, label %cond.false, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %if.end
  %target11 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %11 = ptrtoint ptr %target11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %target11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp12.not = icmp eq i32 %12, 0
  br i1 %cmp12.not, label %cond.true, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.true:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %variant = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %variant, align 4
  %min_inp_pixsize = getelementptr inbounds %struct.fimc_variant, ptr %14, i32 0, i32 2
  br label %cond.end

cond.false:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %d_frame = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1
  %variant20 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %variant20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %variant20, align 4
  %min_out_pixsize = getelementptr inbounds %struct.fimc_variant, ptr %16, i32 0, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %f.0171 = phi ptr [ %ctx, %cond.true ], [ %d_frame, %cond.false ]
  %cond.in.in = phi ptr [ %min_inp_pixsize, %cond.true ], [ %min_out_pixsize, %cond.false ]
  %17 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %17)
  %cond.in = load i16, ptr %cond.in.in, align 2
  %cond = zext i16 %cond.in to i32
  %variant22 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %variant22, align 4
  %min_vsize_align = getelementptr inbounds %struct.fimc_variant, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %min_vsize_align to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %min_vsize_align, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp24 = icmp eq i16 %21, 1
  br i1 %cmp24, label %if.then26, label %if.else29

if.then26:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %fmt = getelementptr inbounds %struct.fimc_frame, ptr %f.0171, i32 0, i32 12
  %22 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fmt, align 4
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %color, align 4
  %and = lshr i32 %25, 4
  %and.lobit = and i32 %and, 1
  %26 = xor i32 %and.lobit, 1
  br label %if.end33

if.else29:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %27 = tail call i16 @llvm.cttz.i16(i16 %21, i1 true), !range !76
  %28 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %iszero = icmp eq i16 %21, 0
  %sub = select i1 %iszero, i32 -1, i32 %28
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then26
  %halign.0 = phi i32 [ %26, %if.then26 ], [ %sub, %if.else29 ]
  %fmt34 = getelementptr inbounds %struct.fimc_frame, ptr %f.0171, i32 0, i32 12
  %29 = ptrtoint ptr %fmt34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fmt34, align 4
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %memplanes, align 4
  %conv35 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp36175.not = icmp eq i16 %32, 0
  br i1 %cmp36175.not, label %if.end33.for.end_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end33.for.body_crit_edge
  %i.0177 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %depth.0176 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fimc_fmt, ptr %30, i32 0, i32 6, i32 %i.0177
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 1
  %conv40 = zext i8 %34 to i32
  %add = add i32 %depth.0176, %conv40
  %inc = add nuw nsw i32 %i.0177, 1
  %exitcond.not = icmp eq i32 %inc, %conv35
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = add i32 %add, 7
  %phi.bo178 = and i32 %phi.bo, -8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end33.for.end_crit_edge
  %depth.0.lcssa = phi i32 [ 0, %if.end33.for.end_crit_edge ], [ %phi.bo178, %for.end.loopexit ]
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %o_width = getelementptr inbounds %struct.fimc_frame, ptr %f.0171, i32 0, i32 2
  %35 = ptrtoint ptr %o_width to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %o_width, align 4
  %37 = tail call i32 @llvm.cttz.i32(i32 %cond, i1 true), !range !77
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond.in)
  %iszero42 = icmp eq i16 %cond.in, 0
  %sub44 = select i1 %iszero42, i32 -1, i32 %37
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %o_height = getelementptr inbounds %struct.fimc_frame, ptr %f.0171, i32 0, i32 3
  %38 = ptrtoint ptr %o_height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %o_height, align 4
  %div = udiv i32 64, %depth.0.lcssa
  tail call void @v4l_bound_align_image(ptr noundef %width, i32 noundef %cond, i32 noundef %36, i32 noundef %sub44, ptr noundef %height, i32 noundef %cond, i32 noundef %39, i32 noundef %halign.0, i32 noundef %div) #9
  %40 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %r, align 4
  %42 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %width, align 4
  %add52 = add i32 %43, %41
  %44 = ptrtoint ptr %o_width to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %o_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add52, i32 %45)
  %cmp54 = icmp ugt i32 %add52, %45
  br i1 %cmp54, label %if.then56, label %for.end.if.end63_crit_edge

for.end.if.end63_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub60 = sub i32 %45, %43
  %46 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub60, ptr %r, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then56, %for.end.if.end63_crit_edge
  %47 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %top, align 4
  %49 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height, align 4
  %add68 = add i32 %50, %48
  %51 = ptrtoint ptr %o_height to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %o_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add68, i32 %52)
  %cmp70 = icmp ugt i32 %add68, %52
  br i1 %cmp70, label %if.then72, label %if.end63.if.end79_crit_edge

if.end63.if.end79_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then72:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %sub76 = sub i32 %52, %50
  %53 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub76, ptr %top, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then72, %if.end63.if.end79_crit_edge
  %54 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %r, align 4
  %neg = sub nsw i32 0, %cond
  %and83 = and i32 %55, %neg
  store i32 %and83, ptr %r, align 4
  %56 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %top, align 4
  %58 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %variant22, align 4
  %hor_offs_align = getelementptr inbounds %struct.fimc_variant, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %hor_offs_align to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %hor_offs_align, align 4
  %conv89 = zext i16 %61 to i32
  %neg91 = sub nsw i32 0, %conv89
  %and92 = and i32 %57, %neg91
  store i32 %and92, ptr %top, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_m2m_try_selection.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_m2m_try_selection, %if.then102)) #9
          to label %cleanup [label %if.then102], !srcloc !70

if.then102:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %r, align 4
  %64 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %top, align 4
  %66 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %width, align 4
  %68 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %height, align 4
  %70 = ptrtoint ptr %f.0171 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %f.0171, align 4
  %f_height = getelementptr inbounds %struct.fimc_frame, ptr %f.0171, i32 0, i32 1
  %72 = ptrtoint ptr %f_height to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %f_height, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_m2m_try_selection.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef 480, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %if.end79, %if.then10.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then4.cleanup_crit_edge ], [ -22, %if.then10.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then102 ], [ 0, %if.end79 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_check_scaler_ratio(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fimc_device_run(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !75

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end23:                                         ; preds = %entry
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %state = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #9
  %d_frame = getelementptr inbounds %struct.fimc_ctx, ptr %priv, i32 0, i32 1
  %state32 = getelementptr inbounds %struct.fimc_ctx, ptr %priv, i32 0, i32 13
  %2 = ptrtoint ptr %state32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state32, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end23.if.end35_crit_edge, label %if.then34

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fimc_prepare_dma_offset(ptr noundef nonnull %priv, ptr noundef nonnull %priv) #9
  tail call void @fimc_prepare_dma_offset(ptr noundef nonnull %priv, ptr noundef %d_frame) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end23.if.end35_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.fimc_ctx, ptr %priv, i32 0, i32 15, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #9
  %addr = getelementptr inbounds %struct.fimc_frame, ptr %priv, i32 0, i32 10
  %call37 = tail call i32 @fimc_prepare_addr(ptr noundef nonnull %priv, ptr noundef %call.i, ptr noundef nonnull %priv, ptr noundef %addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end35.dma_unlock_crit_edge

if.end35.dma_unlock_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_unlock

if.end40:                                         ; preds = %if.end35
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 7
  %call.i141 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #9
  %addr45 = getelementptr inbounds %struct.fimc_ctx, ptr %priv, i32 0, i32 1, i32 10
  %call46 = tail call i32 @fimc_prepare_addr(ptr noundef nonnull %priv, ptr noundef %call.i141, ptr noundef %d_frame, ptr noundef %addr45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end40.dma_unlock_crit_edge

if.end40.dma_unlock_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_unlock

if.end49:                                         ; preds = %if.end40
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %timestamp, align 8
  %timestamp52 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i141, i32 0, i32 5
  %10 = ptrtoint ptr %timestamp52 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %timestamp52, align 8
  %flags53 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i141, i32 0, i32 1
  %11 = ptrtoint ptr %flags53 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags53, align 8
  %and54 = and i32 %12, -458753
  store i32 %and54, ptr %flags53, align 8
  %flags55 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags55, align 8
  %and56 = and i32 %14, 458752
  %or = or i32 %and56, %and54
  store i32 %or, ptr %flags53, align 8
  %ctx58 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %ctx58 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx58, align 4
  %cmp59.not = icmp eq ptr %16, %priv
  br i1 %cmp59.not, label %if.end49.if.end66_crit_edge, label %if.then61

if.end49.if.end66_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then61:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %state32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state32, align 4
  %or63 = or i32 %18, 1
  store i32 %or63, ptr %state32, align 4
  %19 = ptrtoint ptr %ctx58 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %priv, ptr %ctx58, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end49.if.end66_crit_edge
  %20 = ptrtoint ptr %state32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state32, align 4
  %and68 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end66.if.end78_crit_edge, label %if.then70

if.end66.if.end78_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then70:                                        ; preds = %if.end66
  tail call void @fimc_set_yuv_order(ptr noundef nonnull %priv) #9
  tail call void @fimc_hw_set_input_path(ptr noundef nonnull %priv) #9
  tail call void @fimc_hw_set_in_dma(ptr noundef nonnull %priv) #9
  %call71 = tail call i32 @fimc_set_scaler_info(ptr noundef nonnull %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.then70.dma_unlock_crit_edge

if.then70.dma_unlock_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_unlock

if.end74:                                         ; preds = %if.then70
  tail call void @fimc_hw_set_prescaler(ptr noundef nonnull %priv) #9
  tail call void @fimc_hw_set_mainscaler(ptr noundef nonnull %priv) #9
  tail call void @fimc_hw_set_target_format(ptr noundef nonnull %priv) #9
  tail call void @fimc_hw_set_rotation(ptr noundef nonnull %priv) #9
  tail call void @fimc_hw_set_effect(ptr noundef nonnull %priv) #9
  tail call void @fimc_hw_set_out_dma(ptr noundef nonnull %priv) #9
  %drv_data = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drv_data, align 8
  %alpha_color = getelementptr inbounds %struct.fimc_drvdata, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %alpha_color to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %alpha_color, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool75.not = icmp eq i8 %25, 0
  br i1 %tobool75.not, label %if.end74.if.end77_crit_edge, label %if.then76

if.end74.if.end77_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fimc_hw_set_rgb_alpha(ptr noundef nonnull %priv) #9
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end74.if.end77_crit_edge
  tail call void @fimc_hw_set_output_path(ptr noundef nonnull %priv) #9
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end66.if.end78_crit_edge
  tail call void @fimc_hw_set_input_addr(ptr noundef %1, ptr noundef %addr) #9
  tail call void @fimc_hw_set_output_addr(ptr noundef %1, ptr noundef %addr45, i32 noundef -1) #9
  tail call void @fimc_activate_capture(ptr noundef nonnull %priv) #9
  %26 = ptrtoint ptr %state32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state32, align 4
  %and82 = and i32 %27, 196608
  store i32 %and82, ptr %state32, align 4
  tail call void @fimc_hw_activate_input_dma(ptr noundef %1, i1 noundef zeroext true) #9
  br label %dma_unlock

dma_unlock:                                       ; preds = %if.end78, %if.then70.dma_unlock_crit_edge, %if.end40.dma_unlock_crit_edge, %if.end35.dma_unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call27) #9
  br label %cleanup

cleanup:                                          ; preds = %dma_unlock, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fimc_job_abort(ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @fimc_m2m_shutdown(ptr noundef %priv)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_prepare_dma_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_prepare_addr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_set_yuv_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_input_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_in_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_set_scaler_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_prescaler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_mainscaler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_target_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_rotation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_effect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_out_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_rgb_alpha(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_output_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_input_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_output_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_activate_capture(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_activate_input_dma(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !58}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 733, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 738, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @fimc_register_m2m_device._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @fimc_register_m2m_device._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 750, i32 2}
!10 = !{ptr @fimc_register_m2m_device._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @fimc_register_m2m_device._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @fimc_m2m_fops, !13, !"fimc_m2m_fops", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 700, i32 42}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 609, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @fimc_m2m_open.__UNIQUE_ID_ddebug300, !15, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!19 = !{ptr @fimc_qops, !20, !"fimc_qops", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 215, i32 29}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/exynos4-is/fimc-core.h", i32 603, i32 3}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ctx_get_frame._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @ctx_get_frame._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 682, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @fimc_m2m_release.__UNIQUE_ID_ddebug301, !31, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!34 = !{ptr @fimc_m2m_ioctl_ops, !35, !"fimc_m2m_ioctl_ops", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 525, i32 36}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 355, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @fimc_m2m_s_fmt_mplane._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @fimc_m2m_s_fmt_mplane._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 277, i32 6}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 511, i32 3}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @fimc_m2m_s_selection._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @fimc_m2m_s_selection._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 436, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @fimc_m2m_try_selection._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @fimc_m2m_try_selection._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 478, i32 2}
!55 = !{ptr @fimc_m2m_try_selection.__UNIQUE_ID_ddebug299, !54, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!56 = !{ptr @m2m_ops, !57, !"m2m_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 709, i32 34}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/exynos4-is/fimc-m2m.c", i32 98, i32 6}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2148970914, i64 2148970919, i64 2148970932, i64 2148970976, i64 2148971010, i64 2148971031}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2148356956}
!73 = !{i64 842576, i64 842601, i64 842623, i64 842639, i64 842651, i64 842671, i64 842695, i64 842711, i64 842723}
!74 = !{i64 2148357144}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i16 0, i16 17}
!77 = !{i32 0, i32 33}
