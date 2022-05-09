; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtvfb.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtvfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.osd_info = type { i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_var_screeninfo, i32, [256 x i32], i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.129, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.129 = type { ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.ivtv = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ivtv_options, %struct.v4l2_device, %struct.cx2341x_handler, %struct.anon.126, %struct.anon.127, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i8, i8, %struct.spinlock, %struct.mutex, [9 x i32], [9 x %struct.ivtv_stream], %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.work_struct, i32, i32, %struct.kthread_worker, ptr, %struct.kthread_work, %struct.spinlock, i32, i32, i32, i32, i32, %struct.ivtv_user_dma, %struct.timer_list, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data, [256 x %struct.ivtv_api_cache], %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, %struct.mutex, %struct.IR_i2c_init_data, i32, i32, i32, i32, [400 x %struct.v4l2_enc_idx_entry], i32, i32, i32, i8, i64, i64, [3 x i32], i32, i32, %struct.vbi_info, %struct.yuv_playback_info, i32, i32, i32, i32, i8, i32, %struct.v4l2_rect, %struct.v4l2_rect, ptr, ptr }
%struct.ivtv_options = type { [9 x i32], i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.118, %struct.anon.119, %struct.anon.120, %struct.anon.121, %struct.anon.122, %struct.anon.123, %struct.anon.124, %struct.anon.125 }
%struct.anon.118 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.119 = type { ptr, ptr }
%struct.anon.120 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.121 = type { ptr, ptr }
%struct.anon.122 = type { ptr, ptr, ptr }
%struct.anon.123 = type { ptr, ptr }
%struct.anon.124 = type { ptr, ptr }
%struct.anon.125 = type { ptr, ptr, ptr, ptr }
%struct.anon.126 = type { ptr, ptr }
%struct.anon.127 = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.ivtv_stream = type { %struct.video_device, ptr, ptr, i32, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, i16, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.ivtv_queue = type { %struct.list_head, i32, i32, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ivtv_user_dma = type { %struct.mutex, i32, [704 x ptr], [704 x ptr], [704 x %struct.ivtv_sg_element], i32, i32, [704 x %struct.scatterlist] }
%struct.ivtv_sg_element = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ivtv_mailbox_data = type { ptr, i32, i8 }
%struct.ivtv_api_cache = type { i32, [16 x i32] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.vbi_info = type { i32, i8, i8, i32, i8, i8, [2 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_format, ptr, i32, i32, [256 x %struct.vbi_cc], i32, i8, i32, i8, %struct.vbi_vps, [36 x %struct.v4l2_sliced_vbi_data], [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], %struct.ivtv_buffer, i32 }
%struct.v4l2_format = type { i32, %union.anon.93 }
%union.anon.93 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }
%struct.vbi_cc = type { [2 x i8], [2 x i8] }
%struct.vbi_vps = type { [5 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.ivtv_buffer = type { %struct.list_head, i32, i16, i16, ptr, i32, i32 }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, [8 x %struct.yuv_frame_info], %struct.yuv_frame_info, %struct.yuv_frame_info, ptr, i32, i32, i8, i8, %struct.v4l2_rect, i32, i32, i8 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.fb_vblank = type { i32, i32, i32, i32, [4 x i32] }
%struct.ivtvfb_dma_frame = type { ptr, i32, i32 }
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

@__param_str_ivtvfb_card_id = internal constant [22 x i8] c"ivtvfb.ivtvfb_card_id\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ivtvfb_card_id = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_ivtvfb_card_id = internal constant %struct.kernel_param { ptr @__param_str_ivtvfb_card_id, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @ivtvfb_card_id } }, section "__param", align 4
@__UNIQUE_ID_ivtvfb_card_idtype309 = internal constant [35 x i8] c"ivtvfb.parmtype=ivtvfb_card_id:int\00", section ".modinfo", align 1
@__param_str_debug = internal constant [13 x i8] c"ivtvfb.debug\00", align 1
@ivtvfb_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ivtvfb_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype310 = internal constant [26 x i8] c"ivtvfb.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_force_pat = internal constant [17 x i8] c"ivtvfb.force_pat\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ivtvfb_force_pat = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force_pat = internal constant %struct.kernel_param { ptr @__param_str_force_pat, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ivtvfb_force_pat } }, section "__param", align 4
@__UNIQUE_ID_force_pattype311 = internal constant [31 x i8] c"ivtvfb.parmtype=force_pat:bool\00", section ".modinfo", align 1
@__param_str_osd_laced = internal constant [17 x i8] c"ivtvfb.osd_laced\00", align 1
@osd_laced = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_osd_laced = internal constant %struct.kernel_param { ptr @__param_str_osd_laced, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @osd_laced } }, section "__param", align 4
@__UNIQUE_ID_osd_lacedtype312 = internal constant [31 x i8] c"ivtvfb.parmtype=osd_laced:bool\00", section ".modinfo", align 1
@__param_str_osd_depth = internal constant [17 x i8] c"ivtvfb.osd_depth\00", align 1
@osd_depth = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_osd_depth = internal constant %struct.kernel_param { ptr @__param_str_osd_depth, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @osd_depth } }, section "__param", align 4
@__UNIQUE_ID_osd_depthtype313 = internal constant [30 x i8] c"ivtvfb.parmtype=osd_depth:int\00", section ".modinfo", align 1
@__param_str_osd_upper = internal constant [17 x i8] c"ivtvfb.osd_upper\00", align 1
@osd_upper = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_osd_upper = internal constant %struct.kernel_param { ptr @__param_str_osd_upper, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @osd_upper } }, section "__param", align 4
@__UNIQUE_ID_osd_uppertype314 = internal constant [30 x i8] c"ivtvfb.parmtype=osd_upper:int\00", section ".modinfo", align 1
@__param_str_osd_left = internal constant [16 x i8] c"ivtvfb.osd_left\00", align 1
@osd_left = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_osd_left = internal constant %struct.kernel_param { ptr @__param_str_osd_left, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @osd_left } }, section "__param", align 4
@__UNIQUE_ID_osd_lefttype315 = internal constant [29 x i8] c"ivtvfb.parmtype=osd_left:int\00", section ".modinfo", align 1
@__param_str_osd_yres = internal constant [16 x i8] c"ivtvfb.osd_yres\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@osd_yres = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_osd_yres = internal constant %struct.kernel_param { ptr @__param_str_osd_yres, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @osd_yres } }, section "__param", align 4
@__UNIQUE_ID_osd_yrestype316 = internal constant [30 x i8] c"ivtvfb.parmtype=osd_yres:uint\00", section ".modinfo", align 1
@__param_str_osd_xres = internal constant [16 x i8] c"ivtvfb.osd_xres\00", align 1
@osd_xres = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_osd_xres = internal constant %struct.kernel_param { ptr @__param_str_osd_xres, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @osd_xres } }, section "__param", align 4
@__UNIQUE_ID_osd_xrestype317 = internal constant [30 x i8] c"ivtvfb.parmtype=osd_xres:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_ivtvfb_card_id318 = internal constant [135 x i8] c"ivtvfb.parm=ivtvfb_card_id:Only use framebuffer of the specified ivtv card (0-31)\0A\09\09\09default -1: initialize all available framebuffers\00", section ".modinfo", align 1
@__UNIQUE_ID_debug319 = internal constant [98 x i8] c"ivtvfb.parm=debug:Debug level (bitmask). Default: errors only\0A\09\09\09(debug = 3 gives full debugging)\00", section ".modinfo", align 1
@__UNIQUE_ID_force_pat320 = internal constant [79 x i8] c"ivtvfb.parm=force_pat:Force initialization on x86 PAT-enabled systems (bool).\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_osd_laced321 = internal constant [70 x i8] c"ivtvfb.parm=osd_laced:Interlaced mode\0A\09\09\090=off\0A\09\09\091=on\0A\09\09\09default off\00", section ".modinfo", align 1
@__UNIQUE_ID_osd_depth322 = internal constant [62 x i8] c"ivtvfb.parm=osd_depth:Bits per pixel - 8, 16, 32\0A\09\09\09default 8\00", section ".modinfo", align 1
@__UNIQUE_ID_osd_upper323 = internal constant [70 x i8] c"ivtvfb.parm=osd_upper:Vertical start position\0A\09\09\09default 0 (Centered)\00", section ".modinfo", align 1
@__UNIQUE_ID_osd_left324 = internal constant [71 x i8] c"ivtvfb.parm=osd_left:Horizontal start position\0A\09\09\09default 0 (Centered)\00", section ".modinfo", align 1
@__UNIQUE_ID_osd_yres325 = internal constant [79 x i8] c"ivtvfb.parm=osd_yres:Display height\0A\09\09\09default 480 (PAL)\0A\09\09\09        400 (NTSC)\00", section ".modinfo", align 1
@__UNIQUE_ID_osd_xres326 = internal constant [50 x i8] c"ivtvfb.parm=osd_xres:Display width\0A\09\09\09default 640\00", section ".modinfo", align 1
@__UNIQUE_ID_author327 = internal constant [84 x i8] c"ivtvfb.author=Kevin Thayer, Chris Kennedy, Hans Verkuil, John Harvey, Ian Armstrong\00", section ".modinfo", align 1
@__UNIQUE_ID_file328 = internal constant [42 x i8] c"ivtvfb.file=drivers/media/pci/ivtv/ivtvfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license329 = internal constant [19 x i8] c"ivtvfb.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ivtvfb__330_1303_ivtvfb_init6 = internal global ptr @ivtvfb_init, section ".initcall6.init", align 4
@__exitcall_ivtvfb_cleanup = internal global ptr @ivtvfb_cleanup, section ".exitcall.exit", align 4
@ivtvfb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013ivtvfb: ivtvfb_card_id parameter is out of range (valid range: -1 - %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ivtvfb_init\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/pci/ivtv/ivtvfb.c\00", [32 x i8] zeroinitializer }, align 32
@ivtvfb_init._entry_ptr = internal global ptr @ivtvfb_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ivtv\00", [27 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@ivtvfb_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013ivtvfb: no cards found\0A\00", [38 x i8] zeroinitializer }, align 32
@ivtvfb_init._entry_ptr.6 = internal global ptr @ivtvfb_init._entry.4, section ".printk_index", align 4
@ivtvfb_callback_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ivtvfb%d: Framebuffer registered on %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ivtvfb_callback_init\00", [43 x i8] zeroinitializer }, align 32
@ivtvfb_callback_init._entry_ptr = internal global ptr @ivtvfb_callback_init._entry, section ".printk_index", align 4
@ivtvfb_init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ivtvfb%d: Card %d already initialised\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ivtvfb_init_card\00", [47 x i8] zeroinitializer }, align 32
@ivtvfb_init_card._entry_ptr = internal global ptr @ivtvfb_init_card._entry, section ".printk_index", align 4
@ivtvfb_init_card._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 1182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013ivtvfb%d: Failed to allocate memory for osd_info\0A\00", [44 x i8] zeroinitializer }, align 32
@ivtvfb_init_card._entry_ptr.13 = internal global ptr @ivtvfb_init_card._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ivtvfb_init_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ivtvfb%d: Failed to initialize ivtv\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtvfb_init_io\00", [17 x i8] zeroinitializer }, align 32
@ivtvfb_init_io._entry_ptr = internal global ptr @ivtvfb_init_io._entry, section ".printk_index", align 4
@ivtvfb_init_io._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ivtvfb%d: Firmware failed to respond\0A\00", [56 x i8] zeroinitializer }, align 32
@ivtvfb_init_io._entry_ptr.18 = internal global ptr @ivtvfb_init_io._entry.16, section ".printk_index", align 4
@ivtvfb_init_io._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 1114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013ivtvfb%d: abort, video memory 0x%x @ 0x%lx isn't mapped!\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtvfb_init_io._entry_ptr.21 = internal global ptr @ivtvfb_init_io._entry.19, section ".printk_index", align 4
@ivtvfb_init_io._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016ivtvfb%d: Framebuffer at 0x%lx, mapped to 0x%p, size %dk\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtvfb_init_io._entry_ptr.24 = internal global ptr @ivtvfb_init_io._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ivtvfb_get_framebuffer\00", [41 x i8] zeroinitializer }, align 32
@ivtvfb_init_vidmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ivtvfb%d: Invalid osd_left - assuming default\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ivtvfb_init_vidmode\00", [44 x i8] zeroinitializer }, align 32
@ivtvfb_init_vidmode._entry_ptr = internal global ptr @ivtvfb_init_vidmode._entry, section ".printk_index", align 4
@ivtvfb_init_vidmode._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ivtvfb%d: Invalid osd_upper - assuming default\0A\00", [46 x i8] zeroinitializer }, align 32
@ivtvfb_init_vidmode._entry_ptr.30 = internal global ptr @ivtvfb_init_vidmode._entry.28, section ".printk_index", align 4
@ivtvfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr @ivtvfb_write, ptr @ivtvfb_check_var, ptr @ivtvfb_set_par, ptr @ivtvfb_setcolreg, ptr null, ptr @ivtvfb_blank, ptr @ivtvfb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr @ivtvfb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ivtvfb_init_vidmode._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 1066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ivtvfb%d: abort, unable to alloc cmap\0A\00", [55 x i8] zeroinitializer }, align 32
@ivtvfb_init_vidmode._entry_ptr.33 = internal global ptr @ivtvfb_init_vidmode._entry.31, section ".printk_index", align 4
@ivtvfb_init_vidmode._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013ivtvfb%d: abort, unable to alloc pseudo palette\0A\00", [45 x i8] zeroinitializer }, align 32
@ivtvfb_init_vidmode._entry_ptr.36 = internal global ptr @ivtvfb_init_vidmode._entry.34, section ".printk_index", align 4
@_ivtvfb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ivtvfb%d info: ivtvfb_check_var\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_ivtvfb_check_var\00", [46 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr = internal global ptr @_ivtvfb_check_var._entry, section ".printk_index", align 4
@_ivtvfb_check_var._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016ivtvfb%d warning: Invalid colour mode: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr.41 = internal global ptr @_ivtvfb_check_var._entry.39, section ".printk_index", align 4
@_ivtvfb_check_var._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016ivtvfb%d warning: Invalid resolution: %dx%d\0A\00", [49 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr.44 = internal global ptr @_ivtvfb_check_var._entry.42, section ".printk_index", align 4
@_ivtvfb_check_var._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016ivtvfb%d warning: Invalid virtual resolution: %dx%d\0A\00", [41 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr.47 = internal global ptr @_ivtvfb_check_var._entry.45, section ".printk_index", align 4
@_ivtvfb_check_var._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.2, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016ivtvfb%d warning: Invalid resolution for 8bpp: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr.50 = internal global ptr @_ivtvfb_check_var._entry.48, section ".printk_index", align 4
@_ivtvfb_check_var._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.38, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016ivtvfb%d warning: Invalid virtual resolution for 8bpp: %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr.53 = internal global ptr @_ivtvfb_check_var._entry.51, section ".printk_index", align 4
@_ivtvfb_check_var._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.38, ptr @.str.2, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016ivtvfb%d warning: Invalid resolution for 16bpp: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr.56 = internal global ptr @_ivtvfb_check_var._entry.54, section ".printk_index", align 4
@_ivtvfb_check_var._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.38, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016ivtvfb%d warning: Invalid virtual resolution for 16bpp: %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr.59 = internal global ptr @_ivtvfb_check_var._entry.57, section ".printk_index", align 4
@_ivtvfb_check_var._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.38, ptr @.str.2, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016ivtvfb%d warning: Invalid offset: %d (%d) %d (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr.62 = internal global ptr @_ivtvfb_check_var._entry.60, section ".printk_index", align 4
@_ivtvfb_check_var._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.38, ptr @.str.2, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016ivtvfb%d warning: Invalid nonstd % d\0A\00", [56 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr.65 = internal global ptr @_ivtvfb_check_var._entry.63, section ".printk_index", align 4
@_ivtvfb_check_var._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.38, ptr @.str.2, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016ivtvfb%d warning: Invalid video mode: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr.68 = internal global ptr @_ivtvfb_check_var._entry.66, section ".printk_index", align 4
@_ivtvfb_check_var._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.38, ptr @.str.2, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016ivtvfb%d info: Display size: %dx%d (virtual %dx%d) @ %dbpp\0A\00", [34 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr.71 = internal global ptr @_ivtvfb_check_var._entry.69, section ".printk_index", align 4
@_ivtvfb_check_var._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.38, ptr @.str.2, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016ivtvfb%d info: Display position: %d, %d\0A\00", [53 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr.74 = internal global ptr @_ivtvfb_check_var._entry.72, section ".printk_index", align 4
@_ivtvfb_check_var._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.38, ptr @.str.2, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016ivtvfb%d info: Display filter: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr.77 = internal global ptr @_ivtvfb_check_var._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.38, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ivtvfb%d info: Color space: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@_ivtvfb_check_var._entry_ptr.82 = internal global ptr @_ivtvfb_check_var._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"YUV\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RGB\00", [28 x i8] zeroinitializer }, align 32
@ivtvfb_get_fix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ivtvfb%d info: ivtvfb_get_fix\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtvfb_get_fix\00", [17 x i8] zeroinitializer }, align 32
@ivtvfb_get_fix._entry_ptr = internal global ptr @ivtvfb_get_fix._entry, section ".printk_index", align 4
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx23415 TV out\00", [17 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ivtvfb_prep_dec_dma_to_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\014ivtvfb%d: ivtvfb_prep_dec_dma_to_device, Error with pin_user_pages: %d bytes, %d pages returned\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ivtvfb_prep_dec_dma_to_device\00", [34 x i8] zeroinitializer }, align 32
@ivtvfb_prep_dec_dma_to_device._entry_ptr = internal global ptr @ivtvfb_prep_dec_dma_to_device._entry, section ".printk_index", align 4
@ivtvfb_prep_dec_dma_to_device._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016ivtvfb%d info: ivtvfb_prep_dec_dma_to_device, %d bytes, %d pages\0A\00", [60 x i8] zeroinitializer }, align 32
@ivtvfb_prep_dec_dma_to_device._entry_ptr.95 = internal global ptr @ivtvfb_prep_dec_dma_to_device._entry.93, section ".printk_index", align 4
@ivtv_debug = external dso_local local_unnamed_addr global i32, align 4
@ivtvfb_prep_dec_dma_to_device._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s:  info: User stopped OSD\0A\00", [33 x i8] zeroinitializer }, align 32
@ivtvfb_prep_dec_dma_to_device._entry_ptr.98 = internal global ptr @ivtvfb_prep_dec_dma_to_device._entry.96, section ".printk_index", align 4
@ivtvfb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.99, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ivtvfb_check_var\00", [47 x i8] zeroinitializer }, align 32
@ivtvfb_check_var._entry_ptr = internal global ptr @ivtvfb_check_var._entry, section ".printk_index", align 4
@ivtvfb_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ivtvfb%d info: IVTVFB_IOC_DMA_FRAME\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ivtvfb_ioctl\00", [19 x i8] zeroinitializer }, align 32
@ivtvfb_ioctl._entry_ptr = internal global ptr @ivtvfb_ioctl._entry, section ".printk_index", align 4
@ivtvfb_ioctl._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016ivtvfb%d info: Unknown ioctl %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@ivtvfb_ioctl._entry_ptr.104 = internal global ptr @ivtvfb_ioctl._entry.102, section ".printk_index", align 4
@ivtvfb_prep_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016ivtvfb%d warning: ivtvfb_prep_frame: Nothing to do. count = 0\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ivtvfb_prep_frame\00", [46 x i8] zeroinitializer }, align 32
@ivtvfb_prep_frame._entry_ptr = internal global ptr @ivtvfb_prep_frame._entry, section ".printk_index", align 4
@ivtvfb_prep_frame._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014ivtvfb%d: ivtvfb_prep_frame: Overflowing the framebuffer %ld, only %d available\0A\00", [45 x i8] zeroinitializer }, align 32
@ivtvfb_prep_frame._entry_ptr.109 = internal global ptr @ivtvfb_prep_frame._entry.107, section ".printk_index", align 4
@ivtvfb_prep_frame._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.106, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014ivtvfb%d: ivtvfb_prep_frame: Source address not 32 bit aligned (%p)\0A\00", [57 x i8] zeroinitializer }, align 32
@ivtvfb_prep_frame._entry_ptr.112 = internal global ptr @ivtvfb_prep_frame._entry.110, section ".printk_index", align 4
@ivtvfb_prep_frame._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.106, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014ivtvfb%d: ivtvfb_prep_frame: Dest offset not 32 bit aligned (%ld)\0A\00", [59 x i8] zeroinitializer }, align 32
@ivtvfb_prep_frame._entry_ptr.115 = internal global ptr @ivtvfb_prep_frame._entry.113, section ".printk_index", align 4
@ivtvfb_prep_frame._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.106, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014ivtvfb%d: ivtvfb_prep_frame: Count not a multiple of 4 (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@ivtvfb_prep_frame._entry_ptr.118 = internal global ptr @ivtvfb_prep_frame._entry.116, section ".printk_index", align 4
@ivtvfb_prep_frame._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.106, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014ivtvfb%d: Invalid userspace pointer %p\0A\00", [54 x i8] zeroinitializer }, align 32
@ivtvfb_prep_frame._entry_ptr.121 = internal global ptr @ivtvfb_prep_frame._entry.119, section ".printk_index", align 4
@ivtvfb_prep_frame._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.106, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016ivtvfb%d warning: access_ok() failed for offset 0x%08lx source %p count %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ivtvfb_prep_frame._entry_ptr.124 = internal global ptr @ivtvfb_prep_frame._entry.122, section ".printk_index", align 4
@ivtvfb_set_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ivtvfb%d info: ivtvfb_set_par\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtvfb_set_par\00", [17 x i8] zeroinitializer }, align 32
@ivtvfb_set_par._entry_ptr = internal global ptr @ivtvfb_set_par._entry, section ".printk_index", align 4
@ivtvfb_set_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ivtvfb%d info: ivtvfb_set_var\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtvfb_set_var\00", [17 x i8] zeroinitializer }, align 32
@ivtvfb_set_var._entry_ptr = internal global ptr @ivtvfb_set_var._entry, section ".printk_index", align 4
@ivtvfb_set_var._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016ivtvfb%d warning: ivtvfb_set_var - Invalid bpp\0A\00", [46 x i8] zeroinitializer }, align 32
@ivtvfb_set_var._entry_ptr.131 = internal global ptr @ivtvfb_set_var._entry.129, section ".printk_index", align 4
@ivtvfb_set_var._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtvfb_set_var._entry_ptr.133 = internal global ptr @ivtvfb_set_var._entry.132, section ".printk_index", align 4
@ivtvfb_set_var._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.128, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016ivtvfb%d warning: ivtvfb_set_var - Invalid video mode\0A\00", [39 x i8] zeroinitializer }, align 32
@ivtvfb_set_var._entry_ptr.136 = internal global ptr @ivtvfb_set_var._entry.134, section ".printk_index", align 4
@ivtvfb_set_var._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.128, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtvfb_set_var._entry_ptr.138 = internal global ptr @ivtvfb_set_var._entry.137, section ".printk_index", align 4
@ivtvfb_set_var._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.128, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtvfb_set_var._entry_ptr.140 = internal global ptr @ivtvfb_set_var._entry.139, section ".printk_index", align 4
@ivtvfb_set_var._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.128, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtvfb_set_var._entry_ptr.142 = internal global ptr @ivtvfb_set_var._entry.141, section ".printk_index", align 4
@ivtvfb_set_var._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.128, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtvfb_set_var._entry_ptr.144 = internal global ptr @ivtvfb_set_var._entry.143, section ".printk_index", align 4
@ivtvfb_set_display_window._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\016ivtvfb%d warning: ivtv_ioctl_fb_set_display_window - Invalid height setting (%d, %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ivtvfb_set_display_window\00", [38 x i8] zeroinitializer }, align 32
@ivtvfb_set_display_window._entry_ptr = internal global ptr @ivtvfb_set_display_window._entry, section ".printk_index", align 4
@ivtvfb_set_display_window._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\016ivtvfb%d warning: ivtv_ioctl_fb_set_display_window - Invalid width setting (%d, %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@ivtvfb_set_display_window._entry_ptr.149 = internal global ptr @ivtvfb_set_display_window._entry.147, section ".printk_index", align 4
@ivtvfb_blank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ivtvfb%d info: Set blanking mode : %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ivtvfb_blank\00", [19 x i8] zeroinitializer }, align 32
@ivtvfb_blank._entry_ptr = internal global ptr @ivtvfb_blank._entry, section ".printk_index", align 4
@ivtvfb_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016ivtvfb: Unloading framebuffer module\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtvfb_cleanup\00", [17 x i8] zeroinitializer }, align 32
@ivtvfb_cleanup._entry_ptr = internal global ptr @ivtvfb_cleanup._entry, section ".printk_index", align 4
@ivtvfb_callback_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.2, i32 1259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ivtvfb%d: Unregister framebuffer %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ivtvfb_callback_cleanup\00", [40 x i8] zeroinitializer }, align 32
@ivtvfb_callback_cleanup._entry_ptr = internal global ptr @ivtvfb_callback_cleanup._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.157 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.161 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.162 = internal global [5 x i64] [i64 3, i64 32, i64 1074021920, i64 1074550464, i64 2149598738]
@__sancov_gen_cov_switch_values.163 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"ivtvfb_card_id\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 44, i32 12 }
@___asan_gen_.168 = private unnamed_addr constant [13 x i8] c"ivtvfb_debug\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 45, i32 12 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"ivtvfb_force_pat\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 46, i32 13 }
@___asan_gen_.174 = private unnamed_addr constant [10 x i8] c"osd_laced\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 47, i32 13 }
@___asan_gen_.177 = private unnamed_addr constant [10 x i8] c"osd_depth\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 48, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant [10 x i8] c"osd_upper\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 49, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant [9 x i8] c"osd_left\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 50, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant [9 x i8] c"osd_yres\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 51, i32 21 }
@___asan_gen_.189 = private unnamed_addr constant [9 x i8] c"osd_xres\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 52, i32 21 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1276, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1281, i32 20 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1285, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1238, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1175, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1182, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1093, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1100, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1113, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1118, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 198, i32 27 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 990, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1015, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [11 x i8] c"ivtvfb_ops\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 928, i32 28 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1066, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1075, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 642, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 704, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 710, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 720, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 729, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 733, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 740, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 744, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 751, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 758, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 765, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 799, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 804, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 807, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 809, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 618, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 620, i32 19 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 230, i32 6 }
@___asan_gen_.418 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 214, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 156, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 284, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 291, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 314, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 816, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 484, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 492, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 329, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 335, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 342, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 346, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 349, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 353, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 355, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 848, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 507, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 535, i32 5 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 539, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 561, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 599, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 604, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 607, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 609, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 247, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 253, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 907, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1296, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.595 = private constant [35 x i8] c"../drivers/media/pci/ivtv/ivtvfb.c\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1259, i32 3 }
@llvm.compiler.used = appending global [232 x ptr] [ptr @__UNIQUE_ID_author327, ptr @__UNIQUE_ID_debug319, ptr @__UNIQUE_ID_debugtype310, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_force_pat320, ptr @__UNIQUE_ID_force_pattype311, ptr @__UNIQUE_ID_ivtvfb_card_id318, ptr @__UNIQUE_ID_ivtvfb_card_idtype309, ptr @__UNIQUE_ID_license329, ptr @__UNIQUE_ID_osd_depth322, ptr @__UNIQUE_ID_osd_depthtype313, ptr @__UNIQUE_ID_osd_laced321, ptr @__UNIQUE_ID_osd_lacedtype312, ptr @__UNIQUE_ID_osd_left324, ptr @__UNIQUE_ID_osd_lefttype315, ptr @__UNIQUE_ID_osd_upper323, ptr @__UNIQUE_ID_osd_uppertype314, ptr @__UNIQUE_ID_osd_xres326, ptr @__UNIQUE_ID_osd_xrestype317, ptr @__UNIQUE_ID_osd_yres325, ptr @__UNIQUE_ID_osd_yrestype316, ptr @__exitcall_ivtvfb_cleanup, ptr @__initcall__kmod_ivtvfb__330_1303_ivtvfb_init6, ptr @__param_debug, ptr @__param_force_pat, ptr @__param_ivtvfb_card_id, ptr @__param_osd_depth, ptr @__param_osd_laced, ptr @__param_osd_left, ptr @__param_osd_upper, ptr @__param_osd_xres, ptr @__param_osd_yres, ptr @_ivtvfb_check_var._entry, ptr @_ivtvfb_check_var._entry.39, ptr @_ivtvfb_check_var._entry.42, ptr @_ivtvfb_check_var._entry.45, ptr @_ivtvfb_check_var._entry.48, ptr @_ivtvfb_check_var._entry.51, ptr @_ivtvfb_check_var._entry.54, ptr @_ivtvfb_check_var._entry.57, ptr @_ivtvfb_check_var._entry.60, ptr @_ivtvfb_check_var._entry.63, ptr @_ivtvfb_check_var._entry.66, ptr @_ivtvfb_check_var._entry.69, ptr @_ivtvfb_check_var._entry.72, ptr @_ivtvfb_check_var._entry.75, ptr @_ivtvfb_check_var._entry.80, ptr @_ivtvfb_check_var._entry_ptr, ptr @_ivtvfb_check_var._entry_ptr.41, ptr @_ivtvfb_check_var._entry_ptr.44, ptr @_ivtvfb_check_var._entry_ptr.47, ptr @_ivtvfb_check_var._entry_ptr.50, ptr @_ivtvfb_check_var._entry_ptr.53, ptr @_ivtvfb_check_var._entry_ptr.56, ptr @_ivtvfb_check_var._entry_ptr.59, ptr @_ivtvfb_check_var._entry_ptr.62, ptr @_ivtvfb_check_var._entry_ptr.65, ptr @_ivtvfb_check_var._entry_ptr.68, ptr @_ivtvfb_check_var._entry_ptr.71, ptr @_ivtvfb_check_var._entry_ptr.74, ptr @_ivtvfb_check_var._entry_ptr.77, ptr @_ivtvfb_check_var._entry_ptr.82, ptr @ivtvfb_blank._entry, ptr @ivtvfb_blank._entry_ptr, ptr @ivtvfb_callback_cleanup._entry, ptr @ivtvfb_callback_cleanup._entry_ptr, ptr @ivtvfb_callback_init._entry, ptr @ivtvfb_callback_init._entry_ptr, ptr @ivtvfb_check_var._entry, ptr @ivtvfb_check_var._entry_ptr, ptr @ivtvfb_cleanup._entry, ptr @ivtvfb_cleanup._entry_ptr, ptr @ivtvfb_get_fix._entry, ptr @ivtvfb_get_fix._entry_ptr, ptr @ivtvfb_init._entry, ptr @ivtvfb_init._entry.4, ptr @ivtvfb_init._entry_ptr, ptr @ivtvfb_init._entry_ptr.6, ptr @ivtvfb_init_card._entry, ptr @ivtvfb_init_card._entry.11, ptr @ivtvfb_init_card._entry_ptr, ptr @ivtvfb_init_card._entry_ptr.13, ptr @ivtvfb_init_io._entry, ptr @ivtvfb_init_io._entry.16, ptr @ivtvfb_init_io._entry.19, ptr @ivtvfb_init_io._entry.22, ptr @ivtvfb_init_io._entry_ptr, ptr @ivtvfb_init_io._entry_ptr.18, ptr @ivtvfb_init_io._entry_ptr.21, ptr @ivtvfb_init_io._entry_ptr.24, ptr @ivtvfb_init_vidmode._entry, ptr @ivtvfb_init_vidmode._entry.28, ptr @ivtvfb_init_vidmode._entry.31, ptr @ivtvfb_init_vidmode._entry.34, ptr @ivtvfb_init_vidmode._entry_ptr, ptr @ivtvfb_init_vidmode._entry_ptr.30, ptr @ivtvfb_init_vidmode._entry_ptr.33, ptr @ivtvfb_init_vidmode._entry_ptr.36, ptr @ivtvfb_ioctl._entry, ptr @ivtvfb_ioctl._entry.102, ptr @ivtvfb_ioctl._entry_ptr, ptr @ivtvfb_ioctl._entry_ptr.104, ptr @ivtvfb_prep_dec_dma_to_device._entry, ptr @ivtvfb_prep_dec_dma_to_device._entry.93, ptr @ivtvfb_prep_dec_dma_to_device._entry.96, ptr @ivtvfb_prep_dec_dma_to_device._entry_ptr, ptr @ivtvfb_prep_dec_dma_to_device._entry_ptr.95, ptr @ivtvfb_prep_dec_dma_to_device._entry_ptr.98, ptr @ivtvfb_prep_frame._entry, ptr @ivtvfb_prep_frame._entry.107, ptr @ivtvfb_prep_frame._entry.110, ptr @ivtvfb_prep_frame._entry.113, ptr @ivtvfb_prep_frame._entry.116, ptr @ivtvfb_prep_frame._entry.119, ptr @ivtvfb_prep_frame._entry.122, ptr @ivtvfb_prep_frame._entry_ptr, ptr @ivtvfb_prep_frame._entry_ptr.109, ptr @ivtvfb_prep_frame._entry_ptr.112, ptr @ivtvfb_prep_frame._entry_ptr.115, ptr @ivtvfb_prep_frame._entry_ptr.118, ptr @ivtvfb_prep_frame._entry_ptr.121, ptr @ivtvfb_prep_frame._entry_ptr.124, ptr @ivtvfb_set_display_window._entry, ptr @ivtvfb_set_display_window._entry.147, ptr @ivtvfb_set_display_window._entry_ptr, ptr @ivtvfb_set_display_window._entry_ptr.149, ptr @ivtvfb_set_par._entry, ptr @ivtvfb_set_par._entry_ptr, ptr @ivtvfb_set_var._entry, ptr @ivtvfb_set_var._entry.129, ptr @ivtvfb_set_var._entry.132, ptr @ivtvfb_set_var._entry.134, ptr @ivtvfb_set_var._entry.137, ptr @ivtvfb_set_var._entry.139, ptr @ivtvfb_set_var._entry.141, ptr @ivtvfb_set_var._entry.143, ptr @ivtvfb_set_var._entry_ptr, ptr @ivtvfb_set_var._entry_ptr.131, ptr @ivtvfb_set_var._entry_ptr.133, ptr @ivtvfb_set_var._entry_ptr.136, ptr @ivtvfb_set_var._entry_ptr.138, ptr @ivtvfb_set_var._entry_ptr.140, ptr @ivtvfb_set_var._entry_ptr.142, ptr @ivtvfb_set_var._entry_ptr.144, ptr @ivtvfb_card_id, ptr @ivtvfb_debug, ptr @ivtvfb_force_pat, ptr @osd_laced, ptr @osd_depth, ptr @osd_upper, ptr @osd_left, ptr @osd_yres, ptr @osd_xres, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @ivtvfb_ops, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.135, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155], section "llvm.metadata"
@0 = internal global [144 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_card_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_force_pat to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osd_laced to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osd_depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osd_upper to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osd_left to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osd_yres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osd_xres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_callback_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_init_card._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_init_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_init_io._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_init_io._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_init_io._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_init_vidmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_init_vidmode._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_init_vidmode._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_init_vidmode._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ivtvfb_check_var._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_get_fix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_prep_dec_dma_to_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_prep_dec_dma_to_device._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_prep_dec_dma_to_device._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_ioctl._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_prep_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_prep_frame._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_prep_frame._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_prep_frame._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_prep_frame._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_prep_frame._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_prep_frame._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_set_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_set_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_set_var._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_set_var._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_set_var._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_set_var._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_set_var._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_set_var._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_set_var._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_set_display_window._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_set_display_window._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_blank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtvfb_callback_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtvfb_init() #0 section ".init.text" align 64 {
entry:
  %registered = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %registered) #8
  %0 = ptrtoint ptr %registered to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %registered, align 4
  %1 = load i32, ptr @ivtvfb_card_id, align 4
  %2 = add i32 %1, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33, i32 %2)
  %3 = icmp ult i32 %2, -33
  br i1 %3, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 31) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @driver_find(ptr noundef nonnull @.str.3, ptr noundef nonnull @pci_bus_type) #8
  %call3 = call i32 @driver_for_each_device(ptr noundef %call2, ptr noundef null, ptr noundef nonnull %registered, ptr noundef nonnull @ivtvfb_callback_init) #8
  %4 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -19, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %registered) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ivtvfb_cleanup() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #11
  %call1 = tail call ptr @driver_find(ptr noundef nonnull @.str.3, ptr noundef nonnull @pci_bus_type) #8
  %call2 = tail call i32 @driver_for_each_device(ptr noundef %call1, ptr noundef null, ptr noundef null, ptr noundef nonnull @ivtvfb_callback_cleanup) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @driver_find(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtvfb_callback_init(ptr nocapture noundef readonly %dev, ptr nocapture noundef %p) #0 section ".init.text" align 64 {
entry:
  %data.i.i.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %v4l2_cap = getelementptr i8, ptr %1, i32 -104
  %2 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v4l2_cap, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -124
  %osd_info.i = getelementptr i8, ptr %1, i32 85076
  %4 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %osd_info.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %instance.i = getelementptr i8, ptr %1, i32 856
  %6 = ptrtoint ptr %instance.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %instance.i, align 4
  %conv.i = zext i16 %7 to i32
  %8 = load i32, ptr @ivtvfb_card_id, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv.i, i32 noundef %8) #11
  br label %if.end6

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 11712, i32 noundef 2592) #12
  %10 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i, ptr %osd_info.i, align 8
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %do.end8.i, label %if.end13.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %instance10.i = getelementptr i8, ptr %1, i32 856
  %11 = ptrtoint ptr %instance10.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %instance10.i, align 4
  %conv11.i = zext i16 %12 to i32
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv11.i) #11
  br label %if.end6

if.end13.i:                                       ; preds = %if.end.i
  %serialize_lock.i.i = getelementptr i8, ptr %1, i32 948
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock.i.i, i32 noundef 0) #8
  %call.i.i = tail call i32 @ivtv_init_on_first_open(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  tail call void @mutex_unlock(ptr noundef %serialize_lock.i.i) #8
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %instance.i.i = getelementptr i8, ptr %1, i32 856
  %13 = ptrtoint ptr %instance.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %instance.i.i, align 4
  %conv.i.i = zext i16 %14 to i32
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv.i.i) #11
  br label %if.then16.i

if.end.i.i:                                       ; preds = %if.end13.i
  %video_rbase.i.i = getelementptr inbounds %struct.osd_info, ptr %call7.i.i.i, i32 0, i32 1
  %video_buffer_size.i.i = getelementptr inbounds %struct.osd_info, ptr %call7.i.i.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i.i.i) #8
  %15 = call ptr @memset(ptr %data.i.i.i, i32 255, i32 64)
  %call.i.i.i = tail call i32 @ivtv_firmware_check(ptr noundef %add.ptr, ptr noundef nonnull @.str.25) #8
  %call1.i.i.i = call i32 (ptr, ptr, i32, i32, ...) @ivtv_vapi_result(ptr noundef %add.ptr, ptr noundef nonnull %data.i.i.i, i32 noundef 65, i32 noundef 0) #8
  %16 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data.i.i.i, align 4
  %18 = ptrtoint ptr %video_rbase.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %video_rbase.i.i, align 4
  %arrayidx2.i.i.i = getelementptr inbounds [16 x i32], ptr %data.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.i.i.i, align 4
  %21 = ptrtoint ptr %video_buffer_size.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %video_buffer_size.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp.i.i, label %do.end9.i.i, label %if.end14.i.i

do.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %instance11.i.i = getelementptr i8, ptr %1, i32 856
  %22 = ptrtoint ptr %instance11.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %instance11.i.i, align 4
  %conv12.i.i = zext i16 %23 to i32
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv12.i.i) #11
  br label %if.then16.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  %24 = ptrtoint ptr %video_buffer_size.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1704960, ptr %video_buffer_size.i.i, align 4
  %base_addr.i.i = getelementptr i8, ptr %1, i32 -72
  %25 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base_addr.i.i, align 4
  %add.i.i = add i32 %17, 16777216
  %add17.i.i = add i32 %add.i.i, %26
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add17.i.i, ptr %call7.i.i.i, align 8
  %dec_mem.i.i = getelementptr i8, ptr %1, i32 -64
  %28 = ptrtoint ptr %dec_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dec_mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %17
  %video_vbase.i.i = getelementptr inbounds %struct.osd_info, ptr %call7.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %video_vbase.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i.i, ptr %video_vbase.i.i, align 8
  %tobool20.not.i.i = icmp eq ptr %add.ptr.i.i, null
  %instance26.i.i = getelementptr i8, ptr %1, i32 856
  %31 = ptrtoint ptr %instance26.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %instance26.i.i, align 4
  %conv27.i.i = zext i16 %32 to i32
  br i1 %tobool20.not.i.i, label %do.end24.i.i, label %do.end34.i.i

do.end24.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call30.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv27.i.i, i32 noundef 1704960, i32 noundef %add17.i.i) #11
  br label %if.then16.i

do.end34.i.i:                                     ; preds = %if.end14.i.i
  %call41.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv27.i.i, i32 noundef %add17.i.i, ptr noundef nonnull %add.ptr.i.i, i32 noundef 1665) #11
  %33 = ptrtoint ptr %video_buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %video_buffer_size.i.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %do.end34.i.i
  %size_shift.0.i.i = phi i32 [ 31, %do.end34.i.i ], [ %dec.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %size_shift.0.i.i
  %and.i.i = and i32 %shl.i.i, %34
  %tobool43.not.i.i = icmp eq i32 %and.i.i, 0
  %dec.i.i = add i32 %size_shift.0.i.i, -1
  br i1 %tobool43.not.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %if.end17.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

if.then16.i:                                      ; preds = %do.end24.i.i, %do.end9.i.i, %if.then.i.i
  %35 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %osd_info.i, align 8
  %len.i.i = getelementptr inbounds %struct.osd_info, ptr %36, i32 0, i32 14, i32 12, i32 1
  %37 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i73.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i73.i, label %if.then16.i.ivtvfb_release_buffers.exit.i_crit_edge, label %if.then.i74.i

if.then16.i.ivtvfb_release_buffers.exit.i_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtvfb_release_buffers.exit.i

if.then.i74.i:                                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmap.i.i = getelementptr inbounds %struct.osd_info, ptr %36, i32 0, i32 14, i32 12
  call void @fb_dealloc_cmap(ptr noundef %cmap.i.i) #8
  br label %ivtvfb_release_buffers.exit.i

ivtvfb_release_buffers.exit.i:                    ; preds = %if.then.i74.i, %if.then16.i.ivtvfb_release_buffers.exit.i_crit_edge
  %pseudo_palette.i.i = getelementptr inbounds %struct.osd_info, ptr %36, i32 0, i32 14, i32 27
  %39 = ptrtoint ptr %pseudo_palette.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pseudo_palette.i.i, align 4
  call void @kfree(ptr noundef %40) #8
  call void @kfree(ptr noundef %36) #8
  %41 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %osd_info.i, align 8
  br label %if.end6

if.end17.i:                                       ; preds = %while.cond.i.i
  %inc.i.i = add i32 %size_shift.0.i.i, 1
  %42 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call7.i.i.i, align 8
  %notmask.i.i = shl nsw i32 -1, %inc.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and46.i.i = and i32 %43, %notmask.i.i
  %fb_start_aligned_physaddr.i.i = getelementptr inbounds %struct.osd_info, ptr %call7.i.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %fb_start_aligned_physaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and46.i.i, ptr %fb_start_aligned_physaddr.i.i, align 8
  %fb_end_aligned_physaddr.i.i = getelementptr inbounds %struct.osd_info, ptr %call7.i.i.i, i32 0, i32 5
  %add49.i.i = add i32 %34, %sub.i.i
  %add53.i.i = add i32 %add49.i.i, %43
  %and58.i.i = and i32 %add53.i.i, %notmask.i.i
  %45 = ptrtoint ptr %fb_end_aligned_physaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and58.i.i, ptr %fb_end_aligned_physaddr.i.i, align 4
  %wc_cookie.i.i = getelementptr inbounds %struct.osd_info, ptr %call7.i.i.i, i32 0, i32 6
  %46 = ptrtoint ptr %wc_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %wc_cookie.i.i, align 8
  %47 = ptrtoint ptr %video_vbase.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %video_vbase.i.i, align 8
  call void @mmioset(ptr noundef %48, i32 noundef 0, i32 noundef %34) #8
  %49 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %osd_info.i, align 8
  %51 = load i32, ptr @osd_depth, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %51, label %if.then.i77.i [
    i32 8, label %if.end17.i.if.end.i78.i_crit_edge
    i32 16, label %if.end17.i.if.end.i78.i_crit_edge12
    i32 32, label %if.end17.i.if.end.i78.i_crit_edge13
  ]

if.end17.i.if.end.i78.i_crit_edge13:              ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i78.i

if.end17.i.if.end.i78.i_crit_edge12:              ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i78.i

if.end17.i.if.end.i78.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i78.i

if.then.i77.i:                                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 8, ptr @osd_depth, align 4
  br label %if.end.i78.i

if.end.i78.i:                                     ; preds = %if.then.i77.i, %if.end17.i.if.end.i78.i_crit_edge, %if.end17.i.if.end.i78.i_crit_edge12, %if.end17.i.if.end.i78.i_crit_edge13
  %53 = phi i32 [ %51, %if.end17.i.if.end.i78.i_crit_edge ], [ %51, %if.end17.i.if.end.i78.i_crit_edge12 ], [ %51, %if.end17.i.if.end.i78.i_crit_edge13 ], [ 8, %if.then.i77.i ]
  %bits_per_pixel.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 12
  %54 = ptrtoint ptr %bits_per_pixel.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %bits_per_pixel.i.i, align 4
  %div205206208.i.i = lshr i32 %53, 3
  %bytes_per_pixel.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 13
  %55 = ptrtoint ptr %bytes_per_pixel.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div205206208.i.i, ptr %bytes_per_pixel.i.i, align 4
  %56 = load i32, ptr @osd_xres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %56)
  %cmp5.i.i = icmp ugt i32 %56, 720
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end.i78.i.if.end7.i.i_crit_edge

if.end.i78.i.if.end7.i.i_crit_edge:               ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i

if.then6.i.i:                                     ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 720, ptr @osd_xres, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then6.i.i, %if.end.i78.i.if.end7.i.i_crit_edge
  %57 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %53, label %if.end7.i.i.if.end14.i81.i_crit_edge [
    i32 8, label %if.end7.i.i.if.end14.sink.split.i.i_crit_edge
    i32 16, label %if.then11.i.i
  ]

if.end7.i.i.if.end14.sink.split.i.i_crit_edge:    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.sink.split.i.i

if.end7.i.i.if.end14.i81.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i81.i

if.then11.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.sink.split.i.i

if.end14.sink.split.i.i:                          ; preds = %if.then11.i.i, %if.end7.i.i.if.end14.sink.split.i.i_crit_edge
  %.sink211.i.i = phi i32 [ -2, %if.then11.i.i ], [ -4, %if.end7.i.i.if.end14.sink.split.i.i_crit_edge ]
  %58 = load i32, ptr @osd_xres, align 4
  %and12.i.i = and i32 %58, %.sink211.i.i
  store i32 %and12.i.i, ptr @osd_xres, align 4
  br label %if.end14.i81.i

if.end14.i81.i:                                   ; preds = %if.end14.sink.split.i.i, %if.end7.i.i.if.end14.i81.i_crit_edge
  %59 = load i32, ptr @osd_xres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i79.i = icmp eq i32 %59, 0
  %spec.select.i.i = select i1 %tobool.not.i79.i, i32 640, i32 %59
  %60 = load i32, ptr @osd_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool15.not.i.i = icmp ne i32 %60, 0
  %add.i80.i = add i32 %spec.select.i.i, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 721, i32 %add.i80.i)
  %cmp18.i.i = icmp ugt i32 %add.i80.i, 721
  %or.cond.i.i = select i1 %tobool15.not.i.i, i1 %cmp18.i.i, i1 false
  br i1 %or.cond.i.i, label %do.end.i.i, label %if.end14.i81.i.if.end20.i.i_crit_edge

if.end14.i81.i.if.end20.i.i_crit_edge:            ; preds = %if.end14.i81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end14.i81.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %instance26.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %instance26.i.i, align 4
  %conv.i83.i = zext i16 %62 to i32
  %call.i84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv.i83.i) #11
  store i32 0, ptr @osd_left, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %do.end.i.i, %if.end14.i81.i.if.end20.i.i_crit_edge
  %63 = load i32, ptr @osd_left, align 4
  %dec.i85.i = add i32 %63, -1
  store i32 %dec.i85.i, ptr @osd_left, align 4
  %sub.i86.i = sub i32 720, %spec.select.i.i
  %div26202.i.i = lshr i32 %sub.i86.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i85.i)
  %cmp21209.i.i = icmp slt i32 %dec.i85.i, 0
  %cond28.i.i = select i1 %cmp21209.i.i, i32 %div26202.i.i, i32 %dec.i85.i
  %64 = ptrtoint ptr %bytes_per_pixel.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bytes_per_pixel.i.i, align 4
  %mul.i.i = mul i32 %65, %spec.select.i.i
  %display_byte_stride.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 11
  %66 = ptrtoint ptr %display_byte_stride.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul.i.i, ptr %display_byte_stride.i.i, align 4
  %is_out_50hz.i.i = getelementptr i8, ptr %1, i32 866
  %67 = ptrtoint ptr %is_out_50hz.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_out_50hz.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool32.not.i.i = icmp eq i8 %68, 0
  %cond33.i.i = select i1 %tobool32.not.i.i, i32 480, i32 576
  %69 = load i32, ptr @osd_yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %cond33.i.i)
  %cmp34.i.i = icmp ugt i32 %69, %cond33.i.i
  br i1 %cmp34.i.i, label %if.end37.thread.i.i, label %if.end37.i.i

if.end37.thread.i.i:                              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %cond33.i.i, ptr @osd_yres, align 4
  br label %cond.end45.i.i

if.end37.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool38.not.i.i = icmp eq i32 %69, 0
  %cond44.i.i = select i1 %tobool32.not.i.i, i32 400, i32 480
  %spec.select207.i.i = select i1 %tobool38.not.i.i, i32 %cond44.i.i, i32 %69
  br label %cond.end45.i.i

cond.end45.i.i:                                   ; preds = %if.end37.i.i, %if.end37.thread.i.i
  %cond46.i.i = phi i32 [ %cond33.i.i, %if.end37.thread.i.i ], [ %spec.select207.i.i, %if.end37.i.i ]
  %70 = load i32, ptr @osd_upper, align 4
  %add48.i.i = add i32 %70, %cond46.i.i
  %add49.i87.i = or i32 %cond33.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add48.i.i, i32 %add49.i87.i)
  %cmp50.i.i = icmp ugt i32 %add48.i.i, %add49.i87.i
  br i1 %cmp50.i.i, label %do.end55.i.i, label %cond.end45.i.i.if.end60.i.i_crit_edge

cond.end45.i.i.if.end60.i.i_crit_edge:            ; preds = %cond.end45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i.i

do.end55.i.i:                                     ; preds = %cond.end45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %instance26.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %instance26.i.i, align 4
  %conv58.i.i = zext i16 %72 to i32
  %call59.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv58.i.i) #11
  store i32 0, ptr @osd_upper, align 4
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %do.end55.i.i, %cond.end45.i.i.if.end60.i.i_crit_edge
  %73 = load i32, ptr @osd_upper, align 4
  %dec61.i.i = add i32 %73, -1
  store i32 %dec61.i.i, ptr @osd_upper, align 4
  %sub67.i.i = sub i32 %cond33.i.i, %cond46.i.i
  %div68203.i.i = lshr i32 %sub67.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec61.i.i)
  %cmp62210.i.i = icmp slt i32 %dec61.i.i, 0
  %cond70.i.i = select i1 %cmp62210.i.i, i32 %div68203.i.i, i32 %dec61.i.i
  %display_width.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 9
  %74 = ptrtoint ptr %display_width.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %spec.select.i.i, ptr %display_width.i.i, align 4
  %display_height.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 10
  %75 = ptrtoint ptr %display_height.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %cond46.i.i, ptr %display_height.i.i, align 4
  %ivtvfb_defined.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 15
  %76 = ptrtoint ptr %ivtvfb_defined.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %spec.select.i.i, ptr %ivtvfb_defined.i.i, align 4
  %yres.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 15, i32 1
  %77 = ptrtoint ptr %yres.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %cond46.i.i, ptr %yres.i.i, align 4
  %xres_virtual.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 15, i32 2
  %78 = ptrtoint ptr %xres_virtual.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %spec.select.i.i, ptr %xres_virtual.i.i, align 4
  %yres_virtual.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 15, i32 3
  %79 = ptrtoint ptr %yres_virtual.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %cond46.i.i, ptr %yres_virtual.i.i, align 4
  %80 = ptrtoint ptr %bits_per_pixel.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bits_per_pixel.i.i, align 4
  %bits_per_pixel82.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 15, i32 6
  %82 = ptrtoint ptr %bits_per_pixel82.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %bits_per_pixel82.i.i, align 4
  %83 = load i8, ptr @osd_laced, align 1, !range !346
  %84 = zext i8 %83 to i32
  %vmode.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 15, i32 25
  %85 = ptrtoint ptr %vmode.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %vmode.i.i, align 4
  %add88.i.i = add nuw i32 %cond28.i.i, 1
  %left_margin.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 15, i32 18
  %86 = ptrtoint ptr %left_margin.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add88.i.i, ptr %left_margin.i.i, align 4
  %add91.i.i = add nuw i32 %cond70.i.i, 1
  %upper_margin.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 15, i32 20
  %87 = ptrtoint ptr %upper_margin.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add91.i.i, ptr %upper_margin.i.i, align 4
  %accel_flags.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 15, i32 16
  %88 = ptrtoint ptr %accel_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %accel_flags.i.i, align 4
  %nonstd.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 15, i32 12
  %89 = ptrtoint ptr %nonstd.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %nonstd.i.i, align 4
  %call96.i.i = call fastcc i32 @_ivtvfb_check_var(ptr noundef %ivtvfb_defined.i.i, ptr noundef %add.ptr) #8
  %ivtvfb_fix.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 16
  %90 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %osd_info.i, align 8
  %92 = load i32, ptr @ivtvfb_debug, align 4
  %and.i.i.i = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end60.i.i.ivtvfb_get_fix.exit.i.i_crit_edge, label %do.end.i.i.i

if.end60.i.i.ivtvfb_get_fix.exit.i.i_crit_edge:   ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtvfb_get_fix.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %instance26.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %instance26.i.i, align 4
  %conv.i.i.i = zext i16 %94 to i32
  %call.i.i88.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %conv.i.i.i) #11
  br label %ivtvfb_get_fix.exit.i.i

ivtvfb_get_fix.exit.i.i:                          ; preds = %do.end.i.i.i, %if.end60.i.i.ivtvfb_get_fix.exit.i.i_crit_edge
  %95 = call ptr @memset(ptr %ivtvfb_fix.i.i, i32 0, i32 68)
  %call4.i.i.i = call i32 @strscpy(ptr noundef %ivtvfb_fix.i.i, ptr noundef nonnull @.str.87, i32 noundef 16) #8
  %96 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %91, align 4
  %smem_start.i.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 16, i32 1
  %98 = ptrtoint ptr %smem_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %smem_start.i.i.i, align 4
  %video_buffer_size.i.i.i = getelementptr inbounds %struct.osd_info, ptr %91, i32 0, i32 3
  %99 = ptrtoint ptr %video_buffer_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %video_buffer_size.i.i.i, align 4
  %smem_len.i.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 16, i32 2
  %101 = ptrtoint ptr %smem_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %smem_len.i.i.i, align 4
  %type.i.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 16, i32 3
  %102 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %type.i.i.i, align 4
  %bits_per_pixel.i.i.i = getelementptr inbounds %struct.osd_info, ptr %91, i32 0, i32 12
  %103 = ptrtoint ptr %bits_per_pixel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bits_per_pixel.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %104)
  %cmp.i.i.i = icmp eq i32 %104, 8
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 3, i32 2
  %visual.i.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 16, i32 5
  %105 = ptrtoint ptr %visual.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %cond.i.i.i, ptr %visual.i.i.i, align 4
  %xpanstep.i.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 16, i32 6
  %106 = ptrtoint ptr %xpanstep.i.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 1, ptr %xpanstep.i.i.i, align 4
  %ypanstep.i.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 16, i32 7
  %107 = ptrtoint ptr %ypanstep.i.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 1, ptr %ypanstep.i.i.i, align 2
  %ywrapstep.i.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 16, i32 8
  %108 = ptrtoint ptr %ywrapstep.i.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %ywrapstep.i.i.i, align 4
  %display_byte_stride.i.i.i = getelementptr inbounds %struct.osd_info, ptr %91, i32 0, i32 11
  %109 = ptrtoint ptr %display_byte_stride.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %display_byte_stride.i.i.i, align 4
  %line_length.i.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 16, i32 9
  %111 = ptrtoint ptr %line_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %line_length.i.i.i, align 4
  %accel.i.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 16, i32 12
  %112 = ptrtoint ptr %accel.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %accel.i.i.i, align 4
  %node.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 14, i32 1
  %113 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %node.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 14, i32 2
  %114 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %flags.i.i, align 4
  %par.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 14, i32 30
  %115 = ptrtoint ptr %par.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %add.ptr, ptr %par.i.i, align 4
  %var.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 14, i32 6
  %116 = call ptr @memcpy(ptr %var.i.i, ptr %ivtvfb_defined.i.i, i32 160)
  %fix.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 14, i32 7
  %117 = call ptr @memcpy(ptr %fix.i.i, ptr %ivtvfb_fix.i.i, i32 68)
  %video_vbase.i89.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 2
  %118 = ptrtoint ptr %video_vbase.i89.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %video_vbase.i89.i, align 4
  %120 = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 14, i32 25
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %119, ptr %120, align 4
  %fbops.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 14, i32 20
  %122 = ptrtoint ptr %fbops.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @ivtvfb_ops, ptr %fbops.i.i, align 4
  %hfmin.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 14, i32 8, i32 11
  %123 = ptrtoint ptr %hfmin.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 8000, ptr %hfmin.i.i, align 4
  %hfmax.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 14, i32 8, i32 12
  %124 = ptrtoint ptr %hfmax.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 70000, ptr %hfmax.i.i, align 4
  %vfmin.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 14, i32 8, i32 18
  %125 = ptrtoint ptr %vfmin.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 10, ptr %vfmin.i.i, align 2
  %vfmax.i.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 14, i32 8, i32 19
  %126 = ptrtoint ptr %vfmax.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 100, ptr %vfmax.i.i, align 4
  %cmap.i90.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 14, i32 12
  %call114.i.i = call i32 @fb_alloc_cmap(ptr noundef %cmap.i90.i, i32 noundef 256, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i.i)
  %tobool115.not.i.i = icmp eq i32 %call114.i.i, 0
  br i1 %tobool115.not.i.i, label %if.end124.i.i, label %ivtvfb_get_fix.exit.i.i.if.then20.i_crit_edge

ivtvfb_get_fix.exit.i.i.if.then20.i_crit_edge:    ; preds = %ivtvfb_get_fix.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i

if.end124.i.i:                                    ; preds = %ivtvfb_get_fix.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %127 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %127, i32 noundef 11456, i32 noundef 64) #12
  %pseudo_palette.i91.i = getelementptr inbounds %struct.osd_info, ptr %50, i32 0, i32 14, i32 27
  %128 = ptrtoint ptr %pseudo_palette.i91.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call7.i.i.i.i, ptr %pseudo_palette.i91.i, align 4
  %tobool129.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool129.not.i.i, label %if.end124.i.i.if.then20.i_crit_edge, label %if.end21.i

if.end124.i.i.if.then20.i_crit_edge:              ; preds = %if.end124.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i

if.then20.i:                                      ; preds = %if.end124.i.i.if.then20.i_crit_edge, %ivtvfb_get_fix.exit.i.i.if.then20.i_crit_edge
  %.str.35.sink.i.i = phi ptr [ @.str.32, %ivtvfb_get_fix.exit.i.i.if.then20.i_crit_edge ], [ @.str.35, %if.end124.i.i.if.then20.i_crit_edge ]
  %129 = ptrtoint ptr %instance26.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %instance26.i.i, align 4
  %conv136.i.i = zext i16 %130 to i32
  %call137.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.35.sink.i.i, i32 noundef %conv136.i.i) #11
  %131 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %osd_info.i, align 8
  %len.i94.i = getelementptr inbounds %struct.osd_info, ptr %132, i32 0, i32 14, i32 12, i32 1
  %133 = ptrtoint ptr %len.i94.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len.i94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not.i95.i = icmp eq i32 %134, 0
  br i1 %tobool.not.i95.i, label %if.then20.i.ivtvfb_release_buffers.exit100.i_crit_edge, label %if.then.i97.i

if.then20.i.ivtvfb_release_buffers.exit100.i_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtvfb_release_buffers.exit100.i

if.then.i97.i:                                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmap.i96.i = getelementptr inbounds %struct.osd_info, ptr %132, i32 0, i32 14, i32 12
  call void @fb_dealloc_cmap(ptr noundef %cmap.i96.i) #8
  br label %ivtvfb_release_buffers.exit100.i

ivtvfb_release_buffers.exit100.i:                 ; preds = %if.then.i97.i, %if.then20.i.ivtvfb_release_buffers.exit100.i_crit_edge
  %pseudo_palette.i98.i = getelementptr inbounds %struct.osd_info, ptr %132, i32 0, i32 14, i32 27
  %135 = ptrtoint ptr %pseudo_palette.i98.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pseudo_palette.i98.i, align 4
  call void @kfree(ptr noundef %136) #8
  call void @kfree(ptr noundef %132) #8
  %137 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %osd_info.i, align 8
  br label %if.end6

if.end21.i:                                       ; preds = %if.end124.i.i
  %138 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %osd_info.i, align 8
  %ivtvfb_info.i = getelementptr inbounds %struct.osd_info, ptr %139, i32 0, i32 14
  %call23.i = call i32 @register_framebuffer(ptr noundef %ivtvfb_info.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  %140 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %osd_info.i, align 8
  br i1 %cmp24.i, label %if.then26.i, label %if.end27.i

if.then26.i:                                      ; preds = %if.end21.i
  %len.i102.i = getelementptr inbounds %struct.osd_info, ptr %141, i32 0, i32 14, i32 12, i32 1
  %142 = ptrtoint ptr %len.i102.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %len.i102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not.i103.i = icmp eq i32 %143, 0
  br i1 %tobool.not.i103.i, label %if.then26.i.ivtvfb_release_buffers.exit108.i_crit_edge, label %if.then.i105.i

if.then26.i.ivtvfb_release_buffers.exit108.i_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtvfb_release_buffers.exit108.i

if.then.i105.i:                                   ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmap.i104.i = getelementptr inbounds %struct.osd_info, ptr %141, i32 0, i32 14, i32 12
  call void @fb_dealloc_cmap(ptr noundef %cmap.i104.i) #8
  br label %ivtvfb_release_buffers.exit108.i

ivtvfb_release_buffers.exit108.i:                 ; preds = %if.then.i105.i, %if.then26.i.ivtvfb_release_buffers.exit108.i_crit_edge
  %pseudo_palette.i106.i = getelementptr inbounds %struct.osd_info, ptr %141, i32 0, i32 14, i32 27
  %144 = ptrtoint ptr %pseudo_palette.i106.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pseudo_palette.i106.i, align 4
  call void @kfree(ptr noundef %145) #8
  call void @kfree(ptr noundef %141) #8
  %146 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %osd_info.i, align 8
  br label %if.end6

if.end27.i:                                       ; preds = %if.end21.i
  %147 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %141, align 4
  %osd_video_pbase.i = getelementptr i8, ptr %1, i32 85020
  %149 = ptrtoint ptr %osd_video_pbase.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %osd_video_pbase.i, align 8
  %ivtvfb_info30.i = getelementptr inbounds %struct.osd_info, ptr %141, i32 0, i32 14
  %call31.i = call i32 @ivtvfb_set_par(ptr noundef %ivtvfb_info30.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !347
  call void @arm_heavy_mb() #8
  %reg_mem.i = getelementptr i8, ptr %1, i32 -60
  %150 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %151, i32 10800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !348
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !349
  call void @arm_heavy_mb() #8
  %152 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr39.i = getelementptr i8, ptr %153, i32 10804
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 0) #8, !srcloc !348
  %154 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %osd_info.i, align 8
  %par.i109.i = getelementptr inbounds %struct.osd_info, ptr %155, i32 0, i32 14, i32 30
  %156 = ptrtoint ptr %par.i109.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %par.i109.i, align 4
  %158 = load i32, ptr @ivtvfb_debug, align 4
  %and.i110.i = and i32 %158, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110.i)
  %tobool.not.i111.i = icmp eq i32 %and.i110.i, 0
  br i1 %tobool.not.i111.i, label %if.end27.i.do.end3.i.i_crit_edge, label %do.end.i115.i

if.end27.i.do.end3.i.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i

do.end.i115.i:                                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %instance.i112.i = getelementptr inbounds %struct.ivtv, ptr %157, i32 0, i32 25
  %159 = ptrtoint ptr %instance.i112.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %instance.i112.i, align 4
  %conv.i113.i = zext i16 %160 to i32
  %call.i114.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %conv.i113.i, i32 noundef 0) #11
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i115.i, %if.end27.i.do.end3.i.i_crit_edge
  %call4.i.i = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %157, i32 noundef 69, i32 noundef 1, i32 noundef 1) #8
  %subdevs.i.i = getelementptr inbounds %struct.ivtv, ptr %157, i32 0, i32 19, i32 2
  %161 = ptrtoint ptr %subdevs.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %.pn165177.i.i = load ptr, ptr %subdevs.i.i, align 4
  %cmp.not179.i.i = icmp eq ptr %.pn165177.i.i, %subdevs.i.i
  br i1 %cmp.not179.i.i, label %do.end3.i.i.do.end_crit_edge, label %do.end3.i.i.for.body.i.i_crit_edge

do.end3.i.i.for.body.i.i_crit_edge:               ; preds = %do.end3.i.i
  br label %for.body.i.i

do.end3.i.i.do.end_crit_edge:                     ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end3.i.i.for.body.i.i_crit_edge
  %.pn165180.i.i = phi ptr [ %.pn165.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn165177.i.i, %do.end3.i.i.for.body.i.i_crit_edge ]
  %__sd.0181.i.i = getelementptr i8, ptr %.pn165180.i.i, i32 -80
  %grp_id.i.i = getelementptr i8, ptr %.pn165180.i.i, i32 68
  %162 = ptrtoint ptr %grp_id.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %grp_id.i.i, align 4
  %and11.i.i = and i32 %163, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %ops.i.i = getelementptr i8, ptr %.pn165180.i.i, i32 24
  %164 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ops.i.i, align 4
  %video.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %video.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %video.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %167, null
  br i1 %tobool13.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true14.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true14.i.i:                              ; preds = %land.lhs.true.i.i
  %s_stream.i.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %167, i32 0, i32 10
  %168 = ptrtoint ptr %s_stream.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %s_stream.i.i, align 4
  %tobool17.not.i.i = icmp eq ptr %169, null
  br i1 %tobool17.not.i.i, label %land.lhs.true14.i.i.for.inc.i.i_crit_edge, label %if.then18.i.i

land.lhs.true14.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then18.i.i:                                    ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i.i = call i32 %169(ptr noundef %__sd.0181.i.i, i32 noundef 1) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then18.i.i, %land.lhs.true14.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %170 = ptrtoint ptr %.pn165180.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %.pn165.i.i = load ptr, ptr %.pn165180.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn165.i.i, %subdevs.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.inc.i.i.do.end_crit_edge, %do.end3.i.i.do.end_crit_edge
  %osd_info.i116.i = getelementptr inbounds %struct.ivtv, ptr %157, i32 0, i32 99
  %171 = ptrtoint ptr %osd_info.i116.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %osd_info.i116.i, align 8
  %blank_cur.i.i = getelementptr inbounds %struct.osd_info, ptr %172, i32 0, i32 18
  %173 = ptrtoint ptr %blank_cur.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %blank_cur.i.i, align 4
  %ivtvfb_restore.i = getelementptr i8, ptr %1, i32 85080
  %174 = ptrtoint ptr %ivtvfb_restore.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @ivtvfb_restore, ptr %ivtvfb_restore.i, align 4
  call void @ivtv_udma_alloc(ptr noundef %add.ptr) #8
  %device_caps.i = getelementptr i8, ptr %1, i32 14620
  %175 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %device_caps.i, align 8
  %or.i = or i32 %176, 512
  store i32 %or.i, ptr %device_caps.i, align 8
  %device_caps46.i = getelementptr i8, ptr %1, i32 9628
  %177 = ptrtoint ptr %device_caps46.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %device_caps46.i, align 8
  %or47.i = or i32 %178, 512
  store i32 %or47.i, ptr %device_caps46.i, align 8
  %179 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %v4l2_cap, align 4
  %or48.i = or i32 %180, 512
  store i32 %or48.i, ptr %v4l2_cap, align 4
  %181 = ptrtoint ptr %instance26.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %instance26.i.i, align 4
  %conv = zext i16 %182 to i32
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv, ptr noundef %name) #11
  %183 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %p, align 4
  %inc = add i32 %184, 1
  store i32 %inc, ptr %p, align 4
  br label %if.end6

if.end6:                                          ; preds = %do.end, %ivtvfb_release_buffers.exit108.i, %ivtvfb_release_buffers.exit100.i, %ivtvfb_release_buffers.exit.i, %do.end8.i, %do.end.i, %entry.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtvfb_set_par(ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = load i32, ptr @ivtvfb_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %instance = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %instance to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %instance, align 4
  %conv = zext i16 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %conv) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  tail call fastcc void @ivtvfb_set_var(ptr noundef %1, ptr noundef %var)
  %5 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %par, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %7 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %yoffset.i, align 4
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %yres.i, align 4
  %add.i = add i32 %10, %8
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %11 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %yres_virtual.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp.i = icmp ugt i32 %add.i, %12
  br i1 %cmp.i, label %do.end3.ivtvfb_pan_display.exit_crit_edge, label %lor.lhs.false.i

do.end3.ivtvfb_pan_display.exit_crit_edge:        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtvfb_pan_display.exit

lor.lhs.false.i:                                  ; preds = %do.end3
  %xoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %13 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xoffset.i, align 4
  %15 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %var, align 4
  %add4.i = add i32 %16, %14
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xres_virtual.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %18)
  %cmp6.i = icmp ugt i32 %add4.i, %18
  br i1 %cmp6.i, label %lor.lhs.false.i.ivtvfb_pan_display.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ivtvfb_pan_display.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtvfb_pan_display.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %19 = ptrtoint ptr %line_length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %line_length.i, align 4
  %mul.i = mul i32 %20, %8
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %21 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bits_per_pixel.i, align 4
  %mul10.i = mul i32 %22, %14
  %div33.i = lshr i32 %mul10.i, 3
  %add11.i = add i32 %div33.i, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !350
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %add11.i) #8
  %reg_mem.i = getelementptr inbounds %struct.ivtv, ptr %6, i32 0, i32 17
  %24 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %25, i32 10764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #8, !srcloc !348
  %26 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %xoffset.i, align 4
  %osd_x_pan.i = getelementptr inbounds %struct.ivtv, ptr %6, i32 0, i32 90, i32 43
  %28 = ptrtoint ptr %osd_x_pan.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %osd_x_pan.i, align 4
  %29 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %yoffset.i, align 4
  %osd_y_pan.i = getelementptr inbounds %struct.ivtv, ptr %6, i32 0, i32 90, i32 44
  %31 = ptrtoint ptr %osd_y_pan.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %osd_y_pan.i, align 4
  %yuv_forced_update.i = getelementptr inbounds %struct.ivtv, ptr %6, i32 0, i32 90, i32 55
  %32 = ptrtoint ptr %yuv_forced_update.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %yuv_forced_update.i, align 4
  %osd_info.i = getelementptr inbounds %struct.ivtv, ptr %6, i32 0, i32 99
  %33 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %osd_info.i, align 8
  %pan_cur.i = getelementptr inbounds %struct.osd_info, ptr %34, i32 0, i32 20
  %35 = ptrtoint ptr %pan_cur.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add11.i, ptr %pan_cur.i, align 4
  br label %ivtvfb_pan_display.exit

ivtvfb_pan_display.exit:                          ; preds = %if.end.i, %lor.lhs.false.i.ivtvfb_pan_display.exit_crit_edge, %do.end3.ivtvfb_pan_display.exit_crit_edge
  %osd_info.i16 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 99
  %36 = ptrtoint ptr %osd_info.i16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %osd_info.i16, align 8
  %38 = load i32, ptr @ivtvfb_debug, align 4
  %and.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ivtvfb_pan_display.exit.ivtvfb_get_fix.exit_crit_edge, label %do.end.i

ivtvfb_pan_display.exit.ivtvfb_get_fix.exit_crit_edge: ; preds = %ivtvfb_pan_display.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtvfb_get_fix.exit

do.end.i:                                         ; preds = %ivtvfb_pan_display.exit
  call void @__sanitizer_cov_trace_pc() #10
  %instance.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 25
  %39 = ptrtoint ptr %instance.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %instance.i, align 4
  %conv.i = zext i16 %40 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %conv.i) #11
  br label %ivtvfb_get_fix.exit

ivtvfb_get_fix.exit:                              ; preds = %do.end.i, %ivtvfb_pan_display.exit.ivtvfb_get_fix.exit_crit_edge
  %fix = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %41 = call ptr @memset(ptr %fix, i32 0, i32 68)
  %call4.i = tail call i32 @strscpy(ptr noundef %fix, ptr noundef nonnull @.str.87, i32 noundef 16) #8
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %37, align 4
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %smem_start.i, align 4
  %video_buffer_size.i = getelementptr inbounds %struct.osd_info, ptr %37, i32 0, i32 3
  %45 = ptrtoint ptr %video_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %video_buffer_size.i, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %47 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %smem_len.i, align 4
  %type.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 3
  %48 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %type.i, align 4
  %bits_per_pixel.i17 = getelementptr inbounds %struct.osd_info, ptr %37, i32 0, i32 12
  %49 = ptrtoint ptr %bits_per_pixel.i17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bits_per_pixel.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %50)
  %cmp.i18 = icmp eq i32 %50, 8
  %cond.i = select i1 %cmp.i18, i32 3, i32 2
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %51 = ptrtoint ptr %visual.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond.i, ptr %visual.i, align 4
  %xpanstep.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %52 = ptrtoint ptr %xpanstep.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %xpanstep.i, align 4
  %ypanstep.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 7
  %53 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %ypanstep.i, align 2
  %ywrapstep.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 8
  %54 = ptrtoint ptr %ywrapstep.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %ywrapstep.i, align 4
  %display_byte_stride.i = getelementptr inbounds %struct.osd_info, ptr %37, i32 0, i32 11
  %55 = ptrtoint ptr %display_byte_stride.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %display_byte_stride.i, align 4
  %line_length.i19 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %57 = ptrtoint ptr %line_length.i19 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %line_length.i19, align 4
  %accel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 12
  %58 = ptrtoint ptr %accel.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %accel.i, align 4
  %call8 = tail call i32 @ivtv_firmware_check(ptr noundef %1, ptr noundef nonnull @.str.126) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtvfb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = load i32, ptr @ivtvfb_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %instance = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %instance to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %instance, align 4
  %conv = zext i16 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %conv, i32 noundef %blank_mode) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %5 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %blank_mode, label %do.end3.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %do.end3.sw.bb33_crit_edge
    i32 3, label %do.end3.sw.bb33_crit_edge186
    i32 2, label %do.end3.sw.bb33_crit_edge187
    i32 4, label %do.body82
  ]

do.end3.sw.bb33_crit_edge187:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

do.end3.sw.bb33_crit_edge186:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

do.end3.sw.bb33_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

do.end3.sw.epilog_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end3
  %call4 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 69, i32 noundef 1, i32 noundef 1) #8
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 2
  %6 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn165177 = load ptr, ptr %subdevs, align 4
  %cmp.not179 = icmp eq ptr %.pn165177, %subdevs
  br i1 %cmp.not179, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %.pn165180 = phi ptr [ %.pn165, %for.inc.for.body_crit_edge ], [ %.pn165177, %sw.bb.for.body_crit_edge ]
  %__sd.0181 = getelementptr i8, ptr %.pn165180, i32 -80
  %grp_id = getelementptr i8, ptr %.pn165180, i32 68
  %7 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %grp_id, align 4
  %and11 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ops = getelementptr i8, ptr %.pn165180, i32 24
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video, align 4
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true14

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true14:                                  ; preds = %land.lhs.true
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_stream, align 4
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %land.lhs.true14.for.inc_crit_edge, label %if.then18

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 %14(ptr noundef %__sd.0181, i32 noundef 1) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %land.lhs.true14.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn165180 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn165 = load ptr, ptr %.pn165180, align 4
  %cmp.not = icmp eq ptr %.pn165, %subdevs
  br i1 %cmp.not, label %for.inc.sw.epilog_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb33:                                          ; preds = %do.end3.sw.bb33_crit_edge, %do.end3.sw.bb33_crit_edge186, %do.end3.sw.bb33_crit_edge187
  %call34 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 69, i32 noundef 1, i32 noundef 0) #8
  %subdevs40 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 2
  %16 = ptrtoint ptr %subdevs40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn164172 = load ptr, ptr %subdevs40, align 4
  %cmp48.not174 = icmp eq ptr %.pn164172, %subdevs40
  br i1 %cmp48.not174, label %sw.bb33.sw.epilog_crit_edge, label %sw.bb33.for.body51_crit_edge

sw.bb33.for.body51_crit_edge:                     ; preds = %sw.bb33
  br label %for.body51

sw.bb33.sw.epilog_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body51:                                       ; preds = %for.inc70.for.body51_crit_edge, %sw.bb33.for.body51_crit_edge
  %.pn164175 = phi ptr [ %.pn164, %for.inc70.for.body51_crit_edge ], [ %.pn164172, %sw.bb33.for.body51_crit_edge ]
  %__sd36.0176 = getelementptr i8, ptr %.pn164175, i32 -80
  %grp_id52 = getelementptr i8, ptr %.pn164175, i32 68
  %17 = ptrtoint ptr %grp_id52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %grp_id52, align 4
  %and53 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %for.body51.for.inc70_crit_edge, label %land.lhs.true55

for.body51.for.inc70_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc70

land.lhs.true55:                                  ; preds = %for.body51
  %ops56 = getelementptr i8, ptr %.pn164175, i32 24
  %19 = ptrtoint ptr %ops56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops56, align 4
  %video57 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %video57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %video57, align 4
  %tobool58.not = icmp eq ptr %22, null
  br i1 %tobool58.not, label %land.lhs.true55.for.inc70_crit_edge, label %land.lhs.true59

land.lhs.true55.for.inc70_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc70

land.lhs.true59:                                  ; preds = %land.lhs.true55
  %s_stream62 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %s_stream62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_stream62, align 4
  %tobool63.not = icmp eq ptr %24, null
  br i1 %tobool63.not, label %land.lhs.true59.for.inc70_crit_edge, label %if.then64

land.lhs.true59.for.inc70_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc70

if.then64:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  %call68 = tail call i32 %24(ptr noundef %__sd36.0176, i32 noundef 1) #8
  br label %for.inc70

for.inc70:                                        ; preds = %if.then64, %land.lhs.true59.for.inc70_crit_edge, %land.lhs.true55.for.inc70_crit_edge, %for.body51.for.inc70_crit_edge
  %25 = ptrtoint ptr %.pn164175 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn164 = load ptr, ptr %.pn164175, align 4
  %cmp48.not = icmp eq ptr %.pn164, %subdevs40
  br i1 %cmp48.not, label %for.inc70.sw.epilog_crit_edge, label %for.inc70.for.body51_crit_edge

for.inc70.for.body51_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body51

for.inc70.sw.epilog_crit_edge:                    ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body82:                                        ; preds = %do.end3
  %subdevs87 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 2
  %26 = ptrtoint ptr %subdevs87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn167 = load ptr, ptr %subdevs87, align 4
  %cmp95.not169 = icmp eq ptr %.pn167, %subdevs87
  br i1 %cmp95.not169, label %do.body82.do.end125_crit_edge, label %do.body82.for.body98_crit_edge

do.body82.for.body98_crit_edge:                   ; preds = %do.body82
  br label %for.body98

do.body82.do.end125_crit_edge:                    ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end125

for.body98:                                       ; preds = %for.inc117.for.body98_crit_edge, %do.body82.for.body98_crit_edge
  %.pn170 = phi ptr [ %.pn, %for.inc117.for.body98_crit_edge ], [ %.pn167, %do.body82.for.body98_crit_edge ]
  %__sd83.0171 = getelementptr i8, ptr %.pn170, i32 -80
  %grp_id99 = getelementptr i8, ptr %.pn170, i32 68
  %27 = ptrtoint ptr %grp_id99 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %grp_id99, align 4
  %and100 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %for.body98.for.inc117_crit_edge, label %land.lhs.true102

for.body98.for.inc117_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc117

land.lhs.true102:                                 ; preds = %for.body98
  %ops103 = getelementptr i8, ptr %.pn170, i32 24
  %29 = ptrtoint ptr %ops103 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops103, align 4
  %video104 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %video104 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %video104, align 4
  %tobool105.not = icmp eq ptr %32, null
  br i1 %tobool105.not, label %land.lhs.true102.for.inc117_crit_edge, label %land.lhs.true106

land.lhs.true102.for.inc117_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc117

land.lhs.true106:                                 ; preds = %land.lhs.true102
  %s_stream109 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %s_stream109 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_stream109, align 4
  %tobool110.not = icmp eq ptr %34, null
  br i1 %tobool110.not, label %land.lhs.true106.for.inc117_crit_edge, label %if.then111

land.lhs.true106.for.inc117_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc117

if.then111:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #10
  %call115 = tail call i32 %34(ptr noundef %__sd83.0171, i32 noundef 0) #8
  br label %for.inc117

for.inc117:                                       ; preds = %if.then111, %land.lhs.true106.for.inc117_crit_edge, %land.lhs.true102.for.inc117_crit_edge, %for.body98.for.inc117_crit_edge
  %35 = ptrtoint ptr %.pn170 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load ptr, ptr %.pn170, align 4
  %cmp95.not = icmp eq ptr %.pn, %subdevs87
  br i1 %cmp95.not, label %for.inc117.do.end125_crit_edge, label %for.inc117.for.body98_crit_edge

for.inc117.for.body98_crit_edge:                  ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body98

for.inc117.do.end125_crit_edge:                   ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end125

do.end125:                                        ; preds = %for.inc117.do.end125_crit_edge, %do.body82.do.end125_crit_edge
  %call128 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 69, i32 noundef 1, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end125, %for.inc70.sw.epilog_crit_edge, %sw.bb33.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %do.end3.sw.epilog_crit_edge
  %osd_info = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 99
  %36 = ptrtoint ptr %osd_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %osd_info, align 8
  %blank_cur = getelementptr inbounds %struct.osd_info, ptr %37, i32 0, i32 18
  %38 = ptrtoint ptr %blank_cur to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %blank_mode, ptr %blank_cur, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ivtvfb_restore(ptr noundef %itv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %osd_info = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 99
  %0 = ptrtoint ptr %osd_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %osd_info, align 8
  %fbvar_cur = getelementptr inbounds %struct.osd_info, ptr %1, i32 0, i32 17
  tail call fastcc void @ivtvfb_set_var(ptr noundef %itv, ptr noundef %fbvar_cur)
  %blank_cur = getelementptr inbounds %struct.osd_info, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %blank_cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blank_cur, align 4
  %ivtvfb_info = getelementptr inbounds %struct.osd_info, ptr %1, i32 0, i32 14
  %call1 = tail call i32 @ivtvfb_blank(i32 noundef %3, ptr noundef %ivtvfb_info)
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !351
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %i.023)
  %5 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 10800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !348
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !352
  tail call void @arm_heavy_mb() #8
  %arrayidx = getelementptr %struct.osd_info, ptr %1, i32 0, i32 19, i32 %i.023
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_mem, align 8
  %add.ptr6 = getelementptr i8, ptr %11, i32 10804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %9) #8, !srcloc !348
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %do.body7, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !353
  tail call void @arm_heavy_mb() #8
  %pan_cur = getelementptr inbounds %struct.osd_info, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %pan_cur to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pan_cur, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_mem, align 8
  %add.ptr11 = getelementptr i8, ptr %16, i32 10764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %14) #8, !srcloc !348
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_udma_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_init_on_first_open(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_firmware_check(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_vapi_result(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ivtvfb_check_var(ptr noundef %var, ptr nocapture noundef %itv) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %osd_info = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 99
  %0 = ptrtoint ptr %osd_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %osd_info, align 8
  %2 = load i32, ptr @ivtvfb_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %instance = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %3 = ptrtoint ptr %instance to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %instance, align 4
  %conv = zext i16 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %is_out_50hz = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 29
  %5 = ptrtoint ptr %is_out_50hz to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_out_50hz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  %. = select i1 %tobool4.not, i32 495, i32 591
  %.577 = select i1 %tobool4.not, i32 83926, i32 84316
  %.578 = select i1 %tobool4.not, i32 480, i32 576
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %7 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bits_per_pixel, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %8, label %do.body79 [
    i32 8, label %do.end3.if.then11_crit_edge
    i32 32, label %do.end3.if.then11_crit_edge586
    i32 16, label %if.then26
  ]

do.end3.if.then11_crit_edge586:                   ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

do.end3.if.then11_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %do.end3.if.then11_crit_edge, %do.end3.if.then11_crit_edge586
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %10 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 24, ptr %transp, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %length, align 4
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %12 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16, ptr %red, align 4
  %length15 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %length15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %length15, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %14 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %green, align 4
  %length18 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %length18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %length18, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %16 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %blue, align 4
  %length21 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %length21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %length21, align 4
  br label %if.end95

if.then26:                                        ; preds = %do.end3
  %green27 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length28 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %length28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length28, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %19, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %red29 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %21 = ptrtoint ptr %red29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %red29, align 4
  %length32 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %length32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %length32, align 4
  %23 = ptrtoint ptr %green27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %green27, align 4
  %24 = ptrtoint ptr %length28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %length28, align 4
  %blue37 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %25 = ptrtoint ptr %blue37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %blue37, align 4
  %length40 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %length40 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %length40, align 4
  %transp41 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %27 = ptrtoint ptr %transp41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 12, ptr %transp41, align 4
  %length44 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %28 = ptrtoint ptr %length44 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %length44, align 4
  br label %if.end95

sw.bb45:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %red46 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %29 = ptrtoint ptr %red46 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 10, ptr %red46, align 4
  %length49 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %length49 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %length49, align 4
  %31 = ptrtoint ptr %green27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %green27, align 4
  %32 = ptrtoint ptr %length28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 5, ptr %length28, align 4
  %blue54 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %33 = ptrtoint ptr %blue54 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %blue54, align 4
  %length57 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %length57 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 5, ptr %length57, align 4
  %transp58 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %35 = ptrtoint ptr %transp58 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 15, ptr %transp58, align 4
  %length61 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %36 = ptrtoint ptr %length61 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %length61, align 4
  br label %if.end95

sw.default:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %red62 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %37 = ptrtoint ptr %red62 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 11, ptr %red62, align 4
  %length65 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %length65 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 5, ptr %length65, align 4
  %39 = ptrtoint ptr %green27 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 5, ptr %green27, align 4
  %40 = ptrtoint ptr %length28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 6, ptr %length28, align 4
  %blue70 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %41 = ptrtoint ptr %blue70 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %blue70, align 4
  %length73 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %42 = ptrtoint ptr %length73 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 5, ptr %length73, align 4
  %transp74 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %43 = ptrtoint ptr %transp74 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %transp74, align 4
  %length77 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %44 = ptrtoint ptr %length77 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %length77, align 4
  br label %if.end95

do.body79:                                        ; preds = %do.end3
  %45 = load i32, ptr @ivtvfb_debug, align 4
  %and80 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body79.cleanup_crit_edge, label %do.end85

do.body79.cleanup_crit_edge:                      ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end85:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  %instance87 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %46 = ptrtoint ptr %instance87 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %instance87, align 4
  %conv88 = zext i16 %47 to i32
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv88, i32 noundef %8) #11
  br label %cleanup

if.end95:                                         ; preds = %sw.default, %sw.bb45, %sw.bb, %if.then11
  %48 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %49)
  %cmp96 = icmp ugt i32 %49, 720
  br i1 %cmp96, label %if.end95.do.body102_crit_edge, label %lor.lhs.false98

if.end95.do.body102_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body102

lor.lhs.false98:                                  ; preds = %if.end95
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %50 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %.578)
  %cmp99 = icmp ugt i32 %51, %.578
  br i1 %cmp99, label %lor.lhs.false98.do.body102_crit_edge, label %if.end118

lor.lhs.false98.do.body102_crit_edge:             ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body102

do.body102:                                       ; preds = %lor.lhs.false98.do.body102_crit_edge, %if.end95.do.body102_crit_edge
  %52 = load i32, ptr @ivtvfb_debug, align 4
  %and103 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.body102.cleanup_crit_edge, label %do.end108

do.body102.cleanup_crit_edge:                     ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end108:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #10
  %instance110 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %53 = ptrtoint ptr %instance110 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %instance110, align 4
  %conv111 = zext i16 %54 to i32
  %yres113 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %55 = ptrtoint ptr %yres113 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %yres113, align 4
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv111, i32 noundef %49, i32 noundef %56) #11
  br label %cleanup

if.end118:                                        ; preds = %lor.lhs.false98
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %57 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %xres_virtual, align 4
  %div573 = lshr i32 %8, 3
  %div120.rhs.trunc = trunc i32 %div573 to i16
  %div120580 = udiv i16 4095, %div120.rhs.trunc
  %div120.zext = zext i16 %div120580 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %div120.zext)
  %cmp121 = icmp ugt i32 %58, %div120.zext
  br i1 %cmp121, label %if.end118.do.body141_crit_edge, label %lor.lhs.false123

if.end118.do.body141_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body141

lor.lhs.false123:                                 ; preds = %if.end118
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %59 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %yres_virtual, align 4
  %mul = mul i32 %58, %div573
  %mul127 = mul i32 %mul, %60
  %video_buffer_size = getelementptr inbounds %struct.osd_info, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %video_buffer_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %video_buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul127, i32 %62)
  %cmp128 = icmp ugt i32 %mul127, %62
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %49)
  %cmp133 = icmp ult i32 %58, %49
  %or.cond = select i1 %cmp128, i1 true, i1 %cmp133
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %51)
  %cmp138 = icmp ult i32 %60, %51
  %or.cond579 = select i1 %or.cond, i1 true, i1 %cmp138
  br i1 %or.cond579, label %lor.lhs.false123.do.body141_crit_edge, label %if.end157

lor.lhs.false123.do.body141_crit_edge:            ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body141

do.body141:                                       ; preds = %lor.lhs.false123.do.body141_crit_edge, %if.end118.do.body141_crit_edge
  %63 = load i32, ptr @ivtvfb_debug, align 4
  %and142 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %do.body141.cleanup_crit_edge, label %do.end147

do.body141.cleanup_crit_edge:                     ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end147:                                        ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  %instance149 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %64 = ptrtoint ptr %instance149 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %instance149, align 4
  %conv150 = zext i16 %65 to i32
  %yres_virtual152 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %66 = ptrtoint ptr %yres_virtual152 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %yres_virtual152, align 4
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv150, i32 noundef %58, i32 noundef %67) #11
  br label %cleanup

if.end157:                                        ; preds = %lor.lhs.false123
  %68 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %8, label %if.end157.if.end248_crit_edge [
    i32 8, label %if.then161
    i32 16, label %if.then206
  ]

if.end157.if.end248_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

if.then161:                                       ; preds = %if.end157
  %and163 = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.end181, label %do.body166

do.body166:                                       ; preds = %if.then161
  %69 = load i32, ptr @ivtvfb_debug, align 4
  %and167 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %do.body166.cleanup_crit_edge, label %do.end172

do.body166.cleanup_crit_edge:                     ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end172:                                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #10
  %instance174 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %70 = ptrtoint ptr %instance174 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %instance174, align 4
  %conv175 = zext i16 %71 to i32
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %conv175, i32 noundef %49) #11
  br label %cleanup

if.end181:                                        ; preds = %if.then161
  %and183 = and i32 %58, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %if.end181.if.end248_crit_edge, label %do.body186

if.end181.if.end248_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

do.body186:                                       ; preds = %if.end181
  %72 = load i32, ptr @ivtvfb_debug, align 4
  %and187 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %do.body186.cleanup_crit_edge, label %do.end192

do.body186.cleanup_crit_edge:                     ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end192:                                        ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #10
  %instance194 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %73 = ptrtoint ptr %instance194 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %instance194, align 4
  %conv195 = zext i16 %74 to i32
  %call197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %conv195, i32 noundef %58) #11
  br label %cleanup

if.then206:                                       ; preds = %if.end157
  %and208 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %if.end226, label %do.body211

do.body211:                                       ; preds = %if.then206
  %75 = load i32, ptr @ivtvfb_debug, align 4
  %and212 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %do.body211.cleanup_crit_edge, label %do.end217

do.body211.cleanup_crit_edge:                     ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end217:                                        ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #10
  %instance219 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %76 = ptrtoint ptr %instance219 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %instance219, align 4
  %conv220 = zext i16 %77 to i32
  %call222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %conv220, i32 noundef %49) #11
  br label %cleanup

if.end226:                                        ; preds = %if.then206
  %and228 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  br i1 %tobool229.not, label %if.end226.if.end248_crit_edge, label %do.body231

if.end226.if.end248_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

do.body231:                                       ; preds = %if.end226
  %78 = load i32, ptr @ivtvfb_debug, align 4
  %and232 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %do.body231.cleanup_crit_edge, label %do.end237

do.body231.cleanup_crit_edge:                     ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end237:                                        ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #10
  %instance239 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %79 = ptrtoint ptr %instance239 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %instance239, align 4
  %conv240 = zext i16 %80 to i32
  %call242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv240, i32 noundef %58) #11
  br label %cleanup

if.end248:                                        ; preds = %if.end226.if.end248_crit_edge, %if.end181.if.end248_crit_edge, %if.end157.if.end248_crit_edge
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %81 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %xoffset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %58)
  %cmp250.not = icmp ult i32 %82, %58
  br i1 %cmp250.not, label %lor.lhs.false252, label %if.end248.do.body257_crit_edge

if.end248.do.body257_crit_edge:                   ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body257

lor.lhs.false252:                                 ; preds = %if.end248
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %83 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %yoffset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %60)
  %cmp254.not = icmp ult i32 %84, %60
  br i1 %cmp254.not, label %if.end275, label %lor.lhs.false252.do.body257_crit_edge

lor.lhs.false252.do.body257_crit_edge:            ; preds = %lor.lhs.false252
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body257

do.body257:                                       ; preds = %lor.lhs.false252.do.body257_crit_edge, %if.end248.do.body257_crit_edge
  %85 = load i32, ptr @ivtvfb_debug, align 4
  %and258 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and258)
  %tobool259.not = icmp eq i32 %and258, 0
  br i1 %tobool259.not, label %do.body257.cleanup_crit_edge, label %do.end263

do.body257.cleanup_crit_edge:                     ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end263:                                        ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #10
  %instance265 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %86 = ptrtoint ptr %instance265 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %instance265, align 4
  %conv266 = zext i16 %87 to i32
  %yoffset269 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %88 = ptrtoint ptr %yoffset269 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %yoffset269, align 4
  %call271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %conv266, i32 noundef %82, i32 noundef %58, i32 noundef %89, i32 noundef %60) #11
  br label %cleanup

if.end275:                                        ; preds = %lor.lhs.false252
  %nonstd = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %90 = ptrtoint ptr %nonstd to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nonstd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp276 = icmp ugt i32 %91, 1
  br i1 %cmp276, label %do.body279, label %if.end294

do.body279:                                       ; preds = %if.end275
  %92 = load i32, ptr @ivtvfb_debug, align 4
  %and280 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280)
  %tobool281.not = icmp eq i32 %and280, 0
  br i1 %tobool281.not, label %do.body279.cleanup_crit_edge, label %do.end285

do.body279.cleanup_crit_edge:                     ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end285:                                        ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #10
  %instance287 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %93 = ptrtoint ptr %instance287 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %instance287, align 4
  %conv288 = zext i16 %94 to i32
  %call290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv288, i32 noundef %91) #11
  br label %cleanup

if.end294:                                        ; preds = %if.end275
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %95 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %vmode, align 4
  %and295 = and i32 %96, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and295)
  %switch = icmp ult i32 %and295, 2
  br i1 %switch, label %if.end319, label %do.body303

do.body303:                                       ; preds = %if.end294
  %97 = load i32, ptr @ivtvfb_debug, align 4
  %and304 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and304)
  %tobool305.not = icmp eq i32 %and304, 0
  br i1 %tobool305.not, label %do.body303.cleanup_crit_edge, label %do.end309

do.body303.cleanup_crit_edge:                     ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end309:                                        ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #10
  %instance311 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %98 = ptrtoint ptr %instance311 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %instance311, align 4
  %conv312 = zext i16 %99 to i32
  %call315 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %conv312, i32 noundef %and295) #11
  br label %cleanup

if.end319:                                        ; preds = %if.end294
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %100 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %left_margin, align 4
  %add = add i32 %101, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 721, i32 %add)
  %cmp321 = icmp ugt i32 %add, 721
  br i1 %cmp321, label %if.then323, label %if.end319.if.end328_crit_edge

if.end319.if.end328_crit_edge:                    ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end328

if.then323:                                       ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub nuw nsw i32 720, %49
  %div325576 = lshr i32 %sub, 1
  %add326 = add nuw nsw i32 %div325576, 1
  %102 = ptrtoint ptr %left_margin to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add326, ptr %left_margin, align 4
  br label %if.end328

if.end328:                                        ; preds = %if.then323, %if.end319.if.end328_crit_edge
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %103 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %upper_margin, align 4
  %add330 = add i32 %104, %51
  %105 = ptrtoint ptr %is_out_50hz to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %is_out_50hz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool333.not = icmp eq i8 %106, 0
  %cond = select i1 %tobool333.not, i32 481, i32 577
  call void @__sanitizer_cov_trace_cmp4(i32 %add330, i32 %cond)
  %cmp334 = icmp ugt i32 %add330, %cond
  br i1 %cmp334, label %if.then336, label %if.end328.if.end346_crit_edge

if.end328.if.end346_crit_edge:                    ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end346

if.then336:                                       ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #10
  %cond340 = select i1 %tobool333.not, i32 480, i32 576
  %sub342 = sub i32 %cond340, %51
  %div343575 = lshr i32 %sub342, 1
  %add344 = add nuw i32 %div343575, 1
  %107 = ptrtoint ptr %upper_margin to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add344, ptr %upper_margin, align 4
  br label %if.end346

if.end346:                                        ; preds = %if.then336, %if.end328.if.end346_crit_edge
  %108 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %left_margin, align 4
  %110 = add i32 %49, %109
  %sub350 = sub i32 776, %110
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %111 = ptrtoint ptr %right_margin to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %sub350, ptr %right_margin, align 4
  %112 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %upper_margin, align 4
  %114 = add i32 %51, %113
  %sub354 = sub i32 %., %114
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %115 = ptrtoint ptr %lower_margin to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %sub354, ptr %lower_margin, align 4
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %116 = ptrtoint ptr %hsync_len to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 24, ptr %hsync_len, align 4
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %117 = ptrtoint ptr %vsync_len to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 2, ptr %vsync_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %cmp357 = icmp eq i32 %and295, 0
  %div360574 = zext i1 %cmp357 to i32
  %spec.select = lshr exact i32 %.577, %div360574
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %spec.select, ptr %118, align 4
  %width = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 97, i32 2
  %120 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %49, ptr %width, align 8
  %121 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %yres, align 4
  %height = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 97, i32 3
  %123 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %height, align 4
  %124 = load i32, ptr @ivtvfb_debug, align 4
  %and369 = and i32 %124, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and369)
  %tobool370.not = icmp eq i32 %and369, 0
  br i1 %tobool370.not, label %if.end346.do.body387_crit_edge, label %do.end374

if.end346.do.body387_crit_edge:                   ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body387

do.end374:                                        ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #10
  %instance376 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %125 = ptrtoint ptr %instance376 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %instance376, align 4
  %conv377 = zext i16 %126 to i32
  %127 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %var, align 4
  %129 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %yres, align 4
  %131 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %xres_virtual, align 4
  %133 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %yres_virtual, align 4
  %135 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %bits_per_pixel, align 4
  %call383 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %conv377, i32 noundef %128, i32 noundef %130, i32 noundef %132, i32 noundef %134, i32 noundef %136) #11
  br label %do.body387

do.body387:                                       ; preds = %do.end374, %if.end346.do.body387_crit_edge
  %137 = load i32, ptr @ivtvfb_debug, align 4
  %and388 = and i32 %137, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and388)
  %tobool389.not = icmp eq i32 %and388, 0
  br i1 %tobool389.not, label %do.body387.do.body403_crit_edge, label %do.end393

do.body387.do.body403_crit_edge:                  ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body403

do.end393:                                        ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #10
  %instance395 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %138 = ptrtoint ptr %instance395 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %instance395, align 4
  %conv396 = zext i16 %139 to i32
  %140 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %left_margin, align 4
  %142 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %upper_margin, align 4
  %call399 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %conv396, i32 noundef %141, i32 noundef %143) #11
  br label %do.body403

do.body403:                                       ; preds = %do.end393, %do.body387.do.body403_crit_edge
  %144 = load i32, ptr @ivtvfb_debug, align 4
  %and404 = and i32 %144, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and404)
  %tobool405.not = icmp eq i32 %and404, 0
  br i1 %tobool405.not, label %do.body403.do.body422_crit_edge, label %do.end409

do.body403.do.body422_crit_edge:                  ; preds = %do.body403
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body422

do.end409:                                        ; preds = %do.body403
  call void @__sanitizer_cov_trace_pc() #10
  %instance411 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %145 = ptrtoint ptr %instance411 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %instance411, align 4
  %conv412 = zext i16 %146 to i32
  %147 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %vmode, align 4
  %and414 = and i32 %148, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and414)
  %cmp415 = icmp eq i32 %and414, 0
  %cond417 = select i1 %cmp415, ptr @.str.78, ptr @.str.79
  %call418 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %conv412, ptr noundef nonnull %cond417) #11
  br label %do.body422

do.body422:                                       ; preds = %do.end409, %do.body403.do.body422_crit_edge
  %149 = load i32, ptr @ivtvfb_debug, align 4
  %and423 = and i32 %149, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and423)
  %tobool424.not = icmp eq i32 %and423, 0
  br i1 %tobool424.not, label %do.body422.cleanup_crit_edge, label %do.end428

do.body422.cleanup_crit_edge:                     ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end428:                                        ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #10
  %instance430 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %150 = ptrtoint ptr %instance430 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %instance430, align 4
  %conv431 = zext i16 %151 to i32
  %152 = ptrtoint ptr %nonstd to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %nonstd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool433.not = icmp eq i32 %153, 0
  %cond434 = select i1 %tobool433.not, ptr @.str.84, ptr @.str.83
  %call435 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %conv431, ptr noundef nonnull %cond434) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end428, %do.body422.cleanup_crit_edge, %do.end309, %do.body303.cleanup_crit_edge, %do.end285, %do.body279.cleanup_crit_edge, %do.end263, %do.body257.cleanup_crit_edge, %do.end237, %do.body231.cleanup_crit_edge, %do.end217, %do.body211.cleanup_crit_edge, %do.end192, %do.body186.cleanup_crit_edge, %do.end172, %do.body166.cleanup_crit_edge, %do.end147, %do.body141.cleanup_crit_edge, %do.end108, %do.body102.cleanup_crit_edge, %do.end85, %do.body79.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end85 ], [ -22, %do.body79.cleanup_crit_edge ], [ -22, %do.end108 ], [ -22, %do.body102.cleanup_crit_edge ], [ -22, %do.end147 ], [ -22, %do.body141.cleanup_crit_edge ], [ -22, %do.end172 ], [ -22, %do.body166.cleanup_crit_edge ], [ -22, %do.end192 ], [ -22, %do.body186.cleanup_crit_edge ], [ -22, %do.end217 ], [ -22, %do.body211.cleanup_crit_edge ], [ -22, %do.end237 ], [ -22, %do.body231.cleanup_crit_edge ], [ -22, %do.end263 ], [ -22, %do.body257.cleanup_crit_edge ], [ -22, %do.end285 ], [ -22, %do.body279.cleanup_crit_edge ], [ -22, %do.end309 ], [ -22, %do.body303.cleanup_crit_edge ], [ 0, %do.end428 ], [ 0, %do.body422.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtvfb_write(ptr noundef %info, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %1 to i32
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %osd_info = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %osd_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %osd_info, align 8
  %video_rbase = getelementptr inbounds %struct.osd_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %video_rbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %video_rbase, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %10 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %screen_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2 = icmp eq i32 %11, 0
  br i1 %cmp2, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smem_len, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %total_size.0 = phi i32 [ %13, %if.then4 ], [ %11, %if.end.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %total_size.0, i32 %conv)
  %cmp6 = icmp ult i32 %total_size.0, %conv
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_cmp4(i32 %total_size.0, i32 %count)
  %cmp10 = icmp ult i32 %total_size.0, %count
  %spec.store.select = select i1 %cmp10, i32 -27, i32 -28
  %14 = tail call i32 @llvm.umin.i32(i32 %total_size.0, i32 %count)
  %err.0 = select i1 %cmp10, i32 -27, i32 0
  %add14 = add i32 %14, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %total_size.0)
  %cmp15 = icmp ugt i32 %add14, %total_size.0
  %sub = sub i32 %total_size.0, %conv
  %count.addr.1 = select i1 %cmp15, i32 %sub, i32 %14
  %err.1 = select i1 %cmp15, i32 %spec.store.select, i32 %err.0
  %15 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %conv
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %18 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fb_sync, align 4
  %tobool21.not = icmp eq ptr %21, null
  br i1 %tobool21.not, label %if.end9.if.end25_crit_edge, label %if.then22

if.end9.if.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %21(ptr noundef %info) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end9.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %count.addr.1)
  %cmp26 = icmp ugt i32 %count.addr.1, 4095
  br i1 %cmp26, label %land.lhs.true, label %if.end25.if.end8.i.i187_crit_edge

if.end25.if.end8.i.i187_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i187

land.lhs.true:                                    ; preds = %if.end25
  %22 = ptrtoint ptr %buf to i32
  %and = and i32 %22, 3
  %23 = ptrtoint ptr %add.ptr to i32
  %and28 = and i32 %23, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and28)
  %cmp29 = icmp eq i32 %and, %and28
  br i1 %cmp29, label %if.then31, label %land.lhs.true.if.end8.i.i187_crit_edge

land.lhs.true.if.end8.i.i187_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i187

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.then31.if.end47_crit_edge, label %if.then34

if.then31.if.end47_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then34:                                        ; preds = %if.then31
  %sub36 = sub nuw nsw i32 4, %and
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %sub36, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.90, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then34.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then34.if.then11.i.i_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then34
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %sub36, i32 -1226833920) #13, !srcloc !354
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !355

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %sub36) #8
  %25 = tail call i32 @llvm.read_register.i32(metadata !336) #8
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !356
  %and.i.i.i.i = and i32 %27, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %sub36) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #8, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end42, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !355

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then34.if.then11.i.i_crit_edge
  %res.0.i.i211 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %sub36, %if.then34.if.then11.i.i_crit_edge ], [ %sub36, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %sub36, %res.0.i.i211
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %28 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i211)
  br label %cleanup

if.end42:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr44 = getelementptr i8, ptr %buf, i32 %sub36
  %add.ptr46 = getelementptr i8, ptr %add.ptr, i32 %sub36
  br label %if.end47

if.end47:                                         ; preds = %if.end42, %if.then31.if.end47_crit_edge
  %buf.addr.0 = phi ptr [ %add.ptr44, %if.end42 ], [ %buf, %if.then31.if.end47_crit_edge ]
  %dst.0 = phi ptr [ %add.ptr46, %if.end42 ], [ %add.ptr, %if.then31.if.end47_crit_edge ]
  %lead.0 = phi i32 [ %sub36, %if.end42 ], [ 0, %if.then31.if.end47_crit_edge ]
  %sub49 = sub nuw i32 %count.addr.1, %lead.0
  %and50 = and i32 %sub49, 3
  %sub61 = and i32 %sub49, -4
  %add63 = add i32 %conv, 16777216
  %add = add i32 %add63, %7
  %add64 = add i32 %add, %lead.0
  %call65 = tail call fastcc i32 @ivtvfb_prep_dec_dma_to_device(ptr noundef %3, i32 noundef %add64, ptr noundef %buf.addr.0, i32 noundef %sub61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end68:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end68.if.end83_crit_edge, label %land.lhs.true73

if.end68.if.end83_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

land.lhs.true73:                                  ; preds = %if.end68
  %add.ptr70 = getelementptr i8, ptr %buf.addr.0, i32 %sub61
  %add.ptr69 = getelementptr i8, ptr %dst.0, i32 %sub61
  tail call void @__check_object_size(ptr noundef %add.ptr69, i32 noundef %and50, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.90, i32 noundef 156) #8
  %call.i.i161 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i161, label %land.lhs.true73.if.then11.i.i178_crit_edge, label %land.lhs.true.i.i165

land.lhs.true73.if.then11.i.i178_crit_edge:       ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i178

land.lhs.true.i.i165:                             ; preds = %land.lhs.true73
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr70, i32 %and50, i32 -1226833920) #13, !srcloc !354
  %asmresult.i.i163 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i163)
  %cmp.i6.i164 = icmp eq i32 %asmresult.i.i163, 0
  br i1 %cmp.i6.i164, label %if.end.i.i175, label %land.lhs.true.i.i165.if.then11.i.i178_crit_edge, !prof !355

land.lhs.true.i.i165.if.then11.i.i178_crit_edge:  ; preds = %land.lhs.true.i.i165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i178

if.end.i.i175:                                    ; preds = %land.lhs.true.i.i165
  %call.i.i.i166 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr69, i32 noundef %and50) #8
  %30 = tail call i32 @llvm.read_register.i32(metadata !336) #8
  %and.i.i.i.i.i.i167 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i167 to ptr
  %cpu_domain.i.i.i.i.i168 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i168) #6, !srcloc !356
  %and.i.i.i.i169 = and i32 %32, -13
  %or.i.i.i.i170 = or i32 %and.i.i.i.i169, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i170) #8, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  %call1.i.i.i171 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr69, ptr noundef %add.ptr70, i32 noundef %and50) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #8, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i171)
  %tobool4.not.i.i174 = icmp eq i32 %call1.i.i.i171, 0
  br i1 %tobool4.not.i.i174, label %if.end.i.i175.if.end83_crit_edge, label %if.end.i.i175.if.then11.i.i178_crit_edge, !prof !355

if.end.i.i175.if.then11.i.i178_crit_edge:         ; preds = %if.end.i.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i178

if.end.i.i175.if.end83_crit_edge:                 ; preds = %if.end.i.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then11.i.i178:                                 ; preds = %if.end.i.i175.if.then11.i.i178_crit_edge, %land.lhs.true.i.i165.if.then11.i.i178_crit_edge, %land.lhs.true73.if.then11.i.i178_crit_edge
  %res.0.i.i173216 = phi i32 [ %call1.i.i.i171, %if.end.i.i175.if.then11.i.i178_crit_edge ], [ %and50, %land.lhs.true73.if.then11.i.i178_crit_edge ], [ %and50, %land.lhs.true.i.i165.if.then11.i.i178_crit_edge ]
  %sub.i.i176 = sub i32 %and50, %res.0.i.i173216
  %add.ptr.i.i177 = getelementptr i8, ptr %add.ptr69, i32 %sub.i.i176
  %33 = call ptr @memset(ptr %add.ptr.i.i177, i32 0, i32 %res.0.i.i173216)
  br label %cleanup

if.end8.i.i187:                                   ; preds = %land.lhs.true.if.end8.i.i187_crit_edge, %if.end25.if.end8.i.i187_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1)
  %cmp9.i.i = icmp slt i32 %count.addr.1, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i188

land.rhs16.i.i:                                   ; preds = %if.end8.i.i187
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !355

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.then.i.i.i188:                                 ; preds = %if.end8.i.i187
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count.addr.1, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.90, i32 noundef 156) #8
  %call.i.i189 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i189, label %if.then.i.i.i188.if.end.i.i203_crit_edge, label %land.lhs.true.i.i193

if.then.i.i.i188.if.end.i.i203_crit_edge:         ; preds = %if.then.i.i.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i203

land.lhs.true.i.i193:                             ; preds = %if.then.i.i.i188
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count.addr.1, i32 -1226833920) #13, !srcloc !354
  %asmresult.i.i191 = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i191)
  %cmp.i6.i192 = icmp eq i32 %asmresult.i.i191, 0
  br i1 %cmp.i6.i192, label %if.then.i7.i200, label %land.lhs.true.i.i193.if.end.i.i203_crit_edge, !prof !355

land.lhs.true.i.i193.if.end.i.i203_crit_edge:     ; preds = %land.lhs.true.i.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i203

if.then.i7.i200:                                  ; preds = %land.lhs.true.i.i193
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i194 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %count.addr.1) #8
  %35 = tail call i32 @llvm.read_register.i32(metadata !336) #8
  %and.i.i.i.i.i.i195 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i195 to ptr
  %cpu_domain.i.i.i.i.i196 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i196) #6, !srcloc !356
  %and.i.i.i.i197 = and i32 %37, -13
  %or.i.i.i.i198 = or i32 %and.i.i.i.i197, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i198) #8, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  %call1.i.i.i199 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %count.addr.1) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #8, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  br label %if.end.i.i203

if.end.i.i203:                                    ; preds = %if.then.i7.i200, %land.lhs.true.i.i193.if.end.i.i203_crit_edge, %if.then.i.i.i188.if.end.i.i203_crit_edge
  %res.0.i.i201 = phi i32 [ %count.addr.1, %if.then.i.i.i188.if.end.i.i203_crit_edge ], [ %call1.i.i.i199, %if.then.i7.i200 ], [ %count.addr.1, %land.lhs.true.i.i193.if.end.i.i203_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i201)
  %tobool4.not.i.i202 = icmp eq i32 %res.0.i.i201, 0
  br i1 %tobool4.not.i.i202, label %if.end.i.i203.if.end83_crit_edge, label %if.then11.i.i206, !prof !355

if.end.i.i203.if.end83_crit_edge:                 ; preds = %if.end.i.i203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then11.i.i206:                                 ; preds = %if.end.i.i203
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i204 = sub i32 %count.addr.1, %res.0.i.i201
  %add.ptr.i.i205 = getelementptr i8, ptr %add.ptr, i32 %sub.i.i204
  %38 = call ptr @memset(ptr %add.ptr.i.i205, i32 0, i32 %res.0.i.i201)
  br label %cleanup

if.end83:                                         ; preds = %if.end.i.i203.if.end83_crit_edge, %if.end.i.i175.if.end83_crit_edge, %if.end68.if.end83_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool84.not = icmp eq i32 %err.1, 0
  br i1 %tobool84.not, label %if.then85, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then85:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %conv86 = zext i32 %count.addr.1 to i64
  %39 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ppos, align 8
  %add87 = add i64 %40, %conv86
  store i64 %add87, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %if.end83.cleanup_crit_edge, %if.then11.i.i206, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.then11.i.i178, %if.end47.cleanup_crit_edge, %if.then11.i.i, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -27, %if.end5.cleanup_crit_edge ], [ %call65, %if.end47.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i178 ], [ -14, %if.then11.i.i206 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ %count.addr.1, %if.then85 ], [ %err.1, %if.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtvfb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = load i32, ptr @ivtvfb_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %instance = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %instance to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %instance, align 4
  %conv = zext i16 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @_ivtvfb_check_var(ptr noundef %var, ptr noundef %1)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtvfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %regno)
  %cmp.not = icmp ugt i32 %3, %regno
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = shl i32 %transp, 16
  %shl = and i32 %and, -16777216
  %and1 = shl i32 %red, 8
  %shl2 = and i32 %and1, 16711680
  %and3 = and i32 %green, 65280
  %and5 = lshr i32 %blue, 8
  %shr = and i32 %and5, 255
  %or = or i32 %and3, %shl2
  %or4 = or i32 %or, %shr
  %or6 = or i32 %or4, %shl
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp7 = icmp ult i32 %5, 9
  br i1 %cmp7, label %do.body, label %if.end14

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !359
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %regno)
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 10800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !348
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !360
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %10 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_mem, align 8
  %add.ptr13 = getelementptr i8, ptr %11, i32 10804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %9) #8, !srcloc !348
  %osd_info = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 99
  %12 = ptrtoint ptr %osd_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %osd_info, align 8
  %arrayidx = getelementptr %struct.osd_info, ptr %13, i32 0, i32 19, i32 %regno
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or6, ptr %arrayidx, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp15 = icmp ugt i32 %regno, 15
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %15 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pseudo_palette, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp20 = icmp eq i32 %5, 16
  br i1 %cmp20, label %if.then21, label %if.end17.if.end49_crit_edge

if.end17.if.end49_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then21:                                        ; preds = %if.end17
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %18, label %if.then21.if.end49_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %sw.bb32
    i32 6, label %sw.bb41
  ]

if.then21.if.end49_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

sw.bb:                                            ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %and24 = lshr i32 %red, 4
  %shr25 = and i32 %and24, 3840
  %and26 = lshr i32 %green, 8
  %shr27 = and i32 %and26, 240
  %or28 = or i32 %shr27, %shr25
  %and29 = lshr i32 %blue, 12
  %shr30 = and i32 %and29, 15
  %or31 = or i32 %or28, %shr30
  br label %if.end49

sw.bb32:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %and33 = lshr i32 %red, 1
  %shr34 = and i32 %and33, 31744
  %and35 = lshr i32 %green, 6
  %shr36 = and i32 %and35, 992
  %or37 = or i32 %shr36, %shr34
  %and38 = lshr i32 %blue, 11
  %shr39 = and i32 %and38, 31
  %or40 = or i32 %or37, %shr39
  br label %if.end49

sw.bb41:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %and42 = and i32 %red, 63488
  %and43 = lshr i32 %green, 5
  %shr44 = and i32 %and43, 2016
  %or45 = or i32 %shr44, %and42
  %and46 = lshr i32 %blue, 11
  %shr47 = and i32 %and46, 31
  %or48 = or i32 %or45, %shr47
  br label %if.end49

if.end49:                                         ; preds = %sw.bb41, %sw.bb32, %sw.bb, %if.then21.if.end49_crit_edge, %if.end17.if.end49_crit_edge
  %color.0 = phi i32 [ %or6, %if.then21.if.end49_crit_edge ], [ %or48, %sw.bb41 ], [ %or40, %sw.bb32 ], [ %or31, %sw.bb ], [ %or6, %if.end17.if.end49_crit_edge ]
  %arrayidx50 = getelementptr i32, ptr %16, i32 %regno
  %20 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %color.0, ptr %arrayidx50, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end14.cleanup_crit_edge, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ 0, %if.end49 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtvfb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %2 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yoffset, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres, align 4
  %add = add i32 %5, %3
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp = icmp ugt i32 %add, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %8 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xoffset, align 4
  %10 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %var1, align 4
  %add4 = add i32 %11, %9
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %13)
  %cmp6 = icmp ugt i32 %add4, %13
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %14 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %line_length, align 4
  %mul = mul i32 %15, %3
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %16 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bits_per_pixel, align 4
  %mul10 = mul i32 %17, %9
  %div33 = lshr i32 %mul10, 3
  %add11 = add i32 %div33, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !350
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %add11)
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %20, i32 10764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #8, !srcloc !348
  %21 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xoffset, align 4
  %osd_x_pan = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 43
  %23 = ptrtoint ptr %osd_x_pan to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %osd_x_pan, align 4
  %24 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %yoffset, align 4
  %osd_y_pan = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 44
  %26 = ptrtoint ptr %osd_y_pan to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %osd_y_pan, align 4
  %yuv_forced_update = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 55
  %27 = ptrtoint ptr %yuv_forced_update to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %yuv_forced_update, align 4
  %osd_info = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 99
  %28 = ptrtoint ptr %osd_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %osd_info, align 8
  %pan_cur = getelementptr inbounds %struct.osd_info, ptr %29, i32 0, i32 20
  %30 = ptrtoint ptr %pan_cur to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add11, ptr %pan_cur, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtvfb_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #1 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %vblank = alloca %struct.fb_vblank, align 4
  %args = alloca %struct.ivtvfb_dma_frame, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !336) #8
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
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %13 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %par, align 4
  %15 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %cmd, label %do.body50 [
    i32 -2145368558, label %sw.bb
    i32 1074021920, label %sw.bb26
    i32 1074550464, label %sw.bb33
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vblank) #8
  %16 = getelementptr inbounds %struct.fb_vblank, ptr %vblank, i32 0, i32 1
  %17 = getelementptr inbounds %struct.fb_vblank, ptr %vblank, i32 0, i32 2
  %18 = getelementptr inbounds %struct.fb_vblank, ptr %vblank, i32 0, i32 3
  %19 = getelementptr inbounds i8, ptr %vblank, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 28)
  %21 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 304, ptr %vblank, align 4
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %14, i32 0, i32 17
  %22 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %23, i32 10432
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !361
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !362
  %shr = lshr i32 %25, 16
  %is_out_50hz = getelementptr inbounds %struct.ivtv, ptr %14, i32 0, i32 29
  %26 = ptrtoint ptr %is_out_50hz to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_out_50hz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp ne i8 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 20512767, i32 %25)
  %cmp = icmp ugt i32 %25, 20512767
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i32 %shr, -312
  br label %if.end15

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %is_out_60hz = getelementptr inbounds %struct.ivtv, ptr %14, i32 0, i32 30
  %28 = ptrtoint ptr %is_out_60hz to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_out_60hz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool9.not = icmp ne i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 17235967, i32 %25)
  %cmp11 = icmp ugt i32 %25, 17235967
  %or.cond83 = select i1 %tobool9.not, i1 %cmp11, i1 false
  %sub14 = add nsw i32 %shr, -262
  %spec.select84 = select i1 %or.cond83, i32 %sub14, i32 %shr
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then
  %trace.0 = phi i32 [ %sub, %if.then ], [ %spec.select84, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %trace.0)
  %cmp16 = icmp eq i32 %trace.0, 1
  br i1 %cmp16, label %if.then18, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vblank, align 4
  %or = or i32 %31, 128
  store i32 %or, ptr %vblank, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  %last_vsync_field = getelementptr inbounds %struct.ivtv, ptr %14, i32 0, i32 61
  %32 = ptrtoint ptr %last_vsync_field to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %last_vsync_field, align 4
  %34 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %16, align 4
  %35 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %trace.0, ptr %17, align 4
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %18, align 4
  %37 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.90, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end20.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.end20.copy_to_user.exit.thread_crit_edge:      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.end20
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %37, i32 32, i32 -1226833920) #13, !srcloc !363
  %asmresult.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %vblank, i32 noundef 32) #8
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %37, ptr noundef nonnull %vblank, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool22.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select100 = select i1 %tobool22.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.end20.copy_to_user.exit.thread_crit_edge
  %39 = phi i32 [ -14, %if.end20.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select100, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vblank) #8
  br label %cleanup64

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vsync_waitq = getelementptr inbounds %struct.ivtv, ptr %14, i32 0, i32 65
  call void @prepare_to_wait(ptr noundef %vsync_waitq, ptr noundef nonnull %wait, i32 noundef 1) #8
  %call28 = call i32 @schedule_timeout(i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  %spec.select = select i1 %tobool29.not, i32 -110, i32 0
  call void @finish_wait(ptr noundef %vsync_waitq, ptr noundef nonnull %wait) #8
  br label %cleanup64

sw.bb33:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #8
  %40 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !364
  %41 = getelementptr inbounds %struct.ivtvfb_dma_frame, ptr %args, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %41, align 4, !annotation !364
  %43 = getelementptr inbounds %struct.ivtvfb_dma_frame, ptr %args, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %43, align 4, !annotation !364
  %45 = load i32, ptr @ivtvfb_debug, align 4
  %and = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %sw.bb33.do.end42_crit_edge, label %do.end

sw.bb33.do.end42_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

do.end:                                           ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %instance = getelementptr inbounds %struct.ivtv, ptr %14, i32 0, i32 25
  %46 = ptrtoint ptr %instance to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %instance, align 4
  %conv38 = zext i16 %47 to i32
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %conv38) #11
  br label %do.end42

do.end42:                                         ; preds = %do.end, %sw.bb33.do.end42_crit_edge
  %48 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.90, i32 noundef 156) #8
  %call.i.i86 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i86, label %do.end42.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

do.end42.if.then11.i.i_crit_edge:                 ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %do.end42
  %49 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 12, i32 -1226833920) #13, !srcloc !354
  %asmresult.i.i88 = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i88)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i88, 0
  br i1 %cmp.i6.i, label %if.end.i.i90, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !355

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i90:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i89 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %args, i32 noundef 12) #8
  %50 = call i32 @llvm.read_register.i32(metadata !336) #8
  %and.i.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !356
  %and.i.i.i.i = and i32 %52, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !357
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %args, ptr noundef %48, i32 noundef 12) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #8, !srcloc !357
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end46, label %if.end.i.i90.if.then11.i.i_crit_edge, !prof !355

if.end.i.i90.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i90.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %do.end42.if.then11.i.i_crit_edge
  %res.0.i.i97 = phi i32 [ %call1.i.i.i, %if.end.i.i90.if.then11.i.i_crit_edge ], [ 12, %do.end42.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i97
  %add.ptr.i.i = getelementptr i8, ptr %args, i32 %sub.i.i
  %53 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i97)
  br label %cleanup49

if.end46:                                         ; preds = %if.end.i.i90
  %54 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %args, align 4
  %56 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %41, align 4
  %58 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #8
  %60 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %61 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %62 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %63 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %64 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %wait.i, align 4
  %65 = call i32 @llvm.read_register.i32(metadata !336) #8
  %and.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i, align 8
  %69 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %60, align 4
  %70 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @autoremove_wake_function, ptr %61, align 4
  %71 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %62, ptr %62, align 4
  %72 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %62, ptr %63, align 4
  %osd_info.i = getelementptr inbounds %struct.ivtv, ptr %14, i32 0, i32 99
  %73 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %osd_info.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i = icmp eq i32 %59, 0
  br i1 %cmp.i, label %do.body.i, label %if.end9.i

do.body.i:                                        ; preds = %if.end46
  %75 = load i32, ptr @ivtvfb_debug, align 4
  %and.i92 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool.not.i = icmp eq i32 %and.i92, 0
  br i1 %tobool.not.i, label %do.body.i.ivtvfb_prep_frame.exit_crit_edge, label %do.end.i

do.body.i.ivtvfb_prep_frame.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtvfb_prep_frame.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %instance.i = getelementptr inbounds %struct.ivtv, ptr %14, i32 0, i32 25
  %76 = ptrtoint ptr %instance.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %instance.i, align 4
  %conv.i = zext i16 %77 to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %conv.i) #11
  br label %ivtvfb_prep_frame.exit

if.end9.i:                                        ; preds = %if.end46
  %add.i = add i32 %59, %57
  %video_buffer_size.i = getelementptr inbounds %struct.osd_info, ptr %74, i32 0, i32 3
  %78 = ptrtoint ptr %video_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %video_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %79)
  %cmp10.i = icmp ugt i32 %add.i, %79
  br i1 %cmp10.i, label %do.end15.i, label %if.end22.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %instance17.i = getelementptr inbounds %struct.ivtv, ptr %14, i32 0, i32 25
  %80 = ptrtoint ptr %instance17.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %instance17.i, align 4
  %conv18.i = zext i16 %81 to i32
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %conv18.i, i32 noundef %add.i, i32 noundef %79) #11
  br label %ivtvfb_prep_frame.exit

if.end22.i:                                       ; preds = %if.end9.i
  %82 = ptrtoint ptr %55 to i32
  %and23.i = and i32 %82, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end33.i_crit_edge, label %do.end28.i

if.end22.i.if.end33.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

do.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %instance30.i = getelementptr inbounds %struct.ivtv, ptr %14, i32 0, i32 25
  %83 = ptrtoint ptr %instance30.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %instance30.i, align 4
  %conv31.i = zext i16 %84 to i32
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %conv31.i, ptr noundef %55) #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end28.i, %if.end22.i.if.end33.i_crit_edge
  %and34.i = and i32 %57, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.end44.i_crit_edge, label %do.end39.i

if.end33.i.if.end44.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

do.end39.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %instance41.i = getelementptr inbounds %struct.ivtv, ptr %14, i32 0, i32 25
  %85 = ptrtoint ptr %instance41.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %instance41.i, align 4
  %conv42.i = zext i16 %86 to i32
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %conv42.i, i32 noundef %57) #11
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end39.i, %if.end33.i.if.end44.i_crit_edge
  %and45.i = and i32 %59, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end44.i.if.end55.i_crit_edge, label %do.end50.i

if.end44.i.if.end55.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

do.end50.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %instance52.i = getelementptr inbounds %struct.ivtv, ptr %14, i32 0, i32 25
  %87 = ptrtoint ptr %instance52.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %instance52.i, align 4
  %conv53.i = zext i16 %88 to i32
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %conv53.i, i32 noundef %59) #11
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end50.i, %if.end44.i.if.end55.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %55, i32 %57
  %89 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr.i, i32 %59, i32 -1226833920) #13, !srcloc !365
  %asmresult.i = extractvalue { i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp58.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp58.i, label %if.end82.i, label %do.end63.i

do.end63.i:                                       ; preds = %if.end55.i
  %instance65.i = getelementptr inbounds %struct.ivtv, ptr %14, i32 0, i32 25
  %90 = ptrtoint ptr %instance65.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %instance65.i, align 4
  %conv66.i = zext i16 %91 to i32
  %call67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %conv66.i, ptr noundef %55) #11
  %92 = load i32, ptr @ivtvfb_debug, align 4
  %and69.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %do.end63.i.ivtvfb_prep_frame.exit_crit_edge, label %do.end74.i

do.end63.i.ivtvfb_prep_frame.exit_crit_edge:      ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtvfb_prep_frame.exit

do.end74.i:                                       ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %instance65.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %instance65.i, align 4
  %conv77.i = zext i16 %94 to i32
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %conv77.i, i32 noundef %57, ptr noundef %55, i32 noundef %59) #11
  br label %ivtvfb_prep_frame.exit

if.end82.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  %video_rbase.i = getelementptr inbounds %struct.osd_info, ptr %74, i32 0, i32 1
  %95 = ptrtoint ptr %video_rbase.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %video_rbase.i, align 4
  %add83.i = add i32 %57, 16777216
  %add84.i = add i32 %add83.i, %96
  %call85.i = call fastcc i32 @ivtvfb_prep_dec_dma_to_device(ptr noundef %14, i32 noundef %add84.i, ptr noundef %55, i32 noundef %59) #8
  br label %ivtvfb_prep_frame.exit

ivtvfb_prep_frame.exit:                           ; preds = %if.end82.i, %do.end74.i, %do.end63.i.ivtvfb_prep_frame.exit_crit_edge, %do.end15.i, %do.end.i, %do.body.i.ivtvfb_prep_frame.exit_crit_edge
  %retval.0.i = phi i32 [ -7, %do.end15.i ], [ %call85.i, %if.end82.i ], [ -22, %do.end.i ], [ -22, %do.body.i.ivtvfb_prep_frame.exit_crit_edge ], [ -22, %do.end74.i ], [ -22, %do.end63.i.ivtvfb_prep_frame.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #8
  br label %cleanup49

cleanup49:                                        ; preds = %ivtvfb_prep_frame.exit, %if.then11.i.i
  %retval.1 = phi i32 [ %retval.0.i, %ivtvfb_prep_frame.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #8
  br label %cleanup64

do.body50:                                        ; preds = %entry
  %97 = load i32, ptr @ivtvfb_debug, align 4
  %and51 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.cleanup64_crit_edge, label %do.end56

do.body50.cleanup64_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

do.end56:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %instance58 = getelementptr inbounds %struct.ivtv, ptr %14, i32 0, i32 25
  %98 = ptrtoint ptr %instance58 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %instance58, align 4
  %conv59 = zext i16 %99 to i32
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %conv59, i32 noundef %cmd) #11
  br label %cleanup64

cleanup64:                                        ; preds = %do.end56, %do.body50.cleanup64_crit_edge, %cleanup49, %sw.bb26, %copy_to_user.exit.thread
  %retval.2 = phi i32 [ %retval.1, %cleanup49 ], [ %spec.select, %sw.bb26 ], [ %39, %copy_to_user.exit.thread ], [ -22, %do.end56 ], [ -22, %do.body50.cleanup64_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ivtvfb_prep_dec_dma_to_device(ptr noundef %itv, i32 noundef %ivtv_dest_addr, ptr noundef %userbuf, i32 noundef %size_in_bytes) unnamed_addr #1 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !336) #8
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
  %udma = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59
  call void @mutex_lock_nested(ptr noundef %udma, i32 noundef 0) #8
  %call4 = call i32 @ivtv_udma_setup(ptr noundef %itv, i32 noundef %ivtv_dest_addr, ptr noundef %userbuf, i32 noundef %size_in_bytes) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp = icmp slt i32 %call4, 1
  br i1 %cmp, label %if.then, label %do.body9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %udma) #8
  %instance = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %13 = ptrtoint ptr %instance to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %instance, align 4
  %conv = zext i16 %14 to i32
  %page_count = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 1
  %15 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %page_count, align 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %conv, i32 noundef %size_in_bytes, i32 noundef %16) #11
  br label %cleanup

do.body9:                                         ; preds = %entry
  %17 = load i32, ptr @ivtvfb_debug, align 4
  %and = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body9.do.end22_crit_edge, label %do.end13

do.body9.do.end22_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.end13:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %instance15 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %18 = ptrtoint ptr %instance15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %instance15, align 4
  %conv16 = zext i16 %19 to i32
  %page_count18 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 1
  %20 = ptrtoint ptr %page_count18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_count18, align 4
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %conv16, i32 noundef %size_in_bytes, i32 noundef %21) #11
  br label %do.end22

do.end22:                                         ; preds = %do.end13, %do.body9.do.end22_crit_edge
  call void @ivtv_udma_prepare(ptr noundef %itv) #8
  %dma_waitq = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 62
  call void @prepare_to_wait(ptr noundef %dma_waitq, ptr noundef nonnull %wait, i32 noundef 1) #8
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  br label %while.cond

while.cond:                                       ; preds = %if.end36, %do.end22
  %22 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %i_flags, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool24.not = icmp eq i32 %24, 0
  br i1 %tobool24.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %25 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %i_flags, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool27.not = icmp eq i32 %27, 0
  br i1 %tobool27.not, label %while.end, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stack.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %34 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body.land.lhs.true_crit_edge, !prof !355

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

signal_pending.exit:                              ; preds = %while.body
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %31, align 4
  %and1.i.i.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool31.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool31.not, label %signal_pending.exit.if.end36_crit_edge, label %signal_pending.exit.land.lhs.true_crit_edge

signal_pending.exit.land.lhs.true_crit_edge:      ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

signal_pending.exit.if.end36_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true:                                    ; preds = %signal_pending.exit.land.lhs.true_crit_edge, %while.body.land.lhs.true_crit_edge
  %call33 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %i_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true.if.end36_crit_edge, label %do.body42.critedge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %signal_pending.exit.if.end36_crit_edge
  call void @schedule() #8
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %dma_waitq, ptr noundef nonnull %wait) #8
  call void @ivtv_udma_unmap(ptr noundef %itv) #8
  call void @mutex_unlock(ptr noundef %udma) #8
  br label %cleanup

do.body42.critedge:                               ; preds = %land.lhs.true
  call void @finish_wait(ptr noundef %dma_waitq, ptr noundef nonnull %wait) #8
  call void @ivtv_udma_unmap(ptr noundef %itv) #8
  call void @mutex_unlock(ptr noundef %udma) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %37 = load i32, ptr @ivtv_debug, align 4
  %and43 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.critedge.cleanup_crit_edge, label %do.end48

do.body42.critedge.cleanup_crit_edge:             ; preds = %do.body42.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end48:                                         ; preds = %do.body42.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %do.body42.critedge.cleanup_crit_edge, %while.end, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ 0, %while.end ], [ -4, %do.end48 ], [ -4, %do.body42.critedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_udma_setup(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_udma_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_udma_unmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ivtvfb_set_var(ptr noundef %itv, ptr nocapture noundef %var) unnamed_addr #1 align 64 {
entry:
  %data.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %osd_info = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 99
  %0 = ptrtoint ptr %osd_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %osd_info, align 8
  %2 = load i32, ptr @ivtvfb_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %instance = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %3 = ptrtoint ptr %instance to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %instance, align 4
  %conv = zext i16 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %conv) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %nonstd = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %5 = ptrtoint ptr %nonstd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nonstd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %reg_mem19 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %7 = ptrtoint ptr %reg_mem19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_mem19, align 8
  %add.ptr20 = getelementptr i8, ptr %8, i32 10752
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool4.not, label %do.body14, label %do.body6

do.body6:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %10 = or i32 %9, 2097152
  %11 = ptrtoint ptr %reg_mem19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_mem19, align 8
  %add.ptr13 = getelementptr i8, ptr %12, i32 10752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %10) #8, !srcloc !348
  br label %if.end27

do.body14:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %13 = and i32 %9, -2097153
  %14 = ptrtoint ptr %reg_mem19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_mem19, align 8
  %add.ptr26 = getelementptr i8, ptr %15, i32 10752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %13) #8, !srcloc !348
  br label %if.end27

if.end27:                                         ; preds = %do.body14, %do.body6
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %16 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bits_per_pixel, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %17, label %do.body48 [
    i32 8, label %if.end27.if.then64_crit_edge
    i32 32, label %sw.bb28
    i32 16, label %sw.bb29
  ]

if.end27.if.then64_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

sw.bb28:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

sw.bb29:                                          ; preds = %if.end27
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length, align 4
  %switch.tableidx = add i32 %20, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %21 = icmp ult i32 %switch.tableidx, 3
  br i1 %21, label %switch.lookup, label %do.body33

do.body33:                                        ; preds = %sw.bb29
  %22 = load i32, ptr @ivtvfb_debug, align 4
  %and34 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body33.if.end67_crit_edge, label %do.end39

do.body33.if.end67_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %instance41 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %23 = ptrtoint ptr %instance41 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %instance41, align 4
  %conv42 = zext i16 %24 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %conv42) #11
  br label %if.end67

do.body48:                                        ; preds = %if.end27
  %25 = load i32, ptr @ivtvfb_debug, align 4
  %and49 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.if.end67_crit_edge, label %do.end54

do.body48.if.end67_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

do.end54:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %instance56 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %26 = ptrtoint ptr %instance56 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %instance56, align 4
  %conv57 = zext i16 %27 to i32
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %conv57) #11
  br label %if.end67

switch.lookup:                                    ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  %switch.offset = sub i32 7, %20
  br label %if.then64

if.then64:                                        ; preds = %switch.lookup, %sw.bb28, %if.end27.if.then64_crit_edge
  %osd_mode.0.ph = phi i32 [ 0, %if.end27.if.then64_crit_edge ], [ 4, %sw.bb28 ], [ %switch.offset, %switch.lookup ]
  %call65 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 67, i32 noundef 1, i32 noundef 0) #8
  %call66 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 67, i32 noundef 1, i32 noundef %osd_mode.0.ph) #8
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %do.end54, %do.body48.if.end67_crit_edge, %do.end39, %do.body33.if.end67_crit_edge
  %28 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bits_per_pixel, align 4
  %bits_per_pixel69 = getelementptr inbounds %struct.osd_info, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %bits_per_pixel69 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %bits_per_pixel69, align 4
  %31 = load i32, ptr %bits_per_pixel, align 4
  %div1 = lshr i32 %31, 3
  %bytes_per_pixel = getelementptr inbounds %struct.osd_info, ptr %1, i32 0, i32 13
  %32 = ptrtoint ptr %bytes_per_pixel to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div1, ptr %bytes_per_pixel, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %33 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vmode, align 4
  %trunc = trunc i32 %34 to i8
  %35 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.164)
  switch i8 %trunc, label %do.body77 [
    i8 0, label %sw.bb72
    i8 1, label %sw.bb74
  ]

sw.bb72:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %call73 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 80, i32 noundef 1, i32 noundef 1) #8
  br label %sw.epilog91

sw.bb74:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %call75 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 80, i32 noundef 1, i32 noundef 0) #8
  br label %sw.epilog91

do.body77:                                        ; preds = %if.end67
  %36 = load i32, ptr @ivtvfb_debug, align 4
  %and78 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %do.body77.sw.epilog91_crit_edge, label %do.end83

do.body77.sw.epilog91_crit_edge:                  ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog91

do.end83:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  %instance85 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %37 = ptrtoint ptr %instance85 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %instance85, align 4
  %conv86 = zext i16 %38 to i32
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, i32 noundef %conv86) #11
  br label %sw.epilog91

sw.epilog91:                                      ; preds = %do.end83, %do.body77.sw.epilog91_crit_edge, %sw.bb74, %sw.bb72
  %39 = ptrtoint ptr %osd_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %osd_info, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i) #8
  %41 = call ptr @memset(ptr %data.i, i32 255, i32 64)
  %call.i = call i32 (ptr, ptr, i32, i32, ...) @ivtv_vapi_result(ptr noundef %itv, ptr noundef nonnull %data.i, i32 noundef 70, i32 noundef 0) #8
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data.i, align 4
  %video_rbase.i = getelementptr inbounds %struct.osd_info, ptr %40, i32 0, i32 1
  %44 = ptrtoint ptr %video_rbase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %video_rbase.i, align 4
  %sub.i = sub i32 %43, %45
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i) #8
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %46 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %48 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %yres_virtual, align 4
  %50 = ptrtoint ptr %osd_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %osd_info, align 8
  %display_width.i4 = getelementptr inbounds %struct.osd_info, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %display_width.i4 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %47, ptr %display_width.i4, align 4
  %bytes_per_pixel.i = getelementptr inbounds %struct.osd_info, ptr %51, i32 0, i32 13
  %53 = ptrtoint ptr %bytes_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bytes_per_pixel.i, align 4
  %mul.i5 = mul i32 %54, %47
  %display_byte_stride.i = getelementptr inbounds %struct.osd_info, ptr %51, i32 0, i32 11
  %55 = ptrtoint ptr %display_byte_stride.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul.i5, ptr %display_byte_stride.i, align 4
  %set_osd_coords_y.i = getelementptr inbounds %struct.osd_info, ptr %51, i32 0, i32 8
  %56 = ptrtoint ptr %set_osd_coords_y.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %set_osd_coords_y.i, align 4
  %video_rbase.i8 = getelementptr inbounds %struct.osd_info, ptr %51, i32 0, i32 1
  %57 = ptrtoint ptr %video_rbase.i8 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %video_rbase.i8, align 4
  %add2.i = add i32 %sub.i, %58
  %call.i10 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 71, i32 noundef 5, i32 noundef %add2.i, i32 noundef %47, i32 noundef %49, i32 noundef 0, i32 noundef 0) #8
  %59 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %61 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %yres, align 4
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %63 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %upper_margin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool94.not = icmp eq i32 %64, 0
  br i1 %tobool94.not, label %if.then95, label %sw.epilog91.if.end97_crit_edge

sw.epilog91.if.end97_crit_edge:                   ; preds = %sw.epilog91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then95:                                        ; preds = %sw.epilog91
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %upper_margin to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %upper_margin, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %sw.epilog91.if.end97_crit_edge
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %66 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %left_margin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool98.not = icmp eq i32 %67, 0
  br i1 %tobool98.not, label %if.then99, label %if.end97.if.end102_crit_edge

if.end97.if.end102_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.then99:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %left_margin to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %left_margin, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end97.if.end102_crit_edge
  %69 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %upper_margin, align 4
  %sub = add i32 %70, -1
  %71 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %left_margin, align 4
  %sub105 = add i32 %72, -1
  %is_out_50hz.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 29
  %73 = ptrtoint ptr %is_out_50hz.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %is_out_50hz.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i = icmp eq i8 %74, 0
  %cond.i = select i1 %tobool.not.i, i32 480, i32 576
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %62)
  %cmp.i = icmp ult i32 %cond.i, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %60)
  %cmp2.i = icmp ugt i32 %60, 720
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp2.i
  br i1 %or.cond, label %if.end102.ivtvfb_set_display_window.exit_crit_edge, label %if.end.i

if.end102.ivtvfb_set_display_window.exit_crit_edge: ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtvfb_set_display_window.exit

if.end.i:                                         ; preds = %if.end102
  %add.i11 = add i32 %sub, %62
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i11, i32 %cond.i)
  %cmp5.i = icmp ugt i32 %add.i11, %cond.i
  br i1 %cmp5.i, label %do.body.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

do.body.i:                                        ; preds = %if.end.i
  %75 = load i32, ptr @ivtvfb_debug, align 4
  %and.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %do.body.i.do.end16.i_crit_edge, label %do.end.i

do.body.i.do.end16.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %instance.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %76 = ptrtoint ptr %instance.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %instance.i, align 4
  %conv11.i = zext i16 %77 to i32
  %call.i12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, i32 noundef %conv11.i, i32 noundef %sub, i32 noundef %62) #11
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i, %do.body.i.do.end16.i_crit_edge
  %sub.i13 = sub i32 %cond.i, %62
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end16.i, %if.end.i.if.end19.i_crit_edge
  %ivtv_window.sroa.9.0 = phi i32 [ %sub.i13, %do.end16.i ], [ %sub, %if.end.i.if.end19.i_crit_edge ]
  %add21.i = add i32 %sub105, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %add21.i)
  %cmp22.i = icmp ugt i32 %add21.i, 720
  br i1 %cmp22.i, label %do.body25.i, label %if.end19.i.do.body45.i_crit_edge

if.end19.i.do.body45.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45.i

do.body25.i:                                      ; preds = %if.end19.i
  %78 = load i32, ptr @ivtvfb_debug, align 4
  %and26.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %do.body25.i.do.end40.i_crit_edge, label %do.end31.i

do.body25.i.do.end40.i_crit_edge:                 ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i

do.end31.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  %instance33.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %79 = ptrtoint ptr %instance33.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %instance33.i, align 4
  %conv34.i = zext i16 %80 to i32
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %conv34.i, i32 noundef %sub105, i32 noundef %60) #11
  br label %do.end40.i

do.end40.i:                                       ; preds = %do.end31.i, %do.body25.i.do.end40.i_crit_edge
  %sub42.i = sub nuw nsw i32 720, %60
  br label %do.body45.i

do.body45.i:                                      ; preds = %do.end40.i, %if.end19.i.do.body45.i_crit_edge
  %add59.i.pre-phi = phi i32 [ 720, %do.end40.i ], [ %add21.i, %if.end19.i.do.body45.i_crit_edge ]
  %ivtv_window.sroa.0.0 = phi i32 [ %sub42.i, %do.end40.i ], [ %sub105, %if.end19.i.do.body45.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !366
  call void @arm_heavy_mb() #8
  %shl.i = shl i32 %ivtv_window.sroa.9.0, 16
  %or.i = or i32 %ivtv_window.sroa.0.0, %shl.i
  %81 = call i32 @llvm.bswap.i32(i32 %or.i) #8
  %reg_mem.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %82 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %83, i32 10756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %81) #8, !srcloc !348
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !367
  call void @arm_heavy_mb() #8
  %add55.i = add i32 %ivtv_window.sroa.9.0, %62
  %shl56.i = shl i32 %add55.i, 16
  %or60.i = or i32 %add59.i.pre-phi, %shl56.i
  %84 = call i32 @llvm.bswap.i32(i32 %or60.i) #8
  %85 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr62.i = getelementptr i8, ptr %86, i32 10760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %84) #8, !srcloc !348
  %osd_vis_w.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 45
  %87 = ptrtoint ptr %osd_vis_w.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %60, ptr %osd_vis_w.i, align 4
  %osd_vis_h.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 46
  %88 = ptrtoint ptr %osd_vis_h.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %62, ptr %osd_vis_h.i, align 4
  %osd_x_offset.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 41
  %89 = ptrtoint ptr %osd_x_offset.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %ivtv_window.sroa.0.0, ptr %osd_x_offset.i, align 4
  %osd_y_offset.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 42
  %90 = ptrtoint ptr %osd_y_offset.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %ivtv_window.sroa.9.0, ptr %osd_y_offset.i, align 4
  br label %ivtvfb_set_display_window.exit

ivtvfb_set_display_window.exit:                   ; preds = %do.body45.i, %if.end102.ivtvfb_set_display_window.exit_crit_edge
  %osd_full_w = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 47
  %91 = ptrtoint ptr %osd_full_w to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %47, ptr %osd_full_w, align 4
  %osd_full_h = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 48
  %92 = ptrtoint ptr %osd_full_h to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %49, ptr %osd_full_h, align 4
  %yuv_forced_update = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 55
  %93 = ptrtoint ptr %yuv_forced_update to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %yuv_forced_update, align 4
  %fbvar_cur = getelementptr inbounds %struct.osd_info, ptr %1, i32 0, i32 17
  %94 = call ptr @memcpy(ptr %fbvar_cur, ptr %var, i32 160)
  %95 = load i32, ptr @ivtvfb_debug, align 4
  %and112 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %ivtvfb_set_display_window.exit.do.body130_crit_edge, label %do.end117

ivtvfb_set_display_window.exit.do.body130_crit_edge: ; preds = %ivtvfb_set_display_window.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body130

do.end117:                                        ; preds = %ivtvfb_set_display_window.exit
  call void @__sanitizer_cov_trace_pc() #10
  %instance119 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %96 = ptrtoint ptr %instance119 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %instance119, align 4
  %conv120 = zext i16 %97 to i32
  %98 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %var, align 4
  %100 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %yres, align 4
  %102 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %xres_virtual, align 4
  %104 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %yres_virtual, align 4
  %106 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bits_per_pixel, align 4
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %conv120, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107) #11
  br label %do.body130

do.body130:                                       ; preds = %do.end117, %ivtvfb_set_display_window.exit.do.body130_crit_edge
  %108 = load i32, ptr @ivtvfb_debug, align 4
  %and131 = and i32 %108, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %do.body130.do.body146_crit_edge, label %do.end136

do.body130.do.body146_crit_edge:                  ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body146

do.end136:                                        ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #10
  %instance138 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %109 = ptrtoint ptr %instance138 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %instance138, align 4
  %conv139 = zext i16 %110 to i32
  %111 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %left_margin, align 4
  %113 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %upper_margin, align 4
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %conv139, i32 noundef %112, i32 noundef %114) #11
  br label %do.body146

do.body146:                                       ; preds = %do.end136, %do.body130.do.body146_crit_edge
  %115 = load i32, ptr @ivtvfb_debug, align 4
  %and147 = and i32 %115, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %do.body146.do.body164_crit_edge, label %do.end152

do.body146.do.body164_crit_edge:                  ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body164

do.end152:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  %instance154 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %116 = ptrtoint ptr %instance154 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %instance154, align 4
  %conv155 = zext i16 %117 to i32
  %118 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %vmode, align 4
  %and157 = and i32 %119, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %cmp158 = icmp eq i32 %and157, 0
  %cond = select i1 %cmp158, ptr @.str.78, ptr @.str.79
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %conv155, ptr noundef nonnull %cond) #11
  br label %do.body164

do.body164:                                       ; preds = %do.end152, %do.body146.do.body164_crit_edge
  %120 = load i32, ptr @ivtvfb_debug, align 4
  %and165 = and i32 %120, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %do.body164.do.end180_crit_edge, label %do.end170

do.body164.do.end180_crit_edge:                   ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end180

do.end170:                                        ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #10
  %instance172 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %121 = ptrtoint ptr %instance172 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %instance172, align 4
  %conv173 = zext i16 %122 to i32
  %123 = ptrtoint ptr %nonstd to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %nonstd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool175.not = icmp eq i32 %124, 0
  %cond176 = select i1 %tobool175.not, ptr @.str.84, ptr @.str.83
  %call177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %conv173, ptr noundef nonnull %cond176) #11
  br label %do.end180

do.end180:                                        ; preds = %do.end170, %do.body164.do.end180_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_vapi(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtvfb_callback_cleanup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %v4l2_cap = getelementptr i8, ptr %1, i32 -104
  %2 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v4l2_cap, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %osd_info = getelementptr i8, ptr %1, i32 85076
  %4 = ptrtoint ptr %osd_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %osd_info, align 8
  %device_caps = getelementptr i8, ptr %1, i32 14620
  %6 = ptrtoint ptr %device_caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_caps, align 8
  %and1 = and i32 %7, -513
  store i32 %and1, ptr %device_caps, align 8
  %device_caps5 = getelementptr i8, ptr %1, i32 9628
  %8 = ptrtoint ptr %device_caps5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_caps5, align 8
  %and6 = and i32 %9, -513
  store i32 %and6, ptr %device_caps5, align 8
  %and8 = and i32 %3, -513
  %10 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and8, ptr %v4l2_cap, align 4
  %ivtvfb_info = getelementptr inbounds %struct.osd_info, ptr %5, i32 0, i32 14
  tail call void @unregister_framebuffer(ptr noundef %ivtvfb_info) #8
  %instance = getelementptr i8, ptr %1, i32 856
  %11 = ptrtoint ptr %instance to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %instance, align 4
  %conv = zext i16 %12 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, i32 noundef %conv, i32 noundef %conv) #11
  %ivtvfb_restore = getelementptr i8, ptr %1, i32 85080
  %13 = ptrtoint ptr %ivtvfb_restore to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ivtvfb_restore, align 4
  %par.i = getelementptr inbounds %struct.osd_info, ptr %5, i32 0, i32 14, i32 30
  %14 = ptrtoint ptr %par.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %par.i, align 4
  %16 = load i32, ptr @ivtvfb_debug, align 4
  %and.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.do.end3.i_crit_edge, label %do.end.i

if.then.do.end3.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %instance.i = getelementptr inbounds %struct.ivtv, ptr %15, i32 0, i32 25
  %17 = ptrtoint ptr %instance.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %instance.i, align 4
  %conv.i = zext i16 %18 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %conv.i, i32 noundef 2) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then.do.end3.i_crit_edge
  %call34.i = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %15, i32 noundef 69, i32 noundef 1, i32 noundef 0) #8
  %subdevs40.i = getelementptr inbounds %struct.ivtv, ptr %15, i32 0, i32 19, i32 2
  %19 = ptrtoint ptr %subdevs40.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn164172.i = load ptr, ptr %subdevs40.i, align 4
  %cmp48.not174.i = icmp eq ptr %.pn164172.i, %subdevs40.i
  br i1 %cmp48.not174.i, label %do.end3.i.ivtvfb_blank.exit_crit_edge, label %do.end3.i.for.body51.i_crit_edge

do.end3.i.for.body51.i_crit_edge:                 ; preds = %do.end3.i
  br label %for.body51.i

do.end3.i.ivtvfb_blank.exit_crit_edge:            ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtvfb_blank.exit

for.body51.i:                                     ; preds = %for.inc70.i.for.body51.i_crit_edge, %do.end3.i.for.body51.i_crit_edge
  %.pn164175.i = phi ptr [ %.pn164.i, %for.inc70.i.for.body51.i_crit_edge ], [ %.pn164172.i, %do.end3.i.for.body51.i_crit_edge ]
  %__sd36.0176.i = getelementptr i8, ptr %.pn164175.i, i32 -80
  %grp_id52.i = getelementptr i8, ptr %.pn164175.i, i32 68
  %20 = ptrtoint ptr %grp_id52.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %grp_id52.i, align 4
  %and53.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %for.body51.i.for.inc70.i_crit_edge, label %land.lhs.true55.i

for.body51.i.for.inc70.i_crit_edge:               ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc70.i

land.lhs.true55.i:                                ; preds = %for.body51.i
  %ops56.i = getelementptr i8, ptr %.pn164175.i, i32 24
  %22 = ptrtoint ptr %ops56.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops56.i, align 4
  %video57.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %video57.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %video57.i, align 4
  %tobool58.not.i = icmp eq ptr %25, null
  br i1 %tobool58.not.i, label %land.lhs.true55.i.for.inc70.i_crit_edge, label %land.lhs.true59.i

land.lhs.true55.i.for.inc70.i_crit_edge:          ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc70.i

land.lhs.true59.i:                                ; preds = %land.lhs.true55.i
  %s_stream62.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %s_stream62.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_stream62.i, align 4
  %tobool63.not.i = icmp eq ptr %27, null
  br i1 %tobool63.not.i, label %land.lhs.true59.i.for.inc70.i_crit_edge, label %if.then64.i

land.lhs.true59.i.for.inc70.i_crit_edge:          ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc70.i

if.then64.i:                                      ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #10
  %call68.i = tail call i32 %27(ptr noundef %__sd36.0176.i, i32 noundef 1) #8
  br label %for.inc70.i

for.inc70.i:                                      ; preds = %if.then64.i, %land.lhs.true59.i.for.inc70.i_crit_edge, %land.lhs.true55.i.for.inc70.i_crit_edge, %for.body51.i.for.inc70.i_crit_edge
  %28 = ptrtoint ptr %.pn164175.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn164.i = load ptr, ptr %.pn164175.i, align 4
  %cmp48.not.i = icmp eq ptr %.pn164.i, %subdevs40.i
  br i1 %cmp48.not.i, label %for.inc70.i.ivtvfb_blank.exit_crit_edge, label %for.inc70.i.for.body51.i_crit_edge

for.inc70.i.for.body51.i_crit_edge:               ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body51.i

for.inc70.i.ivtvfb_blank.exit_crit_edge:          ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtvfb_blank.exit

ivtvfb_blank.exit:                                ; preds = %for.inc70.i.ivtvfb_blank.exit_crit_edge, %do.end3.i.ivtvfb_blank.exit_crit_edge
  %osd_info.i = getelementptr inbounds %struct.ivtv, ptr %15, i32 0, i32 99
  %29 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %osd_info.i, align 8
  %blank_cur.i = getelementptr inbounds %struct.osd_info, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %blank_cur.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %blank_cur.i, align 4
  %32 = ptrtoint ptr %osd_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %osd_info, align 8
  %len.i = getelementptr inbounds %struct.osd_info, ptr %33, i32 0, i32 14, i32 12, i32 1
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i27 = icmp eq i32 %35, 0
  br i1 %tobool.not.i27, label %ivtvfb_blank.exit.ivtvfb_release_buffers.exit_crit_edge, label %if.then.i

ivtvfb_blank.exit.ivtvfb_release_buffers.exit_crit_edge: ; preds = %ivtvfb_blank.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtvfb_release_buffers.exit

if.then.i:                                        ; preds = %ivtvfb_blank.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cmap.i = getelementptr inbounds %struct.osd_info, ptr %33, i32 0, i32 14, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i) #8
  br label %ivtvfb_release_buffers.exit

ivtvfb_release_buffers.exit:                      ; preds = %if.then.i, %ivtvfb_blank.exit.ivtvfb_release_buffers.exit_crit_edge
  %pseudo_palette.i = getelementptr inbounds %struct.osd_info, ptr %33, i32 0, i32 14, i32 27
  %36 = ptrtoint ptr %pseudo_palette.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pseudo_palette.i, align 4
  tail call void @kfree(ptr noundef %37) #8
  tail call void @kfree(ptr noundef %33) #8
  %38 = ptrtoint ptr %osd_info to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %osd_info, align 8
  %osd_video_pbase = getelementptr i8, ptr %1, i32 85020
  %39 = ptrtoint ptr %osd_video_pbase to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %osd_video_pbase, align 8
  br label %if.end

if.end:                                           ; preds = %ivtvfb_release_buffers.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !72, !73, !75, !76, !77, !78, !79, !80, !81, !83, !84, !85, !86, !87, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !202, !204, !205, !206, !207, !208, !210, !211, !212, !213, !215, !217, !219, !220, !222, !224, !226, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !284, !286, !287, !288, !289, !291, !292, !293, !295, !296, !298, !299, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314, !315, !316, !317, !319, !320, !321, !323, !324, !325, !326, !328, !329, !330, !331, !333, !334, !335}
!llvm.named.register.sp = !{!336}
!llvm.module.flags = !{!337, !338, !339, !340, !341, !342, !343, !344}
!llvm.ident = !{!345}

!0 = !{ptr @__param_ivtvfb_card_id, !1, !"__param_ivtvfb_card_id", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_ivtvfb_card_idtype309, !1, !"__UNIQUE_ID_ivtvfb_card_idtype309", i1 false, i1 false}
!3 = !{ptr @__param_debug, !4, !"__param_debug", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 55, i32 1}
!5 = !{ptr @__UNIQUE_ID_debugtype310, !4, !"__UNIQUE_ID_debugtype310", i1 false, i1 false}
!6 = !{ptr @__param_force_pat, !7, !"__param_force_pat", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 56, i32 1}
!8 = !{ptr @__UNIQUE_ID_force_pattype311, !7, !"__UNIQUE_ID_force_pattype311", i1 false, i1 false}
!9 = !{ptr @__param_osd_laced, !10, !"__param_osd_laced", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 57, i32 1}
!11 = !{ptr @__UNIQUE_ID_osd_lacedtype312, !10, !"__UNIQUE_ID_osd_lacedtype312", i1 false, i1 false}
!12 = !{ptr @__param_osd_depth, !13, !"__param_osd_depth", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 58, i32 1}
!14 = !{ptr @__UNIQUE_ID_osd_depthtype313, !13, !"__UNIQUE_ID_osd_depthtype313", i1 false, i1 false}
!15 = !{ptr @__param_osd_upper, !16, !"__param_osd_upper", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 59, i32 1}
!17 = !{ptr @__UNIQUE_ID_osd_uppertype314, !16, !"__UNIQUE_ID_osd_uppertype314", i1 false, i1 false}
!18 = !{ptr @__param_osd_left, !19, !"__param_osd_left", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 60, i32 1}
!20 = !{ptr @__UNIQUE_ID_osd_lefttype315, !19, !"__UNIQUE_ID_osd_lefttype315", i1 false, i1 false}
!21 = !{ptr @__param_osd_yres, !22, !"__param_osd_yres", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 61, i32 1}
!23 = !{ptr @__UNIQUE_ID_osd_yrestype316, !22, !"__UNIQUE_ID_osd_yrestype316", i1 false, i1 false}
!24 = !{ptr @__param_osd_xres, !25, !"__param_osd_xres", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 62, i32 1}
!26 = !{ptr @__UNIQUE_ID_osd_xrestype317, !25, !"__UNIQUE_ID_osd_xrestype317", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_ivtvfb_card_id318, !28, !"__UNIQUE_ID_ivtvfb_card_id318", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 64, i32 1}
!29 = !{ptr @__UNIQUE_ID_debug319, !30, !"__UNIQUE_ID_debug319", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 68, i32 1}
!31 = !{ptr @__UNIQUE_ID_force_pat320, !32, !"__UNIQUE_ID_force_pat320", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 72, i32 1}
!33 = !{ptr @__UNIQUE_ID_osd_laced321, !34, !"__UNIQUE_ID_osd_laced321", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 79, i32 1}
!35 = !{ptr @__UNIQUE_ID_osd_depth322, !36, !"__UNIQUE_ID_osd_depth322", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 85, i32 1}
!37 = !{ptr @__UNIQUE_ID_osd_upper323, !38, !"__UNIQUE_ID_osd_upper323", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 89, i32 1}
!39 = !{ptr @__UNIQUE_ID_osd_left324, !40, !"__UNIQUE_ID_osd_left324", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 93, i32 1}
!41 = !{ptr @__UNIQUE_ID_osd_yres325, !42, !"__UNIQUE_ID_osd_yres325", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 97, i32 1}
!43 = !{ptr @__UNIQUE_ID_osd_xres326, !44, !"__UNIQUE_ID_osd_xres326", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 102, i32 1}
!45 = !{ptr @__UNIQUE_ID_author327, !46, !"__UNIQUE_ID_author327", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 106, i32 1}
!47 = !{ptr @__UNIQUE_ID_file328, !48, !"__UNIQUE_ID_file328", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 107, i32 1}
!49 = !{ptr @__UNIQUE_ID_license329, !48, !"__UNIQUE_ID_license329", i1 false, i1 false}
!50 = !{ptr @__initcall__kmod_ivtvfb__330_1303_ivtvfb_init6, !51, !"__initcall__kmod_ivtvfb__330_1303_ivtvfb_init6", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1303, i32 1}
!52 = !{ptr @__exitcall_ivtvfb_cleanup, !53, !"__exitcall_ivtvfb_cleanup", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1304, i32 1}
!54 = !{ptr @ivtvfb_debug, !55, !"ivtvfb_debug", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 45, i32 12}
!56 = !{ptr @osd_laced, !57, !"osd_laced", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 47, i32 13}
!58 = !{ptr @osd_depth, !59, !"osd_depth", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 48, i32 12}
!60 = !{ptr @osd_upper, !61, !"osd_upper", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 49, i32 12}
!62 = !{ptr @osd_left, !63, !"osd_left", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 50, i32 12}
!64 = !{ptr @osd_yres, !65, !"osd_yres", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 51, i32 21}
!66 = !{ptr @osd_xres, !67, !"osd_xres", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 52, i32 21}
!68 = !{ptr @__param_str_ivtvfb_card_id, !1, !"__param_str_ivtvfb_card_id", i1 false, i1 false}
!69 = !{ptr @ivtvfb_card_id, !70, !"ivtvfb_card_id", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 44, i32 12}
!71 = !{ptr @__param_str_debug, !4, !"__param_str_debug", i1 false, i1 false}
!72 = !{ptr @__param_str_force_pat, !7, !"__param_str_force_pat", i1 false, i1 false}
!73 = !{ptr @ivtvfb_force_pat, !74, !"ivtvfb_force_pat", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 46, i32 13}
!75 = !{ptr @__param_str_osd_laced, !10, !"__param_str_osd_laced", i1 false, i1 false}
!76 = !{ptr @__param_str_osd_depth, !13, !"__param_str_osd_depth", i1 false, i1 false}
!77 = !{ptr @__param_str_osd_upper, !16, !"__param_str_osd_upper", i1 false, i1 false}
!78 = !{ptr @__param_str_osd_left, !19, !"__param_str_osd_left", i1 false, i1 false}
!79 = !{ptr @__param_str_osd_yres, !22, !"__param_str_osd_yres", i1 false, i1 false}
!80 = !{ptr @__param_str_osd_xres, !25, !"__param_str_osd_xres", i1 false, i1 false}
!81 = !{ptr @.str, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1276, i32 3}
!83 = !{ptr @.str.1, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.2, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ivtvfb_init._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @ivtvfb_init._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.3, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1281, i32 20}
!89 = !{ptr @.str.5, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1285, i32 3}
!91 = !{ptr @ivtvfb_init._entry.4, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ivtvfb_init._entry_ptr.6, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.7, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1238, i32 4}
!95 = !{ptr @.str.8, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ivtvfb_callback_init._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ivtvfb_callback_init._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.9, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1175, i32 3}
!100 = !{ptr @.str.10, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ivtvfb_init_card._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @ivtvfb_init_card._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.12, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1182, i32 3}
!105 = !{ptr @ivtvfb_init_card._entry.11, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ivtvfb_init_card._entry_ptr.13, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.14, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1093, i32 3}
!109 = !{ptr @.str.15, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ivtvfb_init_io._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @ivtvfb_init_io._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.17, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1100, i32 3}
!114 = !{ptr @ivtvfb_init_io._entry.16, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ivtvfb_init_io._entry_ptr.18, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.20, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1113, i32 3}
!118 = !{ptr @ivtvfb_init_io._entry.19, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ivtvfb_init_io._entry_ptr.21, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.23, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1118, i32 2}
!122 = !{ptr @ivtvfb_init_io._entry.22, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ivtvfb_init_io._entry_ptr.24, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.25, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 198, i32 27}
!126 = !{ptr @.str.26, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 990, i32 3}
!128 = !{ptr @.str.27, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ivtvfb_init_vidmode._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @ivtvfb_init_vidmode._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.29, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1015, i32 3}
!133 = !{ptr @ivtvfb_init_vidmode._entry.28, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @ivtvfb_init_vidmode._entry_ptr.30, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.32, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1066, i32 3}
!137 = !{ptr @ivtvfb_init_vidmode._entry.31, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @ivtvfb_init_vidmode._entry_ptr.33, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.35, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1075, i32 3}
!141 = !{ptr @ivtvfb_init_vidmode._entry.34, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @ivtvfb_init_vidmode._entry_ptr.36, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.37, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 642, i32 2}
!145 = !{ptr @.str.38, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @_ivtvfb_check_var._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @_ivtvfb_check_var._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.40, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 704, i32 3}
!150 = !{ptr @_ivtvfb_check_var._entry.39, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @_ivtvfb_check_var._entry_ptr.41, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.43, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 710, i32 3}
!154 = !{ptr @_ivtvfb_check_var._entry.42, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @_ivtvfb_check_var._entry_ptr.44, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.46, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 720, i32 3}
!158 = !{ptr @_ivtvfb_check_var._entry.45, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @_ivtvfb_check_var._entry_ptr.47, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.49, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 729, i32 4}
!162 = !{ptr @_ivtvfb_check_var._entry.48, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @_ivtvfb_check_var._entry_ptr.50, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.52, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 733, i32 4}
!166 = !{ptr @_ivtvfb_check_var._entry.51, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @_ivtvfb_check_var._entry_ptr.53, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.55, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 740, i32 4}
!170 = !{ptr @_ivtvfb_check_var._entry.54, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @_ivtvfb_check_var._entry_ptr.56, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.58, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 744, i32 4}
!174 = !{ptr @_ivtvfb_check_var._entry.57, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @_ivtvfb_check_var._entry_ptr.59, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.61, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 751, i32 3}
!178 = !{ptr @_ivtvfb_check_var._entry.60, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @_ivtvfb_check_var._entry_ptr.62, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.64, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 758, i32 3}
!182 = !{ptr @_ivtvfb_check_var._entry.63, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @_ivtvfb_check_var._entry_ptr.65, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.67, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 765, i32 3}
!186 = !{ptr @_ivtvfb_check_var._entry.66, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @_ivtvfb_check_var._entry_ptr.68, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.70, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 799, i32 2}
!190 = !{ptr @_ivtvfb_check_var._entry.69, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @_ivtvfb_check_var._entry_ptr.71, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.73, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 804, i32 2}
!194 = !{ptr @_ivtvfb_check_var._entry.72, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @_ivtvfb_check_var._entry_ptr.74, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.76, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 807, i32 2}
!198 = !{ptr @_ivtvfb_check_var._entry.75, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @_ivtvfb_check_var._entry_ptr.77, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.78, !197, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.79, !197, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.81, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 809, i32 2}
!204 = !{ptr @_ivtvfb_check_var._entry.80, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @_ivtvfb_check_var._entry_ptr.82, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.83, !203, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.84, !203, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.85, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 618, i32 2}
!210 = !{ptr @.str.86, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @ivtvfb_get_fix._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @ivtvfb_get_fix._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.87, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 620, i32 19}
!215 = !{ptr @ivtvfb_ops, !216, !"ivtvfb_ops", i1 false, i1 false}
!216 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 928, i32 28}
!217 = distinct !{null, !218, !"__already_done", i1 false, i1 false}
!218 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!219 = !{ptr @.str.88, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.89, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!222 = !{ptr @.str.90, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!224 = !{ptr @.str.91, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 284, i32 3}
!226 = !{ptr @.str.92, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @ivtvfb_prep_dec_dma_to_device._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @ivtvfb_prep_dec_dma_to_device._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.94, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 291, i32 2}
!231 = !{ptr @ivtvfb_prep_dec_dma_to_device._entry.93, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @ivtvfb_prep_dec_dma_to_device._entry_ptr.95, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.97, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 314, i32 3}
!235 = !{ptr @ivtvfb_prep_dec_dma_to_device._entry.96, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @ivtvfb_prep_dec_dma_to_device._entry_ptr.98, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.99, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 816, i32 2}
!239 = !{ptr @ivtvfb_check_var._entry, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @ivtvfb_check_var._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.100, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 484, i32 4}
!243 = !{ptr @.str.101, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @ivtvfb_ioctl._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @ivtvfb_ioctl._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.103, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 492, i32 4}
!248 = !{ptr @ivtvfb_ioctl._entry.102, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @ivtvfb_ioctl._entry_ptr.104, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.105, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 329, i32 3}
!252 = !{ptr @.str.106, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @ivtvfb_prep_frame._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @ivtvfb_prep_frame._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.108, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 335, i32 3}
!257 = !{ptr @ivtvfb_prep_frame._entry.107, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @ivtvfb_prep_frame._entry_ptr.109, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.111, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 342, i32 3}
!261 = !{ptr @ivtvfb_prep_frame._entry.110, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @ivtvfb_prep_frame._entry_ptr.112, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.114, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 346, i32 3}
!265 = !{ptr @ivtvfb_prep_frame._entry.113, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @ivtvfb_prep_frame._entry_ptr.115, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.117, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 349, i32 3}
!269 = !{ptr @ivtvfb_prep_frame._entry.116, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @ivtvfb_prep_frame._entry_ptr.118, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.120, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 353, i32 3}
!273 = !{ptr @ivtvfb_prep_frame._entry.119, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @ivtvfb_prep_frame._entry_ptr.121, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.123, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 355, i32 3}
!277 = !{ptr @ivtvfb_prep_frame._entry.122, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @ivtvfb_prep_frame._entry_ptr.124, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.125, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 848, i32 2}
!281 = !{ptr @.str.126, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @ivtvfb_set_par._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @ivtvfb_set_par._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.127, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 507, i32 2}
!286 = !{ptr @.str.128, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @ivtvfb_set_var._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @ivtvfb_set_var._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.130, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 535, i32 5}
!291 = !{ptr @ivtvfb_set_var._entry.129, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @ivtvfb_set_var._entry_ptr.131, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @ivtvfb_set_var._entry.132, !294, !"_entry", i1 false, i1 false}
!294 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 539, i32 4}
!295 = !{ptr @ivtvfb_set_var._entry_ptr.133, !294, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.135, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 561, i32 4}
!298 = !{ptr @ivtvfb_set_var._entry.134, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @ivtvfb_set_var._entry_ptr.136, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @ivtvfb_set_var._entry.137, !301, !"_entry", i1 false, i1 false}
!301 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 599, i32 2}
!302 = !{ptr @ivtvfb_set_var._entry_ptr.138, !301, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @ivtvfb_set_var._entry.139, !304, !"_entry", i1 false, i1 false}
!304 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 604, i32 2}
!305 = !{ptr @ivtvfb_set_var._entry_ptr.140, !304, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @ivtvfb_set_var._entry.141, !307, !"_entry", i1 false, i1 false}
!307 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 607, i32 2}
!308 = !{ptr @ivtvfb_set_var._entry_ptr.142, !307, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @ivtvfb_set_var._entry.143, !310, !"_entry", i1 false, i1 false}
!310 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 609, i32 2}
!311 = !{ptr @ivtvfb_set_var._entry_ptr.144, !310, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.145, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 247, i32 3}
!314 = !{ptr @.str.146, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @ivtvfb_set_display_window._entry, !313, !"_entry", i1 false, i1 false}
!316 = !{ptr @ivtvfb_set_display_window._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.148, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 253, i32 3}
!319 = !{ptr @ivtvfb_set_display_window._entry.147, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @ivtvfb_set_display_window._entry_ptr.149, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.150, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 907, i32 2}
!323 = !{ptr @.str.151, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @ivtvfb_blank._entry, !322, !"_entry", i1 false, i1 false}
!325 = !{ptr @ivtvfb_blank._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.152, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1296, i32 2}
!328 = !{ptr @.str.153, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @ivtvfb_cleanup._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @ivtvfb_cleanup._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.154, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/pci/ivtv/ivtvfb.c", i32 1259, i32 3}
!333 = !{ptr @.str.155, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @ivtvfb_callback_cleanup._entry, !332, !"_entry", i1 false, i1 false}
!335 = !{ptr @ivtvfb_callback_cleanup._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!336 = !{!"sp"}
!337 = !{i32 1, !"wchar_size", i32 2}
!338 = !{i32 1, !"min_enum_size", i32 4}
!339 = !{i32 8, !"branch-target-enforcement", i32 0}
!340 = !{i32 8, !"sign-return-address", i32 0}
!341 = !{i32 8, !"sign-return-address-all", i32 0}
!342 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!343 = !{i32 7, !"uwtable", i32 1}
!344 = !{i32 7, !"frame-pointer", i32 2}
!345 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!346 = !{i8 0, i8 2}
!347 = !{i64 2157299619}
!348 = !{i64 5782685}
!349 = !{i64 2157300062}
!350 = !{i64 2157261084}
!351 = !{i64 2157280172}
!352 = !{i64 2157280649}
!353 = !{i64 2157281163}
!354 = !{i64 2152189267, i64 2152189292}
!355 = !{!"branch_weights", i32 2000, i32 1}
!356 = !{i64 4680761}
!357 = !{i64 4680958}
!358 = !{i64 2152166191}
!359 = !{i64 2157263356}
!360 = !{i64 2157263819}
!361 = !{i64 5783103}
!362 = !{i64 2157200537}
!363 = !{i64 2152189948, i64 2152189973}
!364 = !{!"auto-init"}
!365 = !{i64 2157194221, i64 2157194246}
!366 = !{i64 2157175858}
!367 = !{i64 2157176602}
