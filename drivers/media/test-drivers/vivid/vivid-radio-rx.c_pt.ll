; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-radio-rx.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-radio-rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.101, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.102, %struct.anon.103, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
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
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
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
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.v4l2_hw_freq_seek = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }

@vivid_radio_bands = external dso_local local_unnamed_addr constant [3 x %struct.v4l2_frequency_band], align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AM/FM/SW Receiver\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.5 = private constant [53 x i8] c"../drivers/media/test-drivers/vivid/vivid-radio-rx.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 226, i32 20 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 174, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.3], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_radio_rx_read(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %offset) local_unnamed_addr #0 align 64 {
entry:
  %rds = alloca %struct.v4l2_rds_data, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %rds_gen = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 334
  %radio_rx_rds_controls = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 340
  %2 = ptrtoint ptr %radio_rx_rds_controls to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %radio_rx_rds_controls, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup141_crit_edge

entry.cleanup141_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup141

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp = icmp ult i32 %size, 3
  br i1 %cmp, label %if.end.cleanup141_crit_edge, label %if.end3

if.end.cleanup141_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup141

if.end3:                                          ; preds = %if.end
  %4 = urem i32 %size, 3
  %mul = sub nuw i32 %size, %4
  %mutex = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 39
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup141_crit_edge

if.end3.cleanup141_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup141

if.end7:                                          ; preds = %if.end3
  %radio_rx_rds_owner = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 344
  %5 = ptrtoint ptr %radio_rx_rds_owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %radio_rx_rds_owner, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.then16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %cmp10.not = icmp eq ptr %8, %6
  br i1 %cmp10.not, label %land.lhs.true.if.end19_crit_edge, label %if.then11

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup141

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vivid_radio_rds_init(ptr noundef %1) #6
  %private_data17 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %9 = ptrtoint ptr %private_data17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data17, align 4
  %11 = ptrtoint ptr %radio_rx_rds_owner to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %radio_rx_rds_owner, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.lhs.true.if.end19_crit_edge
  %radio_rds_init_time = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 351
  %radio_rx_rds_last_block = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 343
  %radio_rx_rds_use_alternates = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 342
  %radio_rx_rds_enabled = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 341
  %radio_rds_loop = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 350
  %radio_tx_subchans = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 346
  %radio_rx_sig_qual = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 337
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  br label %retry

retry:                                            ; preds = %if.end72.retry_crit_edge, %if.end19
  %call20 = tail call i64 @ktime_get() #6
  %12 = ptrtoint ptr %radio_rds_init_time to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %radio_rds_init_time, align 8
  %sub = sub i64 %call20, %13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i = icmp slt i64 %sub, 0
  %14 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #6
  %15 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3528129202283441362, i64 %14) #9, !srcloc !20
  %16 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3528129202283441362, i64 %14, i64 %15) #9, !srcloc !21
  %div1811.i = lshr i64 %16, 22
  %sub210.i = sub nsw i64 0, %div1811.i
  %cond213.i = select i1 %cmp8.i, i64 %sub210.i, i64 %div1811.i
  %conv = trunc i64 %cond213.i to i32
  %rem = urem i32 %conv, 228
  %and = and i32 %rem, 1
  %17 = ptrtoint ptr %radio_rx_rds_last_block to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %radio_rx_rds_last_block, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp23 = icmp eq i32 %18, 0
  br i1 %cmp23, label %retry.if.then29_crit_edge, label %lor.lhs.false

retry.if.then29_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

lor.lhs.false:                                    ; preds = %retry
  %19 = ptrtoint ptr %radio_rx_rds_use_alternates to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %radio_rx_rds_use_alternates, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %and)
  %cmp27.not = icmp eq i32 %20, %and
  br i1 %cmp27.not, label %lor.lhs.false.if.end33_crit_edge, label %lor.lhs.false.if.then29_crit_edge

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %retry.if.then29_crit_edge
  %21 = ptrtoint ptr %radio_rx_rds_use_alternates to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %radio_rx_rds_use_alternates, align 4
  tail call void @vivid_radio_rds_init(ptr noundef %1) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %lor.lhs.false.if.end33_crit_edge
  %22 = ptrtoint ptr %radio_rx_rds_last_block to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %radio_rx_rds_last_block, align 8
  %add = add i32 %23, 228
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp35.not = icmp ugt i32 %add, %conv
  br i1 %cmp35.not, label %if.end33.if.end41_crit_edge, label %if.then37

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %add39 = add i32 %conv, -227
  %24 = ptrtoint ptr %radio_rx_rds_last_block to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add39, ptr %radio_rx_rds_last_block, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end33.if.end41_crit_edge
  %25 = ptrtoint ptr %radio_rx_rds_last_block to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %radio_rx_rds_last_block, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv)
  %cmp43 = icmp eq i32 %26, %conv
  br i1 %cmp43, label %if.end41.if.then59_crit_edge, label %lor.lhs.false45

if.end41.if.then59_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

lor.lhs.false45:                                  ; preds = %if.end41
  %27 = ptrtoint ptr %radio_rx_rds_enabled to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %radio_rx_rds_enabled, align 2, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool46.not = icmp eq i8 %28, 0
  br i1 %tobool46.not, label %lor.lhs.false45.if.then59_crit_edge, label %lor.lhs.false47

lor.lhs.false45.if.then59_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

lor.lhs.false47:                                  ; preds = %lor.lhs.false45
  %29 = ptrtoint ptr %radio_rds_loop to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %radio_rds_loop, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool48.not = icmp eq i8 %30, 0
  br i1 %tobool48.not, label %lor.lhs.false47.lor.lhs.false53_crit_edge, label %land.lhs.true50

lor.lhs.false47.lor.lhs.false53_crit_edge:        ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false53

land.lhs.true50:                                  ; preds = %lor.lhs.false47
  %31 = ptrtoint ptr %radio_tx_subchans to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %radio_tx_subchans, align 4
  %and51 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %land.lhs.true50.if.then59_crit_edge, label %land.lhs.true50.lor.lhs.false53_crit_edge

land.lhs.true50.lor.lhs.false53_crit_edge:        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false53

land.lhs.true50.if.then59_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

lor.lhs.false53:                                  ; preds = %land.lhs.true50.lor.lhs.false53_crit_edge, %lor.lhs.false47.lor.lhs.false53_crit_edge
  %33 = ptrtoint ptr %radio_rx_sig_qual to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %radio_rx_sig_qual, align 8
  %35 = tail call i32 @llvm.abs.i32(i32 %34, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %35)
  %cmp57 = icmp sgt i32 %35, 200
  br i1 %cmp57, label %lor.lhs.false53.if.then59_crit_edge, label %if.end78

lor.lhs.false53.if.then59_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

if.then59:                                        ; preds = %lor.lhs.false53.if.then59_crit_edge, %land.lhs.true50.if.then59_crit_edge, %lor.lhs.false45.if.then59_crit_edge, %if.end41.if.then59_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  %36 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %f_flags, align 4
  %and61 = and i32 %37, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end64, label %if.then59.cleanup141_crit_edge

if.then59.cleanup141_crit_edge:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup141

if.end64:                                         ; preds = %if.then59
  %call65 = tail call i32 @msleep_interruptible(i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end64.if.end72_crit_edge, label %land.lhs.true67

if.end64.if.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

land.lhs.true67:                                  ; preds = %if.end64
  %38 = tail call i32 @llvm.read_register.i32(metadata !9) #6
  %and.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stack.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %46 = and i32 %45, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.lhs.true67.cleanup141_crit_edge, !prof !22

land.lhs.true67.cleanup141_crit_edge:             ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup141

signal_pending.exit:                              ; preds = %land.lhs.true67
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %43, align 4
  %and1.i.i.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool70.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool70.not, label %signal_pending.exit.if.end72_crit_edge, label %signal_pending.exit.cleanup141_crit_edge

signal_pending.exit.cleanup141_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup141

signal_pending.exit.if.end72_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.end72:                                         ; preds = %signal_pending.exit.if.end72_crit_edge, %if.end64.if.end72_crit_edge
  %call74 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #6
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end72.retry_crit_edge, label %if.end72.cleanup141_crit_edge

if.end72.cleanup141_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup141

if.end72.retry_crit_edge:                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry

if.end78:                                         ; preds = %lor.lhs.false53
  %conv.le = trunc i64 %cond213.i to i32
  %div89 = sdiv i32 %35, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %size)
  %cmp90235.not = icmp eq i32 %4, %size
  br i1 %cmp90235.not, label %if.end78.for.end_crit_edge, label %land.rhs.lr.ph

if.end78.for.end_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end78
  %49 = getelementptr inbounds %struct.v4l2_rds_data, ptr %rds, i32 0, i32 1
  %50 = getelementptr inbounds %struct.v4l2_rds_data, ptr %rds, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %51 = icmp ult i32 %35, 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0236 = phi i32 [ 0, %land.rhs.lr.ph ], [ %i.1224, %for.inc.land.rhs_crit_edge ]
  %52 = ptrtoint ptr %radio_rx_rds_last_block to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %radio_rx_rds_last_block, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv.le)
  %cmp93 = icmp ult i32 %53, %conv.le
  br i1 %cmp93, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %rem96 = urem i32 %53, 228
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rds) #6
  %arrayidx = getelementptr %struct.v4l2_rds_data, ptr %rds_gen, i32 %rem96
  %54 = call ptr @memcpy(ptr %rds, ptr %arrayidx, i32 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem96)
  %cmp97 = icmp eq i32 %rem96, 0
  br i1 %cmp97, label %land.lhs.true99, label %for.body.if.end104_crit_edge

for.body.if.end104_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

land.lhs.true99:                                  ; preds = %for.body
  %55 = ptrtoint ptr %radio_rds_loop to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %radio_rds_loop, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool101.not = icmp eq i8 %56, 0
  br i1 %tobool101.not, label %land.lhs.true99.if.end104_crit_edge, label %if.then103

land.lhs.true99.if.end104_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then103:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #8
  call void @vivid_radio_rds_init(ptr noundef %1) #6
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %land.lhs.true99.if.end104_crit_edge, %for.body.if.end104_crit_edge
  br i1 %51, label %if.end104.if.end132_crit_edge, label %land.lhs.true106

if.end104.if.end132_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end132

land.lhs.true106:                                 ; preds = %if.end104
  %call.i202 = call i32 @prandom_u32() #6
  %conv.i = zext i32 %call.i202 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 100
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div89, i32 %conv2.i)
  %cmp108 = icmp ugt i32 %div89, %conv2.i
  br i1 %cmp108, label %if.then110, label %land.lhs.true106.if.end132_crit_edge

land.lhs.true106.if.end132_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end132

if.then110:                                       ; preds = %land.lhs.true106
  %call.i203 = call i32 @prandom_u32() #6
  %57 = lshr i32 %call.i203, 30
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %57, label %if.then110.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb114
    i32 2, label %sw.bb119
    i32 3, label %sw.bb128
  ]

sw.bb:                                            ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %50, align 1
  %61 = or i8 %60, 64
  store i8 %61, ptr %50, align 1
  br label %if.end132

sw.bb114:                                         ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %50, align 1
  %64 = or i8 %63, 7
  store i8 %64, ptr %50, align 1
  br label %if.end132

sw.bb119:                                         ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %50, align 1
  %67 = or i8 %66, -128
  store i8 %67, ptr %50, align 1
  %call.i208 = call i32 @prandom_u32() #6
  %68 = lshr i32 %call.i208, 24
  %conv125 = trunc i32 %68 to i8
  %69 = ptrtoint ptr %rds to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv125, ptr %rds, align 1
  %call.i213 = call i32 @prandom_u32() #6
  %70 = lshr i32 %call.i213, 24
  %conv127 = trunc i32 %70 to i8
  %71 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv127, ptr %49, align 1
  br label %if.end132

sw.bb128:                                         ; preds = %if.then110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0236)
  %tobool129.not = icmp eq i32 %i.0236, 0
  br i1 %tobool129.not, label %sw.bb128.if.end132_crit_edge, label %cleanup.thread

sw.bb128.if.end132_crit_edge:                     ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end132

cleanup.thread:                                   ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rds) #6
  br label %for.inc

if.then110.unreachabledefault:                    ; preds = %if.then110
  unreachable

if.end132:                                        ; preds = %sw.bb128.if.end132_crit_edge, %sw.bb119, %sw.bb114, %sw.bb, %land.lhs.true106.if.end132_crit_edge, %if.end104.if.end132_crit_edge
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.0236
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end132.cleanup.thread225_crit_edge, label %if.end.i.i

if.end132.cleanup.thread225_crit_edge:            ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread225

if.end.i.i:                                       ; preds = %if.end132
  %72 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 3, i32 -1226833920) #9, !srcloc !23
  %asmresult.i.i = extractvalue { i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %cleanup, label %if.end.i.i.cleanup.thread225_crit_edge

if.end.i.i.cleanup.thread225_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread225

cleanup.thread225:                                ; preds = %if.end.i.i.cleanup.thread225_crit_edge, %if.end132.cleanup.thread225_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rds) #6
  br label %for.end

cleanup:                                          ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rds, i32 noundef 3) #6
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef nonnull %rds, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool134.not = icmp eq i32 %call.i1.i.i, 0
  %add137 = add i32 %i.0236, 3
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rds) #6
  br i1 %tobool134.not, label %cleanup.for.inc_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %cleanup.thread
  %i.1224 = phi i32 [ %i.0236, %cleanup.thread ], [ %add137, %cleanup.for.inc_crit_edge ]
  %73 = ptrtoint ptr %radio_rx_rds_last_block to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %radio_rx_rds_last_block, align 8
  %inc = add i32 %74, 1
  store i32 %inc, ptr %radio_rx_rds_last_block, align 8
  %cmp90 = icmp ult i32 %i.1224, %mul
  br i1 %cmp90, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.for.end_crit_edge, %cleanup.thread225, %land.rhs.for.end_crit_edge, %if.end78.for.end_crit_edge
  %i.2 = phi i32 [ -14, %cleanup.thread225 ], [ 0, %if.end78.for.end_crit_edge ], [ %i.0236, %land.rhs.for.end_crit_edge ], [ %i.1224, %for.inc.for.end_crit_edge ], [ -14, %cleanup.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup141

cleanup141:                                       ; preds = %for.end, %if.end72.cleanup141_crit_edge, %signal_pending.exit.cleanup141_crit_edge, %land.lhs.true67.cleanup141_crit_edge, %if.then59.cleanup141_crit_edge, %if.then11, %if.end3.cleanup141_crit_edge, %if.end.cleanup141_crit_edge, %entry.cleanup141_crit_edge
  %retval.0 = phi i32 [ -16, %if.then11 ], [ %i.2, %for.end ], [ -22, %entry.cleanup141_crit_edge ], [ 0, %if.end.cleanup141_crit_edge ], [ -512, %if.end3.cleanup141_crit_edge ], [ -4, %land.lhs.true67.cleanup141_crit_edge ], [ -512, %if.end72.cleanup141_crit_edge ], [ -4, %signal_pending.exit.cleanup141_crit_edge ], [ -11, %if.then59.cleanup141_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_radio_rds_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_radio_rx_poll(ptr noundef %file, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_ctrl_poll(ptr noundef %file, ptr noundef %wait) #6
  %or = or i32 %call, 65
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_radio_rx_enum_freq_bands(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %band) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp ugt i32 %3, 2
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 %3
  %4 = call ptr @memcpy(ptr %band, ptr %arrayidx, i32 64)
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_radio_rx_s_hw_freq_seek(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %wrap_around = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %a, i32 0, i32 3
  %4 = ptrtoint ptr %wrap_around to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wrap_around, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  %radio_rx_hw_seek_mode7 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 338
  %6 = ptrtoint ptr %radio_rx_hw_seek_mode7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %radio_rx_hw_seek_mode7, align 4
  br i1 %tobool1.not, label %land.lhs.true6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true6:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp8 = icmp eq i32 %7, 1
  br i1 %cmp8, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.if.end10_crit_edge

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true6.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  %rangelow = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %a, i32 0, i32 5
  %8 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rangelow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  %rangehigh = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %a, i32 0, i32 6
  %10 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rangehigh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  %xor192 = xor i1 %tobool11.not, %tobool12.not
  br i1 %xor192, label %if.end10.cleanup_crit_edge, label %if.end17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %12 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_flags, align 4
  %and = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end20, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  br i1 %tobool11.not, label %for.cond52.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 0, i32 4) to i32))
  %14 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %14)
  %cmp27.not = icmp ult i32 %9, %14
  br i1 %cmp27.not, label %for.body.preheader.for.inc_crit_edge, label %land.lhs.true28

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.cond52.preheader:                             ; preds = %if.end20
  %radio_rx_freq = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 335
  %15 = ptrtoint ptr %radio_rx_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %radio_rx_freq, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 0, i32 4) to i32))
  %17 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %17)
  %cmp57.not = icmp ult i32 %16, %17
  br i1 %cmp57.not, label %for.cond52.preheader.for.inc65_crit_edge, label %land.lhs.true58

for.cond52.preheader.for.inc65_crit_edge:         ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc65

land.lhs.true28:                                  ; preds = %for.body.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 0, i32 5) to i32))
  %18 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %18)
  %cmp32.not = icmp ugt i32 %11, %18
  br i1 %cmp32.not, label %land.lhs.true28.for.inc_crit_edge, label %land.lhs.true28.if.end37_crit_edge

land.lhs.true28.if.end37_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true28.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 1, i32 4) to i32))
  %19 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 1, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %19)
  %cmp27.not.1 = icmp ult i32 %9, %19
  br i1 %cmp27.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true28.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true28.1:                                ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 1, i32 5) to i32))
  %20 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 1, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %20)
  %cmp32.not.1 = icmp ugt i32 %11, %20
  br i1 %cmp32.not.1, label %land.lhs.true28.1.for.inc.1_crit_edge, label %land.lhs.true28.1.if.end37_crit_edge

land.lhs.true28.1.if.end37_crit_edge:             ; preds = %land.lhs.true28.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true28.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true28.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true28.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 2, i32 4) to i32))
  %21 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 2, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %21)
  %cmp27.not.2 = icmp ult i32 %9, %21
  br i1 %cmp27.not.2, label %for.inc.1.cleanup_crit_edge, label %land.lhs.true28.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true28.2:                                ; preds = %for.inc.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 2, i32 5) to i32))
  %22 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 2, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %22)
  %cmp32.not.2 = icmp ugt i32 %11, %22
  br i1 %cmp32.not.2, label %land.lhs.true28.2.cleanup_crit_edge, label %land.lhs.true28.2.if.end37_crit_edge

land.lhs.true28.2.if.end37_crit_edge:             ; preds = %land.lhs.true28.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true28.2.cleanup_crit_edge:              ; preds = %land.lhs.true28.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true28.2.if.end37_crit_edge, %land.lhs.true28.1.if.end37_crit_edge, %land.lhs.true28.if.end37_crit_edge
  %band.0204.lcssa = phi i32 [ 0, %land.lhs.true28.if.end37_crit_edge ], [ 1, %land.lhs.true28.1.if.end37_crit_edge ], [ 2, %land.lhs.true28.2.if.end37_crit_edge ]
  %radio_rx_hw_seek_prog_lim = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 339
  %23 = ptrtoint ptr %radio_rx_hw_seek_prog_lim to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %radio_rx_hw_seek_prog_lim, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool38.not = icmp eq i8 %24, 0
  br i1 %tobool38.not, label %land.lhs.true39, label %if.end37.if.end75_crit_edge

if.end37.if.end75_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

land.lhs.true39:                                  ; preds = %if.end37
  %rangelow42 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 %band.0204.lcssa, i32 4
  %25 = ptrtoint ptr %rangelow42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rangelow42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %26)
  %cmp43.not = icmp eq i32 %9, %26
  br i1 %cmp43.not, label %lor.lhs.false, label %land.lhs.true39.cleanup_crit_edge

land.lhs.true39.cleanup_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true39
  %rangehigh46 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 %band.0204.lcssa, i32 5
  %27 = ptrtoint ptr %rangehigh46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rangehigh46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %28)
  %cmp47.not = icmp eq i32 %11, %28
  br i1 %cmp47.not, label %lor.lhs.false.if.end75_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.if.end75_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

land.lhs.true58:                                  ; preds = %for.cond52.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 0, i32 5) to i32))
  %29 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %29)
  %cmp62.not = icmp ugt i32 %16, %29
  br i1 %cmp62.not, label %land.lhs.true58.for.inc65_crit_edge, label %land.lhs.true58.if.end70_crit_edge

land.lhs.true58.if.end70_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

land.lhs.true58.for.inc65_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc65

for.inc65:                                        ; preds = %land.lhs.true58.for.inc65_crit_edge, %for.cond52.preheader.for.inc65_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 1, i32 4) to i32))
  %30 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 1, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %30)
  %cmp57.not.1 = icmp ult i32 %16, %30
  br i1 %cmp57.not.1, label %for.inc65.for.inc65.1_crit_edge, label %land.lhs.true58.1

for.inc65.for.inc65.1_crit_edge:                  ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc65.1

land.lhs.true58.1:                                ; preds = %for.inc65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 1, i32 5) to i32))
  %31 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 1, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %31)
  %cmp62.not.1 = icmp ugt i32 %16, %31
  br i1 %cmp62.not.1, label %land.lhs.true58.1.for.inc65.1_crit_edge, label %land.lhs.true58.1.if.end70_crit_edge

land.lhs.true58.1.if.end70_crit_edge:             ; preds = %land.lhs.true58.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

land.lhs.true58.1.for.inc65.1_crit_edge:          ; preds = %land.lhs.true58.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc65.1

for.inc65.1:                                      ; preds = %land.lhs.true58.1.for.inc65.1_crit_edge, %for.inc65.for.inc65.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 2, i32 4) to i32))
  %32 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 2, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %32)
  %cmp57.not.2 = icmp ult i32 %16, %32
  br i1 %cmp57.not.2, label %for.inc65.1.cleanup_crit_edge, label %land.lhs.true58.2

for.inc65.1.cleanup_crit_edge:                    ; preds = %for.inc65.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true58.2:                                ; preds = %for.inc65.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 2, i32 5) to i32))
  %33 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 2, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %33)
  %cmp62.not.2 = icmp ugt i32 %16, %33
  br i1 %cmp62.not.2, label %land.lhs.true58.2.cleanup_crit_edge, label %land.lhs.true58.2.if.end70_crit_edge

land.lhs.true58.2.if.end70_crit_edge:             ; preds = %land.lhs.true58.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

land.lhs.true58.2.cleanup_crit_edge:              ; preds = %land.lhs.true58.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end70:                                         ; preds = %land.lhs.true58.2.if.end70_crit_edge, %land.lhs.true58.1.if.end70_crit_edge, %land.lhs.true58.if.end70_crit_edge
  %band.1206.lcssa = phi i32 [ 0, %land.lhs.true58.if.end70_crit_edge ], [ 1, %land.lhs.true58.1.if.end70_crit_edge ], [ 2, %land.lhs.true58.2.if.end70_crit_edge ]
  %rangelow72 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 %band.1206.lcssa, i32 4
  %rangehigh74 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 %band.1206.lcssa, i32 5
  br label %if.end75

if.end75:                                         ; preds = %if.end70, %lor.lhs.false.if.end75_crit_edge, %if.end37.if.end75_crit_edge
  %low.0.in = phi ptr [ %rangelow72, %if.end70 ], [ %rangelow, %lor.lhs.false.if.end75_crit_edge ], [ %rangelow, %if.end37.if.end75_crit_edge ]
  %high.0.in = phi ptr [ %rangehigh74, %if.end70 ], [ %rangehigh, %lor.lhs.false.if.end75_crit_edge ], [ %rangehigh, %if.end37.if.end75_crit_edge ]
  %band.2 = phi i32 [ %band.1206.lcssa, %if.end70 ], [ %band.0204.lcssa, %lor.lhs.false.if.end75_crit_edge ], [ %band.0204.lcssa, %if.end37.if.end75_crit_edge ]
  %34 = ptrtoint ptr %high.0.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %high.0 = load i32, ptr %high.0.in, align 4
  %35 = ptrtoint ptr %low.0.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %low.0 = load i32, ptr %low.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %band.2)
  %cmp76 = icmp eq i32 %band.2, 1
  %cond.neg208 = select i1 %cmp76, i32 -1600, i32 -16000
  %cond = select i1 %cmp76, i32 1600, i32 16000
  %radio_rx_freq77 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 335
  %36 = ptrtoint ptr %radio_rx_freq77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %radio_rx_freq77, align 8
  %38 = tail call i32 @llvm.umax.i32(i32 %37, i32 %low.0)
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 %high.0)
  %seek_upward = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %a, i32 0, i32 2
  %40 = ptrtoint ptr %seek_upward to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %seek_upward, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool86.not = icmp eq i32 %41, 0
  br i1 %tobool86.not, label %if.else102, label %if.then87

if.then87:                                        ; preds = %if.end75
  %42 = urem i32 %39, %cond
  %mul = add i32 %39, %cond
  %add = sub i32 %mul, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %high.0)
  %cmp88 = icmp ugt i32 %add, %high.0
  br i1 %cmp88, label %if.then89, label %if.then87.if.end123_crit_edge

if.then87.if.end123_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then89:                                        ; preds = %if.then87
  br i1 %tobool1.not, label %if.then89.cleanup_crit_edge, label %if.end93

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end93:                                         ; preds = %if.then89
  %43 = urem i32 %low.0, %cond
  %mul95 = add i32 %cond, %low.0
  %add96 = sub i32 %mul95, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %add96, i32 %37)
  %cmp98.not = icmp ult i32 %add96, %37
  br i1 %cmp98.not, label %if.end93.if.end123_crit_edge, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end93.if.end123_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.else102:                                       ; preds = %if.end75
  %add103 = add nsw i32 %cond, -1
  %sub = add i32 %add103, %39
  %44 = urem i32 %sub, %cond
  %.neg197 = add i32 %sub, %cond.neg208
  %sub106 = sub i32 %.neg197, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %sub106, i32 %low.0)
  %cmp107 = icmp ult i32 %sub106, %low.0
  br i1 %cmp107, label %if.then108, label %if.else102.if.end123_crit_edge

if.else102.if.end123_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then108:                                       ; preds = %if.else102
  br i1 %tobool1.not, label %if.then108.cleanup_crit_edge, label %if.end112

if.then108.cleanup_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end112:                                        ; preds = %if.then108
  %sub114 = add i32 %add103, %high.0
  %45 = urem i32 %sub114, %cond
  %.neg199 = add i32 %sub114, %cond.neg208
  %sub117 = sub i32 %.neg199, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %sub117, i32 %37)
  %cmp119.not = icmp ugt i32 %sub117, %37
  br i1 %cmp119.not, label %if.end112.if.end123_crit_edge, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end112.if.end123_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.end123:                                        ; preds = %if.end112.if.end123_crit_edge, %if.else102.if.end123_crit_edge, %if.end93.if.end123_crit_edge, %if.then87.if.end123_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.end112.cleanup_crit_edge, %if.then108.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %if.then89.cleanup_crit_edge, %land.lhs.true58.2.cleanup_crit_edge, %for.inc65.1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true39.cleanup_crit_edge, %land.lhs.true28.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end123 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true6.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -11, %if.end17.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true39.cleanup_crit_edge ], [ -61, %if.then89.cleanup_crit_edge ], [ -61, %if.end93.cleanup_crit_edge ], [ -61, %if.then108.cleanup_crit_edge ], [ -61, %if.end112.cleanup_crit_edge ], [ -22, %land.lhs.true28.2.cleanup_crit_edge ], [ -22, %for.inc.1.cleanup_crit_edge ], [ -22, %land.lhs.true58.2.cleanup_crit_edge ], [ -22, %for.inc65.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_radio_rx_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %vt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %vt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #6
  %radio_rx_rds_controls = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 340
  %4 = ptrtoint ptr %radio_rx_rds_controls to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %radio_rx_rds_controls, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %or = select i1 %tobool.not, i32 1425, i32 1681
  %radio_rx_hw_seek_prog_lim = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 339
  %6 = ptrtoint ptr %radio_rx_hw_seek_prog_lim to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %radio_rx_hw_seek_prog_lim, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  %cond3 = select i1 %tobool2.not, i32 0, i32 2048
  %or4 = or i32 %cond3, %or
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 3
  %8 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or4, ptr %capability, align 4
  %radio_rx_hw_seek_mode = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 338
  %9 = ptrtoint ptr %radio_rx_hw_seek_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %radio_rx_hw_seek_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.mult = shl i32 %10, 2
  %switch.offset = add i32 %switch.idx.mult, 4
  %or12 = or i32 %or4, %switch.offset
  %12 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or12, ptr %capability, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 4
  %13 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8320, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 5
  %14 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1728000, ptr %rangehigh, align 4
  %radio_rx_sig_qual = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 337
  %15 = ptrtoint ptr %radio_rx_sig_qual to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %radio_rx_sig_qual, align 8
  %17 = tail call i32 @llvm.abs.i32(i32 %16, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %17)
  %cmp15 = icmp sgt i32 %17, 800
  br i1 %cmp15, label %if.then43, label %if.else

if.then43:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %signal127 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 8
  %18 = ptrtoint ptr %signal127 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %signal127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %16)
  %cmp29128 = icmp sgt i32 %16, 800
  %spec.select129 = select i1 %cmp29128, i32 0, i32 %16
  %afc130 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 9
  %19 = ptrtoint ptr %afc130 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select129, ptr %afc130, align 4
  br label %if.end58

if.else:                                          ; preds = %sw.epilog
  %mul = mul i32 %17, 65535
  %div = udiv i32 %mul, 800
  %sub26 = sub nsw i32 65535, %div
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 8
  %20 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub26, ptr %signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %16)
  %cmp29 = icmp sgt i32 %16, 800
  %spec.select = select i1 %cmp29, i32 0, i32 %16
  %afc = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 9
  %21 = ptrtoint ptr %afc to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %afc, align 4
  %radio_rx_freq = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 335
  %22 = ptrtoint ptr %radio_rx_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %radio_rx_freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024000, i32 %23)
  %cmp44 = icmp ult i32 %23, 1024000
  call void @__sanitizer_cov_trace_const_cmp4(i32 26214399, i32 %mul)
  %cmp46 = icmp ugt i32 %mul, 26214399
  %or.cond = select i1 %cmp44, i1 true, i1 %cmp46
  br i1 %or.cond, label %if.else.if.end58_crit_edge, label %if.else49

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.else49:                                        ; preds = %if.else
  %radio_rds_loop = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 350
  %24 = ptrtoint ptr %radio_rds_loop to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %radio_rds_loop, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool50.not = icmp eq i8 %25, 0
  br i1 %tobool50.not, label %if.else49.if.else54_crit_edge, label %land.lhs.true

if.else49.if.else54_crit_edge:                    ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else54

land.lhs.true:                                    ; preds = %if.else49
  %radio_tx_subchans = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 346
  %26 = ptrtoint ptr %radio_tx_subchans to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %radio_tx_subchans, align 4
  %and = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %land.lhs.true.if.end58_crit_edge, label %land.lhs.true.if.else54_crit_edge

land.lhs.true.if.else54_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else54

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.else54:                                        ; preds = %land.lhs.true.if.else54_crit_edge, %if.else49.if.else54_crit_edge
  br label %if.end58

if.end58:                                         ; preds = %if.else54, %land.lhs.true.if.end58_crit_edge, %if.else.if.end58_crit_edge, %if.then43
  %.sink134 = phi i32 [ 2, %if.else54 ], [ 0, %if.then43 ], [ 1, %if.else.if.end58_crit_edge ], [ 1, %land.lhs.true.if.end58_crit_edge ]
  %cond28131 = phi i32 [ %sub26, %if.else54 ], [ 0, %if.then43 ], [ %sub26, %if.else.if.end58_crit_edge ], [ %sub26, %land.lhs.true.if.end58_crit_edge ]
  %rxsubchans48 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %28 = ptrtoint ptr %rxsubchans48 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink134, ptr %rxsubchans48, align 4
  %radio_rx_rds_enabled = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 341
  %29 = ptrtoint ptr %radio_rx_rds_enabled to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %radio_rx_rds_enabled, align 2, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool59.not = icmp eq i8 %30, 0
  br i1 %tobool59.not, label %if.end58.if.end76_crit_edge, label %land.lhs.true60

if.end58.if.end76_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true60:                                  ; preds = %if.end58
  %radio_rds_loop61 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 350
  %31 = ptrtoint ptr %radio_rds_loop61 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %radio_rds_loop61, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool62.not = icmp eq i8 %32, 0
  br i1 %tobool62.not, label %land.lhs.true60.land.lhs.true67_crit_edge, label %lor.lhs.false63

land.lhs.true60.land.lhs.true67_crit_edge:        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true67

lor.lhs.false63:                                  ; preds = %land.lhs.true60
  %radio_tx_subchans64 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 346
  %33 = ptrtoint ptr %radio_tx_subchans64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %radio_tx_subchans64, align 4
  %and65 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %lor.lhs.false63.if.end76_crit_edge, label %lor.lhs.false63.land.lhs.true67_crit_edge

lor.lhs.false63.land.lhs.true67_crit_edge:        ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true67

lor.lhs.false63.if.end76_crit_edge:               ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true67:                                  ; preds = %lor.lhs.false63.land.lhs.true67_crit_edge, %land.lhs.true60.land.lhs.true67_crit_edge
  %radio_rx_freq68 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 335
  %35 = ptrtoint ptr %radio_rx_freq68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %radio_rx_freq68, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023999, i32 %36)
  %cmp69 = icmp ugt i32 %36, 1023999
  call void @__sanitizer_cov_trace_const_cmp4(i32 49151, i32 %cond28131)
  %cmp72 = icmp sgt i32 %cond28131, 49151
  %or.cond133 = select i1 %cmp69, i1 %cmp72, i1 false
  br i1 %or.cond133, label %if.then73, label %land.lhs.true67.if.end76_crit_edge

land.lhs.true67.if.end76_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then73:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #8
  %rxsubchans74 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %37 = ptrtoint ptr %rxsubchans74 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rxsubchans74, align 4
  %or75 = or i32 %38, 16
  store i32 %or75, ptr %rxsubchans74, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %land.lhs.true67.if.end76_crit_edge, %lor.lhs.false63.if.end76_crit_edge, %if.end58.if.end76_crit_edge
  %39 = ptrtoint ptr %radio_rx_rds_controls to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %radio_rx_rds_controls, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool78.not = icmp eq i8 %40, 0
  br i1 %tobool78.not, label %if.end76.if.end80_crit_edge, label %if.then79

if.end76.if.end80_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vivid_radio_rds_init(ptr noundef %1) #6
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end76.if.end80_crit_edge
  %radio_rx_audmode = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 336
  %41 = ptrtoint ptr %radio_rx_audmode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %radio_rx_audmode, align 4
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %43 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %audmode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end80 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_radio_rx_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %vt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %0 = ptrtoint ptr %vt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %4 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp ne i32 %5, 0
  %conv = zext i1 %cmp to i32
  %radio_rx_audmode = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 336
  %6 = ptrtoint ptr %radio_rx_audmode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %radio_rx_audmode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.named.register.sp = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-radio-rx.c", i32 226, i32 20}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!9 = !{!"sp"}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
!20 = !{i64 1122119, i64 1122146}
!21 = !{i64 1122629, i64 1122656, i64 1122690, i64 1122711}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2150804713, i64 2150804738}
