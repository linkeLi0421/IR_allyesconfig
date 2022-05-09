; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-sdr-cap.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-sdr-cap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.vivid_format = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.101, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.102, %struct.anon.103, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
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
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.101 = type { ptr, ptr }
%struct.anon.102 = type { ptr, ptr }
%struct.anon.103 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.104, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.104 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.105 }
%struct.anon.105 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.96 }
%union.anon.96 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.106, i32, i32 }
%union.anon.106 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.vivid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.110 }
%union.anon.110 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.111, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.111 = type { i8 }
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

@vivid_sdr_cap_qops = dso_local constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @sdr_cap_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @sdr_cap_buf_prepare, ptr null, ptr null, ptr @sdr_cap_start_streaming, ptr @sdr_cap_stop_streaming, ptr @sdr_cap_buf_queue, ptr @sdr_cap_buf_request_complete }, [48 x i8] zeroinitializer }, align 32
@bands_adc = internal constant { [3 x %struct.v4l2_frequency_band], [32 x i8] } { [3 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 4, i32 0, i32 5120, i32 300000, i32 300000, i32 0, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 4, i32 1, i32 5120, i32 900001, i32 2800000, i32 0, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 4, i32 2, i32 5120, i32 3200000, i32 3200000, i32 0, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@bands_fm = internal constant { [1 x %struct.v4l2_frequency_band], [32 x i8] } { [1 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 1, i32 5, i32 0, i32 5120, i32 50000000, i32 2000000000, i32 0, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RF\00", [29 x i8] zeroinitializer }, align 32
@formats = internal constant { [2 x %struct.vivid_format], [16 x i8] } { [2 x %struct.vivid_format] [%struct.vivid_format { i32 942691651, i32 32768 }, %struct.vivid_format { i32 942691139, i32 32768 }], [16 x i8] zeroinitializer }, align 32
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@sdr_cap_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sdr_cap_buf_prepare\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/test-drivers/vivid/vivid-sdr-cap.c\00", [47 x i8] zeroinitializer }, align 32
@sdr_cap_buf_prepare._entry_ptr = internal global ptr @sdr_cap_buf_prepare._entry, section ".printk_index", align 4
@sdr_cap_buf_prepare._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %s data will not fit into plane (%lu < %u)\0A\00", [46 x i8] zeroinitializer }, align 32
@sdr_cap_buf_prepare._entry_ptr.7 = internal global ptr @sdr_cap_buf_prepare._entry.5, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@sdr_cap_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.9, ptr @.str.4, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdr_cap_start_streaming\00", [40 x i8] zeroinitializer }, align 32
@sdr_cap_start_streaming._entry_ptr = internal global ptr @sdr_cap_start_streaming._entry, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-sdr-cap\00", [21 x i8] zeroinitializer }, align 32
@sdr_cap_start_streaming._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.4, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: kernel_thread() failed\0A\00", [34 x i8] zeroinitializer }, align 32
@sdr_cap_start_streaming._entry_ptr.13 = internal global ptr @sdr_cap_start_streaming._entry.11, section ".printk_index", align 4
@vivid_thread_sdr_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: SDR Capture Thread Start\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vivid_thread_sdr_cap\00", [43 x i8] zeroinitializer }, align 32
@vivid_thread_sdr_cap._entry_ptr = internal global ptr @vivid_thread_sdr_cap._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@vivid_thread_sdr_cap._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: SDR Capture Thread End\0A\00", [34 x i8] zeroinitializer }, align 32
@vivid_thread_sdr_cap._entry_ptr.18 = internal global ptr @vivid_thread_sdr_cap._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@vivid_thread_sdr_cap_tick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: SDR Capture Thread Tick\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vivid_thread_sdr_cap_tick\00", [38 x i8] zeroinitializer }, align 32
@vivid_thread_sdr_cap_tick._entry_ptr = internal global ptr @vivid_thread_sdr_cap_tick._entry, section ".printk_index", align 4
@sdr_cap_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.22, ptr @.str.4, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdr_cap_buf_queue\00", [46 x i8] zeroinitializer }, align 32
@sdr_cap_buf_queue._entry_ptr = internal global ptr @sdr_cap_buf_queue._entry, section ".printk_index", align 4
@sin_table = internal constant { [91 x i32], [84 x i8] } { [91 x i32] [i32 0, i32 37478757, i32 74946098, i32 112390610, i32 149800886, i32 187165532, i32 224473165, i32 261712422, i32 298871958, i32 335940455, i32 372906621, i32 409759197, i32 446486956, i32 483078710, i32 519523314, i32 555809666, i32 591926714, i32 627863454, i32 663608942, i32 699152287, i32 734482664, i32 769589311, i32 804461533, i32 839088708, i32 873460289, i32 907565806, i32 941394869, i32 974937174, i32 1008182503, i32 1041120731, i32 1073741823, i32 1106035843, i32 1137992954, i32 1169603421, i32 1200857615, i32 1231746017, i32 1262259217, i32 1292387920, i32 1322122950, i32 1351455248, i32 1380375880, i32 1408876036, i32 1436947034, i32 1464580325, i32 1491767490, i32 1518500249, i32 1544770457, i32 1570570114, i32 1595891360, i32 1620726481, i32 1645067914, i32 1668908243, i32 1692240207, i32 1715056697, i32 1737350765, i32 1759115619, i32 1780344629, i32 1801031329, i32 1821169418, i32 1840752761, i32 1859775392, i32 1878231518, i32 1896115516, i32 1913421940, i32 1930145516, i32 1946281151, i32 1961823931, i32 1976769119, i32 1991112165, i32 2004848699, i32 2017974536, i32 2030485679, i32 2042378316, i32 2053648824, i32 2064293772, i32 2074309916, i32 2083694204, i32 2092443780, i32 2100555976, i32 2108028323, i32 2114858545, i32 2121044559, i32 2126584483, i32 2131476629, i32 2135719506, i32 2139311823, i32 2142252484, i32 2144540595, i32 2146175457, i32 2147156574, i32 2147483647], [84 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 942691139, i64 942691651]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 942691139, i64 942691651]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 942691139, i64 942691651]
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"vivid_sdr_cap_qops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 323, i32 22 }
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"bands_adc\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 42, i32 41 }
@___asan_gen_.35 = private unnamed_addr constant [9 x i8] c"bands_fm\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 73, i32 41 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 417, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 425, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 32, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 227, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 238, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1163, i32 7 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 265, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 271, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 275, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 128, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 208, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 57, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 88, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [52 x i8] c"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 253, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [10 x i8] c"sin_table\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [30 x i8] c"../include/linux/fixp-arith.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 22, i32 18 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @sdr_cap_buf_prepare._entry, ptr @sdr_cap_buf_prepare._entry.5, ptr @sdr_cap_buf_prepare._entry_ptr, ptr @sdr_cap_buf_prepare._entry_ptr.7, ptr @sdr_cap_buf_queue._entry, ptr @sdr_cap_buf_queue._entry_ptr, ptr @sdr_cap_start_streaming._entry, ptr @sdr_cap_start_streaming._entry.11, ptr @sdr_cap_start_streaming._entry_ptr, ptr @sdr_cap_start_streaming._entry_ptr.13, ptr @vivid_thread_sdr_cap._entry, ptr @vivid_thread_sdr_cap._entry.16, ptr @vivid_thread_sdr_cap._entry_ptr, ptr @vivid_thread_sdr_cap._entry_ptr.18, ptr @vivid_thread_sdr_cap_tick._entry, ptr @vivid_thread_sdr_cap_tick._entry_ptr, ptr @vivid_sdr_cap_qops, ptr @bands_adc, ptr @bands_fm, ptr @.str, ptr @.str.1, ptr @formats, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @sin_table], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_sdr_cap_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands_adc to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands_fm to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdr_cap_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdr_cap_buf_prepare._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdr_cap_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdr_cap_start_streaming._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_sdr_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_sdr_cap._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_sdr_cap_tick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdr_cap_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sin_table to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sdr_cap_queue_setup(ptr nocapture noundef readnone %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32768, ptr %sizes, align 4
  %1 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %nplanes, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdr_cap_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %4 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, ptr noundef nonnull @.str.3) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %buf_prepare_error = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 154
  %5 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf_prepare_error, align 2, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %buf_prepare_error to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buf_prepare_error, align 2
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %do.body11, label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.end7
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %11)
  %cmp9 = icmp ult i32 %11, 32768
  br i1 %cmp9, label %do.body11.thread, label %if.then.i45

do.body11:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %12 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp12.not = icmp eq i32 %12, 0
  br i1 %cmp12.not, label %do.body11.cleanup_crit_edge, label %do.body11.vb2_plane_size.exit41_crit_edge

do.body11.vb2_plane_size.exit41_crit_edge:        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_plane_size.exit41

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body11.thread:                                 ; preds = %vb2_plane_size.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %13 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp12.not48 = icmp eq i32 %13, 0
  br i1 %cmp12.not48, label %do.body11.thread.cleanup_crit_edge, label %if.then.i39

do.body11.thread.cleanup_crit_edge:               ; preds = %do.body11.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i39:                                      ; preds = %do.body11.thread
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit41

vb2_plane_size.exit41:                            ; preds = %if.then.i39, %do.body11.vb2_plane_size.exit41_crit_edge
  %retval.0.i40 = phi i32 [ %15, %if.then.i39 ], [ 0, %do.body11.vb2_plane_size.exit41_crit_edge ]
  %name1951 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name1951, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i40, i32 noundef 32768) #14
  br label %cleanup

if.then.i45:                                      ; preds = %vb2_plane_size.exit
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %17)
  %cmp1.i = icmp ult i32 %17, 32768
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i45.vb2_set_plane_payload.exit_crit_edge

if.then.i45.vb2_set_plane_payload.exit_crit_edge: ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit

land.rhs.i:                                       ; preds = %if.then.i45
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !68

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 8
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then38.i, %if.then.i45.vb2_set_plane_payload.exit_crit_edge
  %size.addr.0.i = phi i32 [ %19, %if.then38.i ], [ 32768, %if.then.i45.vb2_set_plane_payload.exit_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %20 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit41, %do.body11.thread.cleanup_crit_edge, %do.body11.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ -22, %if.then5 ], [ 0, %vb2_set_plane_payload.exit ], [ -22, %vb2_plane_size.exit41 ], [ -22, %do.body11.cleanup_crit_edge ], [ -22, %do.body11.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdr_cap_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %2 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, ptr noundef nonnull @.str.9) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %sdr_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 332
  %3 = ptrtoint ptr %sdr_cap_seq_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sdr_cap_seq_count, align 8
  %start_streaming_error = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 155
  %4 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %start_streaming_error, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.end35.thread79

if.end35.thread79:                                ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %start_streaming_error to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %start_streaming_error, align 1
  br label %if.then37

if.else:                                          ; preds = %do.end4
  %kthread_sdr_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 329
  %7 = ptrtoint ptr %kthread_sdr_cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kthread_sdr_cap, align 4
  %cmp7 = icmp eq ptr %8, null
  br i1 %cmp7, label %if.then8, label %if.else.if.end53_crit_edge

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then8:                                         ; preds = %if.else
  %name10 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call12 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @vivid_thread_sdr_cap, ptr noundef %1, i32 noundef -1, ptr noundef nonnull @.str.10, ptr noundef %name10) #11
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end35, label %if.end16

if.end16:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 @wake_up_process(ptr noundef %call12) #11
  %9 = ptrtoint ptr %kthread_sdr_cap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %kthread_sdr_cap, align 4
  br label %if.end53

if.end35:                                         ; preds = %if.then8
  %10 = ptrtoint ptr %kthread_sdr_cap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %kthread_sdr_cap, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name10) #14
  %11 = ptrtoint ptr %kthread_sdr_cap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kthread_sdr_cap, align 4
  %13 = ptrtoint ptr %12 to i32
  store ptr null, ptr %kthread_sdr_cap, align 4
  %tobool36.not = icmp eq ptr %12, null
  br i1 %tobool36.not, label %if.end35.if.end53_crit_edge, label %if.end35.if.then37_crit_edge

if.end35.if.then37_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

if.end35.if.end53_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then37:                                        ; preds = %if.end35.if.then37_crit_edge, %if.end35.thread79
  %err.082 = phi i32 [ -22, %if.end35.thread79 ], [ %13, %if.end35.if.then37_crit_edge ]
  %sdr_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 314
  %14 = ptrtoint ptr %sdr_cap_active to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdr_cap_active, align 8
  %cmp46.not83 = icmp eq ptr %15, %sdr_cap_active
  br i1 %cmp46.not83, label %if.then37.if.end53_crit_edge, label %if.then37.for.body_crit_edge

if.then37.for.body_crit_edge:                     ; preds = %if.then37
  br label %for.body

if.then37.if.end53_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.then37.for.body_crit_edge
  %.pn.in84 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %15, %if.then37.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in84, i32 -736
  %16 = ptrtoint ptr %.pn.in84 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn.in84, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in84) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in84, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn.in84 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in84, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %23 = ptrtoint ptr %.pn.in84 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in84, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in84, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #11
  %cmp46.not = icmp eq ptr %.pn, %sdr_cap_active
  br i1 %cmp46.not, label %list_del.exit.if.end53_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.if.end53_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end53:                                         ; preds = %list_del.exit.if.end53_crit_edge, %if.then37.if.end53_crit_edge, %if.end35.if.end53_crit_edge, %if.end16, %if.else.if.end53_crit_edge
  %err.078 = phi i32 [ 0, %if.end35.if.end53_crit_edge ], [ 0, %if.end16 ], [ 0, %if.else.if.end53_crit_edge ], [ %err.082, %if.then37.if.end53_crit_edge ], [ %err.082, %list_del.exit.if.end53_crit_edge ]
  ret i32 %err.078
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdr_cap_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %kthread_sdr_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 329
  %2 = ptrtoint ptr %kthread_sdr_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kthread_sdr_cap, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %sdr_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 314
  %4 = ptrtoint ptr %sdr_cap_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sdr_cap_active, align 4
  %cmp.i.not15 = icmp eq ptr %5, %sdr_cap_active
  br i1 %cmp.i.not15, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %ctrl_hdl_sdr_cap = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 31
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %5, %while.body.lr.ph ], [ %18, %list_del.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %6, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %req = getelementptr i8, ptr %6, i32 -692
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %16, ptr noundef %ctrl_hdl_sdr_cap) #11
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #11
  %17 = ptrtoint ptr %sdr_cap_active to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %sdr_cap_active, align 4
  %cmp.i.not = icmp eq ptr %18, %sdr_cap_active
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %19 = ptrtoint ptr %kthread_sdr_cap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kthread_sdr_cap, align 4
  %call6 = tail call i32 @kthread_stop(ptr noundef %20) #11
  %21 = ptrtoint ptr %kthread_sdr_cap to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %kthread_sdr_cap, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdr_cap_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %4 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, ptr noundef nonnull @.str.22) #14
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %slock = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %slock) #11
  %list = getelementptr inbounds %struct.vivid_buffer, ptr %vb, i32 0, i32 1
  %sdr_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 314
  %prev.i = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 314, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef %sdr_cap_active) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end8.list_add_tail.exit_crit_edge

do.end8.list_add_tail.exit_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sdr_cap_active, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.vivid_buffer, ptr %vb, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end8.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdr_cap_buf_request_complete(ptr nocapture noundef readonly %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %ctrl_hdl_sdr_cap = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 31
  tail call void @v4l2_ctrl_request_complete(ptr noundef %5, ptr noundef %ctrl_hdl_sdr_cap) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_sdr_enum_freq_bands(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %band) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp ugt i32 %4, 2
  br i1 %cmp, label %sw.bb.return_crit_edge, label %if.end

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands_adc, i32 0, i32 %4
  %5 = call ptr @memcpy(ptr %band, ptr %arrayidx, i32 64)
  br label %return

sw.bb2:                                           ; preds = %entry
  %index3 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %6 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not = icmp eq i32 %7, 0
  br i1 %cmp4.not, label %if.end6, label %sw.bb2.return_crit_edge

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end6:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %8 = call ptr @memcpy(ptr %band, ptr @bands_fm, i32 64)
  br label %return

return:                                           ; preds = %if.end6, %sw.bb2.return_crit_edge, %if.end, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %if.end ], [ -22, %sw.bb.return_crit_edge ], [ -22, %sw.bb2.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_sdr_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %vf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vf, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sdr_adc_freq = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 317
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sdr_fm_freq = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 318
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %sw.bb
  %.sink9.in = phi ptr [ %sdr_fm_freq, %sw.bb1 ], [ %sdr_adc_freq, %sw.bb ]
  %.sink = phi i32 [ 5, %sw.bb1 ], [ 4, %sw.bb ]
  %5 = ptrtoint ptr %.sink9.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.sink9 = load i32, ptr %.sink9.in, align 4
  %frequency2 = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 2
  %6 = ptrtoint ptr %frequency2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink9, ptr %frequency2, align 4
  %type3 = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 1
  %7 = ptrtoint ptr %type3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %type3, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_sdr_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %vf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 2
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency, align 4
  %4 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vf, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp.not = icmp eq i32 %8, 4
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %3)
  %cmp1 = icmp ult i32 %3, 600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %3)
  %cmp5 = icmp ult i32 %3, 3000000
  %. = select i1 %cmp5, i32 1, i32 2
  %band.0 = select i1 %cmp1, i32 0, i32 %.
  %rangelow = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands_adc, i32 0, i32 %band.0, i32 4
  %9 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rangelow, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %3, i32 %10)
  %rangehigh = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands_adc, i32 0, i32 %band.0, i32 5
  %12 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rangehigh, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13)
  %streaming.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 313, i32 28
  %15 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %land.lhs.true, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %sdr_adc_freq = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 317
  %16 = ptrtoint ptr %sdr_adc_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sdr_adc_freq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %17)
  %cmp19.not = icmp eq i32 %14, %17
  br i1 %cmp19.not, label %land.lhs.true.if.end21_crit_edge, label %if.then20

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %sdr_cap_seq_resync = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 333
  %18 = ptrtoint ptr %sdr_cap_seq_resync to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %sdr_cap_seq_resync, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %land.lhs.true.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %sdr_adc_freq22 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 317
  %19 = ptrtoint ptr %sdr_adc_freq22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %14, ptr %sdr_adc_freq22, align 8
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %type24 = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 1
  %20 = ptrtoint ptr %type24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp25.not = icmp eq i32 %21, 5
  br i1 %cmp25.not, label %if.end27, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  %22 = tail call i32 @llvm.umax.i32(i32 %3, i32 50000000)
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 2000000000)
  %sdr_fm_freq = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 318
  %24 = ptrtoint ptr %sdr_fm_freq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %sdr_fm_freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %sw.bb23.cleanup_crit_edge, %if.end21, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ 0, %if.end21 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb23.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_sdr_g_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %vt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vt, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %entry.return.sink.split_crit_edge
    i32 1, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str.1, %sw.bb1 ], [ @.str, %entry.return.sink.split_crit_edge ]
  %.sink20 = phi i32 [ 5, %sw.bb1 ], [ 4, %entry.return.sink.split_crit_edge ]
  %.sink19 = phi i32 [ 50000000, %sw.bb1 ], [ 300000, %entry.return.sink.split_crit_edge ]
  %.sink = phi i32 [ 2000000000, %sw.bb1 ], [ 3200000, %entry.return.sink.split_crit_edge ]
  %name2 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 1
  %call4 = tail call i32 @strscpy(ptr noundef %name2, ptr noundef nonnull %.str.1.sink, i32 noundef 32) #11
  %type5 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 2
  %3 = ptrtoint ptr %type5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink20, ptr %type5, align 4
  %capability6 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 3
  %4 = ptrtoint ptr %capability6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5120, ptr %capability6, align 4
  %rangelow7 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 4
  %5 = ptrtoint ptr %rangelow7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink19, ptr %rangelow7, align 4
  %rangehigh8 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 5
  %6 = ptrtoint ptr %rangehigh8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %rangehigh8, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_sdr_s_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %vt) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  %. = select i1 %cmp, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vidioc_enum_fmt_sdr_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [2 x %struct.vivid_format], ptr @formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat2 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat2, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_sdr_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %f) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %sdr_pixelformat = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 315
  %2 = ptrtoint ptr %sdr_pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdr_pixelformat, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %sdr_buffersize = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 316
  %5 = ptrtoint ptr %sdr_buffersize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sdr_buffersize, align 4
  %buffersize = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %buffersize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buffersize, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_sdr_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 313, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %5, label %for.inc.1 [
    i32 942691651, label %for.cond.preheader.if.then4_crit_edge
    i32 942691139, label %if.then4.fold.split
  ]

for.cond.preheader.if.then4_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then4.fold.split:                              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then4:                                         ; preds = %if.then4.fold.split, %for.cond.preheader.if.then4_crit_edge
  %i.034.lcssa = phi i32 [ 0, %for.cond.preheader.if.then4_crit_edge ], [ 1, %if.then4.fold.split ]
  %sdr_pixelformat = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 315
  %7 = ptrtoint ptr %sdr_pixelformat to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %sdr_pixelformat, align 8
  %buffersize = getelementptr [2 x %struct.vivid_format], ptr @formats, i32 0, i32 %i.034.lcssa, i32 1
  %8 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffersize, align 4
  %sdr_buffersize = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 316
  %10 = ptrtoint ptr %sdr_buffersize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sdr_buffersize, align 4
  br label %cleanup.sink.split

for.inc.1:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %sdr_pixelformat13 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 315
  %11 = ptrtoint ptr %sdr_pixelformat13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 942691651, ptr %sdr_pixelformat13, align 8
  %sdr_buffersize14 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 316
  %12 = ptrtoint ptr %sdr_buffersize14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32768, ptr %sdr_buffersize14, align 4
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 942691651, ptr %fmt, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.1, %if.then4
  %.sink = phi i32 [ 32768, %for.inc.1 ], [ %9, %if.then4 ]
  %buffersize18 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %buffersize18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %buffersize18, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_sdr_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %1, label %for.inc.1 [
    i32 942691651, label %entry.if.then_crit_edge
    i32 942691139, label %if.then.fold.split
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split, %entry.if.then_crit_edge
  %i.017.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ]
  %buffersize = getelementptr [2 x %struct.vivid_format], ptr @formats, i32 0, i32 %i.017.lcssa, i32 1
  %3 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buffersize, align 4
  br label %cleanup

for.inc.1:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 942691651, ptr %fmt, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1, %if.then
  %.sink = phi i32 [ 32768, %for.inc.1 ], [ %4, %if.then ]
  %buffersize9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %buffersize9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %buffersize9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_sdr_cap_process(ptr nocapture noundef %dev, ptr noundef %buf) local_unnamed_addr #2 align 64 {
entry:
  %remainder.i.i208 = alloca i32, align 4
  %remainder.i.i168 = alloca i32, align 4
  %remainder.i = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %buf, i32 noundef 0) #11
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %0 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %entry.for.end_crit_edge, label %vb2_plane_size.exit

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

vb2_plane_size.exit:                              ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 4
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 8
  %sdr_adc_freq = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 317
  %4 = ptrtoint ptr %sdr_adc_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sdr_adc_freq, align 8
  %div166 = lshr i32 %5, 1
  %add = add nuw i32 %div166, 205887000
  %div4 = udiv i32 %add, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp249.not = icmp eq i32 %3, 0
  br i1 %cmp249.not, label %vb2_plane_size.exit.for.end_crit_edge, label %for.body.lr.ph

vb2_plane_size.exit.for.end_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %vb2_plane_size.exit
  %sdr_fixp_src_phase = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 320
  %sdr_fm_deviation = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 319
  %sdr_fixp_mod_phase = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 321
  %sdr_pixelformat = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 315
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vbuf.0251 = phi ptr [ %call, %for.body.lr.ph ], [ %vbuf.1, %for.inc.for.body_crit_edge ]
  %i.0250 = phi i32 [ 0, %for.body.lr.ph ], [ %add116, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %sdr_fixp_src_phase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sdr_fixp_src_phase, align 4
  %add5 = add i32 %7, 51471
  %mul.i = mul i32 %add5, 360
  %div.i = udiv i32 %mul.i, 205887
  %mul8.i = mul nuw i32 %div.i, 205887
  %div9.i = udiv i32 %mul8.i, 360
  %sub.i = sub i32 %add5, %div9.i
  %conv.i = zext i32 %sub.i to i64
  %rem.lhs.trunc.i = trunc i32 %div.i to i16
  %rem2.i = urem i16 %rem.lhs.trunc.i, 360
  %narrow.i = add nuw nsw i16 %rem2.i, 360
  %rem103.i = urem i16 %narrow.i, 360
  %rem10.zext.i = zext i16 %rem103.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %rem103.i)
  %cmp.i.i = icmp ugt i16 %rem103.i, 180
  %sub.i.i = add nsw i32 %rem10.zext.i, -180
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 %rem10.zext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %spec.select.i.i)
  %cmp1.i.i = icmp ugt i32 %spec.select.i.i, 90
  %sub3.i.i = sub nuw nsw i32 180, %spec.select.i.i
  %degrees.addr.1.i.i = select i1 %cmp1.i.i, i32 %sub3.i.i, i32 %spec.select.i.i
  %arrayidx.i.i = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %degrees.addr.1.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %sub5.i.i = sub i32 0, %9
  %cond.i.i = select i1 %cmp.i.i, i32 %sub5.i.i, i32 %9
  %add11.i = add nuw nsw i16 %rem103.i, 1
  %rem.i45.i = urem i16 %add11.i, 360
  %rem13.lhs.trunc.i.i = add nuw nsw i16 %rem.i45.i, 360
  %rem134.i.i = urem i16 %rem13.lhs.trunc.i.i, 360
  %rem13.zext.i.i = zext i16 %rem134.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %rem134.i.i)
  %cmp.i.i.i = icmp ugt i16 %rem134.i.i, 180
  %sub.i.i.i = add nsw i32 %rem13.zext.i.i, -180
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %sub.i.i.i, i32 %rem13.zext.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %spec.select.i.i.i)
  %cmp1.i.i.i = icmp ugt i32 %spec.select.i.i.i, 90
  %sub3.i.i.i = sub nuw nsw i32 180, %spec.select.i.i.i
  %degrees.addr.1.i.i.i = select i1 %cmp1.i.i.i, i32 %sub3.i.i.i, i32 %spec.select.i.i.i
  %arrayidx.i.i.i = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %degrees.addr.1.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  %sub5.i.i.i = sub i32 0, %11
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 %sub5.i.i.i, i32 %11
  %sub14.i = sub i32 %cond.i.i.i, %cond.i.i
  %conv15.i = sext i32 %sub14.i to i64
  %mul16.i = mul nsw i64 %conv15.i, %conv.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #11
  %12 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !69
  %call.i.i = call i64 @div_s64_rem(i64 noundef %mul16.i, i32 noundef 571, ptr noundef nonnull %remainder.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #11
  %13 = trunc i64 %call.i.i to i32
  %conv20.i = add i32 %cond.i.i, %13
  %shr = ashr i32 %conv20.i, 16
  %14 = ptrtoint ptr %sdr_fixp_src_phase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sdr_fixp_src_phase, align 4
  %add8 = add i32 %15, %div4
  store i32 %add8, ptr %sdr_fixp_src_phase, align 4
  %conv = sext i32 %shr to i64
  %16 = ptrtoint ptr %sdr_fm_deviation to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sdr_fm_deviation, align 8
  %conv9 = zext i32 %17 to i64
  %mul = mul nsw i64 %conv, %conv9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #11
  %18 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %remainder.i, align 4, !annotation !69
  %call.i = call i64 @div_s64_rem(i64 noundef %mul, i32 noundef 314159, ptr noundef nonnull %remainder.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #11
  %19 = ptrtoint ptr %sdr_fixp_mod_phase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sdr_fixp_mod_phase, align 8
  %21 = trunc i64 %call.i to i32
  %conv13 = add i32 %20, %21
  %22 = ptrtoint ptr %sdr_fixp_src_phase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sdr_fixp_src_phase, align 4
  %rem = srem i32 %23, 205887
  store i32 %rem, ptr %sdr_fixp_src_phase, align 4
  %rem16 = srem i32 %conv13, 205887
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem16)
  %cmp18 = icmp slt i32 %rem16, 0
  %add21 = add nsw i32 %rem16, 205887
  %spec.select = select i1 %cmp18, i32 %add21, i32 %rem16
  %24 = ptrtoint ptr %sdr_fixp_mod_phase to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select, ptr %sdr_fixp_mod_phase, align 8
  %add23 = add nuw nsw i32 %spec.select, 51471
  %mul.i169 = mul nuw nsw i32 %add23, 360
  %div.i170 = udiv i32 %mul.i169, 205887
  %mul8.i171 = mul nuw nsw i32 %div.i170, 205887
  %div9.i172 = udiv i32 %mul8.i171, 360
  %sub.i173 = sub nsw i32 %add23, %div9.i172
  %conv.i174 = zext i32 %sub.i173 to i64
  %rem.lhs.trunc.i175 = trunc i32 %div.i170 to i16
  %rem2.i176 = urem i16 %rem.lhs.trunc.i175, 360
  %narrow.i177 = add nuw nsw i16 %rem2.i176, 360
  %rem103.i178 = urem i16 %narrow.i177, 360
  %rem10.zext.i179 = zext i16 %rem103.i178 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %rem103.i178)
  %cmp.i.i180 = icmp ugt i16 %rem103.i178, 180
  %sub.i.i181 = add nsw i32 %rem10.zext.i179, -180
  %spec.select.i.i182 = select i1 %cmp.i.i180, i32 %sub.i.i181, i32 %rem10.zext.i179
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %spec.select.i.i182)
  %cmp1.i.i183 = icmp ugt i32 %spec.select.i.i182, 90
  %sub3.i.i184 = sub nuw nsw i32 180, %spec.select.i.i182
  %degrees.addr.1.i.i185 = select i1 %cmp1.i.i183, i32 %sub3.i.i184, i32 %spec.select.i.i182
  %arrayidx.i.i186 = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %degrees.addr.1.i.i185
  %25 = ptrtoint ptr %arrayidx.i.i186 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i186, align 4
  %sub5.i.i187 = sub i32 0, %26
  %cond.i.i188 = select i1 %cmp.i.i180, i32 %sub5.i.i187, i32 %26
  %add11.i189 = add nuw nsw i16 %rem103.i178, 1
  %rem.i45.i190 = urem i16 %add11.i189, 360
  %rem13.lhs.trunc.i.i191 = add nuw nsw i16 %rem.i45.i190, 360
  %rem134.i.i192 = urem i16 %rem13.lhs.trunc.i.i191, 360
  %rem13.zext.i.i193 = zext i16 %rem134.i.i192 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %rem134.i.i192)
  %cmp.i.i.i194 = icmp ugt i16 %rem134.i.i192, 180
  %sub.i.i.i195 = add nsw i32 %rem13.zext.i.i193, -180
  %spec.select.i.i.i196 = select i1 %cmp.i.i.i194, i32 %sub.i.i.i195, i32 %rem13.zext.i.i193
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %spec.select.i.i.i196)
  %cmp1.i.i.i197 = icmp ugt i32 %spec.select.i.i.i196, 90
  %sub3.i.i.i198 = sub nuw nsw i32 180, %spec.select.i.i.i196
  %degrees.addr.1.i.i.i199 = select i1 %cmp1.i.i.i197, i32 %sub3.i.i.i198, i32 %spec.select.i.i.i196
  %arrayidx.i.i.i200 = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %degrees.addr.1.i.i.i199
  %27 = ptrtoint ptr %arrayidx.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i200, align 4
  %sub5.i.i.i201 = sub i32 0, %28
  %cond.i.i.i202 = select i1 %cmp.i.i.i194, i32 %sub5.i.i.i201, i32 %28
  %sub14.i203 = sub i32 %cond.i.i.i202, %cond.i.i188
  %conv15.i204 = sext i32 %sub14.i203 to i64
  %mul16.i205 = mul nsw i64 %conv15.i204, %conv.i174
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i168) #11
  %29 = ptrtoint ptr %remainder.i.i168 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %remainder.i.i168, align 4, !annotation !69
  %call.i.i206 = call i64 @div_s64_rem(i64 noundef %mul16.i205, i32 noundef 571, ptr noundef nonnull %remainder.i.i168) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i168) #11
  %30 = trunc i64 %call.i.i206 to i32
  %conv20.i207 = add i32 %cond.i.i188, %30
  %31 = ptrtoint ptr %sdr_fixp_mod_phase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sdr_fixp_mod_phase, align 8
  %mul.i209 = mul i32 %32, 360
  %div.i210 = udiv i32 %mul.i209, 205887
  %mul8.i211 = mul nuw i32 %div.i210, 205887
  %div9.i212 = udiv i32 %mul8.i211, 360
  %sub.i213 = sub i32 %32, %div9.i212
  %conv.i214 = zext i32 %sub.i213 to i64
  %rem.lhs.trunc.i215 = trunc i32 %div.i210 to i16
  %rem2.i216 = urem i16 %rem.lhs.trunc.i215, 360
  %narrow.i217 = add nuw nsw i16 %rem2.i216, 360
  %rem103.i218 = urem i16 %narrow.i217, 360
  %rem10.zext.i219 = zext i16 %rem103.i218 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %rem103.i218)
  %cmp.i.i220 = icmp ugt i16 %rem103.i218, 180
  %sub.i.i221 = add nsw i32 %rem10.zext.i219, -180
  %spec.select.i.i222 = select i1 %cmp.i.i220, i32 %sub.i.i221, i32 %rem10.zext.i219
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %spec.select.i.i222)
  %cmp1.i.i223 = icmp ugt i32 %spec.select.i.i222, 90
  %sub3.i.i224 = sub nuw nsw i32 180, %spec.select.i.i222
  %degrees.addr.1.i.i225 = select i1 %cmp1.i.i223, i32 %sub3.i.i224, i32 %spec.select.i.i222
  %arrayidx.i.i226 = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %degrees.addr.1.i.i225
  %33 = ptrtoint ptr %arrayidx.i.i226 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i226, align 4
  %sub5.i.i227 = sub i32 0, %34
  %cond.i.i228 = select i1 %cmp.i.i220, i32 %sub5.i.i227, i32 %34
  %add11.i229 = add nuw nsw i16 %rem103.i218, 1
  %rem.i45.i230 = urem i16 %add11.i229, 360
  %rem13.lhs.trunc.i.i231 = add nuw nsw i16 %rem.i45.i230, 360
  %rem134.i.i232 = urem i16 %rem13.lhs.trunc.i.i231, 360
  %rem13.zext.i.i233 = zext i16 %rem134.i.i232 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %rem134.i.i232)
  %cmp.i.i.i234 = icmp ugt i16 %rem134.i.i232, 180
  %sub.i.i.i235 = add nsw i32 %rem13.zext.i.i233, -180
  %spec.select.i.i.i236 = select i1 %cmp.i.i.i234, i32 %sub.i.i.i235, i32 %rem13.zext.i.i233
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %spec.select.i.i.i236)
  %cmp1.i.i.i237 = icmp ugt i32 %spec.select.i.i.i236, 90
  %sub3.i.i.i238 = sub nuw nsw i32 180, %spec.select.i.i.i236
  %degrees.addr.1.i.i.i239 = select i1 %cmp1.i.i.i237, i32 %sub3.i.i.i238, i32 %spec.select.i.i.i236
  %arrayidx.i.i.i240 = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %degrees.addr.1.i.i.i239
  %35 = ptrtoint ptr %arrayidx.i.i.i240 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i240, align 4
  %sub5.i.i.i241 = sub i32 0, %36
  %cond.i.i.i242 = select i1 %cmp.i.i.i234, i32 %sub5.i.i.i241, i32 %36
  %sub14.i243 = sub i32 %cond.i.i.i242, %cond.i.i228
  %conv15.i244 = sext i32 %sub14.i243 to i64
  %mul16.i245 = mul nsw i64 %conv15.i244, %conv.i214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i208) #11
  %37 = ptrtoint ptr %remainder.i.i208 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %remainder.i.i208, align 4, !annotation !69
  %call.i.i246 = call i64 @div_s64_rem(i64 noundef %mul16.i245, i32 noundef 571, ptr noundef nonnull %remainder.i.i208) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i208) #11
  %38 = trunc i64 %call.i.i246 to i32
  %conv20.i247 = add i32 %cond.i.i228, %38
  %shr27 = ashr i32 %conv20.i207, 16
  %shr28 = ashr i32 %conv20.i247, 16
  %39 = ptrtoint ptr %sdr_pixelformat to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sdr_pixelformat, align 8
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %40, label %for.body.for.inc_crit_edge [
    i32 942691651, label %sw.bb
    i32 942691139, label %sw.bb69
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %mul29 = mul nsw i32 %shr27, 1275
  %mul31 = mul nsw i32 %shr28, 1275
  call void @__sanitizer_cov_trace_const_cmp4(i32 -41779200, i32 %mul29)
  %cmp36 = icmp sgt i32 %mul29, -41779200
  %cond.in.v = select i1 %cmp36, i32 41943040, i32 41615360
  %cond.in = add nsw i32 %cond.in.v, %mul29
  %cond = sdiv i32 %cond.in, 327680
  %conv47 = trunc i32 %cond to i8
  %incdec.ptr = getelementptr i8, ptr %vbuf.0251, i32 1
  %42 = ptrtoint ptr %vbuf.0251 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv47, ptr %vbuf.0251, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -41779200, i32 %mul31)
  %cmp51 = icmp sgt i32 %mul31, -41779200
  %add59 = add nsw i32 %mul31, 41943040
  %div60248 = udiv i32 %add59, 327680
  %43 = trunc i32 %div60248 to i8
  %conv67 = select i1 %cmp51, i8 %43, i8 0
  %incdec.ptr68 = getelementptr i8, ptr %vbuf.0251, i32 2
  %44 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv67, ptr %incdec.ptr, align 1
  br label %for.inc

sw.bb69:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %mul70 = mul nsw i32 %shr27, 1275
  %mul72 = mul nsw i32 %shr28, 1275
  call void @__sanitizer_cov_trace_const_cmp4(i32 163840, i32 %mul70)
  %cmp77 = icmp sgt i32 %mul70, 163840
  %sub89 = add nsw i32 %mul70, -327680
  %cond92.in = select i1 %cmp77, i32 %mul70, i32 %sub89
  %cond92 = sdiv i32 %cond92.in, 327680
  %conv93 = trunc i32 %cond92 to i8
  %incdec.ptr94 = getelementptr i8, ptr %vbuf.0251, i32 1
  %45 = ptrtoint ptr %vbuf.0251 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv93, ptr %vbuf.0251, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 163840, i32 %mul72)
  %cmp98 = icmp sgt i32 %mul72, 163840
  %sub110 = add nsw i32 %mul72, -327680
  %cond113.in = select i1 %cmp98, i32 %mul72, i32 %sub110
  %cond113 = sdiv i32 %cond113.in, 327680
  %conv114 = trunc i32 %cond113 to i8
  %incdec.ptr115 = getelementptr i8, ptr %vbuf.0251, i32 2
  %46 = ptrtoint ptr %incdec.ptr94 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv114, ptr %incdec.ptr94, align 1
  br label %for.inc

for.inc:                                          ; preds = %sw.bb69, %sw.bb, %for.body.for.inc_crit_edge
  %vbuf.1 = phi ptr [ %vbuf.0251, %for.body.for.inc_crit_edge ], [ %incdec.ptr115, %sw.bb69 ], [ %incdec.ptr68, %sw.bb ]
  %add116 = add i32 %i.0250, 2
  %cmp = icmp ult i32 %add116, %3
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %vb2_plane_size.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_thread_sdr_cap(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %0 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call zeroext i1 @set_freezable() #11
  %sdr_cap_seq_offset = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 331
  %seq_wrap = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 158
  %1 = ptrtoint ptr %seq_wrap to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %seq_wrap, align 2, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %spec.store.select = select i1 %tobool.not, i32 0, i32 -128
  %3 = ptrtoint ptr %sdr_cap_seq_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.store.select, ptr %sdr_cap_seq_offset, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %jiffies_sdr_cap = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 330
  %5 = ptrtoint ptr %jiffies_sdr_cap to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %jiffies_sdr_cap, align 8
  %sdr_cap_seq_resync = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 333
  %6 = ptrtoint ptr %sdr_cap_seq_resync to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %sdr_cap_seq_resync, align 4
  %mutex = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 39
  %sdr_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 332
  %sdr_adc_freq = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 317
  %name.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 1, i32 4
  %perc_dropped_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 161
  %slock.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 38
  %sdr_cap_active.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 314
  %ctrl_hdl_sdr_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 31
  %time_wrap_offset.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 160
  %dqbuf_error.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 156
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %do.end3
  %7 = tail call i32 @llvm.read_register.i32(metadata !57) #11
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.if.end.i_crit_edge

for.cond.if.end.i_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_check_no_locks_held() #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.cond.if.end.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 57) #11
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #11
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %17 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !68

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %16) #11
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !70

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #11
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  %call9 = tail call zeroext i1 @kthread_should_stop() #11
  br i1 %call9, label %do.body476, label %if.end11

if.end11:                                         ; preds = %try_to_freeze.exit
  %call12 = tail call i32 @mutex_trylock(ptr noundef %mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @schedule() #11
  br label %for.cond.backedge

if.end15:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %sdr_cap_seq_resync to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sdr_cap_seq_resync, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not = icmp eq i8 %20, 0
  br i1 %tobool17.not, label %if.end15.if.end215_crit_edge, label %if.then18

if.end15.if.end215_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %jiffies_sdr_cap to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %jiffies_sdr_cap, align 8
  %22 = ptrtoint ptr %sdr_cap_seq_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sdr_cap_seq_count, align 8
  %add = add i32 %23, 1
  %24 = ptrtoint ptr %sdr_cap_seq_offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %sdr_cap_seq_offset, align 4
  %25 = ptrtoint ptr %sdr_cap_seq_resync to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %sdr_cap_seq_resync, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then18, %if.end15.if.end215_crit_edge
  %26 = ptrtoint ptr %jiffies_sdr_cap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %jiffies_sdr_cap, align 8
  %sub = sub i32 %18, %27
  %conv = zext i32 %sub to i64
  %28 = ptrtoint ptr %sdr_adc_freq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sdr_adc_freq, align 8
  %conv25 = zext i32 %29 to i64
  %mul = mul nuw i64 %conv, %conv25
  %add26 = add nuw i64 %mul, 819200
  %30 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %add26, i32 0) #15, !srcloc !71
  %asmresult.i = extractvalue { i64, i32 } %30, 0
  %asmresult4.i = extractvalue { i64, i32 } %30, 1
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %add26, i64 %asmresult.i, i32 %asmresult4.i) #15, !srcloc !72
  %asmresult10.i = extractvalue { i64, i32 } %31, 0
  %buffers_since_start.0 = lshr i64 %asmresult10.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268727296, i32 %sub)
  %cmp217 = icmp ugt i32 %sub, -268727296
  br i1 %cmp217, label %if.then219, label %if.end215.if.end223_crit_edge

if.end215.if.end223_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end223

if.then219:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %jiffies_sdr_cap to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %18, ptr %jiffies_sdr_cap, align 8
  %conv221 = trunc i64 %buffers_since_start.0 to i32
  %33 = ptrtoint ptr %sdr_cap_seq_offset to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv221, ptr %sdr_cap_seq_offset, align 4
  br label %if.end223

if.end223:                                        ; preds = %if.then219, %if.end215.if.end223_crit_edge
  %buffers_since_start.1 = phi i64 [ 0, %if.then219 ], [ %buffers_since_start.0, %if.end215.if.end223_crit_edge ]
  %34 = ptrtoint ptr %sdr_cap_seq_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sdr_cap_seq_offset, align 4
  %36 = trunc i64 %buffers_since_start.1 to i32
  %conv227 = add i32 %35, %36
  %37 = ptrtoint ptr %sdr_cap_seq_count to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv227, ptr %sdr_cap_seq_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %38 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.i = icmp eq i32 %38, 0
  br i1 %cmp.not.i, label %if.end223.do.end3.i_crit_edge, label %do.end.i

if.end223.do.end3.i_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name.i) #14
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end223.do.end3.i_crit_edge
  %39 = ptrtoint ptr %perc_dropped_buffers.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %perc_dropped_buffers.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i684 = icmp eq i32 %40, 0
  br i1 %tobool.not.i684, label %do.end3.i.if.end8.i_crit_edge, label %land.lhs.true.i

do.end3.i.if.end8.i_crit_edge:                    ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %do.end3.i
  %call.i.i = tail call i32 @prandom_u32() #11
  %conv.i.i = zext i32 %call.i.i to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 100
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %41 = ptrtoint ptr %perc_dropped_buffers.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %perc_dropped_buffers.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv2.i.i)
  %cmp6.i = icmp ugt i32 %42, %conv2.i.i
  br i1 %cmp6.i, label %land.lhs.true.i.vivid_thread_sdr_cap_tick.exit_crit_edge, label %land.lhs.true.i.if.end8.i_crit_edge

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true.i.vivid_thread_sdr_cap_tick.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vivid_thread_sdr_cap_tick.exit

if.end8.i:                                        ; preds = %land.lhs.true.i.if.end8.i_crit_edge, %do.end3.i.if.end8.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %slock.i) #11
  %43 = ptrtoint ptr %sdr_cap_active.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %sdr_cap_active.i, align 4
  %cmp.i.not.i = icmp eq ptr %44, %sdr_cap_active.i
  br i1 %cmp.i.not.i, label %if.end14.thread.i, label %if.then11.i

if.end14.thread.i:                                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %slock.i) #11
  br label %vivid_thread_sdr_cap_tick.exit

if.then11.i:                                      ; preds = %if.end8.i
  %add.ptr.i = getelementptr i8, ptr %44, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %44) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then11.i.if.end14.i_crit_edge

if.then11.i.if.end14.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.end.i.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end.i.i.i, %if.then11.i.if.end14.i_crit_edge
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %slock.i) #11
  %tobool16.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool16.not.i, label %if.end14.i.vivid_thread_sdr_cap_tick.exit_crit_edge, label %if.then17.i

if.end14.i.vivid_thread_sdr_cap_tick.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vivid_thread_sdr_cap_tick.exit

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %sdr_cap_seq_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sdr_cap_seq_count, align 8
  %sequence.i = getelementptr i8, ptr %44, i32 -272
  %55 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %sequence.i, align 8
  %req.i = getelementptr i8, ptr %44, i32 -692
  %56 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %req.i, align 4
  %call19.i = tail call i32 @v4l2_ctrl_request_setup(ptr noundef %57, ptr noundef %ctrl_hdl_sdr_cap.i) #11
  %58 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %req.i, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %59, ptr noundef %ctrl_hdl_sdr_cap.i) #11
  tail call void @vivid_sdr_cap_process(ptr noundef %data, ptr noundef nonnull %add.ptr.i) #11
  %call.i54.i = tail call i64 @ktime_get() #11
  %60 = ptrtoint ptr %time_wrap_offset.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %time_wrap_offset.i, align 8
  %add.i = add i64 %61, %call.i54.i
  %timestamp.i = getelementptr i8, ptr %44, i32 -712
  %62 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %add.i, ptr %timestamp.i, align 8
  %63 = ptrtoint ptr %dqbuf_error.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dqbuf_error.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool30.not.i = icmp eq i8 %64, 0
  %cond.i = select i1 %tobool30.not.i, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %add.ptr.i, i32 noundef %cond.i) #11
  %65 = ptrtoint ptr %dqbuf_error.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %dqbuf_error.i, align 4
  br label %vivid_thread_sdr_cap_tick.exit

vivid_thread_sdr_cap_tick.exit:                   ; preds = %if.then17.i, %if.end14.i.vivid_thread_sdr_cap_tick.exit_crit_edge, %if.end14.thread.i, %land.lhs.true.i.vivid_thread_sdr_cap_tick.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %67 = ptrtoint ptr %jiffies_sdr_cap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %jiffies_sdr_cap, align 8
  %sub232 = sub i32 %66, %68
  %69 = mul i64 %buffers_since_start.1, 1638400
  %mul234 = add i64 %69, 1638400
  %70 = ptrtoint ptr %sdr_adc_freq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sdr_adc_freq, align 8
  %div236682 = lshr i32 %71, 1
  %conv237 = zext i32 %div236682 to i64
  %add238 = add i64 %mul234, %conv237
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add238)
  %cmp441 = icmp ult i64 %add238, 4294967296
  br i1 %cmp441, label %if.then449, label %if.else455, !prof !68

if.then449:                                       ; preds = %vivid_thread_sdr_cap_tick.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv450 = trunc i64 %add238 to i32
  %div453 = udiv i32 %conv450, %71
  %conv454 = zext i32 %div453 to i64
  br label %if.end459

if.else455:                                       ; preds = %vivid_thread_sdr_cap_tick.exit
  call void @__sanitizer_cov_trace_pc() #13
  %72 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %71, i64 %add238) #15, !srcloc !73
  %asmresult1.i = extractvalue { i64, i64 } %72, 1
  br label %if.end459

if.end459:                                        ; preds = %if.else455, %if.then449
  %next_jiffies_since_start.0 = phi i64 [ %conv454, %if.then449 ], [ %asmresult1.i, %if.else455 ]
  %conv461 = zext i32 %sub232 to i64
  %73 = tail call i64 @llvm.umax.i64(i64 %next_jiffies_since_start.0, i64 %conv461)
  %74 = trunc i64 %73 to i32
  %conv469 = sub i32 %74, %sub232
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %sub470714 = sub i32 %75, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub470714, i32 %conv469)
  %cmp471715 = icmp ult i32 %sub470714, %conv469
  br i1 %cmp471715, label %if.end459.land.rhs_crit_edge, label %if.end459.for.cond.backedge_crit_edge

if.end459.for.cond.backedge_crit_edge:            ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

if.end459.land.rhs_crit_edge:                     ; preds = %if.end459
  br label %land.rhs

for.cond.backedge:                                ; preds = %while.body.for.cond.backedge_crit_edge, %land.rhs.for.cond.backedge_crit_edge, %if.end459.for.cond.backedge_crit_edge, %if.then14
  br label %for.cond

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end459.land.rhs_crit_edge
  %call473 = tail call zeroext i1 @kthread_should_stop() #11
  br i1 %call473, label %land.rhs.for.cond.backedge_crit_edge, label %while.body

land.rhs.for.cond.backedge_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

while.body:                                       ; preds = %land.rhs
  tail call void @schedule() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %sub470 = sub i32 %76, %18
  %cmp471 = icmp ult i32 %sub470, %conv469
  br i1 %cmp471, label %while.body.land.rhs_crit_edge, label %while.body.for.cond.backedge_crit_edge

while.body.for.cond.backedge_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

do.body476:                                       ; preds = %try_to_freeze.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %77 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp477.not = icmp eq i32 %77, 0
  br i1 %cmp477.not, label %do.body476.do.end490_crit_edge, label %do.end482

do.body476.do.end490_crit_edge:                   ; preds = %do.body476
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end490

do.end482:                                        ; preds = %do.body476
  call void @__sanitizer_cov_trace_pc() #13
  %call487 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i) #14
  br label %do.end490

do.end490:                                        ; preds = %do.end482, %do.body476.do.end490_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_request_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !55}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @vivid_sdr_cap_qops, !1, !"vivid_sdr_cap_qops", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 323, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 417, i32 21}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 425, i32 21}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 227, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sdr_cap_buf_prepare._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @sdr_cap_buf_prepare._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 238, i32 3}
!14 = !{ptr @sdr_cap_buf_prepare._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sdr_cap_buf_prepare._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 265, i32 2}
!21 = !{ptr @sdr_cap_start_streaming._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @sdr_cap_start_streaming._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 271, i32 26}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 275, i32 4}
!27 = !{ptr @sdr_cap_start_streaming._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sdr_cap_start_streaming._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 128, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @vivid_thread_sdr_cap._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @vivid_thread_sdr_cap._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 208, i32 2}
!36 = !{ptr @vivid_thread_sdr_cap._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @vivid_thread_sdr_cap._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 88, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @vivid_thread_sdr_cap_tick._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @vivid_thread_sdr_cap_tick._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 253, i32 2}
!47 = !{ptr @sdr_cap_buf_queue._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sdr_cap_buf_queue._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @bands_adc, !50, !"bands_adc", i1 false, i1 false}
!50 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 42, i32 41}
!51 = !{ptr @bands_fm, !52, !"bands_fm", i1 false, i1 false}
!52 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 73, i32 41}
!53 = !{ptr @formats, !54, !"formats", i1 false, i1 false}
!54 = !{!"../drivers/media/test-drivers/vivid/vivid-sdr-cap.c", i32 32, i32 34}
!55 = !{ptr @sin_table, !56, !"sin_table", i1 false, i1 false}
!56 = !{!"../include/linux/fixp-arith.h", i32 22, i32 18}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i8 0, i8 2}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{!"auto-init"}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 1129644, i64 1129671, i64 1129693, i64 1129721}
!72 = !{i64 1130052, i64 1130079, i64 1130112, i64 1130133, i64 1130160, i64 1130186}
!73 = !{i64 2148615188, i64 2148615468, i64 2148615802, i64 2148616136}
