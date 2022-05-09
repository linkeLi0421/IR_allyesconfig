; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-kthread-cap.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-kthread-cap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.114, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.115, %struct.anon.116, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.114 = type { ptr, ptr }
%struct.anon.115 = type { ptr, ptr }
%struct.anon.116 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.117, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.117 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.96 }
%struct.anon.96 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.109 }
%union.anon.109 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.91, i32, i32 }
%union.anon.91 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vivid_fmt = type { i32, i32, i8, [3 x i8], i32, i8, i8, [3 x i32], [3 x i32] }

@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@vivid_start_generating_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vivid_start_generating_vid_cap\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/media/test-drivers/vivid/vivid-kthread-cap.c\00", [43 x i8] zeroinitializer }, align 32
@vivid_start_generating_vid_cap._entry_ptr = internal global ptr @vivid_start_generating_vid_cap._entry, section ".printk_index", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-vid-cap\00", [21 x i8] zeroinitializer }, align 32
@vivid_start_generating_vid_cap._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: kernel_thread() failed\0A\00", [34 x i8] zeroinitializer }, align 32
@vivid_start_generating_vid_cap._entry_ptr.6 = internal global ptr @vivid_start_generating_vid_cap._entry.4, section ".printk_index", align 4
@vivid_start_generating_vid_cap._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: returning from %s\0A\00", [39 x i8] zeroinitializer }, align 32
@vivid_start_generating_vid_cap._entry_ptr.9 = internal global ptr @vivid_start_generating_vid_cap._entry.7, section ".printk_index", align 4
@vivid_stop_generating_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.10, ptr @.str.2, i32 951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vivid_stop_generating_vid_cap\00", [34 x i8] zeroinitializer }, align 32
@vivid_stop_generating_vid_cap._entry_ptr = internal global ptr @vivid_stop_generating_vid_cap._entry, section ".printk_index", align 4
@vivid_stop_generating_vid_cap._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: vid_cap buffer %d done\0A\00", [34 x i8] zeroinitializer }, align 32
@vivid_stop_generating_vid_cap._entry_ptr.13 = internal global ptr @vivid_stop_generating_vid_cap._entry.11, section ".printk_index", align 4
@vivid_stop_generating_vid_cap._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: vbi_cap buffer %d done\0A\00", [34 x i8] zeroinitializer }, align 32
@vivid_stop_generating_vid_cap._entry_ptr.16 = internal global ptr @vivid_stop_generating_vid_cap._entry.14, section ".printk_index", align 4
@vivid_stop_generating_vid_cap._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: meta_cap buffer %d done\0A\00", [33 x i8] zeroinitializer }, align 32
@vivid_stop_generating_vid_cap._entry_ptr.19 = internal global ptr @vivid_stop_generating_vid_cap._entry.17, section ".printk_index", align 4
@vivid_thread_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Video Capture Thread Start\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vivid_thread_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@vivid_thread_vid_cap._entry_ptr = internal global ptr @vivid_thread_vid_cap._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@vivid_thread_vid_cap._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Video Capture Thread End\0A\00", [32 x i8] zeroinitializer }, align 32
@vivid_thread_vid_cap._entry_ptr.24 = internal global ptr @vivid_thread_vid_cap._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@vivid_thread_vid_cap_tick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Video Capture Thread Tick\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vivid_thread_vid_cap_tick\00", [38 x i8] zeroinitializer }, align 32
@vivid_thread_vid_cap_tick._entry_ptr = internal global ptr @vivid_thread_vid_cap_tick._entry, section ".printk_index", align 4
@vivid_thread_vid_cap_tick._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: filled buffer %d\0A\00", [40 x i8] zeroinitializer }, align 32
@vivid_thread_vid_cap_tick._entry_ptr.30 = internal global ptr @vivid_thread_vid_cap_tick._entry.28, section ".printk_index", align 4
@vivid_thread_vid_cap_tick._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.27, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vivid_thread_vid_cap_tick._entry_ptr.32 = internal global ptr @vivid_thread_vid_cap_tick._entry.31, section ".printk_index", align 4
@vivid_thread_vid_cap_tick._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.27, ptr @.str.2, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: vbi_cap %d done\0A\00", [41 x i8] zeroinitializer }, align 32
@vivid_thread_vid_cap_tick._entry_ptr.35 = internal global ptr @vivid_thread_vid_cap_tick._entry.33, section ".printk_index", align 4
@vivid_thread_vid_cap_tick._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.27, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: meta_cap %d done\0A\00", [40 x i8] zeroinitializer }, align 32
@vivid_thread_vid_cap_tick._entry_ptr.38 = internal global ptr @vivid_thread_vid_cap_tick._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" %02d:%02d:%02d:%03d %u%s\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" top\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" bottom\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" %dx%d, input %d \00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c" brightness %3d, contrast %3d, saturation %3d, hue %d \00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" autogain %d, gain %3d, alpha 0x%02x \00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" volume %3d, mute %d \00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c" int32 %d, ro_int32 %d, int64 %lld, bitmask %08x \00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" boolean %d, menu %s, string \22%s\22 \00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c" integer_menu %lld, value %d \00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" button pressed!\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" OSD \22%s\22\00", [22 x i8] zeroinitializer }, align 32
@vivid_precalc_copy_rects._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\017%s: loop_vid_copy: %dx%d@%dx%d loop_vid_out: %dx%d@%dx%d loop_vid_cap: %dx%d@%dx%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vivid_precalc_copy_rects\00", [39 x i8] zeroinitializer }, align 32
@vivid_precalc_copy_rects._entry_ptr = internal global ptr @vivid_precalc_copy_rects._entry, section ".printk_index", align 4
@vivid_precalc_copy_rects._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\017%s: loop_fb_copy: %dx%d@%dx%d loop_vid_overlay: %dx%d@%dx%d loop_vid_overlay_cap: %dx%d@%dx%d\0A\00", [63 x i8] zeroinitializer }, align 32
@vivid_precalc_copy_rects._entry_ptr.56 = internal global ptr @vivid_precalc_copy_rects._entry.54, section ".printk_index", align 4
@switch.table.vivid_thread_vid_cap_tick = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8, i32 8, i32 16, i32 16, i32 16, i32 8], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 910, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 932, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 939, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 945, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 951, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 968, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 983, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 998, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 806, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 897, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 57, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 686, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 730, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 742, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 763, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 780, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 482, i32 30 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 490, i32 7 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 490, i32 16 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 490, i32 29 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 494, i32 30 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 501, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 508, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 514, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 519, i32 30 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 525, i32 30 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 530, i32 30 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 537, i32 31 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 543, i32 7 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 187, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [56 x i8] c"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 212, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [39 x i8] c"switch.table.vivid_thread_vid_cap_tick\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @vivid_precalc_copy_rects._entry, ptr @vivid_precalc_copy_rects._entry.54, ptr @vivid_precalc_copy_rects._entry_ptr, ptr @vivid_precalc_copy_rects._entry_ptr.56, ptr @vivid_start_generating_vid_cap._entry, ptr @vivid_start_generating_vid_cap._entry.4, ptr @vivid_start_generating_vid_cap._entry.7, ptr @vivid_start_generating_vid_cap._entry_ptr, ptr @vivid_start_generating_vid_cap._entry_ptr.6, ptr @vivid_start_generating_vid_cap._entry_ptr.9, ptr @vivid_stop_generating_vid_cap._entry, ptr @vivid_stop_generating_vid_cap._entry.11, ptr @vivid_stop_generating_vid_cap._entry.14, ptr @vivid_stop_generating_vid_cap._entry.17, ptr @vivid_stop_generating_vid_cap._entry_ptr, ptr @vivid_stop_generating_vid_cap._entry_ptr.13, ptr @vivid_stop_generating_vid_cap._entry_ptr.16, ptr @vivid_stop_generating_vid_cap._entry_ptr.19, ptr @vivid_thread_vid_cap._entry, ptr @vivid_thread_vid_cap._entry.22, ptr @vivid_thread_vid_cap._entry_ptr, ptr @vivid_thread_vid_cap._entry_ptr.24, ptr @vivid_thread_vid_cap_tick._entry, ptr @vivid_thread_vid_cap_tick._entry.28, ptr @vivid_thread_vid_cap_tick._entry.31, ptr @vivid_thread_vid_cap_tick._entry.33, ptr @vivid_thread_vid_cap_tick._entry.36, ptr @vivid_thread_vid_cap_tick._entry_ptr, ptr @vivid_thread_vid_cap_tick._entry_ptr.30, ptr @vivid_thread_vid_cap_tick._entry_ptr.32, ptr @vivid_thread_vid_cap_tick._entry_ptr.35, ptr @vivid_thread_vid_cap_tick._entry_ptr.38, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @switch.table.vivid_thread_vid_cap_tick], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_start_generating_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_start_generating_vid_cap._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_start_generating_vid_cap._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_stop_generating_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_stop_generating_vid_cap._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_stop_generating_vid_cap._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_stop_generating_vid_cap._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_vid_cap._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_vid_cap_tick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_vid_cap_tick._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_vid_cap_tick._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_vid_cap_tick._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_vid_cap_tick._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_precalc_copy_rects._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_precalc_copy_rects._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vivid_thread_vid_cap_tick to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_start_generating_vid_cap(ptr noundef %dev, ptr noundef writeonly %pstreaming) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %0 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1) #11
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %kthread_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 250
  %1 = ptrtoint ptr %kthread_vid_cap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kthread_vid_cap, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end14, label %if.then3

if.then3:                                         ; preds = %do.end2
  %cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 256
  %3 = ptrtoint ptr %cap_seq_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cap_seq_count, align 4
  %seq_wrap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 158
  %5 = ptrtoint ptr %seq_wrap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %seq_wrap, align 2, !range !108
  %7 = shl nuw i8 %6, 7
  %mul = zext i8 %7 to i32
  %add = add i32 %4, %mul
  %vid_cap_streaming = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 260
  %cmp5 = icmp eq ptr %vid_cap_streaming, %pstreaming
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %vid_cap_seq_start = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 258
  %8 = ptrtoint ptr %vid_cap_seq_start to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %vid_cap_seq_start, align 4
  br label %if.end13

if.else:                                          ; preds = %if.then3
  %vbi_cap_streaming = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 263
  %cmp8 = icmp eq ptr %vbi_cap_streaming, %pstreaming
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %vbi_cap_seq_start = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 261
  %9 = ptrtoint ptr %vbi_cap_seq_start to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %vbi_cap_seq_start, align 8
  br label %if.end13

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %meta_cap_seq_start = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 264
  %10 = ptrtoint ptr %meta_cap_seq_start to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %meta_cap_seq_start, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then10, %if.then7
  %11 = ptrtoint ptr %pstreaming to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %pstreaming, align 1
  br label %return

if.end14:                                         ; preds = %do.end2
  %mv_vert_count.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 57
  %12 = ptrtoint ptr %mv_vert_count.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mv_vert_count.i, align 4
  %mv_hor_count.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 54
  %13 = ptrtoint ptr %mv_hor_count.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %mv_hor_count.i, align 4
  %seq_wrap15 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 158
  %14 = ptrtoint ptr %seq_wrap15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %seq_wrap15, align 2, !range !108
  %16 = shl nuw i8 %15, 7
  %mul18 = zext i8 %16 to i32
  %vid_cap_seq_start19 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 258
  %17 = ptrtoint ptr %vid_cap_seq_start19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul18, ptr %vid_cap_seq_start19, align 4
  %vbi_cap_seq_start24 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 261
  %18 = ptrtoint ptr %vbi_cap_seq_start24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul18, ptr %vbi_cap_seq_start24, align 8
  %meta_cap_seq_start29 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 264
  %19 = ptrtoint ptr %meta_cap_seq_start29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul18, ptr %meta_cap_seq_start29, align 4
  %name31 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %call33 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @vivid_thread_vid_cap, ptr noundef %dev, i32 noundef -1, ptr noundef nonnull @.str.3, ptr noundef %name31) #8
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then42, label %if.end53

if.then42:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call33 to i32
  %21 = ptrtoint ptr %kthread_vid_cap to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %kthread_vid_cap, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name31) #11
  br label %return

if.end53:                                         ; preds = %if.end14
  %call36 = tail call i32 @wake_up_process(ptr noundef %call33) #8
  %22 = ptrtoint ptr %kthread_vid_cap to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call33, ptr %kthread_vid_cap, align 4
  %23 = ptrtoint ptr %pstreaming to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %pstreaming, align 1
  tail call fastcc void @vivid_grab_controls(ptr noundef %dev, i1 noundef zeroext true)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %24 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp55.not = icmp eq i32 %24, 0
  br i1 %cmp55.not, label %if.end53.return_crit_edge, label %do.end60

if.end53.return_crit_edge:                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name31, ptr noundef nonnull @.str.1) #11
  br label %return

return:                                           ; preds = %do.end60, %if.end53.return_crit_edge, %if.then42, %if.end13
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %20, %if.then42 ], [ 0, %if.end53.return_crit_edge ], [ 0, %do.end60 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_thread_vid_cap(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %0 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call zeroext i1 @set_freezable() #8
  %cap_seq_offset = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 255
  %1 = ptrtoint ptr %cap_seq_offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cap_seq_offset, align 8
  %cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 256
  %2 = ptrtoint ptr %cap_seq_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cap_seq_count, align 4
  %cap_seq_resync = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 257
  %3 = ptrtoint ptr %cap_seq_resync to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %cap_seq_resync, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %jiffies_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 251
  %5 = ptrtoint ptr %jiffies_vid_cap to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %jiffies_vid_cap, align 8
  %call.i = tail call i64 @ktime_get() #8
  %cap_stream_start = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 252
  %6 = ptrtoint ptr %cap_stream_start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i, ptr %cap_stream_start, align 8
  %timeperframe_vid_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 235
  %7 = ptrtoint ptr %timeperframe_vid_cap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeperframe_vid_cap.i, align 8
  %conv.i = zext i32 %8 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000000000
  %denominator.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 235, i32 1
  %9 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %denominator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %do.end.i, label %do.end3.if.else197.i_crit_edge, !prof !109

do.end3.if.else197.i_crit_edge:                   ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else197.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 664, i32 noundef 9, ptr noundef null) #8
  %11 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %denominator.i, align 4
  br label %if.else197.i

if.else197.i:                                     ; preds = %do.end.i, %do.end3.if.else197.i_crit_edge
  %12 = phi i32 [ %10, %do.end3.if.else197.i_crit_edge ], [ 1, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp199.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp199.i, label %if.then207.i, label %if.else213.i, !prof !110

if.then207.i:                                     ; preds = %if.else197.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv208.i = trunc i64 %mul.i to i32
  %div211.i = udiv i32 %conv208.i, %12
  %conv212.i = zext i32 %div211.i to i64
  br label %vivid_cap_update_frame_period.exit

if.else213.i:                                     ; preds = %if.else197.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %mul.i) #12, !srcloc !111
  %asmresult1.i.i = extractvalue { i64, i64 } %13, 1
  br label %vivid_cap_update_frame_period.exit

vivid_cap_update_frame_period.exit:               ; preds = %if.else213.i, %if.then207.i
  %f_period.0.i = phi i64 [ %conv212.i, %if.then207.i ], [ %asmresult1.i.i, %if.else213.i ]
  %field_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 236
  %14 = ptrtoint ptr %field_cap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %field_cap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %15)
  %cmp219.i = icmp eq i32 %15, 7
  %shr222.i = zext i1 %cmp219.i to i64
  %spec.select.i = lshr i64 %f_period.0.i, %shr222.i
  %mul224.i = mul i64 %spec.select.i, 9
  %cap_frame_eof_offset.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 254
  %div339633.i = lshr i64 %mul224.i, 1
  %16 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div339633.i, i64 3689348814741910323) #12, !srcloc !112
  %17 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div339633.i, i64 %16) #12, !srcloc !113
  %18 = ptrtoint ptr %cap_frame_eof_offset.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %cap_frame_eof_offset.i, align 8
  %cap_frame_period.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 253
  %19 = ptrtoint ptr %cap_frame_period.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %spec.select.i, ptr %cap_frame_period.i, align 8
  %mutex = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 39
  %vid_cap_seq_start = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 258
  %vid_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 259
  %vbi_cap_seq_start = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 261
  %vbi_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 262
  %meta_cap_seq_start = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 264
  %meta_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 265
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %vivid_cap_update_frame_period.exit
  %20 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i731 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i731 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %25, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.if.end.i_crit_edge

for.cond.if.end.i_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_check_no_locks_held() #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.cond.if.end.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 57) #8
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %30 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !110

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %29) #8
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !109

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #8
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  %call7 = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call7, label %do.body502, label %if.end9

if.end9:                                          ; preds = %try_to_freeze.exit
  %call10 = tail call i32 @mutex_trylock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @schedule() #8
  br label %for.cond.backedge

if.end12:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = ptrtoint ptr %cap_seq_resync to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cap_seq_resync, align 8, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool14.not = icmp eq i8 %33, 0
  br i1 %tobool14.not, label %if.end12.if.end24_crit_edge, label %if.then15

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then15:                                        ; preds = %if.end12
  %34 = ptrtoint ptr %jiffies_vid_cap to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %jiffies_vid_cap, align 8
  %35 = ptrtoint ptr %cap_seq_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cap_seq_count, align 4
  %add = add i32 %36, 1
  %37 = ptrtoint ptr %cap_seq_offset to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %cap_seq_offset, align 8
  store i32 0, ptr %cap_seq_count, align 4
  %38 = ptrtoint ptr %cap_frame_period.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %cap_frame_period.i, align 8
  %conv = zext i32 %add to i64
  %mul = mul i64 %39, %conv
  %40 = ptrtoint ptr %cap_stream_start to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %cap_stream_start, align 8
  %add22 = add i64 %41, %mul
  store i64 %add22, ptr %cap_stream_start, align 8
  %42 = ptrtoint ptr %timeperframe_vid_cap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %timeperframe_vid_cap.i, align 8
  %conv.i733 = zext i32 %43 to i64
  %mul.i734 = mul nuw nsw i64 %conv.i733, 1000000000
  %44 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %denominator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i736 = icmp eq i32 %45, 0
  br i1 %cmp.i736, label %do.end.i737, label %if.then15.if.else197.i843_crit_edge, !prof !109

if.then15.if.else197.i843_crit_edge:              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else197.i843

do.end.i737:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 664, i32 noundef 9, ptr noundef null) #8
  %46 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %denominator.i, align 4
  br label %if.else197.i843

if.else197.i843:                                  ; preds = %do.end.i737, %if.then15.if.else197.i843_crit_edge
  %47 = phi i32 [ %45, %if.then15.if.else197.i843_crit_edge ], [ 1, %do.end.i737 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i734)
  %cmp199.i842 = icmp ult i64 %mul.i734, 4294967296
  br i1 %cmp199.i842, label %if.then207.i847, label %if.else213.i849, !prof !110

if.then207.i847:                                  ; preds = %if.else197.i843
  call void @__sanitizer_cov_trace_pc() #10
  %conv208.i844 = trunc i64 %mul.i734 to i32
  %div211.i845 = udiv i32 %conv208.i844, %47
  %conv212.i846 = zext i32 %div211.i845 to i64
  br label %vivid_cap_update_frame_period.exit859

if.else213.i849:                                  ; preds = %if.else197.i843
  call void @__sanitizer_cov_trace_pc() #10
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %47, i64 %mul.i734) #12, !srcloc !111
  %asmresult1.i.i848 = extractvalue { i64, i64 } %48, 1
  br label %vivid_cap_update_frame_period.exit859

vivid_cap_update_frame_period.exit859:            ; preds = %if.else213.i849, %if.then207.i847
  %f_period.0.i850 = phi i64 [ %conv212.i846, %if.then207.i847 ], [ %asmresult1.i.i848, %if.else213.i849 ]
  %49 = ptrtoint ptr %field_cap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %field_cap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %50)
  %cmp219.i852 = icmp eq i32 %50, 7
  %shr222.i853 = zext i1 %cmp219.i852 to i64
  %spec.select.i854 = lshr i64 %f_period.0.i850, %shr222.i853
  %mul224.i855 = mul i64 %spec.select.i854, 9
  %div339633.i857 = lshr i64 %mul224.i855, 1
  %51 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div339633.i857, i64 3689348814741910323) #12, !srcloc !112
  %52 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div339633.i857, i64 %51) #12, !srcloc !113
  %53 = ptrtoint ptr %cap_frame_eof_offset.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %cap_frame_eof_offset.i, align 8
  %54 = ptrtoint ptr %cap_frame_period.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %spec.select.i854, ptr %cap_frame_period.i, align 8
  %55 = ptrtoint ptr %cap_seq_resync to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %cap_seq_resync, align 8
  br label %if.end24

if.end24:                                         ; preds = %vivid_cap_update_frame_period.exit859, %if.end12.if.end24_crit_edge
  %56 = ptrtoint ptr %timeperframe_vid_cap.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %timeperframe_vid_cap.i, align 8
  %58 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %denominator.i, align 4
  %60 = ptrtoint ptr %field_cap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %field_cap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %61)
  %cmp28 = icmp eq i32 %61, 7
  %mul31 = zext i1 %cmp28 to i32
  %spec.select = shl i32 %59, %mul31
  %62 = ptrtoint ptr %jiffies_vid_cap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %jiffies_vid_cap, align 8
  %sub = sub i32 %31, %63
  %conv34 = zext i32 %sub to i64
  %conv35 = zext i32 %spec.select to i64
  %mul36 = mul nuw i64 %conv35, %conv34
  %mul37 = mul i32 %57, 100
  %div727 = lshr exact i32 %mul37, 1
  %conv38 = zext i32 %div727 to i64
  %add39 = add nuw i64 %mul36, %conv38
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add39)
  %cmp216 = icmp ult i64 %add39, 4294967296
  br i1 %cmp216, label %if.then220, label %if.else226, !prof !110

if.then220:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %conv221 = trunc i64 %add39 to i32
  %div224 = udiv i32 %conv221, %mul37
  %conv225 = zext i32 %div224 to i64
  br label %if.end230

if.else226:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %64 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul37, i64 %add39) #12, !srcloc !111
  %asmresult1.i = extractvalue { i64, i64 } %64, 1
  br label %if.end230

if.end230:                                        ; preds = %if.else226, %if.then220
  %buffers_since_start.0 = phi i64 [ %conv225, %if.then220 ], [ %asmresult1.i, %if.else226 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268727296, i32 %sub)
  %cmp232 = icmp ugt i32 %sub, -268727296
  br i1 %cmp232, label %if.then234, label %if.end230.if.end238_crit_edge

if.end230.if.end238_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end238

if.then234:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %jiffies_vid_cap to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %31, ptr %jiffies_vid_cap, align 8
  %conv236 = trunc i64 %buffers_since_start.0 to i32
  %66 = ptrtoint ptr %cap_seq_offset to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv236, ptr %cap_seq_offset, align 8
  br label %if.end238

if.end238:                                        ; preds = %if.then234, %if.end230.if.end238_crit_edge
  %buffers_since_start.1 = phi i64 [ 0, %if.then234 ], [ %buffers_since_start.0, %if.end230.if.end238_crit_edge ]
  %67 = ptrtoint ptr %cap_seq_offset to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cap_seq_offset, align 8
  %69 = ptrtoint ptr %cap_seq_count to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cap_seq_count, align 4
  %71 = trunc i64 %buffers_since_start.1 to i32
  %72 = add i32 %68, %71
  %conv245 = sub i32 %72, %70
  store i32 %72, ptr %cap_seq_count, align 4
  %73 = ptrtoint ptr %vid_cap_seq_start to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vid_cap_seq_start, align 4
  %sub252 = sub i32 %72, %74
  %75 = ptrtoint ptr %vid_cap_seq_count to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub252, ptr %vid_cap_seq_count, align 8
  %76 = ptrtoint ptr %vbi_cap_seq_start to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %vbi_cap_seq_start, align 8
  %sub254 = sub i32 %72, %77
  %78 = ptrtoint ptr %vbi_cap_seq_count to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub254, ptr %vbi_cap_seq_count, align 4
  %79 = ptrtoint ptr %meta_cap_seq_start to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %meta_cap_seq_start, align 4
  %sub256 = sub i32 %72, %80
  %81 = ptrtoint ptr %meta_cap_seq_count to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub256, ptr %meta_cap_seq_count, align 8
  tail call fastcc void @vivid_thread_vid_cap_tick(ptr noundef %data, i32 noundef %conv245)
  %inc = add i64 %buffers_since_start.1, 1
  %conv257 = zext i32 %57 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %83 = ptrtoint ptr %jiffies_vid_cap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %jiffies_vid_cap, align 8
  %sub260 = sub i32 %82, %84
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %mul258 = mul nuw nsw i64 %conv257, 100
  %mul262 = mul i64 %mul258, %inc
  %div263728 = lshr i32 %spec.select, 1
  %conv264 = zext i32 %div263728 to i64
  %add265 = add i64 %mul262, %conv264
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add265)
  %cmp467 = icmp ult i64 %add265, 4294967296
  br i1 %cmp467, label %if.then475, label %if.else481, !prof !110

if.then475:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #10
  %conv476 = trunc i64 %add265 to i32
  %div479 = udiv i32 %conv476, %spec.select
  %conv480 = zext i32 %div479 to i64
  br label %if.end485

if.else481:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #10
  %85 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select, i64 %add265) #12, !srcloc !111
  %asmresult1.i886 = extractvalue { i64, i64 } %85, 1
  br label %if.end485

if.end485:                                        ; preds = %if.else481, %if.then475
  %next_jiffies_since_start.0 = phi i64 [ %conv480, %if.then475 ], [ %asmresult1.i886, %if.else481 ]
  %conv487 = zext i32 %sub260 to i64
  %86 = tail call i64 @llvm.umax.i64(i64 %next_jiffies_since_start.0, i64 %conv487)
  %87 = trunc i64 %86 to i32
  %conv495 = sub i32 %87, %sub260
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %sub496937 = sub i32 %88, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %sub496937, i32 %conv495)
  %cmp497938 = icmp ult i32 %sub496937, %conv495
  br i1 %cmp497938, label %if.end485.land.rhs_crit_edge, label %if.end485.for.cond.backedge_crit_edge

if.end485.for.cond.backedge_crit_edge:            ; preds = %if.end485
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end485.land.rhs_crit_edge:                     ; preds = %if.end485
  br label %land.rhs

for.cond.backedge:                                ; preds = %while.body.for.cond.backedge_crit_edge, %land.rhs.for.cond.backedge_crit_edge, %if.end485.for.cond.backedge_crit_edge, %if.then11
  br label %for.cond

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end485.land.rhs_crit_edge
  %call499 = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call499, label %land.rhs.for.cond.backedge_crit_edge, label %while.body

land.rhs.for.cond.backedge_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

while.body:                                       ; preds = %land.rhs
  tail call void @schedule() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %sub496 = sub i32 %89, %31
  %cmp497 = icmp ult i32 %sub496, %conv495
  br i1 %cmp497, label %while.body.land.rhs_crit_edge, label %while.body.for.cond.backedge_crit_edge

while.body.for.cond.backedge_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

do.body502:                                       ; preds = %try_to_freeze.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %90 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp503.not = icmp eq i32 %90, 0
  br i1 %cmp503.not, label %do.body502.do.end516_crit_edge, label %do.end508

do.body502.do.end516_crit_edge:                   ; preds = %do.body502
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end516

do.end508:                                        ; preds = %do.body502
  call void @__sanitizer_cov_trace_pc() #10
  %name511 = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 1, i32 4
  %call513 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name511) #11
  br label %do.end516

do.end516:                                        ; preds = %do.end508, %do.body502.do.end516_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vivid_grab_controls(ptr nocapture noundef readonly %dev, i1 noundef zeroext %grab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_has_crop_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 102
  %0 = ptrtoint ptr %ctrl_has_crop_cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_has_crop_cap, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.v4l2_ctrl_grab.exit_crit_edge, label %if.end.i

entry.v4l2_ctrl_grab.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_ctrl_grab.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #8
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %1, i1 noundef zeroext %grab) #8
  %6 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler.i.i, align 8
  %lock.i6.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %lock.i6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock.i6.i, align 4
  tail call void @mutex_unlock(ptr noundef %9) #8
  br label %v4l2_ctrl_grab.exit

v4l2_ctrl_grab.exit:                              ; preds = %if.end.i, %entry.v4l2_ctrl_grab.exit_crit_edge
  %ctrl_has_compose_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 103
  %10 = ptrtoint ptr %ctrl_has_compose_cap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_has_compose_cap, align 8
  %tobool.not.i7 = icmp eq ptr %11, null
  br i1 %tobool.not.i7, label %v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit12_crit_edge, label %if.end.i11

v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit12_crit_edge: ; preds = %v4l2_ctrl_grab.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_ctrl_grab.exit12

if.end.i11:                                       ; preds = %v4l2_ctrl_grab.exit
  call void @__sanitizer_cov_trace_pc() #10
  %handler.i.i8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %handler.i.i8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handler.i.i8, align 8
  %lock.i.i9 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %lock.i.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock.i.i9, align 4
  tail call void @mutex_lock_nested(ptr noundef %15, i32 noundef 0) #8
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %11, i1 noundef zeroext %grab) #8
  %16 = ptrtoint ptr %handler.i.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handler.i.i8, align 8
  %lock.i6.i10 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %lock.i6.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock.i6.i10, align 4
  tail call void @mutex_unlock(ptr noundef %19) #8
  br label %v4l2_ctrl_grab.exit12

v4l2_ctrl_grab.exit12:                            ; preds = %if.end.i11, %v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit12_crit_edge
  %ctrl_has_scaler_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 104
  %20 = ptrtoint ptr %ctrl_has_scaler_cap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl_has_scaler_cap, align 4
  %tobool.not.i13 = icmp eq ptr %21, null
  br i1 %tobool.not.i13, label %v4l2_ctrl_grab.exit12.v4l2_ctrl_grab.exit18_crit_edge, label %if.end.i17

v4l2_ctrl_grab.exit12.v4l2_ctrl_grab.exit18_crit_edge: ; preds = %v4l2_ctrl_grab.exit12
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_ctrl_grab.exit18

if.end.i17:                                       ; preds = %v4l2_ctrl_grab.exit12
  call void @__sanitizer_cov_trace_pc() #10
  %handler.i.i14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %handler.i.i14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handler.i.i14, align 8
  %lock.i.i15 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %lock.i.i15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lock.i.i15, align 4
  tail call void @mutex_lock_nested(ptr noundef %25, i32 noundef 0) #8
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %21, i1 noundef zeroext %grab) #8
  %26 = ptrtoint ptr %handler.i.i14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %handler.i.i14, align 8
  %lock.i6.i16 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %lock.i6.i16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lock.i6.i16, align 4
  tail call void @mutex_unlock(ptr noundef %29) #8
  br label %v4l2_ctrl_grab.exit18

v4l2_ctrl_grab.exit18:                            ; preds = %if.end.i17, %v4l2_ctrl_grab.exit12.v4l2_ctrl_grab.exit18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_stop_generating_vid_cap(ptr noundef %dev, ptr noundef writeonly %pstreaming) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %0 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.10) #11
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %kthread_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 250
  %1 = ptrtoint ptr %kthread_vid_cap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kthread_vid_cap, align 4
  %cmp3 = icmp eq ptr %2, null
  br i1 %cmp3, label %do.end2.return_crit_edge, label %if.end5

do.end2.return_crit_edge:                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end5:                                          ; preds = %do.end2
  %3 = ptrtoint ptr %pstreaming to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %pstreaming, align 1
  %vid_cap_streaming = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 260
  %cmp6 = icmp eq ptr %vid_cap_streaming, %pstreaming
  br i1 %cmp6, label %while.cond.preheader, label %if.end5.if.end28_crit_edge

if.end5.if.end28_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

while.cond.preheader:                             ; preds = %if.end5
  %vid_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 243
  %4 = ptrtoint ptr %vid_cap_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vid_cap_active, align 4
  %cmp.i.not169 = icmp eq ptr %5, %vid_cap_active
  br i1 %cmp.i.not169, label %while.cond.preheader.if.end28_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end28_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %ctrl_hdl_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 19
  %name20 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  br label %while.body

while.body:                                       ; preds = %do.end27.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %5, %while.body.lr.ph ], [ %21, %do.end27.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %6, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @v4l2_ctrl_request_complete(ptr noundef %16, ptr noundef %ctrl_hdl_vid_cap) #8
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %17 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp14 = icmp ugt i32 %17, 1
  br i1 %cmp14, label %do.end17, label %list_del.exit.do.end27_crit_edge

list_del.exit.do.end27_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

do.end17:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr i8, ptr %6, i32 -732
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name20, i32 noundef %19) #11
  br label %do.end27

do.end27:                                         ; preds = %do.end17, %list_del.exit.do.end27_crit_edge
  %20 = ptrtoint ptr %vid_cap_active to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %vid_cap_active, align 4
  %cmp.i.not = icmp eq ptr %21, %vid_cap_active
  br i1 %cmp.i.not, label %do.end27.if.end28_crit_edge, label %do.end27.while.body_crit_edge

do.end27.while.body_crit_edge:                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.end27.if.end28_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end28:                                         ; preds = %do.end27.if.end28_crit_edge, %while.cond.preheader.if.end28_crit_edge, %if.end5.if.end28_crit_edge
  %vbi_cap_streaming = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 263
  %cmp29 = icmp eq ptr %vbi_cap_streaming, %pstreaming
  br i1 %cmp29, label %while.cond31.preheader, label %if.end28.if.end67_crit_edge

if.end28.if.end67_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

while.cond31.preheader:                           ; preds = %if.end28
  %vbi_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 245
  %22 = ptrtoint ptr %vbi_cap_active to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %vbi_cap_active, align 4
  %cmp.i153.not170 = icmp eq ptr %23, %vbi_cap_active
  br i1 %cmp.i153.not170, label %while.cond31.preheader.if.end67_crit_edge, label %while.body35.lr.ph

while.cond31.preheader.if.end67_crit_edge:        ; preds = %while.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

while.body35.lr.ph:                               ; preds = %while.cond31.preheader
  %ctrl_hdl_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 23
  %name57 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  br label %while.body35

while.body35:                                     ; preds = %do.end65.while.body35_crit_edge, %while.body35.lr.ph
  %24 = phi ptr [ %23, %while.body35.lr.ph ], [ %39, %do.end65.while.body35_crit_edge ]
  %add.ptr41 = getelementptr i8, ptr %24, i32 -736
  %call.i.i155 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #8
  br i1 %call.i.i155, label %if.end.i.i158, label %while.body35.list_del.exit160_crit_edge

while.body35.list_del.exit160_crit_edge:          ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit160

if.end.i.i158:                                    ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i156 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i156 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i156, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i157 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i157 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i157, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit160

list_del.exit160:                                 ; preds = %if.end.i.i158, %while.body35.list_del.exit160_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i159 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i159 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i159, align 4
  %req46 = getelementptr i8, ptr %24, i32 -692
  %33 = ptrtoint ptr %req46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %req46, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %34, ptr noundef %ctrl_hdl_vbi_cap) #8
  tail call void @vb2_buffer_done(ptr noundef %add.ptr41, i32 noundef 6) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %35 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp50 = icmp ugt i32 %35, 1
  br i1 %cmp50, label %do.end54, label %list_del.exit160.do.end65_crit_edge

list_del.exit160.do.end65_crit_edge:              ; preds = %list_del.exit160
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end65

do.end54:                                         ; preds = %list_del.exit160
  call void @__sanitizer_cov_trace_pc() #10
  %index61 = getelementptr i8, ptr %24, i32 -732
  %36 = ptrtoint ptr %index61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index61, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name57, i32 noundef %37) #11
  br label %do.end65

do.end65:                                         ; preds = %do.end54, %list_del.exit160.do.end65_crit_edge
  %38 = ptrtoint ptr %vbi_cap_active to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %vbi_cap_active, align 4
  %cmp.i153.not = icmp eq ptr %39, %vbi_cap_active
  br i1 %cmp.i153.not, label %do.end65.if.end67_crit_edge, label %do.end65.while.body35_crit_edge

do.end65.while.body35_crit_edge:                  ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body35

do.end65.if.end67_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.end67:                                         ; preds = %do.end65.if.end67_crit_edge, %while.cond31.preheader.if.end67_crit_edge, %if.end28.if.end67_crit_edge
  %meta_cap_streaming = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 266
  %cmp68 = icmp eq ptr %meta_cap_streaming, %pstreaming
  br i1 %cmp68, label %while.cond70.preheader, label %if.end67.if.end106_crit_edge

if.end67.if.end106_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

while.cond70.preheader:                           ; preds = %if.end67
  %meta_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 247
  %40 = ptrtoint ptr %meta_cap_active to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %meta_cap_active, align 4
  %cmp.i161.not171 = icmp eq ptr %41, %meta_cap_active
  br i1 %cmp.i161.not171, label %while.cond70.preheader.if.end106_crit_edge, label %while.body74.lr.ph

while.cond70.preheader.if.end106_crit_edge:       ; preds = %while.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

while.body74.lr.ph:                               ; preds = %while.cond70.preheader
  %ctrl_hdl_meta_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 33
  %name96 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  br label %while.body74

while.body74:                                     ; preds = %do.end104.while.body74_crit_edge, %while.body74.lr.ph
  %42 = phi ptr [ %41, %while.body74.lr.ph ], [ %57, %do.end104.while.body74_crit_edge ]
  %add.ptr80 = getelementptr i8, ptr %42, i32 -736
  %call.i.i163 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %42) #8
  br i1 %call.i.i163, label %if.end.i.i166, label %while.body74.list_del.exit168_crit_edge

while.body74.list_del.exit168_crit_edge:          ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit168

if.end.i.i166:                                    ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i164 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i164 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i164, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  %prev1.i.i.i165 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i165 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i165, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit168

list_del.exit168:                                 ; preds = %if.end.i.i166, %while.body74.list_del.exit168_crit_edge
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %42, align 4
  %prev.i167 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i167 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i167, align 4
  %req85 = getelementptr i8, ptr %42, i32 -692
  %51 = ptrtoint ptr %req85 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %req85, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %52, ptr noundef %ctrl_hdl_meta_cap) #8
  tail call void @vb2_buffer_done(ptr noundef %add.ptr80, i32 noundef 6) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %53 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp89 = icmp ugt i32 %53, 1
  br i1 %cmp89, label %do.end93, label %list_del.exit168.do.end104_crit_edge

list_del.exit168.do.end104_crit_edge:             ; preds = %list_del.exit168
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end104

do.end93:                                         ; preds = %list_del.exit168
  call void @__sanitizer_cov_trace_pc() #10
  %index100 = getelementptr i8, ptr %42, i32 -732
  %54 = ptrtoint ptr %index100 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %index100, align 4
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name96, i32 noundef %55) #11
  br label %do.end104

do.end104:                                        ; preds = %do.end93, %list_del.exit168.do.end104_crit_edge
  %56 = ptrtoint ptr %meta_cap_active to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %meta_cap_active, align 4
  %cmp.i161.not = icmp eq ptr %57, %meta_cap_active
  br i1 %cmp.i161.not, label %do.end104.if.end106_crit_edge, label %do.end104.while.body74_crit_edge

do.end104.while.body74_crit_edge:                 ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body74

do.end104.if.end106_crit_edge:                    ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.end106:                                        ; preds = %do.end104.if.end106_crit_edge, %while.cond70.preheader.if.end106_crit_edge, %if.end67.if.end106_crit_edge
  %58 = ptrtoint ptr %vid_cap_streaming to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %vid_cap_streaming, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool108.not = icmp eq i8 %59, 0
  br i1 %tobool108.not, label %lor.lhs.false, label %if.end106.return_crit_edge

if.end106.return_crit_edge:                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %if.end106
  %60 = ptrtoint ptr %vbi_cap_streaming to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %vbi_cap_streaming, align 8, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool110.not = icmp eq i8 %61, 0
  br i1 %tobool110.not, label %lor.lhs.false111, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false111:                                 ; preds = %lor.lhs.false
  %62 = ptrtoint ptr %meta_cap_streaming to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %meta_cap_streaming, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool113.not = icmp eq i8 %63, 0
  br i1 %tobool113.not, label %if.end115, label %lor.lhs.false111.return_crit_edge

lor.lhs.false111.return_crit_edge:                ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end115:                                        ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @vivid_grab_controls(ptr noundef %dev, i1 noundef zeroext false)
  %64 = ptrtoint ptr %kthread_vid_cap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %kthread_vid_cap, align 4
  %call117 = tail call i32 @kthread_stop(ptr noundef %65) #8
  %66 = ptrtoint ptr %kthread_vid_cap to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %kthread_vid_cap, align 4
  br label %return

return:                                           ; preds = %if.end115, %lor.lhs.false111.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end106.return_crit_edge, %do.end2.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vivid_thread_vid_cap_tick(ptr noundef %dev, i32 noundef %dropped_bufs) unnamed_addr #4 align 64 {
entry:
  %basep.i = alloca [3 x [2 x ptr]], align 4
  %str.i = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %0 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dropped_bufs)
  %cmp4635 = icmp sgt i32 %dropped_bufs, 1
  br i1 %cmp4635, label %while.body.lr.ph, label %do.end3.while.end_crit_edge

do.end3.while.end_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %field_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 236
  %1 = ptrtoint ptr %field_cap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %field_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp5 = icmp eq i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp7 = icmp eq i32 %2, 7
  %spec.select = or i1 %cmp5, %cmp7
  %mv_hor_step.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 55
  %3 = ptrtoint ptr %mv_hor_step.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mv_hor_step.i, align 4
  %cond.i = select i1 %spec.select, i32 1, i32 2
  %mv_hor_count.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 54
  %mv_vert_step.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 58
  %5 = ptrtoint ptr %mv_vert_step.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mv_vert_step.i, align 4
  %mv_vert_count.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 57
  %7 = ptrtoint ptr %mv_hor_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %mv_hor_count.i.promoted = load i32, ptr %mv_hor_count.i, align 4
  %8 = ptrtoint ptr %mv_vert_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %mv_vert_count.i.promoted = load i32, ptr %mv_vert_count.i, align 4
  %9 = mul i32 %cond.i, %4
  %10 = add nsw i32 %dropped_bufs, -1
  %11 = mul i32 %9, %10
  %12 = mul i32 %cond.i, %6
  %13 = mul i32 %12, %10
  %14 = add i32 %mv_hor_count.i.promoted, %11
  %15 = add i32 %mv_vert_count.i.promoted, %13
  store i32 %14, ptr %mv_hor_count.i, align 4
  store i32 %15, ptr %mv_vert_count.i, align 4
  br label %while.end

while.end:                                        ; preds = %while.body.lr.ph, %do.end3.while.end_crit_edge
  %perc_dropped_buffers = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 161
  %16 = ptrtoint ptr %perc_dropped_buffers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %perc_dropped_buffers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %while.end.if.end12_crit_edge, label %land.lhs.true

while.end.if.end12_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %while.end
  %call.i = tail call i32 @prandom_u32() #8
  %conv.i = zext i32 %call.i to i64
  %mul.i580 = mul nuw nsw i64 %conv.i, 100
  %shr.i = lshr i64 %mul.i580, 32
  %conv2.i = trunc i64 %shr.i to i32
  %18 = ptrtoint ptr %perc_dropped_buffers to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %perc_dropped_buffers, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv2.i)
  %cmp10 = icmp ugt i32 %19, %conv2.i
  br i1 %cmp10, label %land.lhs.true.update_mv_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true.update_mv_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_mv

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %while.end.if.end12_crit_edge
  %slock = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %slock) #8
  %vid_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 243
  %20 = ptrtoint ptr %vid_cap_active to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %vid_cap_active, align 4
  %cmp.i.not = icmp eq ptr %21, %vid_cap_active
  br i1 %cmp.i.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  %add.ptr = getelementptr i8, ptr %21, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then15.list_del.exit_crit_edge

if.then15.list_del.exit_crit_edge:                ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then15.list_del.exit_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %list_del.exit, %if.end12.if.end18_crit_edge
  %vid_cap_buf.0 = phi ptr [ null, %if.end12.if.end18_crit_edge ], [ %add.ptr, %list_del.exit ]
  %vbi_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 245
  %30 = ptrtoint ptr %vbi_cap_active to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %vbi_cap_active, align 4
  %cmp.i582.not = icmp eq ptr %31, %vbi_cap_active
  br i1 %cmp.i582.not, label %if.end18.if.end33_crit_edge, label %if.then21

if.end18.if.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then21:                                        ; preds = %if.end18
  %field_cap22 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 236
  %32 = ptrtoint ptr %field_cap22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %field_cap22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %33)
  %cmp23.not = icmp eq i32 %33, 7
  br i1 %cmp23.not, label %lor.lhs.false, label %if.then21.if.then25_crit_edge

if.then21.if.then25_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

lor.lhs.false:                                    ; preds = %if.then21
  %vbi_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 262
  %34 = ptrtoint ptr %vbi_cap_seq_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vbi_cap_seq_count, align 4
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %lor.lhs.false.if.end33_crit_edge, label %lor.lhs.false.if.then25_crit_edge

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %if.then21.if.then25_crit_edge
  %add.ptr30 = getelementptr i8, ptr %31, i32 -736
  %call.i.i584 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %31) #8
  br i1 %call.i.i584, label %if.end.i.i587, label %if.then25.list_del.exit589_crit_edge

if.then25.list_del.exit589_crit_edge:             ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit589

if.end.i.i587:                                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i585 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i585 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i585, align 4
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %31, align 4
  %prev1.i.i.i586 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i586 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i586, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit589

list_del.exit589:                                 ; preds = %if.end.i.i587, %if.then25.list_del.exit589_crit_edge
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  %prev.i588 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i588 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i588, align 4
  br label %if.end33

if.end33:                                         ; preds = %list_del.exit589, %lor.lhs.false.if.end33_crit_edge, %if.end18.if.end33_crit_edge
  %vbi_cap_buf.0 = phi ptr [ null, %if.end18.if.end33_crit_edge ], [ %add.ptr30, %list_del.exit589 ], [ null, %lor.lhs.false.if.end33_crit_edge ]
  %meta_cap_active = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 247
  %44 = ptrtoint ptr %meta_cap_active to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %meta_cap_active, align 4
  %cmp.i590.not = icmp eq ptr %45, %meta_cap_active
  br i1 %cmp.i590.not, label %if.end33.if.end43_crit_edge, label %if.then36

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then36:                                        ; preds = %if.end33
  %add.ptr41 = getelementptr i8, ptr %45, i32 -736
  %call.i.i592 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %45) #8
  br i1 %call.i.i592, label %if.end.i.i595, label %if.then36.list_del.exit597_crit_edge

if.then36.list_del.exit597_crit_edge:             ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit597

if.end.i.i595:                                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i593 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i593 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i593, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %prev1.i.i.i594 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i594 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i594, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit597

list_del.exit597:                                 ; preds = %if.end.i.i595, %if.then36.list_del.exit597_crit_edge
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  %prev.i596 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i596 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i596, align 4
  br label %if.end43

if.end43:                                         ; preds = %list_del.exit597, %if.end33.if.end43_crit_edge
  %meta_cap_buf.0 = phi ptr [ null, %if.end33.if.end43_crit_edge ], [ %add.ptr41, %list_del.exit597 ]
  tail call void @_raw_spin_unlock(ptr noundef %slock) #8
  %tobool45.not = icmp eq ptr %vid_cap_buf.0, null
  %tobool47.not = icmp eq ptr %vbi_cap_buf.0, null
  %or.cond = and i1 %tobool45.not, %tobool47.not
  %tobool49.not = icmp eq ptr %meta_cap_buf.0, null
  %or.cond578 = and i1 %or.cond, %tobool49.not
  br i1 %or.cond578, label %if.end43.update_mv_crit_edge, label %if.end51

if.end43.update_mv_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_mv

if.end51:                                         ; preds = %if.end43
  %cap_frame_period = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 253
  %54 = ptrtoint ptr %cap_frame_period to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %cap_frame_period, align 8
  %vid_cap_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 259
  %56 = ptrtoint ptr %vid_cap_seq_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vid_cap_seq_count, align 8
  %conv = zext i32 %57 to i64
  %mul = mul i64 %55, %conv
  %cap_stream_start = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 252
  %58 = ptrtoint ptr %cap_stream_start to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %cap_stream_start, align 8
  %add = add i64 %mul, %59
  %time_wrap_offset = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 160
  %60 = ptrtoint ptr %time_wrap_offset to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %time_wrap_offset, align 8
  %add52 = add i64 %add, %61
  br i1 %tobool45.not, label %if.end51.if.end118_crit_edge, label %if.then54

if.end51.if.end118_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then54:                                        ; preds = %if.end51
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %vid_cap_buf.0, i32 0, i32 7, i32 2
  %62 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %req, align 4
  %ctrl_hdl_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 19
  %call55 = tail call i32 @v4l2_ctrl_request_setup(ptr noundef %63, ptr noundef %ctrl_hdl_vid_cap) #8
  %tpg1.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231
  %field_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 236
  %64 = ptrtoint ptr %field_cap.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %field_cap.i, align 8
  %switch.tableidx = add i32 %65, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %66 = icmp ult i32 %switch.tableidx, 6
  br i1 %66, label %switch.lookup, label %if.then54.lor.end.i_crit_edge

if.then54.lor.end.i_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end.i

switch.lookup:                                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_thread_vid_cap_tick, i32 0, i32 %switch.tableidx
  %67 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %67)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lor.end.i

lor.end.i:                                        ; preds = %switch.lookup, %if.then54.lor.end.i_crit_edge
  %68 = phi i32 [ 16, %if.then54.lor.end.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %input.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 173
  %69 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 53, i32 %70
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i.i.i, align 1
  %73 = add i8 %72, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %73)
  %74 = icmp ult i8 %73, 2
  br i1 %74, label %land.rhs.i, label %lor.end.i.land.end.i_crit_edge

lor.end.i.land.end.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

land.rhs.i:                                       ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 174, i32 %70
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx.i, align 8
  %and.i = and i64 %76, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool6.i = icmp ne i64 %and.i, 0
  %phi.cast.i = zext i1 %tobool6.i to i32
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %lor.end.i.land.end.i_crit_edge
  %77 = phi i32 [ 0, %lor.end.i.land.end.i_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %basep.i) #8
  %78 = call ptr @memset(ptr %basep.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %str.i) #8
  %79 = call ptr @memset(ptr %str.i, i32 255, i32 100)
  %loop_video.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 139
  %80 = ptrtoint ptr %loop_video.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %loop_video.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool8.not.i = icmp eq i8 %81, 0
  br i1 %tobool8.not.i, label %land.end.i.if.end.i_crit_edge, label %land.lhs.true.i

land.end.i.if.end.i_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %land.end.i
  %can_loop_video.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 77
  %82 = ptrtoint ptr %can_loop_video.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %can_loop_video.i, align 2, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool9.not.i = icmp eq i8 %83, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true10.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %84 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values)
  switch i8 %72, label %land.lhs.true10.i.if.end.i_crit_edge [
    i8 2, label %land.lhs.true12.i
    i8 3, label %land.lhs.true28.i
  ]

land.lhs.true10.i.if.end.i_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true12.i:                                ; preds = %land.lhs.true10.i
  %arrayidx14.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 162, i32 %70
  %85 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx14.i, align 4
  %.off.i = add i32 %86, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %land.lhs.true12.i.if.end.i_crit_edge, label %land.lhs.true12.i.if.then.i_crit_edge

land.lhs.true12.i.if.then.i_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true12.i.if.end.i_crit_edge:             ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true28.i:                                ; preds = %land.lhs.true10.i
  %arrayidx30.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 166, i32 %70
  %87 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx30.i, align 4
  %.off427.i = add i32 %88, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off427.i)
  %switch428.i = icmp ult i32 %.off427.i, 3
  br i1 %switch428.i, label %land.lhs.true28.i.if.end.i_crit_edge, label %land.lhs.true28.i.if.then.i_crit_edge

land.lhs.true28.i.if.then.i_crit_edge:            ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true28.i.if.end.i_crit_edge:             ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true28.i.if.then.i_crit_edge, %land.lhs.true12.i.if.then.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true28.i.if.end.i_crit_edge, %land.lhs.true12.i.if.end.i_crit_edge, %land.lhs.true10.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %land.end.i.if.end.i_crit_edge
  %is_loop.0.off0.i = phi i1 [ true, %if.then.i ], [ false, %land.lhs.true.i.if.end.i_crit_edge ], [ false, %land.end.i.if.end.i_crit_edge ], [ false, %land.lhs.true28.i.if.end.i_crit_edge ], [ false, %land.lhs.true12.i.if.end.i_crit_edge ], [ false, %land.lhs.true10.i.if.end.i_crit_edge ]
  %89 = ptrtoint ptr %vid_cap_seq_count to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %vid_cap_seq_count, align 8
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vid_cap_buf.0, i32 0, i32 4
  %91 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %sequence.i, align 8
  %ro_int32.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 94
  %92 = ptrtoint ptr %ro_int32.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ro_int32.i, align 4
  %and44.i = and i32 %90, 255
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lock.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %97, i32 noundef 0) #8
  %call.i.i598 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %93, i32 noundef %and44.i) #8
  %98 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i2.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %lock.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lock.i2.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %101) #8
  %102 = ptrtoint ptr %field_cap.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %field_cap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %103)
  %cmp47.i = icmp eq i32 %103, 7
  br i1 %cmp47.i, label %if.then48.i, label %if.end.i.if.end61.i_crit_edge

if.end.i.if.end61.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

if.then48.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %vid_cap_seq_count to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %vid_cap_seq_count, align 8
  %and50.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and50.i, i32 %77)
  %tobool52.not.i = icmp eq i32 %and50.i, %77
  %cond53.i = select i1 %tobool52.not.i, i32 2, i32 3
  %106 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sequence.i, align 8
  %div57426.i = lshr i32 %107, 1
  store i32 %div57426.i, ptr %sequence.i, align 8
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then48.i, %if.end.i.if.end61.i_crit_edge
  %.sink.i = phi i32 [ %cond53.i, %if.then48.i ], [ %103, %if.end.i.if.end61.i_crit_edge ]
  %108 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vid_cap_buf.0, i32 0, i32 2
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %.sink.i, ptr %108, align 4
  %110 = ptrtoint ptr %field_cap.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %field_cap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %111)
  %cmp65.i = icmp eq i32 %111, 7
  %frombool.i.i = zext i1 %cmp65.i to i8
  %field1.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 4
  %112 = ptrtoint ptr %field1.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %.sink.i, ptr %field1.i.i, align 4
  %field_alternate.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 5
  %113 = ptrtoint ptr %field_alternate.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %frombool.i.i, ptr %field_alternate.i.i, align 4
  %index.i = getelementptr inbounds %struct.vb2_buffer, ptr %vid_cap_buf.0, i32 0, i32 1
  %114 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %index.i, align 4
  %arrayidx68.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 233, i32 %115
  %116 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx68.i, align 1, !range !108
  %perc_fill_blank1.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 48
  %118 = ptrtoint ptr %perc_fill_blank1.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %perc_fill_blank1.i.i, align 4
  %display_width.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 144
  %119 = ptrtoint ptr %display_width.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %display_width.i.i, align 4
  %display_height.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 145
  %121 = ptrtoint ptr %display_height.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %display_height.i.i, align 8
  %overlay_out_left.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 223
  %123 = ptrtoint ptr %overlay_out_left.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %overlay_out_left.i.i, align 4
  %overlay_out_top.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 222
  %125 = ptrtoint ptr %overlay_out_top.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %overlay_out_top.i.i, align 8
  %compose_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 284
  %width4.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 284, i32 2
  %127 = ptrtoint ptr %width4.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %width4.i.i, align 8
  %height7.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 284, i32 3
  %129 = ptrtoint ptr %height7.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %height7.i.i, align 4
  %loop_vid_copy.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 292
  %crop_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 239
  %top.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 239, i32 1
  %131 = ptrtoint ptr %top.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %top.i.i.i, align 4
  %top1.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 284, i32 1
  %133 = ptrtoint ptr %top1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %top1.i.i.i, align 4
  %135 = tail call i32 @llvm.smax.i32(i32 %132, i32 %134) #8
  %top2.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 292, i32 1
  %136 = ptrtoint ptr %top2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %top2.i.i.i, align 4
  %137 = ptrtoint ptr %crop_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %crop_cap.i.i, align 4
  %139 = ptrtoint ptr %compose_out.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %compose_out.i.i, align 4
  %141 = tail call i32 @llvm.smax.i32(i32 %138, i32 %140) #8
  %142 = ptrtoint ptr %loop_vid_copy.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %loop_vid_copy.i.i, align 4
  %height.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 239, i32 3
  %143 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %height.i.i.i, align 4
  %add.i.i.i = add i32 %144, %132
  %add14.i.i.i = add i32 %134, %130
  %145 = tail call i32 @llvm.umin.i32(i32 %add.i.i.i, i32 %add14.i.i.i) #8
  %width.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 239, i32 2
  %146 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %width.i.i.i, align 4
  %add22.i.i.i = add i32 %147, %138
  %add25.i.i.i = add i32 %140, %128
  %148 = tail call i32 @llvm.umin.i32(i32 %add22.i.i.i, i32 %add25.i.i.i) #8
  %sub.i.i.i = sub i32 %145, %135
  %149 = tail call i32 @llvm.smax.i32(i32 %sub.i.i.i, i32 0) #8
  %height39.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 292, i32 3
  %150 = ptrtoint ptr %height39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %height39.i.i.i, align 4
  %sub41.i.i.i = sub i32 %148, %141
  %151 = tail call i32 @llvm.smax.i32(i32 %sub41.i.i.i, i32 0) #8
  %width48.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 292, i32 2
  %152 = ptrtoint ptr %width48.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %width48.i.i.i, align 4
  %loop_vid_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 293
  %153 = call ptr @memcpy(ptr %loop_vid_out.i.i, ptr %loop_vid_copy.i.i, i32 16)
  %crop_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 283
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp.i.i.i = icmp eq i32 %128, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp1.i.i.i = icmp eq i32 %130, 0
  %or.cond.i.i = select i1 %cmp.i.i.i, i1 true, i1 %cmp1.i.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %154 = call ptr @memset(ptr %loop_vid_out.i.i, i32 0, i32 16)
  br label %v4l2_rect_scale.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %loop_vid_out.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %loop_vid_out.i.i, align 4
  %sub.i189.i.i = sub i32 %156, %140
  %width6.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 283, i32 2
  %157 = ptrtoint ptr %width6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %width6.i.i.i, align 4
  %mul.i.i.i = mul i32 %sub.i189.i.i, %158
  %div.i.i.i = udiv i32 %mul.i.i.i, %128
  %and.i.i.i = and i32 %div.i.i.i, -2
  store i32 %and.i.i.i, ptr %loop_vid_out.i.i, align 4
  %width9.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 293, i32 2
  %159 = ptrtoint ptr %width9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %width9.i.i.i, align 4
  %mul11.i.i.i = mul i32 %160, %158
  %div13.i.i.i = udiv i32 %mul11.i.i.i, %128
  %and14.i.i.i = and i32 %div13.i.i.i, -2
  store i32 %and14.i.i.i, ptr %width9.i.i.i, align 4
  %top16.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 293, i32 1
  %161 = ptrtoint ptr %top16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %top16.i.i.i, align 4
  %sub18.i.i.i = sub i32 %162, %134
  %height19.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 283, i32 3
  %163 = ptrtoint ptr %height19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %height19.i.i.i, align 4
  %mul20.i.i.i = mul i32 %sub18.i.i.i, %164
  %div22.i.i.i = udiv i32 %mul20.i.i.i, %130
  store i32 %div22.i.i.i, ptr %top16.i.i.i, align 4
  %height24.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 293, i32 3
  %165 = ptrtoint ptr %height24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %height24.i.i.i, align 4
  %mul26.i.i.i = mul i32 %166, %164
  %div28.i.i.i = udiv i32 %mul26.i.i.i, %130
  store i32 %div28.i.i.i, ptr %height24.i.i.i, align 4
  br label %v4l2_rect_scale.exit.i.i

v4l2_rect_scale.exit.i.i:                         ; preds = %if.end.i.i.i, %if.then.i.i.i
  %167 = ptrtoint ptr %crop_out.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %crop_out.i.i, align 8
  %169 = ptrtoint ptr %loop_vid_out.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %loop_vid_out.i.i, align 8
  %add.i.i = add i32 %170, %168
  store i32 %add.i.i, ptr %loop_vid_out.i.i, align 8
  %top17.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 283, i32 1
  %171 = ptrtoint ptr %top17.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %top17.i.i, align 4
  %top19.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 293, i32 1
  %173 = ptrtoint ptr %top19.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %top19.i.i, align 4
  %add20.i.i = add i32 %174, %172
  store i32 %add20.i.i, ptr %top19.i.i, align 4
  %loop_vid_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 294
  %175 = call ptr @memcpy(ptr %loop_vid_cap.i.i, ptr %loop_vid_copy.i.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp.i191.i.i = icmp eq i32 %147, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp1.i193.i.i = icmp eq i32 %144, 0
  %or.cond284.i.i = select i1 %cmp.i191.i.i, i1 true, i1 %cmp1.i193.i.i
  br i1 %or.cond284.i.i, label %if.then.i195.i.i, label %if.end.i214.i.i

if.then.i195.i.i:                                 ; preds = %v4l2_rect_scale.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %176 = call ptr @memset(ptr %loop_vid_cap.i.i, i32 0, i32 16)
  br label %v4l2_rect_scale.exit215.i.i

if.end.i214.i.i:                                  ; preds = %v4l2_rect_scale.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %177 = ptrtoint ptr %loop_vid_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %loop_vid_cap.i.i, align 4
  %sub.i196.i.i = sub i32 %178, %138
  %width6.i197.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 240, i32 2
  %179 = ptrtoint ptr %width6.i197.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %width6.i197.i.i, align 4
  %mul.i198.i.i = mul i32 %sub.i196.i.i, %180
  %div.i199.i.i = udiv i32 %mul.i198.i.i, %147
  %and.i200.i.i = and i32 %div.i199.i.i, -2
  store i32 %and.i200.i.i, ptr %loop_vid_cap.i.i, align 4
  %width9.i201.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 294, i32 2
  %181 = ptrtoint ptr %width9.i201.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %width9.i201.i.i, align 4
  %mul11.i202.i.i = mul i32 %182, %180
  %div13.i203.i.i = udiv i32 %mul11.i202.i.i, %147
  %and14.i204.i.i = and i32 %div13.i203.i.i, -2
  store i32 %and14.i204.i.i, ptr %width9.i201.i.i, align 4
  %top16.i205.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 294, i32 1
  %183 = ptrtoint ptr %top16.i205.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %top16.i205.i.i, align 4
  %sub18.i207.i.i = sub i32 %184, %132
  %height19.i208.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 240, i32 3
  %185 = ptrtoint ptr %height19.i208.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %height19.i208.i.i, align 4
  %mul20.i209.i.i = mul i32 %sub18.i207.i.i, %186
  %div22.i210.i.i = udiv i32 %mul20.i209.i.i, %144
  store i32 %div22.i210.i.i, ptr %top16.i205.i.i, align 4
  %height24.i211.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 294, i32 3
  %187 = ptrtoint ptr %height24.i211.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %height24.i211.i.i, align 4
  %mul26.i212.i.i = mul i32 %188, %186
  %div28.i213.i.i = udiv i32 %mul26.i212.i.i, %144
  store i32 %div28.i213.i.i, ptr %height24.i211.i.i, align 4
  br label %v4l2_rect_scale.exit215.i.i

v4l2_rect_scale.exit215.i.i:                      ; preds = %if.end.i214.i.i, %if.then.i195.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %189 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cmp.not.i.i = icmp eq i32 %189, 0
  br i1 %cmp.not.i.i, label %v4l2_rect_scale.exit215.i.i.do.end50.i.i_crit_edge, label %do.end.i.i

v4l2_rect_scale.exit215.i.i.do.end50.i.i_crit_edge: ; preds = %v4l2_rect_scale.exit215.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50.i.i

do.end.i.i:                                       ; preds = %v4l2_rect_scale.exit215.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %width34.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 293, i32 2
  %190 = ptrtoint ptr %width34.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %width34.i.i, align 8
  %height36.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 293, i32 3
  %192 = ptrtoint ptr %height36.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %height36.i.i, align 4
  %width42.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 294, i32 2
  %194 = ptrtoint ptr %width42.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %width42.i.i, align 8
  %height44.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 294, i32 3
  %196 = ptrtoint ptr %height44.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %height44.i.i, align 4
  %198 = ptrtoint ptr %loop_vid_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %loop_vid_cap.i.i, align 8
  %top48.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 294, i32 1
  %200 = ptrtoint ptr %top48.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %top48.i.i, align 4
  %call.i433.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i.i, i32 noundef %151, i32 noundef %149, i32 noundef %141, i32 noundef %135, i32 noundef %191, i32 noundef %193, i32 noundef %add.i.i, i32 noundef %add20.i.i, i32 noundef %195, i32 noundef %197, i32 noundef %199, i32 noundef %201) #11
  br label %do.end50.i.i

do.end50.i.i:                                     ; preds = %do.end.i.i, %v4l2_rect_scale.exit215.i.i.do.end50.i.i_crit_edge
  %202 = tail call i32 @llvm.smax.i32(i32 %126, i32 0) #8
  %203 = tail call i32 @llvm.smax.i32(i32 %124, i32 0) #8
  %add14.i222.i.i = add i32 %130, %202
  %204 = tail call i32 @llvm.umin.i32(i32 %122, i32 %add14.i222.i.i) #8
  %add25.i226.i.i = add i32 %128, %203
  %205 = tail call i32 @llvm.umin.i32(i32 %120, i32 %add25.i226.i.i) #8
  %sub.i227.i.i = sub i32 %204, %202
  %206 = tail call i32 @llvm.smax.i32(i32 %sub.i227.i.i, i32 0) #8
  %sub41.i229.i.i = sub i32 %205, %203
  %207 = tail call i32 @llvm.smax.i32(i32 %sub41.i229.i.i, i32 0) #8
  %208 = ptrtoint ptr %compose_out.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %compose_out.i.i, align 8
  %210 = ptrtoint ptr %overlay_out_left.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %overlay_out_left.i.i, align 4
  %sub.i.i = sub i32 %209, %211
  %add55.i.i = add i32 %sub.i.i, %203
  %212 = ptrtoint ptr %top1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %top1.i.i.i, align 4
  %214 = ptrtoint ptr %overlay_out_top.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %overlay_out_top.i.i, align 8
  %sub59.i.i = sub i32 %213, %215
  %add61.i.i = add i32 %sub59.i.i, %202
  %loop_vid_overlay.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 296
  %216 = ptrtoint ptr %top2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %top2.i.i.i, align 4
  %218 = tail call i32 @llvm.smax.i32(i32 %add61.i.i, i32 %217) #8
  %top2.i233.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 296, i32 1
  %219 = ptrtoint ptr %top2.i233.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %top2.i233.i.i, align 4
  %220 = ptrtoint ptr %loop_vid_copy.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %loop_vid_copy.i.i, align 4
  %222 = tail call i32 @llvm.smax.i32(i32 %add55.i.i, i32 %221) #8
  %223 = ptrtoint ptr %loop_vid_overlay.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %loop_vid_overlay.i.i, align 4
  %add.i235.i.i = add i32 %add61.i.i, %206
  %224 = ptrtoint ptr %height39.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %height39.i.i.i, align 4
  %add14.i237.i.i = add i32 %225, %217
  %226 = tail call i32 @llvm.umin.i32(i32 %add.i235.i.i, i32 %add14.i237.i.i) #8
  %add22.i239.i.i = add i32 %add55.i.i, %207
  %227 = ptrtoint ptr %width48.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %width48.i.i.i, align 4
  %add25.i241.i.i = add i32 %228, %221
  %229 = tail call i32 @llvm.umin.i32(i32 %add22.i239.i.i, i32 %add25.i241.i.i) #8
  %sub.i242.i.i = sub i32 %226, %218
  %230 = tail call i32 @llvm.smax.i32(i32 %sub.i242.i.i, i32 0) #8
  %height39.i243.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 296, i32 3
  %231 = ptrtoint ptr %height39.i243.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %height39.i243.i.i, align 4
  %sub41.i244.i.i = sub i32 %229, %222
  %232 = tail call i32 @llvm.smax.i32(i32 %sub41.i244.i.i, i32 0) #8
  %width48.i245.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 296, i32 2
  %233 = ptrtoint ptr %width48.i245.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %width48.i245.i.i, align 4
  %loop_fb_copy.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 295
  %234 = call ptr @memcpy(ptr %loop_fb_copy.i.i, ptr %loop_vid_overlay.i.i, i32 16)
  %sub67.neg.i.i = sub i32 %211, %209
  %235 = ptrtoint ptr %loop_fb_copy.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %loop_fb_copy.i.i, align 8
  %sub70.i.i = add i32 %236, %sub67.neg.i.i
  store i32 %sub70.i.i, ptr %loop_fb_copy.i.i, align 8
  %sub74.neg.i.i = sub i32 %215, %213
  %top76.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 295, i32 1
  %237 = ptrtoint ptr %top76.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %top76.i.i, align 4
  %sub77.i.i = add i32 %238, %sub74.neg.i.i
  store i32 %sub77.i.i, ptr %top76.i.i, align 4
  %loop_vid_overlay_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 297
  %239 = call ptr @memcpy(ptr %loop_vid_overlay_cap.i.i, ptr %loop_vid_overlay.i.i, i32 16)
  %240 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %width.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp.i247.i.i = icmp eq i32 %241, 0
  br i1 %cmp.i247.i.i, label %do.end50.i.i.if.then.i251.i.i_crit_edge, label %lor.lhs.false.i250.i.i

do.end50.i.i.if.then.i251.i.i_crit_edge:          ; preds = %do.end50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i251.i.i

lor.lhs.false.i250.i.i:                           ; preds = %do.end50.i.i
  %242 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %height.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %cmp1.i249.i.i = icmp eq i32 %243, 0
  br i1 %cmp1.i249.i.i, label %lor.lhs.false.i250.i.i.if.then.i251.i.i_crit_edge, label %if.end.i270.i.i

lor.lhs.false.i250.i.i.if.then.i251.i.i_crit_edge: ; preds = %lor.lhs.false.i250.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i251.i.i

if.then.i251.i.i:                                 ; preds = %lor.lhs.false.i250.i.i.if.then.i251.i.i_crit_edge, %do.end50.i.i.if.then.i251.i.i_crit_edge
  %244 = call ptr @memset(ptr %loop_vid_overlay_cap.i.i, i32 0, i32 16)
  br label %v4l2_rect_scale.exit271.i.i

if.end.i270.i.i:                                  ; preds = %lor.lhs.false.i250.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %245 = ptrtoint ptr %loop_vid_overlay_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %loop_vid_overlay_cap.i.i, align 4
  %247 = ptrtoint ptr %crop_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %crop_cap.i.i, align 4
  %sub.i252.i.i = sub i32 %246, %248
  %width6.i253.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 240, i32 2
  %249 = ptrtoint ptr %width6.i253.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %width6.i253.i.i, align 4
  %mul.i254.i.i = mul i32 %sub.i252.i.i, %250
  %div.i255.i.i = udiv i32 %mul.i254.i.i, %241
  %and.i256.i.i = and i32 %div.i255.i.i, -2
  store i32 %and.i256.i.i, ptr %loop_vid_overlay_cap.i.i, align 4
  %width9.i257.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 297, i32 2
  %251 = ptrtoint ptr %width9.i257.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %width9.i257.i.i, align 4
  %mul11.i258.i.i = mul i32 %252, %250
  %div13.i259.i.i = udiv i32 %mul11.i258.i.i, %241
  %and14.i260.i.i = and i32 %div13.i259.i.i, -2
  store i32 %and14.i260.i.i, ptr %width9.i257.i.i, align 4
  %top16.i261.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 297, i32 1
  %253 = ptrtoint ptr %top16.i261.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %top16.i261.i.i, align 4
  %255 = ptrtoint ptr %top.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %top.i.i.i, align 4
  %sub18.i263.i.i = sub i32 %254, %256
  %height19.i264.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 240, i32 3
  %257 = ptrtoint ptr %height19.i264.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %height19.i264.i.i, align 4
  %mul20.i265.i.i = mul i32 %sub18.i263.i.i, %258
  %div22.i266.i.i = udiv i32 %mul20.i265.i.i, %243
  store i32 %div22.i266.i.i, ptr %top16.i261.i.i, align 4
  %height24.i267.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 297, i32 3
  %259 = ptrtoint ptr %height24.i267.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %height24.i267.i.i, align 4
  %mul26.i268.i.i = mul i32 %260, %258
  %div28.i269.i.i = udiv i32 %mul26.i268.i.i, %243
  store i32 %div28.i269.i.i, ptr %height24.i267.i.i, align 4
  br label %v4l2_rect_scale.exit271.i.i

v4l2_rect_scale.exit271.i.i:                      ; preds = %if.end.i270.i.i, %if.then.i251.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %261 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %cmp83.not.i.i = icmp eq i32 %261, 0
  br i1 %cmp83.not.i.i, label %v4l2_rect_scale.exit271.i.i.vivid_precalc_copy_rects.exit.i_crit_edge, label %do.end87.i.i

v4l2_rect_scale.exit271.i.i.vivid_precalc_copy_rects.exit.i_crit_edge: ; preds = %v4l2_rect_scale.exit271.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vivid_precalc_copy_rects.exit.i

do.end87.i.i:                                     ; preds = %v4l2_rect_scale.exit271.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name90.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %width93.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 295, i32 2
  %262 = ptrtoint ptr %width93.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %width93.i.i, align 8
  %height95.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 295, i32 3
  %264 = ptrtoint ptr %height95.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %height95.i.i, align 4
  %width109.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 297, i32 2
  %266 = ptrtoint ptr %width109.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %width109.i.i, align 8
  %height111.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 297, i32 3
  %268 = ptrtoint ptr %height111.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %height111.i.i, align 4
  %270 = ptrtoint ptr %loop_vid_overlay_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %loop_vid_overlay_cap.i.i, align 8
  %top115.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 297, i32 1
  %272 = ptrtoint ptr %top115.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %top115.i.i, align 4
  %call116.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name90.i.i, i32 noundef %263, i32 noundef %265, i32 noundef %sub70.i.i, i32 noundef %sub77.i.i, i32 noundef %232, i32 noundef %230, i32 noundef %222, i32 noundef %218, i32 noundef %267, i32 noundef %269, i32 noundef %271, i32 noundef %273) #11
  br label %vivid_precalc_copy_rects.exit.i

vivid_precalc_copy_rects.exit.i:                  ; preds = %do.end87.i.i, %v4l2_rect_scale.exit271.i.i.vivid_precalc_copy_rects.exit.i_crit_edge
  %interleaved.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 35
  %planes.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 34
  %bytesperline.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 43
  %buf_height.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 2
  %buffers.i.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 33
  %fmt_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 234
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end99.i, %vivid_precalc_copy_rects.exit.i
  %p.0.i = phi i32 [ 0, %vivid_precalc_copy_rects.exit.i ], [ %inc.i, %if.end99.i ]
  %274 = ptrtoint ptr %interleaved.i.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %interleaved.i.i, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool.not.i.i = icmp eq i8 %275, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %for.cond.i.tpg_g_planes.exit.i_crit_edge

for.cond.i.tpg_g_planes.exit.i_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tpg_g_planes.exit.i

cond.false.i.i:                                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %276 = ptrtoint ptr %planes.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %planes.i.i, align 4
  br label %tpg_g_planes.exit.i

tpg_g_planes.exit.i:                              ; preds = %cond.false.i.i, %for.cond.i.tpg_g_planes.exit.i_crit_edge
  %cond.i.i = phi i32 [ %277, %cond.false.i.i ], [ 1, %for.cond.i.tpg_g_planes.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0.i, i32 %cond.i.i)
  %cmp71.i = icmp ult i32 %p.0.i, %cond.i.i
  br i1 %cmp71.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %tpg_g_planes.exit.i
  %278 = ptrtoint ptr %buf_height.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %buf_height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p.0.i)
  %cmp.i434.i = icmp eq i32 %p.0.i, 0
  br i1 %cmp.i434.i, label %for.body.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.if.then.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %280 = ptrtoint ptr %buffers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %buffers.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %281)
  %cmp1.i.i = icmp ugt i32 %281, 1
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %for.body.preheader.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %for.body.i.if.then.i.i_crit_edge
  %call2.i.i = call ptr @vb2_plane_vaddr(ptr noundef nonnull %vid_cap_buf.0, i32 noundef %p.0.i) #8
  br label %plane_vaddr.exit.i

for.body.preheader.i.i:                           ; preds = %lor.lhs.false.i.i
  %call5.i.i = call ptr @vb2_plane_vaddr(ptr noundef nonnull %vid_cap_buf.0, i32 noundef 0) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %vbuf.019.i.i = phi ptr [ %add.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call5.i.i, %for.body.preheader.i.i ]
  %i.018.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i435.i = getelementptr i32, ptr %bytesperline.i, i32 %i.018.i.i
  %282 = ptrtoint ptr %arrayidx.i435.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx.i435.i, align 4
  %mul.i.i = mul i32 %283, %279
  %arrayidx7.i.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 36, i32 %i.018.i.i
  %284 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx7.i.i, align 1
  %conv.i.i = zext i8 %285 to i32
  %div.i.i = udiv i32 %mul.i.i, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %vbuf.019.i.i, i32 %div.i.i
  %inc.i.i = add nuw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %p.0.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.plane_vaddr.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.plane_vaddr.exit.i_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %plane_vaddr.exit.i

plane_vaddr.exit.i:                               ; preds = %for.body.i.i.plane_vaddr.exit.i_crit_edge, %if.then.i.i
  %retval.0.i.i = phi ptr [ %call2.i.i, %if.then.i.i ], [ %add.ptr.i.i, %for.body.i.i.plane_vaddr.exit.i_crit_edge ]
  %286 = ptrtoint ptr %buffers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %buffers.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0.i, i32 %287)
  %cmp75.i = icmp ult i32 %p.0.i, %287
  br i1 %cmp75.i, label %land.lhs.true77.i, label %plane_vaddr.exit.i.if.end91.i_crit_edge

plane_vaddr.exit.i.if.end91.i_crit_edge:          ; preds = %plane_vaddr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i

land.lhs.true77.i:                                ; preds = %plane_vaddr.exit.i
  %288 = ptrtoint ptr %fmt_cap.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %fmt_cap.i, align 4
  %arrayidx78.i = getelementptr %struct.vivid_fmt, ptr %289, i32 0, i32 7, i32 %p.0.i
  %290 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool79.not.i = icmp eq i32 %291, 0
  br i1 %tobool79.not.i, label %land.lhs.true77.i.if.end91.i_crit_edge, label %if.then80.i

land.lhs.true77.i.if.end91.i_crit_edge:           ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i

if.then80.i:                                      ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #10
  %292 = trunc i32 %291 to i8
  %293 = zext i8 %292 to i32
  %294 = call ptr @memset(ptr %retval.0.i.i, i32 %293, i32 %291)
  %295 = ptrtoint ptr %fmt_cap.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %fmt_cap.i, align 4
  %arrayidx90.i = getelementptr %struct.vivid_fmt, ptr %296, i32 0, i32 7, i32 %p.0.i
  %297 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %arrayidx90.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %298
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then80.i, %land.lhs.true77.i.if.end91.i_crit_edge, %plane_vaddr.exit.i.if.end91.i_crit_edge
  %vbuf.0.i = phi ptr [ %add.ptr.i, %if.then80.i ], [ %retval.0.i.i, %land.lhs.true77.i.if.end91.i_crit_edge ], [ %retval.0.i.i, %plane_vaddr.exit.i.if.end91.i_crit_edge ]
  call void @tpg_calc_text_basep(ptr noundef %tpg1.i, ptr noundef nonnull %basep.i, i32 noundef %p.0.i, ptr noundef %vbuf.0.i) #8
  br i1 %is_loop.0.off0.i, label %lor.lhs.false94.i, label %if.end91.i.if.then97.i_crit_edge

if.end91.i.if.then97.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97.i

lor.lhs.false94.i:                                ; preds = %if.end91.i
  %call95.i = call fastcc i32 @vivid_copy_buffer(ptr noundef %dev, i32 noundef %p.0.i, ptr noundef %vbuf.0.i, ptr noundef nonnull %vid_cap_buf.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %lor.lhs.false94.i.if.end99.i_crit_edge, label %lor.lhs.false94.i.if.then97.i_crit_edge

lor.lhs.false94.i.if.then97.i_crit_edge:          ; preds = %lor.lhs.false94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97.i

lor.lhs.false94.i.if.end99.i_crit_edge:           ; preds = %lor.lhs.false94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.i

if.then97.i:                                      ; preds = %lor.lhs.false94.i.if.then97.i_crit_edge, %if.end91.i.if.then97.i_crit_edge
  %299 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 53, i32 %300
  %301 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %303 = add i8 %302, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %303)
  %304 = icmp ult i8 %303, 2
  br i1 %304, label %if.then.i437.i, label %if.then97.i.vivid_get_std_cap.exit.i_crit_edge

if.then97.i.vivid_get_std_cap.exit.i_crit_edge:   ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vivid_get_std_cap.exit.i

if.then.i437.i:                                   ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i436.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 174, i32 %300
  %305 = ptrtoint ptr %arrayidx.i436.i to i32
  call void @__asan_load8_noabort(i32 %305)
  %306 = load i64, ptr %arrayidx.i436.i, align 8
  br label %vivid_get_std_cap.exit.i

vivid_get_std_cap.exit.i:                         ; preds = %if.then.i437.i, %if.then97.i.vivid_get_std_cap.exit.i_crit_edge
  %retval.0.i438.i = phi i64 [ %306, %if.then.i437.i ], [ 0, %if.then97.i.vivid_get_std_cap.exit.i_crit_edge ]
  call void @tpg_fill_plane_buffer(ptr noundef %tpg1.i, i64 noundef %retval.0.i438.i, i32 noundef %p.0.i, ptr noundef %vbuf.0.i) #8
  br label %if.end99.i

if.end99.i:                                       ; preds = %vivid_get_std_cap.exit.i, %lor.lhs.false94.i.if.end99.i_crit_edge
  %inc.i = add i32 %p.0.i, 1
  br label %for.cond.i

for.end.i:                                        ; preds = %tpg_g_planes.exit.i
  %307 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %index.i, align 4
  %arrayidx104.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 233, i32 %308
  %309 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 0, ptr %arrayidx104.i, align 1
  %310 = ptrtoint ptr %field_cap.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %field_cap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %311)
  %cmp106.not.i = icmp eq i32 %311, 7
  br i1 %cmp106.not.i, label %lor.lhs.false108.i, label %for.end.i.if.then113.i_crit_edge

for.end.i.if.then113.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then113.i

lor.lhs.false108.i:                               ; preds = %for.end.i
  %312 = ptrtoint ptr %vid_cap_seq_count to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %vid_cap_seq_count, align 8
  %and110.i = and i32 %313, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i)
  %cmp111.i = icmp eq i32 %and110.i, 0
  br i1 %cmp111.i, label %lor.lhs.false108.i.if.then113.i_crit_edge, label %lor.lhs.false108.i.if.end115.i_crit_edge

lor.lhs.false108.i.if.end115.i_crit_edge:         ; preds = %lor.lhs.false108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115.i

lor.lhs.false108.i.if.then113.i_crit_edge:        ; preds = %lor.lhs.false108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then113.i

if.then113.i:                                     ; preds = %lor.lhs.false108.i.if.then113.i_crit_edge, %for.end.i.if.then113.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %314 = load volatile i32, ptr @jiffies, align 128
  %jiffies_vid_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 251
  %315 = ptrtoint ptr %jiffies_vid_cap.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %jiffies_vid_cap.i, align 8
  %sub.i = sub i32 %314, %316
  %call114.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i) #8
  %ms_vid_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 232
  %317 = ptrtoint ptr %ms_vid_cap.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %call114.i, ptr %ms_vid_cap.i, align 8
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then113.i, %lor.lhs.false108.i.if.end115.i_crit_edge
  %osd_mode.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 132
  %318 = ptrtoint ptr %osd_mode.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %osd_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %319)
  %cmp117.i = icmp ult i32 %319, 2
  br i1 %cmp117.i, label %if.then119.i, label %if.end115.i.vivid_fillbuff.exit_crit_edge

if.end115.i.vivid_fillbuff.exit_crit_edge:        ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vivid_fillbuff.exit

if.then119.i:                                     ; preds = %if.end115.i
  %ms_vid_cap116.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 232
  %320 = ptrtoint ptr %ms_vid_cap116.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %ms_vid_cap116.i, align 8
  %div121.i = udiv i32 %321, 3600000
  %rem.lhs.trunc.i = trunc i32 %div121.i to i16
  %rem445.i = urem i16 %rem.lhs.trunc.i, 24
  %rem.zext.i = zext i16 %rem445.i to i32
  %div122.i = udiv i32 %321, 60000
  %rem123.i = urem i32 %div122.i, 60
  %.frozen = freeze i32 %321
  %div124.i = udiv i32 %.frozen, 1000
  %rem125.i = urem i32 %div124.i, 60
  %322 = mul i32 %div124.i, 1000
  %rem126.i.decomposed = sub i32 %.frozen, %322
  %323 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %sequence.i, align 8
  %325 = ptrtoint ptr %field_cap.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %field_cap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %326)
  %cmp130.i = icmp eq i32 %326, 7
  br i1 %cmp130.i, label %cond.true.i, label %if.then119.i.if.end142.i_crit_edge

if.then119.i.if.end142.i_crit_edge:               ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142.i

cond.true.i:                                      ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #10
  %327 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %328)
  %cmp134.i = icmp eq i32 %328, 2
  %cond136.i = select i1 %cmp134.i, ptr @.str.40, ptr @.str.41
  br label %if.end142.i

if.end142.i:                                      ; preds = %cond.true.i, %if.then119.i.if.end142.i_crit_edge
  %cond137.i = phi ptr [ %cond136.i, %cond.true.i ], [ @.str.42, %if.then119.i.if.end142.i_crit_edge ]
  %call138.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 100, ptr noundef nonnull @.str.39, i32 noundef %rem.zext.i, i32 noundef %rem123.i, i32 noundef %rem125.i, i32 noundef %rem126.i.decomposed, i32 noundef %324, ptr noundef nonnull %cond137.i) #8
  call void @tpg_gen_text(ptr noundef %tpg1.i, ptr noundef nonnull %basep.i, i32 noundef %68, i32 noundef 16, ptr noundef nonnull %str.i) #8
  %329 = ptrtoint ptr %osd_mode.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %.pr.i = load i32, ptr %osd_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp144.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp144.i, label %if.then146.i, label %if.end142.i.vivid_fillbuff.exit_crit_edge

if.end142.i.vivid_fillbuff.exit_crit_edge:        ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vivid_fillbuff.exit

if.then146.i:                                     ; preds = %if.end142.i
  %width.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 237, i32 2
  %330 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 237, i32 3
  %332 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %height.i, align 4
  %334 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %input.i.i.i, align 4
  %call150.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 100, ptr noundef nonnull @.str.43, i32 noundef %331, i32 noundef %333, i32 noundef %335) #8
  %mul153.i = shl nuw nsw i32 %68, 1
  call void @tpg_gen_text(ptr noundef %tpg1.i, ptr noundef nonnull %basep.i, i32 noundef %mul153.i, i32 noundef 16, ptr noundef nonnull %str.i) #8
  %336 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 82
  %gain155.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 82, i32 1
  %337 = ptrtoint ptr %gain155.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %gain155.i, align 4
  %call156.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %338) #8
  %lock.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 12, i32 1
  %339 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %lock.i, align 4
  call void @mutex_lock_nested(ptr noundef %340, i32 noundef 0) #8
  %brightness.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 78
  %341 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %brightness.i, align 8
  %cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %342, i32 0, i32 23
  %343 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %cur.i, align 8
  %contrast.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 79
  %345 = ptrtoint ptr %contrast.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %contrast.i, align 4
  %cur158.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %346, i32 0, i32 23
  %347 = ptrtoint ptr %cur158.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %cur158.i, align 8
  %saturation.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 80
  %349 = ptrtoint ptr %saturation.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %saturation.i, align 8
  %cur160.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %350, i32 0, i32 23
  %351 = ptrtoint ptr %cur160.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %cur160.i, align 8
  %hue.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 81
  %353 = ptrtoint ptr %hue.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %hue.i, align 4
  %cur162.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %354, i32 0, i32 23
  %355 = ptrtoint ptr %cur162.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %cur162.i, align 8
  %call164.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 100, ptr noundef nonnull @.str.44, i32 noundef %344, i32 noundef %348, i32 noundef %352, i32 noundef %356) #8
  %mul167.i = mul nuw nsw i32 %68, 3
  call void @tpg_gen_text(ptr noundef %tpg1.i, ptr noundef nonnull %basep.i, i32 noundef %mul167.i, i32 noundef 16, ptr noundef nonnull %str.i) #8
  %357 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %336, align 8
  %cur170.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %358, i32 0, i32 23
  %359 = ptrtoint ptr %cur170.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %cur170.i, align 8
  %alpha.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 85
  %361 = ptrtoint ptr %alpha.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %alpha.i, align 8
  %cur172.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %362, i32 0, i32 23
  %363 = ptrtoint ptr %cur172.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %cur172.i, align 8
  %call174.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 100, ptr noundef nonnull @.str.45, i32 noundef %360, i32 noundef %call156.i, i32 noundef %364) #8
  %365 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %lock.i, align 4
  call void @mutex_unlock(ptr noundef %366) #8
  %mul179.i = shl nuw nsw i32 %68, 2
  call void @tpg_gen_text(ptr noundef %tpg1.i, ptr noundef nonnull %basep.i, i32 noundef %mul179.i, i32 noundef 16, ptr noundef nonnull %str.i) #8
  %lock181.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 13, i32 1
  %367 = ptrtoint ptr %lock181.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %lock181.i, align 4
  call void @mutex_lock_nested(ptr noundef %368, i32 noundef 0) #8
  %volume.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 83
  %369 = ptrtoint ptr %volume.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %volume.i, align 8
  %cur183.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %370, i32 0, i32 23
  %371 = ptrtoint ptr %cur183.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %cur183.i, align 8
  %mute.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 84
  %373 = ptrtoint ptr %mute.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %mute.i, align 4
  %cur185.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %374, i32 0, i32 23
  %375 = ptrtoint ptr %cur185.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %cur185.i, align 8
  %call187.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 100, ptr noundef nonnull @.str.46, i32 noundef %372, i32 noundef %376) #8
  %377 = ptrtoint ptr %lock181.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %lock181.i, align 4
  call void @mutex_unlock(ptr noundef %378) #8
  %mul192.i = mul nuw nsw i32 %68, 5
  call void @tpg_gen_text(ptr noundef %tpg1.i, ptr noundef nonnull %basep.i, i32 noundef %mul192.i, i32 noundef 16, ptr noundef nonnull %str.i) #8
  %lock194.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 11, i32 1
  %379 = ptrtoint ptr %lock194.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %lock194.i, align 4
  call void @mutex_lock_nested(ptr noundef %380, i32 noundef 0) #8
  %int32.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 88
  %381 = ptrtoint ptr %int32.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %int32.i, align 4
  %cur196.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %382, i32 0, i32 23
  %383 = ptrtoint ptr %cur196.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %cur196.i, align 8
  %385 = ptrtoint ptr %ro_int32.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %ro_int32.i, align 4
  %cur199.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %386, i32 0, i32 23
  %387 = ptrtoint ptr %cur199.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %cur199.i, align 8
  %int64.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 89
  %389 = ptrtoint ptr %int64.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %int64.i, align 8
  %p_cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %390, i32 0, i32 26
  %391 = ptrtoint ptr %p_cur.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %p_cur.i, align 4
  %393 = ptrtoint ptr %392 to i32
  call void @__asan_load8_noabort(i32 %393)
  %394 = load i64, ptr %392, align 8
  %bitmask.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 92
  %395 = ptrtoint ptr %bitmask.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %bitmask.i, align 4
  %cur201.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %396, i32 0, i32 23
  %397 = ptrtoint ptr %cur201.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %cur201.i, align 8
  %call203.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 100, ptr noundef nonnull @.str.47, i32 noundef %384, i32 noundef %388, i64 noundef %394, i32 noundef %398) #8
  %mul206.i = mul nuw nsw i32 %68, 6
  call void @tpg_gen_text(ptr noundef %tpg1.i, ptr noundef nonnull %basep.i, i32 noundef %mul206.i, i32 noundef 16, ptr noundef nonnull %str.i) #8
  %boolean.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 87
  %399 = ptrtoint ptr %boolean.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %boolean.i, align 8
  %cur209.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %400, i32 0, i32 23
  %401 = ptrtoint ptr %cur209.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %cur209.i, align 8
  %menu.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 90
  %403 = ptrtoint ptr %menu.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %menu.i, align 4
  %405 = getelementptr inbounds %struct.v4l2_ctrl, ptr %404, i32 0, i32 19
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %405, align 8
  %cur212.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %404, i32 0, i32 23
  %408 = ptrtoint ptr %cur212.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %cur212.i, align 8
  %arrayidx214.i = getelementptr ptr, ptr %407, i32 %409
  %410 = ptrtoint ptr %arrayidx214.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %arrayidx214.i, align 4
  %string.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 91
  %412 = ptrtoint ptr %string.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %string.i, align 8
  %p_cur215.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %413, i32 0, i32 26
  %414 = ptrtoint ptr %p_cur215.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %p_cur215.i, align 4
  %call216.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 100, ptr noundef nonnull @.str.48, i32 noundef %402, ptr noundef %411, ptr noundef %415) #8
  %mul219.i = mul nuw nsw i32 %68, 7
  call void @tpg_gen_text(ptr noundef %tpg1.i, ptr noundef nonnull %basep.i, i32 noundef %mul219.i, i32 noundef 16, ptr noundef nonnull %str.i) #8
  %int_menu.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 93
  %416 = ptrtoint ptr %int_menu.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %int_menu.i, align 8
  %418 = getelementptr inbounds %struct.v4l2_ctrl, ptr %417, i32 0, i32 19
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %418, align 8
  %cur223.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %417, i32 0, i32 23
  %421 = ptrtoint ptr %cur223.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %cur223.i, align 8
  %arrayidx225.i = getelementptr i64, ptr %420, i32 %422
  %423 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_load8_noabort(i32 %423)
  %424 = load i64, ptr %arrayidx225.i, align 8
  %call229.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 100, ptr noundef nonnull @.str.49, i64 noundef %424, i32 noundef %422) #8
  %425 = ptrtoint ptr %lock194.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %lock194.i, align 4
  call void @mutex_unlock(ptr noundef %426) #8
  %mul234.i = shl nuw nsw i32 %68, 3
  call void @tpg_gen_text(ptr noundef %tpg1.i, ptr noundef nonnull %basep.i, i32 noundef %mul234.i, i32 noundef 16, ptr noundef nonnull %str.i) #8
  %button_pressed.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 133
  %427 = ptrtoint ptr %button_pressed.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %button_pressed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %428)
  %tobool236.not.i = icmp eq i32 %428, 0
  br i1 %tobool236.not.i, label %if.then146.i.if.end245.i_crit_edge, label %if.then237.i

if.then146.i.if.end245.i_crit_edge:               ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245.i

if.then237.i:                                     ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i32 %428, -1
  %429 = ptrtoint ptr %button_pressed.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %dec.i, ptr %button_pressed.i, align 4
  %430 = call ptr @memcpy(ptr %str.i, ptr @.str.50, i32 17)
  %mul243.i = mul nuw nsw i32 %68, 9
  call void @tpg_gen_text(ptr noundef %tpg1.i, ptr noundef nonnull %basep.i, i32 noundef %mul243.i, i32 noundef 16, ptr noundef nonnull %str.i) #8
  br label %if.end245.i

if.end245.i:                                      ; preds = %if.then237.i, %if.then146.i.if.end245.i_crit_edge
  %line.1.i = phi i32 [ 10, %if.then237.i ], [ 9, %if.then146.i.if.end245.i_crit_edge ]
  %osd.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 361
  %431 = ptrtoint ptr %osd.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %osd.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %432)
  %tobool247.not.i = icmp eq i8 %432, 0
  br i1 %tobool247.not.i, label %if.end245.i.vivid_fillbuff.exit_crit_edge, label %if.then248.i

if.end245.i.vivid_fillbuff.exit_crit_edge:        ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vivid_fillbuff.exit

if.then248.i:                                     ; preds = %if.end245.i
  %433 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %input.i.i.i, align 4
  %arrayidx.i440.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 53, i32 %434
  %435 = ptrtoint ptr %arrayidx.i440.i to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %arrayidx.i440.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %436)
  %cmp.i441.i = icmp eq i8 %436, 3
  br i1 %cmp.i441.i, label %if.then250.i, label %if.then248.i.if.end259.i_crit_edge

if.then248.i.if.end259.i_crit_edge:               ; preds = %if.then248.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end259.i

if.then250.i:                                     ; preds = %if.then248.i
  call void @__sanitizer_cov_trace_pc() #10
  %call254.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 100, ptr noundef nonnull @.str.51, ptr noundef %osd.i) #8
  %mul257.i = mul nuw nsw i32 %line.1.i, %68
  call void @tpg_gen_text(ptr noundef %tpg1.i, ptr noundef nonnull %basep.i, i32 noundef %mul257.i, i32 noundef 16, ptr noundef nonnull %str.i) #8
  br label %if.end259.i

if.end259.i:                                      ; preds = %if.then250.i, %if.then248.i.if.end259.i_crit_edge
  %osd_jiffies.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 362
  %437 = ptrtoint ptr %osd_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %osd_jiffies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %438)
  %tobool260.not.i = icmp eq i32 %438, 0
  br i1 %tobool260.not.i, label %if.end259.i.vivid_fillbuff.exit_crit_edge, label %land.lhs.true261.i

if.end259.i.vivid_fillbuff.exit_crit_edge:        ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vivid_fillbuff.exit

land.lhs.true261.i:                               ; preds = %if.end259.i
  %add.i599 = add i32 %438, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %439 = load volatile i32, ptr @jiffies, align 128
  %sub263.i = sub i32 %add.i599, %439
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub263.i)
  %cmp264.i = icmp slt i32 %sub263.i, 0
  br i1 %cmp264.i, label %if.then266.i, label %land.lhs.true261.i.vivid_fillbuff.exit_crit_edge

land.lhs.true261.i.vivid_fillbuff.exit_crit_edge: ; preds = %land.lhs.true261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vivid_fillbuff.exit

if.then266.i:                                     ; preds = %land.lhs.true261.i
  call void @__sanitizer_cov_trace_pc() #10
  %440 = ptrtoint ptr %osd.i to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 0, ptr %osd.i, align 1
  %441 = ptrtoint ptr %osd_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 0, ptr %osd_jiffies.i, align 4
  br label %vivid_fillbuff.exit

vivid_fillbuff.exit:                              ; preds = %if.then266.i, %land.lhs.true261.i.vivid_fillbuff.exit_crit_edge, %if.end259.i.vivid_fillbuff.exit_crit_edge, %if.end245.i.vivid_fillbuff.exit_crit_edge, %if.end142.i.vivid_fillbuff.exit_crit_edge, %if.end115.i.vivid_fillbuff.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %str.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %basep.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %442 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %442)
  %cmp57.not = icmp eq i32 %442, 0
  br i1 %cmp57.not, label %vivid_fillbuff.exit.do.end72_crit_edge, label %do.end62

vivid_fillbuff.exit.do.end72_crit_edge:           ; preds = %vivid_fillbuff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end72

do.end62:                                         ; preds = %vivid_fillbuff.exit
  call void @__sanitizer_cov_trace_pc() #10
  %name65 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %443 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %index.i, align 4
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name65, i32 noundef %444) #11
  br label %do.end72

do.end72:                                         ; preds = %do.end62, %vivid_fillbuff.exit.do.end72_crit_edge
  %overlay_cap_owner = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 190
  %445 = ptrtoint ptr %overlay_cap_owner to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %overlay_cap_owner, align 8
  %tobool73.not = icmp eq ptr %446, null
  br i1 %tobool73.not, label %do.end72.if.end81_crit_edge, label %land.lhs.true74

do.end72.if.end81_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

land.lhs.true74:                                  ; preds = %do.end72
  %base = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 189, i32 2
  %447 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %base, align 4
  %tobool75.not = icmp eq ptr %448, null
  br i1 %tobool75.not, label %land.lhs.true74.if.end81_crit_edge, label %land.lhs.true76

land.lhs.true74.if.end81_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

land.lhs.true76:                                  ; preds = %land.lhs.true74
  %pixelformat = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 189, i32 3, i32 2
  %449 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %pixelformat, align 4
  %451 = ptrtoint ptr %fmt_cap.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %fmt_cap.i, align 4
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %452, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %450, i32 %454)
  %cmp78 = icmp eq i32 %450, %454
  br i1 %cmp78, label %if.then80, label %land.lhs.true76.if.end81_crit_edge

land.lhs.true76.if.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then80:                                        ; preds = %land.lhs.true76
  %arrayidx.i.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 42
  %455 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %arrayidx.i.i, align 4
  %div188.i = lshr i32 %456, 1
  %fb_vbase_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 191
  %457 = ptrtoint ptr %fb_vbase_cap.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %fb_vbase_cap.i, align 4
  %call2.i = call ptr @vb2_plane_vaddr(ptr noundef nonnull %vid_cap_buf.0, i32 noundef 0) #8
  %compose_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 240
  %width.i600 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 240, i32 2
  %459 = ptrtoint ptr %width.i600 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %width.i600, align 4
  %height.i601 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 240, i32 3
  %461 = ptrtoint ptr %height.i601 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %height.i601, align 4
  %463 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %bytesperline.i, align 4
  %bitmap_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 195
  %465 = ptrtoint ptr %bitmap_cap.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %bitmap_cap.i, align 4
  %cmp.i603 = icmp eq ptr %466, null
  br i1 %cmp.i603, label %land.rhs.i604, label %if.then80.land.end.i605_crit_edge

if.then80.land.end.i605_crit_edge:                ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i605

land.rhs.i604:                                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %clipcount_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 198
  %467 = ptrtoint ptr %clipcount_cap.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %clipcount_cap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %468)
  %cmp4.i = icmp eq i32 %468, 0
  br label %land.end.i605

land.end.i605:                                    ; preds = %land.rhs.i604, %if.then80.land.end.i605_crit_edge
  %469 = phi i1 [ false, %if.then80.land.end.i605_crit_edge ], [ %cmp4.i, %land.rhs.i604 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %456)
  %cmp5.i = icmp ult i32 %456, 2
  br i1 %cmp5.i, label %do.end.i, label %if.end26.i, !prof !109

do.end.i:                                         ; preds = %land.end.i605
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 611, i32 noundef 9, ptr noundef null) #8
  br label %if.end81

if.end26.i:                                       ; preds = %land.end.i605
  %overlay_cap_field.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 194
  %470 = ptrtoint ptr %overlay_cap_field.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %overlay_cap_field.i, align 8
  %472 = and i32 %471, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %472)
  %switch.i606 = icmp eq i32 %472, 2
  br i1 %switch.i606, label %land.lhs.true.i607, label %if.end26.i.if.end34.i_crit_edge

if.end26.i.if.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true.i607:                               ; preds = %if.end26.i
  %473 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %108, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %471, i32 %474)
  %cmp32.not.i = icmp eq i32 %471, %474
  br i1 %cmp32.not.i, label %land.lhs.true.i607.if.end34.i_crit_edge, label %land.lhs.true.i607.if.end81_crit_edge

land.lhs.true.i607.if.end81_crit_edge:            ; preds = %land.lhs.true.i607
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

land.lhs.true.i607.if.end34.i_crit_edge:          ; preds = %land.lhs.true.i607
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.end34.i:                                       ; preds = %land.lhs.true.i607.if.end34.i_crit_edge, %if.end26.i.if.end34.i_crit_edge
  %475 = ptrtoint ptr %compose_cap.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %compose_cap.i, align 4
  %mul.i608 = mul i32 %476, %div188.i
  %top.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 240, i32 1
  %477 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %top.i, align 4
  %mul37.i = mul i32 %478, %464
  %add.i609 = add i32 %mul37.i, %mul.i608
  %add.ptr.i610 = getelementptr i8, ptr %call2.i, i32 %add.i609
  %overlay_cap_left.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 193
  %479 = ptrtoint ptr %overlay_cap_left.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %overlay_cap_left.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %480)
  %cmp38.i = icmp slt i32 %480, 0
  br i1 %cmp38.i, label %if.then39.i, label %if.else.i

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i611 = sub i32 0, %480
  %sub40.i = add i32 %480, %460
  br label %if.end46.i

if.else.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %fmt.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 189, i32 3
  %481 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %fmt.i, align 4
  %sub42.i = sub i32 %482, %480
  %483 = call i32 @llvm.umin.i32(i32 %sub42.i, i32 %460) #8
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else.i, %if.then39.i
  %x.0.i = phi i32 [ 0, %if.then39.i ], [ %480, %if.else.i ]
  %w.0.i = phi i32 [ %sub40.i, %if.then39.i ], [ %483, %if.else.i ]
  %out_x.0.i = phi i32 [ %sub.i611, %if.then39.i ], [ 0, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %w.0.i)
  %cmp47.i612 = icmp slt i32 %w.0.i, 1
  br i1 %cmp47.i612, label %if.end46.i.if.end81_crit_edge, label %if.end49.i

if.end46.i.if.end81_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.end49.i:                                       ; preds = %if.end46.i
  %overlay_cap_top.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 192
  %484 = ptrtoint ptr %overlay_cap_top.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %overlay_cap_top.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %485)
  %cmp50.i = icmp sgt i32 %485, -1
  br i1 %cmp50.i, label %if.then51.i, label %if.end49.i.if.end58.i_crit_edge

if.end49.i.if.end58.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then51.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %bytesperline55.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 189, i32 3, i32 4
  %486 = ptrtoint ptr %bytesperline55.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %bytesperline55.i, align 4
  %mul56.i = mul i32 %487, %485
  %add.ptr57.i = getelementptr i8, ptr %458, i32 %mul56.i
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then51.i, %if.end49.i.if.end58.i_crit_edge
  %vbase.0.i = phi ptr [ %add.ptr57.i, %if.then51.i ], [ %458, %if.end49.i.if.end58.i_crit_edge ]
  %add61193.i = add i32 %485, %462
  call void @__sanitizer_cov_trace_cmp4(i32 %485, i32 %add61193.i)
  %cmp62194.i = icmp slt i32 %485, %add61193.i
  br i1 %cmp62194.i, label %for.body.lr.ph.i, label %if.end58.i.if.end81_crit_edge

if.end58.i.if.end81_crit_edge:                    ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

for.body.lr.ph.i:                                 ; preds = %if.end58.i
  %height67.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 189, i32 3, i32 1
  %clipcount_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 198
  %bytesperline101.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 189, i32 3, i32 4
  %mul73.i = mul i32 %x.0.i, %div188.i
  %mul75.i = mul i32 %out_x.0.i, %div188.i
  %mul77.i = mul i32 %w.0.i, %div188.i
  br label %for.body.i613

for.body.i613:                                    ; preds = %cleanup.i.for.body.i613_crit_edge, %for.body.lr.ph.i
  %y.0199.i = phi i32 [ %485, %for.body.lr.ph.i ], [ %inc104.i, %cleanup.i.for.body.i613_crit_edge ]
  %vbuf.0196.i = phi ptr [ %add.ptr.i610, %for.body.lr.ph.i ], [ %add.ptr105.i, %cleanup.i.for.body.i613_crit_edge ]
  %vbase.1195.i = phi ptr [ %vbase.0.i, %for.body.lr.ph.i ], [ %vbase.2.i, %cleanup.i.for.body.i613_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %y.0199.i)
  %cmp63.i = icmp slt i32 %y.0199.i, 0
  br i1 %cmp63.i, label %for.body.i613.cleanup.i_crit_edge, label %lor.lhs.false64.i

for.body.i613.cleanup.i_crit_edge:                ; preds = %for.body.i613
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false64.i:                                ; preds = %for.body.i613
  %488 = ptrtoint ptr %height67.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %height67.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %y.0199.i, i32 %489)
  %cmp68.i = icmp ugt i32 %y.0199.i, %489
  br i1 %cmp68.i, label %lor.lhs.false64.i.cleanup.i_crit_edge, label %if.end70.i

lor.lhs.false64.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end70.i:                                       ; preds = %lor.lhs.false64.i
  br i1 %469, label %if.then72.i, label %if.end70.i.for.body85.i_crit_edge

if.end70.i.for.body85.i_crit_edge:                ; preds = %if.end70.i
  br label %for.body85.i

if.then72.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr74.i = getelementptr i8, ptr %vbase.1195.i, i32 %mul73.i
  %add.ptr76.i = getelementptr i8, ptr %vbuf.0196.i, i32 %mul75.i
  %490 = call ptr @memcpy(ptr %add.ptr74.i, ptr %add.ptr76.i, i32 %mul77.i)
  br label %cleanup.sink.split.i

for.body85.i:                                     ; preds = %for.inc.i.for.body85.i_crit_edge, %if.end70.i.for.body85.i_crit_edge
  %px.0192.i = phi i32 [ %inc.i622, %for.inc.i.for.body85.i_crit_edge ], [ 0, %if.end70.i.for.body85.i_crit_edge ]
  %add88.i = add i32 %px.0192.i, %out_x.0.i
  %add89.i = add nuw i32 %px.0192.i, %x.0.i
  %491 = ptrtoint ptr %bitmap_cap.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %bitmap_cap.i, align 4
  %tobool.not.i.i614 = icmp eq ptr %492, null
  br i1 %tobool.not.i.i614, label %for.body85.i.if.end8.i.i_crit_edge, label %if.then.i.i618

for.body85.i.if.end8.i.i_crit_edge:               ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.then.i.i618:                                   ; preds = %for.body85.i
  %493 = ptrtoint ptr %overlay_cap_top.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %overlay_cap_top.i, align 8
  %sub87.i = sub i32 %y.0199.i, %494
  %495 = ptrtoint ptr %width.i600 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %width.i600, align 4
  %add.i.i615 = add i32 %496, 7
  %div50.i.i = lshr i32 %add.i.i615, 3
  %mul.i.i616 = mul i32 %div50.i.i, %sub87.i
  %div2.i.i = sdiv i32 %add88.i, 8
  %add3.i.i = add i32 %mul.i.i616, %div2.i.i
  %arrayidx.i189.i = getelementptr i8, ptr %492, i32 %add3.i.i
  %497 = ptrtoint ptr %arrayidx.i189.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %arrayidx.i189.i, align 1
  %conv.i.i617 = zext i8 %498 to i32
  %and.i.i = and i32 %add88.i, 7
  %shl.i.i = shl nuw nsw i32 1, %and.i.i
  %and4.i.i = and i32 %shl.i.i, %conv.i.i617
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then.i.i618.for.inc.i_crit_edge, label %if.then.i.i618.if.end8.i.i_crit_edge

if.then.i.i618.if.end8.i.i_crit_edge:             ; preds = %if.then.i.i618
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.then.i.i618.for.inc.i_crit_edge:               ; preds = %if.then.i.i618
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end8.i.i:                                      ; preds = %if.then.i.i618.if.end8.i.i_crit_edge, %for.body85.i.if.end8.i.i_crit_edge
  %499 = ptrtoint ptr %clipcount_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %clipcount_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %500)
  %cmp51.not.i.i = icmp eq i32 %500, 0
  br i1 %cmp51.not.i.i, label %if.end8.i.i.if.end92.i_crit_edge, label %if.end8.i.i.for.body.i.i619_crit_edge

if.end8.i.i.for.body.i.i619_crit_edge:            ; preds = %if.end8.i.i
  br label %for.body.i.i619

if.end8.i.i.if.end92.i_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i

for.body.i.i619:                                  ; preds = %for.inc.critedge.i.i.for.body.i.i619_crit_edge, %if.end8.i.i.for.body.i.i619_crit_edge
  %i.052.i.i = phi i32 [ %inc.i.i620, %for.inc.critedge.i.i.for.body.i.i619_crit_edge ], [ 0, %if.end8.i.i.for.body.i.i619_crit_edge ]
  %arrayidx10.i.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 196, i32 %i.052.i.i
  %top.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx10.i.i, i32 0, i32 1
  %501 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %top.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %502, i32 %y.0199.i)
  %cmp11.not.i.i = icmp sgt i32 %502, %y.0199.i
  br i1 %cmp11.not.i.i, label %for.body.i.i619.for.inc.critedge.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i619.for.inc.critedge.i.i_crit_edge:   ; preds = %for.body.i.i619
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i619
  %height.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx10.i.i, i32 0, i32 3
  %503 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %height.i.i, align 4
  %add14.i.i = add i32 %504, %502
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i.i, i32 %y.0199.i)
  %cmp15.i.i = icmp ugt i32 %add14.i.i, %y.0199.i
  br i1 %cmp15.i.i, label %land.lhs.true17.i.i, label %land.lhs.true.i.i.for.inc.critedge.i.i_crit_edge

land.lhs.true.i.i.for.inc.critedge.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge.i.i

land.lhs.true17.i.i:                              ; preds = %land.lhs.true.i.i
  %505 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %arrayidx10.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %506, i32 %add89.i)
  %cmp18.not.i.i = icmp sgt i32 %506, %add89.i
  br i1 %cmp18.not.i.i, label %land.lhs.true17.i.i.for.inc.critedge.i.i_crit_edge, label %land.lhs.true20.i.i

land.lhs.true17.i.i.for.inc.critedge.i.i_crit_edge: ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge.i.i

land.lhs.true20.i.i:                              ; preds = %land.lhs.true17.i.i
  %width22.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx10.i.i, i32 0, i32 2
  %507 = ptrtoint ptr %width22.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %width22.i.i, align 4
  %add23.i.i = add i32 %508, %506
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i.i, i32 %add89.i)
  %cmp24.i.i = icmp ugt i32 %add23.i.i, %add89.i
  br i1 %cmp24.i.i, label %land.lhs.true20.i.i.for.inc.i_crit_edge, label %land.lhs.true20.i.i.for.inc.critedge.i.i_crit_edge

land.lhs.true20.i.i.for.inc.critedge.i.i_crit_edge: ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge.i.i

land.lhs.true20.i.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.critedge.i.i:                             ; preds = %land.lhs.true20.i.i.for.inc.critedge.i.i_crit_edge, %land.lhs.true17.i.i.for.inc.critedge.i.i_crit_edge, %land.lhs.true.i.i.for.inc.critedge.i.i_crit_edge, %for.body.i.i619.for.inc.critedge.i.i_crit_edge
  %inc.i.i620 = add nuw i32 %i.052.i.i, 1
  %exitcond.not.i.i621 = icmp eq i32 %inc.i.i620, %500
  br i1 %exitcond.not.i.i621, label %for.inc.critedge.i.i.if.end92.i_crit_edge, label %for.inc.critedge.i.i.for.body.i.i619_crit_edge

for.inc.critedge.i.i.for.body.i.i619_crit_edge:   ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i619

for.inc.critedge.i.i.if.end92.i_crit_edge:        ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i

if.end92.i:                                       ; preds = %for.inc.critedge.i.i.if.end92.i_crit_edge, %if.end8.i.i.if.end92.i_crit_edge
  %mul94.i = mul i32 %add89.i, %div188.i
  %add.ptr95.i = getelementptr i8, ptr %vbase.1195.i, i32 %mul94.i
  %mul97.i = mul i32 %add88.i, %div188.i
  %add.ptr98.i = getelementptr i8, ptr %vbuf.0196.i, i32 %mul97.i
  %509 = call ptr @memcpy(ptr %add.ptr95.i, ptr %add.ptr98.i, i32 %div188.i)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end92.i, %land.lhs.true20.i.i.for.inc.i_crit_edge, %if.then.i.i618.for.inc.i_crit_edge
  %inc.i622 = add nuw nsw i32 %px.0192.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i622, %w.0.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup.sink.split.i_crit_edge, label %for.inc.i.for.body85.i_crit_edge

for.inc.i.for.body85.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body85.i

for.inc.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.inc.i.cleanup.sink.split.i_crit_edge, %if.then72.i
  %510 = ptrtoint ptr %bytesperline101.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %bytesperline101.i, align 4
  %add.ptr102.i = getelementptr i8, ptr %vbase.1195.i, i32 %511
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %lor.lhs.false64.i.cleanup.i_crit_edge, %for.body.i613.cleanup.i_crit_edge
  %vbase.2.i = phi ptr [ %vbase.1195.i, %lor.lhs.false64.i.cleanup.i_crit_edge ], [ %vbase.1195.i, %for.body.i613.cleanup.i_crit_edge ], [ %add.ptr102.i, %cleanup.sink.split.i ]
  %inc104.i = add nsw i32 %y.0199.i, 1
  %add.ptr105.i = getelementptr i8, ptr %vbuf.0196.i, i32 %464
  %512 = ptrtoint ptr %overlay_cap_top.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %overlay_cap_top.i, align 8
  %add61.i = add i32 %513, %462
  %cmp62.i = icmp slt i32 %inc104.i, %add61.i
  br i1 %cmp62.i, label %cleanup.i.for.body.i613_crit_edge, label %cleanup.i.if.end81_crit_edge

cleanup.i.if.end81_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

cleanup.i.for.body.i613_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i613

if.end81:                                         ; preds = %cleanup.i.if.end81_crit_edge, %if.end58.i.if.end81_crit_edge, %if.end46.i.if.end81_crit_edge, %land.lhs.true.i607.if.end81_crit_edge, %do.end.i, %land.lhs.true76.if.end81_crit_edge, %land.lhs.true74.if.end81_crit_edge, %do.end72.if.end81_crit_edge
  %514 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %req, align 4
  call void @v4l2_ctrl_request_complete(ptr noundef %515, ptr noundef %ctrl_hdl_vid_cap) #8
  %dqbuf_error = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 156
  %516 = ptrtoint ptr %dqbuf_error to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %dqbuf_error, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %517)
  %tobool89.not = icmp eq i8 %517, 0
  %cond = select i1 %tobool89.not, i32 5, i32 6
  call void @vb2_buffer_done(ptr noundef nonnull %vid_cap_buf.0, i32 noundef %cond) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %518 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %518)
  %cmp92 = icmp ugt i32 %518, 1
  br i1 %cmp92, label %do.end97, label %if.end81.do.end108_crit_edge

if.end81.do.end108_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end108

do.end97:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %name100 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %519 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %index.i, align 4
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name100, i32 noundef %520) #11
  br label %do.end108

do.end108:                                        ; preds = %do.end97, %if.end81.do.end108_crit_edge
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %vid_cap_buf.0, i32 0, i32 5
  %521 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %521)
  store i64 %add52, ptr %timestamp, align 8
  %tstamp_src_is_soe = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 322
  %522 = ptrtoint ptr %tstamp_src_is_soe to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %tstamp_src_is_soe, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %523)
  %tobool111.not = icmp eq i8 %523, 0
  br i1 %tobool111.not, label %if.then112, label %do.end108.if.end118_crit_edge

do.end108.if.end118_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then112:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  %cap_frame_eof_offset = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 254
  %524 = ptrtoint ptr %cap_frame_eof_offset to i32
  call void @__asan_load8_noabort(i32 %524)
  %525 = load i64, ptr %cap_frame_eof_offset, align 8
  %add116 = add i64 %525, %add52
  %526 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %526)
  store i64 %add116, ptr %timestamp, align 8
  br label %if.end118

if.end118:                                        ; preds = %if.then112, %do.end108.if.end118_crit_edge, %if.end51.if.end118_crit_edge
  br i1 %tobool47.not, label %if.end118.if.end362_crit_edge, label %if.then120

if.end118.if.end362_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end362

if.then120:                                       ; preds = %if.end118
  %req124 = getelementptr inbounds %struct.vb2_buffer, ptr %vbi_cap_buf.0, i32 0, i32 7, i32 2
  %527 = ptrtoint ptr %req124 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %req124, align 4
  %ctrl_hdl_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 23
  %call125 = call i32 @v4l2_ctrl_request_setup(ptr noundef %528, ptr noundef %ctrl_hdl_vbi_cap) #8
  %type = getelementptr inbounds %struct.vb2_buffer, ptr %vbi_cap_buf.0, i32 0, i32 2
  %529 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %530)
  %cmp128 = icmp eq i32 %530, 6
  br i1 %cmp128, label %if.then130, label %if.else

if.then130:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  call void @vivid_sliced_vbi_cap_process(ptr noundef %dev, ptr noundef nonnull %vbi_cap_buf.0) #8
  br label %if.end131

if.else:                                          ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  call void @vivid_raw_vbi_cap_process(ptr noundef %dev, ptr noundef nonnull %vbi_cap_buf.0) #8
  br label %if.end131

if.end131:                                        ; preds = %if.else, %if.then130
  %531 = ptrtoint ptr %req124 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %req124, align 4
  call void @v4l2_ctrl_request_complete(ptr noundef %532, ptr noundef %ctrl_hdl_vbi_cap) #8
  %dqbuf_error139 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 156
  %533 = ptrtoint ptr %dqbuf_error139 to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %dqbuf_error139, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %534)
  %tobool140.not = icmp eq i8 %534, 0
  %cond142 = select i1 %tobool140.not, i32 5, i32 6
  call void @vb2_buffer_done(ptr noundef nonnull %vbi_cap_buf.0, i32 noundef %cond142) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %535 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %535)
  %cmp144 = icmp ugt i32 %535, 1
  br i1 %cmp144, label %do.end149, label %if.end131.if.end354_crit_edge

if.end131.if.end354_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end354

do.end149:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  %name152 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %index156 = getelementptr inbounds %struct.vb2_buffer, ptr %vbi_cap_buf.0, i32 0, i32 1
  %536 = ptrtoint ptr %index156 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %index156, align 4
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name152, i32 noundef %537) #11
  br label %if.end354

if.end354:                                        ; preds = %do.end149, %if.end131.if.end354_crit_edge
  %538 = ptrtoint ptr %cap_frame_period to i32
  call void @__asan_load8_noabort(i32 %538)
  %539 = load i64, ptr %cap_frame_period, align 8
  %mul162 = mul i64 %539, 5
  %540 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul162, i32 0) #12, !srcloc !114
  %asmresult.i = extractvalue { i64, i32 } %540, 0
  %asmresult4.i = extractvalue { i64, i32 } %540, 1
  %541 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul162, i64 %asmresult.i, i32 %asmresult4.i) #12, !srcloc !115
  %asmresult10.i = extractvalue { i64, i32 } %541, 0
  %vbi_period.0 = lshr i64 %asmresult10.i, 6
  %cap_frame_eof_offset356 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 254
  %542 = ptrtoint ptr %cap_frame_eof_offset356 to i32
  call void @__asan_load8_noabort(i32 %542)
  %543 = load i64, ptr %cap_frame_eof_offset356, align 8
  %add357 = add i64 %543, %add52
  %add358 = add i64 %add357, %vbi_period.0
  %timestamp361 = getelementptr inbounds %struct.vb2_buffer, ptr %vbi_cap_buf.0, i32 0, i32 5
  %544 = ptrtoint ptr %timestamp361 to i32
  call void @__asan_store8_noabort(i32 %544)
  store i64 %add358, ptr %timestamp361, align 8
  br label %if.end362

if.end362:                                        ; preds = %if.end354, %if.end118.if.end362_crit_edge
  br i1 %tobool49.not, label %if.end362.if.end404_crit_edge, label %if.then364

if.end362.if.end404_crit_edge:                    ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end404

if.then364:                                       ; preds = %if.end362
  %req368 = getelementptr inbounds %struct.vb2_buffer, ptr %meta_cap_buf.0, i32 0, i32 7, i32 2
  %545 = ptrtoint ptr %req368 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %req368, align 4
  %ctrl_hdl_meta_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 33
  %call369 = call i32 @v4l2_ctrl_request_setup(ptr noundef %546, ptr noundef %ctrl_hdl_meta_cap) #8
  call void @vivid_meta_cap_fillbuff(ptr noundef %dev, ptr noundef nonnull %meta_cap_buf.0, i64 noundef %add52) #8
  %547 = ptrtoint ptr %req368 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %req368, align 4
  call void @v4l2_ctrl_request_complete(ptr noundef %548, ptr noundef %ctrl_hdl_meta_cap) #8
  %dqbuf_error377 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 156
  %549 = ptrtoint ptr %dqbuf_error377 to i32
  call void @__asan_load1_noabort(i32 %549)
  %550 = load i8, ptr %dqbuf_error377, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %550)
  %tobool378.not = icmp eq i8 %550, 0
  %cond380 = select i1 %tobool378.not, i32 5, i32 6
  call void @vb2_buffer_done(ptr noundef nonnull %meta_cap_buf.0, i32 noundef %cond380) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %551 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %551)
  %cmp382 = icmp ugt i32 %551, 1
  br i1 %cmp382, label %do.end387, label %if.then364.do.end398_crit_edge

if.then364.do.end398_crit_edge:                   ; preds = %if.then364
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end398

do.end387:                                        ; preds = %if.then364
  call void @__sanitizer_cov_trace_pc() #10
  %name390 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %index394 = getelementptr inbounds %struct.vb2_buffer, ptr %meta_cap_buf.0, i32 0, i32 1
  %552 = ptrtoint ptr %index394 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %index394, align 4
  %call395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name390, i32 noundef %553) #11
  br label %do.end398

do.end398:                                        ; preds = %do.end387, %if.then364.do.end398_crit_edge
  %cap_frame_eof_offset399 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 254
  %554 = ptrtoint ptr %cap_frame_eof_offset399 to i32
  call void @__asan_load8_noabort(i32 %554)
  %555 = load i64, ptr %cap_frame_eof_offset399, align 8
  %add400 = add i64 %555, %add52
  %timestamp403 = getelementptr inbounds %struct.vb2_buffer, ptr %meta_cap_buf.0, i32 0, i32 5
  %556 = ptrtoint ptr %timestamp403 to i32
  call void @__asan_store8_noabort(i32 %556)
  store i64 %add400, ptr %timestamp403, align 8
  br label %if.end404

if.end404:                                        ; preds = %do.end398, %if.end362.if.end404_crit_edge
  %dqbuf_error405 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 156
  %557 = ptrtoint ptr %dqbuf_error405 to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 0, ptr %dqbuf_error405, align 4
  br label %update_mv

update_mv:                                        ; preds = %if.end404, %if.end43.update_mv_crit_edge, %land.lhs.true.update_mv_crit_edge
  %field_cap407 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 236
  %558 = ptrtoint ptr %field_cap407 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %field_cap407, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %559)
  %cmp408 = icmp eq i32 %559, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %559)
  %cmp412 = icmp eq i32 %559, 7
  %spec.select579 = or i1 %cmp408, %cmp412
  %mv_hor_step.i626 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 55
  %560 = ptrtoint ptr %mv_hor_step.i626 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %mv_hor_step.i626, align 4
  %cond.i627 = select i1 %spec.select579, i32 1, i32 2
  %mul.i628 = mul i32 %cond.i627, %561
  %mv_hor_count.i629 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 54
  %562 = ptrtoint ptr %mv_hor_count.i629 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %mv_hor_count.i629, align 4
  %add.i630 = add i32 %mul.i628, %563
  store i32 %add.i630, ptr %mv_hor_count.i629, align 4
  %mv_vert_step.i631 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 58
  %564 = ptrtoint ptr %mv_vert_step.i631 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %mv_vert_step.i631, align 4
  %mul3.i632 = mul i32 %565, %cond.i627
  %mv_vert_count.i633 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 57
  %566 = ptrtoint ptr %mv_vert_count.i633 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %mv_vert_count.i633, align 4
  %add4.i634 = add i32 %567, %mul3.i632
  store i32 %add4.i634, ptr %mv_vert_count.i633, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_request_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_sliced_vbi_cap_process(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_raw_vbi_cap_process(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_meta_cap_fillbuff(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_calc_text_basep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vivid_copy_buffer(ptr noundef %dev, i32 noundef %p, ptr nocapture noundef writeonly %vcapbuf, ptr nocapture noundef %vid_cap_buf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vid_cap_buf, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 233, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %fmt_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 278
  %4 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fmt_out, align 8
  %arrayidx2 = getelementptr %struct.vivid_fmt, ptr %5, i32 0, i32 3, i32 %p
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %7 to i32
  %arrayidx.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 42, i32 %p
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %compose_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 240
  %width = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 240, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %arrayidx.i521 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 37, i32 %p
  %12 = ptrtoint ptr %arrayidx.i521 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i521, align 1
  %conv.i = zext i8 %13 to i32
  %div.i = udiv i32 %11, %conv.i
  %arrayidx1.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 38, i32 %p
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.i, align 4
  %and.i = and i32 %15, %div.i
  %mul.i = mul i32 %and.i, %9
  %div38.i = lshr i32 %mul.i, 1
  %height = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 240, i32 3
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %arrayidx5 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 43, i32 %p
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5, align 4
  %bytesperline_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 208
  %arrayidx6 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 208, i32 %p
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx6, align 4
  %display_byte_stride = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 146
  %22 = ptrtoint ptr %display_byte_stride to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %display_byte_stride, align 4
  %perc_fill = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 47
  %24 = ptrtoint ptr %perc_fill to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %perc_fill, align 4
  %mul = mul i32 %25, %17
  %div = udiv i32 %mul, 100
  %bitmap_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 224
  %26 = ptrtoint ptr %bitmap_out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bitmap_out, align 8
  %tobool7.not = icmp eq ptr %27, null
  br i1 %tobool7.not, label %lor.lhs.false, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %clipcount_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 227
  %28 = ptrtoint ptr %clipcount_out to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clipcount_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool8.not = icmp eq i32 %29, 0
  br i1 %tobool8.not, label %lor.rhs, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %fbuf_out_flags = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 228
  %30 = ptrtoint ptr %fbuf_out_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fbuf_out_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool9 = icmp ne i32 %31, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %32 = phi i1 [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ %tobool9, %lor.rhs ]
  %loop_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 294
  %33 = ptrtoint ptr %loop_vid_cap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %loop_vid_cap, align 8
  %div.i524 = udiv i32 %34, %conv.i
  %and.i526 = and i32 %div.i524, %15
  %mul.i528 = mul i32 %and.i526, %9
  %div38.i529 = lshr i32 %mul.i528, 1
  %loop_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 293
  %height12 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 293, i32 3
  %35 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height12, align 4
  %height14 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 294, i32 3
  %37 = ptrtoint ptr %height14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height14, align 4
  %.frozen = freeze i32 %36
  %.frozen706 = freeze i32 %38
  %div15 = udiv i32 %.frozen, %.frozen706
  %39 = mul i32 %div15, %.frozen706
  %rem.decomposed = sub i32 %.frozen, %39
  %vid_out_active = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 287
  %40 = ptrtoint ptr %vid_out_active to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %vid_out_active, align 4
  %cmp.i.not = icmp eq ptr %41, %vid_out_active
  br i1 %cmp.i.not, label %lor.end.cleanup291_crit_edge, label %if.end

lor.end.cleanup291_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup291

if.end:                                           ; preds = %lor.end
  %add.ptr = getelementptr i8, ptr %41, i32 -736
  %cmp = icmp eq ptr %add.ptr, null
  br i1 %cmp, label %if.end.cleanup291_crit_edge, label %if.end25

if.end.cleanup291_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup291

if.end25:                                         ; preds = %if.end
  %field = getelementptr i8, ptr %41, i32 -292
  %42 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %field, align 4
  %field28 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vid_cap_buf, i32 0, i32 2
  %44 = ptrtoint ptr %field28 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %field28, align 4
  %height30 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 282, i32 3
  %45 = ptrtoint ptr %height30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p)
  %cmp.i531 = icmp eq i32 %p, 0
  br i1 %cmp.i531, label %if.end25.if.then.i_crit_edge, label %lor.lhs.false.i

if.end25.if.then.i_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end25
  %buffers.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 33
  %47 = ptrtoint ptr %buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buffers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp1.i = icmp ugt i32 %48, 1
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %for.body.preheader.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end25.if.then.i_crit_edge
  %call2.i = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %add.ptr, i32 noundef %p) #8
  br label %plane_vaddr.exit

for.body.preheader.i:                             ; preds = %lor.lhs.false.i
  %call5.i = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %add.ptr, i32 noundef 0) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %vbuf.019.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call5.i, %for.body.preheader.i ]
  %i.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i532 = getelementptr i32, ptr %bytesperline_out, i32 %i.018.i
  %49 = ptrtoint ptr %arrayidx.i532 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i532, align 4
  %mul.i533 = mul i32 %50, %46
  %arrayidx7.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 36, i32 %i.018.i
  %51 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx7.i, align 1
  %conv.i534 = zext i8 %52 to i32
  %div.i535 = udiv i32 %mul.i533, %conv.i534
  %add.ptr.i = getelementptr i8, ptr %vbuf.019.i, i32 %div.i535
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %p
  br i1 %exitcond.not.i, label %for.body.i.plane_vaddr.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.plane_vaddr.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %plane_vaddr.exit

plane_vaddr.exit:                                 ; preds = %for.body.i.plane_vaddr.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %call2.i, %if.then.i ], [ %add.ptr.i, %for.body.i.plane_vaddr.exit_crit_edge ]
  %53 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fmt_out, align 8
  %buffers = getelementptr inbounds %struct.vivid_fmt, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %buffers to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %buffers, align 1
  %conv33 = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv33, i32 %p)
  %cmp34 = icmp ugt i32 %conv33, %p
  br i1 %cmp34, label %if.then36, label %plane_vaddr.exit.if.end41_crit_edge

plane_vaddr.exit.if.end41_crit_edge:              ; preds = %plane_vaddr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then36:                                        ; preds = %plane_vaddr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %data_offset = getelementptr %struct.vb2_buffer, ptr %add.ptr, i32 0, i32 10, i32 %p, i32 7
  %57 = ptrtoint ptr %data_offset to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_offset, align 4
  %add.ptr40 = getelementptr i8, ptr %retval.0.i, i32 %58
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %plane_vaddr.exit.if.end41_crit_edge
  %voutbuf.0 = phi ptr [ %add.ptr40, %if.then36 ], [ %retval.0.i, %plane_vaddr.exit.if.end41_crit_edge ]
  %59 = ptrtoint ptr %loop_vid_out to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %loop_vid_out, align 8
  %61 = ptrtoint ptr %arrayidx.i521 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i521, align 1
  %conv.i537 = zext i8 %62 to i32
  %div.i538 = udiv i32 %60, %conv.i537
  %63 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx1.i, align 4
  %and.i540 = and i32 %64, %div.i538
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 4
  %mul.i542 = mul i32 %and.i540, %66
  %div38.i543 = lshr i32 %mul.i542, 1
  %top = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 293, i32 1
  %67 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %top, align 4
  %div46 = udiv i32 %68, %conv
  %mul47 = mul i32 %div46, %21
  %add = add i32 %mul47, %div38.i543
  %add.ptr48 = getelementptr i8, ptr %voutbuf.0, i32 %add
  %69 = ptrtoint ptr %compose_cap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %compose_cap, align 4
  %div.i546 = udiv i32 %70, %conv.i537
  %and.i548 = and i32 %div.i546, %64
  %mul.i550 = mul i32 %and.i548, %66
  %div38.i551 = lshr i32 %mul.i550, 1
  %top53 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 240, i32 1
  %71 = ptrtoint ptr %top53 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %top53, align 4
  %div54 = udiv i32 %72, %conv
  %mul55 = mul i32 %div54, %19
  %add56 = add i32 %div38.i551, %mul55
  %add.ptr57 = getelementptr i8, ptr %vcapbuf, i32 %add56
  %loop_vid_copy = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 292
  %width58 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 292, i32 2
  %73 = ptrtoint ptr %width58 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %width58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp59 = icmp eq i32 %74, 0
  br i1 %cmp59, label %if.end41.if.then66_crit_edge, label %lor.lhs.false61

if.end41.if.then66_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then66

lor.lhs.false61:                                  ; preds = %if.end41
  %height63 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 292, i32 3
  %75 = ptrtoint ptr %height63 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %height63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp64 = icmp eq i32 %76, 0
  br i1 %cmp64, label %lor.lhs.false61.if.then66_crit_edge, label %if.end72

lor.lhs.false61.if.then66_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then66

if.then66:                                        ; preds = %lor.lhs.false61.if.then66_crit_edge, %if.end41.if.then66_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv)
  %cmp68695.not = icmp ult i32 %div, %conv
  br i1 %cmp68695.not, label %if.then66.cleanup291_crit_edge, label %for.body.lr.ph

if.then66.cleanup291_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup291

for.body.lr.ph:                                   ; preds = %if.then66
  %div67 = udiv i32 %div, %conv
  %arrayidx70 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 67, i32 %p
  %umax = call i32 @llvm.umax.i32(i32 %div67, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %vcapbuf.addr.0697 = phi ptr [ %add.ptr57, %for.body.lr.ph ], [ %add.ptr71, %for.body.for.body_crit_edge ]
  %y.0696 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %77 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx70, align 4
  %79 = call ptr @memcpy(ptr %vcapbuf.addr.0697, ptr %78, i32 %div38.i)
  %inc = add nuw nsw i32 %y.0696, 1
  %add.ptr71 = getelementptr i8, ptr %vcapbuf.addr.0697, i32 %19
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.cleanup291_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup291_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup291

if.end72:                                         ; preds = %lor.lhs.false61
  %overlay_out_enabled = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 221
  %80 = ptrtoint ptr %overlay_out_enabled to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %overlay_out_enabled, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool73.not = icmp eq i8 %81, 0
  br i1 %tobool73.not, label %if.end72.if.end99_crit_edge, label %land.lhs.true

if.end72.if.end99_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

land.lhs.true:                                    ; preds = %if.end72
  %width75 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 296, i32 2
  %82 = ptrtoint ptr %width75 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %width75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool76.not = icmp eq i32 %83, 0
  br i1 %tobool76.not, label %land.lhs.true.if.end99_crit_edge, label %land.lhs.true77

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

land.lhs.true77:                                  ; preds = %land.lhs.true
  %height79 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 296, i32 3
  %84 = ptrtoint ptr %height79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %height79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool80.not = icmp eq i32 %85, 0
  br i1 %tobool80.not, label %land.lhs.true77.if.end99_crit_edge, label %if.then81

land.lhs.true77.if.end99_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then81:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #10
  %video_vbase = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 142
  %86 = ptrtoint ptr %video_vbase to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %video_vbase, align 4
  %loop_fb_copy = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 295
  %88 = ptrtoint ptr %loop_fb_copy to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %loop_fb_copy, align 8
  %mul83 = mul i32 %89, %9
  %div84520 = lshr i32 %mul83, 1
  %top86 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 295, i32 1
  %90 = ptrtoint ptr %top86 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %top86, align 4
  %mul87 = mul i32 %91, %23
  %add88 = add i32 %div84520, %mul87
  %add.ptr89 = getelementptr i8, ptr %87, i32 %add88
  %height92 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 297, i32 3
  %92 = ptrtoint ptr %height92 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %height92, align 4
  %.frozen707 = freeze i32 %85
  %.frozen708 = freeze i32 %93
  %div93 = udiv i32 %.frozen707, %.frozen708
  %94 = mul i32 %div93, %.frozen708
  %rem98.decomposed = sub i32 %.frozen707, %94
  br label %if.end99

if.end99:                                         ; preds = %if.then81, %land.lhs.true77.if.end99_crit_edge, %land.lhs.true.if.end99_crit_edge, %if.end72.if.end99_crit_edge
  %vosdbuf.0 = phi ptr [ %add.ptr89, %if.then81 ], [ null, %land.lhs.true77.if.end99_crit_edge ], [ null, %land.lhs.true.if.end99_crit_edge ], [ null, %if.end72.if.end99_crit_edge ]
  %vid_overlay_int_part.0 = phi i32 [ %div93, %if.then81 ], [ 0, %land.lhs.true77.if.end99_crit_edge ], [ 0, %land.lhs.true.if.end99_crit_edge ], [ 0, %if.end72.if.end99_crit_edge ]
  %vid_overlay_fract_part.0 = phi i32 [ %rem98.decomposed, %if.then81 ], [ 0, %land.lhs.true77.if.end99_crit_edge ], [ 0, %land.lhs.true.if.end99_crit_edge ], [ 0, %if.end72.if.end99_crit_edge ]
  %95 = ptrtoint ptr %loop_vid_cap to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %loop_vid_cap, align 8
  %width103 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 294, i32 2
  %97 = ptrtoint ptr %width103 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %width103, align 8
  %add104 = add i32 %98, %96
  %div.i554 = udiv i32 %add104, %conv.i537
  %and.i556 = and i32 %div.i554, %64
  %mul.i558 = mul i32 %and.i556, %66
  %div38.i559 = lshr i32 %mul.i558, 1
  %width107 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 293, i32 2
  %99 = ptrtoint ptr %width107 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %width107, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %98)
  %cmp110 = icmp ne i32 %100, %98
  %101 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %height12, align 4
  %cur_scaled_line = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 218
  %103 = ptrtoint ptr %cur_scaled_line to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %cur_scaled_line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %mul)
  %104 = icmp ult i32 %mul, 100
  br i1 %104, label %if.end99.for.end278_crit_edge, label %for.body118.lr.ph

if.end99.for.end278_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end278

for.body118.lr.ph:                                ; preds = %if.end99
  %tobool119.not = icmp eq ptr %vosdbuf.0, null
  %top122 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 297, i32 1
  %height128 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 297, i32 3
  %top134 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 294, i32 1
  %arrayidx154 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 67, i32 %p
  call void @__sanitizer_cov_trace_cmp4(i32 %div38.i, i32 %div38.i559)
  %cmp156 = icmp ugt i32 %div38.i, %div38.i559
  %sub = sub nsw i32 %div38.i, %div38.i559
  %scaled_line188 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 216
  %loop_vid_overlay196 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 296
  %blended_line = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 217
  %width228 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 296, i32 2
  %top215 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 296, i32 1
  %div223519 = lshr i32 %9, 1
  %overlay_out_left.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 223
  %overlay_out_top.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 222
  %compose_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 284
  %width.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 284, i32 2
  %top7.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 284, i32 1
  %clipcount_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 227
  %fbuf_out_flags.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 228
  %chromakey_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 229
  %fmt_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 234
  %global_alpha_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 230
  br label %for.body118

for.body118:                                      ; preds = %cleanup.for.body118_crit_edge, %for.body118.lr.ph
  %vcapbuf.addr.1687 = phi ptr [ %add.ptr57, %for.body118.lr.ph ], [ %add.ptr277, %cleanup.for.body118_crit_edge ]
  %vid_overlay_error.0685 = phi i32 [ 0, %for.body118.lr.ph ], [ %vid_overlay_error.2, %cleanup.for.body118_crit_edge ]
  %vid_overlay_y.0680 = phi i32 [ 0, %for.body118.lr.ph ], [ %vid_overlay_y.2, %cleanup.for.body118_crit_edge ]
  %vid_out_error.0678 = phi i32 [ 0, %for.body118.lr.ph ], [ %vid_out_error.2, %cleanup.for.body118_crit_edge ]
  %vid_out_y.0674 = phi i32 [ 0, %for.body118.lr.ph ], [ %vid_out_y.2, %cleanup.for.body118_crit_edge ]
  %y.1671 = phi i32 [ 0, %for.body118.lr.ph ], [ %add276, %cleanup.for.body118_crit_edge ]
  br i1 %tobool119.not, label %for.body118.land.end_crit_edge, label %land.lhs.true120

for.body118.land.end_crit_edge:                   ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true120:                                 ; preds = %for.body118
  %105 = ptrtoint ptr %top122 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %top122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %y.1671, i32 %106)
  %cmp123.not = icmp ult i32 %y.1671, %106
  br i1 %cmp123.not, label %land.lhs.true120.land.end_crit_edge, label %land.rhs

land.lhs.true120.land.end_crit_edge:              ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %height128 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %height128, align 4
  %add129 = add i32 %108, %106
  call void @__sanitizer_cov_trace_cmp4(i32 %y.1671, i32 %add129)
  %cmp130 = icmp ult i32 %y.1671, %add129
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true120.land.end_crit_edge, %for.body118.land.end_crit_edge
  %109 = phi i1 [ false, %land.lhs.true120.land.end_crit_edge ], [ false, %for.body118.land.end_crit_edge ], [ %cmp130, %land.rhs ]
  %110 = ptrtoint ptr %top134 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %top134, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %y.1671, i32 %111)
  %cmp135 = icmp ult i32 %y.1671, %111
  br i1 %cmp135, label %land.end.if.then145_crit_edge, label %lor.lhs.false137

land.end.if.then145_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then145

lor.lhs.false137:                                 ; preds = %land.end
  %112 = ptrtoint ptr %height14 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %height14, align 4
  %add142 = add i32 %113, %111
  call void @__sanitizer_cov_trace_cmp4(i32 %y.1671, i32 %add142)
  %cmp143.not = icmp ult i32 %y.1671, %add142
  br i1 %cmp143.not, label %if.end148, label %lor.lhs.false137.if.then145_crit_edge

lor.lhs.false137.if.then145_crit_edge:            ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then145

if.then145:                                       ; preds = %lor.lhs.false137.if.then145_crit_edge, %land.end.if.then145_crit_edge
  %114 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx154, align 4
  %116 = call ptr @memcpy(ptr %vcapbuf.addr.1687, ptr %115, i32 %div38.i)
  br label %cleanup

if.end148:                                        ; preds = %lor.lhs.false137
  %117 = ptrtoint ptr %loop_vid_cap to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %loop_vid_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool151.not = icmp eq i32 %118, 0
  br i1 %tobool151.not, label %if.end148.if.end155_crit_edge, label %if.then152

if.end148.if.end155_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then152:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx154, align 4
  %121 = call ptr @memcpy(ptr %vcapbuf.addr.1687, ptr %120, i32 %div38.i529)
  br label %if.end155

if.end155:                                        ; preds = %if.then152, %if.end148.if.end155_crit_edge
  br i1 %cmp156, label %if.then158, label %if.end155.if.end162_crit_edge

if.end155.if.end162_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.then158:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr159 = getelementptr i8, ptr %vcapbuf.addr.1687, i32 %div38.i559
  %122 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx154, align 4
  %124 = call ptr @memcpy(ptr %add.ptr159, ptr %123, i32 %sub)
  br label %if.end162

if.end162:                                        ; preds = %if.then158, %if.end155.if.end162_crit_edge
  %brmerge = select i1 %cmp110, i1 true, i1 %109
  br i1 %brmerge, label %if.end174, label %if.then167

if.then167:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr168 = getelementptr i8, ptr %vcapbuf.addr.1687, i32 %div38.i529
  %mul169 = mul i32 %vid_out_y.0674, %21
  %add.ptr170 = getelementptr i8, ptr %add.ptr48, i32 %mul169
  %125 = ptrtoint ptr %width103 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %width103, align 8
  %127 = ptrtoint ptr %arrayidx.i521 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx.i521, align 1
  %conv.i561 = zext i8 %128 to i32
  %div.i562 = udiv i32 %126, %conv.i561
  %129 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx1.i, align 4
  %and.i564 = and i32 %130, %div.i562
  %131 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.i, align 4
  %mul.i566 = mul i32 %and.i564, %132
  %div38.i567 = lshr i32 %mul.i566, 1
  %133 = call ptr @memcpy(ptr %add.ptr168, ptr %add.ptr170, i32 %div38.i567)
  br label %update_vid_out_y

if.end174:                                        ; preds = %if.end162
  %134 = ptrtoint ptr %cur_scaled_line to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cur_scaled_line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %vid_out_y.0674)
  %cmp176 = icmp eq i32 %135, %vid_out_y.0674
  br i1 %cmp176, label %if.then178, label %if.end183

if.then178:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr179 = getelementptr i8, ptr %vcapbuf.addr.1687, i32 %div38.i529
  %136 = ptrtoint ptr %scaled_line188 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %scaled_line188, align 4
  %138 = ptrtoint ptr %width103 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %width103, align 8
  %140 = ptrtoint ptr %arrayidx.i521 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.i521, align 1
  %conv.i569 = zext i8 %141 to i32
  %div.i570 = udiv i32 %139, %conv.i569
  %142 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx1.i, align 4
  %and.i572 = and i32 %143, %div.i570
  %144 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.i, align 4
  %mul.i574 = mul i32 %and.i572, %145
  %div38.i575 = lshr i32 %mul.i574, 1
  %146 = call ptr @memcpy(ptr %add.ptr179, ptr %137, i32 %div38.i575)
  br label %update_vid_out_y

if.end183:                                        ; preds = %if.end174
  br i1 %109, label %if.else, label %if.then185

if.then185:                                       ; preds = %if.end183
  %mul186 = mul i32 %vid_out_y.0674, %21
  %add.ptr187 = getelementptr i8, ptr %add.ptr48, i32 %mul186
  %147 = ptrtoint ptr %width107 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %width107, align 8
  %149 = ptrtoint ptr %arrayidx.i521 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx.i521, align 1
  %conv.i577 = zext i8 %150 to i32
  %div.i578 = udiv i32 %148, %conv.i577
  %151 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx1.i, align 4
  %and.i580 = and i32 %152, %div.i578
  %153 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx.i, align 4
  %mul.i582 = mul i32 %and.i580, %154
  %div38.i583 = lshr i32 %mul.i582, 2
  %155 = ptrtoint ptr %width103 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %width103, align 8
  %div.i586 = udiv i32 %156, %conv.i577
  %and.i588 = and i32 %div.i586, %152
  %mul.i590 = mul i32 %and.i588, %154
  %div123.i = lshr i32 %mul.i590, 2
  %div38.i583.frozen = freeze i32 %div38.i583
  %div123.i.frozen = freeze i32 %div123.i
  %div2.i = udiv i32 %div38.i583.frozen, %div123.i.frozen
  %157 = mul i32 %div2.i, %div123.i.frozen
  %rem.i.decomposed = sub i32 %div38.i583.frozen, %157
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul.i590)
  %cmp24.not.i = icmp ult i32 %mul.i590, 4
  br i1 %cmp24.not.i, label %if.then185.if.end239_crit_edge, label %for.body.preheader.i593

if.then185.if.end239_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end239

for.body.preheader.i593:                          ; preds = %if.then185
  %158 = ptrtoint ptr %scaled_line188 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %scaled_line188, align 4
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div123.i, i32 1) #8
  br label %for.body.i598

for.body.i598:                                    ; preds = %for.body.i598.for.body.i598_crit_edge, %for.body.preheader.i593
  %x.028.i = phi i32 [ %inc5.i, %for.body.i598.for.body.i598_crit_edge ], [ 0, %for.body.preheader.i593 ]
  %error.027.i = phi i32 [ %error.1.i, %for.body.i598.for.body.i598_crit_edge ], [ 0, %for.body.preheader.i593 ]
  %src_x.026.i = phi i32 [ %src_x.1.i, %for.body.i598.for.body.i598_crit_edge ], [ 0, %for.body.preheader.i593 ]
  %dst.addr.025.i = phi ptr [ %add.ptr6.i, %for.body.i598.for.body.i598_crit_edge ], [ %159, %for.body.preheader.i593 ]
  %mul.i594 = mul i32 %src_x.026.i, %154
  %add.ptr.i595 = getelementptr i8, ptr %add.ptr187, i32 %mul.i594
  %160 = call ptr @memcpy(ptr %dst.addr.025.i, ptr %add.ptr.i595, i32 %154)
  %add.i = add i32 %src_x.026.i, %div2.i
  %add3.i = add i32 %error.027.i, %rem.i.decomposed
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %div123.i)
  %cmp4.not.i = icmp ult i32 %add3.i, %div123.i
  %not.cmp4.not.i = xor i1 %cmp4.not.i, true
  %inc.i596 = zext i1 %not.cmp4.not.i to i32
  %src_x.1.i = add i32 %add.i, %inc.i596
  %sub.i = select i1 %cmp4.not.i, i32 0, i32 %div123.i
  %error.1.i = sub i32 %add3.i, %sub.i
  %inc5.i = add nuw nsw i32 %x.028.i, 1
  %add.ptr6.i = getelementptr i8, ptr %dst.addr.025.i, i32 %154
  %exitcond.not.i597 = icmp eq i32 %inc5.i, %umax.i
  br i1 %exitcond.not.i597, label %for.body.i598.if.end239_crit_edge, label %for.body.i598.for.body.i598_crit_edge

for.body.i598.for.body.i598_crit_edge:            ; preds = %for.body.i598
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i598

for.body.i598.if.end239_crit_edge:                ; preds = %for.body.i598
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end239

if.else:                                          ; preds = %if.end183
  %161 = ptrtoint ptr %loop_vid_overlay196 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %loop_vid_overlay196, align 8
  %163 = ptrtoint ptr %loop_vid_copy to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %loop_vid_copy, align 8
  %sub200 = sub i32 %162, %164
  %mul201 = mul i32 %sub200, %9
  %div202517 = lshr i32 %mul201, 1
  %mul203 = mul i32 %vid_overlay_y.0680, %23
  %add.ptr204 = getelementptr i8, ptr %vosdbuf.0, i32 %mul203
  %mul205 = mul i32 %vid_out_y.0674, %21
  %add.ptr206 = getelementptr i8, ptr %add.ptr48, i32 %mul205
  %165 = ptrtoint ptr %width107 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %width107, align 8
  %167 = ptrtoint ptr %width58 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %width58, align 8
  %169 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx.i, align 4
  %div22.i600 = lshr i32 %166, 1
  %div123.i601 = lshr i32 %168, 1
  %div22.i600.frozen = freeze i32 %div22.i600
  %div123.i601.frozen = freeze i32 %div123.i601
  %div2.i602 = udiv i32 %div22.i600.frozen, %div123.i601.frozen
  %171 = mul i32 %div2.i602, %div123.i601.frozen
  %rem.i603.decomposed = sub i32 %div22.i600.frozen, %171
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %168)
  %cmp24.not.i604 = icmp ult i32 %168, 2
  br i1 %cmp24.not.i604, label %if.else.scale_line.exit625_crit_edge, label %for.body.preheader.i606

if.else.scale_line.exit625_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %scale_line.exit625

for.body.preheader.i606:                          ; preds = %if.else
  %172 = ptrtoint ptr %blended_line to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %blended_line, align 8
  %umax.i605 = tail call i32 @llvm.umax.i32(i32 %div123.i601, i32 1) #8
  br label %for.body.i624

for.body.i624:                                    ; preds = %for.body.i624.for.body.i624_crit_edge, %for.body.preheader.i606
  %x.028.i607 = phi i32 [ %inc5.i621, %for.body.i624.for.body.i624_crit_edge ], [ 0, %for.body.preheader.i606 ]
  %error.027.i608 = phi i32 [ %error.1.i620, %for.body.i624.for.body.i624_crit_edge ], [ 0, %for.body.preheader.i606 ]
  %src_x.026.i609 = phi i32 [ %src_x.1.i618, %for.body.i624.for.body.i624_crit_edge ], [ 0, %for.body.preheader.i606 ]
  %dst.addr.025.i610 = phi ptr [ %add.ptr6.i622, %for.body.i624.for.body.i624_crit_edge ], [ %173, %for.body.preheader.i606 ]
  %mul.i611 = mul i32 %src_x.026.i609, %170
  %add.ptr.i612 = getelementptr i8, ptr %add.ptr206, i32 %mul.i611
  %174 = call ptr @memcpy(ptr %dst.addr.025.i610, ptr %add.ptr.i612, i32 %170)
  %add.i613 = add i32 %src_x.026.i609, %div2.i602
  %add3.i614 = add i32 %error.027.i608, %rem.i603.decomposed
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i614, i32 %div123.i601)
  %cmp4.not.i615 = icmp ult i32 %add3.i614, %div123.i601
  %not.cmp4.not.i616 = xor i1 %cmp4.not.i615, true
  %inc.i617 = zext i1 %not.cmp4.not.i616 to i32
  %src_x.1.i618 = add i32 %add.i613, %inc.i617
  %sub.i619 = select i1 %cmp4.not.i615, i32 0, i32 %div123.i601
  %error.1.i620 = sub i32 %add3.i614, %sub.i619
  %inc5.i621 = add nuw nsw i32 %x.028.i607, 1
  %add.ptr6.i622 = getelementptr i8, ptr %dst.addr.025.i610, i32 %170
  %exitcond.not.i623 = icmp eq i32 %inc5.i621, %umax.i605
  br i1 %exitcond.not.i623, label %for.body.i624.scale_line.exit625_crit_edge, label %for.body.i624.for.body.i624_crit_edge

for.body.i624.for.body.i624_crit_edge:            ; preds = %for.body.i624
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i624

for.body.i624.scale_line.exit625_crit_edge:       ; preds = %for.body.i624
  call void @__sanitizer_cov_trace_pc() #10
  br label %scale_line.exit625

scale_line.exit625:                               ; preds = %for.body.i624.scale_line.exit625_crit_edge, %if.else.scale_line.exit625_crit_edge
  br i1 %32, label %if.then213, label %if.else224

if.then213:                                       ; preds = %scale_line.exit625
  %175 = ptrtoint ptr %top215 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %top215, align 4
  %add216 = add i32 %176, %vid_overlay_y.0680
  %177 = ptrtoint ptr %loop_vid_overlay196 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %loop_vid_overlay196, align 8
  %179 = ptrtoint ptr %width228 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %width228, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp7.not.i = icmp eq i32 %180, 0
  br i1 %cmp7.not.i, label %if.then213.if.end231_crit_edge, label %for.body.lr.ph.i

if.then213.if.end231_crit_edge:                   ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

for.body.lr.ph.i:                                 ; preds = %if.then213
  %181 = ptrtoint ptr %blended_line to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %blended_line, align 8
  %add.ptr220 = getelementptr i8, ptr %182, i32 %div202517
  br label %for.body.i627

for.body.i627:                                    ; preds = %copy_pix.exit.i.for.body.i627_crit_edge, %for.body.lr.ph.i
  %x.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i628, %copy_pix.exit.i.for.body.i627_crit_edge ]
  %vcapbuf.addr.011.i = phi ptr [ %add.ptr220, %for.body.lr.ph.i ], [ %add.ptr.i629, %copy_pix.exit.i.for.body.i627_crit_edge ]
  %vosdbuf.addr.08.i = phi ptr [ %add.ptr204, %for.body.lr.ph.i ], [ %add.ptr1.i, %copy_pix.exit.i.for.body.i627_crit_edge ]
  %add.i626 = add i32 %x.013.i, %178
  %183 = ptrtoint ptr %overlay_out_left.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %overlay_out_left.i.i, align 4
  %185 = ptrtoint ptr %overlay_out_top.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %overlay_out_top.i.i, align 8
  %add.i.i = add i32 %184, %add.i626
  %add1.i.i = add i32 %186, %add216
  %187 = ptrtoint ptr %vcapbuf.addr.011.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %vcapbuf.addr.011.i, align 2
  %189 = ptrtoint ptr %vosdbuf.addr.08.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %vosdbuf.addr.08.i, align 2
  store i16 %190, ptr %vcapbuf.addr.011.i, align 2
  %191 = ptrtoint ptr %bitmap_out to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %bitmap_out, align 8
  %tobool.not.i.i = icmp eq ptr %192, null
  br i1 %tobool.not.i.i, label %for.body.i627.if.end15.i.i_crit_edge, label %if.then.i.i

for.body.i627.if.end15.i.i_crit_edge:             ; preds = %for.body.i627
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then.i.i:                                      ; preds = %for.body.i627
  %193 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %width.i.i, align 8
  %add3.i.i = add i32 %194, 7
  %div142.i.i = lshr i32 %add3.i.i, 3
  %195 = ptrtoint ptr %compose_out.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %compose_out.i.i, align 8
  %sub.i.i = sub i32 %add.i626, %196
  %197 = ptrtoint ptr %top7.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %top7.i.i, align 4
  %sub8.i.i = sub i32 %add216, %198
  %mul.i.i = mul i32 %sub8.i.i, %div142.i.i
  %div9.i.i = sdiv i32 %sub.i.i, 8
  %add10.i.i = add i32 %mul.i.i, %div9.i.i
  %arrayidx.i.i = getelementptr i8, ptr %192, i32 %add10.i.i
  %199 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %200 to i32
  %and.i.i = and i32 %sub.i.i, 7
  %shl.i.i = shl nuw nsw i32 1, %and.i.i
  %and11.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then.i.i.copy_pix.exit.i_crit_edge, label %if.then.i.i.if.end15.i.i_crit_edge

if.then.i.i.if.end15.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then.i.i.copy_pix.exit.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_pix.exit.i

if.end15.i.i:                                     ; preds = %if.then.i.i.if.end15.i.i_crit_edge, %for.body.i627.if.end15.i.i_crit_edge
  %201 = ptrtoint ptr %clipcount_out.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %clipcount_out.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp144.not.i.i = icmp eq i32 %202, 0
  br i1 %cmp144.not.i.i, label %if.end15.i.i.for.end.i.i_crit_edge, label %if.end15.i.i.for.body.i.i_crit_edge

if.end15.i.i.for.body.i.i_crit_edge:              ; preds = %if.end15.i.i
  br label %for.body.i.i

if.end15.i.i.for.end.i.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.critedge.i.i.for.body.i.i_crit_edge, %if.end15.i.i.for.body.i.i_crit_edge
  %i.0145.i.i = phi i32 [ %inc.i.i, %for.inc.critedge.i.i.for.body.i.i_crit_edge ], [ 0, %if.end15.i.i.for.body.i.i_crit_edge ]
  %arrayidx17.i.i = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 225, i32 %i.0145.i.i
  %top18.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx17.i.i, i32 0, i32 1
  %203 = ptrtoint ptr %top18.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %top18.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %204)
  %cmp19.not.i.i = icmp slt i32 %add1.i.i, %204
  br i1 %cmp19.not.i.i, label %for.body.i.i.for.inc.critedge.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.critedge.i.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %height.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx17.i.i, i32 0, i32 3
  %205 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %height.i.i, align 4
  %add22.i.i = add i32 %206, %204
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %add22.i.i)
  %cmp23.i.i = icmp ult i32 %add1.i.i, %add22.i.i
  br i1 %cmp23.i.i, label %land.lhs.true25.i.i, label %land.lhs.true.i.i.for.inc.critedge.i.i_crit_edge

land.lhs.true.i.i.for.inc.critedge.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge.i.i

land.lhs.true25.i.i:                              ; preds = %land.lhs.true.i.i
  %207 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx17.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %208)
  %cmp27.not.i.i = icmp slt i32 %add.i.i, %208
  br i1 %cmp27.not.i.i, label %land.lhs.true25.i.i.for.inc.critedge.i.i_crit_edge, label %land.lhs.true29.i.i

land.lhs.true25.i.i.for.inc.critedge.i.i_crit_edge: ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge.i.i

land.lhs.true29.i.i:                              ; preds = %land.lhs.true25.i.i
  %width31.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx17.i.i, i32 0, i32 2
  %209 = ptrtoint ptr %width31.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %width31.i.i, align 4
  %add32.i.i = add i32 %210, %208
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %add32.i.i)
  %cmp33.i.i = icmp ult i32 %add.i.i, %add32.i.i
  br i1 %cmp33.i.i, label %land.lhs.true29.i.i.copy_pix.exit.i_crit_edge, label %land.lhs.true29.i.i.for.inc.critedge.i.i_crit_edge

land.lhs.true29.i.i.for.inc.critedge.i.i_crit_edge: ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge.i.i

land.lhs.true29.i.i.copy_pix.exit.i_crit_edge:    ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_pix.exit.i

for.inc.critedge.i.i:                             ; preds = %land.lhs.true29.i.i.for.inc.critedge.i.i_crit_edge, %land.lhs.true25.i.i.for.inc.critedge.i.i_crit_edge, %land.lhs.true.i.i.for.inc.critedge.i.i_crit_edge, %for.body.i.i.for.inc.critedge.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.0145.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %202
  br i1 %exitcond.not.i.i, label %for.inc.critedge.i.i.for.end.i.i_crit_edge, label %for.inc.critedge.i.i.for.body.i.i_crit_edge

for.inc.critedge.i.i.for.body.i.i_crit_edge:      ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.critedge.i.i.for.end.i.i_crit_edge:       ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.critedge.i.i.for.end.i.i_crit_edge, %if.end15.i.i.for.end.i.i_crit_edge
  %211 = ptrtoint ptr %fbuf_out_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %fbuf_out_flags.i.i, align 8
  %and40.i.i = and i32 %212, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i.i, label %for.end.i.i.if.end47.i.i_crit_edge, label %land.lhs.true42.i.i

for.end.i.i.if.end47.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

land.lhs.true42.i.i:                              ; preds = %for.end.i.i
  %213 = ptrtoint ptr %vosdbuf.addr.08.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %vosdbuf.addr.08.i, align 2
  %conv43.i.i = zext i16 %214 to i32
  %215 = ptrtoint ptr %chromakey_out.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %chromakey_out.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %216, i32 %conv43.i.i)
  %cmp44.not.i.i = icmp eq i32 %216, %conv43.i.i
  br i1 %cmp44.not.i.i, label %land.lhs.true42.i.i.if.end47.i.i_crit_edge, label %land.lhs.true42.i.i.copy_pix.exit.i_crit_edge

land.lhs.true42.i.i.copy_pix.exit.i_crit_edge:    ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_pix.exit.i

land.lhs.true42.i.i.if.end47.i.i_crit_edge:       ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %land.lhs.true42.i.i.if.end47.i.i_crit_edge, %for.end.i.i.if.end47.i.i_crit_edge
  %and49.i.i = and i32 %212, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i.i)
  %tobool50.not.i.i = icmp eq i32 %and49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end47.i.i.if.end57.i.i_crit_edge, label %land.lhs.true51.i.i

if.end47.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i

land.lhs.true51.i.i:                              ; preds = %if.end47.i.i
  %conv52.i.i = zext i16 %188 to i32
  %217 = ptrtoint ptr %chromakey_out.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %chromakey_out.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %218, i32 %conv52.i.i)
  %cmp54.i.i = icmp eq i32 %218, %conv52.i.i
  br i1 %cmp54.i.i, label %land.lhs.true51.i.i.copy_pix.exit.i_crit_edge, label %land.lhs.true51.i.i.if.end57.i.i_crit_edge

land.lhs.true51.i.i.if.end57.i.i_crit_edge:       ; preds = %land.lhs.true51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i

land.lhs.true51.i.i.copy_pix.exit.i_crit_edge:    ; preds = %land.lhs.true51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_pix.exit.i

if.end57.i.i:                                     ; preds = %land.lhs.true51.i.i.if.end57.i.i_crit_edge, %if.end47.i.i.if.end57.i.i_crit_edge
  %219 = ptrtoint ptr %fmt_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %fmt_cap.i.i, align 4
  %alpha_mask.i.i = getelementptr inbounds %struct.vivid_fmt, ptr %220, i32 0, i32 4
  %221 = ptrtoint ptr %alpha_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %alpha_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool58.not.i.i = icmp eq i32 %222, 0
  br i1 %tobool58.not.i.i, label %if.end57.i.i.if.end90.i.i_crit_edge, label %if.then59.i.i

if.end57.i.i.if.end90.i.i_crit_edge:              ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i.i

if.then59.i.i:                                    ; preds = %if.end57.i.i
  %and61.i.i = and i32 %212, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i)
  %tobool62.not.i.i = icmp eq i32 %and61.i.i, 0
  br i1 %tobool62.not.i.i, label %if.then59.i.i.if.end67.i.i_crit_edge, label %land.lhs.true63.i.i

if.then59.i.i.if.end67.i.i_crit_edge:             ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i.i

land.lhs.true63.i.i:                              ; preds = %if.then59.i.i
  %223 = ptrtoint ptr %global_alpha_out.i.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %global_alpha_out.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool65.not.i.i = icmp eq i8 %224, 0
  br i1 %tobool65.not.i.i, label %land.lhs.true63.i.i.if.end67.i.i_crit_edge, label %land.lhs.true63.i.i.copy_pix.exit.i_crit_edge

land.lhs.true63.i.i.copy_pix.exit.i_crit_edge:    ; preds = %land.lhs.true63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_pix.exit.i

land.lhs.true63.i.i.if.end67.i.i_crit_edge:       ; preds = %land.lhs.true63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %land.lhs.true63.i.i.if.end67.i.i_crit_edge, %if.then59.i.i.if.end67.i.i_crit_edge
  %and69.i.i = and i32 %212, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i.i)
  %tobool70.not.i.i = icmp eq i32 %and69.i.i, 0
  %conv72.i.i = zext i16 %190 to i32
  %and75.i.i = and i32 %222, %conv72.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i.i)
  %tobool76.not.i.i = icmp eq i32 %and75.i.i, 0
  %or.cond.i.i = select i1 %tobool70.not.i.i, i1 true, i1 %tobool76.not.i.i
  br i1 %or.cond.i.i, label %if.end78.i.i, label %if.end67.i.i.copy_pix.exit.i_crit_edge

if.end67.i.i.copy_pix.exit.i_crit_edge:           ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_pix.exit.i

if.end78.i.i:                                     ; preds = %if.end67.i.i
  %and80.i.i = and i32 %212, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i.i)
  %tobool81.not.i.i = icmp ne i32 %and80.i.i, 0
  %or.cond143.i.i = select i1 %tobool81.not.i.i, i1 %tobool76.not.i.i, i1 false
  br i1 %or.cond143.i.i, label %if.end78.i.i.copy_pix.exit.i_crit_edge, label %if.end78.i.i.if.end90.i.i_crit_edge

if.end78.i.i.if.end90.i.i_crit_edge:              ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i.i

if.end78.i.i.copy_pix.exit.i_crit_edge:           ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_pix.exit.i

if.end90.i.i:                                     ; preds = %if.end78.i.i.if.end90.i.i_crit_edge, %if.end57.i.i.if.end90.i.i_crit_edge
  %225 = ptrtoint ptr %vcapbuf.addr.011.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %188, ptr %vcapbuf.addr.011.i, align 2
  br label %copy_pix.exit.i

copy_pix.exit.i:                                  ; preds = %if.end90.i.i, %if.end78.i.i.copy_pix.exit.i_crit_edge, %if.end67.i.i.copy_pix.exit.i_crit_edge, %land.lhs.true63.i.i.copy_pix.exit.i_crit_edge, %land.lhs.true51.i.i.copy_pix.exit.i_crit_edge, %land.lhs.true42.i.i.copy_pix.exit.i_crit_edge, %land.lhs.true29.i.i.copy_pix.exit.i_crit_edge, %if.then.i.i.copy_pix.exit.i_crit_edge
  %inc.i628 = add nuw i32 %x.013.i, 1
  %add.ptr.i629 = getelementptr i8, ptr %vcapbuf.addr.011.i, i32 %div223519
  %add.ptr1.i = getelementptr i8, ptr %vosdbuf.addr.08.i, i32 %div223519
  %exitcond.not.i630 = icmp eq i32 %inc.i628, %180
  br i1 %exitcond.not.i630, label %copy_pix.exit.i.if.end231_crit_edge, label %copy_pix.exit.i.for.body.i627_crit_edge

copy_pix.exit.i.for.body.i627_crit_edge:          ; preds = %copy_pix.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i627

copy_pix.exit.i.if.end231_crit_edge:              ; preds = %copy_pix.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.else224:                                       ; preds = %scale_line.exit625
  call void @__sanitizer_cov_trace_pc() #10
  %226 = ptrtoint ptr %blended_line to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %blended_line, align 8
  %add.ptr226 = getelementptr i8, ptr %227, i32 %div202517
  %228 = ptrtoint ptr %width228 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %width228, align 8
  %mul229 = mul i32 %229, %9
  %div230518 = lshr i32 %mul229, 1
  %230 = call ptr @memcpy(ptr %add.ptr226, ptr %add.ptr204, i32 %div230518)
  br label %if.end231

if.end231:                                        ; preds = %if.else224, %copy_pix.exit.i.if.end231_crit_edge, %if.then213.if.end231_crit_edge
  %231 = ptrtoint ptr %blended_line to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %blended_line, align 8
  %233 = ptrtoint ptr %width58 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %width58, align 8
  %235 = ptrtoint ptr %width103 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %width103, align 8
  %237 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx.i, align 4
  %div22.i632 = lshr i32 %234, 1
  %div123.i633 = lshr i32 %236, 1
  %div22.i632.frozen = freeze i32 %div22.i632
  %div123.i633.frozen = freeze i32 %div123.i633
  %div2.i634 = udiv i32 %div22.i632.frozen, %div123.i633.frozen
  %239 = mul i32 %div2.i634, %div123.i633.frozen
  %rem.i635.decomposed = sub i32 %div22.i632.frozen, %239
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %236)
  %cmp24.not.i636 = icmp ult i32 %236, 2
  br i1 %cmp24.not.i636, label %if.end231.if.end239_crit_edge, label %for.body.preheader.i638

if.end231.if.end239_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end239

for.body.preheader.i638:                          ; preds = %if.end231
  %240 = ptrtoint ptr %scaled_line188 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %scaled_line188, align 4
  %umax.i637 = tail call i32 @llvm.umax.i32(i32 %div123.i633, i32 1) #8
  br label %for.body.i656

for.body.i656:                                    ; preds = %for.body.i656.for.body.i656_crit_edge, %for.body.preheader.i638
  %x.028.i639 = phi i32 [ %inc5.i653, %for.body.i656.for.body.i656_crit_edge ], [ 0, %for.body.preheader.i638 ]
  %error.027.i640 = phi i32 [ %error.1.i652, %for.body.i656.for.body.i656_crit_edge ], [ 0, %for.body.preheader.i638 ]
  %src_x.026.i641 = phi i32 [ %src_x.1.i650, %for.body.i656.for.body.i656_crit_edge ], [ 0, %for.body.preheader.i638 ]
  %dst.addr.025.i642 = phi ptr [ %add.ptr6.i654, %for.body.i656.for.body.i656_crit_edge ], [ %241, %for.body.preheader.i638 ]
  %mul.i643 = mul i32 %src_x.026.i641, %238
  %add.ptr.i644 = getelementptr i8, ptr %232, i32 %mul.i643
  %242 = call ptr @memcpy(ptr %dst.addr.025.i642, ptr %add.ptr.i644, i32 %238)
  %add.i645 = add i32 %src_x.026.i641, %div2.i634
  %add3.i646 = add i32 %error.027.i640, %rem.i635.decomposed
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i646, i32 %div123.i633)
  %cmp4.not.i647 = icmp ult i32 %add3.i646, %div123.i633
  %not.cmp4.not.i648 = xor i1 %cmp4.not.i647, true
  %inc.i649 = zext i1 %not.cmp4.not.i648 to i32
  %src_x.1.i650 = add i32 %add.i645, %inc.i649
  %sub.i651 = select i1 %cmp4.not.i647, i32 0, i32 %div123.i633
  %error.1.i652 = sub i32 %add3.i646, %sub.i651
  %inc5.i653 = add nuw nsw i32 %x.028.i639, 1
  %add.ptr6.i654 = getelementptr i8, ptr %dst.addr.025.i642, i32 %238
  %exitcond.not.i655 = icmp eq i32 %inc5.i653, %umax.i637
  br i1 %exitcond.not.i655, label %for.body.i656.if.end239_crit_edge, label %for.body.i656.for.body.i656_crit_edge

for.body.i656.for.body.i656_crit_edge:            ; preds = %for.body.i656
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i656

for.body.i656.if.end239_crit_edge:                ; preds = %for.body.i656
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end239

if.end239:                                        ; preds = %for.body.i656.if.end239_crit_edge, %if.end231.if.end239_crit_edge, %for.body.i598.if.end239_crit_edge, %if.then185.if.end239_crit_edge
  %243 = ptrtoint ptr %cur_scaled_line to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %vid_out_y.0674, ptr %cur_scaled_line, align 4
  %add.ptr241 = getelementptr i8, ptr %vcapbuf.addr.1687, i32 %div38.i529
  %244 = ptrtoint ptr %scaled_line188 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %scaled_line188, align 4
  %246 = ptrtoint ptr %width103 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %width103, align 8
  %248 = ptrtoint ptr %arrayidx.i521 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx.i521, align 1
  %conv.i659 = zext i8 %249 to i32
  %div.i660 = udiv i32 %247, %conv.i659
  %250 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx1.i, align 4
  %and.i662 = and i32 %251, %div.i660
  %252 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx.i, align 4
  %mul.i664 = mul i32 %and.i662, %253
  %div38.i665 = lshr i32 %mul.i664, 1
  %254 = call ptr @memcpy(ptr %add.ptr241, ptr %245, i32 %div38.i665)
  br label %update_vid_out_y

update_vid_out_y:                                 ; preds = %if.end239, %if.then178, %if.then167
  br i1 %109, label %if.then247, label %update_vid_out_y.if.end260_crit_edge

update_vid_out_y.if.end260_crit_edge:             ; preds = %update_vid_out_y
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end260

if.then247:                                       ; preds = %update_vid_out_y
  %add248 = add i32 %vid_overlay_y.0680, %vid_overlay_int_part.0
  %add249 = add i32 %vid_overlay_error.0685, %vid_overlay_fract_part.0
  %255 = ptrtoint ptr %height128 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %height128, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add249, i32 %256)
  %cmp252.not = icmp ult i32 %add249, %256
  br i1 %cmp252.not, label %if.then247.if.end260_crit_edge, label %if.then254

if.then247.if.end260_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end260

if.then254:                                       ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #10
  %sub257 = sub i32 %add249, %256
  %inc258 = add i32 %add248, 1
  br label %if.end260

if.end260:                                        ; preds = %if.then254, %if.then247.if.end260_crit_edge, %update_vid_out_y.if.end260_crit_edge
  %vid_overlay_y.1 = phi i32 [ %inc258, %if.then254 ], [ %add248, %if.then247.if.end260_crit_edge ], [ %vid_overlay_y.0680, %update_vid_out_y.if.end260_crit_edge ]
  %vid_overlay_error.1 = phi i32 [ %sub257, %if.then254 ], [ %add249, %if.then247.if.end260_crit_edge ], [ %vid_overlay_error.0685, %update_vid_out_y.if.end260_crit_edge ]
  %add261 = add i32 %vid_out_y.0674, %div15
  %add262 = add i32 %vid_out_error.0678, %rem.decomposed
  %257 = ptrtoint ptr %height14 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %height14, align 4
  %div265 = udiv i32 %258, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add262, i32 %div265)
  %cmp266.not = icmp ult i32 %add262, %div265
  %not.cmp266.not = xor i1 %cmp266.not, true
  %inc273 = zext i1 %not.cmp266.not to i32
  %vid_out_y.1 = add i32 %add261, %inc273
  %sub272 = select i1 %cmp266.not, i32 0, i32 %div265
  %vid_out_error.1 = sub i32 %add262, %sub272
  br label %cleanup

cleanup:                                          ; preds = %if.end260, %if.then145
  %vid_out_y.2 = phi i32 [ %vid_out_y.0674, %if.then145 ], [ %vid_out_y.1, %if.end260 ]
  %vid_out_error.2 = phi i32 [ %vid_out_error.0678, %if.then145 ], [ %vid_out_error.1, %if.end260 ]
  %vid_overlay_y.2 = phi i32 [ %vid_overlay_y.0680, %if.then145 ], [ %vid_overlay_y.1, %if.end260 ]
  %vid_overlay_error.2 = phi i32 [ %vid_overlay_error.0685, %if.then145 ], [ %vid_overlay_error.1, %if.end260 ]
  %add276 = add i32 %y.1671, %conv
  %add.ptr277 = getelementptr i8, ptr %vcapbuf.addr.1687, i32 %19
  %cmp116 = icmp ult i32 %add276, %div
  br i1 %cmp116, label %cleanup.for.body118_crit_edge, label %cleanup.for.end278_crit_edge

cleanup.for.end278_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end278

cleanup.for.body118_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body118

for.end278:                                       ; preds = %cleanup.for.end278_crit_edge, %if.end99.for.end278_crit_edge
  %y.1.lcssa = phi i32 [ 0, %if.end99.for.end278_crit_edge ], [ %add276, %cleanup.for.end278_crit_edge ]
  %vcapbuf.addr.1.lcssa = phi ptr [ %add.ptr57, %if.end99.for.end278_crit_edge ], [ %add.ptr277, %cleanup.for.end278_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %y.1.lcssa, i32 %17)
  %cmp283692 = icmp ult i32 %y.1.lcssa, %17
  %or.cond = select i1 %tobool.not, i1 %cmp283692, i1 false
  br i1 %or.cond, label %for.body285.lr.ph, label %for.end278.cleanup291_crit_edge

for.end278.cleanup291_crit_edge:                  ; preds = %for.end278
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup291

for.body285.lr.ph:                                ; preds = %for.end278
  %arrayidx286 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 231, i32 66, i32 %p
  br label %for.body285

for.body285:                                      ; preds = %for.body285.for.body285_crit_edge, %for.body285.lr.ph
  %vcapbuf.addr.2694 = phi ptr [ %vcapbuf.addr.1.lcssa, %for.body285.lr.ph ], [ %add.ptr289, %for.body285.for.body285_crit_edge ]
  %y.2693 = phi i32 [ %y.1.lcssa, %for.body285.lr.ph ], [ %add288, %for.body285.for.body285_crit_edge ]
  %259 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %arrayidx286, align 4
  %261 = call ptr @memcpy(ptr %vcapbuf.addr.2694, ptr %260, i32 %div38.i)
  %add288 = add i32 %y.2693, %conv
  %add.ptr289 = getelementptr i8, ptr %vcapbuf.addr.2694, i32 %19
  %cmp283 = icmp ult i32 %add288, %17
  br i1 %cmp283, label %for.body285.for.body285_crit_edge, label %for.body285.cleanup291_crit_edge

for.body285.cleanup291_crit_edge:                 ; preds = %for.body285
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup291

for.body285.for.body285_crit_edge:                ; preds = %for.body285
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body285

cleanup291:                                       ; preds = %for.body285.cleanup291_crit_edge, %for.end278.cleanup291_crit_edge, %for.body.cleanup291_crit_edge, %if.then66.cleanup291_crit_edge, %if.end.cleanup291_crit_edge, %lor.end.cleanup291_crit_edge
  %retval.0 = phi i32 [ -61, %if.end.cleanup291_crit_edge ], [ 0, %for.end278.cleanup291_crit_edge ], [ -61, %lor.end.cleanup291_crit_edge ], [ 0, %if.then66.cleanup291_crit_edge ], [ 0, %for.body.cleanup291_crit_edge ], [ 0, %for.body285.cleanup291_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_fill_plane_buffer(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_gen_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__v4l2_ctrl_grab(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !94, !96, !97}
!llvm.named.register.sp = !{!98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 910, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vivid_start_generating_vid_cap._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vivid_start_generating_vid_cap._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 932, i32 25}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 939, i32 3}
!10 = !{ptr @vivid_start_generating_vid_cap._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @vivid_start_generating_vid_cap._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 945, i32 2}
!14 = !{ptr @vivid_start_generating_vid_cap._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @vivid_start_generating_vid_cap._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 951, i32 2}
!18 = !{ptr @vivid_stop_generating_vid_cap._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @vivid_stop_generating_vid_cap._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 968, i32 4}
!22 = !{ptr @vivid_stop_generating_vid_cap._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @vivid_stop_generating_vid_cap._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 983, i32 4}
!26 = !{ptr @vivid_stop_generating_vid_cap._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @vivid_stop_generating_vid_cap._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 998, i32 4}
!30 = !{ptr @vivid_stop_generating_vid_cap._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @vivid_stop_generating_vid_cap._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 806, i32 2}
!34 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vivid_thread_vid_cap._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @vivid_thread_vid_cap._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 897, i32 2}
!39 = !{ptr @vivid_thread_vid_cap._entry.22, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @vivid_thread_vid_cap._entry_ptr.24, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 686, i32 2}
!45 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @vivid_thread_vid_cap_tick._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @vivid_thread_vid_cap_tick._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 730, i32 3}
!50 = !{ptr @vivid_thread_vid_cap_tick._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @vivid_thread_vid_cap_tick._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @vivid_thread_vid_cap_tick._entry.31, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 742, i32 3}
!54 = !{ptr @vivid_thread_vid_cap_tick._entry_ptr.32, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 763, i32 3}
!57 = !{ptr @vivid_thread_vid_cap_tick._entry.33, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @vivid_thread_vid_cap_tick._entry_ptr.35, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 780, i32 3}
!61 = !{ptr @vivid_thread_vid_cap_tick._entry.36, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @vivid_thread_vid_cap_tick._entry_ptr.38, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 482, i32 30}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 490, i32 7}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 490, i32 16}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 490, i32 29}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 494, i32 30}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 501, i32 4}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 508, i32 4}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 514, i32 4}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 519, i32 30}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 525, i32 30}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 530, i32 30}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 537, i32 31}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 543, i32 7}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 187, i32 2}
!91 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @vivid_precalc_copy_rects._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @vivid_precalc_copy_rects._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-cap.c", i32 212, i32 2}
!96 = !{ptr @vivid_precalc_copy_rects._entry.54, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @vivid_precalc_copy_rects._entry_ptr.56, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{!"sp"}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i8 0, i8 2}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2148217168, i64 2148217448, i64 2148217782, i64 2148218116}
!112 = !{i64 731507, i64 731534}
!113 = !{i64 731847, i64 731874, i64 731908, i64 731929}
!114 = !{i64 731624, i64 731651, i64 731673, i64 731701}
!115 = !{i64 732032, i64 732059, i64 732092, i64 732113, i64 732140, i64 732166}
