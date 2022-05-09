; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos4-is/fimc-capture.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-capture.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_format = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.fimc_dev = type { %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, [2 x ptr], ptr, %struct.wait_queue_head, ptr, %struct.fimc_m2m_device, %struct.fimc_vid_cap, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.fimc_pipeline = type { %struct.exynos_media_pipeline, %struct.list_head, ptr, [5 x ptr] }
%struct.exynos_media_pipeline = type { %struct.media_pipeline, ptr }
%struct.fimc_ctx = type { %struct.fimc_frame, %struct.fimc_frame, i32, i32, i32, i32, i32, i32, %struct.fimc_scaler, %struct.fimc_effect, i32, i8, i32, i32, ptr, %struct.v4l2_fh, %struct.fimc_ctrls }
%struct.fimc_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], %struct.fimc_addr, %struct.fimc_dma_offset, ptr, i8 }
%struct.fimc_addr = type { i32, i32, i32 }
%struct.fimc_dma_offset = type { i32, i32, i32, i32, i32, i32 }
%struct.fimc_scaler = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fimc_effect = type { i32, i8, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.fimc_ctrls = type { %struct.v4l2_ctrl_handler, %struct.anon.114, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.114 = type { ptr, ptr }
%struct.fimc_fmt = type { i32, i32, i32, i16, i16, i8, [3 x i8], i16, i16 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fimc_drvdata = type { [4 x ptr], i32, i32, i8, i8, i8, i8 }
%struct.exynos_media_pipeline_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.fimc_vid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.fimc_addr, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.fimc_md = type { [2 x %struct.fimc_csis_info], [4 x %struct.fimc_sensor_info], i32, [2 x %struct.fimc_camclk_info], [2 x ptr], [3 x ptr], [4 x ptr], ptr, i8, ptr, %struct.media_device, %struct.v4l2_device, ptr, %struct.cam_clk_provider, %struct.v4l2_async_notifier, i8, %struct.spinlock, %struct.list_head, %struct.media_graph }
%struct.fimc_csis_info = type { ptr, i32 }
%struct.fimc_sensor_info = type { %struct.fimc_source_info, ptr, ptr, ptr }
%struct.fimc_camclk_info = type { ptr, i32, i32 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cam_clk_provider = type { [2 x ptr], %struct.clk_onecell_data, ptr, [2 x %struct.cam_clk], i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.cam_clk = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.fimc_variant = type { i8, ptr, i16, i16, i16, i16 }
%struct.fimc_pix_limit = type { i16, i16, i16, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
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
%struct.v4l2_mbus_frame_desc = type { [4 x %struct.v4l2_mbus_frame_desc_entry], i16 }
%struct.v4l2_mbus_frame_desc_entry = type { i32, i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }

@fimc_capture_irq_handler.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"s5p_fimc\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fimc_capture_irq_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/platform/exynos4-is/fimc-capture.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d: next frame: %d, done frame: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@fimc_capture_irq_handler.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d: frame: %d, active_buf_cnt: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@fimc_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FIMC.%d\00", [24 x i8] zeroinitializer }, align 32
@fimc_sd_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @fimc_link_setup, ptr null }, [20 x i8] zeroinitializer }, align 32
@fimc_capture_sd_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @fimc_capture_subdev_registered, ptr @fimc_capture_subdev_unregistered, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: stream on failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_queue\00", [19 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr = internal global ptr @buffer_queue._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@fimc_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @fimc_subdev_enum_mbus_code, ptr null, ptr null, ptr @fimc_subdev_get_fmt, ptr @fimc_subdev_set_fmt, ptr @fimc_subdev_get_selection, ptr @fimc_subdev_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@fimc_subdev_set_fmt.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 1, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fimc_subdev_set_fmt\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%d: pad%d: code: 0x%x, %dx%d\0A\00", [63 x i8] zeroinitializer }, align 32
@fimc_capture_try_format.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fimc_capture_try_format\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d: pad%d: code: 0x%x, %dx%d. dst fmt: %dx%d\0A\00", [47 x i8] zeroinitializer }, align 32
@fimc_subdev_get_selection.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 1, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fimc_subdev_get_selection\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d: target %#x: l:%d, t:%d, %dx%d, f_w: %d, f_h: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@fimc_subdev_set_selection.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 1, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fimc_subdev_set_selection\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%d: target %#x: (%d,%d)/%dx%d\0A\00", [62 x i8] zeroinitializer }, align 32
@fimc_capture_try_selection.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fimc_capture_try_selection\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d: target %#x: (%d,%d)/%dx%d, sink fmt: %dx%d\0A\00", [45 x i8] zeroinitializer }, align 32
@fimc_link_setup.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 1, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fimc_link_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d: %s --> %s, flags: 0x%x. input: 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fimc.%d.capture\00", [16 x i8] zeroinitializer }, align 32
@fimc_capture_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @fimc_capture_open, ptr @fimc_capture_release }, [60 x i8] zeroinitializer }, align 32
@fimc_capture_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @fimc_cap_querycap, ptr @fimc_cap_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_cap_g_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_cap_s_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_cap_try_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_cap_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @fimc_cap_streamon, ptr @fimc_cap_streamoff, ptr null, ptr null, ptr null, ptr @fimc_cap_enum_input, ptr @fimc_cap_g_input, ptr @fimc_cap_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_cap_g_selection, ptr @fimc_cap_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@fimc_capture_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr null, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@fimc_register_capture_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Registered %s as /dev/%s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fimc_register_capture_device\00", [35 x i8] zeroinitializer }, align 32
@fimc_register_capture_device._entry_ptr = internal global ptr @fimc_register_capture_device._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fimc_capture_open.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fimc_capture_open\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:%d: pid: %d, state: 0x%lx\0A\00", [34 x i8] zeroinitializer }, align 32
@__const.fimc_capture_set_default_format.fmt = private unnamed_addr constant %struct.v4l2_format { i32 9, %union.anon.90 { %struct.v4l2_pix_format_mplane { i32 640, i32 480, i32 1448695129, i32 1, i32 7, [8 x %struct.v4l2_plane_pix_format] zeroinitializer, i8 0, i8 0, %union.anon.92 zeroinitializer, i8 0, i8 0, [7 x i8] zeroinitializer }, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" } }, align 4
@fimc_get_sensor_frame_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Unsupported buffer size: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fimc_get_sensor_frame_desc\00", [37 x i8] zeroinitializer }, align 32
@fimc_get_sensor_frame_desc._entry_ptr = internal global ptr @fimc_get_sensor_frame_desc._entry, section ".printk_index", align 4
@fimc_capture_release.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.26, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fimc_capture_release\00", [43 x i8] zeroinitializer }, align 32
@buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: User buffer too small (%ld < %ld)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr = internal global ptr @buffer_prepare._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 256, i64 258]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1195724874, i64 1229141331]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1195724874, i64 1229141331]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 210, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 254, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"fimc_subdev_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1688, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1870, i32 39 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"fimc_sd_media_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1403, i32 45 }
@___asan_gen_.68 = private unnamed_addr constant [29 x i8] c"fimc_capture_sd_internal_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1858, i32 46 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 448, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1163, i32 7 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"fimc_subdev_pad_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1680, i32 41 }
@___asan_gen_.87 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 998, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1521, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 632, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1624, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1673, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 705, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1377, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1732, i32 41 }
@___asan_gen_.128 = private unnamed_addr constant [18 x i8] c"fimc_capture_fops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 549, i32 42 }
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"fimc_capture_ioctl_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1334, i32 36 }
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"fimc_capture_qops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 454, i32 29 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1795, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 473, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 880, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 522, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [52 x i8] c"../drivers/media/platform/exynos4-is/fimc-capture.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 389, i32 4 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @buffer_prepare._entry, ptr @buffer_prepare._entry_ptr, ptr @buffer_queue._entry, ptr @buffer_queue._entry_ptr, ptr @fimc_get_sensor_frame_desc._entry, ptr @fimc_get_sensor_frame_desc._entry_ptr, ptr @fimc_register_capture_device._entry, ptr @fimc_register_capture_device._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fimc_subdev_ops, ptr @.str.5, ptr @fimc_sd_media_ops, ptr @fimc_capture_sd_internal_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @fimc_subdev_pad_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @fimc_capture_fops, ptr @fimc_capture_ioctl_ops, ptr @fimc_capture_qops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_sd_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_capture_sd_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_capture_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_capture_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_capture_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_register_capture_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_get_sensor_frame_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_capture_irq_handler(ptr noundef %fimc, i32 noundef %deq_buf) local_unnamed_addr #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vid_cap = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13
  %pipe = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 2, i32 1
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %arrayidx = getelementptr %struct.fimc_pipeline, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vid_cap, align 8
  %state = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 14
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %irq_queue = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %irq_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %done

if.end:                                           ; preds = %entry
  %active_buf_q = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 9
  %6 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %active_buf_q, align 4
  %cmp.i.not = icmp eq ptr %7, %active_buf_q
  br i1 %cmp.i.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deq_buf)
  %tobool7.not = icmp eq i32 %deq_buf, 0
  %or.cond = or i1 %tobool7.not, %tobool5.not
  br i1 %or.cond, label %land.lhs.true.if.end14_crit_edge, label %if.then8

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then8:                                         ; preds = %land.lhs.true
  %11 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %active_buf_q, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.fimc_active_queue_pop.exit_crit_edge

if.then8.fimc_active_queue_pop.exit_crit_edge:    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_active_queue_pop.exit

if.end.i.i.i:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %fimc_active_queue_pop.exit

fimc_active_queue_pop.exit:                       ; preds = %if.end.i.i.i, %if.then8.fimc_active_queue_pop.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %12, i32 -736
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %active_buf_cnt.i = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 11
  %21 = ptrtoint ptr %active_buf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %active_buf_cnt.i, align 4
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %active_buf_cnt.i, align 4
  %call.i = tail call i64 @ktime_get() #12
  %timestamp = getelementptr i8, ptr %12, i32 -712
  %23 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call.i, ptr %timestamp, align 8
  %frame_count = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 13
  %24 = ptrtoint ptr %frame_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame_count, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %frame_count, align 4
  %sequence = getelementptr i8, ptr %12, i32 -272
  %26 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %sequence, align 8
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 5) #12
  br label %if.end14

if.end14:                                         ; preds = %fimc_active_queue_pop.exit, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %pending_buf_q = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 8
  %27 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %pending_buf_q, align 4
  %cmp.i204.not = icmp eq ptr %28, %pending_buf_q
  br i1 %cmp.i204.not, label %if.end14.if.end34_crit_edge, label %if.then17

if.end14.if.end34_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then17:                                        ; preds = %if.end14
  %29 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pending_buf_q, align 4
  %call.i.i.i206 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #12
  br i1 %call.i.i.i206, label %if.end.i.i.i209, label %if.then17.fimc_pending_queue_pop.exit_crit_edge

if.then17.fimc_pending_queue_pop.exit_crit_edge:  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pending_queue_pop.exit

if.end.i.i.i209:                                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i207 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i207, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %prev1.i.i.i.i208 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i208, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %fimc_pending_queue_pop.exit

fimc_pending_queue_pop.exit:                      ; preds = %if.end.i.i.i209, %if.then17.fimc_pending_queue_pop.exit_crit_edge
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  %prev.i.i211 = getelementptr %struct.list_head, ptr %30, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i211 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i211, align 4
  %addr = getelementptr i8, ptr %30, i32 8
  %buf_index = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 12
  %39 = ptrtoint ptr %buf_index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buf_index, align 8
  tail call void @fimc_hw_set_output_addr(ptr noundef %fimc, ptr noundef %addr, i32 noundef %40) #12
  %41 = ptrtoint ptr %buf_index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buf_index, align 8
  %index = getelementptr i8, ptr %30, i32 20
  %43 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %index, align 4
  %prev.i.i213 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 9, i32 1
  %44 = ptrtoint ptr %prev.i.i213 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i213, align 4
  %call.i.i.i214 = tail call zeroext i1 @__list_add_valid(ptr noundef %30, ptr noundef %45, ptr noundef %active_buf_q) #12
  br i1 %call.i.i.i214, label %if.end.i.i.i215, label %fimc_pending_queue_pop.exit.fimc_active_queue_add.exit_crit_edge

fimc_pending_queue_pop.exit.fimc_active_queue_add.exit_crit_edge: ; preds = %fimc_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_active_queue_add.exit

if.end.i.i.i215:                                  ; preds = %fimc_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %prev.i.i213 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %30, ptr %prev.i.i213, align 4
  %47 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %active_buf_q, ptr %30, align 4
  %48 = ptrtoint ptr %prev.i.i211 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev.i.i211, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %30, ptr %45, align 4
  br label %fimc_active_queue_add.exit

fimc_active_queue_add.exit:                       ; preds = %if.end.i.i.i215, %fimc_pending_queue_pop.exit.fimc_active_queue_add.exit_crit_edge
  %active_buf_cnt.i216 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 11
  %50 = ptrtoint ptr %active_buf_cnt.i216 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %active_buf_cnt.i216, align 4
  %inc.i = add i32 %51, 1
  store i32 %inc.i, ptr %active_buf_cnt.i216, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_capture_irq_handler.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_capture_irq_handler, %if.then25)) #12
          to label %do.end [label %if.then25], !srcloc !93

if.then25:                                        ; preds = %fimc_active_queue_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call i32 @fimc_hw_get_frame_index(ptr noundef %fimc) #12
  %52 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_capture_irq_handler.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 211, i32 noundef %call26, i32 noundef %53) #12
  br label %do.end

do.end:                                           ; preds = %if.then25, %fimc_active_queue_add.exit
  %54 = ptrtoint ptr %buf_index to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %buf_index, align 8
  %inc30 = add i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc30)
  %cmp = icmp sgt i32 %inc30, 3
  %spec.store.select = select i1 %cmp, i32 0, i32 %inc30
  %56 = ptrtoint ptr %buf_index to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %spec.store.select, ptr %buf_index, align 8
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.end14.if.end34_crit_edge
  %fmt = getelementptr inbounds %struct.fimc_ctx, ptr %5, i32 0, i32 1, i32 12
  %57 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fmt, align 4
  %mdataplanes = getelementptr inbounds %struct.fimc_fmt, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %mdataplanes to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %mdataplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool35.not = icmp eq i16 %60, 0
  br i1 %tobool35.not, label %if.end34.if.end94_crit_edge, label %land.lhs.true36

if.end34.if.end94_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

land.lhs.true36:                                  ; preds = %if.end34
  %61 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %active_buf_q, align 4
  %cmp.i217.not = icmp eq ptr %62, %active_buf_q
  br i1 %cmp.i217.not, label %land.lhs.true36.if.end94_crit_edge, label %if.then40

land.lhs.true36.if.end94_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then40:                                        ; preds = %land.lhs.true36
  %63 = tail call i16 @llvm.cttz.i16(i16 %60, i1 true), !range !94
  %64 = zext i16 %63 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #12
  %arrayidx44 = getelementptr %struct.fimc_ctx, ptr %5, i32 0, i32 1, i32 8, i32 %64
  %65 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx44, align 4
  %67 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %size, align 4
  %call46 = tail call i32 @fimc_hw_get_frame_index(ptr noundef %fimc) #12
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then40
  %.pn.in = phi ptr [ %active_buf_q, %if.then40 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %68 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp52.not = icmp eq ptr %.pn, %active_buf_q
  br i1 %cmp52.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %index56 = getelementptr i8, ptr %.pn, i32 20
  %69 = ptrtoint ptr %index56 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %index56, align 4
  %cmp57.not = icmp eq i32 %70, %call46
  br i1 %cmp57.not, label %if.end60, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.end60:                                         ; preds = %for.body
  %v_buf.0.le = getelementptr i8, ptr %.pn, i32 -736
  %call63 = tail call ptr @vb2_plane_vaddr(ptr noundef %v_buf.0.le, i32 noundef %64) #12
  %tobool64.not = icmp eq ptr %3, null
  br i1 %tobool64.not, label %if.end60.for.end_crit_edge, label %if.else

if.end60.for.end_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.else:                                          ; preds = %if.end60
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %71 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %video, align 4
  %tobool66.not = icmp eq ptr %74, null
  br i1 %tobool66.not, label %if.else.for.end_crit_edge, label %land.lhs.true67

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true67:                                  ; preds = %if.else
  %s_rx_buffer = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %74, i32 0, i32 17
  %75 = ptrtoint ptr %s_rx_buffer to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_rx_buffer, align 4
  %tobool70.not = icmp eq ptr %76, null
  br i1 %tobool70.not, label %land.lhs.true67.for.end_crit_edge, label %if.else72

land.lhs.true67.for.end_crit_edge:                ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.else72:                                        ; preds = %land.lhs.true67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool73.not = icmp eq ptr %77, null
  br i1 %tobool73.not, label %if.else72.if.else80_crit_edge, label %land.lhs.true74

if.else72.if.else80_crit_edge:                    ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else80

land.lhs.true74:                                  ; preds = %if.else72
  %s_rx_buffer75 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %77, i32 0, i32 17
  %78 = ptrtoint ptr %s_rx_buffer75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_rx_buffer75, align 4
  %tobool76.not = icmp eq ptr %79, null
  br i1 %tobool76.not, label %land.lhs.true74.if.else80_crit_edge, label %land.lhs.true74.for.end.sink.split_crit_edge

land.lhs.true74.for.end.sink.split_crit_edge:     ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.sink.split

land.lhs.true74.if.else80_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else80

if.else80:                                        ; preds = %land.lhs.true74.if.else80_crit_edge, %if.else72.if.else80_crit_edge
  br label %for.end.sink.split

for.end.sink.split:                               ; preds = %if.else80, %land.lhs.true74.for.end.sink.split_crit_edge
  %.sink = phi ptr [ %76, %if.else80 ], [ %79, %land.lhs.true74.for.end.sink.split_crit_edge ]
  %call79 = call i32 %.sink(ptr noundef nonnull %3, ptr noundef %call63, ptr noundef nonnull %size) #12
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %land.lhs.true67.for.end_crit_edge, %if.else.for.end_crit_edge, %if.end60.for.end_crit_edge, %for.cond.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #12
  br label %if.end94

if.end94:                                         ; preds = %for.end, %land.lhs.true36.if.end94_crit_edge, %if.end34.if.end94_crit_edge
  %active_buf_cnt = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 11
  %80 = ptrtoint ptr %active_buf_cnt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %active_buf_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp95 = icmp eq i32 %81, 0
  br i1 %cmp95, label %if.then97, label %if.else109

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deq_buf)
  %tobool98.not = icmp eq i32 %deq_buf, 0
  br i1 %tobool98.not, label %if.then97.if.end101_crit_edge, label %if.then99

if.then97.if.end101_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then99:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  call void @_clear_bit(i32 noundef 6, ptr noundef %state) #12
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.then97.if.end101_crit_edge
  %buf_index102 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 12
  %82 = ptrtoint ptr %buf_index102 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %buf_index102, align 8
  %inc103 = add i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc103)
  %cmp104 = icmp sgt i32 %inc103, 3
  %spec.store.select198 = select i1 %cmp104, i32 0, i32 %inc103
  %84 = ptrtoint ptr %buf_index102 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %spec.store.select198, ptr %buf_index102, align 8
  br label %if.end111

if.else109:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 6, ptr noundef %state) #12
  br label %if.end111

if.end111:                                        ; preds = %if.else109, %if.end101
  %85 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %state, align 4
  %87 = and i32 %86, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool114.not = icmp eq i32 %87, 0
  br i1 %tobool114.not, label %if.end111.done_crit_edge, label %if.then115

if.end111.done_crit_edge:                         ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then115:                                       ; preds = %if.end111
  %88 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vid_cap, align 8
  %fimc_dev.i = getelementptr inbounds %struct.fimc_ctx, ptr %89, i32 0, i32 14
  %90 = ptrtoint ptr %fimc_dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fimc_dev.i, align 4
  call void @fimc_hw_set_camera_offset(ptr noundef %91, ptr noundef %89) #12
  %call.i219 = call i32 @fimc_set_scaler_info(ptr noundef %89) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %tobool.not.i = icmp eq i32 %call.i219, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then115.done_crit_edge

if.then115.done_crit_edge:                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end.i:                                         ; preds = %if.then115
  call void @fimc_hw_set_prescaler(ptr noundef %89) #12
  call void @fimc_hw_set_mainscaler(ptr noundef %89) #12
  call void @fimc_hw_set_target_format(ptr noundef %89) #12
  call void @fimc_hw_set_rotation(ptr noundef %89) #12
  call void @fimc_hw_set_effect(ptr noundef %89) #12
  %d_frame.i = getelementptr inbounds %struct.fimc_ctx, ptr %89, i32 0, i32 1
  call void @fimc_prepare_dma_offset(ptr noundef %89, ptr noundef %d_frame.i) #12
  call void @fimc_hw_set_out_dma(ptr noundef %89) #12
  %drv_data.i = getelementptr inbounds %struct.fimc_dev, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %drv_data.i, align 8
  %alpha_color.i = getelementptr inbounds %struct.fimc_drvdata, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %alpha_color.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %alpha_color.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool1.not.i = icmp eq i8 %95, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @fimc_hw_set_rgb_alpha(ptr noundef %89) #12
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %state.i = getelementptr inbounds %struct.fimc_dev, ptr %91, i32 0, i32 14
  call void @_clear_bit(i32 noundef 12, ptr noundef %state.i) #12
  br label %done

done:                                             ; preds = %if.end3.i, %if.then115.done_crit_edge, %if.end111.done_crit_edge, %if.then
  %active_buf_cnt119 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 11
  %96 = ptrtoint ptr %active_buf_cnt119 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %active_buf_cnt119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp120 = icmp eq i32 %97, 1
  br i1 %cmp120, label %if.then122, label %done.do.body125_crit_edge

done.do.body125_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body125

if.then122:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  call void @fimc_deactivate_capture(ptr noundef %fimc) #12
  call void @_clear_bit(i32 noundef 7, ptr noundef %state) #12
  br label %do.body125

do.body125:                                       ; preds = %if.then122, %done.do.body125_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_capture_irq_handler.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_capture_irq_handler, %if.then137)) #12
          to label %do.end142 [label %if.then137], !srcloc !93

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #14
  %call138 = call i32 @fimc_hw_get_frame_index(ptr noundef %fimc) #12
  %98 = ptrtoint ptr %active_buf_cnt119 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %active_buf_cnt119, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_capture_irq_handler.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef %call138, i32 noundef %99) #12
  br label %do.end142

do.end142:                                        ; preds = %if.then137, %do.body125
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_output_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_hw_get_frame_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_deactivate_capture(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_capture_suspend(ptr noundef %fimc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 14
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  %call2 = tail call fastcc i32 @fimc_stop_capture(ptr noundef %fimc, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ve = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 2
  %tobool4.not = icmp eq ptr %ve, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %pipe = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 2, i32 1
  %3 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pipe, align 8
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %cond.false

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %cond.false.cleanup_crit_edge, label %land.lhs.true

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %cond.false
  %close = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %close, align 4
  %tobool16.not = icmp eq ptr %8, null
  br i1 %tobool16.not, label %land.lhs.true.cleanup_crit_edge, label %cond.true17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.true17:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call i32 %8(ptr noundef nonnull %4) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.true17, %land.lhs.true.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %call26, %cond.true17 ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %cond.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_stop_capture(ptr noundef %fimc, i1 noundef zeroext %suspend) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fimc) #12
  %state.i = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 14
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 8
  %2 = and i32 %1, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %.not = icmp eq i32 %2, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fimc, i32 noundef %call2.i) #12
  br i1 %.not, label %entry.cleanup60_crit_edge, label %do.body1

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup60

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fimc) #12
  tail call void @_set_bit(i32 noundef 10, ptr noundef %state.i) #12
  tail call void @fimc_deactivate_capture(ptr noundef %fimc) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fimc, i32 noundef %call3) #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 140) #12
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %5 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body1.if.end56_crit_edge, label %if.then27

do.body1.if.end56_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then27:                                        ; preds = %do.body1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %irq_queue = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 10
  %call2983 = call i32 @prepare_to_wait_event(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool33.not84 = icmp eq i32 %9, 0
  br i1 %tobool33.not84, label %if.then27.for.end_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  br label %cleanup

if.then27.for.end_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then27.cleanup_crit_edge
  %__ret28.185 = phi i32 [ %__ret28.1, %cleanup.cleanup_crit_edge ], [ 20, %if.then27.cleanup_crit_edge ]
  %call53 = call i32 @schedule_timeout(i32 noundef %__ret28.185) #12
  %call29 = call i32 @prepare_to_wait_event(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool33.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool39.not = icmp eq i32 %call53, 0
  %13 = select i1 %tobool33.not, i1 %tobool39.not, i1 false
  %__ret28.1 = select i1 %13, i32 1, i32 %call53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.1)
  %tobool46.not = icmp eq i32 %__ret28.1, 0
  %14 = select i1 %tobool33.not, i1 true, i1 %tobool46.not
  br i1 %14, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then27.for.end_crit_edge
  call void @finish_wait(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end56

if.end56:                                         ; preds = %for.end, %do.body1.if.end56_crit_edge
  %call59 = call fastcc i32 @fimc_capture_state_cleanup(ptr noundef %fimc, i1 noundef zeroext %suspend)
  br label %cleanup60

cleanup60:                                        ; preds = %if.end56, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ %call59, %if.end56 ], [ 0, %entry.cleanup60_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_capture_resume(ptr noundef %fimc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ve2 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 2
  %state = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 14
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %active_buf_q = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 9
  %0 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %active_buf_q, ptr %active_buf_q, align 4
  %prev.i = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 9, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %active_buf_q, ptr %prev.i, align 4
  %buf_index = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 12
  %2 = ptrtoint ptr %buf_index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %buf_index, align 8
  %tobool4.not = icmp eq ptr %ve2, null
  br i1 %tobool4.not, label %if.end.cond.end18_crit_edge, label %lor.lhs.false

if.end.cond.end18_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end18

lor.lhs.false:                                    ; preds = %if.end
  %pipe = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 2, i32 1
  %3 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pipe, align 8
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %lor.lhs.false.cond.end18_crit_edge, label %cond.false

lor.lhs.false.cond.end18_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end18

cond.false:                                       ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %cond.false.cond.end18_crit_edge, label %land.lhs.true

cond.false.cond.end18_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end18

land.lhs.true:                                    ; preds = %cond.false
  %open = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %open, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %land.lhs.true.cond.end18_crit_edge, label %cond.true11

land.lhs.true.cond.end18_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end18

cond.true11:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call i32 %8(ptr noundef nonnull %4, ptr noundef nonnull %ve2, i1 noundef zeroext false) #12
  br label %cond.end18

cond.end18:                                       ; preds = %cond.true11, %land.lhs.true.cond.end18_crit_edge, %cond.false.cond.end18_crit_edge, %lor.lhs.false.cond.end18_crit_edge, %if.end.cond.end18_crit_edge
  %call20 = tail call fastcc i32 @fimc_capture_hw_init(ptr noundef %fimc)
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %state) #12
  %pending_buf_q = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 8
  %reqbufs_count = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 14
  %9 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reqbufs_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp47.not = icmp eq i32 %10, 0
  br i1 %cmp47.not, label %cond.end18.cleanup_crit_edge, label %cond.end18.for.body_crit_edge

cond.end18.for.body_crit_edge:                    ; preds = %cond.end18
  br label %for.body

cond.end18.cleanup_crit_edge:                     ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %fimc_pending_queue_pop.exit.for.body_crit_edge, %cond.end18.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %fimc_pending_queue_pop.exit.for.body_crit_edge ], [ 0, %cond.end18.for.body_crit_edge ]
  %11 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %pending_buf_q, align 4
  %cmp.i.not = icmp eq ptr %12, %pending_buf_q
  br i1 %cmp.i.not, label %for.body.cleanup_crit_edge, label %if.end25

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %for.body
  %13 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pending_buf_q, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end25.fimc_pending_queue_pop.exit_crit_edge

if.end25.fimc_pending_queue_pop.exit_crit_edge:   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pending_queue_pop.exit

if.end.i.i.i:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %fimc_pending_queue_pop.exit

fimc_pending_queue_pop.exit:                      ; preds = %if.end.i.i.i, %if.end25.fimc_pending_queue_pop.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %14, i32 -736
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @buffer_queue(ptr noundef %add.ptr.i)
  %inc = add nuw i32 %i.048, 1
  %23 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reqbufs_count, align 8
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %fimc_pending_queue_pop.exit.for.body_crit_edge, label %fimc_pending_queue_pop.exit.cleanup_crit_edge

fimc_pending_queue_pop.exit.cleanup_crit_edge:    ; preds = %fimc_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

fimc_pending_queue_pop.exit.for.body_crit_edge:   ; preds = %fimc_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %fimc_pending_queue_pop.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %cond.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_capture_hw_init(ptr noundef %fimc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vid_cap = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13
  %source_config = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 7
  %0 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vid_cap, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fmt = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt, align 4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %source_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %source_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp4 = icmp eq i32 %5, 5
  br i1 %cmp4, label %if.then5, label %if.end.do.body10_crit_edge

if.end.do.body10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10

if.then5:                                         ; preds = %if.end
  %call = tail call i32 @fimc_hw_camblk_cfg_writeback(ptr noundef %fimc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.then5.cleanup_crit_edge, label %if.then5.do.body10_crit_edge

if.then5.do.body10_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body10:                                        ; preds = %if.then5.do.body10_crit_edge, %if.end.do.body10_crit_edge
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fimc) #12
  %d_frame = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 1
  tail call void @fimc_prepare_dma_offset(ptr noundef nonnull %1, ptr noundef %d_frame) #12
  tail call void @fimc_set_yuv_order(ptr noundef nonnull %1) #12
  %call16 = tail call i32 @fimc_hw_set_camera_polarity(ptr noundef %fimc, ptr noundef %source_config) #12
  %call17 = tail call i32 @fimc_hw_set_camera_type(ptr noundef %fimc, ptr noundef %source_config) #12
  %call18 = tail call i32 @fimc_hw_set_camera_source(ptr noundef %fimc, ptr noundef %source_config) #12
  tail call void @fimc_hw_set_camera_offset(ptr noundef %fimc, ptr noundef nonnull %1) #12
  %call20 = tail call i32 @fimc_set_scaler_info(ptr noundef nonnull %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.then21, label %do.body10.if.end25_crit_edge

do.body10.if.end25_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then21:                                        ; preds = %do.body10
  tail call void @fimc_hw_set_input_path(ptr noundef nonnull %1) #12
  tail call void @fimc_hw_set_prescaler(ptr noundef nonnull %1) #12
  tail call void @fimc_hw_set_mainscaler(ptr noundef nonnull %1) #12
  tail call void @fimc_hw_set_target_format(ptr noundef nonnull %1) #12
  tail call void @fimc_hw_set_rotation(ptr noundef nonnull %1) #12
  tail call void @fimc_hw_set_effect(ptr noundef nonnull %1) #12
  tail call void @fimc_hw_set_output_path(ptr noundef nonnull %1) #12
  tail call void @fimc_hw_set_out_dma(ptr noundef nonnull %1) #12
  %drv_data = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 6
  %6 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_data, align 8
  %alpha_color = getelementptr inbounds %struct.fimc_drvdata, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %alpha_color to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %alpha_color, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool22.not = icmp eq i8 %9, 0
  br i1 %tobool22.not, label %if.then21.if.end24_crit_edge, label %if.then23

if.then21.if.end24_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fimc_hw_set_rgb_alpha(ptr noundef nonnull %1) #12
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then21.if.end24_crit_edge
  %state = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %state) #12
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %do.body10.if.end25_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fimc, i32 noundef %call13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end25 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fimc_dev, align 4
  %ve5 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 2
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %d_frame = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 1
  %addr = getelementptr inbounds %struct.fimc_vid_buffer, ptr %vb, i32 0, i32 2
  %call13 = tail call i32 @fimc_prepare_addr(ptr noundef %3, ptr noundef %vb, ptr noundef %d_frame, ptr noundef %addr) #12
  %state = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %8 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state, align 4
  %11 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool17.not = icmp eq i32 %11, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true18:                                  ; preds = %land.lhs.true
  %active_buf_cnt = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 11
  %12 = ptrtoint ptr %active_buf_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_buf_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp19 = icmp slt i32 %13, 4
  br i1 %cmp19, label %if.then, label %land.lhs.true18.if.else_crit_edge

land.lhs.true18.if.else_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true18
  %reqbufs_count = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 14
  %14 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reqbufs_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp21 = icmp eq i32 %15, 1
  br i1 %cmp21, label %if.then.cond.end_crit_edge, label %cond.false

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %buf_index = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 12
  %16 = ptrtoint ptr %buf_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_index, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %17, %cond.false ], [ -1, %if.then.cond.end_crit_edge ]
  tail call void @fimc_hw_set_output_addr(ptr noundef %5, ptr noundef %addr, i32 noundef %cond) #12
  %buf_index24 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 12
  %18 = ptrtoint ptr %buf_index24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_index24, align 8
  %index = getelementptr inbounds %struct.fimc_vid_buffer, ptr %vb, i32 0, i32 3
  %20 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %index, align 4
  %list.i = getelementptr inbounds %struct.fimc_vid_buffer, ptr %vb, i32 0, i32 1
  %active_buf_q.i = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 9
  %prev.i.i = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 9, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %22, ptr noundef %active_buf_q.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %cond.end.fimc_active_queue_add.exit_crit_edge

cond.end.fimc_active_queue_add.exit_crit_edge:    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_active_queue_add.exit

if.end.i.i.i:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list.i, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %active_buf_q.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.fimc_vid_buffer, ptr %vb, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list.i, ptr %22, align 4
  br label %fimc_active_queue_add.exit

fimc_active_queue_add.exit:                       ; preds = %if.end.i.i.i, %cond.end.fimc_active_queue_add.exit_crit_edge
  %27 = ptrtoint ptr %active_buf_cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %active_buf_cnt, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %active_buf_cnt, align 4
  %29 = ptrtoint ptr %buf_index24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_index24, align 8
  %inc = add i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp26 = icmp sgt i32 %inc, 3
  %spec.select = select i1 %cmp26, i32 0, i32 %inc
  %31 = ptrtoint ptr %buf_index24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select, ptr %buf_index24, align 8
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true18.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %list.i132 = getelementptr inbounds %struct.fimc_vid_buffer, ptr %vb, i32 0, i32 1
  %pending_buf_q.i = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 8
  %prev.i.i133 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 8, i32 1
  %32 = ptrtoint ptr %prev.i.i133 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i133, align 4
  %call.i.i.i134 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i132, ptr noundef %33, ptr noundef %pending_buf_q.i) #12
  br i1 %call.i.i.i134, label %if.end.i.i.i136, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.end.i.i.i136:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %prev.i.i133 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list.i132, ptr %prev.i.i133, align 4
  %35 = ptrtoint ptr %list.i132 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %pending_buf_q.i, ptr %list.i132, align 4
  %prev3.i.i.i135 = getelementptr inbounds %struct.fimc_vid_buffer, ptr %vb, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i135 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i135, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list.i132, ptr %33, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end.i.i.i136, %if.else.if.end30_crit_edge, %fimc_active_queue_add.exit
  %streaming.i = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 10, i32 28
  %38 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %land.lhs.true37, label %if.end30.if.end82_crit_edge

if.end30.if.end82_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

land.lhs.true37:                                  ; preds = %if.end30
  %reqbufs_count31 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 14
  %39 = ptrtoint ptr %reqbufs_count31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reqbufs_count31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp32 = icmp ugt i32 %40, 1
  %cond34 = select i1 %cmp32, i32 2, i32 1
  %active_buf_cnt38 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 11
  %41 = ptrtoint ptr %active_buf_cnt38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %active_buf_cnt38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %cond34)
  %cmp39.not = icmp slt i32 %42, %cond34
  br i1 %cmp39.not, label %land.lhs.true37.if.end82_crit_edge, label %land.lhs.true41

land.lhs.true37.if.end82_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

land.lhs.true41:                                  ; preds = %land.lhs.true37
  %call43 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %land.lhs.true41.if.end82_crit_edge

land.lhs.true41.if.end82_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then45:                                        ; preds = %land.lhs.true41
  tail call void @fimc_activate_capture(ptr noundef %3) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call9) #12
  %call48 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.then45.cleanup84_crit_edge

if.then45.cleanup84_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup84

if.end51:                                         ; preds = %if.then45
  %tobool52.not = icmp eq ptr %ve5, null
  br i1 %tobool52.not, label %if.end51.do.end78_crit_edge, label %lor.lhs.false

if.end51.do.end78_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end78

lor.lhs.false:                                    ; preds = %if.end51
  %pipe = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 2, i32 1
  %43 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pipe, align 8
  %tobool53.not = icmp eq ptr %44, null
  br i1 %tobool53.not, label %lor.lhs.false.do.end78_crit_edge, label %cond.false55

lor.lhs.false.do.end78_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end78

cond.false55:                                     ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops, align 4
  %tobool57.not = icmp eq ptr %46, null
  br i1 %tobool57.not, label %cond.false55.do.end78_crit_edge, label %land.lhs.true58

cond.false55.do.end78_crit_edge:                  ; preds = %cond.false55
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end78

land.lhs.true58:                                  ; preds = %cond.false55
  %set_stream = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %set_stream to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_stream, align 4
  %tobool61.not = icmp eq ptr %48, null
  br i1 %tobool61.not, label %land.lhs.true58.do.end78_crit_edge, label %cond.end71

land.lhs.true58.do.end78_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end78

cond.end71:                                       ; preds = %land.lhs.true58
  %call67 = tail call i32 %48(ptr noundef nonnull %44, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp73 = icmp slt i32 %call67, 0
  br i1 %cmp73, label %cond.end71.do.end78_crit_edge, label %cond.end71.cleanup84_crit_edge

cond.end71.cleanup84_crit_edge:                   ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup84

cond.end71.do.end78_crit_edge:                    ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end78

do.end78:                                         ; preds = %cond.end71.do.end78_crit_edge, %land.lhs.true58.do.end78_crit_edge, %cond.false55.do.end78_crit_edge, %lor.lhs.false.do.end78_crit_edge, %if.end51.do.end78_crit_edge
  %cond72139 = phi i32 [ %call67, %cond.end71.do.end78_crit_edge ], [ -515, %cond.false55.do.end78_crit_edge ], [ -515, %land.lhs.true58.do.end78_crit_edge ], [ -2, %if.end51.do.end78_crit_edge ], [ -2, %lor.lhs.false.do.end78_crit_edge ]
  %name = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 2, i32 0, i32 12
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %cond72139) #15
  br label %cleanup84

if.end82:                                         ; preds = %land.lhs.true41.if.end82_crit_edge, %land.lhs.true37.if.end82_crit_edge, %if.end30.if.end82_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call9) #12
  br label %cleanup84

cleanup84:                                        ; preds = %if.end82, %do.end78, %cond.end71.cleanup84_crit_edge, %if.then45.cleanup84_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_sensor_notify(ptr noundef readonly %sd, i32 noundef %notification, ptr noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %sd, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 12
  %0 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_priv.i, align 4
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd, align 4
  %cmp.i = icmp eq ptr %3, null
  %add.ptr.i = getelementptr i8, ptr %3, i32 -192
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %add.ptr.i
  %slock = getelementptr inbounds %struct.fimc_md, ptr %spec.select.i, i32 0, i32 16
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #12
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end40_crit_edge, label %cond.end

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

cond.end:                                         ; preds = %if.end
  %host = getelementptr inbounds %struct.fimc_sensor_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %tobool9.not = icmp ne ptr %5, null
  %tobool10.not = icmp ne ptr %arg, null
  %or.cond.not = and i1 %tobool10.not, %tobool9.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 25856, i32 %notification)
  %cmp12 = icmp eq i32 %notification, 25856
  %or.cond58 = and i1 %cmp12, %or.cond.not
  br i1 %or.cond58, label %land.lhs.true14, label %cond.end.if.end40_crit_edge

cond.end.if.end40_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true14:                                  ; preds = %cond.end
  %state = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not = icmp eq i32 %8, 0
  br i1 %tobool16.not, label %land.lhs.true14.if.end40_crit_edge, label %if.then17

land.lhs.true14.if.end40_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then17:                                        ; preds = %land.lhs.true14
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #12
  %active_buf_q = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 9
  %9 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %active_buf_q, align 4
  %cmp.i59.not = icmp eq ptr %10, %active_buf_q
  br i1 %cmp.i59.not, label %if.then17.if.end38_crit_edge, label %if.then34

if.then17.if.end38_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then34:                                        ; preds = %if.then17
  %num_planes.i = getelementptr i8, ptr %10, i32 -720
  %11 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i60.not = icmp eq i32 %12, 0
  br i1 %cmp.i60.not, label %if.then34.if.end38_crit_edge, label %if.then.i

if.then34.if.end38_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then.i:                                        ; preds = %if.then34
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arg, align 4
  %length.i = getelementptr i8, ptr %10, i32 -648
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp1.i = icmp ult i32 %16, %14
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b55.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !95

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %18, %if.then38.i ], [ %14, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr i8, ptr %10, i32 -652
  %19 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end42.i, %if.then34.if.end38_crit_edge, %if.then17.if.end38_crit_edge
  tail call void @fimc_capture_irq_handler(ptr noundef nonnull %5, i32 noundef 1)
  tail call void @fimc_deactivate_capture(ptr noundef nonnull %5) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %5, i32 noundef %call27) #12
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %land.lhs.true14.if.end40_crit_edge, %cond.end.if.end40_crit_edge, %if.end.if.end40_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_initialize_capture_subdev(ptr noundef %fimc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 1
  tail call void @v4l2_subdev_init(ptr noundef %subdev, ptr noundef nonnull @fimc_subdev_ops) #12
  %flags = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 1, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 4
  store i32 %or, ptr %flags, align 4
  %name = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 1, i32 9
  %id = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 7
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %3)
  %sd_pads = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 4
  %flags2 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 4, i32 0, i32 4
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %flags2, align 4
  %flags6 = getelementptr %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 4, i32 1, i32 4
  %5 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %flags6, align 4
  %flags10 = getelementptr %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 4, i32 2, i32 4
  %6 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %flags10, align 4
  %call14 = tail call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext 3, ptr noundef %sd_pads) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ops = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 1, i32 0, i32 11
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @fimc_sd_media_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16389, ptr %function, align 4
  %internal_ops = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 1, i32 7
  %9 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fimc_capture_sd_internal_ops, ptr %internal_ops, align 4
  %dev_priv.i = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 1, i32 11
  %10 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fimc, ptr %dev_priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_unregister_capture_subdev(ptr noundef %fimc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev) #12
  %dev_priv.i = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 1, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dev_priv.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_camera_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local void @fimc_prepare_dma_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_out_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_rgb_alpha(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_capture_state_cleanup(ptr noundef %fimc, i1 noundef zeroext %suspend) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fimc) #12
  %state = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 14
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and7 = and i32 %1, -1985
  %and11 = and i32 %1, -2017
  %or = or i32 %and7, 512
  %storemerge = select i1 %suspend, i32 %or, i32 %and11
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %state, align 8
  br i1 %suspend, label %entry.while.end_crit_edge, label %land.rhs.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.preheader:                               ; preds = %entry
  %pending_buf_q = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 8
  %3 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pending_buf_q, align 4
  %cmp.i.not93 = icmp eq ptr %4, %pending_buf_q
  br i1 %cmp.i.not93, label %land.rhs.preheader.while.end_crit_edge, label %land.rhs.preheader.while.body_crit_edge

land.rhs.preheader.while.body_crit_edge:          ; preds = %land.rhs.preheader
  br label %while.body

land.rhs.preheader.while.end_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %fimc_pending_queue_pop.exit.while.body_crit_edge, %land.rhs.preheader.while.body_crit_edge
  %5 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pending_buf_q, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.fimc_pending_queue_pop.exit_crit_edge

while.body.fimc_pending_queue_pop.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pending_queue_pop.exit

if.end.i.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %fimc_pending_queue_pop.exit

fimc_pending_queue_pop.exit:                      ; preds = %if.end.i.i.i, %while.body.fimc_pending_queue_pop.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %6, i32 -736
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 6) #12
  %15 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %pending_buf_q, align 4
  %cmp.i.not = icmp eq ptr %16, %pending_buf_q
  br i1 %cmp.i.not, label %fimc_pending_queue_pop.exit.while.end_crit_edge, label %fimc_pending_queue_pop.exit.while.body_crit_edge

fimc_pending_queue_pop.exit.while.body_crit_edge: ; preds = %fimc_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

fimc_pending_queue_pop.exit.while.end_crit_edge:  ; preds = %fimc_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %fimc_pending_queue_pop.exit.while.end_crit_edge, %land.rhs.preheader.while.end_crit_edge, %entry.while.end_crit_edge
  %active_buf_q = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 9
  %17 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %active_buf_q, align 4
  %cmp.i81.not94 = icmp eq ptr %18, %active_buf_q
  br i1 %cmp.i81.not94, label %while.end.while.end28_crit_edge, label %while.body20.lr.ph

while.end.while.end28_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end28

while.body20.lr.ph:                               ; preds = %while.end
  %active_buf_cnt.i = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 11
  %pending_buf_q.i89 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 8
  %prev.i.i90 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 8, i32 1
  br label %while.body20

while.body20:                                     ; preds = %if.end27.while.body20_crit_edge, %while.body20.lr.ph
  %19 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %active_buf_q, align 4
  %call.i.i.i83 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #12
  br i1 %call.i.i.i83, label %if.end.i.i.i86, label %while.body20.fimc_active_queue_pop.exit_crit_edge

while.body20.fimc_active_queue_pop.exit_crit_edge: ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_active_queue_pop.exit

if.end.i.i.i86:                                   ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i84 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i84, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %prev1.i.i.i.i85 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i85, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %fimc_active_queue_pop.exit

fimc_active_queue_pop.exit:                       ; preds = %if.end.i.i.i86, %while.body20.fimc_active_queue_pop.exit_crit_edge
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  %prev.i.i88 = getelementptr %struct.list_head, ptr %20, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i88 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i88, align 4
  %29 = ptrtoint ptr %active_buf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %active_buf_cnt.i, align 4
  %dec.i = add i32 %30, -1
  store i32 %dec.i, ptr %active_buf_cnt.i, align 4
  br i1 %suspend, label %if.then23, label %if.else24

if.then23:                                        ; preds = %fimc_active_queue_pop.exit
  %31 = ptrtoint ptr %prev.i.i90 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i90, align 4
  %call.i.i.i91 = tail call zeroext i1 @__list_add_valid(ptr noundef %20, ptr noundef %32, ptr noundef %pending_buf_q.i89) #12
  br i1 %call.i.i.i91, label %if.end.i.i.i92, label %if.then23.if.end27_crit_edge

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end.i.i.i92:                                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %prev.i.i90 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %20, ptr %prev.i.i90, align 4
  %34 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pending_buf_q.i89, ptr %20, align 4
  %35 = ptrtoint ptr %prev.i.i88 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev.i.i88, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %20, ptr %32, align 4
  br label %if.end27

if.else24:                                        ; preds = %fimc_active_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i87 = getelementptr i8, ptr %20, i32 -736
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i87, i32 noundef 6) #12
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.end.i.i.i92, %if.then23.if.end27_crit_edge
  %37 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %active_buf_q, align 4
  %cmp.i81.not = icmp eq ptr %38, %active_buf_q
  br i1 %cmp.i81.not, label %if.end27.while.end28_crit_edge, label %if.end27.while.body20_crit_edge

if.end27.while.body20_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body20

if.end27.while.end28_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end28

while.end28:                                      ; preds = %if.end27.while.end28_crit_edge, %while.end.while.end28_crit_edge
  tail call void @fimc_hw_reset(ptr noundef %fimc) #12
  %buf_index = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 12
  %39 = ptrtoint ptr %buf_index to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %buf_index, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fimc, i32 noundef %call2) #12
  br i1 %tobool.not, label %while.end28.cleanup_crit_edge, label %if.then31

while.end28.cleanup_crit_edge:                    ; preds = %while.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then31:                                        ; preds = %while.end28
  %ve = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 2
  %tobool32.not = icmp eq ptr %ve, null
  br i1 %tobool32.not, label %if.then31.cleanup_crit_edge, label %lor.lhs.false

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then31
  %pipe = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 2, i32 1
  %40 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pipe, align 8
  %tobool34.not = icmp eq ptr %41, null
  br i1 %tobool34.not, label %lor.lhs.false.cleanup_crit_edge, label %cond.false

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 4
  %tobool37.not = icmp eq ptr %43, null
  br i1 %tobool37.not, label %cond.false.cleanup_crit_edge, label %land.lhs.true

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %cond.false
  %set_stream = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %set_stream to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_stream, align 4
  %tobool41.not = icmp eq ptr %45, null
  br i1 %tobool41.not, label %land.lhs.true.cleanup_crit_edge, label %cond.true42

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.true42:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = tail call i32 %45(ptr noundef nonnull %41, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.true42, %land.lhs.true.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %while.end28.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.then31.cleanup_crit_edge ], [ %call49, %cond.true42 ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %cond.false.cleanup_crit_edge ], [ 0, %while.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_hw_camblk_cfg_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_set_yuv_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_hw_set_camera_polarity(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_hw_set_camera_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_hw_set_camera_source(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_input_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_output_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_prepare_addr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_activate_capture(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_subdev_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call ptr @fimc_find_format(ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef %1) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %code1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_subdev_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %vid_cap = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vid_cap, align 8
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %7, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !95

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %7, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 %spec.select.i
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %format, ptr %arrayidx.i, i32 48)
  br label %cleanup

if.end:                                           ; preds = %entry
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %lock = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %pad4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %13 = ptrtoint ptr %pad4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pad4, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end
  %fmt5 = getelementptr inbounds %struct.fimc_frame, ptr %3, i32 0, i32 12
  %16 = ptrtoint ptr %fmt5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fmt5, align 4
  %cmp6 = icmp eq ptr %17, null
  br i1 %cmp6, label %do.end, label %if.then28.critedge, !prof !96

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1489, i32 noundef 9, ptr noundef null) #12
  br label %if.end30

if.then28.critedge:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %code, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28.critedge, %do.end
  %width = getelementptr inbounds %struct.fimc_frame, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width, align 4
  %23 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %format3, align 4
  %height = getelementptr inbounds %struct.fimc_frame, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  %height32 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %height32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %height32, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %wb_fmt = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 6
  %27 = call ptr @memcpy(ptr %format3, ptr %wb_fmt, i32 48)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ci_fmt = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 5
  %28 = call ptr @memcpy(ptr %format3, ptr %ci_fmt, i32 48)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb33, %if.end30
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %v4l2_subdev_get_try_format.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_subdev_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %vid_cap = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vid_cap, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_subdev_set_fmt.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_subdev_set_fmt, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code, align 4
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_subdev_set_fmt.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 1522, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pad5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %12 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pad5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp eq i32 %13, 2
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end8_crit_edge

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %do.end
  %num_buffers.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 10, i32 21
  %14 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.not = icmp eq i32 %15, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %do.end.if.end8_crit_edge
  %lock = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %height10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %code11 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pad5, align 4
  %call13 = tail call fastcc ptr @fimc_capture_try_format(ptr noundef %3, ptr noundef %format, ptr noundef %height10, ptr noundef %code11, ptr noundef null, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 7, ptr %colorspace, align 4
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp15 = icmp eq i32 %20, 0
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end8
  %21 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pad5, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %23 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %22, %conv.i
  br i1 %cmp.not.i, label %if.then16.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !95

if.then16.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then16.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %22, %if.then16.v4l2_subdev_get_try_format.exit_crit_edge ]
  %25 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %26, i32 %spec.select.i
  %27 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  %cmp21 = icmp eq ptr %call13, null
  br i1 %cmp21, label %do.end37, label %if.end53, !prof !96

do.end37:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1539, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end53:                                         ; preds = %if.end20
  tail call void @fimc_alpha_ctrl_update(ptr noundef %3) #12
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %color, align 4
  %and.i = and i32 %29, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %scaler.i = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 8
  %30 = ptrtoint ptr %scaler.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %scaler.i, align 4
  %bf.shl.i = select i1 %tobool.not.i, i8 16, i8 0
  %bf.clear.i = and i8 %bf.load.i, -17
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  store i8 %bf.set.i, ptr %scaler.i, align 4
  tail call void @fimc_ctrls_activate(ptr noundef %3, i1 noundef zeroext %tobool.not.i) #12
  %fimc_dev8.i = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 14
  %31 = ptrtoint ptr %fimc_dev8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fimc_dev8.i, align 4
  %state9.i = getelementptr inbounds %struct.fimc_dev, ptr %32, i32 0, i32 14
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 13, ptr noundef %state9.i) #12
  br label %fimc_capture_mark_jpeg_xfer.exit

if.else.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %state9.i) #12
  br label %fimc_capture_mark_jpeg_xfer.exit

fimc_capture_mark_jpeg_xfer.exit:                 ; preds = %if.else.i, %if.then.i
  %33 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pad5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp55 = icmp eq i32 %34, 2
  br i1 %cmp55, label %if.then56, label %fimc_capture_mark_jpeg_xfer.exit.if.end63_crit_edge

fimc_capture_mark_jpeg_xfer.exit.if.end63_crit_edge: ; preds = %fimc_capture_mark_jpeg_xfer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then56:                                        ; preds = %fimc_capture_mark_jpeg_xfer.exit
  call void @__sanitizer_cov_trace_pc() #14
  %d_frame = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 1
  %width57 = getelementptr inbounds %struct.fimc_frame, ptr %3, i32 0, i32 6
  %35 = ptrtoint ptr %width57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width57, align 4
  %37 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %format, align 4
  %height60 = getelementptr inbounds %struct.fimc_frame, ptr %3, i32 0, i32 7
  %38 = ptrtoint ptr %height60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height60, align 4
  %40 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %height10, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then56, %fimc_capture_mark_jpeg_xfer.exit.if.end63_crit_edge
  %ff.0 = phi ptr [ %d_frame, %if.then56 ], [ %3, %fimc_capture_mark_jpeg_xfer.exit.if.end63_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %41 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %format, align 4
  %43 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height10, align 4
  %o_width.i = getelementptr inbounds %struct.fimc_frame, ptr %ff.0, i32 0, i32 2
  %45 = ptrtoint ptr %o_width.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %o_width.i, align 4
  %o_height.i = getelementptr inbounds %struct.fimc_frame, ptr %ff.0, i32 0, i32 3
  %46 = ptrtoint ptr %o_height.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %o_height.i, align 4
  %47 = ptrtoint ptr %ff.0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %42, ptr %ff.0, align 4
  %f_height.i = getelementptr inbounds %struct.fimc_frame, ptr %ff.0, i32 0, i32 1
  %48 = ptrtoint ptr %f_height.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %44, ptr %f_height.i, align 4
  %49 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pad5, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %50, label %if.end63.if.end75_crit_edge [
    i32 1, label %if.then69
    i32 0, label %if.then73
  ]

if.end63.if.end75_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %wb_fmt = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 6
  br label %if.end75.sink.split

if.then73:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %ci_fmt = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 5
  br label %if.end75.sink.split

if.end75.sink.split:                              ; preds = %if.then73, %if.then69
  %ci_fmt.sink = phi ptr [ %ci_fmt, %if.then73 ], [ %wb_fmt, %if.then69 ]
  %52 = call ptr @memcpy(ptr %ci_fmt.sink, ptr %format, i32 48)
  br label %if.end75

if.end75:                                         ; preds = %if.end75.sink.split, %if.end63.if.end75_crit_edge
  %fmt76 = getelementptr inbounds %struct.fimc_frame, ptr %ff.0, i32 0, i32 12
  %53 = ptrtoint ptr %fmt76 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call13, ptr %fmt76, align 4
  %54 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pad5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp78 = icmp eq i32 %55, 2
  br i1 %cmp78, label %land.lhs.true79, label %if.end75.if.then81_crit_edge

if.end75.if.then81_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then81

land.lhs.true79:                                  ; preds = %if.end75
  %state = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 13
  %56 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state, align 4
  %and = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool80.not = icmp eq i32 %and, 0
  br i1 %tobool80.not, label %land.lhs.true79.if.then81_crit_edge, label %land.lhs.true79.if.end84_crit_edge

land.lhs.true79.if.end84_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

land.lhs.true79.if.then81_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then81

if.then81:                                        ; preds = %land.lhs.true79.if.then81_crit_edge, %if.end75.if.then81_crit_edge
  %58 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %format, align 4
  %60 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %height10, align 4
  %offs_h.i = getelementptr inbounds %struct.fimc_frame, ptr %ff.0, i32 0, i32 4
  %62 = ptrtoint ptr %offs_h.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %offs_h.i, align 4
  %offs_v.i = getelementptr inbounds %struct.fimc_frame, ptr %ff.0, i32 0, i32 5
  %63 = ptrtoint ptr %offs_v.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %offs_v.i, align 4
  %width1.i = getelementptr inbounds %struct.fimc_frame, ptr %ff.0, i32 0, i32 6
  %64 = ptrtoint ptr %width1.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %59, ptr %width1.i, align 4
  %height2.i = getelementptr inbounds %struct.fimc_frame, ptr %ff.0, i32 0, i32 7
  %65 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %61, ptr %height2.i, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %land.lhs.true79.if.end84_crit_edge
  %66 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pad5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp86.not = icmp eq i32 %67, 2
  br i1 %cmp86.not, label %if.end84.if.end90_crit_edge, label %if.then87

if.end84.if.end90_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %state88 = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 13
  %68 = ptrtoint ptr %state88 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %state88, align 4
  %and89 = and i32 %69, -3
  store i32 %and89, ptr %state88, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.end84.if.end90_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %do.end37, %v4l2_subdev_get_try_format.exit, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ -22, %do.end37 ], [ 0, %if.end90 ], [ -16, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_subdev_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %vid_cap = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vid_cap, align 8
  %r2 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %7, label %if.end.cleanup.sink.split_crit_edge [
    i32 258, label %sw.bb
    i32 2, label %if.end.sw.bb3_crit_edge
    i32 0, label %sw.bb5
    i32 256, label %sw.bb8
  ]

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %d_frame = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 1
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %if.end.sw.bb3_crit_edge
  %f.0 = phi ptr [ %3, %if.end.sw.bb3_crit_edge ], [ %d_frame, %sw.bb ]
  %o_width = getelementptr inbounds %struct.fimc_frame, ptr %f.0, i32 0, i32 2
  %9 = ptrtoint ptr %o_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %o_width, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %width, align 4
  %o_height = getelementptr inbounds %struct.fimc_frame, ptr %f.0, i32 0, i32 3
  %12 = ptrtoint ptr %o_height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %o_height, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height, align 4
  %15 = ptrtoint ptr %r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %r2, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %top, align 4
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %if.end
  %17 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %19 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %18, %conv.i
  br i1 %cmp.not.i, label %sw.bb5.v4l2_subdev_get_try_crop.exit_crit_edge, label %do.end.i, !prof !95

sw.bb5.v4l2_subdev_get_try_crop.exit_crit_edge:   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_crop.exit

do.end.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1016, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i, %sw.bb5.v4l2_subdev_get_try_crop.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %18, %sw.bb5.v4l2_subdev_get_try_crop.exit_crit_edge ]
  %21 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %22, i32 %spec.select.i, i32 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %23 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pad, align 4
  %num_pads.i72 = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %25 = ptrtoint ptr %num_pads.i72 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_pads.i72, align 4
  %conv.i73 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv.i73)
  %cmp.not.i74 = icmp ult i32 %24, %conv.i73
  br i1 %cmp.not.i74, label %sw.bb8.v4l2_subdev_get_try_compose.exit_crit_edge, label %do.end.i75, !prof !95

sw.bb8.v4l2_subdev_get_try_compose.exit_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_compose.exit

do.end.i75:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1034, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_compose.exit

v4l2_subdev_get_try_compose.exit:                 ; preds = %do.end.i75, %sw.bb8.v4l2_subdev_get_try_compose.exit_crit_edge
  %spec.select.i76 = phi i32 [ 0, %do.end.i75 ], [ %24, %sw.bb8.v4l2_subdev_get_try_compose.exit_crit_edge ]
  %27 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sd_state, align 4
  %try_compose.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %28, i32 %spec.select.i76, i32 2
  %d_frame11 = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %v4l2_subdev_get_try_compose.exit, %v4l2_subdev_get_try_crop.exit
  %f.1 = phi ptr [ %d_frame11, %v4l2_subdev_get_try_compose.exit ], [ %3, %v4l2_subdev_get_try_crop.exit ]
  %try_sel.0 = phi ptr [ %try_compose.i, %v4l2_subdev_get_try_compose.exit ], [ %try_crop.i, %v4l2_subdev_get_try_crop.exit ]
  %29 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp13 = icmp eq i32 %30, 0
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %31 = call ptr @memcpy(ptr %r2, ptr %try_sel.0, i32 16)
  br label %do.body

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %offs_h = getelementptr inbounds %struct.fimc_frame, ptr %f.1, i32 0, i32 4
  %32 = ptrtoint ptr %offs_h to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offs_h, align 4
  %34 = ptrtoint ptr %r2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %r2, align 4
  %offs_v = getelementptr inbounds %struct.fimc_frame, ptr %f.1, i32 0, i32 5
  %35 = ptrtoint ptr %offs_v to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offs_v, align 4
  %top17 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %top17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %top17, align 4
  %width18 = getelementptr inbounds %struct.fimc_frame, ptr %f.1, i32 0, i32 6
  %38 = ptrtoint ptr %width18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %width18, align 4
  %width19 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %width19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %width19, align 4
  %height20 = getelementptr inbounds %struct.fimc_frame, ptr %f.1, i32 0, i32 7
  %41 = ptrtoint ptr %height20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height20, align 4
  %height21 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %43 = ptrtoint ptr %height21 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %height21, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_subdev_get_selection.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_subdev_get_selection, %if.then26)) #12
          to label %cleanup.sink.split [label %if.then26], !srcloc !93

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pad, align 4
  %46 = ptrtoint ptr %r2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %r2, align 4
  %top29 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %top29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %top29, align 4
  %width30 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %50 = ptrtoint ptr %width30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %width30, align 4
  %height31 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %52 = ptrtoint ptr %height31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height31, align 4
  %54 = ptrtoint ptr %f.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %f.1, align 4
  %f_height = getelementptr inbounds %struct.fimc_frame, ptr %f.1, i32 0, i32 1
  %56 = ptrtoint ptr %f_height to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %f_height, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_subdev_get_selection.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef 1626, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then26, %do.body, %sw.bb3, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %sw.bb3 ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ 0, %do.body ], [ 0, %if.then26 ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_subdev_set_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %vid_cap = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vid_cap, align 8
  %r2 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  tail call fastcc void @fimc_capture_try_selection(ptr noundef %3, ptr noundef %r2, i32 noundef 0)
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %7, label %if.end.cleanup.sink.split_crit_edge [
    i32 0, label %sw.bb
    i32 256, label %sw.bb5
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end
  %9 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %11 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %10, %conv.i
  br i1 %cmp.not.i, label %sw.bb.v4l2_subdev_get_try_crop.exit_crit_edge, label %do.end.i, !prof !95

sw.bb.v4l2_subdev_get_try_crop.exit_crit_edge:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_crop.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1016, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i, %sw.bb.v4l2_subdev_get_try_crop.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %10, %sw.bb.v4l2_subdev_get_try_crop.exit_crit_edge ]
  %13 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %14, i32 %spec.select.i, i32 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %15 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pad, align 4
  %num_pads.i74 = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %17 = ptrtoint ptr %num_pads.i74 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i74, align 4
  %conv.i75 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.i75)
  %cmp.not.i76 = icmp ult i32 %16, %conv.i75
  br i1 %cmp.not.i76, label %sw.bb5.v4l2_subdev_get_try_compose.exit_crit_edge, label %do.end.i77, !prof !95

sw.bb5.v4l2_subdev_get_try_compose.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_compose.exit

do.end.i77:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1034, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_compose.exit

v4l2_subdev_get_try_compose.exit:                 ; preds = %do.end.i77, %sw.bb5.v4l2_subdev_get_try_compose.exit_crit_edge
  %spec.select.i78 = phi i32 [ 0, %do.end.i77 ], [ %16, %sw.bb5.v4l2_subdev_get_try_compose.exit_crit_edge ]
  %19 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_state, align 4
  %try_compose.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %20, i32 %spec.select.i78, i32 2
  %d_frame = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %v4l2_subdev_get_try_compose.exit, %v4l2_subdev_get_try_crop.exit
  %f.0 = phi ptr [ %d_frame, %v4l2_subdev_get_try_compose.exit ], [ %3, %v4l2_subdev_get_try_crop.exit ]
  %try_sel.0 = phi ptr [ %try_compose.i, %v4l2_subdev_get_try_compose.exit ], [ %try_crop.i, %v4l2_subdev_get_try_crop.exit ]
  %21 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp9 = icmp eq i32 %22, 0
  br i1 %cmp9, label %if.then10, label %do.body12

if.then10:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %23 = call ptr @memcpy(ptr %try_sel.0, ptr %r2, i32 16)
  br label %do.body26

do.body12:                                        ; preds = %sw.epilog
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %24 = ptrtoint ptr %r2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %r2, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height, align 4
  %offs_h.i = getelementptr inbounds %struct.fimc_frame, ptr %f.0, i32 0, i32 4
  %32 = ptrtoint ptr %offs_h.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %25, ptr %offs_h.i, align 4
  %offs_v.i = getelementptr inbounds %struct.fimc_frame, ptr %f.0, i32 0, i32 5
  %33 = ptrtoint ptr %offs_v.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %27, ptr %offs_v.i, align 4
  %width1.i = getelementptr inbounds %struct.fimc_frame, ptr %f.0, i32 0, i32 6
  %34 = ptrtoint ptr %width1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %29, ptr %width1.i, align 4
  %height2.i = getelementptr inbounds %struct.fimc_frame, ptr %f.0, i32 0, i32 7
  %35 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %31, ptr %height2.i, align 4
  %state = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 12, ptr noundef %state) #12
  %36 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %37)
  %cmp19 = icmp eq i32 %37, 256
  br i1 %cmp19, label %if.then21, label %do.body12.if.end23_crit_edge

do.body12.if.end23_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then21:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %state22 = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 13
  %38 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state22, align 4
  %or = or i32 %39, 2
  store i32 %or, ptr %state22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %do.body12.if.end23_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call15) #12
  br label %do.body26

do.body26:                                        ; preds = %if.end23, %if.then10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_subdev_set_selection.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_subdev_set_selection, %if.then31)) #12
          to label %cleanup.sink.split [label %if.then31], !srcloc !93

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %target, align 4
  %42 = ptrtoint ptr %r2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %r2, align 4
  %top34 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %top34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %top34, align 4
  %width35 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %width35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %width35, align 4
  %height36 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %48 = ptrtoint ptr %height36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height36, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_subdev_set_selection.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 1674, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then31, %do.body26, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.end.cleanup.sink.split_crit_edge ], [ 0, %do.body26 ], [ 0, %if.then31 ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_find_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fimc_capture_try_format(ptr nocapture noundef readonly %ctx, ptr noundef %width, ptr noundef %height, ptr noundef %code, ptr noundef %fourcc, i32 noundef %pad) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rotation1 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %rotation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rotation1, align 4
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %2 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fimc_dev, align 4
  %variant = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant, align 4
  %pix_limit = getelementptr inbounds %struct.fimc_variant, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pix_limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pix_limit, align 4
  %d_frame = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1
  %tobool.not = icmp eq ptr %code, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fmt = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 12
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 4
  %tobool4.not = icmp ne ptr %9, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pad)
  %cmp6 = icmp eq i32 %pad, 2
  %or.cond = and i1 %cmp6, %tobool4.not
  br i1 %or.cond, label %land.lhs.true7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %color, align 4
  %and = and i32 %11, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.lhs.true7.if.end_crit_edge, label %if.then

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %14 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool13.not = icmp eq ptr %fourcc, null
  br i1 %tobool13.not, label %if.end.if.end19_crit_edge, label %land.lhs.true14

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

land.lhs.true14:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %16)
  %cmp15.not = icmp ne i32 %16, 1195724874
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pad)
  %cmp17 = icmp eq i32 %pad, 2
  %or.cond228 = and i1 %cmp17, %cmp15.not
  %spec.select = select i1 %or.cond228, i32 7, i32 1
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true14, %if.end.if.end19_crit_edge
  %mask.0 = phi i32 [ 1, %if.end.if.end19_crit_edge ], [ %spec.select, %land.lhs.true14 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pad)
  %cmp20 = icmp eq i32 %pad, 1
  %spec.select229 = select i1 %cmp20, i32 32, i32 %mask.0
  %call = tail call ptr @fimc_find_format(ptr noundef %fourcc, ptr noundef %code, i32 noundef %spec.select229, i32 noundef 0) #12
  %tobool23.not = icmp eq ptr %call, null
  br i1 %tobool23.not, label %do.end, label %if.end48, !prof !96

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 587, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end48:                                         ; preds = %if.end19
  br i1 %tobool.not, label %if.end48.if.end52_crit_edge, label %if.then50

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call, align 4
  %19 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %code, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48.if.end52_crit_edge
  br i1 %tobool13.not, label %if.end52.if.end56_crit_edge, label %if.then54

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %fourcc55 = getelementptr inbounds %struct.fimc_fmt, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %fourcc55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fourcc55, align 4
  %22 = ptrtoint ptr %fourcc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %fourcc, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52.if.end56_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pad)
  %cmp57.not = icmp eq i32 %pad, 2
  %color86 = getelementptr inbounds %struct.fimc_fmt, ptr %call, i32 0, i32 2
  %23 = ptrtoint ptr %color86 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %color86, align 4
  %and87 = and i32 %24, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %cmp57.not, label %if.end85, label %if.then58

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %scaler_dis_w = getelementptr inbounds %struct.fimc_pix_limit, ptr %7, i32 0, i32 1
  %cond.in.in = select i1 %tobool88.not, ptr %7, ptr %scaler_dis_w
  %25 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %25)
  %cond.in = load i16, ptr %cond.in.in, align 2
  %cond = zext i16 %cond.in to i32
  %26 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 32)
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  %31 = tail call i32 @llvm.umax.i32(i32 %30, i32 32)
  %cond84 = select i1 %tobool88.not, i32 1, i32 3
  tail call void @v4l_bound_align_image(ptr noundef %width, i32 noundef %28, i32 noundef %cond, i32 noundef 4, ptr noundef %height, i32 noundef %31, i32 noundef 8192, i32 noundef %cond84, i32 noundef 0) #12
  br label %cleanup

if.end85:                                         ; preds = %if.end56
  br i1 %tobool88.not, label %if.end92, label %if.then89

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctx, align 4
  %34 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %width, align 4
  %f_height = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 1
  %35 = ptrtoint ptr %f_height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %f_height, align 4
  %37 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %height, align 4
  br label %cleanup

if.end92:                                         ; preds = %if.end85
  %38 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %1, label %cond.false97 [
    i32 270, label %if.end92.cond.true95_crit_edge
    i32 90, label %if.end92.cond.true95_crit_edge232
  ]

if.end92.cond.true95_crit_edge232:                ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true95

if.end92.cond.true95_crit_edge:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true95

cond.true95:                                      ; preds = %if.end92.cond.true95_crit_edge, %if.end92.cond.true95_crit_edge232
  %out_rot_en_w = getelementptr inbounds %struct.fimc_pix_limit, ptr %7, i32 0, i32 4
  br label %cond.end99

cond.false97:                                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  %out_rot_dis_w = getelementptr inbounds %struct.fimc_pix_limit, ptr %7, i32 0, i32 5
  br label %cond.end99

cond.end99:                                       ; preds = %cond.false97, %cond.true95
  %cond100.in.in = phi ptr [ %out_rot_en_w, %cond.true95 ], [ %out_rot_dis_w, %cond.false97 ]
  %39 = ptrtoint ptr %cond100.in.in to i32
  call void @__asan_load2_noabort(i32 %39)
  %cond100.in = load i16, ptr %cond100.in.in, align 2
  %cond100 = zext i16 %cond100.in to i32
  %state = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 13
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state, align 4
  %and101 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.else, label %if.then103

if.then103:                                       ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #14
  %offs_h = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 4
  %42 = ptrtoint ptr %offs_h to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offs_h, align 4
  %width104 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 6
  %44 = ptrtoint ptr %width104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %width104, align 4
  %add = add i32 %45, %43
  %offs_v = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 5
  %46 = ptrtoint ptr %offs_v to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offs_v, align 4
  %height105 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 7
  %48 = ptrtoint ptr %height105 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height105, align 4
  %add106 = add i32 %49, %47
  br label %if.end110

if.else:                                          ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #14
  %min_out_pixsize = getelementptr inbounds %struct.fimc_variant, ptr %5, i32 0, i32 3
  %50 = ptrtoint ptr %min_out_pixsize to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %min_out_pixsize, align 2
  %conv107 = zext i16 %51 to i32
  br label %if.end110

if.end110:                                        ; preds = %if.else, %if.then103
  %min_w.0 = phi i32 [ %add, %if.then103 ], [ %conv107, %if.else ]
  %min_h.0 = phi i32 [ %add106, %if.then103 ], [ %conv107, %if.else ]
  %min_vsize_align = getelementptr inbounds %struct.fimc_variant, ptr %5, i32 0, i32 5
  %52 = ptrtoint ptr %min_vsize_align to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %min_vsize_align, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %53)
  %cmp112 = icmp eq i16 %53, 1
  br i1 %cmp112, label %land.lhs.true114, label %if.end110.for.cond.preheader.i_crit_edge

if.end110.for.cond.preheader.i_crit_edge:         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

land.lhs.true114:                                 ; preds = %if.end110
  %54 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %1, label %if.then116 [
    i32 270, label %land.lhs.true114.for.cond.preheader.i_crit_edge
    i32 90, label %land.lhs.true114.for.cond.preheader.i_crit_edge233
  ]

land.lhs.true114.for.cond.preheader.i_crit_edge233: ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

land.lhs.true114.for.cond.preheader.i_crit_edge:  ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

if.then116:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #14
  %and118 = lshr i32 %24, 4
  %and118.lobit = and i32 %and118, 1
  %55 = xor i32 %and118.lobit, 1
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then116, %land.lhs.true114.for.cond.preheader.i_crit_edge, %land.lhs.true114.for.cond.preheader.i_crit_edge233, %if.end110.for.cond.preheader.i_crit_edge
  %align_h.0 = phi i32 [ 3, %land.lhs.true114.for.cond.preheader.i_crit_edge ], [ %55, %if.then116 ], [ 3, %if.end110.for.cond.preheader.i_crit_edge ], [ 3, %land.lhs.true114.for.cond.preheader.i_crit_edge233 ]
  %colplanes.i = getelementptr inbounds %struct.fimc_fmt, ptr %call, i32 0, i32 4
  %56 = ptrtoint ptr %colplanes.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %colplanes.i, align 2
  %conv.i = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp110.not.i = icmp eq i16 %57, 0
  br i1 %cmp110.not.i, label %for.cond.preheader.i.fimc_get_format_depth.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.fimc_get_format_depth.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_get_format_depth.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %depth.012.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fimc_fmt, ptr %call, i32 0, i32 6, i32 %i.011.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i, align 1
  %conv4.i = zext i8 %59 to i32
  %add.i = add i32 %depth.012.i, %conv4.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %fimc_get_format_depth.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

fimc_get_format_depth.exit.loopexit:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo = add i32 %add.i, 7
  %phi.bo231 = and i32 %phi.bo, -8
  br label %fimc_get_format_depth.exit

fimc_get_format_depth.exit:                       ; preds = %fimc_get_format_depth.exit.loopexit, %for.cond.preheader.i.fimc_get_format_depth.exit_crit_edge
  %depth.1.i = phi i32 [ 0, %for.cond.preheader.i.fimc_get_format_depth.exit_crit_edge ], [ %phi.bo231, %fimc_get_format_depth.exit.loopexit ]
  %min_out_pixsize127 = getelementptr inbounds %struct.fimc_variant, ptr %5, i32 0, i32 3
  %60 = ptrtoint ptr %min_out_pixsize127 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %min_out_pixsize127, align 2
  %62 = tail call i16 @llvm.cttz.i16(i16 %61, i1 true), !range !94
  %63 = zext i16 %62 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %iszero = icmp eq i16 %61, 0
  %sub = select i1 %iszero, i32 -1, i32 %63
  %div = udiv i32 64, %depth.1.i
  tail call void @v4l_bound_align_image(ptr noundef %width, i32 noundef %min_w.0, i32 noundef %cond100, i32 noundef %sub, ptr noundef %height, i32 noundef %min_h.0, i32 noundef 8192, i32 noundef %align_h.0, i32 noundef %div) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_capture_try_format.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_capture_try_format, %if.then142)) #12
          to label %cleanup [label %if.then142], !srcloc !93

if.then142:                                       ; preds = %fimc_get_format_depth.exit
  br i1 %tobool.not, label %if.then142.cond.end146_crit_edge, label %cond.true144

if.then142.cond.end146_crit_edge:                 ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end146

cond.true144:                                     ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %code, align 4
  br label %cond.end146

cond.end146:                                      ; preds = %cond.true144, %if.then142.cond.end146_crit_edge
  %cond147 = phi i32 [ %65, %cond.true144 ], [ 0, %if.then142.cond.end146_crit_edge ]
  %66 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %width, align 4
  %68 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %height, align 4
  %70 = ptrtoint ptr %d_frame to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %d_frame, align 4
  %f_height149 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %f_height149 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %f_height149, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_capture_try_format.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 634, i32 noundef 2, i32 noundef %cond147, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end146, %fimc_get_format_depth.exit, %if.then89, %if.then58, %do.end
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_alpha_ctrl_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_ctrls_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fimc_capture_try_selection(ptr nocapture noundef readonly %ctx, ptr noundef %r, i32 noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rotation = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rotation, align 4
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %2 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fimc_dev, align 4
  %variant = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant, align 4
  %pix_limit = getelementptr inbounds %struct.fimc_variant, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pix_limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pix_limit, align 4
  %fmt = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 12
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 4
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %color, align 4
  %and = and i32 %11, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctx, align 4
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %width, align 4
  %f_height = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 1
  %15 = ptrtoint ptr %f_height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_height, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 3
  %17 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 1
  %18 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %top, align 4
  %19 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %r, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %target)
  %cmp3 = icmp eq i32 %target, 256
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %width5 = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 6
  %20 = ptrtoint ptr %width5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width5, align 4
  %22 = tail call i32 @llvm.cttz.i32(i32 %21, i1 true), !range !97
  %.op = add nsw i32 %22, -2
  %height6 = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 7
  %23 = ptrtoint ptr %height6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height6, align 4
  %25 = tail call i32 @llvm.cttz.i32(i32 %24, i1 true), !range !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %1)
  %switch.selectcmp.case1 = icmp eq i32 %1, 90
  call void @__sanitizer_cov_trace_const_cmp4(i32 270, i32 %1)
  %switch.selectcmp.case2 = icmp eq i32 %1, 270
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %26 = select i1 %switch.selectcmp, i32 4, i32 1
  %.op.op = shl nuw nsw i32 1, %.op
  %27 = tail call i32 @llvm.smin.i32(i32 %.op.op, i32 64)
  %.op241 = shl nuw i32 1, %25
  %28 = tail call i32 @llvm.smin.i32(i32 %.op241, i32 64)
  %min_out_pixsize = getelementptr inbounds %struct.fimc_variant, ptr %5, i32 0, i32 3
  %29 = ptrtoint ptr %min_out_pixsize to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %min_out_pixsize, align 2
  %conv = zext i16 %30 to i32
  br label %if.end27

if.else:                                          ; preds = %if.end
  %fmt24 = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 12
  %31 = ptrtoint ptr %fmt24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fmt24, align 4
  %cmp.not.i = icmp eq ptr %32, null
  br i1 %cmp.not.i, label %if.else.fimc_get_format_depth.exit_crit_edge, label %for.cond.preheader.i

if.else.fimc_get_format_depth.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_get_format_depth.exit

for.cond.preheader.i:                             ; preds = %if.else
  %colplanes.i = getelementptr inbounds %struct.fimc_fmt, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %colplanes.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %colplanes.i, align 2
  %conv.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp110.not.i = icmp eq i16 %34, 0
  br i1 %cmp110.not.i, label %for.cond.preheader.i.fimc_get_format_depth.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.fimc_get_format_depth.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_get_format_depth.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %depth.012.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fimc_fmt, ptr %32, i32 0, i32 6, i32 %i.011.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  %conv4.i = zext i8 %36 to i32
  %add.i = add i32 %depth.012.i, %conv4.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %fimc_get_format_depth.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

fimc_get_format_depth.exit.loopexit:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo = add i32 %add.i, 7
  %phi.bo243 = and i32 %phi.bo, -8
  br label %fimc_get_format_depth.exit

fimc_get_format_depth.exit:                       ; preds = %fimc_get_format_depth.exit.loopexit, %for.cond.preheader.i.fimc_get_format_depth.exit_crit_edge, %if.else.fimc_get_format_depth.exit_crit_edge
  %depth.1.i = phi i32 [ 0, %if.else.fimc_get_format_depth.exit_crit_edge ], [ 0, %for.cond.preheader.i.fimc_get_format_depth.exit_crit_edge ], [ %phi.bo243, %fimc_get_format_depth.exit.loopexit ]
  %div = udiv i32 64, %depth.1.i
  %min_inp_pixsize = getelementptr inbounds %struct.fimc_variant, ptr %5, i32 0, i32 2
  %37 = ptrtoint ptr %min_inp_pixsize to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %min_inp_pixsize, align 4
  %conv26 = zext i16 %38 to i32
  br label %if.end27

if.end27:                                         ; preds = %fimc_get_format_depth.exit, %if.then4
  %max_sc_v.0 = phi i32 [ %28, %if.then4 ], [ 1, %fimc_get_format_depth.exit ]
  %max_sc_h.0 = phi i32 [ %27, %if.then4 ], [ 1, %fimc_get_format_depth.exit ]
  %align_h.1 = phi i32 [ %26, %if.then4 ], [ 4, %fimc_get_format_depth.exit ]
  %align_sz.0 = phi i32 [ 0, %if.then4 ], [ %div, %fimc_get_format_depth.exit ]
  %min_sz.0 = phi i32 [ %conv, %if.then4 ], [ %conv26, %fimc_get_format_depth.exit ]
  %min_w.0 = phi i32 [ 0, %if.then4 ], [ %conv26, %fimc_get_format_depth.exit ]
  %39 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %1, label %cond.false32 [
    i32 270, label %if.end27.cond.true30_crit_edge
    i32 90, label %if.end27.cond.true30_crit_edge244
  ]

if.end27.cond.true30_crit_edge244:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true30

if.end27.cond.true30_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true30

cond.true30:                                      ; preds = %if.end27.cond.true30_crit_edge, %if.end27.cond.true30_crit_edge244
  %out_rot_en_w = getelementptr inbounds %struct.fimc_pix_limit, ptr %7, i32 0, i32 4
  br label %cond.end34

cond.false32:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %out_rot_dis_w = getelementptr inbounds %struct.fimc_pix_limit, ptr %7, i32 0, i32 5
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false32, %cond.true30
  %cond35.in.in = phi ptr [ %out_rot_en_w, %cond.true30 ], [ %out_rot_dis_w, %cond.false32 ]
  %40 = ptrtoint ptr %cond35.in.in to i32
  call void @__asan_load2_noabort(i32 %40)
  %cond35.in = load i16, ptr %cond35.in.in, align 2
  %cond35 = zext i16 %cond35.in to i32
  %41 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %1, label %cond.end34.cond.end42_crit_edge [
    i32 270, label %cond.end34.cond.true38_crit_edge
    i32 90, label %cond.end34.cond.true38_crit_edge245
  ]

cond.end34.cond.true38_crit_edge245:              ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true38

cond.end34.cond.true38_crit_edge:                 ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true38

cond.end34.cond.end42_crit_edge:                  ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end42

cond.true38:                                      ; preds = %cond.end34.cond.true38_crit_edge, %cond.end34.cond.true38_crit_edge245
  %f_height39 = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 1
  br label %cond.end42

cond.end42:                                       ; preds = %cond.true38, %cond.end34.cond.end42_crit_edge
  %cond43.in = phi ptr [ %f_height39, %cond.true38 ], [ %ctx, %cond.end34.cond.end42_crit_edge ]
  %42 = ptrtoint ptr %cond43.in to i32
  call void @__asan_load4_noabort(i32 %42)
  %cond43 = load i32, ptr %cond43.in, align 4
  %43 = tail call i32 @llvm.umin.i32(i32 %cond43, i32 %cond35)
  %f_height51 = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 1
  %44 = ptrtoint ptr %f_height51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %f_height51, align 4
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 8192)
  br i1 %cmp3, label %if.then61, label %cond.end42.if.end87_crit_edge

cond.end42.if.end87_crit_edge:                    ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then61:                                        ; preds = %cond.end42
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctx, align 4
  %div63 = udiv i32 %48, %max_sc_h.0
  %49 = tail call i32 @llvm.umin.i32(i32 %43, i32 %div63)
  %div72 = udiv i32 %45, %max_sc_v.0
  %50 = tail call i32 @llvm.umin.i32(i32 %46, i32 %div72)
  %51 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %1, label %if.then61.if.end87_crit_edge [
    i32 270, label %if.then61.do.body_crit_edge
    i32 90, label %if.then61.do.body_crit_edge246
  ]

if.then61.do.body_crit_edge246:                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then61.do.body_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then61.if.end87_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

do.body:                                          ; preds = %if.then61.do.body_crit_edge, %if.then61.do.body_crit_edge246
  br label %if.end87

if.end87:                                         ; preds = %do.body, %if.then61.if.end87_crit_edge, %cond.end42.if.end87_crit_edge
  %min_h.1 = phi i32 [ %49, %do.body ], [ %50, %if.then61.if.end87_crit_edge ], [ %min_w.0, %cond.end42.if.end87_crit_edge ]
  %min_w.1 = phi i32 [ %50, %do.body ], [ %49, %if.then61.if.end87_crit_edge ], [ %min_w.0, %cond.end42.if.end87_crit_edge ]
  %width88 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 2
  %52 = tail call i32 @llvm.cttz.i32(i32 %min_sz.0, i1 true), !range !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_sz.0)
  %iszero89 = icmp eq i32 %min_sz.0, 0
  %sub91 = select i1 %iszero89, i32 -1, i32 %52
  %height92 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 3
  tail call void @v4l_bound_align_image(ptr noundef %width88, i32 noundef %min_w.1, i32 noundef %43, i32 noundef %sub91, ptr noundef %height92, i32 noundef %min_h.1, i32 noundef %46, i32 noundef %align_h.1, i32 noundef %align_sz.0) #12
  %53 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %r, align 4
  %55 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ctx, align 4
  %57 = ptrtoint ptr %width88 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %width88, align 4
  %sub103 = sub i32 %56, %58
  %59 = tail call i32 @llvm.umin.i32(i32 %54, i32 %sub103)
  %60 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %r, align 4
  %top112 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 1
  %61 = ptrtoint ptr %top112 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %top112, align 4
  %63 = ptrtoint ptr %f_height51 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %f_height51, align 4
  %65 = ptrtoint ptr %height92 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %height92, align 4
  %sub122 = sub i32 %64, %66
  %67 = tail call i32 @llvm.umin.i32(i32 %62, i32 %sub122)
  %68 = ptrtoint ptr %top112 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %top112, align 4
  %hor_offs_align = getelementptr inbounds %struct.fimc_variant, ptr %5, i32 0, i32 4
  %69 = ptrtoint ptr %hor_offs_align to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %hor_offs_align, align 4
  %conv132 = zext i16 %70 to i32
  %neg = sub nsw i32 0, %conv132
  %and134 = and i32 %59, %neg
  %71 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and134, ptr %r, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_capture_try_selection.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_capture_try_selection, %if.then143)) #12
          to label %cleanup [label %if.then143], !srcloc !93

if.then143:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %r, align 4
  %74 = ptrtoint ptr %top112 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %top112, align 4
  %76 = ptrtoint ptr %width88 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %width88, align 4
  %78 = ptrtoint ptr %height92 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %height92, align 4
  %80 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ctx, align 4
  %82 = ptrtoint ptr %f_height51 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %f_height51, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_capture_try_selection.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 707, i32 noundef %target, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then143, %if.end87, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_link_setup(ptr noundef readonly %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %vid_cap = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13
  %entity2 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %2 = ptrtoint ptr %entity2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity2, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_media_entity_v4l2_subdev.exit:                 ; preds = %entry
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %if.end, label %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %is_media_entity_v4l2_subdev.exit
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %do.body29, !prof !96

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1374, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

do.body29:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_link_setup.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_link_setup, %if.then39)) #12
          to label %do.end46 [label %if.then39], !srcloc !93

if.then39:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  %entity40 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 1
  %6 = ptrtoint ptr %entity40 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entity40, align 4
  %name = getelementptr inbounds %struct.media_entity, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %10 = ptrtoint ptr %entity2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entity2, align 4
  %name42 = getelementptr inbounds %struct.media_entity, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name42, align 4
  %input = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 16
  %14 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %input, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_link_setup.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 1379, ptr noundef %9, ptr noundef %13, i32 noundef %flags, i32 noundef %15) #12
  br label %do.end46

do.end46:                                         ; preds = %if.then39, %do.body29
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  %input50 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 16
  br i1 %tobool47.not, label %if.then48, label %if.end51

if.then48:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %input50 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %input50, align 8
  br label %cleanup

if.end51:                                         ; preds = %do.end46
  %17 = ptrtoint ptr %input50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %input50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp53.not = icmp eq i32 %18, 0
  br i1 %cmp53.not, label %if.end55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 10
  %19 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %grp_id, align 4
  %21 = ptrtoint ptr %input50 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %input50, align 8
  %user_subdev_api = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 17
  %22 = ptrtoint ptr %user_subdev_api to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %user_subdev_api, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool57.not = icmp eq i8 %23, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  %subdev = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 1
  %call61 = tail call ptr @fimc_find_remote_sensor(ptr noundef %subdev) #12
  %cmp62 = icmp eq ptr %call61, null
  br i1 %cmp62, label %if.end59.cleanup_crit_edge, label %if.end64

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vid_cap, align 8
  %ctrls = getelementptr inbounds %struct.fimc_ctx, ptr %25, i32 0, i32 16
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call61, i32 0, i32 8
  %26 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_handler, align 4
  %call65 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrls, ptr noundef %27, ptr noundef null, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end59.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.then48, %do.end, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call65, %if.end64 ], [ 0, %if.then48 ], [ -22, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge ], [ -16, %if.end51.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ 0, %if.end59.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_find_remote_sensor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_capture_subdev_registered(ptr nocapture noundef readonly %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev, align 4
  %call1 = tail call i32 @fimc_register_m2m_device(ptr noundef nonnull %1, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 12
  %4 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_priv.i, align 4
  %pipe = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 1
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pipe, align 8
  %7 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v4l2_dev, align 4
  %ve.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 780) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end3.if.then8_crit_edge, label %if.end.i

if.end3.if.then8_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.end.i:                                         ; preds = %if.end3
  %vid_cap.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13
  %vbq.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 10
  %fimc_dev.i = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i.i, i32 0, i32 14
  %10 = ptrtoint ptr %fimc_dev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %fimc_dev.i, align 4
  %in_path.i = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %in_path.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %in_path.i, align 8
  %out_path.i = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %out_path.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %out_path.i, align 4
  %state.i = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i.i, i32 0, i32 13
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 131072, ptr %state.i, align 8
  %call3.i = tail call ptr @fimc_find_format(ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 0) #12
  %fmt4.i = getelementptr inbounds %struct.fimc_frame, ptr %call7.i.i.i, i32 0, i32 12
  %14 = ptrtoint ptr %fmt4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call3.i, ptr %fmt4.i, align 4
  %fmt7.i = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i.i, i32 0, i32 1, i32 12
  %15 = ptrtoint ptr %fmt7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3.i, ptr %fmt7.i, align 8
  %16 = call ptr @memset(ptr %ve.i, i32 0, i32 1352)
  %name.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 12
  %id.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i, align 4
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %18) #12
  %fops.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 3
  %19 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @fimc_capture_fops, ptr %fops.i, align 4
  %ioctl_ops.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 24
  %20 = ptrtoint ptr %ioctl_ops.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @fimc_capture_ioctl_ops, ptr %ioctl_ops.i, align 4
  %v4l2_dev9.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 7
  %21 = ptrtoint ptr %v4l2_dev9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %8, ptr %v4l2_dev9.i, align 4
  %minor.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 15
  %22 = ptrtoint ptr %minor.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %minor.i, align 8
  %release.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 23
  %23 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @video_device_release_empty, ptr %release.i, align 8
  %queue.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 10
  %24 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %vbq.i, ptr %queue.i, align 8
  %lock.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 1
  %lock10.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 26
  %25 = ptrtoint ptr %lock10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %lock.i, ptr %lock10.i, align 8
  %device_caps.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 4
  %26 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 67112960, ptr %device_caps.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 5, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %driver_data.i.i.i, align 4
  %active_buf_cnt.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 11
  %28 = ptrtoint ptr %active_buf_cnt.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %active_buf_cnt.i, align 4
  %reqbufs_count.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 14
  %29 = ptrtoint ptr %reqbufs_count.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %reqbufs_count.i, align 8
  %30 = ptrtoint ptr %vid_cap.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i.i, ptr %vid_cap.i, align 8
  %pending_buf_q.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 8
  %31 = ptrtoint ptr %pending_buf_q.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %pending_buf_q.i, ptr %pending_buf_q.i, align 4
  %prev.i.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 8, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %pending_buf_q.i, ptr %prev.i.i, align 4
  %active_buf_q.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 9
  %33 = ptrtoint ptr %active_buf_q.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %active_buf_q.i, ptr %active_buf_q.i, align 4
  %prev.i131.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 9, i32 1
  %34 = ptrtoint ptr %prev.i131.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %active_buf_q.i, ptr %prev.i131.i, align 4
  %35 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 10, i32 3
  %36 = call ptr @memset(ptr %35, i32 0, i32 500)
  %37 = ptrtoint ptr %vbq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 9, ptr %vbq.i, align 4
  %io_modes.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 10, i32 1
  %38 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 19, ptr %io_modes.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 10, i32 10
  %39 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i.i, ptr %drv_priv.i, align 4
  %ops.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 10, i32 7
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @fimc_capture_qops, ptr %ops.i, align 4
  %mem_ops.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 10, i32 8
  %41 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops.i, align 4
  %buf_struct_size.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 10, i32 12
  %42 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 760, ptr %buf_struct_size.i, align 4
  %timestamp_flags.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 10, i32 13
  %43 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %lock14.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 10, i32 5
  %44 = ptrtoint ptr %lock14.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %lock.i, ptr %lock14.i, align 4
  %pdev.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  %dev15.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 10, i32 2
  %47 = ptrtoint ptr %dev15.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dev.i, ptr %dev15.i, align 4
  %call16.i = tail call i32 @vb2_queue_init(ptr noundef %vbq.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end.i.err_free_ctx.i_crit_edge

if.end.i.err_free_ctx.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_ctx.i

if.end19.i:                                       ; preds = %if.end.i
  %call20.i = tail call ptr @fimc_find_format(ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 0) #12
  %ci_fmt.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 5
  %48 = ptrtoint ptr %ci_fmt.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 640, ptr %ci_fmt.i, align 8
  %height.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 5, i32 1
  %49 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 480, ptr %height.i, align 4
  %50 = ptrtoint ptr %call20.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call20.i, align 4
  %code.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 5, i32 2
  %52 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %code.i, align 8
  %width24.i = getelementptr inbounds %struct.fimc_frame, ptr %call7.i.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %width24.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 640, ptr %width24.i, align 8
  %height26.i = getelementptr inbounds %struct.fimc_frame, ptr %call7.i.i.i, i32 0, i32 7
  %54 = ptrtoint ptr %height26.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 480, ptr %height26.i, align 4
  %55 = ptrtoint ptr %fmt4.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call20.i, ptr %fmt4.i, align 4
  %call29.i = tail call ptr @fimc_find_format(ptr noundef null, ptr noundef null, i32 noundef 32, i32 noundef 0) #12
  %wb_fmt.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 6
  %56 = call ptr @memcpy(ptr %wb_fmt.i, ptr %ci_fmt.i, i32 48)
  %57 = ptrtoint ptr %call29.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call29.i, align 4
  %code33.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 6, i32 2
  %59 = ptrtoint ptr %code33.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %code33.i, align 8
  %vd_pad.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 3
  %flags.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 3, i32 4
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %flags.i, align 4
  %function.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 0, i32 3
  %61 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 16389, ptr %function.i, align 8
  %call36.i = tail call i32 @media_entity_pads_init(ptr noundef %ve.i, i16 noundef zeroext 1, ptr noundef %vd_pad.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end19.i.err_free_ctx.i_crit_edge

if.end19.i.err_free_ctx.i_crit_edge:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_ctx.i

if.end39.i:                                       ; preds = %if.end19.i
  %call40.i = tail call i32 @fimc_ctrls_create(ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end39.i.err_free_ctx.i_crit_edge

if.end39.i.err_free_ctx.i_crit_edge:              ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_ctx.i

if.end43.i:                                       ; preds = %if.end39.i
  %62 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fops.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %call.i.i = tail call i32 @__video_register_device(ptr noundef %ve.i, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %65) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool45.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool45.not.i, label %do.end.i, label %err_ctrl_free.i

do.end.i:                                         ; preds = %if.end43.i
  %name48.i = getelementptr inbounds %struct.v4l2_device, ptr %8, i32 0, i32 4
  %init_name.i.i.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 5, i32 3
  %66 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.fimc_register_capture_device.exit_crit_edge

do.end.i.fimc_register_capture_device.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_register_capture_device.exit

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 5
  %68 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i.i, align 4
  br label %fimc_register_capture_device.exit

err_ctrl_free.i:                                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fimc_ctrls_delete(ptr noundef nonnull %call7.i.i.i) #12
  br label %err_free_ctx.i

err_free_ctx.i:                                   ; preds = %err_ctrl_free.i, %if.end39.i.err_free_ctx.i_crit_edge, %if.end19.i.err_free_ctx.i_crit_edge, %if.end.i.err_free_ctx.i_crit_edge
  %ret.1.i = phi i32 [ %call16.i, %if.end.i.err_free_ctx.i_crit_edge ], [ %call36.i, %if.end19.i.err_free_ctx.i_crit_edge ], [ %call40.i, %if.end39.i.err_free_ctx.i_crit_edge ], [ %call.i.i, %err_ctrl_free.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.then8

fimc_register_capture_device.exit:                ; preds = %if.end.i.i.i, %do.end.i.fimc_register_capture_device.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %69, %if.end.i.i.i ], [ %67, %do.end.i.fimc_register_capture_device.exit_crit_edge ]
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name48.i, ptr noundef %name.i, ptr noundef %retval.0.i.i.i) #15
  %ctrls.i = getelementptr inbounds %struct.fimc_ctx, ptr %call7.i.i.i, i32 0, i32 16
  %ctrl_handler.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 9
  %70 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %ctrls.i, ptr %ctrl_handler.i, align 4
  br label %cleanup

if.then8:                                         ; preds = %err_free_ctx.i, %if.end3.if.then8_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end3.if.then8_crit_edge ], [ %ret.1.i, %err_free_ctx.i ]
  tail call void @fimc_unregister_m2m_device(ptr noundef nonnull %1) #12
  %71 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %pipe, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %fimc_register_capture_device.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %if.then8 ], [ 0, %fimc_register_capture_device.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fimc_capture_subdev_unregistered(ptr nocapture noundef readonly %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  tail call void @fimc_unregister_m2m_device(ptr noundef nonnull %1) #12
  %vid_cap = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13
  %flags.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 17
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ve = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2
  tail call void @video_unregister_device(ptr noundef %ve) #12
  %4 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vid_cap, align 8
  tail call void @fimc_ctrls_delete(ptr noundef %5) #12
  %pipe = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 1
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pipe, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %7 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vid_cap, align 8
  tail call void @kfree(ptr noundef %8) #12
  %9 = ptrtoint ptr %vid_cap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %vid_cap, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_register_m2m_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_unregister_m2m_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_ctrls_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_ctrls_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_capture_open(ptr noundef %file) #0 align 64 {
entry:
  %fmt.i = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ve1 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_capture_open.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_capture_open, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !83) #12
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_capture_open.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef 473, i32 noundef %7, i32 noundef %9) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %state7 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state7, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %if.end11, label %do.end.unlock_crit_edge

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end11:                                         ; preds = %do.end
  tail call void @_set_bit(i32 noundef 11, ptr noundef %state7) #12
  %pdev = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %call.i90 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i = icmp slt i32 %call.i90, 0
  br i1 %cmp.i, label %if.then.i, label %if.end15

if.then.i:                                        ; preds = %if.end11
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !100
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.unlock_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.unlock_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !101
  br label %unlock

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @v4l2_fh_open(ptr noundef %file) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev20 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %call.i92 = tail call i32 @__pm_runtime_idle(ptr noundef %dev20, i32 noundef 4) #12
  br label %unlock

if.end22:                                         ; preds = %if.end15
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %18 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data.i, align 4
  %call.i93 = tail call i32 @v4l2_fh_is_singular(ptr noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool24.not = icmp eq i32 %call.i93, 0
  br i1 %tobool24.not, label %if.end22.unlock_crit_edge, label %if.then25

if.end22.unlock_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then25:                                        ; preds = %if.end22
  %20 = ptrtoint ptr %ve1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ve1, align 8
  %graph_mutex.i = getelementptr inbounds %struct.media_device, ptr %21, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex.i, i32 noundef 0) #12
  %tobool26.not = icmp eq ptr %ve1, null
  br i1 %tobool26.not, label %if.then25.if.end50.critedge_crit_edge, label %lor.lhs.false

if.then25.if.end50.critedge_crit_edge:            ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.critedge

lor.lhs.false:                                    ; preds = %if.then25
  %pipe = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 1
  %22 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pipe, align 8
  %tobool27.not = icmp eq ptr %23, null
  br i1 %tobool27.not, label %lor.lhs.false.if.end50.critedge_crit_edge, label %cond.false

lor.lhs.false.if.end50.critedge_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.critedge

cond.false:                                       ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %tobool29.not = icmp eq ptr %25, null
  br i1 %tobool29.not, label %cond.false.if.end50.critedge_crit_edge, label %land.lhs.true

cond.false.if.end50.critedge_crit_edge:           ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.critedge

land.lhs.true:                                    ; preds = %cond.false
  %open = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %open, align 4
  %tobool32.not = icmp eq ptr %27, null
  br i1 %tobool32.not, label %land.lhs.true.if.end50.critedge_crit_edge, label %cond.end40

land.lhs.true.if.end50.critedge_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.critedge

cond.end40:                                       ; preds = %land.lhs.true
  %call38 = tail call i32 %27(ptr noundef nonnull %23, ptr noundef nonnull %ve1, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp42 = icmp eq i32 %call38, 0
  br i1 %cmp42, label %if.then43, label %cond.end40.if.end50.critedge_crit_edge

cond.end40.if.end50.critedge_crit_edge:           ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.critedge

if.then43:                                        ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #14
  %use_count = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 0, i32 13
  %28 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %use_count, align 8
  %inc = add i32 %29, 1
  store i32 %inc, ptr %use_count, align 8
  %30 = ptrtoint ptr %ve1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ve1, align 8
  %graph_mutex.i94 = getelementptr inbounds %struct.media_device, ptr %31, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %graph_mutex.i94) #12
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %fmt.i) #12
  %32 = call ptr @memcpy(ptr %fmt.i, ptr @__const.fimc_capture_set_default_format.fmt, i32 204)
  %call.i95 = call fastcc i32 @__fimc_capture_set_format(ptr noundef %1, ptr noundef nonnull %fmt.i) #12
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %fmt.i) #12
  br label %if.end50

if.end50.critedge:                                ; preds = %cond.end40.if.end50.critedge_crit_edge, %land.lhs.true.if.end50.critedge_crit_edge, %cond.false.if.end50.critedge_crit_edge, %lor.lhs.false.if.end50.critedge_crit_edge, %if.then25.if.end50.critedge_crit_edge
  %cond41103 = phi i32 [ %call38, %cond.end40.if.end50.critedge_crit_edge ], [ -515, %cond.false.if.end50.critedge_crit_edge ], [ -515, %land.lhs.true.if.end50.critedge_crit_edge ], [ -2, %if.then25.if.end50.critedge_crit_edge ], [ -2, %lor.lhs.false.if.end50.critedge_crit_edge ]
  %33 = ptrtoint ptr %ve1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ve1, align 8
  %graph_mutex.i96 = getelementptr inbounds %struct.media_device, ptr %34, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %graph_mutex.i96) #12
  br label %if.end50

if.end50:                                         ; preds = %if.end50.critedge, %if.then43
  %ret.0 = phi i32 [ %call.i95, %if.then43 ], [ %cond41103, %if.end50.critedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp51 = icmp slt i32 %ret.0, 0
  br i1 %cmp51, label %if.then52, label %if.end50.unlock_crit_edge

if.end50.unlock_crit_edge:                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  call void @_clear_bit(i32 noundef 11, ptr noundef %state7) #12
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 8
  %dev55 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %call.i97 = call i32 @__pm_runtime_idle(ptr noundef %dev55, i32 noundef 4) #12
  %call57 = call i32 @v4l2_fh_release(ptr noundef %file) #12
  br label %unlock

unlock:                                           ; preds = %if.then52, %if.end50.unlock_crit_edge, %if.end22.unlock_crit_edge, %if.then18, %do.end11.i.i.i.i.i, %if.then.i.unlock_crit_edge, %do.end.unlock_crit_edge
  %ret.1 = phi i32 [ -16, %do.end.unlock_crit_edge ], [ %call16, %if.then18 ], [ %ret.0, %if.then52 ], [ %ret.0, %if.end50.unlock_crit_edge ], [ 0, %if.end22.unlock_crit_edge ], [ %call.i90, %if.then.i.unlock_crit_edge ], [ %call.i90, %do.end11.i.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_capture_release(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i73 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not = icmp eq i32 %call.i73, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_capture_release.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_capture_release, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = tail call i32 @llvm.read_register.i32(metadata !83) #12
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
  %state = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_capture_release.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.29, i32 noundef 522, i32 noundef %9, i32 noundef %11) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  br i1 %tobool.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %streaming = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 15
  %12 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %streaming, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  br i1 %tobool10.not, label %land.lhs.true.if.then16_crit_edge, label %if.then11

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %ve = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2
  tail call void @media_pipeline_stop(ptr noundef %ve) #12
  %14 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %streaming, align 4
  br label %if.then16

if.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = tail call i32 @_vb2_fop_release(ptr noundef %file, ptr noundef null) #12
  br label %if.end48

if.then16:                                        ; preds = %if.then11, %land.lhs.true.if.then16_crit_edge
  %call1477 = tail call i32 @_vb2_fop_release(ptr noundef %file, ptr noundef null) #12
  %state17 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %state17) #12
  %ve18 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2
  %tobool19.not = icmp eq ptr %ve18, null
  br i1 %tobool19.not, label %if.then16.cond.end40_crit_edge, label %lor.lhs.false

if.then16.cond.end40_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end40

lor.lhs.false:                                    ; preds = %if.then16
  %pipe = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 1
  %15 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pipe, align 8
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %lor.lhs.false.cond.end40_crit_edge, label %cond.false

lor.lhs.false.cond.end40_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end40

cond.false:                                       ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %tobool24.not = icmp eq ptr %18, null
  br i1 %tobool24.not, label %cond.false.cond.end40_crit_edge, label %land.lhs.true25

cond.false.cond.end40_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end40

land.lhs.true25:                                  ; preds = %cond.false
  %close29 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %close29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %close29, align 4
  %tobool30.not = icmp eq ptr %20, null
  br i1 %tobool30.not, label %land.lhs.true25.cond.end40_crit_edge, label %cond.true31

land.lhs.true25.cond.end40_crit_edge:             ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end40

cond.true31:                                      ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  %call38 = tail call i32 %20(ptr noundef nonnull %16) #12
  br label %cond.end40

cond.end40:                                       ; preds = %cond.true31, %land.lhs.true25.cond.end40_crit_edge, %cond.false.cond.end40_crit_edge, %lor.lhs.false.cond.end40_crit_edge, %if.then16.cond.end40_crit_edge
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %state17) #12
  %21 = ptrtoint ptr %ve18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ve18, align 8
  %graph_mutex.i = getelementptr inbounds %struct.media_device, ptr %22, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex.i, i32 noundef 0) #12
  %use_count = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 0, i32 13
  %23 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %use_count, align 8
  %dec = add i32 %24, -1
  store i32 %dec, ptr %use_count, align 8
  %25 = ptrtoint ptr %ve18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ve18, align 8
  %graph_mutex.i74 = getelementptr inbounds %struct.media_device, ptr %26, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %graph_mutex.i74) #12
  br label %if.end48

if.end48:                                         ; preds = %cond.end40, %if.end13
  %call1479 = phi i32 [ %call1477, %cond.end40 ], [ %call14, %if.end13 ]
  %pdev = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %call.i75 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #12
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1479
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__fimc_capture_set_format(ptr noundef %fimc, ptr noundef %f) unnamed_addr #0 align 64 {
entry:
  %inp_fmt = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vid_cap = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13
  %0 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vid_cap, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %d_frame = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inp_fmt) #12
  %2 = ptrtoint ptr %inp_fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %inp_fmt, align 4
  %num_buffers.i = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 10, i32 21
  %3 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt3 = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 1, i32 12
  %call4 = call fastcc i32 @__video_try_or_set_format(ptr noundef %fimc, ptr noundef %f, i1 noundef zeroext false, ptr noundef nonnull %inp_fmt, ptr noundef %fmt3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @fimc_alpha_ctrl_update(ptr noundef %1) #12
  %5 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fmt3, align 4
  %memplanes75 = getelementptr inbounds %struct.fimc_fmt, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %memplanes75 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %memplanes75, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp877.not = icmp eq i16 %8, 0
  br i1 %cmp877.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.078 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.078
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.078, i32 1
  %9 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %bytesperline, align 1
  %arrayidx11 = getelementptr %struct.fimc_ctx, ptr %1, i32 0, i32 1, i32 9, i32 %i.078
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx11, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %arrayidx, align 1
  %arrayidx14 = getelementptr %struct.fimc_ctx, ptr %1, i32 0, i32 1, i32 8, i32 %i.078
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx14, align 4
  %inc = add nuw nsw i32 %i.078, 1
  %15 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fmt3, align 4
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %memplanes, align 4
  %conv = zext i16 %18 to i32
  %cmp8 = icmp ult i32 %inc, %conv
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %fmt, align 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %height, align 1
  %o_width.i = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %o_width.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %o_width.i, align 4
  %o_height.i = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %o_height.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %o_height.i, align 4
  %25 = ptrtoint ptr %d_frame to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %20, ptr %d_frame, align 4
  %f_height.i = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %f_height.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %22, ptr %f_height.i, align 4
  %state = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 13
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state, align 4
  %and = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then15, label %for.end.if.end18_crit_edge

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %fmt, align 1
  %31 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %height, align 1
  %offs_h.i = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %offs_h.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %offs_h.i, align 4
  %offs_v.i = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 1, i32 5
  %34 = ptrtoint ptr %offs_v.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %offs_v.i, align 4
  %width1.i = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 1, i32 6
  %35 = ptrtoint ptr %width1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %30, ptr %width1.i, align 4
  %height2.i = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 1, i32 7
  %36 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %32, ptr %height2.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %for.end.if.end18_crit_edge
  %37 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fmt3, align 4
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %color, align 4
  %and.i = and i32 %40, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %scaler.i = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %scaler.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %scaler.i, align 4
  %bf.shl.i = select i1 %tobool.not.i, i8 16, i8 0
  %bf.clear.i = and i8 %bf.load.i, -17
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  store i8 %bf.set.i, ptr %scaler.i, align 4
  call void @fimc_ctrls_activate(ptr noundef %1, i1 noundef zeroext %tobool.not.i) #12
  %fimc_dev8.i = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 14
  %42 = ptrtoint ptr %fimc_dev8.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fimc_dev8.i, align 4
  %state9.i = getelementptr inbounds %struct.fimc_dev, ptr %43, i32 0, i32 14
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 13, ptr noundef %state9.i) #12
  br label %fimc_capture_mark_jpeg_xfer.exit

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call void @_clear_bit(i32 noundef 13, ptr noundef %state9.i) #12
  br label %fimc_capture_mark_jpeg_xfer.exit

fimc_capture_mark_jpeg_xfer.exit:                 ; preds = %if.else.i, %if.then.i
  %user_subdev_api = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 17
  %44 = ptrtoint ptr %user_subdev_api to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %user_subdev_api, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool20.not = icmp eq i8 %45, 0
  br i1 %tobool20.not, label %if.then21, label %fimc_capture_mark_jpeg_xfer.exit.cleanup_crit_edge

fimc_capture_mark_jpeg_xfer.exit.cleanup_crit_edge: ; preds = %fimc_capture_mark_jpeg_xfer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %fimc_capture_mark_jpeg_xfer.exit
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %inp_fmt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %inp_fmt, align 4
  %fmt22 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 12
  %48 = ptrtoint ptr %fmt22 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %fmt22, align 4
  %49 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %fmt, align 1
  %51 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %height, align 1
  %o_width.i68 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %o_width.i68 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %o_width.i68, align 4
  %o_height.i69 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %o_height.i69 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %o_height.i69, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %50, ptr %1, align 4
  %f_height.i70 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 1
  %56 = ptrtoint ptr %f_height.i70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %52, ptr %f_height.i70, align 4
  %57 = load i32, ptr %fmt, align 1
  %58 = load i32, ptr %height, align 1
  %offs_h.i71 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %offs_h.i71 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %offs_h.i71, align 4
  %offs_v.i72 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 5
  %60 = ptrtoint ptr %offs_v.i72 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %offs_v.i72, align 4
  %width1.i73 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 6
  %61 = ptrtoint ptr %width1.i73 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %57, ptr %width1.i73, align 4
  %height2.i74 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 7
  %62 = ptrtoint ptr %height2.i74 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %58, ptr %height2.i74, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %fimc_capture_mark_jpeg_xfer.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call4, %if.then21 ], [ %call4, %fimc_capture_mark_jpeg_xfer.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inp_fmt) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__video_try_or_set_format(ptr noundef %fimc, ptr noundef %f, i1 noundef zeroext %try, ptr noundef writeonly %inp_fmt, ptr nocapture noundef %out_fmt) unnamed_addr #0 align 64 {
entry:
  %sfmt.i = alloca %struct.v4l2_subdev_format, align 4
  %fcc.i = alloca i32, align 4
  %mbus_fmt = alloca %struct.v4l2_mbus_framefmt, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %vid_cap = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13
  %ve1 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vid_cap, align 8
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %pixelformat, align 1
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %3, label %if.end13 [
    i32 1229141331, label %entry.if.then_crit_edge
    i32 1195724874, label %entry.if.then_crit_edge169
  ]

entry.if.then_crit_edge169:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge169
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %call6 = tail call fastcc ptr @fimc_capture_try_format(ptr noundef %1, ptr noundef %fmt, ptr noundef %height4, ptr noundef null, ptr noundef %pixelformat, i32 noundef 0)
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %fmt, align 1
  br i1 %try, label %if.end13.thread149, label %if.end13.thread

if.end13:                                         ; preds = %entry
  %height15 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %call17 = tail call fastcc ptr @fimc_capture_try_format(ptr noundef %1, ptr noundef %fmt, ptr noundef %height15, ptr noundef null, ptr noundef %pixelformat, i32 noundef 2)
  %7 = ptrtoint ptr %out_fmt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call17, ptr %out_fmt, align 4
  %cmp = icmp eq ptr %call17, null
  br i1 %cmp, label %if.end13.cleanup59_crit_edge, label %if.end19

if.end13.cleanup59_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup59

if.end13.thread149:                               ; preds = %if.then
  %8 = ptrtoint ptr %height4 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %height4, align 1
  %call17153 = tail call fastcc ptr @fimc_capture_try_format(ptr noundef %1, ptr noundef %fmt, ptr noundef %height4, ptr noundef null, ptr noundef %pixelformat, i32 noundef 2)
  %10 = ptrtoint ptr %out_fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17153, ptr %out_fmt, align 4
  %cmp154 = icmp eq ptr %call17153, null
  br i1 %cmp154, label %if.end13.thread149.cleanup59_crit_edge, label %if.end13.thread149.land.lhs.true_crit_edge

if.end13.thread149.land.lhs.true_crit_edge:       ; preds = %if.end13.thread149
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.end13.thread149.cleanup59_crit_edge:           ; preds = %if.end13.thread149
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup59

if.end13.thread:                                  ; preds = %if.then
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %6, ptr %1, align 4
  %12 = ptrtoint ptr %height4 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %height4, align 1
  %f_height = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %f_height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %f_height, align 4
  %call17139 = tail call fastcc ptr @fimc_capture_try_format(ptr noundef %1, ptr noundef %fmt, ptr noundef %height4, ptr noundef null, ptr noundef %pixelformat, i32 noundef 2)
  %15 = ptrtoint ptr %out_fmt to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call17139, ptr %out_fmt, align 4
  %cmp140 = icmp eq ptr %call17139, null
  br i1 %cmp140, label %if.end13.thread.cleanup59_crit_edge, label %if.end13.thread.if.end26_crit_edge

if.end13.thread.if.end26_crit_edge:               ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end13.thread.cleanup59_crit_edge:              ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup59

if.end19:                                         ; preds = %if.end13
  br i1 %try, label %if.end19.land.lhs.true_crit_edge, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end19.land.lhs.true_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end19.land.lhs.true_crit_edge, %if.end13.thread149.land.lhs.true_crit_edge
  %width.0141161 = phi i32 [ 0, %if.end19.land.lhs.true_crit_edge ], [ %6, %if.end13.thread149.land.lhs.true_crit_edge ]
  %height.0142160 = phi i32 [ 0, %if.end19.land.lhs.true_crit_edge ], [ %9, %if.end13.thread149.land.lhs.true_crit_edge ]
  %height15143159 = phi ptr [ %height15, %if.end19.land.lhs.true_crit_edge ], [ %height4, %if.end13.thread149.land.lhs.true_crit_edge ]
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %pixelformat, align 1
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %17, label %land.lhs.true.if.end26_crit_edge [
    i32 1229141331, label %land.lhs.true.if.then23_crit_edge
    i32 1195724874, label %land.lhs.true.if.then23_crit_edge170
  ]

land.lhs.true.if.then23_crit_edge170:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

land.lhs.true.if.then23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true.if.then23_crit_edge, %land.lhs.true.if.then23_crit_edge170
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %width.0141161, ptr %fmt, align 1
  %20 = ptrtoint ptr %height15143159 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %height.0142160, ptr %height15143159, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true.if.end26_crit_edge, %if.end19.if.end26_crit_edge, %if.end13.thread.if.end26_crit_edge
  %height15143148 = phi ptr [ %height15143159, %if.then23 ], [ %height15143159, %land.lhs.true.if.end26_crit_edge ], [ %height15, %if.end19.if.end26_crit_edge ], [ %height4, %if.end13.thread.if.end26_crit_edge ]
  %user_subdev_api = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 17
  %21 = ptrtoint ptr %user_subdev_api to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %user_subdev_api, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool27.not = icmp eq i8 %22, 0
  br i1 %tobool27.not, label %if.then28, label %if.end26.if.end45_crit_edge

if.end26.if.end45_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then28:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mbus_fmt) #12
  %23 = call ptr @memset(ptr %mbus_fmt, i32 255, i32 48)
  %ci_fmt = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 5
  %spec.select = select i1 %try, ptr %mbus_fmt, ptr %ci_fmt
  %24 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out_fmt, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %mbus_fmt.sroa.gep127 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus_fmt, i32 0, i32 2
  %ci_fmt.sroa.gep128 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 5, i32 2
  %spec.select.sroa.sel129 = select i1 %try, ptr %mbus_fmt.sroa.gep127, ptr %ci_fmt.sroa.gep128
  %28 = ptrtoint ptr %spec.select.sroa.sel129 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %spec.select.sroa.sel129, align 4
  %29 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %fmt, align 1
  %31 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %spec.select, align 4
  %32 = ptrtoint ptr %height15143148 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %height15143148, align 1
  %mbus_fmt.sroa.gep = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mbus_fmt, i32 0, i32 1
  %ci_fmt.sroa.gep = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 5, i32 1
  %spec.select.sroa.sel = select i1 %try, ptr %mbus_fmt.sroa.gep, ptr %ci_fmt.sroa.gep
  %34 = ptrtoint ptr %spec.select.sroa.sel to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %spec.select.sroa.sel, align 4
  %35 = ptrtoint ptr %ve1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ve1, align 8
  %graph_mutex.i = getelementptr inbounds %struct.media_device, ptr %36, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex.i, i32 noundef 0) #12
  %fimc_dev.i = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 14
  %37 = ptrtoint ptr %fimc_dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fimc_dev.i, align 4
  %pipe.i = getelementptr inbounds %struct.fimc_dev, ptr %38, i32 0, i32 13, i32 2, i32 1
  %39 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pipe.i, align 8
  %subdevs.i = getelementptr inbounds %struct.fimc_pipeline, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %subdevs.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sfmt.i) #12
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sfmt.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fcc.i) #12
  %43 = ptrtoint ptr %fcc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %fcc.i, align 4, !annotation !102
  %tobool.not.i = icmp eq ptr %42, null
  %tobool1.not.i = icmp eq ptr %spec.select, null
  %spec.select.i119 = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %spec.select.i119, label %do.end.i, label %if.end25.i, !prof !96

do.end.i:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 774, i32 noundef 9, ptr noundef null) #12
  br label %fimc_pipeline_try_format.exit

if.end25.i:                                       ; preds = %if.then28
  %44 = getelementptr inbounds i8, ptr %sfmt.i, i32 4
  %45 = call ptr @memset(ptr %44, i32 0, i32 84)
  %46 = call ptr @memcpy(ptr %format.i, ptr %spec.select, i32 48)
  %cond.i = zext i1 %try to i32
  %47 = ptrtoint ptr %sfmt.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond.i, ptr %sfmt.i, align 4
  %pad.0.in9.i.i = getelementptr inbounds %struct.media_entity, ptr %42, i32 0, i32 9
  %48 = ptrtoint ptr %pad.0.in9.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %pad.010.i.i = load ptr, ptr %pad.0.in9.i.i, align 4
  %flags11.i.i = getelementptr inbounds %struct.media_pad, ptr %pad.010.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %flags11.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags11.i.i, align 4
  %and12.i.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool.not13.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool.not13.i.i, label %while.body.i.preheader.i, label %if.end25.i.fimc_pipeline_get_head.exit.i_crit_edge

if.end25.i.fimc_pipeline_get_head.exit.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_get_head.exit.i

while.body.i.preheader.i:                         ; preds = %if.end25.i
  %call.i256.i = call ptr @media_entity_remote_pad(ptr noundef %pad.010.i.i) #12
  %tobool1.not.i257.i = icmp eq ptr %call.i256.i, null
  br i1 %tobool1.not.i257.i, label %while.body.i.preheader.i.fimc_pipeline_get_head.exit.i_crit_edge, label %while.body.i.preheader.i.if.end.i.i_crit_edge

while.body.i.preheader.i.if.end.i.i_crit_edge:    ; preds = %while.body.i.preheader.i
  br label %if.end.i.i

while.body.i.preheader.i.fimc_pipeline_get_head.exit.i_crit_edge: ; preds = %while.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_get_head.exit.i

while.body.i.i:                                   ; preds = %if.end.i.i
  %call.i.i = call ptr @media_entity_remote_pad(ptr noundef %pad.0.i.i) #12
  %tobool1.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.fimc_pipeline_get_head.exit.i_crit_edge, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

while.body.i.i.fimc_pipeline_get_head.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_get_head.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i.if.end.i.i_crit_edge, %while.body.i.preheader.i.if.end.i.i_crit_edge
  %call.i258.i = phi ptr [ %call.i.i, %while.body.i.i.if.end.i.i_crit_edge ], [ %call.i256.i, %while.body.i.preheader.i.if.end.i.i_crit_edge ]
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i258.i, i32 0, i32 1
  %51 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %entity.i.i, align 4
  %pad.0.in.i.i = getelementptr inbounds %struct.media_entity, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %pad.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %pad.0.i.i = load ptr, ptr %pad.0.in.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.media_pad, ptr %pad.0.i.i, i32 0, i32 4
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %if.end.i.i.fimc_pipeline_get_head.exit.i_crit_edge

if.end.i.i.fimc_pipeline_get_head.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_get_head.exit.i

fimc_pipeline_get_head.exit.i:                    ; preds = %if.end.i.i.fimc_pipeline_get_head.exit.i_crit_edge, %while.body.i.i.fimc_pipeline_get_head.exit.i_crit_edge, %while.body.i.preheader.i.fimc_pipeline_get_head.exit.i_crit_edge, %if.end25.i.fimc_pipeline_get_head.exit.i_crit_edge
  %me.addr.0.lcssa.i.i = phi ptr [ %42, %if.end25.i.fimc_pipeline_get_head.exit.i_crit_edge ], [ %42, %while.body.i.preheader.i.fimc_pipeline_get_head.exit.i_crit_edge ], [ %52, %while.body.i.i.fimc_pipeline_get_head.exit.i_crit_edge ], [ %52, %if.end.i.i.fimc_pipeline_get_head.exit.i_crit_edge ]
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sfmt.i, i32 0, i32 2, i32 2
  %56 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.not264.i = icmp eq i32 %57, 0
  %spec.select243265.i = select i1 %cmp.not264.i, ptr null, ptr %code.i
  %call30266.i = call ptr @fimc_find_format(ptr noundef null, ptr noundef %spec.select243265.i, i32 noundef 1, i32 noundef 1) #12
  %cmp31267.i = icmp eq ptr %call30266.i, null
  br i1 %cmp31267.i, label %fimc_pipeline_get_head.exit.i.fimc_pipeline_try_format.exit_crit_edge, label %if.end33.lr.ph.i

fimc_pipeline_get_head.exit.i.fimc_pipeline_try_format.exit_crit_edge: ; preds = %fimc_pipeline_get_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_try_format.exit

if.end33.lr.ph.i:                                 ; preds = %fimc_pipeline_get_head.exit.i
  %subdev.i = getelementptr inbounds %struct.fimc_dev, ptr %38, i32 0, i32 13, i32 1
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sfmt.i, i32 0, i32 2, i32 1
  br label %if.end33.i

if.end33.i:                                       ; preds = %while.cond.backedge.i.if.end33.i_crit_edge, %if.end33.lr.ph.i
  %call30270.i = phi ptr [ %call30266.i, %if.end33.lr.ph.i ], [ %call30.i, %while.cond.backedge.i.if.end33.i_crit_edge ]
  %inc269.i = phi i32 [ 2, %if.end33.lr.ph.i ], [ %inc.i, %while.cond.backedge.i.if.end33.i_crit_edge ]
  %me.0268.i = phi ptr [ %me.addr.0.lcssa.i.i, %if.end33.lr.ph.i ], [ %subdev.i, %while.cond.backedge.i.if.end33.i_crit_edge ]
  %58 = ptrtoint ptr %call30270.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %call30270.i, align 4
  %60 = ptrtoint ptr %spec.select.sroa.sel129 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %spec.select.sroa.sel129, align 4
  %61 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %59, ptr %code.i, align 4
  %cmp39.not260.i = icmp eq ptr %me.0268.i, %subdev.i
  br i1 %cmp39.not260.i, label %if.end33.i.while.end.i_crit_edge, label %if.end33.i.while.body40.i_crit_edge

if.end33.i.while.body40.i_crit_edge:              ; preds = %if.end33.i
  br label %while.body40.i

if.end33.i.while.end.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body40.i:                                   ; preds = %if.end126.i.while.body40.i_crit_edge, %if.end33.i.while.body40.i_crit_edge
  %me.1261.i = phi ptr [ %95, %if.end126.i.while.body40.i_crit_edge ], [ %me.0268.i, %if.end33.i.while.body40.i_crit_edge ]
  %tobool42.not.i = icmp eq ptr %me.1261.i, null
  %62 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %44, align 4
  br i1 %tobool42.not.i, label %while.body40.i.fimc_pipeline_try_format.exit_crit_edge, label %if.else.i

while.body40.i.fimc_pipeline_try_format.exit_crit_edge: ; preds = %while.body40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_try_format.exit

if.else.i:                                        ; preds = %while.body40.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %me.1261.i, i32 0, i32 6
  %63 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i, align 4
  %pad53.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %pad53.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pad53.i, align 4
  %tobool54.not.i = icmp eq ptr %66, null
  br i1 %tobool54.not.i, label %if.else.i.fimc_pipeline_try_format.exit_crit_edge, label %land.lhs.true.i

if.else.i.fimc_pipeline_try_format.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_try_format.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %set_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %set_fmt.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %set_fmt.i, align 4
  %tobool57.not.i = icmp eq ptr %68, null
  br i1 %tobool57.not.i, label %land.lhs.true.i.fimc_pipeline_try_format.exit_crit_edge, label %if.else59.i

land.lhs.true.i.fimc_pipeline_try_format.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_try_format.exit

if.else59.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool60.not.i = icmp eq ptr %69, null
  br i1 %tobool60.not.i, label %if.else59.i.if.else67.i_crit_edge, label %land.lhs.true61.i

if.else59.i.if.else67.i_crit_edge:                ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else67.i

land.lhs.true61.i:                                ; preds = %if.else59.i
  %set_fmt62.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %set_fmt62.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %set_fmt62.i, align 4
  %tobool63.not.i = icmp eq ptr %71, null
  br i1 %tobool63.not.i, label %land.lhs.true61.i.if.else67.i_crit_edge, label %land.lhs.true61.i.if.end74.i_crit_edge

land.lhs.true61.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i

land.lhs.true61.i.if.else67.i_crit_edge:          ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else67.i

if.else67.i:                                      ; preds = %land.lhs.true61.i.if.else67.i_crit_edge, %if.else59.i.if.else67.i_crit_edge
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.else67.i, %land.lhs.true61.i.if.end74.i_crit_edge
  %.sink.i = phi ptr [ %68, %if.else67.i ], [ %71, %land.lhs.true61.i.if.end74.i_crit_edge ]
  %call71.i = call i32 %.sink.i(ptr noundef nonnull %me.1261.i, ptr noundef null, ptr noundef nonnull %sfmt.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool76.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool76.not.i, label %if.end78.i, label %if.end74.i.fimc_pipeline_try_format.exit_crit_edge

if.end74.i.fimc_pipeline_try_format.exit_crit_edge: ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_try_format.exit

if.end78.i:                                       ; preds = %if.end74.i
  %pads.i = getelementptr inbounds %struct.media_entity, ptr %me.1261.i, i32 0, i32 9
  %72 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pads.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool80.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool80.not.i, label %if.end78.i.if.end119.i_crit_edge, label %if.else89.i

if.end78.i.if.end119.i_crit_edge:                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119.i

if.else89.i:                                      ; preds = %if.end78.i
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %me.1261.i, i32 0, i32 5
  %76 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %77 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %78 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub.i, ptr %44, align 4
  %79 = ptrtoint ptr %spec.select.sroa.sel129 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %spec.select.sroa.sel129, align 4
  %81 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %code.i, align 4
  %82 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i, align 4
  %pad91.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %pad91.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pad91.i, align 4
  %tobool92.not.i = icmp eq ptr %85, null
  br i1 %tobool92.not.i, label %if.else89.i.fimc_pipeline_try_format.exit_crit_edge, label %land.lhs.true93.i

if.else89.i.fimc_pipeline_try_format.exit_crit_edge: ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_try_format.exit

land.lhs.true93.i:                                ; preds = %if.else89.i
  %set_fmt96.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %set_fmt96.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %set_fmt96.i, align 4
  %tobool97.not.i = icmp eq ptr %87, null
  br i1 %tobool97.not.i, label %land.lhs.true93.i.fimc_pipeline_try_format.exit_crit_edge, label %if.else99.i

land.lhs.true93.i.fimc_pipeline_try_format.exit_crit_edge: ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_try_format.exit

if.else99.i:                                      ; preds = %land.lhs.true93.i
  br i1 %tobool60.not.i, label %if.else99.i.if.else107.i_crit_edge, label %land.lhs.true101.i

if.else99.i.if.else107.i_crit_edge:               ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else107.i

land.lhs.true101.i:                               ; preds = %if.else99.i
  %set_fmt102.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %69, i32 0, i32 5
  %88 = ptrtoint ptr %set_fmt102.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %set_fmt102.i, align 4
  %tobool103.not.i = icmp eq ptr %89, null
  br i1 %tobool103.not.i, label %land.lhs.true101.i.if.else107.i_crit_edge, label %land.lhs.true101.i.if.end114.i_crit_edge

land.lhs.true101.i.if.end114.i_crit_edge:         ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i

land.lhs.true101.i.if.else107.i_crit_edge:        ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else107.i

if.else107.i:                                     ; preds = %land.lhs.true101.i.if.else107.i_crit_edge, %if.else99.i.if.else107.i_crit_edge
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.else107.i, %land.lhs.true101.i.if.end114.i_crit_edge
  %.sink274.i = phi ptr [ %87, %if.else107.i ], [ %89, %land.lhs.true101.i.if.end114.i_crit_edge ]
  %call111.i = call i32 %.sink274.i(ptr noundef nonnull %me.1261.i, ptr noundef null, ptr noundef nonnull %sfmt.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %tobool116.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool116.not.i, label %if.end114.i.if.end119.i_crit_edge, label %if.end114.i.fimc_pipeline_try_format.exit_crit_edge

if.end114.i.fimc_pipeline_try_format.exit_crit_edge: ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_try_format.exit

if.end114.i.if.end119.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.end114.i.if.end119.i_crit_edge, %if.end78.i.if.end119.i_crit_edge
  %90 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pads.i, align 4
  %92 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %44, align 4
  %arrayidx122.i = getelementptr %struct.media_pad, ptr %91, i32 %93
  %call123.i = call ptr @media_entity_remote_pad(ptr noundef %arrayidx122.i) #12
  %tobool124.not.i = icmp eq ptr %call123.i, null
  br i1 %tobool124.not.i, label %if.end119.i.fimc_pipeline_try_format.exit_crit_edge, label %if.end126.i

if.end119.i.fimc_pipeline_try_format.exit_crit_edge: ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_try_format.exit

if.end126.i:                                      ; preds = %if.end119.i
  %entity127.i = getelementptr inbounds %struct.media_pad, ptr %call123.i, i32 0, i32 1
  %94 = ptrtoint ptr %entity127.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %entity127.i, align 4
  %cmp39.not.i = icmp eq ptr %95, %subdev.i
  br i1 %cmp39.not.i, label %if.end126.i.while.end.i_crit_edge, label %if.end126.i.while.body40.i_crit_edge

if.end126.i.while.body40.i_crit_edge:             ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body40.i

if.end126.i.while.end.i_crit_edge:                ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %if.end126.i.while.end.i_crit_edge, %if.end33.i.while.end.i_crit_edge
  %96 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %code.i, align 4
  %98 = ptrtoint ptr %spec.select.sroa.sel129 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %spec.select.sroa.sel129, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp130.not.i = icmp eq i32 %97, %99
  br i1 %cmp130.not.i, label %if.end133.i, label %while.end.i.while.cond.backedge.i_crit_edge

while.end.i.while.cond.backedge.i_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i

if.end133.i:                                      ; preds = %while.end.i
  %fourcc.i = getelementptr inbounds %struct.fimc_fmt, ptr %call30270.i, i32 0, i32 1
  %100 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fourcc.i, align 4
  %102 = ptrtoint ptr %fcc.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %fcc.i, align 4
  %103 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %format.i, align 4
  %105 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %spec.select, align 4
  %106 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %height.i, align 4
  %108 = ptrtoint ptr %spec.select.sroa.sel to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %spec.select.sroa.sel, align 4
  %109 = ptrtoint ptr %fimc_dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fimc_dev.i, align 4
  %variant.i.i = getelementptr inbounds %struct.fimc_dev, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %variant.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %variant.i.i, align 4
  %pix_limit.i.i = getelementptr inbounds %struct.fimc_variant, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %pix_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pix_limit.i.i, align 4
  %call.i246.i = call ptr @fimc_find_format(ptr noundef nonnull %fcc.i, ptr noundef null, i32 noundef 1, i32 noundef 0) #12
  %tobool23.not.i.i = icmp eq ptr %call.i246.i, null
  br i1 %tobool23.not.i.i, label %do.end.i.i, label %if.end48.i.i, !prof !96

do.end.i.i:                                       ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 587, i32 noundef 9, ptr noundef null) #12
  br label %fimc_capture_try_format.exit.i

if.end48.i.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  %fourcc55.i.i = getelementptr inbounds %struct.fimc_fmt, ptr %call.i246.i, i32 0, i32 1
  %115 = ptrtoint ptr %fourcc55.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fourcc55.i.i, align 4
  %117 = ptrtoint ptr %fcc.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %fcc.i, align 4
  %color86.i.i = getelementptr inbounds %struct.fimc_fmt, ptr %call.i246.i, i32 0, i32 2
  %118 = ptrtoint ptr %color86.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %color86.i.i, align 4
  %and87.i.i = and i32 %119, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i.i)
  %tobool88.not.i.i = icmp eq i32 %and87.i.i, 0
  %scaler_dis_w.i.i = getelementptr inbounds %struct.fimc_pix_limit, ptr %114, i32 0, i32 1
  %cond.in.in.i.i = select i1 %tobool88.not.i.i, ptr %114, ptr %scaler_dis_w.i.i
  %120 = ptrtoint ptr %cond.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %cond.in.i.i = load i16, ptr %cond.in.in.i.i, align 2
  %cond.i.i = zext i16 %cond.in.i.i to i32
  %121 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %spec.select, align 4
  %123 = call i32 @llvm.umax.i32(i32 %122, i32 32) #12
  %124 = ptrtoint ptr %spec.select.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %spec.select.sroa.sel, align 4
  %126 = call i32 @llvm.umax.i32(i32 %125, i32 32) #12
  %cond84.i.i = select i1 %tobool88.not.i.i, i32 1, i32 3
  call void @v4l_bound_align_image(ptr noundef %spec.select, i32 noundef %123, i32 noundef %cond.i.i, i32 noundef 4, ptr noundef %spec.select.sroa.sel, i32 noundef %126, i32 noundef 8192, i32 noundef %cond84.i.i, i32 noundef 0) #12
  br label %fimc_capture_try_format.exit.i

fimc_capture_try_format.exit.i:                   ; preds = %if.end48.i.i, %do.end.i.i
  %call141.i = call fastcc ptr @fimc_capture_try_format(ptr noundef %1, ptr noundef %spec.select, ptr noundef %spec.select.sroa.sel, ptr noundef null, ptr noundef nonnull %fcc.i, i32 noundef 2) #12
  %tobool142.not.i = icmp eq ptr %call141.i, null
  br i1 %tobool142.not.i, label %fimc_capture_try_format.exit.i.if.end149.i_crit_edge, label %land.lhs.true143.i

fimc_capture_try_format.exit.i.if.end149.i_crit_edge: ; preds = %fimc_capture_try_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149.i

land.lhs.true143.i:                               ; preds = %fimc_capture_try_format.exit.i
  %127 = ptrtoint ptr %call141.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %call141.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool145.not.i = icmp eq i32 %128, 0
  br i1 %tobool145.not.i, label %land.lhs.true143.i.if.end149.i_crit_edge, label %if.then146.i

land.lhs.true143.i.if.end149.i_crit_edge:         ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149.i

if.then146.i:                                     ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #14
  %129 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %code.i, align 4
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.then146.i, %land.lhs.true143.i.if.end149.i_crit_edge, %fimc_capture_try_format.exit.i.if.end149.i_crit_edge
  %130 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %format.i, align 4
  %132 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %spec.select, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %133)
  %cmp152.not.i = icmp eq i32 %131, %133
  br i1 %cmp152.not.i, label %lor.lhs.false.i, label %if.end149.i.while.cond.backedge.i_crit_edge

if.end149.i.while.cond.backedge.i_crit_edge:      ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i

lor.lhs.false.i:                                  ; preds = %if.end149.i
  %134 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %height.i, align 4
  %136 = ptrtoint ptr %spec.select.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %spec.select.sroa.sel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %137)
  %cmp156.not.i = icmp eq i32 %135, %137
  br i1 %cmp156.not.i, label %if.end159.i, label %lor.lhs.false.i.while.cond.backedge.i_crit_edge

lor.lhs.false.i.while.cond.backedge.i_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %lor.lhs.false.i.while.cond.backedge.i_crit_edge, %if.end149.i.while.cond.backedge.i_crit_edge, %while.end.i.while.cond.backedge.i_crit_edge
  %138 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp.not.i = icmp eq i32 %139, 0
  %spec.select243.i = select i1 %cmp.not.i, ptr null, ptr %code.i
  %inc.i = add i32 %inc269.i, 1
  %call30.i = call ptr @fimc_find_format(ptr noundef null, ptr noundef %spec.select243.i, i32 noundef 1, i32 noundef %inc269.i) #12
  %cmp31.i = icmp eq ptr %call30.i, null
  br i1 %cmp31.i, label %while.cond.backedge.i.fimc_pipeline_try_format.exit_crit_edge, label %while.cond.backedge.i.if.end33.i_crit_edge

while.cond.backedge.i.if.end33.i_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

while.cond.backedge.i.fimc_pipeline_try_format.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_try_format.exit

if.end159.i:                                      ; preds = %lor.lhs.false.i
  %tobool163.not.i = icmp eq ptr %inp_fmt, null
  %brmerge.i = select i1 %tobool163.not.i, i1 true, i1 %tobool142.not.i
  br i1 %brmerge.i, label %if.end159.i.if.end167.i_crit_edge, label %if.then166.i

if.end159.i.if.end167.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167.i

if.then166.i:                                     ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #14
  %140 = ptrtoint ptr %inp_fmt to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call141.i, ptr %inp_fmt, align 4
  br label %if.end167.i

if.end167.i:                                      ; preds = %if.then166.i, %if.end159.i.if.end167.i_crit_edge
  %141 = call ptr @memcpy(ptr %spec.select, ptr %format.i, i32 48)
  br label %fimc_pipeline_try_format.exit

fimc_pipeline_try_format.exit:                    ; preds = %if.end167.i, %while.cond.backedge.i.fimc_pipeline_try_format.exit_crit_edge, %if.end119.i.fimc_pipeline_try_format.exit_crit_edge, %if.end114.i.fimc_pipeline_try_format.exit_crit_edge, %land.lhs.true93.i.fimc_pipeline_try_format.exit_crit_edge, %if.else89.i.fimc_pipeline_try_format.exit_crit_edge, %if.end74.i.fimc_pipeline_try_format.exit_crit_edge, %land.lhs.true.i.fimc_pipeline_try_format.exit_crit_edge, %if.else.i.fimc_pipeline_try_format.exit_crit_edge, %while.body40.i.fimc_pipeline_try_format.exit_crit_edge, %fimc_pipeline_get_head.exit.i.fimc_pipeline_try_format.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %if.end167.i ], [ -22, %fimc_pipeline_get_head.exit.i.fimc_pipeline_try_format.exit_crit_edge ], [ -515, %if.else89.i.fimc_pipeline_try_format.exit_crit_edge ], [ -515, %land.lhs.true93.i.fimc_pipeline_try_format.exit_crit_edge ], [ -19, %while.body40.i.fimc_pipeline_try_format.exit_crit_edge ], [ -515, %land.lhs.true.i.fimc_pipeline_try_format.exit_crit_edge ], [ -515, %if.else.i.fimc_pipeline_try_format.exit_crit_edge ], [ -22, %if.end119.i.fimc_pipeline_try_format.exit_crit_edge ], [ %call111.i, %if.end114.i.fimc_pipeline_try_format.exit_crit_edge ], [ %call71.i, %if.end74.i.fimc_pipeline_try_format.exit_crit_edge ], [ -22, %while.cond.backedge.i.fimc_pipeline_try_format.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fcc.i) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sfmt.i) #12
  %142 = ptrtoint ptr %ve1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ve1, align 8
  %graph_mutex.i120 = getelementptr inbounds %struct.media_device, ptr %143, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %graph_mutex.i120) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp37 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp37, label %cleanup59.critedge, label %if.end39

if.end39:                                         ; preds = %fimc_pipeline_try_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  %144 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %spec.select, align 4
  %146 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %146, i32 4)
  store i32 %145, ptr %fmt, align 1
  %147 = ptrtoint ptr %spec.select.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %spec.select.sroa.sel, align 4
  %149 = ptrtoint ptr %height15143148 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 %148, ptr %height15143148, align 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mbus_fmt) #12
  br label %if.end45

if.end45:                                         ; preds = %if.end39, %if.end26.if.end45_crit_edge
  %ret.0 = phi i32 [ 0, %if.end26.if.end45_crit_edge ], [ %retval.0.i, %if.end39 ]
  %150 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %out_fmt, align 4
  %152 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %fmt, align 1
  %154 = ptrtoint ptr %height15143148 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %height15143148, align 1
  call void @fimc_adjust_mplane_format(ptr noundef %151, i32 noundef %153, i32 noundef %155, ptr noundef %fmt) #12
  %156 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %out_fmt, align 4
  %flags = getelementptr inbounds %struct.fimc_fmt, ptr %157, i32 0, i32 8
  %158 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %flags, align 2
  %160 = and i16 %159, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool48.not = icmp eq i16 %160, 0
  br i1 %tobool48.not, label %if.end45.cleanup59_crit_edge, label %if.then49

if.end45.cleanup59_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup59

if.then49:                                        ; preds = %if.end45
  %161 = ptrtoint ptr %ve1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ve1, align 8
  %graph_mutex.i121 = getelementptr inbounds %struct.media_device, ptr %162, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %graph_mutex.i121, i32 noundef 0) #12
  %pipe = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 2, i32 1
  %163 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pipe, align 8
  %tobool.not.i122 = icmp eq ptr %164, null
  br i1 %tobool.not.i122, label %if.then49.if.end57_crit_edge, label %__fimc_md_get_subdev.exit

if.then49.if.end57_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

__fimc_md_get_subdev.exit:                        ; preds = %if.then49
  %subdevs.i123 = getelementptr inbounds %struct.fimc_pipeline, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %subdevs.i123 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %subdevs.i123, align 4
  %tobool51.not = icmp eq ptr %166, null
  br i1 %tobool51.not, label %__fimc_md_get_subdev.exit.if.end57_crit_edge, label %if.then52

__fimc_md_get_subdev.exit.if.end57_crit_edge:     ; preds = %__fimc_md_get_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then52:                                        ; preds = %__fimc_md_get_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %167 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %out_fmt, align 4
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %memplanes, align 4
  %conv53 = zext i16 %170 to i32
  %call55 = call fastcc i32 @fimc_get_sensor_frame_desc(ptr noundef nonnull %166, ptr noundef %plane_fmt, i32 noundef %conv53, i1 noundef zeroext %try)
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %__fimc_md_get_subdev.exit.if.end57_crit_edge, %if.then49.if.end57_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then52 ], [ -32, %__fimc_md_get_subdev.exit.if.end57_crit_edge ], [ -32, %if.then49.if.end57_crit_edge ]
  %171 = ptrtoint ptr %ve1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ve1, align 8
  %graph_mutex.i126 = getelementptr inbounds %struct.media_device, ptr %172, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %graph_mutex.i126) #12
  br label %cleanup59

cleanup59.critedge:                               ; preds = %fimc_pipeline_try_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mbus_fmt) #12
  br label %cleanup59

cleanup59:                                        ; preds = %cleanup59.critedge, %if.end57, %if.end45.cleanup59_crit_edge, %if.end13.thread.cleanup59_crit_edge, %if.end13.thread149.cleanup59_crit_edge, %if.end13.cleanup59_crit_edge
  %retval.1 = phi i32 [ -22, %if.end13.cleanup59_crit_edge ], [ %retval.0.i, %cleanup59.critedge ], [ %ret.1, %if.end57 ], [ %ret.0, %if.end45.cleanup59_crit_edge ], [ -22, %if.end13.thread.cleanup59_crit_edge ], [ -22, %if.end13.thread149.cleanup59_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_adjust_mplane_format(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_get_sensor_frame_desc(ptr noundef %sensor, ptr nocapture noundef %plane_fmt, i32 noundef %num_planes, i1 noundef zeroext %try) unnamed_addr #0 align 64 {
entry:
  %fd = alloca %struct.v4l2_mbus_frame_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %fd) #12
  %0 = call ptr @memset(ptr %fd, i32 255, i32 52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_planes)
  %cmp128.not = icmp eq i32 %num_planes, 0
  br i1 %cmp128.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0129 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_plane_pix_format, ptr %plane_fmt, i32 %i.0129
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %arrayidx, align 1
  %length = getelementptr [4 x %struct.v4l2_mbus_frame_desc_entry], ptr %fd, i32 0, i32 %i.0129, i32 2
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %length, align 4
  %inc = add nuw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, %num_planes
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %sensor, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads, align 4
  %conv = zext i16 %5 to i32
  %sub = add nsw i32 %conv, -1
  %tobool3.not = icmp eq ptr %sensor, null
  br i1 %try, label %if.then, label %if.else25

if.then:                                          ; preds = %for.end
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.else

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.then
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %sensor, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %pad5 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pad5, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %set_frame_desc = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %set_frame_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_frame_desc, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %if.else11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.else11.if.else18_crit_edge, label %land.lhs.true13

if.else11.if.else18_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18

land.lhs.true13:                                  ; preds = %if.else11
  %set_frame_desc14 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %set_frame_desc14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_frame_desc14, align 4
  %tobool15.not = icmp eq ptr %14, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else18_crit_edge, label %land.lhs.true13.if.end56_crit_edge

land.lhs.true13.if.end56_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

land.lhs.true13.if.else18_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true13.if.else18_crit_edge, %if.else11.if.else18_crit_edge
  br label %if.end56

if.else25:                                        ; preds = %for.end
  br i1 %tobool3.not, label %if.else25.cleanup_crit_edge, label %if.else30

if.else25.cleanup_crit_edge:                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else30:                                        ; preds = %if.else25
  %ops31 = getelementptr inbounds %struct.v4l2_subdev, ptr %sensor, i32 0, i32 6
  %15 = ptrtoint ptr %ops31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops31, align 4
  %pad32 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %pad32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pad32, align 4
  %tobool33.not = icmp eq ptr %18, null
  br i1 %tobool33.not, label %if.else30.cleanup_crit_edge, label %land.lhs.true34

if.else30.cleanup_crit_edge:                      ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true34:                                  ; preds = %if.else30
  %get_frame_desc = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %get_frame_desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_frame_desc, align 4
  %tobool37.not = icmp eq ptr %20, null
  br i1 %tobool37.not, label %land.lhs.true34.cleanup_crit_edge, label %if.else39

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else39:                                        ; preds = %land.lhs.true34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool40.not = icmp eq ptr %21, null
  br i1 %tobool40.not, label %if.else39.if.else47_crit_edge, label %land.lhs.true41

if.else39.if.else47_crit_edge:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else47

land.lhs.true41:                                  ; preds = %if.else39
  %get_frame_desc42 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %get_frame_desc42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_frame_desc42, align 4
  %tobool43.not = icmp eq ptr %23, null
  br i1 %tobool43.not, label %land.lhs.true41.if.else47_crit_edge, label %land.lhs.true41.if.end56_crit_edge

land.lhs.true41.if.end56_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

land.lhs.true41.if.else47_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else47

if.else47:                                        ; preds = %land.lhs.true41.if.else47_crit_edge, %if.else39.if.else47_crit_edge
  br label %if.end56

if.end56:                                         ; preds = %if.else47, %land.lhs.true41.if.end56_crit_edge, %if.else18, %land.lhs.true13.if.end56_crit_edge
  %.sink = phi ptr [ %20, %if.else47 ], [ %11, %if.else18 ], [ %14, %land.lhs.true13.if.end56_crit_edge ], [ %23, %land.lhs.true41.if.end56_crit_edge ]
  %call46 = call i32 %.sink(ptr noundef nonnull %sensor, i32 noundef %sub, ptr noundef nonnull %fd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp57 = icmp slt i32 %call46, 0
  br i1 %cmp57, label %if.end56.cleanup_crit_edge, label %if.end60

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end60:                                         ; preds = %if.end56
  %num_entries = getelementptr inbounds %struct.v4l2_mbus_frame_desc, ptr %fd, i32 0, i32 1
  %24 = ptrtoint ptr %num_entries to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_entries, align 4
  %conv61 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv61, i32 %num_planes)
  %cmp62.not = icmp eq i32 %conv61, %num_planes
  br i1 %cmp62.not, label %for.cond66.preheader, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond66.preheader:                             ; preds = %if.end60
  br i1 %cmp128.not, label %for.cond66.preheader.for.end77_crit_edge, label %for.cond66.preheader.for.body69_crit_edge

for.cond66.preheader.for.body69_crit_edge:        ; preds = %for.cond66.preheader
  br label %for.body69

for.cond66.preheader.for.end77_crit_edge:         ; preds = %for.cond66.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end77

for.body69:                                       ; preds = %for.body69.for.body69_crit_edge, %for.cond66.preheader.for.body69_crit_edge
  %i.1131 = phi i32 [ %inc76, %for.body69.for.body69_crit_edge ], [ 0, %for.cond66.preheader.for.body69_crit_edge ]
  %length72 = getelementptr [4 x %struct.v4l2_mbus_frame_desc_entry], ptr %fd, i32 0, i32 %i.1131, i32 2
  %26 = ptrtoint ptr %length72 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length72, align 4
  %arrayidx73 = getelementptr %struct.v4l2_plane_pix_format, ptr %plane_fmt, i32 %i.1131
  %28 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %arrayidx73, align 1
  %inc76 = add nuw i32 %i.1131, 1
  %exitcond132.not = icmp eq i32 %inc76, %num_planes
  br i1 %exitcond132.not, label %for.body69.for.end77_crit_edge, label %for.body69.for.body69_crit_edge

for.body69.for.body69_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body69

for.body69.for.end77_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end77

for.end77:                                        ; preds = %for.body69.for.end77_crit_edge, %for.cond66.preheader.for.end77_crit_edge
  %length80 = getelementptr inbounds %struct.v4l2_mbus_frame_desc_entry, ptr %fd, i32 0, i32 2
  %29 = ptrtoint ptr %length80 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10485760, i32 %30)
  %cmp81 = icmp ugt i32 %30, 10485760
  br i1 %cmp81, label %do.end, label %for.end77.cleanup_crit_edge

for.end77.cleanup_crit_edge:                      ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #14
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sensor, i32 0, i32 5
  %31 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %v4l2_dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %32, i32 0, i32 4
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %30) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end77.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %land.lhs.true34.cleanup_crit_edge, %if.else30.cleanup_crit_edge, %if.else25.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call46, %if.end56.cleanup_crit_edge ], [ -22, %if.end60.cleanup_crit_edge ], [ 0, %for.end77.cleanup_crit_edge ], [ -515, %if.else30.cleanup_crit_edge ], [ -515, %land.lhs.true34.cleanup_crit_edge ], [ -19, %if.else25.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %fd) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_cap_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdev = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @__fimc_vidioc_querycap(ptr noundef %dev, ptr noundef %cap) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_cap_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %call = tail call ptr @fimc_find_format(ptr noundef null, ptr noundef null, i32 noundef 7, i32 noundef %1) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fourcc = getelementptr inbounds %struct.fimc_fmt, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_cap_g_fmt_mplane(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %vid_cap = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vid_cap, align 8
  %d_frame = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 1
  tail call void @__fimc_get_format(ptr noundef %d_frame, ptr noundef %f) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_cap_s_fmt_mplane(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call fastcc i32 @__fimc_capture_set_format(ptr noundef %1, ptr noundef %f)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_cap_try_fmt_mplane(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #0 align 64 {
entry:
  %out_fmt = alloca ptr, align 4
  %inp_fmt = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_fmt) #12
  %2 = ptrtoint ptr %out_fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %out_fmt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inp_fmt) #12
  %3 = ptrtoint ptr %inp_fmt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %inp_fmt, align 4
  %call1 = call fastcc i32 @__video_try_or_set_format(ptr noundef %1, ptr noundef %f, i1 noundef zeroext true, ptr noundef nonnull %inp_fmt, ptr noundef nonnull %out_fmt)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inp_fmt) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_fmt) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_cap_reqbufs(ptr noundef %file, ptr noundef %priv, ptr noundef %reqbufs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @vb2_ioctl_reqbufs(ptr noundef %file, ptr noundef %priv, ptr noundef %reqbufs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %reqbufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reqbufs, align 4
  %reqbufs_count = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 14
  %4 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %reqbufs_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_cap_streamon(ptr noundef %file, ptr noundef %priv, i32 noundef %type) #0 align 64 {
entry:
  %sink_fmt.i = alloca %struct.v4l2_subdev_format, align 4
  %src_fmt.i = alloca %struct.v4l2_subdev_format, align 4
  %plane_fmt.i = alloca [3 x %struct.v4l2_plane_pix_format], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ve = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %state.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 8
  %4 = and i32 %3, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not = icmp eq i32 %4, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2.i) #12
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %pipe = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2, i32 1
  %5 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pipe, align 8
  %call4 = tail call i32 @media_pipeline_start(ptr noundef %ve, ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end6.err_p_stop_crit_edge, label %__fimc_md_get_subdev.exit

if.end6.err_p_stop_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_p_stop

__fimc_md_get_subdev.exit:                        ; preds = %if.end6
  %subdevs.i = getelementptr inbounds %struct.fimc_pipeline, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %subdevs.i, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %__fimc_md_get_subdev.exit.err_p_stop_crit_edge, label %if.end12

__fimc_md_get_subdev.exit.err_p_stop_crit_edge:   ; preds = %__fimc_md_get_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_p_stop

if.end12:                                         ; preds = %__fimc_md_get_subdev.exit
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host_priv.i, align 4
  %cmp13 = icmp eq ptr %12, null
  br i1 %cmp13, label %if.end12.err_p_stop_crit_edge, label %if.end15

if.end12.err_p_stop_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_p_stop

if.end15:                                         ; preds = %if.end12
  %source_config = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 7
  %13 = call ptr @memcpy(ptr %source_config, ptr %12, i32 12)
  %input = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 16
  %14 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %15)
  %cmp16 = icmp eq i32 %15, 16384
  br i1 %cmp16, label %if.then17, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %source_config to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %source_config, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %user_subdev_api = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 17
  %17 = ptrtoint ptr %user_subdev_api to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %user_subdev_api, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool20.not = icmp eq i8 %18, 0
  br i1 %tobool20.not, label %if.end19.if.end26_crit_edge, label %if.then21

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then21:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sink_fmt.i) #12
  %19 = call ptr @memset(ptr %sink_fmt.i, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %src_fmt.i) #12
  %20 = call ptr @memset(ptr %src_fmt.i, i32 255, i32 88)
  %vid_cap.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13
  %subdev.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 1
  %num_pads260.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %num_pads260.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_pads260.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp254262.not.i = icmp eq i16 %22, 0
  br i1 %cmp254262.not.i, label %if.then21.fimc_pipeline_validate.exit_crit_edge, label %for.body.lr.ph.lr.ph.i

if.then21.fimc_pipeline_validate.exit_crit_edge:  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_validate.exit

for.body.lr.ph.lr.ph.i:                           ; preds = %if.then21
  %23 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pipe, align 8
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt.i, i32 0, i32 1
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt.i, i32 0, i32 2
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt.i, i32 0, i32 2, i32 1
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt.i, i32 0, i32 2, i32 2
  %pad67.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 1
  %format107.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 2
  %height115.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 2, i32 1
  %code122.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 2, i32 2
  %subdevs.i54 = getelementptr inbounds %struct.fimc_pipeline, ptr %24, i32 0, i32 3
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end168.i.for.body.lr.ph.i_crit_edge, %for.body.lr.ph.lr.ph.i
  %num_pads266.i = phi ptr [ %num_pads260.i, %for.body.lr.ph.lr.ph.i ], [ %num_pads.i, %if.end168.i.for.body.lr.ph.i_crit_edge ]
  %sd.0264.i = phi ptr [ %subdev.i, %for.body.lr.ph.lr.ph.i ], [ %62, %if.end168.i.for.body.lr.ph.i_crit_edge ]
  %pads.i = getelementptr inbounds %struct.media_entity, ptr %sd.0264.i, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0255.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pads.i, align 4
  %flags.i = getelementptr %struct.media_pad, ptr %26, i32 %i.0255.i, i32 4
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i55 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i55, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.media_pad, ptr %26, i32 %i.0255.i
  %call.i56 = call ptr @media_entity_remote_pad(ptr noundef %arrayidx.i) #12
  %tobool4.not.i = icmp eq ptr %call.i56, null
  br i1 %tobool4.not.i, label %if.then.i.for.inc.i_crit_edge, label %lor.lhs.false.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0255.i, 1
  %29 = ptrtoint ptr %num_pads266.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_pads266.i, align 4
  %conv.i = zext i16 %30 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.fimc_pipeline_validate.exit_crit_edge

for.inc.i.fimc_pipeline_validate.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_validate.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %entity8.i = getelementptr inbounds %struct.media_pad, ptr %call.i56, i32 0, i32 1
  %31 = ptrtoint ptr %entity8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %entity8.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.fimc_pipeline_validate.exit_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.fimc_pipeline_validate.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_validate.exit

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.i.i = icmp eq i32 %34, 2
  br i1 %cmp.i.i, label %if.end11.i, label %is_media_entity_v4l2_subdev.exit.i.fimc_pipeline_validate.exit_crit_edge

is_media_entity_v4l2_subdev.exit.i.fimc_pipeline_validate.exit_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_validate.exit

if.end11.i:                                       ; preds = %is_media_entity_v4l2_subdev.exit.i
  %cmp13.i = icmp eq ptr %sd.0264.i, %subdev.i
  br i1 %cmp13.i, label %if.then15.i, label %if.else.i57

if.then15.i:                                      ; preds = %if.end11.i
  %35 = ptrtoint ptr %vid_cap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vid_cap.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %39 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %format.i, align 4
  %f_height.i = getelementptr inbounds %struct.fimc_frame, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %f_height.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %f_height.i, align 4
  %42 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %height.i, align 4
  %fmt.i = getelementptr inbounds %struct.fimc_frame, ptr %36, i32 0, i32 12
  %43 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fmt.i, align 4
  %tobool17.not.i = icmp eq ptr %44, null
  br i1 %tobool17.not.i, label %if.then15.i.cond.end.i_crit_edge, label %cond.true.i

if.then15.i.cond.end.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then15.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %46, %cond.true.i ], [ 0, %if.then15.i.cond.end.i_crit_edge ]
  %47 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond.i, ptr %code.i, align 4
  br label %if.end54.i

if.else.i57:                                      ; preds = %if.end11.i
  %index.i = getelementptr %struct.media_pad, ptr %26, i32 %i.0255.i, i32 2
  %48 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %index.i, align 4
  %conv20.i = zext i16 %49 to i32
  %50 = ptrtoint ptr %pad.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv20.i, ptr %pad.i, align 4
  %51 = ptrtoint ptr %sink_fmt.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %sink_fmt.i, align 4
  %tobool21.not.i = icmp eq ptr %sd.0264.i, null
  br i1 %tobool21.not.i, label %if.else.i57.if.end45.i_crit_edge, label %if.else23.i

if.else.i57.if.end45.i_crit_edge:                 ; preds = %if.else.i57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

if.else23.i:                                      ; preds = %if.else.i57
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd.0264.i, i32 0, i32 6
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %pad24.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %pad24.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pad24.i, align 4
  %tobool25.not.i = icmp eq ptr %55, null
  br i1 %tobool25.not.i, label %if.else23.i.if.end54.i_crit_edge, label %land.lhs.true.i

if.else23.i.if.end54.i_crit_edge:                 ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

land.lhs.true.i:                                  ; preds = %if.else23.i
  %get_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %get_fmt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_fmt.i, align 4
  %tobool28.not.i = icmp eq ptr %57, null
  br i1 %tobool28.not.i, label %land.lhs.true.i.if.end54.i_crit_edge, label %if.else30.i

land.lhs.true.i.if.end54.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

if.else30.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool31.not.i = icmp eq ptr %58, null
  br i1 %tobool31.not.i, label %if.else30.i.if.else38.i_crit_edge, label %land.lhs.true32.i

if.else30.i.if.else38.i_crit_edge:                ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38.i

land.lhs.true32.i:                                ; preds = %if.else30.i
  %get_fmt33.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %get_fmt33.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %get_fmt33.i, align 4
  %tobool34.not.i = icmp eq ptr %60, null
  br i1 %tobool34.not.i, label %land.lhs.true32.i.if.else38.i_crit_edge, label %land.lhs.true32.i.if.end45.sink.split.i_crit_edge

land.lhs.true32.i.if.end45.sink.split.i_crit_edge: ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.sink.split.i

land.lhs.true32.i.if.else38.i_crit_edge:          ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38.i

if.else38.i:                                      ; preds = %land.lhs.true32.i.if.else38.i_crit_edge, %if.else30.i.if.else38.i_crit_edge
  br label %if.end45.sink.split.i

if.end45.sink.split.i:                            ; preds = %if.else38.i, %land.lhs.true32.i.if.end45.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %57, %if.else38.i ], [ %60, %land.lhs.true32.i.if.end45.sink.split.i_crit_edge ]
  %call42.i = call i32 %.sink.i(ptr noundef nonnull %sd.0264.i, ptr noundef null, ptr noundef nonnull %sink_fmt.i) #12
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end45.sink.split.i, %if.else.i57.if.end45.i_crit_edge
  %__result.0.i = phi i32 [ -19, %if.else.i57.if.end45.i_crit_edge ], [ %call42.i, %if.end45.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0.i)
  %cmp47.i = icmp sgt i32 %__result.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result.0.i)
  %cmp50.not.i = icmp eq i32 %__result.0.i, -515
  %or.cond.i = or i1 %cmp47.i, %cmp50.not.i
  br i1 %or.cond.i, label %if.end45.i.if.end54.i_crit_edge, label %if.end45.i.fimc_pipeline_validate.exit.thread_crit_edge

if.end45.i.fimc_pipeline_validate.exit.thread_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_validate.exit.thread

if.end45.i.if.end54.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end45.i.if.end54.i_crit_edge, %land.lhs.true.i.if.end54.i_crit_edge, %if.else23.i.if.end54.i_crit_edge, %cond.end.i
  %61 = ptrtoint ptr %entity8.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %entity8.i, align 4
  %tobool57.not.i = icmp eq ptr %62, null
  %index65.i = getelementptr inbounds %struct.media_pad, ptr %call.i56, i32 0, i32 2
  %63 = ptrtoint ptr %index65.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %index65.i, align 4
  %conv66.i = zext i16 %64 to i32
  %65 = ptrtoint ptr %pad67.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv66.i, ptr %pad67.i, align 4
  %66 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %src_fmt.i, align 4
  br i1 %tobool57.not.i, label %if.end54.i.if.end98.i_crit_edge, label %if.else73.i

if.end54.i.if.end98.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98.i

if.else73.i:                                      ; preds = %if.end54.i
  %ops74.i = getelementptr inbounds %struct.v4l2_subdev, ptr %62, i32 0, i32 6
  %67 = ptrtoint ptr %ops74.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops74.i, align 4
  %pad75.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %pad75.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pad75.i, align 4
  %tobool76.not.i = icmp eq ptr %70, null
  br i1 %tobool76.not.i, label %if.else73.i.if.end106.i_crit_edge, label %land.lhs.true77.i

if.else73.i.if.end106.i_crit_edge:                ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106.i

land.lhs.true77.i:                                ; preds = %if.else73.i
  %get_fmt80.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %get_fmt80.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %get_fmt80.i, align 4
  %tobool81.not.i = icmp eq ptr %72, null
  br i1 %tobool81.not.i, label %land.lhs.true77.i.if.end106.i_crit_edge, label %if.else83.i

land.lhs.true77.i.if.end106.i_crit_edge:          ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106.i

if.else83.i:                                      ; preds = %land.lhs.true77.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool84.not.i = icmp eq ptr %73, null
  br i1 %tobool84.not.i, label %if.else83.i.if.else91.i_crit_edge, label %land.lhs.true85.i

if.else83.i.if.else91.i_crit_edge:                ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else91.i

land.lhs.true85.i:                                ; preds = %if.else83.i
  %get_fmt86.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %get_fmt86.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %get_fmt86.i, align 4
  %tobool87.not.i = icmp eq ptr %75, null
  br i1 %tobool87.not.i, label %land.lhs.true85.i.if.else91.i_crit_edge, label %land.lhs.true85.i.if.end98.sink.split.i_crit_edge

land.lhs.true85.i.if.end98.sink.split.i_crit_edge: ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98.sink.split.i

land.lhs.true85.i.if.else91.i_crit_edge:          ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else91.i

if.else91.i:                                      ; preds = %land.lhs.true85.i.if.else91.i_crit_edge, %if.else83.i.if.else91.i_crit_edge
  br label %if.end98.sink.split.i

if.end98.sink.split.i:                            ; preds = %if.else91.i, %land.lhs.true85.i.if.end98.sink.split.i_crit_edge
  %.sink273.i = phi ptr [ %72, %if.else91.i ], [ %75, %land.lhs.true85.i.if.end98.sink.split.i_crit_edge ]
  %call95.i = call i32 %.sink273.i(ptr noundef nonnull %62, ptr noundef null, ptr noundef nonnull %src_fmt.i) #12
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.end98.sink.split.i, %if.end54.i.if.end98.i_crit_edge
  %__result70.0.i = phi i32 [ -19, %if.end54.i.if.end98.i_crit_edge ], [ %call95.i, %if.end98.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result70.0.i)
  %cmp100.i = icmp sgt i32 %__result70.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result70.0.i)
  %cmp103.not.i = icmp eq i32 %__result70.0.i, -515
  %or.cond229.i = or i1 %cmp100.i, %cmp103.not.i
  br i1 %or.cond229.i, label %if.end98.i.if.end106.i_crit_edge, label %if.end98.i.fimc_pipeline_validate.exit.thread_crit_edge

if.end98.i.fimc_pipeline_validate.exit.thread_crit_edge: ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_validate.exit.thread

if.end98.i.if.end106.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.end98.i.if.end106.i_crit_edge, %land.lhs.true77.i.if.end106.i_crit_edge, %if.else73.i.if.end106.i_crit_edge
  %76 = ptrtoint ptr %format107.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %format107.i, align 4
  %78 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp111.not.i = icmp eq i32 %77, %79
  br i1 %cmp111.not.i, label %lor.lhs.false113.i, label %if.end106.i.fimc_pipeline_validate.exit.thread_crit_edge

if.end106.i.fimc_pipeline_validate.exit.thread_crit_edge: ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_validate.exit.thread

lor.lhs.false113.i:                               ; preds = %if.end106.i
  %80 = ptrtoint ptr %height115.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %height115.i, align 4
  %82 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp118.not.i = icmp eq i32 %81, %83
  br i1 %cmp118.not.i, label %lor.lhs.false120.i, label %lor.lhs.false113.i.fimc_pipeline_validate.exit.thread_crit_edge

lor.lhs.false113.i.fimc_pipeline_validate.exit.thread_crit_edge: ; preds = %lor.lhs.false113.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_validate.exit.thread

lor.lhs.false120.i:                               ; preds = %lor.lhs.false113.i
  %84 = ptrtoint ptr %code122.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %code122.i, align 4
  %86 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp125.not.i = icmp eq i32 %85, %87
  br i1 %cmp125.not.i, label %if.end128.i, label %lor.lhs.false120.i.fimc_pipeline_validate.exit.thread_crit_edge

lor.lhs.false120.i.fimc_pipeline_validate.exit.thread_crit_edge: ; preds = %lor.lhs.false120.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_validate.exit.thread

if.end128.i:                                      ; preds = %lor.lhs.false120.i
  %88 = ptrtoint ptr %subdevs.i54 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %subdevs.i54, align 4
  %cmp130.i = icmp eq ptr %62, %89
  %90 = and i32 %85, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %90)
  %91 = icmp eq i32 %90, 16385
  %or.cond251.i = select i1 %cmp130.i, i1 %91, i1 false
  br i1 %or.cond251.i, label %if.then137.i, label %if.end128.i.if.end168.i_crit_edge

if.end128.i.if.end168.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168.i

if.then137.i:                                     ; preds = %if.end128.i
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %plane_fmt.i) #12
  %92 = call ptr @memset(ptr %plane_fmt.i, i32 255, i32 60)
  %93 = ptrtoint ptr %vid_cap.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vid_cap.i, align 8
  %fmt140.i = getelementptr inbounds %struct.fimc_ctx, ptr %94, i32 0, i32 1, i32 12
  %95 = ptrtoint ptr %fmt140.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fmt140.i, align 4
  %memplanes.i = getelementptr inbounds %struct.fimc_fmt, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %memplanes.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %memplanes.i, align 4
  %conv141.i = zext i16 %98 to i32
  %call142.i = call fastcc i32 @fimc_get_sensor_frame_desc(ptr noundef %62, ptr noundef nonnull %plane_fmt.i, i32 noundef %conv141.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i)
  %cmp143.i = icmp slt i32 %call142.i, 0
  br i1 %cmp143.i, label %cleanup169.critedge.i, label %for.cond147.preheader.i

for.cond147.preheader.i:                          ; preds = %if.then137.i
  %99 = ptrtoint ptr %fmt140.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fmt140.i, align 4
  %memplanes149.i = getelementptr inbounds %struct.fimc_fmt, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %memplanes149.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %memplanes149.i, align 4
  %conv150.i = zext i16 %102 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %cmp151258.not.i = icmp eq i16 %102, 0
  br i1 %cmp151258.not.i, label %for.cond147.preheader.i.cleanup163.i_crit_edge, label %for.cond147.preheader.i.for.body153.i_crit_edge

for.cond147.preheader.i.for.body153.i_crit_edge:  ; preds = %for.cond147.preheader.i
  br label %for.body153.i

for.cond147.preheader.i.cleanup163.i_crit_edge:   ; preds = %for.cond147.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163.i

for.cond147.i:                                    ; preds = %for.body153.i
  %inc161.i = add nuw nsw i32 %i139.0259.i, 1
  %exitcond.not.i = icmp eq i32 %inc161.i, %conv150.i
  br i1 %exitcond.not.i, label %for.cond147.i.cleanup163.i_crit_edge, label %for.cond147.i.for.body153.i_crit_edge

for.cond147.i.for.body153.i_crit_edge:            ; preds = %for.cond147.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body153.i

for.cond147.i.cleanup163.i_crit_edge:             ; preds = %for.cond147.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163.i

for.body153.i:                                    ; preds = %for.cond147.i.for.body153.i_crit_edge, %for.cond147.preheader.i.for.body153.i_crit_edge
  %i139.0259.i = phi i32 [ %inc161.i, %for.cond147.i.for.body153.i_crit_edge ], [ 0, %for.cond147.preheader.i.for.body153.i_crit_edge ]
  %arrayidx154.i = getelementptr %struct.fimc_ctx, ptr %94, i32 0, i32 1, i32 8, i32 %i139.0259.i
  %103 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx154.i, align 4
  %arrayidx155.i = getelementptr [3 x %struct.v4l2_plane_pix_format], ptr %plane_fmt.i, i32 0, i32 %i139.0259.i
  %105 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %arrayidx155.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp156.i = icmp ult i32 %104, %106
  br i1 %cmp156.i, label %cleanup169.critedge230.i, label %for.cond147.i

cleanup163.i:                                     ; preds = %for.cond147.i.cleanup163.i_crit_edge, %for.cond147.preheader.i.cleanup163.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %plane_fmt.i) #12
  br label %if.end168.i

if.end168.i:                                      ; preds = %cleanup163.i, %if.end128.i.if.end168.i_crit_edge
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %62, i32 0, i32 5
  %107 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %num_pads.i, align 4
  %cmp254.not.i = icmp eq i16 %108, 0
  br i1 %cmp254.not.i, label %if.end168.i.fimc_pipeline_validate.exit_crit_edge, label %if.end168.i.for.body.lr.ph.i_crit_edge

if.end168.i.for.body.lr.ph.i_crit_edge:           ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph.i

if.end168.i.fimc_pipeline_validate.exit_crit_edge: ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fimc_pipeline_validate.exit

cleanup169.critedge.i:                            ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %plane_fmt.i) #12
  br label %fimc_pipeline_validate.exit.thread

cleanup169.critedge230.i:                         ; preds = %for.body153.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %plane_fmt.i) #12
  br label %fimc_pipeline_validate.exit.thread

fimc_pipeline_validate.exit.thread:               ; preds = %cleanup169.critedge230.i, %cleanup169.critedge.i, %lor.lhs.false120.i.fimc_pipeline_validate.exit.thread_crit_edge, %lor.lhs.false113.i.fimc_pipeline_validate.exit.thread_crit_edge, %if.end106.i.fimc_pipeline_validate.exit.thread_crit_edge, %if.end98.i.fimc_pipeline_validate.exit.thread_crit_edge, %if.end45.i.fimc_pipeline_validate.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %src_fmt.i) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sink_fmt.i) #12
  br label %err_p_stop

fimc_pipeline_validate.exit:                      ; preds = %if.end168.i.fimc_pipeline_validate.exit_crit_edge, %is_media_entity_v4l2_subdev.exit.i.fimc_pipeline_validate.exit_crit_edge, %lor.lhs.false.i.fimc_pipeline_validate.exit_crit_edge, %for.inc.i.fimc_pipeline_validate.exit_crit_edge, %if.then21.fimc_pipeline_validate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %src_fmt.i) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sink_fmt.i) #12
  br label %if.end26

if.end26:                                         ; preds = %fimc_pipeline_validate.exit, %if.end19.if.end26_crit_edge
  %call27 = call i32 @vb2_ioctl_streamon(ptr noundef %file, ptr noundef %priv, i32 noundef %type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end26.err_p_stop_crit_edge

if.end26.err_p_stop_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_p_stop

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %streaming = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 15
  %109 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %streaming, align 4
  br label %cleanup

err_p_stop:                                       ; preds = %if.end26.err_p_stop_crit_edge, %fimc_pipeline_validate.exit.thread, %if.end12.err_p_stop_crit_edge, %__fimc_md_get_subdev.exit.err_p_stop_crit_edge, %if.end6.err_p_stop_crit_edge
  %ret.0 = phi i32 [ %call27, %if.end26.err_p_stop_crit_edge ], [ -32, %if.end12.err_p_stop_crit_edge ], [ -32, %fimc_pipeline_validate.exit.thread ], [ -32, %__fimc_md_get_subdev.exit.err_p_stop_crit_edge ], [ -32, %if.end6.err_p_stop_crit_edge ]
  call void @media_pipeline_stop(ptr noundef %ve) #12
  br label %cleanup

cleanup:                                          ; preds = %err_p_stop, %if.then29, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_p_stop ], [ 0, %if.then29 ], [ -16, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_cap_streamoff(ptr noundef %file, ptr noundef %priv, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @vb2_ioctl_streamoff(ptr noundef %file, ptr noundef %priv, i32 noundef %type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %streaming = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 15
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ve = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 2
  tail call void @media_pipeline_stop(ptr noundef %ve) #12
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %streaming, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_cap_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %ve1 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 4
  %5 = ptrtoint ptr %ve1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ve1, align 8
  %graph_mutex.i = getelementptr inbounds %struct.media_device, ptr %6, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex.i, i32 noundef 0) #12
  %pipe = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 1
  %7 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.__fimc_md_get_subdev.exit_crit_edge, label %if.else.i

if.end.__fimc_md_get_subdev.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__fimc_md_get_subdev.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %subdevs.i = getelementptr inbounds %struct.fimc_pipeline, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %subdevs.i, align 4
  br label %__fimc_md_get_subdev.exit

__fimc_md_get_subdev.exit:                        ; preds = %if.else.i, %if.end.__fimc_md_get_subdev.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.else.i ], [ null, %if.end.__fimc_md_get_subdev.exit_crit_edge ]
  %11 = ptrtoint ptr %ve1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ve1, align 8
  %graph_mutex.i15 = getelementptr inbounds %struct.media_device, ptr %12, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %graph_mutex.i15) #12
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__fimc_md_get_subdev.exit.cleanup_crit_edge, label %if.then3

__fimc_md_get_subdev.exit.cleanup_crit_edge:      ; preds = %__fimc_md_get_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %__fimc_md_get_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %name4 = getelementptr inbounds %struct.v4l2_subdev, ptr %retval.0.i, i32 0, i32 9
  %call6 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name4, i32 noundef 32) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %__fimc_md_get_subdev.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %__fimc_md_get_subdev.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fimc_cap_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fimc_cap_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp = icmp eq i32 %i, 0
  %spec.select = select i1 %cmp, i32 0, i32 -22
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_cap_g_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %vid_cap = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vid_cap, align 8
  %4 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 257, label %if.end.sw.bb_crit_edge
    i32 258, label %if.end.sw.bb_crit_edge37
    i32 2, label %if.end.sw.bb2_crit_edge
    i32 1, label %if.end.sw.bb2_crit_edge38
    i32 256, label %sw.bb6
    i32 0, label %if.end.sw.bb8_crit_edge
  ]

if.end.sw.bb8_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

if.end.sw.bb2_crit_edge38:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb_crit_edge37:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge37
  %d_frame = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 1
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge38
  %f.0 = phi ptr [ %3, %if.end.sw.bb2_crit_edge ], [ %3, %if.end.sw.bb2_crit_edge38 ], [ %d_frame, %sw.bb ]
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %9 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %top, align 4
  %o_width = getelementptr inbounds %struct.fimc_frame, ptr %f.0, i32 0, i32 2
  %11 = ptrtoint ptr %o_width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %o_width, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %width, align 4
  %o_height = getelementptr inbounds %struct.fimc_frame, ptr %f.0, i32 0, i32 3
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %d_frame7 = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 1
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb6, %if.end.sw.bb8_crit_edge
  %f.1 = phi ptr [ %3, %if.end.sw.bb8_crit_edge ], [ %d_frame7, %sw.bb6 ]
  %offs_h = getelementptr inbounds %struct.fimc_frame, ptr %f.1, i32 0, i32 4
  %14 = ptrtoint ptr %offs_h to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offs_h, align 4
  %r9 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %16 = ptrtoint ptr %r9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %r9, align 4
  %offs_v = getelementptr inbounds %struct.fimc_frame, ptr %f.1, i32 0, i32 5
  %17 = ptrtoint ptr %offs_v to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offs_v, align 4
  %top12 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %top12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %top12, align 4
  %width13 = getelementptr inbounds %struct.fimc_frame, ptr %f.1, i32 0, i32 6
  %20 = ptrtoint ptr %width13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width13, align 4
  %width15 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %width15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %width15, align 4
  %height16 = getelementptr inbounds %struct.fimc_frame, ptr %f.1, i32 0, i32 7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb8, %sw.bb2
  %height16.sink = phi ptr [ %height16, %sw.bb8 ], [ %o_height, %sw.bb2 ]
  %23 = ptrtoint ptr %height16.sink to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height16.sink, align 4
  %height18 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %height18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %height18, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_cap_s_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %s) #0 align 64 {
entry:
  %rect = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %vid_cap = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vid_cap, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect) #12
  %4 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 1
  %5 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 2
  %6 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 3
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %rect, ptr %r, i32 16)
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %10 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %target, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %11, label %if.end.cleanup_crit_edge [
    i32 256, label %if.then3
    i32 0, label %if.end.if.end9_crit_edge
  ]

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %d_frame = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 1
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end.if.end9_crit_edge
  %f.0 = phi ptr [ %d_frame, %if.then3 ], [ %3, %if.end.if.end9_crit_edge ]
  call fastcc void @fimc_capture_try_selection(ptr noundef %3, ptr noundef nonnull %rect, i32 noundef %11)
  %flags11 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 2
  %13 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags11, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9.if.end15_crit_edge, label %land.lhs.true

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end9
  %15 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rect, align 4
  %17 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.i = icmp slt i32 %16, %18
  br i1 %cmp.i, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %4, align 4
  %top2.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %top2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %top2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp3.i = icmp slt i32 %20, %22
  br i1 %cmp3.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  %add.i = add i32 %24, %16
  %width6.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %width6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width6.i, align 4
  %add7.i = add i32 %26, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add7.i)
  %cmp8.i = icmp ugt i32 %add.i, %add7.i
  br i1 %cmp8.i, label %if.end.i.cleanup_crit_edge, label %v4l2_rect_enclosed.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

v4l2_rect_enclosed.exit:                          ; preds = %if.end.i
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %6, align 4
  %add12.i = add i32 %28, %20
  %height14.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %height14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height14.i, align 4
  %add15.i = add i32 %30, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %add15.i)
  %cmp16.i.not = icmp ugt i32 %add12.i, %add15.i
  br i1 %cmp16.i.not, label %v4l2_rect_enclosed.exit.cleanup_crit_edge, label %v4l2_rect_enclosed.exit.if.end15_crit_edge

v4l2_rect_enclosed.exit.if.end15_crit_edge:       ; preds = %v4l2_rect_enclosed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

v4l2_rect_enclosed.exit.cleanup_crit_edge:        ; preds = %v4l2_rect_enclosed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %v4l2_rect_enclosed.exit.if.end15_crit_edge, %if.end9.if.end15_crit_edge
  %and17 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end23_crit_edge, label %land.lhs.true19

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true19:                                  ; preds = %if.end15
  %31 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %r, align 4
  %33 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rect, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.i58 = icmp slt i32 %32, %34
  br i1 %cmp.i58, label %land.lhs.true19.cleanup_crit_edge, label %lor.lhs.false.i62

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i62:                                ; preds = %land.lhs.true19
  %top.i59 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %top.i59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %top.i59, align 4
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp3.i61 = icmp slt i32 %36, %38
  br i1 %cmp3.i61, label %lor.lhs.false.i62.cleanup_crit_edge, label %if.end.i68

lor.lhs.false.i62.cleanup_crit_edge:              ; preds = %lor.lhs.false.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i68:                                       ; preds = %lor.lhs.false.i62
  %width.i63 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %width.i63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %width.i63, align 4
  %add.i64 = add i32 %40, %32
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %5, align 4
  %add7.i66 = add i32 %42, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i64, i32 %add7.i66)
  %cmp8.i67 = icmp ugt i32 %add.i64, %add7.i66
  br i1 %cmp8.i67, label %if.end.i68.cleanup_crit_edge, label %v4l2_rect_enclosed.exit76

if.end.i68.cleanup_crit_edge:                     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

v4l2_rect_enclosed.exit76:                        ; preds = %if.end.i68
  %height.i69 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %height.i69 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height.i69, align 4
  %add12.i70 = add i32 %44, %36
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %6, align 4
  %add15.i72 = add i32 %46, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i70, i32 %add15.i72)
  %cmp16.i73.not = icmp ugt i32 %add12.i70, %add15.i72
  br i1 %cmp16.i73.not, label %v4l2_rect_enclosed.exit76.cleanup_crit_edge, label %v4l2_rect_enclosed.exit76.if.end23_crit_edge

v4l2_rect_enclosed.exit76.if.end23_crit_edge:     ; preds = %v4l2_rect_enclosed.exit76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

v4l2_rect_enclosed.exit76.cleanup_crit_edge:      ; preds = %v4l2_rect_enclosed.exit76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %v4l2_rect_enclosed.exit76.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %47 = call ptr @memcpy(ptr %r, ptr %rect, i32 16)
  %call28 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %48 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height, align 4
  %offs_h.i = getelementptr inbounds %struct.fimc_frame, ptr %f.0, i32 0, i32 4
  %56 = ptrtoint ptr %offs_h.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %49, ptr %offs_h.i, align 4
  %offs_v.i = getelementptr inbounds %struct.fimc_frame, ptr %f.0, i32 0, i32 5
  %57 = ptrtoint ptr %offs_v.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %51, ptr %offs_v.i, align 4
  %width1.i = getelementptr inbounds %struct.fimc_frame, ptr %f.0, i32 0, i32 6
  %58 = ptrtoint ptr %width1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %53, ptr %width1.i, align 4
  %height2.i = getelementptr inbounds %struct.fimc_frame, ptr %f.0, i32 0, i32 7
  %59 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %55, ptr %height2.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call28) #12
  %state = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  call void @_set_bit(i32 noundef 12, ptr noundef %state) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %v4l2_rect_enclosed.exit76.cleanup_crit_edge, %if.end.i68.cleanup_crit_edge, %lor.lhs.false.i62.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %v4l2_rect_enclosed.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -34, %v4l2_rect_enclosed.exit.cleanup_crit_edge ], [ -34, %v4l2_rect_enclosed.exit76.cleanup_crit_edge ], [ -34, %lor.lhs.false.i.cleanup_crit_edge ], [ -34, %land.lhs.true.cleanup_crit_edge ], [ -34, %if.end.i.cleanup_crit_edge ], [ -34, %lor.lhs.false.i62.cleanup_crit_edge ], [ -34, %land.lhs.true19.cleanup_crit_edge ], [ -34, %if.end.i68.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fimc_vidioc_querycap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fimc_get_format(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %d_frame = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 1
  %fmt1 = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 1, i32 12
  %2 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt1, align 4
  %4 = ptrtoint ptr %d_frame to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d_frame, align 4
  %f_height = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %f_height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_height, align 4
  %mul = mul i32 %7, %5
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %memplanes17 = getelementptr inbounds %struct.fimc_fmt, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %memplanes17 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %memplanes17, align 4
  %conv18 = zext i16 %11 to i32
  br i1 %tobool.not, label %if.end16, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv18)
  %cmp3.not = icmp eq i32 %9, %conv18
  br i1 %cmp3.not, label %if.then2.for.body_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.for.body_crit_edge:                      ; preds = %if.then2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then2.for.body_crit_edge
  %i.081 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.then2.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.081
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %arrayidx9 = getelementptr %struct.fimc_fmt, ptr %3, i32 0, i32 6, i32 %i.081
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %15 to i32
  %mul11 = mul i32 %mul, %conv10
  %div78 = lshr i32 %mul11, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div78)
  %cmp12 = icmp ult i32 %13, %div78
  br i1 %cmp12, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv18, ptr %num_planes, align 4
  %17 = ptrtoint ptr %memplanes17 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %memplanes17, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp2284.not = icmp eq i16 %18, 0
  br i1 %cmp2284.not, label %if.end16.cleanup_crit_edge, label %for.body24.lr.ph

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body24.lr.ph:                                 ; preds = %if.end16
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %3, i32 0, i32 2
  br label %for.body24

for.body24:                                       ; preds = %if.end39.for.body24_crit_edge, %for.body24.lr.ph
  %i.185 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc41, %if.end39.for.body24_crit_edge ]
  %19 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %color, align 4
  %and = and i32 %20, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx32 = getelementptr %struct.fimc_ctx, ptr %1, i32 0, i32 1, i32 8, i32 %i.185
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx32, align 4
  br label %if.end39

if.else:                                          ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx26 = getelementptr %struct.fimc_fmt, ptr %3, i32 0, i32 6, i32 %i.185
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %24 to i32
  %mul28 = mul i32 %mul, %conv27
  %div2977 = lshr i32 %mul28, 3
  %arrayidx35 = getelementptr %struct.fimc_ctx, ptr %1, i32 0, i32 1, i32 8, i32 %i.185
  %25 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx35, align 4
  %27 = tail call i32 @llvm.umax.i32(i32 %div2977, i32 %26)
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then31
  %.sink = phi i32 [ %27, %if.else ], [ %22, %if.then31 ]
  %28 = getelementptr i32, ptr %sizes, i32 %i.185
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %28, align 4
  %inc41 = add nuw nsw i32 %i.185, 1
  %30 = ptrtoint ptr %memplanes17 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %memplanes17, align 4
  %conv21 = zext i16 %31 to i32
  %cmp22 = icmp ult i32 %inc41, %conv21
  br i1 %cmp22, label %if.end39.for.body24_crit_edge, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39.for.body24_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body24

cleanup:                                          ; preds = %if.end39.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %fmt = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 1, i32 12
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fmt, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup12_crit_edge, label %for.cond.preheader

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup12

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fmt, align 4
  %memplanes46 = getelementptr inbounds %struct.fimc_fmt, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %memplanes46 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %memplanes46, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp348.not = icmp eq i16 %9, 0
  br i1 %cmp348.not, label %for.cond.preheader.cleanup12_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup12_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup12

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %10 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes.i, align 8
  br label %for.body

for.body:                                         ; preds = %vb2_set_plane_payload.exit.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vb2_set_plane_payload.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fimc_ctx, ptr %3, i32 0, i32 1, i32 8, i32 %i.049
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %i.049)
  %cmp.i = icmp ugt i32 %11, %i.049
  br i1 %cmp.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %for.body
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.049, i32 4
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp6 = icmp ult i32 %15, %13
  br i1 %cmp6, label %vb2_plane_size.exit.vb2_plane_size.exit33_crit_edge, label %if.end42.i

vb2_plane_size.exit.vb2_plane_size.exit33_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit33

vb2_plane_size.exit.thread:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp639.not = icmp eq i32 %13, 0
  br i1 %cmp639.not, label %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.thread.vb2_plane_size.exit33_crit_edge

vb2_plane_size.exit.thread.vb2_plane_size.exit33_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit33

vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit33:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit33_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit33_crit_edge
  %retval.0.i32 = phi i32 [ %15, %vb2_plane_size.exit.vb2_plane_size.exit33_crit_edge ], [ 0, %vb2_plane_size.exit.thread.vb2_plane_size.exit33_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 14
  %16 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn.in, align 4
  %name42 = getelementptr inbounds %struct.fimc_dev, ptr %.pn, i32 0, i32 13, i32 2, i32 0, i32 12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name42, i32 noundef %retval.0.i32, i32 noundef %13) #15
  br label %cleanup12

if.end42.i:                                       ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.049, i32 3
  %17 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %13, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge
  %inc = add nuw nsw i32 %i.049, 1
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fmt, align 4
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %memplanes, align 4
  %conv = zext i16 %21 to i32
  %cmp3 = icmp ult i32 %inc, %conv
  br i1 %cmp3, label %vb2_set_plane_payload.exit.for.body_crit_edge, label %vb2_set_plane_payload.exit.cleanup12_crit_edge

vb2_set_plane_payload.exit.cleanup12_crit_edge:   ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup12

vb2_set_plane_payload.exit.for.body_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup12:                                        ; preds = %vb2_set_plane_payload.exit.cleanup12_crit_edge, %vb2_plane_size.exit33, %for.cond.preheader.cleanup12_crit_edge, %entry.cleanup12_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup12_crit_edge ], [ -22, %vb2_plane_size.exit33 ], [ 0, %for.cond.preheader.cleanup12_crit_edge ], [ 0, %vb2_set_plane_payload.exit.cleanup12_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fimc_dev, align 4
  %frame_count = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 13
  %4 = ptrtoint ptr %frame_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %frame_count, align 4
  %call = tail call fastcc i32 @fimc_capture_hw_init(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call fastcc i32 @fimc_capture_state_cleanup(ptr noundef %3, i1 noundef zeroext false)
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #12
  %reqbufs_count = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 14
  %5 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reqbufs_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  %cond = select i1 %cmp, i32 2, i32 1
  %active_buf_cnt = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 11
  %7 = ptrtoint ptr %active_buf_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active_buf_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %cond)
  %cmp4.not = icmp slt i32 %8, %cond
  br i1 %cmp4.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  tail call void @fimc_activate_capture(ptr noundef %1) #12
  %call10 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %if.then8
  %ve = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2
  %tobool13.not = icmp eq ptr %ve, null
  br i1 %tobool13.not, label %if.then12.cleanup_crit_edge, label %lor.lhs.false

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then12
  %pipe = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 1
  %9 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pipe, align 8
  %tobool15.not = icmp eq ptr %10, null
  br i1 %tobool15.not, label %lor.lhs.false.cleanup_crit_edge, label %cond.false

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %tobool18.not = icmp eq ptr %12, null
  br i1 %tobool18.not, label %cond.false.cleanup_crit_edge, label %land.lhs.true19

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true19:                                  ; preds = %cond.false
  %set_stream = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %set_stream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_stream, align 4
  %tobool23.not = icmp eq ptr %14, null
  br i1 %tobool23.not, label %land.lhs.true19.cleanup_crit_edge, label %cond.true24

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.true24:                                      ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  %call31 = tail call i32 %14(ptr noundef nonnull %10, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.true24, %land.lhs.true19.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.then12.cleanup_crit_edge ], [ %call31, %cond.true24 ], [ -515, %land.lhs.true19.cleanup_crit_edge ], [ -515, %cond.false.cleanup_crit_edge ], [ 0, %if.then8.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fimc_dev, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %state.i = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 8
  %6 = and i32 %5, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %.not = icmp eq i32 %6, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call2.i) #12
  br i1 %.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call fastcc i32 @fimc_stop_capture(ptr noundef %3, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !15, !16, !18, !19, !21, !23, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !76, !78, !80, !81, !82}
!llvm.named.register.sp = !{!83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 210, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @fimc_capture_irq_handler.__UNIQUE_ID_ddebug311, !1, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 254, i32 2}
!8 = !{ptr @fimc_capture_irq_handler.__UNIQUE_ID_ddebug312, !7, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 1870, i32 39}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 448, i32 4}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @buffer_queue._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @buffer_queue._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fimc_subdev_ops, !20, !"fimc_subdev_ops", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 1688, i32 37}
!21 = !{ptr @fimc_subdev_pad_ops, !22, !"fimc_subdev_pad_ops", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 1680, i32 41}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 1521, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @fimc_subdev_set_fmt.__UNIQUE_ID_ddebug344, !26, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 632, i32 2}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @fimc_capture_try_format.__UNIQUE_ID_ddebug321, !30, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 1624, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @fimc_subdev_get_selection.__UNIQUE_ID_ddebug345, !34, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 1673, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @fimc_subdev_set_selection.__UNIQUE_ID_ddebug346, !38, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 705, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @fimc_capture_try_selection.__UNIQUE_ID_ddebug342, !42, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!45 = !{ptr @fimc_sd_media_ops, !46, !"fimc_sd_media_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 1403, i32 45}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 1377, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @fimc_link_setup.__UNIQUE_ID_ddebug343, !48, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!51 = !{ptr @fimc_capture_sd_internal_ops, !52, !"fimc_capture_sd_internal_ops", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 1858, i32 46}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 1732, i32 41}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 1795, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @fimc_register_capture_device._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @fimc_register_capture_device._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @fimc_capture_fops, !61, !"fimc_capture_fops", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 549, i32 42}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 473, i32 2}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @fimc_capture_open.__UNIQUE_ID_ddebug315, !63, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 880, i32 3}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @fimc_get_sensor_frame_desc._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @fimc_get_sensor_frame_desc._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 522, i32 2}
!73 = !{ptr @fimc_capture_release.__UNIQUE_ID_ddebug316, !72, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!74 = !{ptr @fimc_capture_ioctl_ops, !75, !"fimc_capture_ioctl_ops", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 1334, i32 36}
!76 = !{ptr @fimc_capture_qops, !77, !"fimc_capture_qops", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 454, i32 29}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/exynos4-is/fimc-capture.c", i32 389, i32 4}
!80 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @buffer_prepare._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @buffer_prepare._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{!"sp"}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2149001756, i64 2149001761, i64 2149001774, i64 2149001818, i64 2149001852, i64 2149001873}
!94 = !{i16 0, i16 17}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{i32 0, i32 33}
!98 = !{i8 0, i8 2}
!99 = !{i64 2148387798}
!100 = !{i64 873418, i64 873443, i64 873465, i64 873481, i64 873493, i64 873513, i64 873537, i64 873553, i64 873565}
!101 = !{i64 2148387986}
!102 = !{!"auto-init"}
