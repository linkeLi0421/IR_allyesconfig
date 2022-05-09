; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-radio-tx.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-radio-tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.v4l2_modulator = type { i32, [32 x i8], i32, i32, i32, i32, i32, [3 x i32] }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AM/FM/SW Transmitter\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private constant [53 x i8] c"../drivers/media/test-drivers/vivid/vivid-radio-tx.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 106, i32 19 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 156, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.3], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_radio_tx_write(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %offset) local_unnamed_addr #0 align 64 {
entry:
  %rds = alloca %struct.v4l2_rds_data, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #5
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %rds_gen = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 334
  %radio_tx_rds_controls = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 347
  %2 = ptrtoint ptr %radio_tx_rds_controls to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %radio_tx_rds_controls, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp = icmp ult i32 %size, 3
  %or.cond116 = or i1 %cmp, %tobool.not
  br i1 %or.cond116, label %entry.cleanup81_crit_edge, label %if.end3

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup81

if.end3:                                          ; preds = %entry
  %4 = urem i32 %size, 3
  %mul = sub nuw i32 %size, %4
  %mutex = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 39
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup81_crit_edge

if.end3.cleanup81_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup81

if.end7:                                          ; preds = %if.end3
  %radio_tx_rds_owner = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 349
  %5 = ptrtoint ptr %radio_tx_rds_owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %radio_tx_rds_owner, align 8
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %land.lhs.true

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %cmp10.not = icmp eq ptr %8, %6
  br i1 %cmp10.not, label %land.lhs.true.if.end13_crit_edge, label %if.then11

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup81

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %private_data14 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %9 = ptrtoint ptr %private_data14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data14, align 4
  %11 = ptrtoint ptr %radio_tx_rds_owner to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %radio_tx_rds_owner, align 8
  %radio_rds_init_time = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 351
  %radio_tx_rds_last_block = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 348
  %radio_tx_subchans = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 346
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  br label %retry

retry:                                            ; preds = %if.end42.retry_crit_edge, %if.end13
  %call16 = tail call i64 @ktime_get() #5
  %12 = ptrtoint ptr %radio_rds_init_time to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %radio_rds_init_time, align 8
  %sub = sub i64 %call16, %13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i = icmp slt i64 %sub, 0
  %14 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #5
  %15 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3528129202283441362, i64 %14) #8, !srcloc !20
  %16 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3528129202283441362, i64 %14, i64 %15) #8, !srcloc !21
  %div1811.i = lshr i64 %16, 22
  %sub210.i = sub nsw i64 0, %div1811.i
  %cond213.i = select i1 %cmp8.i, i64 %sub210.i, i64 %div1811.i
  %conv = trunc i64 %cond213.i to i32
  %sub18 = add i32 %conv, -228
  %17 = ptrtoint ptr %radio_tx_rds_last_block to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %radio_tx_rds_last_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18, i32 %18)
  %cmp19.not = icmp ult i32 %sub18, %18
  br i1 %cmp19.not, label %retry.if.end24_crit_edge, label %if.then21

retry.if.end24_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then21:                                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %conv, -227
  %19 = ptrtoint ptr %radio_tx_rds_last_block to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %radio_tx_rds_last_block, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %retry.if.end24_crit_edge
  %20 = ptrtoint ptr %radio_tx_rds_last_block to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %radio_tx_rds_last_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv)
  %cmp26 = icmp eq i32 %21, %conv
  br i1 %cmp26, label %if.end24.if.then29_crit_edge, label %lor.lhs.false

if.end24.if.then29_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.end24
  %22 = ptrtoint ptr %radio_tx_subchans to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %radio_tx_subchans, align 4
  %and = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %lor.lhs.false.if.then29_crit_edge, label %for.cond.preheader

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

for.cond.preheader:                               ; preds = %lor.lhs.false
  %conv.le = trunc i64 %cond213.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %size)
  %cmp49129.not = icmp eq i32 %4, %size
  br i1 %cmp49129.not, label %for.cond.preheader.for.end_crit_edge, label %land.rhs.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %24 = getelementptr inbounds %struct.v4l2_rds_data, ptr %rds, i32 0, i32 1
  %25 = getelementptr inbounds %struct.v4l2_rds_data, ptr %rds, i32 0, i32 2
  %radio_rds_loop = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 350
  br label %land.rhs

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %if.end24.if.then29_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  %26 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f_flags, align 4
  %and31 = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then29.cleanup81_crit_edge

if.then29.cleanup81_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup81

if.end34:                                         ; preds = %if.then29
  %call35 = tail call i32 @msleep_interruptible(i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end34.if.end42_crit_edge, label %land.lhs.true37

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

land.lhs.true37:                                  ; preds = %if.end34
  %28 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stack.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %36 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.lhs.true37.cleanup81_crit_edge, !prof !22

land.lhs.true37.cleanup81_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup81

signal_pending.exit:                              ; preds = %land.lhs.true37
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %33, align 4
  %and1.i.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool40.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool40.not, label %signal_pending.exit.if.end42_crit_edge, label %signal_pending.exit.cleanup81_crit_edge

signal_pending.exit.cleanup81_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup81

signal_pending.exit.if.end42_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.end42:                                         ; preds = %signal_pending.exit.if.end42_crit_edge, %if.end34.if.end42_crit_edge
  %call44 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #5
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end42.retry_crit_edge, label %if.end42.cleanup81_crit_edge

if.end42.cleanup81_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup81

if.end42.retry_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %retry

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0130 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add59, %for.inc.land.rhs_crit_edge ]
  %39 = ptrtoint ptr %radio_tx_rds_last_block to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %radio_tx_rds_last_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.le)
  %cmp52 = icmp ult i32 %40, %conv.le
  br i1 %cmp52, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %rem = urem i32 %40, 228
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rds) #5
  %41 = ptrtoint ptr %rds to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %rds, align 1, !annotation !23
  %42 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %24, align 1, !annotation !23
  %43 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %25, align 1, !annotation !23
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.0130
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #5
  %call.i.i = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %for.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

for.body.if.then11.i.i_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 3, i32 -1226833920) #8, !srcloc !24
  %asmresult.i.i = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !22

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rds, i32 noundef 3) #5
  %45 = call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !25
  %and.i.i.i.i = and i32 %47, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #5, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rds, ptr noundef %add.ptr, i32 noundef 3) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #5, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end58, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !22

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %for.body.if.then11.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rds) #5
  br label %for.end

if.end58:                                         ; preds = %if.end.i.i
  %add59 = add i32 %i.0130, 3
  %48 = ptrtoint ptr %radio_rds_loop to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %radio_rds_loop, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool60.not = icmp eq i8 %49, 0
  br i1 %tobool60.not, label %if.end58.for.inc_crit_edge, label %if.end62

if.end58.for.inc_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end62:                                         ; preds = %if.end58
  %50 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %25, align 1
  %conv63 = zext i8 %51 to i32
  %and64 = and i32 %conv63, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and64)
  %cmp65 = icmp ne i32 %and64, 7
  %and70 = and i32 %conv63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %or.cond = and i1 %cmp65, %tobool71.not
  br i1 %or.cond, label %if.end73, label %if.end62.for.inc_crit_edge

if.end62.for.inc_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end73:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %conv77 = trunc i32 %and64 to i8
  %52 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv77, ptr %25, align 1
  %arrayidx = getelementptr %struct.v4l2_rds_data, ptr %rds_gen, i32 %rem
  %53 = call ptr @memcpy(ptr %arrayidx, ptr %rds, i32 3)
  br label %for.inc

for.inc:                                          ; preds = %if.end73, %if.end62.for.inc_crit_edge, %if.end58.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rds) #5
  %54 = ptrtoint ptr %radio_tx_rds_last_block to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %radio_tx_rds_last_block, align 4
  %inc = add i32 %55, 1
  store i32 %inc, ptr %radio_tx_rds_last_block, align 4
  %cmp49 = icmp ult i32 %add59, %mul
  br i1 %cmp49, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then11.i.i, %land.rhs.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.2 = phi i32 [ -14, %if.then11.i.i ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.0130, %land.rhs.for.end_crit_edge ], [ %add59, %for.inc.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup81

cleanup81:                                        ; preds = %for.end, %if.end42.cleanup81_crit_edge, %signal_pending.exit.cleanup81_crit_edge, %land.lhs.true37.cleanup81_crit_edge, %if.then29.cleanup81_crit_edge, %if.then11, %if.end3.cleanup81_crit_edge, %entry.cleanup81_crit_edge
  %retval.0 = phi i32 [ -16, %if.then11 ], [ %i.2, %for.end ], [ -22, %entry.cleanup81_crit_edge ], [ -512, %if.end3.cleanup81_crit_edge ], [ -4, %land.lhs.true37.cleanup81_crit_edge ], [ -512, %if.end42.cleanup81_crit_edge ], [ -4, %signal_pending.exit.cleanup81_crit_edge ], [ -11, %if.then29.cleanup81_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_radio_tx_poll(ptr noundef %file, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_ctrl_poll(ptr noundef %file, ptr noundef %wait) #5
  %or = or i32 %call, 260
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_modulator(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #5
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_modulator, ptr %a, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #5
  %radio_tx_rds_controls = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 347
  %4 = ptrtoint ptr %radio_tx_rds_controls to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %radio_tx_rds_controls, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %or = select i1 %tobool.not, i32 1425, i32 1681
  %capability = getelementptr inbounds %struct.v4l2_modulator, ptr %a, i32 0, i32 2
  %6 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %capability, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_modulator, ptr %a, i32 0, i32 3
  %7 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8320, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_modulator, ptr %a, i32 0, i32 4
  %8 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1728000, ptr %rangehigh, align 4
  %radio_tx_subchans = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 346
  %9 = ptrtoint ptr %radio_tx_subchans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %radio_tx_subchans, align 4
  %txsubchans = getelementptr inbounds %struct.v4l2_modulator, ptr %a, i32 0, i32 5
  %11 = ptrtoint ptr %txsubchans to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %txsubchans, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_modulator(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %txsubchans = getelementptr inbounds %struct.v4l2_modulator, ptr %a, i32 0, i32 5
  %4 = ptrtoint ptr %txsubchans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txsubchans, align 4
  %and = and i32 %5, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %radio_tx_subchans = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 346
  %6 = ptrtoint ptr %radio_tx_subchans to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %radio_tx_subchans, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.named.register.sp = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-radio-tx.c", i32 106, i32 19}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
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
!20 = !{i64 1117662, i64 1117689}
!21 = !{i64 1118172, i64 1118199, i64 1118233, i64 1118254}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{!"auto-init"}
!24 = !{i64 2150553749, i64 2150553774}
!25 = !{i64 3049304}
!26 = !{i64 3049501}
!27 = !{i64 2150534734}
