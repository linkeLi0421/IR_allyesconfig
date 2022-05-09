; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-kthread-out.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-kthread-out.c"
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
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@vivid_start_generating_vid_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vivid_start_generating_vid_out\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/media/test-drivers/vivid/vivid-kthread-out.c\00", [43 x i8] zeroinitializer }, align 32
@vivid_start_generating_vid_out._entry_ptr = internal global ptr @vivid_start_generating_vid_out._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-vid-out\00", [21 x i8] zeroinitializer }, align 32
@vivid_start_generating_vid_out._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: kernel_thread() failed\0A\00", [34 x i8] zeroinitializer }, align 32
@vivid_start_generating_vid_out._entry_ptr.6 = internal global ptr @vivid_start_generating_vid_out._entry.4, section ".printk_index", align 4
@vivid_start_generating_vid_out._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: returning from %s\0A\00", [39 x i8] zeroinitializer }, align 32
@vivid_start_generating_vid_out._entry_ptr.9 = internal global ptr @vivid_start_generating_vid_out._entry.7, section ".printk_index", align 4
@vivid_stop_generating_vid_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.10, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vivid_stop_generating_vid_out\00", [34 x i8] zeroinitializer }, align 32
@vivid_stop_generating_vid_out._entry_ptr = internal global ptr @vivid_stop_generating_vid_out._entry, section ".printk_index", align 4
@vivid_stop_generating_vid_out._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: vid_out buffer %d done\0A\00", [34 x i8] zeroinitializer }, align 32
@vivid_stop_generating_vid_out._entry_ptr.13 = internal global ptr @vivid_stop_generating_vid_out._entry.11, section ".printk_index", align 4
@vivid_stop_generating_vid_out._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: vbi_out buffer %d done\0A\00", [34 x i8] zeroinitializer }, align 32
@vivid_stop_generating_vid_out._entry_ptr.16 = internal global ptr @vivid_stop_generating_vid_out._entry.14, section ".printk_index", align 4
@vivid_stop_generating_vid_out._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: meta_out buffer %d done\0A\00", [33 x i8] zeroinitializer }, align 32
@vivid_stop_generating_vid_out._entry_ptr.19 = internal global ptr @vivid_stop_generating_vid_out._entry.17, section ".printk_index", align 4
@vivid_thread_vid_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Video Output Thread Start\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vivid_thread_vid_out\00", [43 x i8] zeroinitializer }, align 32
@vivid_thread_vid_out._entry_ptr = internal global ptr @vivid_thread_vid_out._entry, section ".printk_index", align 4
@vivid_thread_vid_out._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Video Output Thread End\0A\00", [33 x i8] zeroinitializer }, align 32
@vivid_thread_vid_out._entry_ptr.24 = internal global ptr @vivid_thread_vid_out._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@vivid_thread_vid_out_tick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Video Output Thread Tick\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vivid_thread_vid_out_tick\00", [38 x i8] zeroinitializer }, align 32
@vivid_thread_vid_out_tick._entry_ptr = internal global ptr @vivid_thread_vid_out_tick._entry, section ".printk_index", align 4
@vivid_thread_vid_out_tick._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.27, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vivid_thread_vid_out_tick._entry_ptr.29 = internal global ptr @vivid_thread_vid_out_tick._entry.28, section ".printk_index", align 4
@vivid_thread_vid_out_tick._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.27, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vivid_thread_vid_out_tick._entry_ptr.31 = internal global ptr @vivid_thread_vid_out_tick._entry.30, section ".printk_index", align 4
@vivid_thread_vid_out_tick._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.27, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vivid_thread_vid_out_tick._entry_ptr.33 = internal global ptr @vivid_thread_vid_out_tick._entry.32, section ".printk_index", align 4
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 255, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 276, i32 25 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 283, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 289, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 295, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 312, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 327, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 342, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 151, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 240, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 57, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 49, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 101, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 118, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private constant [56 x i8] c"../drivers/media/test-drivers/vivid/vivid-kthread-out.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 132, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @vivid_start_generating_vid_out._entry, ptr @vivid_start_generating_vid_out._entry.4, ptr @vivid_start_generating_vid_out._entry.7, ptr @vivid_start_generating_vid_out._entry_ptr, ptr @vivid_start_generating_vid_out._entry_ptr.6, ptr @vivid_start_generating_vid_out._entry_ptr.9, ptr @vivid_stop_generating_vid_out._entry, ptr @vivid_stop_generating_vid_out._entry.11, ptr @vivid_stop_generating_vid_out._entry.14, ptr @vivid_stop_generating_vid_out._entry.17, ptr @vivid_stop_generating_vid_out._entry_ptr, ptr @vivid_stop_generating_vid_out._entry_ptr.13, ptr @vivid_stop_generating_vid_out._entry_ptr.16, ptr @vivid_stop_generating_vid_out._entry_ptr.19, ptr @vivid_thread_vid_out._entry, ptr @vivid_thread_vid_out._entry.22, ptr @vivid_thread_vid_out._entry_ptr, ptr @vivid_thread_vid_out._entry_ptr.24, ptr @vivid_thread_vid_out_tick._entry, ptr @vivid_thread_vid_out_tick._entry.28, ptr @vivid_thread_vid_out_tick._entry.30, ptr @vivid_thread_vid_out_tick._entry.32, ptr @vivid_thread_vid_out_tick._entry_ptr, ptr @vivid_thread_vid_out_tick._entry_ptr.29, ptr @vivid_thread_vid_out_tick._entry_ptr.31, ptr @vivid_thread_vid_out_tick._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_start_generating_vid_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_start_generating_vid_out._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_start_generating_vid_out._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_stop_generating_vid_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_stop_generating_vid_out._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_stop_generating_vid_out._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_stop_generating_vid_out._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_vid_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_vid_out._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_vid_out_tick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_vid_out_tick._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_vid_out_tick._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_thread_vid_out_tick._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_start_generating_vid_out(ptr noundef %dev, ptr noundef writeonly %pstreaming) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %0 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %kthread_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 298
  %1 = ptrtoint ptr %kthread_vid_out to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kthread_vid_out, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end14, label %if.then3

if.then3:                                         ; preds = %do.end2
  %out_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 301
  %3 = ptrtoint ptr %out_seq_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %out_seq_count, align 4
  %seq_wrap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 158
  %5 = ptrtoint ptr %seq_wrap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %seq_wrap, align 2, !range !67
  %7 = shl nuw i8 %6, 7
  %mul = zext i8 %7 to i32
  %add = add i32 %4, %mul
  %vid_out_streaming = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 305
  %cmp5 = icmp eq ptr %vid_out_streaming, %pstreaming
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %vid_out_seq_start = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 303
  %8 = ptrtoint ptr %vid_out_seq_start to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %vid_out_seq_start, align 4
  br label %if.end13

if.else:                                          ; preds = %if.then3
  %vbi_out_streaming = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 308
  %cmp8 = icmp eq ptr %vbi_out_streaming, %pstreaming
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %vbi_out_seq_start = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 306
  %9 = ptrtoint ptr %vbi_out_seq_start to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %vbi_out_seq_start, align 8
  br label %if.end13

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %meta_out_seq_start = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 310
  %10 = ptrtoint ptr %meta_out_seq_start to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %meta_out_seq_start, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then10, %if.then7
  %11 = ptrtoint ptr %pstreaming to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %pstreaming, align 1
  br label %return

if.end14:                                         ; preds = %do.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %jiffies_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 299
  %13 = ptrtoint ptr %jiffies_vid_out to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %jiffies_vid_out, align 4
  %seq_wrap15 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 158
  %14 = ptrtoint ptr %seq_wrap15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %seq_wrap15, align 2, !range !67
  %16 = shl nuw i8 %15, 7
  %mul18 = zext i8 %16 to i32
  %vid_out_seq_start19 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 303
  %17 = ptrtoint ptr %vid_out_seq_start19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul18, ptr %vid_out_seq_start19, align 4
  %vbi_out_seq_start24 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 306
  %18 = ptrtoint ptr %vbi_out_seq_start24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul18, ptr %vbi_out_seq_start24, align 8
  %meta_out_seq_start29 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 310
  %19 = ptrtoint ptr %meta_out_seq_start29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul18, ptr %meta_out_seq_start29, align 4
  %name31 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %call33 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @vivid_thread_vid_out, ptr noundef %dev, i32 noundef -1, ptr noundef nonnull @.str.3, ptr noundef %name31) #5
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then42, label %if.end53

if.then42:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call33 to i32
  %21 = ptrtoint ptr %kthread_vid_out to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %kthread_vid_out, align 8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name31) #8
  br label %return

if.end53:                                         ; preds = %if.end14
  %call36 = tail call i32 @wake_up_process(ptr noundef %call33) #5
  %22 = ptrtoint ptr %kthread_vid_out to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call33, ptr %kthread_vid_out, align 8
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name31, ptr noundef nonnull @.str.1) #8
  br label %return

return:                                           ; preds = %do.end60, %if.end53.return_crit_edge, %if.then42, %if.end13
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %20, %if.then42 ], [ 0, %if.end53.return_crit_edge ], [ 0, %do.end60 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_thread_vid_out(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %0 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call zeroext i1 @set_freezable() #5
  %out_seq_offset = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 300
  %1 = ptrtoint ptr %out_seq_offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %out_seq_offset, align 8
  %seq_wrap = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 158
  %2 = ptrtoint ptr %seq_wrap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %seq_wrap, align 2, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end3.if.end6_crit_edge, label %if.then5

do.end3.if.end6_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  %out_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 301
  %4 = ptrtoint ptr %out_seq_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -128, ptr %out_seq_count, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end3.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %jiffies_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 299
  %6 = ptrtoint ptr %jiffies_vid_out to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %jiffies_vid_out, align 4
  %vbi_out_seq_start = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 306
  %7 = ptrtoint ptr %vbi_out_seq_start to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %vbi_out_seq_start, align 8
  %vid_out_seq_start = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 303
  %8 = ptrtoint ptr %vid_out_seq_start to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %vid_out_seq_start, align 4
  %meta_out_seq_start = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 310
  %9 = ptrtoint ptr %meta_out_seq_start to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %meta_out_seq_start, align 4
  %out_seq_resync = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 302
  %10 = ptrtoint ptr %out_seq_resync to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %out_seq_resync, align 8
  %mutex = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 39
  %out_seq_count19 = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 301
  %timeperframe_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 279
  %denominator26 = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 279, i32 1
  %field_out = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 280
  %vid_out_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 304
  %vbi_out_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 307
  %meta_out_seq_count = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 311
  %name.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 1, i32 4
  %perc_dropped_buffers.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 161
  %slock.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 38
  %vid_out_active.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 287
  %prev.i.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 287, i32 1
  %vbi_out_active.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 289
  %meta_out_active.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 291
  %ctrl_hdl_vid_out.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 21
  %time_wrap_offset.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 160
  %dqbuf_error.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 156
  %ctrl_hdl_vbi_out.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 25
  %stream_sliced_vbi_out.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 309
  %ctrl_hdl_meta_out.i = getelementptr inbounds %struct.vivid_dev, ptr %data, i32 0, i32 35
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end6
  %11 = tail call i32 @llvm.read_register.i32(metadata !57) #5
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %16, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.if.end.i_crit_edge

for.cond.if.end.i_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @debug_check_no_locks_held() #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.cond.if.end.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 57) #5
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #5
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %21 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !68

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %20) #5
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !69

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #5
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  %call8 = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %call8, label %do.body496, label %if.end10

if.end10:                                         ; preds = %try_to_freeze.exit
  %call11 = tail call i32 @mutex_trylock(ptr noundef %mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @schedule() #5
  br label %for.cond.backedge

if.end14:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %out_seq_resync to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %out_seq_resync, align 8, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool16.not = icmp eq i8 %24, 0
  br i1 %tobool16.not, label %if.end14.if.end23_crit_edge, label %if.then17

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %jiffies_vid_out to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %jiffies_vid_out, align 4
  %26 = ptrtoint ptr %out_seq_count19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %out_seq_count19, align 4
  %add = add i32 %27, 1
  %28 = ptrtoint ptr %out_seq_offset to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %out_seq_offset, align 8
  %29 = ptrtoint ptr %out_seq_resync to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %out_seq_resync, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end14.if.end23_crit_edge
  %30 = ptrtoint ptr %timeperframe_vid_out to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timeperframe_vid_out, align 4
  %32 = ptrtoint ptr %denominator26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %denominator26, align 4
  %34 = ptrtoint ptr %field_out to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %field_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %35)
  %cmp27 = icmp eq i32 %35, 7
  %mul = zext i1 %cmp27 to i32
  %spec.select = shl i32 %33, %mul
  %36 = ptrtoint ptr %jiffies_vid_out to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %jiffies_vid_out, align 4
  %sub = sub i32 %22, %37
  %conv = zext i32 %sub to i64
  %conv31 = zext i32 %spec.select to i64
  %mul32 = mul nuw i64 %conv31, %conv
  %mul33 = mul i32 %31, 100
  %div719 = lshr exact i32 %mul33, 1
  %conv34 = zext i32 %div719 to i64
  %add35 = add nuw i64 %mul32, %conv34
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add35)
  %cmp212 = icmp ult i64 %add35, 4294967296
  br i1 %cmp212, label %if.then216, label %if.else222, !prof !68

if.then216:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %conv217 = trunc i64 %add35 to i32
  %div220 = udiv i32 %conv217, %mul33
  %conv221 = zext i32 %div220 to i64
  br label %if.end226

if.else222:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %38 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul33, i64 %add35) #9, !srcloc !70
  %asmresult1.i = extractvalue { i64, i64 } %38, 1
  br label %if.end226

if.end226:                                        ; preds = %if.else222, %if.then216
  %buffers_since_start.0 = phi i64 [ %conv221, %if.then216 ], [ %asmresult1.i, %if.else222 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268727296, i32 %sub)
  %cmp228 = icmp ugt i32 %sub, -268727296
  br i1 %cmp228, label %if.then230, label %if.end226.if.end234_crit_edge

if.end226.if.end234_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

if.then230:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %jiffies_vid_out to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %22, ptr %jiffies_vid_out, align 4
  %conv232 = trunc i64 %buffers_since_start.0 to i32
  %40 = ptrtoint ptr %out_seq_offset to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv232, ptr %out_seq_offset, align 8
  br label %if.end234

if.end234:                                        ; preds = %if.then230, %if.end226.if.end234_crit_edge
  %buffers_since_start.1 = phi i64 [ 0, %if.then230 ], [ %buffers_since_start.0, %if.end226.if.end234_crit_edge ]
  %41 = ptrtoint ptr %out_seq_offset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %out_seq_offset, align 8
  %43 = trunc i64 %buffers_since_start.1 to i32
  %conv238 = add i32 %42, %43
  %44 = ptrtoint ptr %out_seq_count19 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv238, ptr %out_seq_count19, align 4
  %45 = ptrtoint ptr %vid_out_seq_start to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vid_out_seq_start, align 4
  %sub242 = sub i32 %conv238, %46
  %47 = ptrtoint ptr %vid_out_seq_count to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub242, ptr %vid_out_seq_count, align 8
  %48 = ptrtoint ptr %vbi_out_seq_start to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vbi_out_seq_start, align 8
  %sub245 = sub i32 %conv238, %49
  %50 = ptrtoint ptr %vbi_out_seq_count to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub245, ptr %vbi_out_seq_count, align 4
  %51 = ptrtoint ptr %meta_out_seq_start to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %meta_out_seq_start, align 4
  %sub248 = sub i32 %conv238, %52
  %53 = ptrtoint ptr %meta_out_seq_count to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub248, ptr %meta_out_seq_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %54 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not.i725 = icmp eq i32 %54, 0
  br i1 %cmp.not.i725, label %if.end234.do.end3.i_crit_edge, label %do.end.i

if.end234.do.end3.i_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i) #8
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end234.do.end3.i_crit_edge
  %55 = ptrtoint ptr %perc_dropped_buffers.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %perc_dropped_buffers.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i726 = icmp eq i32 %56, 0
  br i1 %tobool.not.i726, label %do.end3.i.if.end8.i_crit_edge, label %land.lhs.true.i

do.end3.i.if.end8.i_crit_edge:                    ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %do.end3.i
  %call.i.i = tail call i32 @prandom_u32() #5
  %conv.i.i = zext i32 %call.i.i to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 100
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %57 = ptrtoint ptr %perc_dropped_buffers.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %perc_dropped_buffers.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %conv2.i.i)
  %cmp6.i = icmp ugt i32 %58, %conv2.i.i
  br i1 %cmp6.i, label %land.lhs.true.i.vivid_thread_vid_out_tick.exit_crit_edge, label %land.lhs.true.i.if.end8.i_crit_edge

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

land.lhs.true.i.vivid_thread_vid_out_tick.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vivid_thread_vid_out_tick.exit

if.end8.i:                                        ; preds = %land.lhs.true.i.if.end8.i_crit_edge, %do.end3.i.if.end8.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %slock.i) #5
  %59 = ptrtoint ptr %vid_out_active.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %vid_out_active.i, align 4
  %cmp.i.not.i = icmp eq ptr %60, %vid_out_active.i
  br i1 %cmp.i.not.i, label %if.end8.i.if.end18.i_crit_edge, label %land.lhs.true11.i

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

land.lhs.true11.i:                                ; preds = %if.end8.i
  %61 = ptrtoint ptr %vid_out_active.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %vid_out_active.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %62, %vid_out_active.i
  br i1 %cmp.i.not.i.i, label %land.lhs.true11.i.if.then15.i_crit_edge, label %list_is_singular.exit.i

land.lhs.true11.i.if.then15.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

list_is_singular.exit.i:                          ; preds = %land.lhs.true11.i
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i, align 4
  %cmp.i247.not.i = icmp eq ptr %62, %64
  br i1 %cmp.i247.not.i, label %list_is_singular.exit.i.if.end18.i_crit_edge, label %list_is_singular.exit.i.if.then15.i_crit_edge

list_is_singular.exit.i.if.then15.i_crit_edge:    ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

list_is_singular.exit.i.if.end18.i_crit_edge:     ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then15.i:                                      ; preds = %list_is_singular.exit.i.if.then15.i_crit_edge, %land.lhs.true11.i.if.then15.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %62, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %62) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then15.i.list_del.exit.i_crit_edge

if.then15.i.list_del.exit.i_crit_edge:            ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i.i, align 4
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %62, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then15.i.list_del.exit.i_crit_edge
  %71 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 256 to ptr), ptr %62, align 4
  %prev.i248.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i248.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i248.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %list_del.exit.i, %list_is_singular.exit.i.if.end18.i_crit_edge, %if.end8.i.if.end18.i_crit_edge
  %vid_out_buf.0.i = phi ptr [ null, %if.end8.i.if.end18.i_crit_edge ], [ null, %list_is_singular.exit.i.if.end18.i_crit_edge ], [ %add.ptr.i, %list_del.exit.i ]
  %73 = ptrtoint ptr %vbi_out_active.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %vbi_out_active.i, align 4
  %cmp.i249.not.i = icmp eq ptr %74, %vbi_out_active.i
  br i1 %cmp.i249.not.i, label %if.end18.i.if.end31.i_crit_edge, label %land.lhs.true21.i

if.end18.i.if.end31.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

land.lhs.true21.i:                                ; preds = %if.end18.i
  %75 = ptrtoint ptr %field_out to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %field_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %76)
  %cmp22.not.i = icmp eq i32 %76, 7
  br i1 %cmp22.not.i, label %lor.lhs.false.i, label %land.lhs.true21.i.if.then24.i_crit_edge

land.lhs.true21.i.if.then24.i_crit_edge:          ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true21.i
  %77 = ptrtoint ptr %vbi_out_seq_count to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vbi_out_seq_count, align 4
  %and.i727 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i727)
  %tobool23.not.i = icmp eq i32 %and.i727, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i.if.end31.i_crit_edge, label %lor.lhs.false.i.if.then24.i_crit_edge

lor.lhs.false.i.if.then24.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

lor.lhs.false.i.if.end31.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

if.then24.i:                                      ; preds = %lor.lhs.false.i.if.then24.i_crit_edge, %land.lhs.true21.i.if.then24.i_crit_edge
  %add.ptr29.i = getelementptr i8, ptr %74, i32 -736
  %call.i.i251.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %74) #5
  br i1 %call.i.i251.i, label %if.end.i.i254.i, label %if.then24.i.list_del.exit256.i_crit_edge

if.then24.i.list_del.exit256.i_crit_edge:         ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit256.i

if.end.i.i254.i:                                  ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i252.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i252.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i252.i, align 4
  %81 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %74, align 4
  %prev1.i.i.i253.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i253.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i253.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %list_del.exit256.i

list_del.exit256.i:                               ; preds = %if.end.i.i254.i, %if.then24.i.list_del.exit256.i_crit_edge
  %85 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 256 to ptr), ptr %74, align 4
  %prev.i255.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i255.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i255.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %list_del.exit256.i, %lor.lhs.false.i.if.end31.i_crit_edge, %if.end18.i.if.end31.i_crit_edge
  %vbi_out_buf.0.i = phi ptr [ null, %if.end18.i.if.end31.i_crit_edge ], [ %add.ptr29.i, %list_del.exit256.i ], [ null, %lor.lhs.false.i.if.end31.i_crit_edge ]
  %87 = ptrtoint ptr %meta_out_active.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %meta_out_active.i, align 4
  %cmp.i257.not.i = icmp eq ptr %88, %meta_out_active.i
  br i1 %cmp.i257.not.i, label %if.end31.i.if.end41.i_crit_edge, label %if.then34.i

if.end31.i.if.end41.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.i

if.then34.i:                                      ; preds = %if.end31.i
  %add.ptr39.i = getelementptr i8, ptr %88, i32 -736
  %call.i.i259.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %88) #5
  br i1 %call.i.i259.i, label %if.end.i.i262.i, label %if.then34.i.list_del.exit264.i_crit_edge

if.then34.i.list_del.exit264.i_crit_edge:         ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit264.i

if.end.i.i262.i:                                  ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i260.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i260.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i260.i, align 4
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %88, align 4
  %prev1.i.i.i261.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i261.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i261.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %list_del.exit264.i

list_del.exit264.i:                               ; preds = %if.end.i.i262.i, %if.then34.i.list_del.exit264.i_crit_edge
  %95 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 256 to ptr), ptr %88, align 4
  %prev.i263.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i263.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i263.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %list_del.exit264.i, %if.end31.i.if.end41.i_crit_edge
  %meta_out_buf.0.i = phi ptr [ null, %if.end31.i.if.end41.i_crit_edge ], [ %add.ptr39.i, %list_del.exit264.i ]
  tail call void @_raw_spin_unlock(ptr noundef %slock.i) #5
  %tobool43.not.i = icmp eq ptr %vid_out_buf.0.i, null
  %tobool45.not.i = icmp eq ptr %vbi_out_buf.0.i, null
  %or.cond.i = and i1 %tobool43.not.i, %tobool45.not.i
  %tobool47.not.i = icmp eq ptr %meta_out_buf.0.i, null
  %or.cond245.i = and i1 %or.cond.i, %tobool47.not.i
  br i1 %or.cond245.i, label %if.end41.i.vivid_thread_vid_out_tick.exit_crit_edge, label %if.end49.i

if.end41.i.vivid_thread_vid_out_tick.exit_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vivid_thread_vid_out_tick.exit

if.end49.i:                                       ; preds = %if.end41.i
  br i1 %tobool43.not.i, label %if.end49.i.if.end87.i_crit_edge, label %if.then51.i

if.end49.i.if.end87.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.i

if.then51.i:                                      ; preds = %if.end49.i
  %req.i = getelementptr inbounds %struct.vb2_buffer, ptr %vid_out_buf.0.i, i32 0, i32 7, i32 2
  %97 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %req.i, align 4
  %call52.i = tail call i32 @v4l2_ctrl_request_setup(ptr noundef %98, ptr noundef %ctrl_hdl_vid_out.i) #5
  %99 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %req.i, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %100, ptr noundef %ctrl_hdl_vid_out.i) #5
  %101 = ptrtoint ptr %vid_out_seq_count to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %vid_out_seq_count, align 8
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vid_out_buf.0.i, i32 0, i32 4
  %103 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %sequence.i, align 8
  %104 = ptrtoint ptr %field_out to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %field_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %105)
  %cmp60.i = icmp eq i32 %105, 7
  br i1 %cmp60.i, label %if.then61.i, label %if.then51.i.if.end64.i_crit_edge

if.then51.i.if.end64.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i

if.then61.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #7
  %div244.i = lshr i32 %102, 1
  %106 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div244.i, ptr %sequence.i, align 8
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then61.i, %if.then51.i.if.end64.i_crit_edge
  %call.i265.i = tail call i64 @ktime_get() #5
  %107 = ptrtoint ptr %time_wrap_offset.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %time_wrap_offset.i, align 8
  %add.i = add i64 %108, %call.i265.i
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %vid_out_buf.0.i, i32 0, i32 5
  %109 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %add.i, ptr %timestamp.i, align 8
  %110 = ptrtoint ptr %dqbuf_error.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %dqbuf_error.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool70.not.i = icmp eq i8 %111, 0
  %cond.i = select i1 %tobool70.not.i, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %vid_out_buf.0.i, i32 noundef %cond.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %112 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp72.i = icmp ugt i32 %112, 1
  br i1 %cmp72.i, label %do.end76.i, label %if.end64.i.if.end87.i_crit_edge

if.end64.i.if.end87.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.i

do.end76.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  %index.i = getelementptr inbounds %struct.vb2_buffer, ptr %vid_out_buf.0.i, i32 0, i32 1
  %113 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %index.i, align 4
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name.i, i32 noundef %114) #8
  br label %if.end87.i

if.end87.i:                                       ; preds = %do.end76.i, %if.end64.i.if.end87.i_crit_edge, %if.end49.i.if.end87.i_crit_edge
  br i1 %tobool45.not.i, label %if.end87.i.if.end134.i_crit_edge, label %if.then89.i

if.end87.i.if.end134.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end134.i

if.then89.i:                                      ; preds = %if.end87.i
  %req93.i = getelementptr inbounds %struct.vb2_buffer, ptr %vbi_out_buf.0.i, i32 0, i32 7, i32 2
  %115 = ptrtoint ptr %req93.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %req93.i, align 4
  %call94.i = tail call i32 @v4l2_ctrl_request_setup(ptr noundef %116, ptr noundef %ctrl_hdl_vbi_out.i) #5
  %117 = ptrtoint ptr %req93.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %req93.i, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %118, ptr noundef %ctrl_hdl_vbi_out.i) #5
  %119 = ptrtoint ptr %stream_sliced_vbi_out.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %stream_sliced_vbi_out.i, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool100.not.i = icmp eq i8 %120, 0
  br i1 %tobool100.not.i, label %if.then89.i.if.end102.i_crit_edge, label %if.then101.i

if.then89.i.if.end102.i_crit_edge:                ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102.i

if.then101.i:                                     ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vivid_sliced_vbi_out_process(ptr noundef %data, ptr noundef nonnull %vbi_out_buf.0.i) #5
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then101.i, %if.then89.i.if.end102.i_crit_edge
  %121 = ptrtoint ptr %vbi_out_seq_count to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %vbi_out_seq_count, align 4
  %sequence105.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vbi_out_buf.0.i, i32 0, i32 4
  %123 = ptrtoint ptr %sequence105.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %sequence105.i, align 8
  %call.i266.i = tail call i64 @ktime_get() #5
  %124 = ptrtoint ptr %time_wrap_offset.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %time_wrap_offset.i, align 8
  %add108.i = add i64 %125, %call.i266.i
  %timestamp111.i = getelementptr inbounds %struct.vb2_buffer, ptr %vbi_out_buf.0.i, i32 0, i32 5
  %126 = ptrtoint ptr %timestamp111.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %add108.i, ptr %timestamp111.i, align 8
  %127 = ptrtoint ptr %dqbuf_error.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %dqbuf_error.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool115.not.i = icmp eq i8 %128, 0
  %cond116.i = select i1 %tobool115.not.i, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %vbi_out_buf.0.i, i32 noundef %cond116.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %129 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %cmp118.i = icmp ugt i32 %129, 1
  br i1 %cmp118.i, label %do.end122.i, label %if.end102.i.if.end134.i_crit_edge

if.end102.i.if.end134.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end134.i

do.end122.i:                                      ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #7
  %index129.i = getelementptr inbounds %struct.vb2_buffer, ptr %vbi_out_buf.0.i, i32 0, i32 1
  %130 = ptrtoint ptr %index129.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %index129.i, align 4
  %call130.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef %131) #8
  br label %if.end134.i

if.end134.i:                                      ; preds = %do.end122.i, %if.end102.i.if.end134.i_crit_edge, %if.end87.i.if.end134.i_crit_edge
  br i1 %tobool47.not.i, label %if.end134.i.if.end177.i_crit_edge, label %if.then136.i

if.end134.i.if.end177.i_crit_edge:                ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177.i

if.then136.i:                                     ; preds = %if.end134.i
  %req140.i = getelementptr inbounds %struct.vb2_buffer, ptr %meta_out_buf.0.i, i32 0, i32 7, i32 2
  %132 = ptrtoint ptr %req140.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %req140.i, align 4
  %call141.i = tail call i32 @v4l2_ctrl_request_setup(ptr noundef %133, ptr noundef %ctrl_hdl_meta_out.i) #5
  %134 = ptrtoint ptr %req140.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %req140.i, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %135, ptr noundef %ctrl_hdl_meta_out.i) #5
  tail call void @vivid_meta_out_process(ptr noundef %data, ptr noundef nonnull %meta_out_buf.0.i) #5
  %136 = ptrtoint ptr %meta_out_seq_count to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %meta_out_seq_count, align 8
  %sequence148.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %meta_out_buf.0.i, i32 0, i32 4
  %138 = ptrtoint ptr %sequence148.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %sequence148.i, align 8
  %call.i267.i = tail call i64 @ktime_get() #5
  %139 = ptrtoint ptr %time_wrap_offset.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %time_wrap_offset.i, align 8
  %add151.i = add i64 %140, %call.i267.i
  %timestamp154.i = getelementptr inbounds %struct.vb2_buffer, ptr %meta_out_buf.0.i, i32 0, i32 5
  %141 = ptrtoint ptr %timestamp154.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %add151.i, ptr %timestamp154.i, align 8
  %142 = ptrtoint ptr %dqbuf_error.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %dqbuf_error.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool158.not.i = icmp eq i8 %143, 0
  %cond159.i = select i1 %tobool158.not.i, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %meta_out_buf.0.i, i32 noundef %cond159.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %144 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %144)
  %cmp161.i = icmp ugt i32 %144, 1
  br i1 %cmp161.i, label %do.end165.i, label %if.then136.i.if.end177.i_crit_edge

if.then136.i.if.end177.i_crit_edge:               ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177.i

do.end165.i:                                      ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #7
  %index172.i = getelementptr inbounds %struct.vb2_buffer, ptr %meta_out_buf.0.i, i32 0, i32 1
  %145 = ptrtoint ptr %index172.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %index172.i, align 4
  %call173.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i, i32 noundef %146) #8
  br label %if.end177.i

if.end177.i:                                      ; preds = %do.end165.i, %if.then136.i.if.end177.i_crit_edge, %if.end134.i.if.end177.i_crit_edge
  %147 = ptrtoint ptr %dqbuf_error.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %dqbuf_error.i, align 4
  br label %vivid_thread_vid_out_tick.exit

vivid_thread_vid_out_tick.exit:                   ; preds = %if.end177.i, %if.end41.i.vivid_thread_vid_out_tick.exit_crit_edge, %land.lhs.true.i.vivid_thread_vid_out_tick.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  %conv250 = zext i32 %31 to i64
  %mul251 = mul i64 %buffers_since_start.1, %conv250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %148 = load volatile i32, ptr @jiffies, align 128
  %149 = ptrtoint ptr %jiffies_vid_out to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %jiffies_vid_out, align 4
  %sub253 = sub i32 %148, %150
  %add255 = add i64 %mul251, %conv250
  %mul256 = mul i64 %add255, 100
  %div257720 = lshr i32 %spec.select, 1
  %conv258 = zext i32 %div257720 to i64
  %add259 = add i64 %mul256, %conv258
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add259)
  %cmp461 = icmp ult i64 %add259, 4294967296
  br i1 %cmp461, label %if.then469, label %if.else475, !prof !68

if.then469:                                       ; preds = %vivid_thread_vid_out_tick.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv470 = trunc i64 %add259 to i32
  %div473 = udiv i32 %conv470, %spec.select
  %conv474 = zext i32 %div473 to i64
  br label %if.end479

if.else475:                                       ; preds = %vivid_thread_vid_out_tick.exit
  call void @__sanitizer_cov_trace_pc() #7
  %151 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select, i64 %add259) #9, !srcloc !70
  %asmresult1.i752 = extractvalue { i64, i64 } %151, 1
  br label %if.end479

if.end479:                                        ; preds = %if.else475, %if.then469
  %next_jiffies_since_start.0 = phi i64 [ %conv474, %if.then469 ], [ %asmresult1.i752, %if.else475 ]
  %conv481 = zext i32 %sub253 to i64
  %152 = tail call i64 @llvm.umax.i64(i64 %next_jiffies_since_start.0, i64 %conv481)
  %153 = trunc i64 %152 to i32
  %conv489 = sub i32 %153, %sub253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %154 = load volatile i32, ptr @jiffies, align 128
  %sub490803 = sub i32 %154, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub490803, i32 %conv489)
  %cmp491804 = icmp ult i32 %sub490803, %conv489
  br i1 %cmp491804, label %if.end479.land.rhs_crit_edge, label %if.end479.for.cond.backedge_crit_edge

if.end479.for.cond.backedge_crit_edge:            ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

if.end479.land.rhs_crit_edge:                     ; preds = %if.end479
  br label %land.rhs

for.cond.backedge:                                ; preds = %while.body.for.cond.backedge_crit_edge, %land.rhs.for.cond.backedge_crit_edge, %if.end479.for.cond.backedge_crit_edge, %if.then13
  br label %for.cond

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end479.land.rhs_crit_edge
  %call493 = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %call493, label %land.rhs.for.cond.backedge_crit_edge, label %while.body

land.rhs.for.cond.backedge_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

while.body:                                       ; preds = %land.rhs
  tail call void @schedule() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %155 = load volatile i32, ptr @jiffies, align 128
  %sub490 = sub i32 %155, %22
  %cmp491 = icmp ult i32 %sub490, %conv489
  br i1 %cmp491, label %while.body.land.rhs_crit_edge, label %while.body.for.cond.backedge_crit_edge

while.body.for.cond.backedge_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

do.body496:                                       ; preds = %try_to_freeze.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %156 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp497.not = icmp eq i32 %156, 0
  br i1 %cmp497.not, label %do.body496.do.end510_crit_edge, label %do.end502

do.body496.do.end510_crit_edge:                   ; preds = %do.body496
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end510

do.end502:                                        ; preds = %do.body496
  call void @__sanitizer_cov_trace_pc() #7
  %call507 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i) #8
  br label %do.end510

do.end510:                                        ; preds = %do.end502, %do.body496.do.end510_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vivid_grab_controls(ptr nocapture noundef readonly %dev, i1 noundef zeroext %grab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_has_crop_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 105
  %0 = ptrtoint ptr %ctrl_has_crop_out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_has_crop_out, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.v4l2_ctrl_grab.exit_crit_edge, label %if.end.i

entry.v4l2_ctrl_grab.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_ctrl_grab.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #5
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %1, i1 noundef zeroext %grab) #5
  %6 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler.i.i, align 8
  %lock.i6.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %lock.i6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock.i6.i, align 4
  tail call void @mutex_unlock(ptr noundef %9) #5
  br label %v4l2_ctrl_grab.exit

v4l2_ctrl_grab.exit:                              ; preds = %if.end.i, %entry.v4l2_ctrl_grab.exit_crit_edge
  %ctrl_has_compose_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 106
  %10 = ptrtoint ptr %ctrl_has_compose_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_has_compose_out, align 4
  %tobool.not.i13 = icmp eq ptr %11, null
  br i1 %tobool.not.i13, label %v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit18_crit_edge, label %if.end.i17

v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit18_crit_edge: ; preds = %v4l2_ctrl_grab.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_ctrl_grab.exit18

if.end.i17:                                       ; preds = %v4l2_ctrl_grab.exit
  call void @__sanitizer_cov_trace_pc() #7
  %handler.i.i14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %handler.i.i14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handler.i.i14, align 8
  %lock.i.i15 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %lock.i.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock.i.i15, align 4
  tail call void @mutex_lock_nested(ptr noundef %15, i32 noundef 0) #5
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %11, i1 noundef zeroext %grab) #5
  %16 = ptrtoint ptr %handler.i.i14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handler.i.i14, align 8
  %lock.i6.i16 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %lock.i6.i16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock.i6.i16, align 4
  tail call void @mutex_unlock(ptr noundef %19) #5
  br label %v4l2_ctrl_grab.exit18

v4l2_ctrl_grab.exit18:                            ; preds = %if.end.i17, %v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit18_crit_edge
  %ctrl_has_scaler_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 107
  %20 = ptrtoint ptr %ctrl_has_scaler_out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl_has_scaler_out, align 8
  %tobool.not.i19 = icmp eq ptr %21, null
  br i1 %tobool.not.i19, label %v4l2_ctrl_grab.exit18.v4l2_ctrl_grab.exit24_crit_edge, label %if.end.i23

v4l2_ctrl_grab.exit18.v4l2_ctrl_grab.exit24_crit_edge: ; preds = %v4l2_ctrl_grab.exit18
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_ctrl_grab.exit24

if.end.i23:                                       ; preds = %v4l2_ctrl_grab.exit18
  call void @__sanitizer_cov_trace_pc() #7
  %handler.i.i20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %handler.i.i20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handler.i.i20, align 8
  %lock.i.i21 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %lock.i.i21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lock.i.i21, align 4
  tail call void @mutex_lock_nested(ptr noundef %25, i32 noundef 0) #5
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %21, i1 noundef zeroext %grab) #5
  %26 = ptrtoint ptr %handler.i.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %handler.i.i20, align 8
  %lock.i6.i22 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %lock.i6.i22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lock.i6.i22, align 4
  tail call void @mutex_unlock(ptr noundef %29) #5
  br label %v4l2_ctrl_grab.exit24

v4l2_ctrl_grab.exit24:                            ; preds = %if.end.i23, %v4l2_ctrl_grab.exit18.v4l2_ctrl_grab.exit24_crit_edge
  %ctrl_tx_mode = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 108
  %30 = ptrtoint ptr %ctrl_tx_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl_tx_mode, align 4
  %tobool.not.i25 = icmp eq ptr %31, null
  br i1 %tobool.not.i25, label %v4l2_ctrl_grab.exit24.v4l2_ctrl_grab.exit30_crit_edge, label %if.end.i29

v4l2_ctrl_grab.exit24.v4l2_ctrl_grab.exit30_crit_edge: ; preds = %v4l2_ctrl_grab.exit24
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_ctrl_grab.exit30

if.end.i29:                                       ; preds = %v4l2_ctrl_grab.exit24
  call void @__sanitizer_cov_trace_pc() #7
  %handler.i.i26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %handler.i.i26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %handler.i.i26, align 8
  %lock.i.i27 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %lock.i.i27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lock.i.i27, align 4
  tail call void @mutex_lock_nested(ptr noundef %35, i32 noundef 0) #5
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %31, i1 noundef zeroext %grab) #5
  %36 = ptrtoint ptr %handler.i.i26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %handler.i.i26, align 8
  %lock.i6.i28 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %lock.i6.i28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lock.i6.i28, align 4
  tail call void @mutex_unlock(ptr noundef %39) #5
  br label %v4l2_ctrl_grab.exit30

v4l2_ctrl_grab.exit30:                            ; preds = %if.end.i29, %v4l2_ctrl_grab.exit24.v4l2_ctrl_grab.exit30_crit_edge
  %ctrl_tx_rgb_range = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 109
  %40 = ptrtoint ptr %ctrl_tx_rgb_range to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl_tx_rgb_range, align 8
  %tobool.not.i31 = icmp eq ptr %41, null
  br i1 %tobool.not.i31, label %v4l2_ctrl_grab.exit30.v4l2_ctrl_grab.exit36_crit_edge, label %if.end.i35

v4l2_ctrl_grab.exit30.v4l2_ctrl_grab.exit36_crit_edge: ; preds = %v4l2_ctrl_grab.exit30
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_ctrl_grab.exit36

if.end.i35:                                       ; preds = %v4l2_ctrl_grab.exit30
  call void @__sanitizer_cov_trace_pc() #7
  %handler.i.i32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %handler.i.i32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %handler.i.i32, align 8
  %lock.i.i33 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %lock.i.i33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lock.i.i33, align 4
  tail call void @mutex_lock_nested(ptr noundef %45, i32 noundef 0) #5
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %41, i1 noundef zeroext %grab) #5
  %46 = ptrtoint ptr %handler.i.i32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %handler.i.i32, align 8
  %lock.i6.i34 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %lock.i6.i34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lock.i6.i34, align 4
  tail call void @mutex_unlock(ptr noundef %49) #5
  br label %v4l2_ctrl_grab.exit36

v4l2_ctrl_grab.exit36:                            ; preds = %if.end.i35, %v4l2_ctrl_grab.exit30.v4l2_ctrl_grab.exit36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_stop_generating_vid_out(ptr noundef %dev, ptr noundef writeonly %pstreaming) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %0 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.10) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %kthread_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 298
  %1 = ptrtoint ptr %kthread_vid_out to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kthread_vid_out, align 8
  %cmp3 = icmp eq ptr %2, null
  br i1 %cmp3, label %do.end2.return_crit_edge, label %if.end5

do.end2.return_crit_edge:                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end5:                                          ; preds = %do.end2
  %3 = ptrtoint ptr %pstreaming to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %pstreaming, align 1
  %vid_out_streaming = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 305
  %cmp6 = icmp eq ptr %vid_out_streaming, %pstreaming
  br i1 %cmp6, label %while.cond.preheader, label %if.end5.if.end28_crit_edge

if.end5.if.end28_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

while.cond.preheader:                             ; preds = %if.end5
  %vid_out_active = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 287
  %4 = ptrtoint ptr %vid_out_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vid_out_active, align 4
  %cmp.i.not169 = icmp eq ptr %5, %vid_out_active
  br i1 %cmp.i.not169, label %while.cond.preheader.if.end28_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end28_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %ctrl_hdl_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 21
  %name20 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  br label %while.body

while.body:                                       ; preds = %do.end27.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %5, %while.body.lr.ph ], [ %21, %do.end27.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %6, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #5
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void @v4l2_ctrl_request_complete(ptr noundef %16, ptr noundef %ctrl_hdl_vid_out) #5
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %17 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp14 = icmp ugt i32 %17, 1
  br i1 %cmp14, label %do.end17, label %list_del.exit.do.end27_crit_edge

list_del.exit.do.end27_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

do.end17:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %index = getelementptr i8, ptr %6, i32 -732
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name20, i32 noundef %19) #8
  br label %do.end27

do.end27:                                         ; preds = %do.end17, %list_del.exit.do.end27_crit_edge
  %20 = ptrtoint ptr %vid_out_active to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %vid_out_active, align 4
  %cmp.i.not = icmp eq ptr %21, %vid_out_active
  br i1 %cmp.i.not, label %do.end27.if.end28_crit_edge, label %do.end27.while.body_crit_edge

do.end27.while.body_crit_edge:                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.end27.if.end28_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end28:                                         ; preds = %do.end27.if.end28_crit_edge, %while.cond.preheader.if.end28_crit_edge, %if.end5.if.end28_crit_edge
  %vbi_out_streaming = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 308
  %cmp29 = icmp eq ptr %vbi_out_streaming, %pstreaming
  br i1 %cmp29, label %while.cond31.preheader, label %if.end28.if.end67_crit_edge

if.end28.if.end67_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

while.cond31.preheader:                           ; preds = %if.end28
  %vbi_out_active = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 289
  %22 = ptrtoint ptr %vbi_out_active to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %vbi_out_active, align 4
  %cmp.i153.not170 = icmp eq ptr %23, %vbi_out_active
  br i1 %cmp.i153.not170, label %while.cond31.preheader.if.end67_crit_edge, label %while.body35.lr.ph

while.cond31.preheader.if.end67_crit_edge:        ; preds = %while.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

while.body35.lr.ph:                               ; preds = %while.cond31.preheader
  %ctrl_hdl_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 25
  %name57 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  br label %while.body35

while.body35:                                     ; preds = %do.end65.while.body35_crit_edge, %while.body35.lr.ph
  %24 = phi ptr [ %23, %while.body35.lr.ph ], [ %39, %do.end65.while.body35_crit_edge ]
  %add.ptr41 = getelementptr i8, ptr %24, i32 -736
  %call.i.i155 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #5
  br i1 %call.i.i155, label %if.end.i.i158, label %while.body35.list_del.exit160_crit_edge

while.body35.list_del.exit160_crit_edge:          ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit160

if.end.i.i158:                                    ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void @v4l2_ctrl_request_complete(ptr noundef %34, ptr noundef %ctrl_hdl_vbi_out) #5
  tail call void @vb2_buffer_done(ptr noundef %add.ptr41, i32 noundef 6) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %35 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp50 = icmp ugt i32 %35, 1
  br i1 %cmp50, label %do.end54, label %list_del.exit160.do.end65_crit_edge

list_del.exit160.do.end65_crit_edge:              ; preds = %list_del.exit160
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

do.end54:                                         ; preds = %list_del.exit160
  call void @__sanitizer_cov_trace_pc() #7
  %index61 = getelementptr i8, ptr %24, i32 -732
  %36 = ptrtoint ptr %index61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index61, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name57, i32 noundef %37) #8
  br label %do.end65

do.end65:                                         ; preds = %do.end54, %list_del.exit160.do.end65_crit_edge
  %38 = ptrtoint ptr %vbi_out_active to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %vbi_out_active, align 4
  %cmp.i153.not = icmp eq ptr %39, %vbi_out_active
  br i1 %cmp.i153.not, label %do.end65.if.end67_crit_edge, label %do.end65.while.body35_crit_edge

do.end65.while.body35_crit_edge:                  ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body35

do.end65.if.end67_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.end67:                                         ; preds = %do.end65.if.end67_crit_edge, %while.cond31.preheader.if.end67_crit_edge, %if.end28.if.end67_crit_edge
  %meta_out_streaming = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 312
  %cmp68 = icmp eq ptr %meta_out_streaming, %pstreaming
  br i1 %cmp68, label %while.cond70.preheader, label %if.end67.if.end106_crit_edge

if.end67.if.end106_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

while.cond70.preheader:                           ; preds = %if.end67
  %meta_out_active = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 291
  %40 = ptrtoint ptr %meta_out_active to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %meta_out_active, align 4
  %cmp.i161.not171 = icmp eq ptr %41, %meta_out_active
  br i1 %cmp.i161.not171, label %while.cond70.preheader.if.end106_crit_edge, label %while.body74.lr.ph

while.cond70.preheader.if.end106_crit_edge:       ; preds = %while.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

while.body74.lr.ph:                               ; preds = %while.cond70.preheader
  %ctrl_hdl_meta_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 35
  %name96 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  br label %while.body74

while.body74:                                     ; preds = %do.end104.while.body74_crit_edge, %while.body74.lr.ph
  %42 = phi ptr [ %41, %while.body74.lr.ph ], [ %57, %do.end104.while.body74_crit_edge ]
  %add.ptr80 = getelementptr i8, ptr %42, i32 -736
  %call.i.i163 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %42) #5
  br i1 %call.i.i163, label %if.end.i.i166, label %while.body74.list_del.exit168_crit_edge

while.body74.list_del.exit168_crit_edge:          ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit168

if.end.i.i166:                                    ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void @v4l2_ctrl_request_complete(ptr noundef %52, ptr noundef %ctrl_hdl_meta_out) #5
  tail call void @vb2_buffer_done(ptr noundef %add.ptr80, i32 noundef 6) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %53 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp89 = icmp ugt i32 %53, 1
  br i1 %cmp89, label %do.end93, label %list_del.exit168.do.end104_crit_edge

list_del.exit168.do.end104_crit_edge:             ; preds = %list_del.exit168
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end104

do.end93:                                         ; preds = %list_del.exit168
  call void @__sanitizer_cov_trace_pc() #7
  %index100 = getelementptr i8, ptr %42, i32 -732
  %54 = ptrtoint ptr %index100 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %index100, align 4
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name96, i32 noundef %55) #8
  br label %do.end104

do.end104:                                        ; preds = %do.end93, %list_del.exit168.do.end104_crit_edge
  %56 = ptrtoint ptr %meta_out_active to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %meta_out_active, align 4
  %cmp.i161.not = icmp eq ptr %57, %meta_out_active
  br i1 %cmp.i161.not, label %do.end104.if.end106_crit_edge, label %do.end104.while.body74_crit_edge

do.end104.while.body74_crit_edge:                 ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body74

do.end104.if.end106_crit_edge:                    ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

if.end106:                                        ; preds = %do.end104.if.end106_crit_edge, %while.cond70.preheader.if.end106_crit_edge, %if.end67.if.end106_crit_edge
  %58 = ptrtoint ptr %vid_out_streaming to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %vid_out_streaming, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool108.not = icmp eq i8 %59, 0
  br i1 %tobool108.not, label %lor.lhs.false, label %if.end106.return_crit_edge

if.end106.return_crit_edge:                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %if.end106
  %60 = ptrtoint ptr %vbi_out_streaming to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %vbi_out_streaming, align 8, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool110.not = icmp eq i8 %61, 0
  br i1 %tobool110.not, label %lor.lhs.false111, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false111:                                 ; preds = %lor.lhs.false
  %62 = ptrtoint ptr %meta_out_streaming to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %meta_out_streaming, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool113.not = icmp eq i8 %63, 0
  br i1 %tobool113.not, label %if.end115, label %lor.lhs.false111.return_crit_edge

lor.lhs.false111.return_crit_edge:                ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end115:                                        ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @vivid_grab_controls(ptr noundef %dev, i1 noundef zeroext false)
  %64 = ptrtoint ptr %kthread_vid_out to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %kthread_vid_out, align 8
  %call117 = tail call i32 @kthread_stop(ptr noundef %65) #5
  %66 = ptrtoint ptr %kthread_vid_out to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %kthread_vid_out, align 8
  br label %return

return:                                           ; preds = %if.end115, %lor.lhs.false111.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end106.return_crit_edge, %do.end2.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_request_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_sliced_vbi_out_process(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_meta_out_process(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__v4l2_ctrl_grab(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !53, !54, !56}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-out.c", i32 255, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vivid_start_generating_vid_out._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vivid_start_generating_vid_out._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-out.c", i32 276, i32 25}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-out.c", i32 283, i32 3}
!10 = !{ptr @vivid_start_generating_vid_out._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @vivid_start_generating_vid_out._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-out.c", i32 289, i32 2}
!14 = !{ptr @vivid_start_generating_vid_out._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @vivid_start_generating_vid_out._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-out.c", i32 295, i32 2}
!18 = !{ptr @vivid_stop_generating_vid_out._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @vivid_stop_generating_vid_out._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-out.c", i32 312, i32 4}
!22 = !{ptr @vivid_stop_generating_vid_out._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @vivid_stop_generating_vid_out._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-out.c", i32 327, i32 4}
!26 = !{ptr @vivid_stop_generating_vid_out._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @vivid_stop_generating_vid_out._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-out.c", i32 342, i32 4}
!30 = !{ptr @vivid_stop_generating_vid_out._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @vivid_stop_generating_vid_out._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-out.c", i32 151, i32 2}
!34 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vivid_thread_vid_out._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @vivid_thread_vid_out._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-out.c", i32 240, i32 2}
!39 = !{ptr @vivid_thread_vid_out._entry.22, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @vivid_thread_vid_out._entry_ptr.24, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-out.c", i32 49, i32 2}
!45 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @vivid_thread_vid_out_tick._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @vivid_thread_vid_out_tick._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @vivid_thread_vid_out_tick._entry.28, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-out.c", i32 101, i32 3}
!50 = !{ptr @vivid_thread_vid_out_tick._entry_ptr.29, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @vivid_thread_vid_out_tick._entry.30, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-out.c", i32 118, i32 3}
!53 = !{ptr @vivid_thread_vid_out_tick._entry_ptr.31, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @vivid_thread_vid_out_tick._entry.32, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/media/test-drivers/vivid/vivid-kthread-out.c", i32 132, i32 3}
!56 = !{ptr @vivid_thread_vid_out_tick._entry_ptr.33, !55, !"_entry_ptr", i1 false, i1 false}
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
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 2148195326, i64 2148195606, i64 2148195940, i64 2148196274}
