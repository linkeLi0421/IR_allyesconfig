; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-ioctl.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_sliced_vbi_format = type { i16, [2 x [24 x i16]], i32, [2 x i32] }
%struct.ivtv = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ivtv_options, %struct.v4l2_device, %struct.cx2341x_handler, %struct.anon.120, %struct.anon.121, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i8, i8, %struct.spinlock, %struct.mutex, [9 x i32], [9 x %struct.ivtv_stream], %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.work_struct, i32, i32, %struct.kthread_worker, ptr, %struct.kthread_work, %struct.spinlock, i32, i32, i32, i32, i32, %struct.ivtv_user_dma, %struct.timer_list, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data, [256 x %struct.ivtv_api_cache], %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, %struct.mutex, %struct.IR_i2c_init_data, i32, i32, i32, i32, [400 x %struct.v4l2_enc_idx_entry], i32, i32, i32, i8, i64, i64, [3 x i32], i32, i32, %struct.vbi_info, %struct.yuv_playback_info, i32, i32, i32, i32, i8, i32, %struct.v4l2_rect, %struct.v4l2_rect, ptr, ptr }
%struct.ivtv_options = type { [9 x i32], i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.112, %struct.anon.113, %struct.anon.114, %struct.anon.115, %struct.anon.116, %struct.anon.117, %struct.anon.118, %struct.anon.119 }
%struct.anon.112 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.113 = type { ptr, ptr }
%struct.anon.114 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.115 = type { ptr, ptr }
%struct.anon.116 = type { ptr, ptr, ptr }
%struct.anon.117 = type { ptr, ptr }
%struct.anon.118 = type { ptr, ptr }
%struct.anon.119 = type { ptr, ptr, ptr, ptr }
%struct.anon.120 = type { ptr, ptr }
%struct.anon.121 = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.ivtv_stream = type { %struct.video_device, ptr, ptr, i32, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, i16, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ivtv_queue = type { %struct.list_head, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ivtv_user_dma = type { %struct.mutex, i32, [704 x ptr], [704 x ptr], [704 x %struct.ivtv_sg_element], i32, i32, [704 x %struct.scatterlist] }
%struct.ivtv_sg_element = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ivtv_mailbox_data = type { ptr, i32, i8 }
%struct.ivtv_api_cache = type { i32, [16 x i32] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.vbi_info = type { i32, i8, i8, i32, i8, i8, [2 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_format, ptr, i32, i32, [256 x %struct.vbi_cc], i32, i8, i32, i8, %struct.vbi_vps, [36 x %struct.v4l2_sliced_vbi_data], [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], %struct.ivtv_buffer, i32 }
%struct.v4l2_format = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.90, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.90 = type { i8 }
%struct.vbi_cc = type { [2 x i8], [2 x i8] }
%struct.vbi_vps = type { [5 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.ivtv_buffer = type { %struct.list_head, i32, i16, i16, ptr, i32, i32 }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, [8 x %struct.yuv_frame_info], %struct.yuv_frame_info, %struct.yuv_frame_info, ptr, i32, i32, i8, i8, %struct.v4l2_rect, i32, i32, i8 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.ivtv_open_id = type { %struct.v4l2_fh, i32, i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.ivtv_card = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [6 x %struct.ivtv_card_video_input], [3 x %struct.ivtv_card_audio_input], %struct.ivtv_card_audio_input, i32, ptr, i8, i8, %struct.ivtv_gpio_init, %struct.ivtv_gpio_video_input, %struct.ivtv_gpio_audio_input, %struct.ivtv_gpio_audio_mute, %struct.ivtv_gpio_audio_mode, %struct.ivtv_gpio_audio_freq, %struct.ivtv_gpio_audio_detect, [3 x %struct.ivtv_card_tuner], ptr, ptr }
%struct.ivtv_card_video_input = type { i8, i8, i16 }
%struct.ivtv_card_audio_input = type { i8, i32, i16 }
%struct.ivtv_gpio_init = type { i16, i16 }
%struct.ivtv_gpio_video_input = type { i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_input = type { i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_mute = type { i16, i16 }
%struct.ivtv_gpio_audio_mode = type { i16, i16, i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_freq = type { i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_detect = type { i16, i16 }
%struct.ivtv_card_tuner = type { i64, i32 }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.v4l2_subdev_vbi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.109, i16, i16, i16, [10 x i16] }
%union.anon.109 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.94 }
%struct.anon.94 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ivtv_card_output = type { [32 x i8], i16 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_enc_idx = type { i32, i32, [4 x i32], [64 x %struct.v4l2_enc_idx_entry] }
%struct.v4l2_encoder_cmd = type { i32, i32, %union.anon.98 }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { [8 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_sliced_vbi_cap = type { i16, [2 x [24 x i16]], i32, [3 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }
%struct.v4l2_output = type { i32, [32 x i8], i32, i32, i32, i64, i32, [3 x i32] }
%struct.v4l2_audioout = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.87 }
%union.anon.87 = type { i32, [28 x i8] }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ivtv_dma_frame = type { i32, i32, ptr, ptr, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32 }
%struct.v4l2_decoder_cmd = type { i32, i32, %union.anon.100 }
%union.anon.100 = type { %struct.anon.101, [56 x i8] }
%struct.anon.101 = type { i64 }
%struct.anon.102 = type { i32, i32 }

@ivtv_debug = external dso_local local_unnamed_addr global i32, align 4
@ivtv_set_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016%s:  info: Setting Speed to 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtv_set_speed\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/pci/ivtv/ivtv-ioctl.c\00", [60 x i8] zeroinitializer }, align 32
@ivtv_set_speed._entry_ptr = internal global ptr @ivtv_set_speed._entry, section ".printk_index", align 4
@ivtv_s_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:  info: Input unchanged\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ivtv_s_input\00", [19 x i8] zeroinitializer }, align 32
@ivtv_s_input._entry_ptr = internal global ptr @ivtv_s_input._entry, section ".printk_index", align 4
@ivtv_s_input._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  info: Changing input from %d to %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ivtv_s_input._entry_ptr.7 = internal global ptr @ivtv_s_input._entry.5, section ".printk_index", align 4
@ivtv_s_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  info: v4l2 ioctl: set frequency %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ivtv_s_frequency\00", [47 x i8] zeroinitializer }, align 32
@ivtv_s_frequency._entry_ptr = internal global ptr @ivtv_s_frequency._entry, section ".printk_index", align 4
@ivtv_s_std_dec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: Mode change failed to sync to decoder\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtv_s_std_dec\00", [17 x i8] zeroinitializer }, align 32
@ivtv_s_std_dec._entry_ptr = internal global ptr @ivtv_s_std_dec._entry, section ".printk_index", align 4
@ivtv_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @ivtv_querycap, ptr @ivtv_enum_fmt_vid_cap, ptr null, ptr @ivtv_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @ivtv_g_fmt_vid_cap, ptr null, ptr @ivtv_g_fmt_vid_out, ptr @ivtv_g_fmt_vid_out_overlay, ptr @ivtv_g_fmt_vbi_cap, ptr null, ptr @ivtv_g_fmt_sliced_vbi_cap, ptr @ivtv_g_fmt_sliced_vbi_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ivtv_s_fmt_vid_cap, ptr null, ptr @ivtv_s_fmt_vid_out, ptr @ivtv_s_fmt_vid_out_overlay, ptr @ivtv_s_fmt_vbi_cap, ptr null, ptr @ivtv_s_fmt_sliced_vbi_cap, ptr @ivtv_s_fmt_sliced_vbi_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ivtv_try_fmt_vid_cap, ptr null, ptr @ivtv_try_fmt_vid_out, ptr @ivtv_try_fmt_vid_out_overlay, ptr @ivtv_try_fmt_vbi_cap, ptr null, ptr @ivtv_try_fmt_sliced_vbi_cap, ptr @ivtv_try_fmt_sliced_vbi_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ivtv_overlay, ptr @ivtv_g_fbuf, ptr @ivtv_s_fbuf, ptr null, ptr null, ptr @ivtv_g_std, ptr @ivtv_s_std, ptr null, ptr @ivtv_enum_input, ptr @ivtv_g_input, ptr @ivtv_s_input, ptr @ivtv_enum_output, ptr @ivtv_g_output, ptr @ivtv_s_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ivtv_enumaudio, ptr @ivtv_g_audio, ptr @ivtv_s_audio, ptr @ivtv_enumaudout, ptr @ivtv_g_audout, ptr @ivtv_s_audout, ptr null, ptr null, ptr @ivtv_g_pixelaspect, ptr @ivtv_g_selection, ptr @ivtv_s_selection, ptr null, ptr null, ptr @ivtv_g_enc_index, ptr @ivtv_encoder_cmd, ptr @ivtv_try_encoder_cmd, ptr @ivtv_decoder_cmd, ptr @ivtv_try_decoder_cmd, ptr null, ptr null, ptr @ivtv_g_tuner, ptr @ivtv_s_tuner, ptr @ivtv_g_frequency, ptr @ivtv_s_frequency, ptr null, ptr @ivtv_g_sliced_vbi_cap, ptr @ivtv_log_status, ptr null, ptr @ivtv_g_register, ptr @ivtv_s_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ivtv_subscribe_event, ptr @v4l2_event_unsubscribe, ptr @ivtv_default }, [120 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ivtv\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@ivtv_enum_fmt_vid_cap.hm12 = internal constant { %struct.v4l2_fmtdesc, [32 x i8] } { %struct.v4l2_fmtdesc { i32 0, i32 1, i32 0, [32 x i8] c"HM12 (YUV 4:2:0)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 842091848, i32 0, [3 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ivtv_enum_fmt_vid_cap.mpeg = internal constant { %struct.v4l2_fmtdesc, [32 x i8] } { %struct.v4l2_fmtdesc { i32 0, i32 1, i32 1, [32 x i8] c"MPEG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1195724877, i32 0, [3 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ivtv_enum_fmt_vid_out.hm12 = internal constant { %struct.v4l2_fmtdesc, [32 x i8] } { %struct.v4l2_fmtdesc { i32 0, i32 2, i32 0, [32 x i8] c"HM12 (YUV 4:2:0)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 842091848, i32 0, [3 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ivtv_enum_fmt_vid_out.mpeg = internal constant { %struct.v4l2_fmtdesc, [32 x i8] } { %struct.v4l2_fmtdesc { i32 0, i32 2, i32 1, [32 x i8] c"MPEG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1195724877, i32 0, [3 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@ivtv_g_fbuf.pixel_format = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 944521552, i32 1346520914, i32 1329743698, i32 875836498, i32 876758866, i32 0, i32 0, i32 0, i32 944521552, i32 1347835225, i32 1331058009, i32 875836505, i32 878073177, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@ivtv_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:  info: Switching standard to %llx.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ivtv_s_std\00", [21 x i8] zeroinitializer }, align 32
@ivtv_s_std._entry_ptr = internal global ptr @ivtv_s_std._entry, section ".printk_index", align 4
@ivtv_s_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s:  info: Output unchanged\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ivtv_s_output\00", [18 x i8] zeroinitializer }, align 32
@ivtv_s_output._entry_ptr = internal global ptr @ivtv_s_output._entry, section ".printk_index", align 4
@ivtv_s_output._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s:  info: Changing output from %d to %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ivtv_s_output._entry_ptr.20 = internal global ptr @ivtv_s_output._entry.18, section ".printk_index", align 4
@ivtv_encoder_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  ioctl: V4L2_ENC_CMD_START\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ivtv_encoder_cmd\00", [47 x i8] zeroinitializer }, align 32
@ivtv_encoder_cmd._entry_ptr = internal global ptr @ivtv_encoder_cmd._entry, section ".printk_index", align 4
@ivtv_encoder_cmd._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s:  ioctl: V4L2_ENC_CMD_STOP\0A\00", [63 x i8] zeroinitializer }, align 32
@ivtv_encoder_cmd._entry_ptr.25 = internal global ptr @ivtv_encoder_cmd._entry.23, section ".printk_index", align 4
@ivtv_encoder_cmd._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  ioctl: V4L2_ENC_CMD_PAUSE\0A\00", [62 x i8] zeroinitializer }, align 32
@ivtv_encoder_cmd._entry_ptr.28 = internal global ptr @ivtv_encoder_cmd._entry.26, section ".printk_index", align 4
@ivtv_encoder_cmd._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s:  ioctl: V4L2_ENC_CMD_RESUME\0A\00", [61 x i8] zeroinitializer }, align 32
@ivtv_encoder_cmd._entry_ptr.31 = internal global ptr @ivtv_encoder_cmd._entry.29, section ".printk_index", align 4
@ivtv_encoder_cmd._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.2, i32 1322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:  ioctl: Unknown cmd %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ivtv_encoder_cmd._entry_ptr.34 = internal global ptr @ivtv_encoder_cmd._entry.32, section ".printk_index", align 4
@ivtv_try_encoder_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.35, ptr @.str.2, i32 1335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ivtv_try_encoder_cmd\00", [43 x i8] zeroinitializer }, align 32
@ivtv_try_encoder_cmd._entry_ptr = internal global ptr @ivtv_try_encoder_cmd._entry, section ".printk_index", align 4
@ivtv_try_encoder_cmd._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.35, ptr @.str.2, i32 1340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtv_try_encoder_cmd._entry_ptr.37 = internal global ptr @ivtv_try_encoder_cmd._entry.36, section ".printk_index", align 4
@ivtv_try_encoder_cmd._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.35, ptr @.str.2, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtv_try_encoder_cmd._entry_ptr.39 = internal global ptr @ivtv_try_encoder_cmd._entry.38, section ".printk_index", align 4
@ivtv_try_encoder_cmd._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.35, ptr @.str.2, i32 1350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtv_try_encoder_cmd._entry_ptr.41 = internal global ptr @ivtv_try_encoder_cmd._entry.40, section ".printk_index", align 4
@ivtv_try_encoder_cmd._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.35, ptr @.str.2, i32 1354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtv_try_encoder_cmd._entry_ptr.43 = internal global ptr @ivtv_try_encoder_cmd._entry.42, section ".printk_index", align 4
@ivtv_decoder_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s:  ioctl: VIDIOC_DECODER_CMD %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ivtv_decoder_cmd\00", [47 x i8] zeroinitializer }, align 32
@ivtv_decoder_cmd._entry_ptr = internal global ptr @ivtv_decoder_cmd._entry, section ".printk_index", align 4
@ivtv_try_decoder_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s:  ioctl: VIDIOC_TRY_DECODER_CMD %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ivtv_try_decoder_cmd\00", [43 x i8] zeroinitializer }, align 32
@ivtv_try_decoder_cmd._entry_ptr = internal global ptr @ivtv_try_decoder_cmd._entry, section ".printk_index", align 4
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ivtv Radio Tuner\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ivtv TV Tuner\00", [18 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: Version: %s Card: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ivtv_log_status\00", [16 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry_ptr = internal global ptr @ivtv_log_status._entry, section ".printk_index", align 4
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.4.3\00", [26 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.51, ptr @.str.2, i32 1513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: Video Input:  %s\0A\00", [40 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry_ptr.55 = internal global ptr @ivtv_log_status._entry.53, section ".printk_index", align 4
@ivtv_log_status._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.51, ptr @.str.2, i32 1516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: Audio Input:  %s%s\0A\00", [38 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry_ptr.58 = internal global ptr @ivtv_log_status._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" (Bilingual)\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ivtv_log_status.output_modes = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MPEG Streaming\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"YUV Streaming\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"YUV Frames\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Passthrough\00", [20 x i8] zeroinitializer }, align 32
@ivtv_log_status.alpha_mode = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.61, ptr @.str.66, ptr @.str.67, ptr @.str.68], [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Global\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Local\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Global and Local\00", [47 x i8] zeroinitializer }, align 32
@ivtv_log_status.pixel_format = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84], [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ARGB Indexed\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RGB 5:6:5\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ARGB 1:5:5:5\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ARGB 1:4:4:4\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ARGB 8:8:8:8\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"7\00", [30 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AYUV Indexed\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"YUV 5:6:5\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AYUV 1:5:5:5\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AYUV 1:4:4:4\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AYUV 8:8:8:8\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"13\00", [29 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"14\00", [29 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"15\00", [29 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.51, ptr @.str.2, i32 1555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: Video Output: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry_ptr.87 = internal global ptr @ivtv_log_status._entry.85, section ".printk_index", align 4
@ivtv_log_status._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.51, ptr @.str.2, i32 1558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: Output Mode:  %s\0A\00", [40 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry_ptr.90 = internal global ptr @ivtv_log_status._entry.88, section ".printk_index", align 4
@ivtv_log_status._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.51, ptr @.str.2, i32 1564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: Overlay:      %s, Alpha: %s, Pixel Format: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry_ptr.93 = internal global ptr @ivtv_log_status._entry.91, section ".printk_index", align 4
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.51, ptr @.str.2, i32 1567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s: Tuner:  %s\0A\00", [46 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry_ptr.98 = internal global ptr @ivtv_log_status._entry.96, section ".printk_index", align 4
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Radio\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TV\00", [29 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.51, ptr @.str.2, i32 1569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Status flags:    0x%08lx\0A\00", [32 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry_ptr.103 = internal global ptr @ivtv_log_status._entry.101, section ".printk_index", align 4
@ivtv_log_status._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.51, ptr @.str.2, i32 1577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016%s: Stream %s: status 0x%04lx, %d%% of %d KiB (%d buffers) in use\0A\00", [59 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry_ptr.106 = internal global ptr @ivtv_log_status._entry.104, section ".printk_index", align 4
@ivtv_log_status._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.51, ptr @.str.2, i32 1582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Read MPG/VBI: %lld/%lld bytes\0A\00", [59 x i8] zeroinitializer }, align 32
@ivtv_log_status._entry_ptr.109 = internal global ptr @ivtv_log_status._entry.107, section ".printk_index", align 4
@ivtv_decoder_ioctls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 1614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  ioctl: IVTV_IOC_DMA_FRAME\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ivtv_decoder_ioctls\00", [44 x i8] zeroinitializer }, align 32
@ivtv_decoder_ioctls._entry_ptr = internal global ptr @ivtv_decoder_ioctls._entry, section ".printk_index", align 4
@ivtv_decoder_ioctls._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.2, i32 1636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s:  ioctl: IVTV_IOC_PASSTHROUGH_MODE\0A\00", [55 x i8] zeroinitializer }, align 32
@ivtv_decoder_ioctls._entry_ptr.114 = internal global ptr @ivtv_decoder_ioctls._entry.112, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 1024, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 500, i64 1500]
@__sancov_gen_cov_switch_values.119 = internal global [6 x i64] [i64 4, i64 32, i64 1500, i64 2000, i64 4294965296, i64 4294965796]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 9]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 876758866, i64 878073177]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.131 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.132 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.134 = internal global [5 x i64] [i64 3, i64 32, i64 1074026177, i64 1074029670, i64 1077434048]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 1074026177, i64 1077434048]
@__sancov_gen_cov_switch_values.136 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.137 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 1000]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 500, i64 1500]
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 181, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 988, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 996, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1080, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1143, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [15 x i8] c"ivtv_ioctl_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1679, i32 36 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 733, i32 24 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 735, i32 51 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 917, i32 35 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 922, i32 35 }
@___asan_gen_.199 = private unnamed_addr constant [5 x i8] c"hm12\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 944, i32 35 }
@___asan_gen_.202 = private unnamed_addr constant [5 x i8] c"mpeg\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 949, i32 35 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1367, i32 13 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1177, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1041, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1044, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1285, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1290, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1296, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1309, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1322, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1335, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1340, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1345, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1350, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1354, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1591, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1600, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1210, i32 21 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1212, i32 21 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1504, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1513, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1514, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [13 x i8] c"output_modes\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1521, i32 29 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1522, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1523, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1524, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1525, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1526, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant [11 x i8] c"alpha_mode\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1528, i32 29 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1530, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1531, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1532, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant [13 x i8] c"pixel_format\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1534, i32 29 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1535, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1536, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1537, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1538, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1539, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1540, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1541, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1542, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1543, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1544, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1545, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1546, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1547, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1548, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1549, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1550, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1555, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1558, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1561, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1566, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1569, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1575, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1580, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1614, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.485 = private constant [39 x i8] c"../drivers/media/pci/ivtv/ivtv-ioctl.c\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1636, i32 3 }
@llvm.compiler.used = appending global [148 x ptr] [ptr @ivtv_decoder_cmd._entry, ptr @ivtv_decoder_cmd._entry_ptr, ptr @ivtv_decoder_ioctls._entry, ptr @ivtv_decoder_ioctls._entry.112, ptr @ivtv_decoder_ioctls._entry_ptr, ptr @ivtv_decoder_ioctls._entry_ptr.114, ptr @ivtv_encoder_cmd._entry, ptr @ivtv_encoder_cmd._entry.23, ptr @ivtv_encoder_cmd._entry.26, ptr @ivtv_encoder_cmd._entry.29, ptr @ivtv_encoder_cmd._entry.32, ptr @ivtv_encoder_cmd._entry_ptr, ptr @ivtv_encoder_cmd._entry_ptr.25, ptr @ivtv_encoder_cmd._entry_ptr.28, ptr @ivtv_encoder_cmd._entry_ptr.31, ptr @ivtv_encoder_cmd._entry_ptr.34, ptr @ivtv_log_status._entry, ptr @ivtv_log_status._entry.101, ptr @ivtv_log_status._entry.104, ptr @ivtv_log_status._entry.107, ptr @ivtv_log_status._entry.53, ptr @ivtv_log_status._entry.56, ptr @ivtv_log_status._entry.85, ptr @ivtv_log_status._entry.88, ptr @ivtv_log_status._entry.91, ptr @ivtv_log_status._entry.96, ptr @ivtv_log_status._entry_ptr, ptr @ivtv_log_status._entry_ptr.103, ptr @ivtv_log_status._entry_ptr.106, ptr @ivtv_log_status._entry_ptr.109, ptr @ivtv_log_status._entry_ptr.55, ptr @ivtv_log_status._entry_ptr.58, ptr @ivtv_log_status._entry_ptr.87, ptr @ivtv_log_status._entry_ptr.90, ptr @ivtv_log_status._entry_ptr.93, ptr @ivtv_log_status._entry_ptr.98, ptr @ivtv_s_frequency._entry, ptr @ivtv_s_frequency._entry_ptr, ptr @ivtv_s_input._entry, ptr @ivtv_s_input._entry.5, ptr @ivtv_s_input._entry_ptr, ptr @ivtv_s_input._entry_ptr.7, ptr @ivtv_s_output._entry, ptr @ivtv_s_output._entry.18, ptr @ivtv_s_output._entry_ptr, ptr @ivtv_s_output._entry_ptr.20, ptr @ivtv_s_std._entry, ptr @ivtv_s_std._entry_ptr, ptr @ivtv_s_std_dec._entry, ptr @ivtv_s_std_dec._entry_ptr, ptr @ivtv_set_speed._entry, ptr @ivtv_set_speed._entry_ptr, ptr @ivtv_try_decoder_cmd._entry, ptr @ivtv_try_decoder_cmd._entry_ptr, ptr @ivtv_try_encoder_cmd._entry, ptr @ivtv_try_encoder_cmd._entry.36, ptr @ivtv_try_encoder_cmd._entry.38, ptr @ivtv_try_encoder_cmd._entry.40, ptr @ivtv_try_encoder_cmd._entry.42, ptr @ivtv_try_encoder_cmd._entry_ptr, ptr @ivtv_try_encoder_cmd._entry_ptr.37, ptr @ivtv_try_encoder_cmd._entry_ptr.39, ptr @ivtv_try_encoder_cmd._entry_ptr.41, ptr @ivtv_try_encoder_cmd._entry_ptr.43, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ivtv_ioctl_ops, ptr @.str.12, ptr @.str.13, ptr @ivtv_enum_fmt_vid_cap.hm12, ptr @ivtv_enum_fmt_vid_cap.mpeg, ptr @ivtv_enum_fmt_vid_out.hm12, ptr @ivtv_enum_fmt_vid_out.mpeg, ptr @ivtv_g_fbuf.pixel_format, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @ivtv_log_status.output_modes, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @ivtv_log_status.alpha_mode, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @ivtv_log_status.pixel_format, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_set_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_s_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_s_input._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_s_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_s_std_dec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_enum_fmt_vid_cap.hm12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_enum_fmt_vid_cap.mpeg to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_enum_fmt_vid_out.hm12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_enum_fmt_vid_out.mpeg to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_g_fbuf.pixel_format to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_s_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_s_output._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_encoder_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_encoder_cmd._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_encoder_cmd._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_encoder_cmd._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_encoder_cmd._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_try_encoder_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_try_encoder_cmd._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_try_encoder_cmd._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_try_encoder_cmd._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_try_encoder_cmd._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_decoder_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_try_decoder_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_log_status._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_log_status._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_log_status.output_modes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_log_status.alpha_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_log_status.pixel_format to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_log_status._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_log_status._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_log_status._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_log_status._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_log_status._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_log_status._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_log_status._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_decoder_ioctls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_decoder_ioctls._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @ivtv_service2vbi(i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 4096, label %sw.bb1
    i32 16384, label %sw.bb2
    i32 1024, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %sw.default ], [ 7, %sw.bb3 ], [ 5, %sw.bb2 ], [ 4, %sw.bb1 ], [ 1, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_expand_service_set(ptr nocapture noundef %fmt, i32 noundef %is_pal) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fmt, align 4
  store i16 0, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_pal)
  %tobool.not.i = icmp eq i32 %is_pal, 0
  %conv2.i = select i1 %tobool.not.i, i16 4096, i16 17409
  %and.i = and i16 %1, %conv2.i
  %conv4.i = zext i16 %and.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i)
  %cmp.i = icmp eq i16 %and.i, 0
  %and23.i = and i32 %conv4.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp ne i32 %and23.i, 0
  %and34.i = and i32 %conv4.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp ne i32 %and34.i, 0
  %and12.i = and i32 %conv4.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br label %for.body4

for.body4:                                        ; preds = %select_service_from_set.exit.for.body4_crit_edge, %entry
  %l.018 = phi i32 [ 0, %entry ], [ %inc, %select_service_from_set.exit.for.body4_crit_edge ]
  br i1 %cmp.i, label %for.body4.select_service_from_set.exit_crit_edge, label %lor.lhs.false.i

for.body4.select_service_from_set.exit_crit_edge: ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit

lor.lhs.false.i:                                  ; preds = %for.body4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %l.018)
  %cmp.i.i = icmp ult i32 %l.018, 6
  %2 = or i1 %tobool.not.i, %cmp.i.i
  br i1 %2, label %valid_service_line.exit.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

valid_service_line.exit.i:                        ; preds = %lor.lhs.false.i
  %3 = add nsw i32 %l.018, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %4 = icmp ult i32 %3, 12
  %5 = and i1 %tobool.not.i, %4
  br i1 %5, label %valid_service_line.exit.i.if.end.i_crit_edge, label %valid_service_line.exit.i.select_service_from_set.exit_crit_edge

valid_service_line.exit.i.select_service_from_set.exit_crit_edge: ; preds = %valid_service_line.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit

valid_service_line.exit.i.if.end.i_crit_edge:     ; preds = %valid_service_line.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.end.i:                                         ; preds = %valid_service_line.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  br i1 %tobool.not.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %l.018)
  %cmp9.i = icmp ne i32 %l.018, 21
  %or.cond.i = or i1 %tobool13.not.i, %cmp9.i
  br i1 %or.cond.i, label %if.then8.i.for.body.i.preheader_crit_edge, label %if.then8.i.select_service_from_set.exit_crit_edge

if.then8.i.select_service_from_set.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit

if.then8.i.for.body.i.preheader_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end26.i.for.body.i.preheader_crit_edge, %if.then8.i.for.body.i.preheader_crit_edge
  br label %for.body.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %l.018)
  %cmp16.i = icmp eq i32 %l.018, 16
  %6 = and i1 %tobool24.not.i, %cmp16.i
  br i1 %6, label %if.else.i.select_service_from_set.exit_crit_edge, label %if.end26.i

if.else.i.select_service_from_set.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit

if.end26.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %l.018)
  %cmp27.i = icmp eq i32 %l.018, 23
  br i1 %cmp27.i, label %select_service_from_set.exit.thread, label %if.end26.i.for.body.i.preheader_crit_edge

if.end26.i.for.body.i.preheader_crit_edge:        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader

select_service_from_set.exit.thread:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  %7 = and i1 %tobool35.not.i, %cmp27.i
  %.mux.i.le = select i1 %7, i16 16384, i16 0
  %arrayidx526 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 %l.018
  %8 = ptrtoint ptr %arrayidx526 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.mux.i.le, ptr %arrayidx526, align 2
  br label %for.body4.1.preheader

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.074.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.cond.i.select_service_from_set.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond.i.select_service_from_set.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.074.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %shl.i = shl nuw i32 1, %i.074.i
  %and46.i = and i32 %shl.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %for.cond.i, label %if.then48.i

if.then48.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv50.i = trunc i32 %shl.i to i16
  br label %select_service_from_set.exit

select_service_from_set.exit:                     ; preds = %if.then48.i, %for.cond.i.select_service_from_set.exit_crit_edge, %if.else.i.select_service_from_set.exit_crit_edge, %if.then8.i.select_service_from_set.exit_crit_edge, %valid_service_line.exit.i.select_service_from_set.exit_crit_edge, %for.body4.select_service_from_set.exit_crit_edge
  %retval.0.i = phi i16 [ %conv50.i, %if.then48.i ], [ 0, %valid_service_line.exit.i.select_service_from_set.exit_crit_edge ], [ 0, %for.body4.select_service_from_set.exit_crit_edge ], [ 4096, %if.then8.i.select_service_from_set.exit_crit_edge ], [ 1024, %if.else.i.select_service_from_set.exit_crit_edge ], [ 0, %for.cond.i.select_service_from_set.exit_crit_edge ]
  %arrayidx5 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 %l.018
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %retval.0.i, ptr %arrayidx5, align 2
  %inc = add nuw nsw i32 %l.018, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %select_service_from_set.exit.for.body4.1.preheader_crit_edge, label %select_service_from_set.exit.for.body4_crit_edge

select_service_from_set.exit.for.body4_crit_edge: ; preds = %select_service_from_set.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body4

select_service_from_set.exit.for.body4.1.preheader_crit_edge: ; preds = %select_service_from_set.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body4.1.preheader

for.body4.1.preheader:                            ; preds = %select_service_from_set.exit.for.body4.1.preheader_crit_edge, %select_service_from_set.exit.thread
  br label %for.body4.1

for.body4.1:                                      ; preds = %select_service_from_set.exit.1.for.body4.1_crit_edge, %for.body4.1.preheader
  %l.018.1 = phi i32 [ %inc.1, %select_service_from_set.exit.1.for.body4.1_crit_edge ], [ 0, %for.body4.1.preheader ]
  br i1 %cmp.i, label %for.body4.1.select_service_from_set.exit.1_crit_edge, label %lor.lhs.false.i.1

for.body4.1.select_service_from_set.exit.1_crit_edge: ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit.1

lor.lhs.false.i.1:                                ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %l.018.1)
  %cmp.i.i.1 = icmp ult i32 %l.018.1, 6
  %10 = or i1 %tobool.not.i, %cmp.i.i.1
  br i1 %10, label %valid_service_line.exit.i.1, label %land.lhs.true1.i.i.1

land.lhs.true1.i.i.1:                             ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %l.018.1)
  %cmp2.not.i.i.1.not = icmp eq i32 %l.018.1, 23
  br i1 %cmp2.not.i.i.1.not, label %land.lhs.true1.i.i.1.select_service_from_set.exit.1.thread_crit_edge, label %land.lhs.true1.i.i.1.if.end.i.1_crit_edge

land.lhs.true1.i.i.1.if.end.i.1_crit_edge:        ; preds = %land.lhs.true1.i.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.1

land.lhs.true1.i.i.1.select_service_from_set.exit.1.thread_crit_edge: ; preds = %land.lhs.true1.i.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit.1.thread

valid_service_line.exit.i.1:                      ; preds = %lor.lhs.false.i.1
  %11 = add nsw i32 %l.018.1, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %12 = icmp ult i32 %11, 12
  %13 = and i1 %tobool.not.i, %12
  br i1 %13, label %valid_service_line.exit.i.1.if.end.i.1_crit_edge, label %valid_service_line.exit.i.1.select_service_from_set.exit.1_crit_edge

valid_service_line.exit.i.1.select_service_from_set.exit.1_crit_edge: ; preds = %valid_service_line.exit.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit.1

valid_service_line.exit.i.1.if.end.i.1_crit_edge: ; preds = %valid_service_line.exit.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %valid_service_line.exit.i.1.if.end.i.1_crit_edge, %land.lhs.true1.i.i.1.if.end.i.1_crit_edge
  br i1 %tobool.not.i, label %if.then8.i.1, label %if.end26.i.1

if.end26.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %l.018.1)
  %cmp27.i.1 = icmp eq i32 %l.018.1, 23
  br i1 %cmp27.i.1, label %if.end26.i.1.select_service_from_set.exit.1.thread_crit_edge, label %if.end26.i.1.for.body.i.1.preheader_crit_edge

if.end26.i.1.for.body.i.1.preheader_crit_edge:    ; preds = %if.end26.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.1.preheader

if.end26.i.1.select_service_from_set.exit.1.thread_crit_edge: ; preds = %if.end26.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit.1.thread

if.then8.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %l.018.1)
  %cmp9.i.1 = icmp ne i32 %l.018.1, 21
  %or.cond.i.1 = or i1 %tobool13.not.i, %cmp9.i.1
  br i1 %or.cond.i.1, label %if.then8.i.1.for.body.i.1.preheader_crit_edge, label %if.then8.i.1.select_service_from_set.exit.1_crit_edge

if.then8.i.1.select_service_from_set.exit.1_crit_edge: ; preds = %if.then8.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit.1

if.then8.i.1.for.body.i.1.preheader_crit_edge:    ; preds = %if.then8.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.1.preheader

for.body.i.1.preheader:                           ; preds = %if.then8.i.1.for.body.i.1.preheader_crit_edge, %if.end26.i.1.for.body.i.1.preheader_crit_edge
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.cond.i.1.for.body.i.1_crit_edge, %for.body.i.1.preheader
  %i.074.i.1 = phi i32 [ %inc.i.1, %for.cond.i.1.for.body.i.1_crit_edge ], [ 0, %for.body.i.1.preheader ]
  %shl.i.1 = shl nuw i32 1, %i.074.i.1
  %and46.i.1 = and i32 %shl.i.1, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.1)
  %tobool47.not.i.1 = icmp eq i32 %and46.i.1, 0
  br i1 %tobool47.not.i.1, label %for.cond.i.1, label %if.then48.i.1

if.then48.i.1:                                    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #19
  %conv50.i.1 = trunc i32 %shl.i.1 to i16
  br label %select_service_from_set.exit.1

for.cond.i.1:                                     ; preds = %for.body.i.1
  %inc.i.1 = add nuw nsw i32 %i.074.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 32
  br i1 %exitcond.not.i.1, label %for.cond.i.1.select_service_from_set.exit.1_crit_edge, label %for.cond.i.1.for.body.i.1_crit_edge

for.cond.i.1.for.body.i.1_crit_edge:              ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.1

for.cond.i.1.select_service_from_set.exit.1_crit_edge: ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit.1

select_service_from_set.exit.1.thread:            ; preds = %if.end26.i.1.select_service_from_set.exit.1.thread_crit_edge, %land.lhs.true1.i.i.1.select_service_from_set.exit.1.thread_crit_edge
  %arrayidx5.130 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 %l.018.1
  %14 = ptrtoint ptr %arrayidx5.130 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %arrayidx5.130, align 2
  br label %for.inc6.1

select_service_from_set.exit.1:                   ; preds = %for.cond.i.1.select_service_from_set.exit.1_crit_edge, %if.then48.i.1, %if.then8.i.1.select_service_from_set.exit.1_crit_edge, %valid_service_line.exit.i.1.select_service_from_set.exit.1_crit_edge, %for.body4.1.select_service_from_set.exit.1_crit_edge
  %retval.0.i.1 = phi i16 [ %conv50.i.1, %if.then48.i.1 ], [ 0, %valid_service_line.exit.i.1.select_service_from_set.exit.1_crit_edge ], [ 0, %for.body4.1.select_service_from_set.exit.1_crit_edge ], [ 4096, %if.then8.i.1.select_service_from_set.exit.1_crit_edge ], [ 0, %for.cond.i.1.select_service_from_set.exit.1_crit_edge ]
  %arrayidx5.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 %l.018.1
  %15 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %retval.0.i.1, ptr %arrayidx5.1, align 2
  %inc.1 = add nuw nsw i32 %l.018.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 24
  br i1 %exitcond.1.not, label %select_service_from_set.exit.1.for.inc6.1_crit_edge, label %select_service_from_set.exit.1.for.body4.1_crit_edge

select_service_from_set.exit.1.for.body4.1_crit_edge: ; preds = %select_service_from_set.exit.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body4.1

select_service_from_set.exit.1.for.inc6.1_crit_edge: ; preds = %select_service_from_set.exit.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc6.1

for.inc6.1:                                       ; preds = %select_service_from_set.exit.1.for.inc6.1_crit_edge, %select_service_from_set.exit.1.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ivtv_get_service_set(ptr nocapture noundef readonly %fmt) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx4 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 0
  %0 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx4, align 2
  %arrayidx4.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx4.1, align 2
  %or15.1 = or i16 %3, %1
  %arrayidx4.2 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx4.2, align 2
  %or15.2 = or i16 %5, %or15.1
  %arrayidx4.3 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx4.3, align 2
  %or15.3 = or i16 %7, %or15.2
  %arrayidx4.4 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx4.4, align 2
  %or15.4 = or i16 %9, %or15.3
  %arrayidx4.5 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx4.5, align 2
  %or15.5 = or i16 %11, %or15.4
  %arrayidx4.6 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx4.6, align 2
  %or15.6 = or i16 %13, %or15.5
  %arrayidx4.7 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx4.7, align 2
  %or15.7 = or i16 %15, %or15.6
  %arrayidx4.8 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 8
  %16 = ptrtoint ptr %arrayidx4.8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx4.8, align 2
  %or15.8 = or i16 %17, %or15.7
  %arrayidx4.9 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 9
  %18 = ptrtoint ptr %arrayidx4.9 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx4.9, align 2
  %or15.9 = or i16 %19, %or15.8
  %arrayidx4.10 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 10
  %20 = ptrtoint ptr %arrayidx4.10 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx4.10, align 2
  %or15.10 = or i16 %21, %or15.9
  %arrayidx4.11 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 11
  %22 = ptrtoint ptr %arrayidx4.11 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx4.11, align 2
  %or15.11 = or i16 %23, %or15.10
  %arrayidx4.12 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 12
  %24 = ptrtoint ptr %arrayidx4.12 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx4.12, align 2
  %or15.12 = or i16 %25, %or15.11
  %arrayidx4.13 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 13
  %26 = ptrtoint ptr %arrayidx4.13 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx4.13, align 2
  %or15.13 = or i16 %27, %or15.12
  %arrayidx4.14 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 14
  %28 = ptrtoint ptr %arrayidx4.14 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx4.14, align 2
  %or15.14 = or i16 %29, %or15.13
  %arrayidx4.15 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 15
  %30 = ptrtoint ptr %arrayidx4.15 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx4.15, align 2
  %or15.15 = or i16 %31, %or15.14
  %arrayidx4.16 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx4.16 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx4.16, align 2
  %or15.16 = or i16 %33, %or15.15
  %arrayidx4.17 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 17
  %34 = ptrtoint ptr %arrayidx4.17 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx4.17, align 2
  %or15.17 = or i16 %35, %or15.16
  %arrayidx4.18 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 18
  %36 = ptrtoint ptr %arrayidx4.18 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx4.18, align 2
  %or15.18 = or i16 %37, %or15.17
  %arrayidx4.19 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 19
  %38 = ptrtoint ptr %arrayidx4.19 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx4.19, align 2
  %or15.19 = or i16 %39, %or15.18
  %arrayidx4.20 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 20
  %40 = ptrtoint ptr %arrayidx4.20 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx4.20, align 2
  %or15.20 = or i16 %41, %or15.19
  %arrayidx4.21 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 21
  %42 = ptrtoint ptr %arrayidx4.21 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx4.21, align 2
  %or15.21 = or i16 %43, %or15.20
  %arrayidx4.22 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 22
  %44 = ptrtoint ptr %arrayidx4.22 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx4.22, align 2
  %or15.22 = or i16 %45, %or15.21
  %arrayidx4.23 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 23
  %46 = ptrtoint ptr %arrayidx4.23 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx4.23, align 2
  %or15.23 = or i16 %47, %or15.22
  %arrayidx4.120 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 0
  %48 = ptrtoint ptr %arrayidx4.120 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx4.120, align 2
  %or15.121 = or i16 %49, %or15.23
  %arrayidx4.1.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 1
  %50 = ptrtoint ptr %arrayidx4.1.1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx4.1.1, align 2
  %or15.1.1 = or i16 %51, %or15.121
  %arrayidx4.2.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 2
  %52 = ptrtoint ptr %arrayidx4.2.1 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx4.2.1, align 2
  %or15.2.1 = or i16 %53, %or15.1.1
  %arrayidx4.3.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 3
  %54 = ptrtoint ptr %arrayidx4.3.1 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx4.3.1, align 2
  %or15.3.1 = or i16 %55, %or15.2.1
  %arrayidx4.4.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 4
  %56 = ptrtoint ptr %arrayidx4.4.1 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx4.4.1, align 2
  %or15.4.1 = or i16 %57, %or15.3.1
  %arrayidx4.5.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 5
  %58 = ptrtoint ptr %arrayidx4.5.1 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx4.5.1, align 2
  %or15.5.1 = or i16 %59, %or15.4.1
  %arrayidx4.6.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 6
  %60 = ptrtoint ptr %arrayidx4.6.1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx4.6.1, align 2
  %or15.6.1 = or i16 %61, %or15.5.1
  %arrayidx4.7.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 7
  %62 = ptrtoint ptr %arrayidx4.7.1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx4.7.1, align 2
  %or15.7.1 = or i16 %63, %or15.6.1
  %arrayidx4.8.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 8
  %64 = ptrtoint ptr %arrayidx4.8.1 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx4.8.1, align 2
  %or15.8.1 = or i16 %65, %or15.7.1
  %arrayidx4.9.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 9
  %66 = ptrtoint ptr %arrayidx4.9.1 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx4.9.1, align 2
  %or15.9.1 = or i16 %67, %or15.8.1
  %arrayidx4.10.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 10
  %68 = ptrtoint ptr %arrayidx4.10.1 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx4.10.1, align 2
  %or15.10.1 = or i16 %69, %or15.9.1
  %arrayidx4.11.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 11
  %70 = ptrtoint ptr %arrayidx4.11.1 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx4.11.1, align 2
  %or15.11.1 = or i16 %71, %or15.10.1
  %arrayidx4.12.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 12
  %72 = ptrtoint ptr %arrayidx4.12.1 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx4.12.1, align 2
  %or15.12.1 = or i16 %73, %or15.11.1
  %arrayidx4.13.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 13
  %74 = ptrtoint ptr %arrayidx4.13.1 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx4.13.1, align 2
  %or15.13.1 = or i16 %75, %or15.12.1
  %arrayidx4.14.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 14
  %76 = ptrtoint ptr %arrayidx4.14.1 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx4.14.1, align 2
  %or15.14.1 = or i16 %77, %or15.13.1
  %arrayidx4.15.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 15
  %78 = ptrtoint ptr %arrayidx4.15.1 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx4.15.1, align 2
  %or15.15.1 = or i16 %79, %or15.14.1
  %arrayidx4.16.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 16
  %80 = ptrtoint ptr %arrayidx4.16.1 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx4.16.1, align 2
  %or15.16.1 = or i16 %81, %or15.15.1
  %arrayidx4.17.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 17
  %82 = ptrtoint ptr %arrayidx4.17.1 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx4.17.1, align 2
  %or15.17.1 = or i16 %83, %or15.16.1
  %arrayidx4.18.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 18
  %84 = ptrtoint ptr %arrayidx4.18.1 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx4.18.1, align 2
  %or15.18.1 = or i16 %85, %or15.17.1
  %arrayidx4.19.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 19
  %86 = ptrtoint ptr %arrayidx4.19.1 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx4.19.1, align 2
  %or15.19.1 = or i16 %87, %or15.18.1
  %arrayidx4.20.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 20
  %88 = ptrtoint ptr %arrayidx4.20.1 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx4.20.1, align 2
  %or15.20.1 = or i16 %89, %or15.19.1
  %arrayidx4.21.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 21
  %90 = ptrtoint ptr %arrayidx4.21.1 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx4.21.1, align 2
  %or15.21.1 = or i16 %91, %or15.20.1
  %arrayidx4.22.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 22
  %92 = ptrtoint ptr %arrayidx4.22.1 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx4.22.1, align 2
  %or15.22.1 = or i16 %93, %or15.21.1
  %arrayidx4.23.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 23
  %94 = ptrtoint ptr %arrayidx4.23.1 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx4.23.1, align 2
  %or15.23.1 = or i16 %95, %or15.22.1
  ret i16 %or15.23.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_set_osd_alpha(ptr noundef %itv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %osd_global_alpha_state = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 92
  %0 = ptrtoint ptr %osd_global_alpha_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %osd_global_alpha_state, align 4
  %osd_global_alpha = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 95
  %2 = ptrtoint ptr %osd_global_alpha to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %osd_global_alpha, align 8
  %conv = zext i8 %3 to i32
  %osd_local_alpha_state = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 93
  %4 = ptrtoint ptr %osd_local_alpha_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %osd_local_alpha_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %call = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 75, i32 noundef 3, i32 noundef %1, i32 noundef %conv, i32 noundef %lnot.ext) #17
  %osd_chroma_key_state = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 94
  %6 = ptrtoint ptr %osd_chroma_key_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %osd_chroma_key_state, align 4
  %osd_chroma_key = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 96
  %8 = ptrtoint ptr %osd_chroma_key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %osd_chroma_key, align 4
  %call1 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 96, i32 noundef 2, i32 noundef %7, i32 noundef %9) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_vapi(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_set_speed(ptr noundef %itv, i32 noundef %speed) local_unnamed_addr #4 align 64 {
entry:
  %data = alloca [16 x i32], align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #17
  %0 = getelementptr inbounds i8, ptr %data, i32 28
  %1 = call ptr @memset(ptr %0, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #17
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !217) #17
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @autoremove_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %4, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %4, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed)
  %cmp5 = icmp eq i32 %speed, 0
  %speed.addr.0 = select i1 %cmp5, i32 1000, i32 %speed
  %speed6 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 82
  %15 = ptrtoint ptr %speed6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %speed.addr.0, i32 %16)
  %cmp7 = icmp eq i32 %speed.addr.0, %16
  br i1 %cmp7, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %entry
  %17 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %speed, label %land.lhs.true.cleanup144_crit_edge [
    i32 -1, label %land.lhs.true.land.lhs.true11_crit_edge
    i32 1, label %land.lhs.true.land.lhs.true11_crit_edge228
  ]

land.lhs.true.land.lhs.true11_crit_edge228:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true11

land.lhs.true.land.lhs.true11_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true11

land.lhs.true.cleanup144_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup144

if.end9:                                          ; preds = %entry
  %18 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %speed, label %if.end9.if.end26_crit_edge [
    i32 -1, label %if.end9.land.lhs.true11_crit_edge
    i32 1, label %if.end9.land.lhs.true11_crit_edge229
  ]

if.end9.land.lhs.true11_crit_edge229:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true11

if.end9.land.lhs.true11_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true11

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

land.lhs.true11:                                  ; preds = %if.end9.land.lhs.true11_crit_edge, %if.end9.land.lhs.true11_crit_edge229, %land.lhs.true.land.lhs.true11_crit_edge, %land.lhs.true.land.lhs.true11_crit_edge228
  %cmp16.unshifted = xor i32 %16, %speed.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmp16.unshifted)
  %cmp16 = icmp sgt i32 %cmp16.unshifted, -1
  br i1 %cmp16, label %if.then18, label %if.end21

if.then18:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  %call19 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 5, i32 noundef 1, i32 noundef 0) #17
  %19 = ptrtoint ptr %speed6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %speed.addr.0, ptr %speed6, align 8
  br label %cleanup144

if.end21:                                         ; preds = %land.lhs.true11
  %20 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %speed, label %if.end21.if.end26_crit_edge [
    i32 -1, label %if.end21.if.then23_crit_edge
    i32 1, label %if.end21.if.then23_crit_edge230
  ]

if.end21.if.then23_crit_edge230:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then23

if.end21.if.then23_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then23

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

if.then23:                                        ; preds = %if.end21.if.then23_crit_edge, %if.end21.if.then23_crit_edge230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed.addr.0)
  %cmp24 = icmp slt i32 %speed.addr.0, 0
  %spec.select = select i1 %cmp24, i32 -1000, i32 1000
  br label %.thread

if.end26:                                         ; preds = %if.end21.if.end26_crit_edge, %if.end9.if.end26_crit_edge
  %21 = add i32 %speed.addr.0, -1001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2001, i32 %21)
  %22 = icmp ult i32 %21, -2001
  %cond34 = select i1 %22, i32 -2147483648, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1500, i32 %speed.addr.0)
  %cmp38 = icmp slt i32 %speed.addr.0, -1500
  br i1 %cmp38, label %if.end26..thread_crit_edge, label %23

if.end26..thread_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %.thread

23:                                               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %speed.addr.0)
  %cmp27 = icmp sgt i32 %speed.addr.0, 1000
  %spec.select226 = select i1 %cmp27, i32 %speed, i32 %speed.addr.0
  %spec.select227 = select i1 %cmp27, i32 1073741824, i32 0
  br label %.thread

.thread:                                          ; preds = %23, %if.end26..thread_crit_edge, %if.then23
  %speed.addr.1204211 = phi i32 [ %speed, %if.end26..thread_crit_edge ], [ %spec.select, %if.then23 ], [ %spec.select226, %23 ]
  %cond34206210 = phi i32 [ %cond34, %if.end26..thread_crit_edge ], [ 0, %if.then23 ], [ %cond34, %23 ]
  %24 = phi i32 [ 1073741824, %if.end26..thread_crit_edge ], [ 0, %if.then23 ], [ %spec.select227, %23 ]
  %or = or i32 %24, %cond34206210
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed.addr.1204211)
  %cmp44 = icmp slt i32 %speed.addr.1204211, 0
  %speed.addr.1.lobit = lshr i32 %speed.addr.1204211, 31
  %arrayidx46 = getelementptr inbounds [16 x i32], ptr %data, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %speed.addr.1.lobit, ptr %arrayidx46, align 4
  %cond49 = select i1 %cmp44, i32 3, i32 7
  %arrayidx50 = getelementptr inbounds [16 x i32], ptr %data, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond49, ptr %arrayidx50, align 4
  %28 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 20, i32 12
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call51 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %30) #17
  %arrayidx52 = getelementptr inbounds [16 x i32], ptr %data, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call51, ptr %arrayidx52, align 4
  %32 = zext i32 %speed.addr.1204211 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %speed.addr.1204211, label %.thread.cond.end_crit_edge [
    i32 1500, label %.thread.cond.true_crit_edge
    i32 500, label %.thread.cond.true_crit_edge231
  ]

.thread.cond.true_crit_edge231:                   ; preds = %.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

.thread.cond.true_crit_edge:                      ; preds = %.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

.thread.cond.end_crit_edge:                       ; preds = %.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %.thread.cond.true_crit_edge, %.thread.cond.true_crit_edge231
  %speed_mute_audio = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 83
  %33 = ptrtoint ptr %speed_mute_audio to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %speed_mute_audio, align 4
  %conv57 = zext i8 %34 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %.thread.cond.end_crit_edge
  %cond58 = phi i32 [ %conv57, %cond.true ], [ 0, %.thread.cond.end_crit_edge ]
  %arrayidx59 = getelementptr inbounds [16 x i32], ptr %data, i32 0, i32 4
  %35 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond58, ptr %arrayidx59, align 4
  %arrayidx60 = getelementptr inbounds [16 x i32], ptr %data, i32 0, i32 5
  %36 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx60, align 4
  %arrayidx61 = getelementptr inbounds [16 x i32], ptr %data, i32 0, i32 6
  %37 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx61, align 4
  %38 = zext i32 %speed.addr.1204211 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %speed.addr.1204211, label %if.else78 [
    i32 -1500, label %cond.end.if.then67_crit_edge
    i32 1500, label %cond.end.if.then67_crit_edge232
    i32 2000, label %cond.end.if.then75_crit_edge
    i32 -2000, label %cond.end.if.then75_crit_edge233
  ]

cond.end.if.then75_crit_edge233:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then75

cond.end.if.then75_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then75

cond.end.if.then67_crit_edge232:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then67

cond.end.if.then67_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then67

if.then67:                                        ; preds = %cond.end.if.then67_crit_edge, %cond.end.if.then67_crit_edge232
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data, align 4
  %or69 = or i32 %40, 1
  store i32 %or69, ptr %data, align 4
  br label %if.end100

if.then75:                                        ; preds = %cond.end.if.then75_crit_edge, %cond.end.if.then75_crit_edge233
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data, align 4
  %or77 = or i32 %42, 2
  store i32 %or77, ptr %data, align 4
  br label %if.end100

if.else78:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1000, i32 %speed.addr.1204211)
  %43 = icmp ugt i32 %speed.addr.1204211, -1000
  br i1 %43, label %if.then84, label %if.else87

if.then84:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #19
  %44 = trunc i32 %speed.addr.1204211 to i16
  %div224.rhs.trunc = sub i16 0, %44
  %div224225 = udiv i16 1000, %div224.rhs.trunc
  %div224.zext = zext i16 %div224225 to i32
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data, align 4
  %or86 = or i32 %46, %div224.zext
  store i32 %or86, ptr %data, align 4
  br label %if.end100

if.else87:                                        ; preds = %if.else78
  %47 = add i32 %speed.addr.1204211, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %47)
  %48 = icmp ult i32 %47, 999
  br i1 %48, label %if.then93, label %if.else87.if.end100_crit_edge

if.else87.if.end100_crit_edge:                    ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end100

if.then93:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #19
  %div94216.rhs.trunc = trunc i32 %speed.addr.1204211 to i16
  %div94216217 = udiv i16 1000, %div94216.rhs.trunc
  %div94216.zext = zext i16 %div94216217 to i32
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data, align 4
  %or96 = or i32 %50, %div94216.zext
  store i32 %or96, ptr %data, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then93, %if.else87.if.end100_crit_edge, %if.then84, %if.then75, %if.then67
  %decoding = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 44
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %decoding, i32 noundef 4) #17
  %51 = ptrtoint ptr %decoding to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %decoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp102 = icmp sgt i32 %52, 0
  br i1 %cmp102, label %if.then104, label %if.end100.if.end135_crit_edge

if.end100.if.end135_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end135

if.then104:                                       ; preds = %if.end100
  %call105 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 13, i32 noundef 1, i32 noundef 0) #17
  %serialize_lock = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 40
  call void @mutex_unlock(ptr noundef %serialize_lock) #17
  %dma_waitq = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 62
  call void @prepare_to_wait(ptr noundef %dma_waitq, ptr noundef nonnull %wait, i32 noundef 1) #17
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  %53 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %i_flags, align 4
  %and1.i221 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i221)
  %tobool107.not222 = icmp eq i32 %and1.i221, 0
  br i1 %tobool107.not222, label %if.then104.if.end118.critedge_crit_edge, label %if.then104.while.body_crit_edge

if.then104.while.body_crit_edge:                  ; preds = %if.then104
  br label %while.body

if.then104.if.end118.critedge_crit_edge:          ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end118.critedge

while.body:                                       ; preds = %if.end113.while.body_crit_edge, %if.then104.while.body_crit_edge
  %55 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stack.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %58, align 4
  %61 = and i32 %60, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %cleanup144.critedge, !prof !227

signal_pending.exit:                              ; preds = %while.body
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %58, align 4
  %and1.i.i.i.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool111.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool111.not, label %if.end113, label %cleanup144.critedge220

if.end113:                                        ; preds = %signal_pending.exit
  call void @schedule() #17
  %64 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %i_flags, align 4
  %and1.i = and i32 %65, 1
  %tobool107.not = icmp eq i32 %and1.i, 0
  br i1 %tobool107.not, label %if.end113.if.end118.critedge_crit_edge, label %if.end113.while.body_crit_edge

if.end113.while.body_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end113.if.end118.critedge_crit_edge:           ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end118.critedge

if.end118.critedge:                               ; preds = %if.end113.if.end118.critedge_crit_edge, %if.then104.if.end118.critedge_crit_edge
  call void @finish_wait(ptr noundef %dma_waitq, ptr noundef nonnull %wait) #17
  call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #17
  %call119 = call i32 @ivtv_api(ptr noundef %itv, i32 noundef 3, i32 noundef 7, ptr noundef nonnull %data) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %66 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool120.not = icmp eq i32 %and, 0
  br i1 %tobool120.not, label %if.end118.critedge.if.end135_crit_edge, label %do.end

if.end118.critedge.if.end135_crit_edge:           ; preds = %if.end118.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end135

do.end:                                           ; preds = %if.end118.critedge
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data, align 4
  %69 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx46, align 4
  %71 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx50, align 4
  %73 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx52, align 4
  %75 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx59, align 4
  %77 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx60, align 4
  %79 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx61, align 4
  %call131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80) #20
  br label %if.end135

if.end135:                                        ; preds = %do.end, %if.end118.critedge.if.end135_crit_edge, %if.end100.if.end135_crit_edge
  %81 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %speed, label %if.end135.if.end142_crit_edge [
    i32 -1, label %if.end135.if.then137_crit_edge
    i32 1, label %if.end135.if.then137_crit_edge234
  ]

if.end135.if.then137_crit_edge234:                ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then137

if.end135.if.then137_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then137

if.end135.if.end142_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end142

if.then137:                                       ; preds = %if.end135.if.then137_crit_edge, %if.end135.if.then137_crit_edge234
  %cond140 = select i1 %cmp44, i32 -1, i32 1
  %call141 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 5, i32 noundef 1, i32 noundef 0) #17
  br label %if.end142

if.end142:                                        ; preds = %if.then137, %if.end135.if.end142_crit_edge
  %speed.addr.2 = phi i32 [ %cond140, %if.then137 ], [ %speed.addr.1204211, %if.end135.if.end142_crit_edge ]
  %82 = ptrtoint ptr %speed6 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %speed.addr.2, ptr %speed6, align 8
  br label %cleanup144

cleanup144.critedge:                              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  call void @finish_wait(ptr noundef %dma_waitq, ptr noundef nonnull %wait) #17
  call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #17
  br label %cleanup144

cleanup144.critedge220:                           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @finish_wait(ptr noundef %dma_waitq, ptr noundef nonnull %wait) #17
  call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #17
  br label %cleanup144

cleanup144:                                       ; preds = %cleanup144.critedge220, %cleanup144.critedge, %if.end142, %if.then18, %land.lhs.true.cleanup144_crit_edge
  %retval.1 = phi i32 [ 0, %if.then18 ], [ 0, %if.end142 ], [ 0, %land.lhs.true.cleanup144_crit_edge ], [ -4, %cleanup144.critedge ], [ -4, %cleanup144.critedge220 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #17
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_api(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_s_input(ptr nocapture readnone %file, ptr nocapture noundef readonly %fh, i32 noundef %inp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %nof_inputs = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nof_inputs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nof_inputs, align 2
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %inp)
  %cmp.not = icmp ugt i32 %conv, %inp
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %active_input = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %active_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_input, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %inp)
  %cmp3 = icmp eq i32 %5, %inp
  br i1 %cmp3, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %6 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name) #20
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %capturing = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #17
  %7 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp14 = icmp sgt i32 %8, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %do.body18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body18:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %9 = load i32, ptr @ivtv_debug, align 4
  %and19 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.do.end33_crit_edge, label %do.end24

do.body18.do.end33_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #19
  %name27 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %10 = ptrtoint ptr %active_input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active_input, align 8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name27, i32 noundef %11, i32 noundef %inp) #20
  br label %do.end33

do.end33:                                         ; preds = %do.end24, %do.body18.do.end33_crit_edge
  %12 = ptrtoint ptr %active_input to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inp, ptr %active_input, align 8
  %card = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %audio_index = getelementptr %struct.ivtv_card, ptr %14, i32 0, i32 9, i32 %inp, i32 1
  %15 = ptrtoint ptr %audio_index to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %audio_index, align 1
  %conv35 = zext i8 %16 to i32
  %audio_input = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %audio_input to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv35, ptr %audio_input, align 4
  %arrayidx38 = getelementptr %struct.ivtv_card, ptr %14, i32 0, i32 9, i32 %inp
  %18 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp40 = icmp eq i8 %19, 1
  br i1 %cmp40, label %if.then42, label %do.end33.if.end43_crit_edge

do.end33.if.end43_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then42:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #19
  %tuner_std = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %tuner_std to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tuner_std, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %do.end33.if.end43_crit_edge
  %std.0 = phi i64 [ %21, %if.then42 ], [ 16777215, %do.end33.if.end43_crit_edge ]
  %tvnorms = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 0, i32 0, i32 22
  %22 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %std.0, ptr %tvnorms, align 8
  %tvnorms.1 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 1, i32 0, i32 22
  %23 = ptrtoint ptr %tvnorms.1 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %std.0, ptr %tvnorms.1, align 8
  %tvnorms.2 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 0, i32 22
  %24 = ptrtoint ptr %tvnorms.2 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %std.0, ptr %tvnorms.2, align 8
  tail call void @ivtv_mute(ptr noundef %1) #17
  tail call void @ivtv_video_set_io(ptr noundef %1) #17
  tail call void @ivtv_audio_set_io(ptr noundef %1) #17
  tail call void @ivtv_unmute(ptr noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end12.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ -16, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_mute(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_video_set_io(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_audio_set_io(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_unmute(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_s_frequency(ptr nocapture readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %vfl_dir = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 0, i32 14
  %4 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @ivtv_mute(ptr noundef %1) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %8 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.do.body12_crit_edge, label %do.end

if.end4.do.body12_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body12

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 2
  %9 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frequency, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %10) #20
  br label %do.body12

do.body12:                                        ; preds = %do.end, %if.end4.do.body12_crit_edge
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 2
  %11 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn54 = load ptr, ptr %subdevs, align 4
  %cmp18.not56 = icmp eq ptr %.pn54, %subdevs
  br i1 %cmp18.not56, label %do.body12.do.end36_crit_edge, label %do.body12.for.body_crit_edge

do.body12.for.body_crit_edge:                     ; preds = %do.body12
  br label %for.body

do.body12.do.end36_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end36

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body12.for.body_crit_edge
  %.pn57 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn54, %do.body12.for.body_crit_edge ]
  %__sd.058 = getelementptr i8, ptr %.pn57, i32 -80
  %ops = getelementptr i8, ptr %.pn57, i32 24
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %tuner19 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %tuner19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tuner19, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_frequency, align 4
  %tobool23.not = icmp eq ptr %17, null
  br i1 %tobool23.not, label %land.lhs.true.for.inc_crit_edge, label %if.then24

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %call28 = tail call i32 %17(ptr noundef %__sd.058, ptr noundef %vf) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn57, align 4
  %cmp18.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp18.not, label %for.inc.do.end36_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.do.end36_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end36

do.end36:                                         ; preds = %for.inc.do.end36_crit_edge, %do.body12.do.end36_crit_edge
  tail call void @ivtv_unmute(ptr noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end36 ], [ -25, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_s_std_enc(ptr noundef %itv, i64 noundef %std) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %std1 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 35
  %0 = ptrtoint ptr %std1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %std, ptr %std1, align 8
  %and = and i64 %std, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp ne i64 %and, 0
  %conv = zext i1 %tobool.not to i8
  %is_60hz = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 28
  %1 = ptrtoint ptr %is_60hz to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %is_60hz, align 1
  %lnot = xor i1 %tobool.not, true
  %conv4 = zext i1 %lnot to i8
  %is_50hz = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 27
  %2 = ptrtoint ptr %is_50hz to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv4, ptr %is_50hz, align 4
  %cxhdl = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 20
  %conv6 = zext i1 %lnot to i32
  tail call void @cx2341x_handler_set_50hz(ptr noundef %cxhdl, i32 noundef %conv6) #17
  %width = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 20, i32 2
  %3 = ptrtoint ptr %width to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 720, ptr %width, align 4
  %4 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  %conv12 = select i1 %tobool10.not, i16 480, i16 576
  %height = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 20, i32 3
  %6 = ptrtoint ptr %height to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv12, ptr %height, align 2
  %cond17 = select i1 %tobool10.not, i32 12, i32 18
  %count = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 7
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond17, ptr %count, align 4
  %cond21 = select i1 %tobool10.not, i32 10, i32 6
  %start = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 6
  %8 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond21, ptr %start, align 4
  %cond26 = select i1 %tobool10.not, i32 273, i32 318
  %arrayidx29 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 6, i32 1
  %9 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond26, ptr %arrayidx29, align 4
  %hw_flags = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 9
  %10 = ptrtoint ptr %hw_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_flags, align 8
  %and30 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %is_60hz to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_60hz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool34.not = icmp eq i8 %13, 0
  %cond35 = select i1 %tobool34.not, i32 284, i32 272
  %sliced_decoder_line_size = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 3
  %14 = ptrtoint ptr %sliced_decoder_line_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond35, ptr %sliced_decoder_line_size, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 2
  %15 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn87 = load ptr, ptr %subdevs, align 4
  %cmp.not89 = icmp eq ptr %.pn87, %subdevs
  br i1 %cmp.not89, label %do.body.do.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn90 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn87, %do.body.for.body_crit_edge ]
  %__sd.091 = getelementptr i8, ptr %.pn90, i32 -80
  %ops = getelementptr i8, ptr %.pn90, i32 24
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %video, align 4
  %tobool43.not = icmp eq ptr %19, null
  br i1 %tobool43.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_std, align 4
  %tobool46.not = icmp eq ptr %21, null
  br i1 %tobool46.not, label %land.lhs.true.for.inc_crit_edge, label %if.then47

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %std1 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %std1, align 8
  %call = tail call i32 %21(ptr noundef %__sd.091, i64 noundef %23) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then47, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %.pn90 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn90, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx2341x_handler_set_50hz(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_s_std_dec(ptr noundef %itv, i64 noundef %std) local_unnamed_addr #4 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #17
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !217) #17
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
  %std_out = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 36
  %13 = ptrtoint ptr %std_out to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %std, ptr %std_out, align 8
  %and = and i64 %std, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp ne i64 %and, 0
  %conv = zext i1 %tobool.not to i8
  %is_out_60hz = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 30
  %14 = ptrtoint ptr %is_out_60hz to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %is_out_60hz, align 1
  %lnot = xor i1 %tobool.not, true
  %conv6 = zext i1 %lnot to i8
  %is_out_50hz = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 29
  %15 = ptrtoint ptr %is_out_50hz to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv6, ptr %is_out_50hz, align 2
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 2
  %16 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn116 = load ptr, ptr %subdevs, align 4
  %cmp.not118 = icmp eq ptr %.pn116, %subdevs
  br i1 %cmp.not118, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn119 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn116, %entry.for.body_crit_edge ]
  %__sd.0120 = getelementptr i8, ptr %.pn119, i32 -80
  %ops = getelementptr i8, ptr %.pn119, i32 24
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %video, align 4
  %tobool14.not = icmp eq ptr %20, null
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_std_output = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %s_std_output to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_std_output, align 4
  %tobool17.not = icmp eq ptr %22, null
  br i1 %tobool17.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %std_out to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %std_out, align 8
  %call22 = call i32 %22(ptr noundef %__sd.0120, i64 noundef %24) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %.pn119 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn119, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %serialize_lock = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 40
  call void @mutex_unlock(ptr noundef %serialize_lock) #17
  %vsync_waitq = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 65
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  call void @prepare_to_wait(ptr noundef %vsync_waitq, ptr noundef nonnull %wait, i32 noundef 2) #17
  %26 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_mem, align 8
  %add.ptr34 = getelementptr i8, ptr %27, i32 10432
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #17, !srcloc !228
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 6553600, i32 %29)
  %cmp38 = icmp ult i32 %29, 6553600
  br i1 %cmp38, label %do.end.for.end45_crit_edge, label %if.end41

do.end.for.end45_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end45

if.end41:                                         ; preds = %do.end
  %call43 = call i32 @schedule_timeout(i32 noundef 3) #17
  call void @prepare_to_wait(ptr noundef %vsync_waitq, ptr noundef nonnull %wait, i32 noundef 2) #17
  %30 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_mem, align 8
  %add.ptr34.1 = getelementptr i8, ptr %31, i32 10432
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.1) #17, !srcloc !228
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 6553600, i32 %33)
  %cmp38.1 = icmp ult i32 %33, 6553600
  br i1 %cmp38.1, label %if.end41.for.end45_crit_edge, label %if.end41.1

if.end41.for.end45_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end45

if.end41.1:                                       ; preds = %if.end41
  %call43.1 = call i32 @schedule_timeout(i32 noundef 3) #17
  call void @prepare_to_wait(ptr noundef %vsync_waitq, ptr noundef nonnull %wait, i32 noundef 2) #17
  %34 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_mem, align 8
  %add.ptr34.2 = getelementptr i8, ptr %35, i32 10432
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.2) #17, !srcloc !228
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 6553600, i32 %37)
  %cmp38.2 = icmp ult i32 %37, 6553600
  br i1 %cmp38.2, label %if.end41.1.for.end45_crit_edge, label %if.end41.2

if.end41.1.for.end45_crit_edge:                   ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end45

if.end41.2:                                       ; preds = %if.end41.1
  %call43.2 = call i32 @schedule_timeout(i32 noundef 3) #17
  call void @prepare_to_wait(ptr noundef %vsync_waitq, ptr noundef nonnull %wait, i32 noundef 2) #17
  %38 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_mem, align 8
  %add.ptr34.3 = getelementptr i8, ptr %39, i32 10432
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.3) #17, !srcloc !228
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 6553600, i32 %41)
  %cmp38.3 = icmp ult i32 %41, 6553600
  br i1 %cmp38.3, label %if.end41.2.for.end45_crit_edge, label %if.end41.3

if.end41.2.for.end45_crit_edge:                   ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end45

if.end41.3:                                       ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #19
  %call43.3 = call i32 @schedule_timeout(i32 noundef 3) #17
  call void @finish_wait(ptr noundef %vsync_waitq, ptr noundef nonnull %wait) #17
  call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #17
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name) #20
  br label %if.end57

for.end45:                                        ; preds = %if.end41.2.for.end45_crit_edge, %if.end41.1.for.end45_crit_edge, %if.end41.for.end45_crit_edge, %do.end.for.end45_crit_edge
  call void @finish_wait(ptr noundef %vsync_waitq, ptr noundef nonnull %wait) #17
  call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #17
  br label %if.end57

if.end57:                                         ; preds = %for.end45, %if.end41.3
  %42 = ptrtoint ptr %is_out_50hz to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %is_out_50hz, align 2
  %conv59 = zext i8 %43 to i32
  %call60 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 16, i32 noundef 1, i32 noundef %conv59) #17
  %main_rect = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 98
  %44 = ptrtoint ptr %main_rect to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %main_rect, align 8
  %top = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 98, i32 1
  %45 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 98, i32 2
  %46 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 720, ptr %width, align 8
  %47 = ptrtoint ptr %is_out_50hz to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_out_50hz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool65.not = icmp eq i8 %48, 0
  %cond66 = select i1 %tobool65.not, i32 480, i32 576
  %height = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 98, i32 3
  %49 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond66, ptr %height, align 4
  %call70 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 86, i32 noundef 4, i32 noundef 720, i32 noundef %cond66, i32 noundef 0, i32 noundef 0) #17
  %main_rect71 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 66
  %50 = call ptr @memcpy(ptr %main_rect71, ptr %main_rect, i32 16)
  %osd_info = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 99
  %51 = ptrtoint ptr %osd_info to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %osd_info, align 8
  %tobool73.not = icmp eq ptr %52, null
  br i1 %tobool73.not, label %if.then74, label %if.end57.if.end79_crit_edge

if.end57.if.end79_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end79

if.then74:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  %osd_full_w = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 47
  %53 = ptrtoint ptr %osd_full_w to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 720, ptr %osd_full_w, align 4
  %54 = ptrtoint ptr %is_out_50hz to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %is_out_50hz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool77.not = icmp eq i8 %55, 0
  %cond78 = select i1 %tobool77.not, i32 480, i32 576
  %osd_full_h = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 48
  %56 = ptrtoint ptr %osd_full_h to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %cond78, ptr %osd_full_h, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.end57.if.end79_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ivtv_set_funcs(ptr nocapture noundef writeonly %vdev) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 24
  %0 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ivtv_ioctl_ops, ptr %ioctl_ops, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_querycap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr noundef %vcap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itv1, align 4
  %call2 = tail call i32 @strscpy(ptr noundef %vcap, ptr noundef nonnull @.str.12, i32 noundef 16) #17
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %vcap, i32 0, i32 1
  %card_name = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card_name, align 8
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %5, i32 noundef 32) #17
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %vcap, i32 0, i32 2
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i)
  %v4l2_cap = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %v4l2_cap, align 4
  %or = or i32 %13, -2147483648
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %vcap, i32 0, i32 4
  %14 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %type3 = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 3
  %6 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type3, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 0, label %if.then4
    i32 1, label %if.then7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %9 = call ptr @memcpy(ptr %fmt, ptr @ivtv_enum_fmt_vid_cap.mpeg, i32 64)
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %10 = call ptr @memcpy(ptr %fmt, ptr @ivtv_enum_fmt_vid_cap.hm12, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %type3 = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 3
  %6 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type3, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 5, label %if.then4
    i32 8, label %if.then7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %9 = call ptr @memcpy(ptr %fmt, ptr @ivtv_enum_fmt_vid_out.mpeg, i32 64)
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %10 = call ptr @memcpy(ptr %fmt, ptr @ivtv_enum_fmt_vid_out.hm12, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_g_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %width = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 20, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %width, align 4
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %fmt2, align 4
  %height = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 20, i32 3
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %height, align 2
  %conv5 = zext i16 %6 to i32
  %height6 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv5, ptr %height6, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %field, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  %div25 = mul nuw nsw i32 %conv5, 1080
  %.sink27 = select i1 %cmp, i32 842091848, i32 1195724877
  %.sink26 = select i1 %cmp, i32 %div25, i32 131072
  %.sink = select i1 %cmp, i32 720, i32 0
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink27, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink26, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %16, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_g_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %fmt) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %v4l2_cap = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v4l2_cap, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %width = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 98, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %6 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fmt2, align 4
  %height = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 98, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height5, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %field, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp = icmp eq i32 %13, 8
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %lace_mode = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 50
  %14 = ptrtoint ptr %lace_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lace_mode, align 4
  %and7 = and i32 %15, 3
  %16 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %and7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %if.then6.sw.epilog_crit_edge
  ]

if.then6.sw.epilog_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  %and10 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %cond = select i1 %tobool11.not, i32 8, i32 9
  br label %sw.epilog

sw.default:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %if.then6.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.default ], [ %cond, %sw.bb ], [ %and7, %if.then6.sw.epilog_crit_edge ]
  %17 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %field, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 842091848, ptr %pixelformat, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 720, ptr %bytesperline, align 4
  %v4l2_src_w = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 67
  %20 = ptrtoint ptr %v4l2_src_w to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v4l2_src_w, align 4
  %22 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %fmt2, align 4
  %v4l2_src_h = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 68
  %23 = ptrtoint ptr %v4l2_src_h to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %v4l2_src_h, align 4
  %25 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %height5, align 4
  %add = add i32 %24, 31
  %and21 = and i32 %add, -32
  %mul = mul i32 %and21, 1080
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %26 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul, ptr %sizeimage, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %pixelformat22 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %pixelformat22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1195724877, ptr %pixelformat22, align 4
  %sizeimage23 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %sizeimage23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 131072, ptr %sizeimage23, align 4
  %bytesperline24 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %bytesperline24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %bytesperline24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_g_fmt_vid_out_overlay(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %fmt) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %fmt3 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %caps = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 4
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %osd_video_pbase = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 91
  %6 = ptrtoint ptr %osd_video_pbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %osd_video_pbase, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %osd_chroma_key = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 96
  %8 = ptrtoint ptr %osd_chroma_key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %osd_chroma_key, align 4
  %chromakey = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %chromakey to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %chromakey, align 4
  %osd_global_alpha = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 95
  %11 = ptrtoint ptr %osd_global_alpha to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %osd_global_alpha, align 8
  %global_alpha = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %global_alpha to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %global_alpha, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %field, align 4
  %clips = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %clips to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %clips, align 4
  %clipcount = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %16 = ptrtoint ptr %clipcount to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %clipcount, align 4
  %bitmap = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %bitmap, align 4
  %18 = ptrtoint ptr %fmt3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %fmt3, align 4
  %top = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 97, i32 2
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width, align 8
  %width9 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %width9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %width9, align 4
  %height = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 97, i32 3
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 4
  %height12 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %height12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %height12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_g_fmt_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %fmt) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 27000000, ptr %fmt2, align 4
  %offset = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 248, ptr %offset, align 4
  %vbi = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89
  %4 = ptrtoint ptr %vbi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vbi, align 4
  %sub = add i32 %5, -4
  %samples_per_line = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %samples_per_line, align 4
  %sample_format = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1497715271, ptr %sample_format, align 4
  %start = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89, i32 6
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start, align 4
  %start4 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %start4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %start4, align 4
  %arrayidx8 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 89, i32 6, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx10, align 4
  %count = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89, i32 7
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %count12 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %arrayidx13 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx13, align 4
  %17 = ptrtoint ptr %count12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %count12, align 4
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags, align 4
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %reserved, align 4
  %arrayidx18 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx18, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_g_fmt_sliced_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %itv2 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv2, align 4
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 1
  %2 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reserved, align 4
  %arrayidx4 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 2
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx4, align 4
  %io_size = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %io_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2304, ptr %io_size, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp = icmp eq i32 %6, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %is_50hz = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 27
  %7 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %conv5 = select i1 %tobool.not, i16 4096, i16 17409
  %9 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv5, ptr %fmt1, align 4
  %10 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_50hz, align 4
  %conv7 = zext i8 %11 to i32
  tail call void @ivtv_expand_service_set(ptr noundef %fmt1, i32 noundef %conv7)
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd_video = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %sd_video to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_video, align 8
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %vbi = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %vbi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vbi, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %g_sliced_fmt = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %g_sliced_fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %g_sliced_fmt, align 4
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %land.lhs.true.cleanup_crit_edge, label %if.else17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else17:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %if.else17.if.else25_crit_edge, label %land.lhs.true19

if.else17.if.else25_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else25

land.lhs.true19:                                  ; preds = %if.else17
  %g_sliced_fmt20 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %g_sliced_fmt20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %g_sliced_fmt20, align 4
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %land.lhs.true19.if.else25_crit_edge, label %land.lhs.true19.if.end32.sink.split_crit_edge

land.lhs.true19.if.end32.sink.split_crit_edge:    ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32.sink.split

land.lhs.true19.if.else25_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else25

if.else25:                                        ; preds = %land.lhs.true19.if.else25_crit_edge, %if.else17.if.else25_crit_edge
  br label %if.end32.sink.split

if.end32.sink.split:                              ; preds = %if.else25, %land.lhs.true19.if.end32.sink.split_crit_edge
  %.sink = phi ptr [ %19, %if.else25 ], [ %22, %land.lhs.true19.if.end32.sink.split_crit_edge ]
  %call29 = tail call i32 %.sink(ptr noundef nonnull %13, ptr noundef %fmt1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end32.sink.split, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %call33 = tail call zeroext i16 @ivtv_get_service_set(ptr noundef %fmt1)
  %23 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %call33, ptr %fmt1, align 4
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_g_fmt_sliced_vbi_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 1
  %2 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reserved, align 4
  %arrayidx4 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 2
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx4, align 4
  %v4l2_cap = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v4l2_cap, align 4
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_size = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %io_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2304, ptr %io_size, align 4
  %service_lines = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %fmt2, i32 0, i32 1
  %7 = call ptr @memset(ptr %service_lines, i32 0, i32 96)
  %is_60hz = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %is_60hz to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_60hz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx9 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4096, ptr %arrayidx9, align 2
  %arrayidx12 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 3, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4096, ptr %arrayidx12, align 2
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx15 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 16384, ptr %arrayidx15, align 2
  %arrayidx18 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1024, ptr %arrayidx18, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then6
  %call20 = tail call zeroext i16 @ivtv_get_service_set(ptr noundef %fmt2)
  %14 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %call20, ptr %fmt2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #4 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #17
  %2 = getelementptr inbounds i8, ptr %format, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %format, align 4
  %fmt2.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %5 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fmt2.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height.i, align 4
  %9 = tail call i32 @llvm.smin.i32(i32 %6, i32 720) #17
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 2) #17
  %type.i = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp10.i = icmp eq i32 %12, 1
  %and.i = and i32 %8, -32
  %min_h.0.i = select i1 %cmp10.i, i32 32, i32 2
  %h.0.i = select i1 %cmp10.i, i32 %and.i, i32 %8
  %is_50hz.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 27
  %13 = ptrtoint ptr %is_50hz.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_50hz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %cond11.i = select i1 %tobool.not.i, i32 480, i32 576
  %15 = tail call i32 @llvm.smin.i32(i32 %h.0.i, i32 %cond11.i) #17
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 %min_h.0.i) #17
  %width.i.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 20, i32 2
  %17 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %width.i.i, align 4
  %conv.i.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.i.i, ptr %fmt2.i, align 4
  %height.i.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 20, i32 3
  %20 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %height.i.i, align 2
  %conv5.i.i = zext i16 %21 to i32
  %22 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv5.i.i, ptr %height.i, align 4
  %colorspace.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %colorspace.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %field.i.i, align 4
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 1
  %div25.i.i = mul nuw nsw i32 %conv5.i.i, 1080
  %.sink27.i.i = select i1 %cmp.i.i, i32 842091848, i32 1195724877
  %.sink26.i.i = select i1 %cmp.i.i, i32 %div25.i.i, i32 131072
  %.sink.i.i = select i1 %cmp.i.i, i32 720, i32 0
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink27.i.i, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink26.i.i, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink.i.i, ptr %31, align 4
  %33 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %10, ptr %fmt2.i, align 4
  %34 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %16, ptr %height.i, align 4
  %35 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %width.i.i, align 4
  %conv = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp = icmp eq i32 %10, %conv
  br i1 %cmp, label %land.lhs.true, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %37 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %height.i.i, align 2
  %conv9 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv9)
  %cmp10 = icmp eq i32 %16, %conv9
  br i1 %cmp10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %capturing = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #17
  %39 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp15 = icmp sgt i32 %40, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %conv19 = trunc i32 %10 to i16
  %41 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv19, ptr %width.i.i, align 4
  %conv22 = trunc i32 %16 to i16
  %42 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv22, ptr %height.i.i, align 2
  %video_encoding = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 20, i32 13, i32 1
  %43 = ptrtoint ptr %video_encoding to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %video_encoding, align 4
  %call26 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %44) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end18.if.end32_crit_edge

if.end18.if.end32_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %45 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fmt2.i, align 4
  %div96 = lshr i32 %46, 1
  store i32 %div96, ptr %fmt2.i, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end18.if.end32_crit_edge
  %47 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fmt2.i, align 4
  %format35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %49 = ptrtoint ptr %format35 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %format35, align 4
  %height38 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %height38 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %16, ptr %height38, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %51 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %code, align 4
  %sd_video = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %sd_video to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sd_video, align 8
  %tobool40.not = icmp eq ptr %53, null
  br i1 %tobool40.not, label %if.end32.if.end63_crit_edge, label %if.else

if.end32.if.end63_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

if.else:                                          ; preds = %if.end32
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pad, align 4
  %tobool42.not = icmp eq ptr %57, null
  br i1 %tobool42.not, label %if.else.if.end63_crit_edge, label %land.lhs.true43

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

land.lhs.true43:                                  ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_fmt, align 4
  %tobool46.not = icmp eq ptr %59, null
  br i1 %tobool46.not, label %land.lhs.true43.if.end63_crit_edge, label %if.else48

land.lhs.true43.if.end63_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

if.else48:                                        ; preds = %land.lhs.true43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool49.not = icmp eq ptr %60, null
  br i1 %tobool49.not, label %if.else48.if.else56_crit_edge, label %land.lhs.true50

if.else48.if.else56_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else56

land.lhs.true50:                                  ; preds = %if.else48
  %set_fmt51 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %set_fmt51 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_fmt51, align 4
  %tobool52.not = icmp eq ptr %62, null
  br i1 %tobool52.not, label %land.lhs.true50.if.else56_crit_edge, label %land.lhs.true50.if.end63.sink.split_crit_edge

land.lhs.true50.if.end63.sink.split_crit_edge:    ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63.sink.split

land.lhs.true50.if.else56_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else56

if.else56:                                        ; preds = %land.lhs.true50.if.else56_crit_edge, %if.else48.if.else56_crit_edge
  br label %if.end63.sink.split

if.end63.sink.split:                              ; preds = %if.else56, %land.lhs.true50.if.end63.sink.split_crit_edge
  %.sink = phi ptr [ %59, %if.else56 ], [ %62, %land.lhs.true50.if.end63.sink.split_crit_edge ]
  %call60 = call i32 %.sink(ptr noundef nonnull %53, ptr noundef null, ptr noundef nonnull %format) #17
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %land.lhs.true43.if.end63_crit_edge, %if.else.if.end63_crit_edge, %if.end32.if.end63_crit_edge
  %63 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %itv1, align 4
  %width.i = getelementptr inbounds %struct.ivtv, ptr %64, i32 0, i32 20, i32 2
  %65 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %width.i, align 4
  %conv.i = zext i16 %66 to i32
  %67 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv.i, ptr %fmt2.i, align 4
  %height.i99 = getelementptr inbounds %struct.ivtv, ptr %64, i32 0, i32 20, i32 3
  %68 = ptrtoint ptr %height.i99 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %height.i99, align 2
  %conv5.i = zext i16 %69 to i32
  %70 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv5.i, ptr %height.i, align 4
  %71 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %colorspace.i.i, align 4
  %72 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 4, ptr %field.i.i, align 4
  %73 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp.i = icmp eq i32 %74, 1
  %div25.i = mul nuw nsw i32 %conv5.i, 1080
  %.sink27.i = select i1 %cmp.i, i32 842091848, i32 1195724877
  %.sink26.i = select i1 %cmp.i, i32 %div25.i, i32 131072
  %.sink.i = select i1 %cmp.i, i32 720, i32 0
  %75 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.sink27.i, ptr %27, align 4
  %76 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %.sink26.i, ptr %29, align 4
  %77 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %.sink.i, ptr %31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.end13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end63 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -16, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_s_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %fmt1.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt1.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height.i, align 4
  %field4.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %field4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field4.i, align 4
  %v4l2_cap.i.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %v4l2_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v4l2_cap.i.i, align 4
  %and.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.ivtv_g_fmt_vid_out.exit.i_crit_edge, label %if.end.i.i

entry.ivtv_g_fmt_vid_out.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ivtv_g_fmt_vid_out.exit.i

if.end.i.i:                                       ; preds = %entry
  %width.i.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 98, i32 2
  %10 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width.i.i, align 8
  %12 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fmt1.i, align 4
  %height.i.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 98, i32 3
  %13 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height.i.i, align 4
  %15 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height.i, align 4
  %colorspace.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %colorspace.i.i, align 4
  %17 = ptrtoint ptr %field4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %field4.i, align 4
  %type.i.i = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %18 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 8
  br i1 %cmp.i.i, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %lace_mode.i.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 50
  %20 = ptrtoint ptr %lace_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lace_mode.i.i, align 4
  %and7.i.i = and i32 %21, 3
  %22 = zext i32 %and7.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %and7.i.i, label %sw.default.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %if.then6.i.i.sw.epilog.i.i_crit_edge
  ]

if.then6.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %and10.i.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  %cond.i.i = select i1 %tobool11.not.i.i, i32 8, i32 9
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb.i.i, %if.then6.i.i.sw.epilog.i.i_crit_edge
  %.sink.i.i = phi i32 [ 0, %sw.default.i.i ], [ %cond.i.i, %sw.bb.i.i ], [ %and7.i.i, %if.then6.i.i.sw.epilog.i.i_crit_edge ]
  %23 = ptrtoint ptr %field4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink.i.i, ptr %field4.i, align 4
  %pixelformat.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 842091848, ptr %pixelformat.i.i, align 4
  %bytesperline.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %bytesperline.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 720, ptr %bytesperline.i.i, align 4
  %v4l2_src_w.i.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 67
  %26 = ptrtoint ptr %v4l2_src_w.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %v4l2_src_w.i.i, align 4
  %28 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fmt1.i, align 4
  %v4l2_src_h.i.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 68
  %29 = ptrtoint ptr %v4l2_src_h.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %v4l2_src_h.i.i, align 4
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %height.i, align 4
  %add.i.i = add i32 %30, 31
  %and21.i.i = and i32 %add.i.i, -32
  %mul.i.i = mul i32 %and21.i.i, 1080
  %sizeimage.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %32 = ptrtoint ptr %sizeimage.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul.i.i, ptr %sizeimage.i.i, align 4
  br label %ivtv_g_fmt_vid_out.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %pixelformat22.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %pixelformat22.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1195724877, ptr %pixelformat22.i.i, align 4
  %sizeimage23.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %34 = ptrtoint ptr %sizeimage23.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 131072, ptr %sizeimage23.i.i, align 4
  %bytesperline24.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %35 = ptrtoint ptr %bytesperline24.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %bytesperline24.i.i, align 4
  br label %ivtv_g_fmt_vid_out.exit.i

ivtv_g_fmt_vid_out.exit.i:                        ; preds = %if.else.i.i, %sw.epilog.i.i, %entry.ivtv_g_fmt_vid_out.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %entry.ivtv_g_fmt_vid_out.exit.i_crit_edge ], [ 0, %if.else.i.i ], [ 0, %sw.epilog.i.i ]
  %type.i = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %36 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %37)
  %cmp24.i = icmp eq i32 %37, 8
  br i1 %cmp24.i, label %if.then.i, label %ivtv_g_fmt_vid_out.exit.i.ivtv_try_fmt_vid_out.exit_crit_edge

ivtv_g_fmt_vid_out.exit.i.ivtv_try_fmt_vid_out.exit_crit_edge: ; preds = %ivtv_g_fmt_vid_out.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ivtv_try_fmt_vid_out.exit

if.then.i:                                        ; preds = %ivtv_g_fmt_vid_out.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %field4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %7, ptr %field4.i, align 4
  br label %ivtv_try_fmt_vid_out.exit

ivtv_try_fmt_vid_out.exit:                        ; preds = %if.then.i, %ivtv_g_fmt_vid_out.exit.i.ivtv_try_fmt_vid_out.exit_crit_edge
  %39 = tail call i32 @llvm.smin.i32(i32 %5, i32 576) #17
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 2) #17
  %41 = tail call i32 @llvm.smin.i32(i32 %3, i32 720) #17
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 2) #17
  %43 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %fmt1.i, align 4
  %44 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %40, ptr %height.i, align 4
  br i1 %tobool.not.i.i, label %ivtv_try_fmt_vid_out.exit.cleanup_crit_edge, label %if.end

ivtv_try_fmt_vid_out.exit.cleanup_crit_edge:      ; preds = %ivtv_try_fmt_vid_out.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %ivtv_try_fmt_vid_out.exit
  %45 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %46)
  %cmp.not = icmp eq i32 %46, 8
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %stream_size = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 63
  %47 = ptrtoint ptr %stream_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stream_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool5.not = icmp eq i32 %48, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %v4l2_src_w = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 67
  %49 = ptrtoint ptr %v4l2_src_w to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %42, ptr %v4l2_src_w, align 4
  %50 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height.i, align 4
  %v4l2_src_h = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 68
  %52 = ptrtoint ptr %v4l2_src_h to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %v4l2_src_h, align 4
  %53 = ptrtoint ptr %field4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %field4.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %54, label %sw.default [
    i32 1, label %if.end7.sw.epilog_crit_edge
    i32 0, label %sw.bb11
    i32 9, label %sw.bb13
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb11, %if.end7.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.default ], [ 4, %sw.bb13 ], [ 2, %sw.bb11 ], [ %54, %if.end7.sw.epilog_crit_edge ]
  %lace_mode16 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 50
  %56 = ptrtoint ptr %lace_mode16 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink, ptr %lace_mode16, align 4
  %and = lshr i32 %.sink, 2
  %lace_sync_field = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 52
  %57 = ptrtoint ptr %lace_sync_field to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and, ptr %lace_sync_field, align 4
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  %58 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %i_flags, align 4
  %60 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool20.not = icmp eq i32 %60, 0
  br i1 %tobool20.not, label %sw.epilog.cleanup_crit_edge, label %if.then21

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then21:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %61 = ptrtoint ptr %v4l2_src_h to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %v4l2_src_h, align 4
  %add = add i32 %62, 31
  %and23 = and i32 %add, -32
  %mul = mul i32 %and23, 1080
  %dma_data_req_size = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 57
  %63 = ptrtoint ptr %dma_data_req_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul, ptr %dma_data_req_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %sw.epilog.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ivtv_try_fmt_vid_out.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %ivtv_try_fmt_vid_out.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %if.end4.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_fmt_vid_out_overlay(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %type.i = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  %chromakey4.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %chromakey4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chromakey4.i, align 4
  %global_alpha6.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %global_alpha6.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %global_alpha6.i, align 4
  %caps.i = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 4
  %8 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %osd_video_pbase.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 91
  %10 = ptrtoint ptr %osd_video_pbase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %osd_video_pbase.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.i = icmp eq i32 %11, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end_crit_edge, label %if.then

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %fmt3.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %osd_chroma_key.i.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 96
  %12 = ptrtoint ptr %osd_chroma_key.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %osd_chroma_key.i.i, align 4
  %14 = ptrtoint ptr %chromakey4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %chromakey4.i, align 4
  %osd_global_alpha.i.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 95
  %15 = ptrtoint ptr %osd_global_alpha.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %osd_global_alpha.i.i, align 8
  %17 = ptrtoint ptr %global_alpha6.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %global_alpha6.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %field.i.i, align 4
  %clips.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %clips.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %clips.i.i, align 4
  %clipcount.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %20 = ptrtoint ptr %clipcount.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %clipcount.i.i, align 4
  %bitmap.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %bitmap.i.i, align 4
  %22 = ptrtoint ptr %fmt3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %fmt3.i.i, align 4
  %top.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %top.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %top.i.i, align 4
  %width.i.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 97, i32 2
  %24 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width.i.i, align 8
  %width9.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %width9.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %width9.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 97, i32 3
  %27 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height.i.i, align 4
  %height12.i.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %height12.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %height12.i.i, align 4
  store i32 %5, ptr %chromakey4.i, align 4
  store i8 %7, ptr %global_alpha6.i, align 4
  store i32 %5, ptr %osd_chroma_key.i.i, align 4
  %30 = load i8, ptr %global_alpha6.i, align 4
  store i8 %30, ptr %osd_global_alpha.i.i, align 8
  %osd_global_alpha_state.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 92
  %31 = ptrtoint ptr %osd_global_alpha_state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %osd_global_alpha_state.i, align 4
  %conv.i = zext i8 %30 to i32
  %osd_local_alpha_state.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 93
  %33 = ptrtoint ptr %osd_local_alpha_state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %osd_local_alpha_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i11 = icmp eq i32 %34, 0
  %lnot.ext.i = zext i1 %tobool.not.i11 to i32
  %call.i = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 75, i32 noundef 3, i32 noundef %32, i32 noundef %conv.i, i32 noundef %lnot.ext.i) #17
  %osd_chroma_key_state.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 94
  %35 = ptrtoint ptr %osd_chroma_key_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %osd_chroma_key_state.i, align 4
  %37 = ptrtoint ptr %osd_chroma_key.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %osd_chroma_key.i.i, align 4
  %call1.i = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 96, i32 noundef 2, i32 noundef %36, i32 noundef %38) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i14 = phi i32 [ 0, %if.then ], [ -22, %entry.if.end_crit_edge ], [ -22, %if.end.i.if.end_crit_edge ]
  ret i32 %retval.0.i14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_fmt_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %in.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89, i32 14
  %2 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 4
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %capturing = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #17
  %4 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sliced_in = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89, i32 15
  %6 = ptrtoint ptr %sliced_in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sliced_in, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %7, align 4
  %9 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %in.i, align 4
  %sd_video = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %sd_video to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_video, align 8
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end.if.end31_crit_edge, label %if.else

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %vbi7 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %vbi7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vbi7, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.else.if.end31_crit_edge, label %land.lhs.true9

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

land.lhs.true9:                                   ; preds = %if.else
  %s_raw_fmt = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %s_raw_fmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_raw_fmt, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %land.lhs.true9.if.end31_crit_edge, label %if.else14

land.lhs.true9.if.end31_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.else14:                                        ; preds = %land.lhs.true9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %if.else14.if.else23_crit_edge, label %land.lhs.true16

if.else14.if.else23_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else23

land.lhs.true16:                                  ; preds = %if.else14
  %s_raw_fmt17 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %s_raw_fmt17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_raw_fmt17, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %land.lhs.true16.if.else23_crit_edge, label %land.lhs.true16.if.end31.sink.split_crit_edge

land.lhs.true16.if.end31.sink.split_crit_edge:    ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31.sink.split

land.lhs.true16.if.else23_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else23

if.else23:                                        ; preds = %land.lhs.true16.if.else23_crit_edge, %if.else14.if.else23_crit_edge
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %if.else23, %land.lhs.true16.if.end31.sink.split_crit_edge
  %.sink = phi ptr [ %17, %if.else23 ], [ %20, %land.lhs.true16.if.end31.sink.split_crit_edge ]
  %fmt27 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %call28 = tail call i32 %.sink(ptr noundef nonnull %11, ptr noundef %fmt27) #17
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %land.lhs.true9.if.end31_crit_edge, %if.else.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %21 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %itv1, align 4
  %fmt2.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %23 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 27000000, ptr %fmt2.i, align 4
  %offset.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 248, ptr %offset.i, align 4
  %vbi.i = getelementptr inbounds %struct.ivtv, ptr %22, i32 0, i32 89
  %25 = ptrtoint ptr %vbi.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vbi.i, align 4
  %sub.i = add i32 %26, -4
  %samples_per_line.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %samples_per_line.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.i, ptr %samples_per_line.i, align 4
  %sample_format.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %sample_format.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1497715271, ptr %sample_format.i, align 4
  %start.i = getelementptr inbounds %struct.ivtv, ptr %22, i32 0, i32 89, i32 6
  %29 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %start.i, align 4
  %start4.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %31 = ptrtoint ptr %start4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %start4.i, align 4
  %arrayidx8.i = getelementptr %struct.ivtv, ptr %22, i32 0, i32 89, i32 6, i32 1
  %32 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %34 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx10.i, align 4
  %count.i = getelementptr inbounds %struct.ivtv, ptr %22, i32 0, i32 89, i32 7
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i, align 4
  %count12.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %arrayidx13.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx13.i, align 4
  %38 = ptrtoint ptr %count12.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %count12.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %flags.i, align 4
  %reserved.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %40 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %reserved.i, align 4
  %arrayidx18.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx18.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -16, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_fmt_sliced_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %itv2 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv2, align 4
  %call3 = tail call i32 @ivtv_try_fmt_sliced_vbi_cap(ptr noundef %file, ptr noundef %fh, ptr noundef %fmt)
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_50hz = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_50hz, align 4
  %conv = zext i8 %5 to i32
  tail call fastcc void @check_service_set(ptr noundef %fmt1, i32 noundef %conv)
  %in.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89, i32 14
  %6 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 4
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %capturing = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #17
  %8 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7 = icmp sgt i32 %9, 0
  br i1 %cmp7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %10 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %in.i, align 4
  %sd_video = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %sd_video to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_video, align 8
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.end10.if.end36_crit_edge, label %if.else

if.end10.if.end36_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.else:                                          ; preds = %if.end10
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %vbi14 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %vbi14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vbi14, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %if.else.if.end36_crit_edge, label %land.lhs.true16

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

land.lhs.true16:                                  ; preds = %if.else
  %s_sliced_fmt = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %s_sliced_fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_sliced_fmt, align 4
  %tobool19.not = icmp eq ptr %18, null
  br i1 %tobool19.not, label %land.lhs.true16.if.end36_crit_edge, label %if.else21

land.lhs.true16.if.end36_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.else21:                                        ; preds = %land.lhs.true16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool22.not = icmp eq ptr %19, null
  br i1 %tobool22.not, label %if.else21.if.else29_crit_edge, label %land.lhs.true23

if.else21.if.else29_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else29

land.lhs.true23:                                  ; preds = %if.else21
  %s_sliced_fmt24 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %s_sliced_fmt24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_sliced_fmt24, align 4
  %tobool25.not = icmp eq ptr %21, null
  br i1 %tobool25.not, label %land.lhs.true23.if.else29_crit_edge, label %land.lhs.true23.if.end36.sink.split_crit_edge

land.lhs.true23.if.end36.sink.split_crit_edge:    ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36.sink.split

land.lhs.true23.if.else29_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else29

if.else29:                                        ; preds = %land.lhs.true23.if.else29_crit_edge, %if.else21.if.else29_crit_edge
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %if.else29, %land.lhs.true23.if.end36.sink.split_crit_edge
  %.sink = phi ptr [ %18, %if.else29 ], [ %21, %land.lhs.true23.if.end36.sink.split_crit_edge ]
  %call33 = tail call i32 %.sink(ptr noundef nonnull %12, ptr noundef %fmt1) #17
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %land.lhs.true16.if.end36_crit_edge, %if.else.if.end36_crit_edge, %if.end10.if.end36_crit_edge
  %sliced_in = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89, i32 15
  %22 = ptrtoint ptr %sliced_in to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sliced_in, align 4
  %24 = call ptr @memcpy(ptr %23, ptr %fmt1, i32 112)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ 0, %entry.cleanup_crit_edge ], [ -16, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_fmt_sliced_vbi_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1.i = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1.i, align 4
  %fmt2.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %reserved.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 1
  %2 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reserved.i, align 4
  %arrayidx4.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 2
  %3 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx4.i, align 4
  %v4l2_cap.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %v4l2_cap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v4l2_cap.i, align 4
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ivtv_g_fmt_sliced_vbi_out.exit_crit_edge, label %if.end.i

entry.ivtv_g_fmt_sliced_vbi_out.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ivtv_g_fmt_sliced_vbi_out.exit

if.end.i:                                         ; preds = %entry
  %io_size.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %io_size.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2304, ptr %io_size.i, align 4
  %service_lines.i = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %fmt2.i, i32 0, i32 1
  %7 = call ptr @memset(ptr %service_lines.i, i32 0, i32 96)
  %is_60hz.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %is_60hz.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_60hz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not.i = icmp eq i8 %9, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx9.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4096, ptr %arrayidx9.i, align 2
  %arrayidx12.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 3, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4096, ptr %arrayidx12.i, align 2
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx15.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 16384, ptr %arrayidx15.i, align 2
  %arrayidx18.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1024, ptr %arrayidx18.i, align 2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then6.i
  %call20.i = tail call zeroext i16 @ivtv_get_service_set(ptr noundef %fmt2.i) #17
  %14 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %call20.i, ptr %fmt2.i, align 4
  br label %ivtv_g_fmt_sliced_vbi_out.exit

ivtv_g_fmt_sliced_vbi_out.exit:                   ; preds = %if.end19.i, %entry.ivtv_g_fmt_sliced_vbi_out.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end19.i ], [ -22, %entry.ivtv_g_fmt_sliced_vbi_out.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt2, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %3, i32 720)
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 2)
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp10 = icmp eq i32 %9, 1
  %and = and i32 %5, -32
  %min_h.0 = select i1 %cmp10, i32 32, i32 2
  %h.0 = select i1 %cmp10, i32 %and, i32 %5
  %is_50hz = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %cond11 = select i1 %tobool.not, i32 480, i32 576
  %12 = tail call i32 @llvm.smin.i32(i32 %h.0, i32 %cond11)
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 %min_h.0)
  %width.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 20, i32 2
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %width.i, align 4
  %conv.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i, ptr %fmt2, align 4
  %height.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 20, i32 3
  %17 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %height.i, align 2
  %conv5.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv5.i, ptr %height, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %field.i, align 4
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i = icmp eq i32 %23, 1
  %div25.i = mul nuw nsw i32 %conv5.i, 1080
  %.sink27.i = select i1 %cmp.i, i32 842091848, i32 1195724877
  %.sink26.i = select i1 %cmp.i, i32 %div25.i, i32 131072
  %.sink.i = select i1 %cmp.i, i32 720, i32 0
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink27.i, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink26.i, ptr %26, align 4
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink.i, ptr %28, align 4
  %30 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %7, ptr %fmt2, align 4
  %31 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %13, ptr %height, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_try_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt1, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %field4 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %field4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field4, align 4
  %itv1.i = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %6 = ptrtoint ptr %itv1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %itv1.i, align 4
  %v4l2_cap.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %v4l2_cap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v4l2_cap.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ivtv_g_fmt_vid_out.exit_crit_edge, label %if.end.i

entry.ivtv_g_fmt_vid_out.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ivtv_g_fmt_vid_out.exit

if.end.i:                                         ; preds = %entry
  %width.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 98, i32 2
  %10 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width.i, align 8
  %12 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fmt1, align 4
  %height.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 98, i32 3
  %13 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height.i, align 4
  %15 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %colorspace.i, align 4
  %17 = ptrtoint ptr %field4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %field4, align 4
  %type.i = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp.i = icmp eq i32 %19, 8
  br i1 %cmp.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i
  %lace_mode.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 90, i32 50
  %20 = ptrtoint ptr %lace_mode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lace_mode.i, align 4
  %and7.i = and i32 %21, 3
  %22 = zext i32 %and7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %and7.i, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.then6.i.sw.epilog.i_crit_edge
  ]

if.then6.i.sw.epilog.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #19
  %and10.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %cond.i = select i1 %tobool11.not.i, i32 8, i32 9
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i, %if.then6.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 0, %sw.default.i ], [ %cond.i, %sw.bb.i ], [ %and7.i, %if.then6.i.sw.epilog.i_crit_edge ]
  %23 = ptrtoint ptr %field4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink.i, ptr %field4, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 842091848, ptr %pixelformat.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 720, ptr %bytesperline.i, align 4
  %v4l2_src_w.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 90, i32 67
  %26 = ptrtoint ptr %v4l2_src_w.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %v4l2_src_w.i, align 4
  %28 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fmt1, align 4
  %v4l2_src_h.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 90, i32 68
  %29 = ptrtoint ptr %v4l2_src_h.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %v4l2_src_h.i, align 4
  %31 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %height, align 4
  %add.i = add i32 %30, 31
  %and21.i = and i32 %add.i, -32
  %mul.i = mul i32 %and21.i, 1080
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %32 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul.i, ptr %sizeimage.i, align 4
  br label %ivtv_g_fmt_vid_out.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %pixelformat22.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %pixelformat22.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1195724877, ptr %pixelformat22.i, align 4
  %sizeimage23.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %34 = ptrtoint ptr %sizeimage23.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 131072, ptr %sizeimage23.i, align 4
  %bytesperline24.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %35 = ptrtoint ptr %bytesperline24.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %bytesperline24.i, align 4
  br label %ivtv_g_fmt_vid_out.exit

ivtv_g_fmt_vid_out.exit:                          ; preds = %if.else.i, %sw.epilog.i, %entry.ivtv_g_fmt_vid_out.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.ivtv_g_fmt_vid_out.exit_crit_edge ], [ 0, %if.else.i ], [ 0, %sw.epilog.i ]
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %36 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %37)
  %cmp24 = icmp eq i32 %37, 8
  br i1 %cmp24, label %if.then, label %ivtv_g_fmt_vid_out.exit.if.end_crit_edge

ivtv_g_fmt_vid_out.exit.if.end_crit_edge:         ; preds = %ivtv_g_fmt_vid_out.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %ivtv_g_fmt_vid_out.exit
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %field4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %5, ptr %field4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %ivtv_g_fmt_vid_out.exit.if.end_crit_edge
  %39 = tail call i32 @llvm.smin.i32(i32 %3, i32 576)
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 2)
  %41 = tail call i32 @llvm.smin.i32(i32 %1, i32 720)
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 2)
  %43 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %fmt1, align 4
  %44 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %40, ptr %height, align 4
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_try_fmt_vid_out_overlay(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %chromakey4 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %chromakey4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chromakey4, align 4
  %global_alpha6 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %global_alpha6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %global_alpha6, align 4
  %caps = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 4
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps, align 4
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %osd_video_pbase = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 91
  %10 = ptrtoint ptr %osd_video_pbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %osd_video_pbase, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %ivtv_g_fmt_vid_out_overlay.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

ivtv_g_fmt_vid_out_overlay.exit:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %fmt3.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %osd_chroma_key.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 96
  %12 = ptrtoint ptr %osd_chroma_key.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %osd_chroma_key.i, align 4
  %14 = ptrtoint ptr %chromakey4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %chromakey4, align 4
  %osd_global_alpha.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 95
  %15 = ptrtoint ptr %osd_global_alpha.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %osd_global_alpha.i, align 8
  %17 = ptrtoint ptr %global_alpha6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %global_alpha6, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %field.i, align 4
  %clips.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %clips.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %clips.i, align 4
  %clipcount.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %20 = ptrtoint ptr %clipcount.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %clipcount.i, align 4
  %bitmap.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %bitmap.i, align 4
  %22 = ptrtoint ptr %fmt3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %fmt3.i, align 4
  %top.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %top.i, align 4
  %width.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 97, i32 2
  %24 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width.i, align 8
  %width9.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %width9.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %width9.i, align 4
  %height.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 97, i32 3
  %27 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height.i, align 4
  %height12.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %height12.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %height12.i, align 4
  store i32 %5, ptr %chromakey4, align 4
  store i8 %7, ptr %global_alpha6, align 4
  br label %cleanup

cleanup:                                          ; preds = %ivtv_g_fmt_vid_out_overlay.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ivtv_g_fmt_vid_out_overlay.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_try_fmt_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %fmt) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1.i = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1.i, align 4
  %fmt2.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 27000000, ptr %fmt2.i, align 4
  %offset.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 248, ptr %offset.i, align 4
  %vbi.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89
  %4 = ptrtoint ptr %vbi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vbi.i, align 4
  %sub.i = add i32 %5, -4
  %samples_per_line.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %samples_per_line.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.i, ptr %samples_per_line.i, align 4
  %sample_format.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %sample_format.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1497715271, ptr %sample_format.i, align 4
  %start.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89, i32 6
  %8 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start.i, align 4
  %start4.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %start4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %start4.i, align 4
  %arrayidx8.i = getelementptr %struct.ivtv, ptr %1, i32 0, i32 89, i32 6, i32 1
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx10.i, align 4
  %count.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89, i32 7
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count.i, align 4
  %count12.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %arrayidx13.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx13.i, align 4
  %17 = ptrtoint ptr %count12.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %count12.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags.i, align 4
  %reserved.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %reserved.i, align 4
  %arrayidx18.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx18.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_try_fmt_sliced_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %itv2 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv2, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %reserved.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 1
  %4 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %reserved.i, align 4
  %arrayidx4.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 2
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx4.i, align 4
  %io_size.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %io_size.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2304, ptr %io_size.i, align 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp.i = icmp eq i32 %8, 6
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %is_50hz.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %is_50hz.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_50hz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %conv5.i = select i1 %tobool.not.i, i16 4096, i16 17409
  %11 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv5.i, ptr %fmt1, align 4
  %12 = ptrtoint ptr %is_50hz.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_50hz.i, align 4
  %conv7.i = zext i8 %13 to i32
  tail call void @ivtv_expand_service_set(ptr noundef %fmt1, i32 noundef %conv7.i) #17
  br label %ivtv_g_fmt_sliced_vbi_cap.exit

if.end.i:                                         ; preds = %if.then
  %sd_video.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %sd_video.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_video.i, align 8
  %tobool10.not.i = icmp eq ptr %15, null
  br i1 %tobool10.not.i, label %if.end.i.ivtv_g_fmt_sliced_vbi_cap.exit_crit_edge, label %if.else.i

if.end.i.ivtv_g_fmt_sliced_vbi_cap.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ivtv_g_fmt_sliced_vbi_cap.exit

if.else.i:                                        ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %vbi.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %vbi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vbi.i, align 4
  %tobool12.not.i = icmp eq ptr %19, null
  br i1 %tobool12.not.i, label %if.else.i.ivtv_g_fmt_sliced_vbi_cap.exit_crit_edge, label %land.lhs.true.i

if.else.i.ivtv_g_fmt_sliced_vbi_cap.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ivtv_g_fmt_sliced_vbi_cap.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %g_sliced_fmt.i = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %g_sliced_fmt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %g_sliced_fmt.i, align 4
  %tobool15.not.i = icmp eq ptr %21, null
  br i1 %tobool15.not.i, label %land.lhs.true.i.ivtv_g_fmt_sliced_vbi_cap.exit_crit_edge, label %if.else17.i

land.lhs.true.i.ivtv_g_fmt_sliced_vbi_cap.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ivtv_g_fmt_sliced_vbi_cap.exit

if.else17.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool18.not.i = icmp eq ptr %22, null
  br i1 %tobool18.not.i, label %if.else17.i.if.else25.i_crit_edge, label %land.lhs.true19.i

if.else17.i.if.else25.i_crit_edge:                ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else25.i

land.lhs.true19.i:                                ; preds = %if.else17.i
  %g_sliced_fmt20.i = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %g_sliced_fmt20.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %g_sliced_fmt20.i, align 4
  %tobool21.not.i = icmp eq ptr %24, null
  br i1 %tobool21.not.i, label %land.lhs.true19.i.if.else25.i_crit_edge, label %land.lhs.true19.i.if.end32.sink.split.i_crit_edge

land.lhs.true19.i.if.end32.sink.split.i_crit_edge: ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32.sink.split.i

land.lhs.true19.i.if.else25.i_crit_edge:          ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else25.i

if.else25.i:                                      ; preds = %land.lhs.true19.i.if.else25.i_crit_edge, %if.else17.i.if.else25.i_crit_edge
  br label %if.end32.sink.split.i

if.end32.sink.split.i:                            ; preds = %if.else25.i, %land.lhs.true19.i.if.end32.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %21, %if.else25.i ], [ %24, %land.lhs.true19.i.if.end32.sink.split.i_crit_edge ]
  %call29.i = tail call i32 %.sink.i(ptr noundef nonnull %15, ptr noundef %fmt1) #17
  br label %ivtv_g_fmt_sliced_vbi_cap.exit

ivtv_g_fmt_sliced_vbi_cap.exit:                   ; preds = %if.end32.sink.split.i, %land.lhs.true.i.ivtv_g_fmt_sliced_vbi_cap.exit_crit_edge, %if.else.i.ivtv_g_fmt_sliced_vbi_cap.exit_crit_edge, %if.end.i.ivtv_g_fmt_sliced_vbi_cap.exit_crit_edge, %if.then.i
  %call33.i = tail call zeroext i16 @ivtv_get_service_set(ptr noundef %fmt1) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_size = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %io_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2304, ptr %io_size, align 4
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 1
  %26 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %reserved, align 4
  %arrayidx5 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 2
  %27 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx5, align 4
  %28 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not = icmp eq i16 %29, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %is_50hz = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 27
  %30 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_50hz, align 4
  %conv = zext i8 %31 to i32
  tail call void @ivtv_expand_service_set(ptr noundef %fmt1, i32 noundef %conv)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %is_50hz8 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 27
  %32 = ptrtoint ptr %is_50hz8 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_50hz8, align 4
  %conv9 = zext i8 %33 to i32
  tail call fastcc void @check_service_set(ptr noundef %fmt1, i32 noundef %conv9)
  %call10 = tail call zeroext i16 @ivtv_get_service_set(ptr noundef %fmt1)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %ivtv_g_fmt_sliced_vbi_cap.exit
  %storemerge = phi i16 [ %call10, %if.end7 ], [ %call33.i, %ivtv_g_fmt_sliced_vbi_cap.exit ]
  %34 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %storemerge, ptr %fmt1, align 4
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_try_fmt_sliced_vbi_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1.i = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1.i, align 4
  %fmt2.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %reserved.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 1
  %2 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reserved.i, align 4
  %arrayidx4.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 2
  %3 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx4.i, align 4
  %v4l2_cap.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %v4l2_cap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v4l2_cap.i, align 4
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ivtv_g_fmt_sliced_vbi_out.exit_crit_edge, label %if.end.i

entry.ivtv_g_fmt_sliced_vbi_out.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ivtv_g_fmt_sliced_vbi_out.exit

if.end.i:                                         ; preds = %entry
  %io_size.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %io_size.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2304, ptr %io_size.i, align 4
  %service_lines.i = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %fmt2.i, i32 0, i32 1
  %7 = call ptr @memset(ptr %service_lines.i, i32 0, i32 96)
  %is_60hz.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %is_60hz.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_60hz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not.i = icmp eq i8 %9, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx9.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4096, ptr %arrayidx9.i, align 2
  %arrayidx12.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 3, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4096, ptr %arrayidx12.i, align 2
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx15.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 16384, ptr %arrayidx15.i, align 2
  %arrayidx18.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1024, ptr %arrayidx18.i, align 2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then6.i
  %call20.i = tail call zeroext i16 @ivtv_get_service_set(ptr noundef %fmt2.i) #17
  %14 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %call20.i, ptr %fmt2.i, align 4
  br label %ivtv_g_fmt_sliced_vbi_out.exit

ivtv_g_fmt_sliced_vbi_out.exit:                   ; preds = %if.end19.i, %entry.ivtv_g_fmt_sliced_vbi_out.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end19.i ], [ -22, %entry.ivtv_g_fmt_sliced_vbi_out.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_overlay(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i32 noundef %on) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %caps = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 4
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %osd_video_pbase = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 91
  %6 = ptrtoint ptr %osd_video_pbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %osd_video_pbase, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %cmp = icmp ne i32 %on, 0
  %conv = zext i1 %cmp to i32
  %call6 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 69, i32 noundef 1, i32 noundef %conv) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -25, %entry.cleanup_crit_edge ], [ -25, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_g_fbuf(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fb) #4 align 64 {
entry:
  %data = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #17
  %4 = call ptr @memset(ptr %data, i32 255, i32 64)
  %caps = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 4
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %osd_video_pbase = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 91
  %7 = ptrtoint ptr %osd_video_pbase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %osd_video_pbase, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %fb to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 35, ptr %fb, align 4
  %call6 = call i32 (ptr, ptr, i32, i32, ...) @ivtv_vapi_result(ptr noundef %1, ptr noundef nonnull %data, i32 noundef 68, i32 noundef 0) #17
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 10752
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !228
  %13 = lshr i32 %12, 15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !230
  %and9 = and i32 %13, 64
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  %or = or i32 %15, %and9
  store i32 %or, ptr %data, align 4
  %shr12 = lshr i32 %or, 3
  %and13 = and i32 %shr12, 15
  %arrayidx14 = getelementptr [16 x i32], ptr @ivtv_g_fbuf.pixel_format, i32 0, i32 %and13
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %fmt = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fb, i32 0, i32 3
  %pixelformat = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fb, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pixelformat, align 4
  %width = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 97, i32 2
  %19 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width, align 8
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 97, i32 3
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %height19 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fb, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %height19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %height19, align 4
  %field = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fb, i32 0, i32 3, i32 3
  %bytesperline = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fb, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %20, ptr %bytesperline, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fb, i32 0, i32 3, i32 6
  %26 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %colorspace, align 4
  %27 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %field, align 4
  %28 = and i32 %15, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %if.end5.if.end43_crit_edge, label %if.end32

if.end5.if.end43_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.end32:                                         ; preds = %if.end5
  %mul = shl i32 %20, 1
  %30 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %bytesperline, align 4
  %31 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %17, label %if.end32.if.end43_crit_edge [
    i32 876758866, label %if.end32.if.then39_crit_edge
    i32 878073177, label %if.end32.if.then39_crit_edge149
  ]

if.end32.if.then39_crit_edge149:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then39

if.end32.if.then39_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then39

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then39:                                        ; preds = %if.end32.if.then39_crit_edge, %if.end32.if.then39_crit_edge149
  %32 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytesperline, align 4
  %mul42 = shl i32 %33, 1
  store i32 %mul42, ptr %bytesperline, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end32.if.end43_crit_edge, %if.end5.if.end43_crit_edge
  %34 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bytesperline, align 4
  %mul48 = mul i32 %35, %23
  %sizeimage = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fb, i32 0, i32 3, i32 5
  %36 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul48, ptr %sizeimage, align 4
  %37 = ptrtoint ptr %osd_video_pbase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %osd_video_pbase, align 8
  %39 = inttoptr i32 %38 to ptr
  %base = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fb, i32 0, i32 2
  %40 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %base, align 4
  %flags = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fb, i32 0, i32 1
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %flags, align 4
  %osd_chroma_key_state = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 94
  %42 = ptrtoint ptr %osd_chroma_key_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %osd_chroma_key_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool51.not = icmp eq i32 %43, 0
  %spec.store.select = select i1 %tobool51.not, i32 0, i32 4
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.store.select, ptr %flags, align 4
  %osd_global_alpha_state = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 92
  %45 = ptrtoint ptr %osd_global_alpha_state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %osd_global_alpha_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool56.not = icmp eq i32 %46, 0
  br i1 %tobool56.not, label %if.end43.if.end60_crit_edge, label %if.then57

if.end43.if.end60_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

if.then57:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  %or59 = or i32 %spec.store.select, 16
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or59, ptr %flags, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end43.if.end60_crit_edge
  %track_osd = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 40
  %48 = ptrtoint ptr %track_osd to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %track_osd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool61.not = icmp eq i8 %49, 0
  br i1 %tobool61.not, label %if.end60.if.end65_crit_edge, label %if.then62

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %or64 = or i32 %51, 2
  store i32 %or64, ptr %flags, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end60.if.end65_crit_edge
  %and66 = and i32 %shr12, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and66)
  %cmp67 = icmp eq i32 %and66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and66)
  %cmp69 = icmp ugt i32 %and66, 4
  %or.cond = or i1 %cmp67, %cmp69
  br i1 %or.cond, label %if.end65.cleanup_crit_edge, label %if.end71

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end71:                                         ; preds = %if.end65
  %52 = and i32 %15, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %52)
  %switch = icmp eq i32 %52, 16
  %53 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fb, align 4
  br i1 %switch, label %if.end80, label %if.end80.thread

if.end80:                                         ; preds = %if.end71
  %or77 = or i32 %54, 64
  %55 = ptrtoint ptr %fb to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or77, ptr %fb, align 4
  %osd_local_alpha_state = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 93
  %56 = ptrtoint ptr %osd_local_alpha_state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %osd_local_alpha_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool81.not = icmp eq i32 %57, 0
  br i1 %tobool81.not, label %if.end80.cleanup_crit_edge, label %if.end80.cleanup.sink.split_crit_edge

if.end80.cleanup.sink.split_crit_edge:            ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end80.thread:                                  ; preds = %if.end71
  %or79 = or i32 %54, 16
  %58 = ptrtoint ptr %fb to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or79, ptr %fb, align 4
  %osd_local_alpha_state146 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 93
  %59 = ptrtoint ptr %osd_local_alpha_state146 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %osd_local_alpha_state146, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool81.not147 = icmp eq i32 %60, 0
  br i1 %tobool81.not147, label %if.end80.thread.cleanup_crit_edge, label %if.end80.thread.cleanup.sink.split_crit_edge

if.end80.thread.cleanup.sink.split_crit_edge:     ; preds = %if.end80.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end80.thread.cleanup_crit_edge:                ; preds = %if.end80.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end80.thread.cleanup.sink.split_crit_edge, %if.end80.cleanup.sink.split_crit_edge
  %.sink148 = phi i32 [ 32, %if.end80.cleanup.sink.split_crit_edge ], [ 8, %if.end80.thread.cleanup.sink.split_crit_edge ]
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 4
  %or91 = or i32 %62, %.sink148
  store i32 %or91, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end80.thread.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %entry.cleanup_crit_edge ], [ -25, %if.end.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ], [ 0, %if.end80.thread.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_fbuf(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef readonly %fb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %caps = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 4
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %osd_video_pbase = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 91
  %6 = ptrtoint ptr %osd_video_pbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %osd_video_pbase, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fb, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and6 = lshr i32 %9, 4
  %and6.lobit = and i32 %and6, 1
  %osd_global_alpha_state = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 92
  %10 = ptrtoint ptr %osd_global_alpha_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and6.lobit, ptr %osd_global_alpha_state, align 4
  %11 = load i32, ptr %flags, align 4
  %and8 = and i32 %11, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9 = icmp ne i32 %and8, 0
  %conv10 = zext i1 %cmp9 to i32
  %osd_local_alpha_state = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 93
  %12 = ptrtoint ptr %osd_local_alpha_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv10, ptr %osd_local_alpha_state, align 8
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and12 = lshr i32 %14, 2
  %and12.lobit = and i32 %and12, 1
  %osd_chroma_key_state = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 94
  %15 = ptrtoint ptr %osd_chroma_key_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and12.lobit, ptr %osd_chroma_key_state, align 4
  %osd_global_alpha.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 95
  %16 = ptrtoint ptr %osd_global_alpha.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %osd_global_alpha.i, align 8
  %conv.i = zext i8 %17 to i32
  %tobool.not.i = xor i1 %cmp9, true
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  %call.i = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 75, i32 noundef 3, i32 noundef %and6.lobit, i32 noundef %conv.i, i32 noundef %lnot.ext.i) #17
  %18 = ptrtoint ptr %osd_chroma_key_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %osd_chroma_key_state, align 4
  %osd_chroma_key.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 96
  %20 = ptrtoint ptr %osd_chroma_key.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %osd_chroma_key.i, align 4
  %call1.i = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 96, i32 noundef 2, i32 noundef %19, i32 noundef %21) #17
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %24 = trunc i32 %23 to i8
  %25 = lshr i8 %24, 1
  %26 = and i8 %25, 1
  %track_osd = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 40
  %27 = ptrtoint ptr %track_osd to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %track_osd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -25, %entry.cleanup_crit_edge ], [ -25, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_g_std(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %std) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %std2 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %std2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std2, align 8
  %4 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %std, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_std(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i64 noundef %std) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %and = and i64 %std, 16777215
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %std2 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %std2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %std)
  %cmp3 = icmp eq i64 %3, %std
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_flags, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %capturing = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #17
  %7 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %decoding = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 44
  %call.i.i38 = tail call zeroext i1 @__kasan_check_read(ptr noundef %decoding, i32 noundef 4) #17
  %9 = ptrtoint ptr %decoding to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %decoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11 = icmp sgt i32 %10, 0
  br i1 %cmp11, label %lor.lhs.false9.cleanup_crit_edge, label %do.body

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %11 = load i32, ptr @ivtv_debug, align 4
  %and14 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body.do.end22_crit_edge, label %do.end

do.body.do.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end22

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %12 = ptrtoint ptr %std2 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %std2, align 8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, i64 noundef %13) #20
  br label %do.end22

do.end22:                                         ; preds = %do.end, %do.body.do.end22_crit_edge
  tail call void @ivtv_s_std_enc(ptr noundef %1, i64 noundef %std)
  %v4l2_cap = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %v4l2_cap, align 4
  %and23 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.end22.cleanup_crit_edge, label %if.then25

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then25:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ivtv_s_std_dec(ptr noundef %1, i64 noundef %std)
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %do.end22.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %lor.lhs.false9.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end5.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %do.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vin) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %2 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vin, align 8
  %conv = trunc i32 %3 to i16
  %call2 = tail call i32 @ivtv_get_input(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef %vin) #17
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %i) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %active_input = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %active_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_input, align 8
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_enum_output(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vout) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %2 = ptrtoint ptr %vout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vout, align 8
  %conv = trunc i32 %3 to i16
  %call2 = tail call i32 @ivtv_get_output(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef %vout) #17
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_g_output(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %i) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %v4l2_cap = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v4l2_cap, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %active_output = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 34
  %4 = ptrtoint ptr %active_output to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_output, align 4
  %6 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_output(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i32 noundef %outp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %card = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %nof_outputs = getelementptr inbounds %struct.ivtv_card, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %nof_outputs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nof_outputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %outp)
  %cmp.not = icmp ugt i32 %5, %outp
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %active_output = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %active_output to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_output, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %outp)
  %cmp2 = icmp eq i32 %7, %outp
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %8 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp2, label %do.body, label %do.body11

do.body:                                          ; preds = %if.end
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name) #20
  br label %cleanup

do.body11:                                        ; preds = %if.end
  br i1 %tobool.not, label %do.body11.do.end26_crit_edge, label %do.end17

do.body11.do.end26_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #19
  %name20 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name20, i32 noundef %7, i32 noundef %outp) #20
  br label %do.end26

do.end26:                                         ; preds = %do.end17, %do.body11.do.end26_crit_edge
  %9 = ptrtoint ptr %active_output to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %outp, ptr %active_output, align 4
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 2
  %10 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn78 = load ptr, ptr %subdevs, align 4
  %cmp34.not80 = icmp eq ptr %.pn78, %subdevs
  br i1 %cmp34.not80, label %do.end26.cleanup_crit_edge, label %do.end26.for.body_crit_edge

do.end26.for.body_crit_edge:                      ; preds = %do.end26
  br label %for.body

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end26.for.body_crit_edge
  %.pn81 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn78, %do.end26.for.body_crit_edge ]
  %__sd.082 = getelementptr i8, ptr %.pn81, i32 -80
  %grp_id = getelementptr i8, ptr %.pn81, i32 68
  %11 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %grp_id, align 4
  %and35 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ops = getelementptr i8, ptr %.pn81, i32 24
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %video, align 4
  %tobool37.not = icmp eq ptr %16, null
  br i1 %tobool37.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true38

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true38:                                  ; preds = %land.lhs.true
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool41.not = icmp eq ptr %18, null
  br i1 %tobool41.not, label %land.lhs.true38.for.inc_crit_edge, label %if.then42

land.lhs.true38.for.inc_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then42:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  %video_outputs = getelementptr inbounds %struct.ivtv_card, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %video_outputs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %video_outputs, align 8
  %video_output = getelementptr %struct.ivtv_card_output, ptr %22, i32 %outp, i32 1
  %23 = ptrtoint ptr %video_output to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %video_output, align 2
  %conv = zext i16 %24 to i32
  %call47 = tail call i32 %18(ptr noundef %__sd.082, i32 noundef 0, i32 noundef %conv, i32 noundef 0) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %land.lhs.true38.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %.pn81 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn81, align 4
  %cmp34.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp34.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end26.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.end26.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_enumaudio(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vin) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %2 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vin, align 4
  %conv = trunc i32 %3 to i16
  %call2 = tail call i32 @ivtv_get_audio_input(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef %vin) #17
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_g_audio(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vin) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %audio_input = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %audio_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audio_input, align 4
  %4 = ptrtoint ptr %vin to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %vin, align 4
  %conv = trunc i32 %3 to i16
  %call3 = tail call i32 @ivtv_get_audio_input(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef %vin) #17
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_audio(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef readonly %vout) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %2 = ptrtoint ptr %vout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vout, align 4
  %nof_audio_inputs = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %nof_audio_inputs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nof_audio_inputs, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ult i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %audio_input = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %audio_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %audio_input, align 4
  tail call void @ivtv_audio_set_io(ptr noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_enumaudout(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vin) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %2 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vin, align 4
  %conv = trunc i32 %3 to i16
  %call2 = tail call i32 @ivtv_get_audio_output(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef %vin) #17
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_g_audout(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vin) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %2 = ptrtoint ptr %vin to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %vin, align 4
  %call3 = tail call i32 @ivtv_get_audio_output(ptr noundef %1, i16 noundef zeroext 0, ptr noundef %vin) #17
  ret i32 %call3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_s_audout(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef readonly %vout) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %card = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %video_outputs = getelementptr inbounds %struct.ivtv_card, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %video_outputs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %video_outputs, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %vout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  %spec.select = select i1 %cmp2.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_g_pixelaspect(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i32 noundef %type, ptr nocapture noundef writeonly %f) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %is_50hz = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 27
  br label %cleanup.sink.split

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %is_out_50hz = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 29
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then8, %if.then
  %.sink28.in = phi ptr [ %is_out_50hz, %if.then8 ], [ %is_50hz, %if.then ]
  %3 = ptrtoint ptr %.sink28.in to i32
  call void @__asan_load1_noabort(i32 %3)
  %.sink28 = load i8, ptr %.sink28.in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.sink28)
  %tobool10.not = icmp eq i8 %.sink28, 0
  %cond11 = select i1 %tobool10.not, i32 11, i32 54
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond11, ptr %f, align 4
  %5 = ptrtoint ptr %.sink28.in to i32
  call void @__asan_load1_noabort(i32 %5)
  %.sink = load i8, ptr %.sink28.in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.sink)
  %tobool4.not = icmp eq i8 %.sink, 0
  %cond5 = select i1 %tobool4.not, i32 10, i32 59
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond5, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_g_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %sel) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sel, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1, label %if.then
    i32 2, label %lor.lhs.false
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %7 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target, align 4
  %.off = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %r3 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %9 = ptrtoint ptr %r3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %r3, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 720, ptr %width, align 4
  %is_50hz = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %cond = select i1 %tobool.not, i32 480, i32 576
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %height, align 4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %v4l2_cap = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %v4l2_cap, align 4
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %target13 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %17 = ptrtoint ptr %target13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %target13, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %18, label %if.end12.cleanup_crit_edge [
    i32 256, label %sw.bb14
    i32 257, label %if.end12.sw.bb22_crit_edge
    i32 258, label %if.end12.sw.bb22_crit_edge61
  ]

if.end12.sw.bb22_crit_edge61:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb22

if.end12.sw.bb22_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb22

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb14:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp15 = icmp eq i32 %3, 8
  %r18 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #19
  %main_rect = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 66
  %20 = call ptr @memcpy(ptr %r18, ptr %main_rect, i32 16)
  br label %cleanup

if.else:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #19
  %main_rect20 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 98
  %21 = call ptr @memcpy(ptr %r18, ptr %main_rect20, i32 16)
  br label %cleanup

sw.bb22:                                          ; preds = %if.end12.sw.bb22_crit_edge, %if.end12.sw.bb22_crit_edge61
  %is_out_50hz = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 29
  %22 = ptrtoint ptr %is_out_50hz to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_out_50hz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool24.not = icmp eq i8 %23, 0
  %cond25 = select i1 %tobool24.not, i32 480, i32 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp27 = icmp eq i32 %3, 8
  br i1 %cmp27, label %land.lhs.true, label %sw.bb22.if.end34_crit_edge

sw.bb22.if.end34_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

land.lhs.true:                                    ; preds = %sw.bb22
  %track_osd = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 40
  %24 = ptrtoint ptr %track_osd to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %track_osd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool30.not = icmp eq i8 %25, 0
  br i1 %tobool30.not, label %land.lhs.true.if.end34_crit_edge, label %if.then31

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %osd_full_w = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 47
  %26 = ptrtoint ptr %osd_full_w to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %osd_full_w, align 4
  %osd_full_h = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 48
  %28 = ptrtoint ptr %osd_full_h to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %osd_full_h, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %land.lhs.true.if.end34_crit_edge, %sw.bb22.if.end34_crit_edge
  %r.sroa.5.0 = phi i32 [ %29, %if.then31 ], [ %cond25, %land.lhs.true.if.end34_crit_edge ], [ %cond25, %sw.bb22.if.end34_crit_edge ]
  %r.sroa.4.0 = phi i32 [ %27, %if.then31 ], [ 720, %land.lhs.true.if.end34_crit_edge ], [ 720, %sw.bb22.if.end34_crit_edge ]
  %r35 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %30 = ptrtoint ptr %r35 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 0, ptr %r35, align 4
  %r.sroa.4.0.r35.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %r.sroa.4.0.r35.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %r.sroa.4.0, ptr %r.sroa.4.0.r35.sroa_idx, align 4
  %r.sroa.5.0.r35.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %r.sroa.5.0.r35.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %r.sroa.5.0, ptr %r.sroa.5.0.r35.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.else, %if.then17, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ 0, %if.end34 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then17 ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %sel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %v4l2_cap = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v4l2_cap, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %8 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %9)
  %cmp3.not = icmp eq i32 %9, 256
  br i1 %cmp3.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %is_out_50hz = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %is_out_50hz to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_out_50hz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  %cond = select i1 %tobool14.not, i32 480, i32 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp15 = icmp eq i32 %3, 8
  br i1 %cmp15, label %land.lhs.true, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end13
  %track_osd = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 40
  %12 = ptrtoint ptr %track_osd to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %track_osd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool18.not = icmp eq i8 %13, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end21_crit_edge, label %if.then19

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %osd_full_w = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 47
  %14 = ptrtoint ptr %osd_full_w to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %osd_full_w, align 4
  %osd_full_h = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 48
  %16 = ptrtoint ptr %osd_full_h to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %osd_full_h, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %land.lhs.true.if.end21_crit_edge, %if.end13.if.end21_crit_edge
  %r.sroa.3.0 = phi i32 [ %15, %if.then19 ], [ 720, %land.lhs.true.if.end21_crit_edge ], [ 720, %if.end13.if.end21_crit_edge ]
  %r.sroa.6.0 = phi i32 [ %17, %if.then19 ], [ %cond, %land.lhs.true.if.end21_crit_edge ], [ %cond, %if.end13.if.end21_crit_edge ]
  %r22 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %width23 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %width23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width23, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 16)
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %r.sroa.3.0)
  %22 = ptrtoint ptr %width23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %width23, align 4
  %height38 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %height38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height38, align 4
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 16)
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %r.sroa.6.0)
  %27 = ptrtoint ptr %height38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %height38, align 4
  %28 = ptrtoint ptr %r22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %r22, align 4
  %sub = sub i32 %r.sroa.3.0, %21
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %sub)
  %31 = ptrtoint ptr %r22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %r22, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %top, align 4
  %sub87 = sub i32 %r.sroa.6.0, %26
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %sub87)
  %35 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %top, align 4
  br i1 %cmp15, label %if.then99, label %if.end101

if.then99:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  %main_rect = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 66
  %36 = call ptr @memcpy(ptr %main_rect, ptr %r22, i32 16)
  br label %cleanup

if.end101:                                        ; preds = %if.end21
  %call110 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 86, i32 noundef 4, i32 noundef %21, i32 noundef %26, i32 noundef %30, i32 noundef %34) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.then112, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then112:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #19
  %main_rect113 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 98
  %37 = call ptr @memcpy(ptr %main_rect113, ptr %r22, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.then112, %if.end101.cleanup_crit_edge, %if.then99, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then99 ], [ 0, %if.then112 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end101.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_g_enc_index(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %idx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %pgm_info_write_idx = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %pgm_info_write_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pgm_info_write_idx, align 8
  %add = add i32 %3, 400
  %pgm_info_read_idx = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 78
  %4 = ptrtoint ptr %pgm_info_read_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgm_info_read_idx, align 4
  %sub = sub i32 %add, %5
  %rem = urem i32 %sub, 400
  %6 = tail call i32 @llvm.umin.i32(i32 %rem, i32 64)
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %idx, align 8
  %entries_cap = getelementptr inbounds %struct.v4l2_enc_idx, ptr %idx, i32 0, i32 1
  %8 = ptrtoint ptr %entries_cap to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 400, ptr %entries_cap, align 4
  %capturing = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #17
  %9 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp739.not = icmp eq i32 %6, 0
  br i1 %cmp739.not, label %if.end6.for.end_crit_edge, label %for.body.preheader

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.preheader:                               ; preds = %if.end6
  %entry2 = getelementptr inbounds %struct.v4l2_enc_idx, ptr %idx, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.041 = phi i32 [ %inc15, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %e.040 = phi ptr [ %e.1, %for.inc.for.body_crit_edge ], [ %entry2, %for.body.preheader ]
  %11 = ptrtoint ptr %pgm_info_read_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pgm_info_read_idx, align 4
  %add9 = add i32 %12, %i.041
  %rem10 = urem i32 %add9, 400
  %arrayidx = getelementptr %struct.ivtv, ptr %1, i32 0, i32 79, i32 %rem10
  %13 = call ptr @memcpy(ptr %e.040, ptr %arrayidx, i32 32)
  %flags = getelementptr inbounds %struct.v4l2_enc_idx_entry, ptr %e.040, i32 0, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp11 = icmp ult i32 %and, 3
  br i1 %cmp11, label %if.then12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %idx, align 8
  %incdec.ptr = getelementptr %struct.v4l2_enc_idx_entry, ptr %e.040, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.for.inc_crit_edge
  %e.1 = phi ptr [ %incdec.ptr, %if.then12 ], [ %e.040, %for.body.for.inc_crit_edge ]
  %inc15 = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc15, %6
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  %18 = ptrtoint ptr %pgm_info_read_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pgm_info_read_idx, align 4
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 8
  %add18 = add i32 %21, %19
  %rem19 = urem i32 %add18, 400
  store i32 %rem19, ptr %pgm_info_read_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_encoder_cmd(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr nocapture noundef %enc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %2 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enc, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %3, label %do.body81 [
    i32 0, label %do.body
    i32 1, label %do.body8
    i32 2, label %do.body28
    i32 3, label %do.body54
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %5 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name) #20
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %flags = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags, align 4
  %call6 = tail call i32 @ivtv_start_capture(ptr noundef %fh) #17
  br label %cleanup

do.body8:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %7 = load i32, ptr @ivtv_debug, align 4
  %and9 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.do.end22_crit_edge, label %do.end14

do.body8.do.end22_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end22

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #19
  %name17 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name17) #20
  br label %do.end22

do.end22:                                         ; preds = %do.end14, %do.body8.do.end22_crit_edge
  %flags23 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %8 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags23, align 4
  %and24 = and i32 %9, 1
  store i32 %and24, ptr %flags23, align 4
  tail call void @ivtv_stop_capture(ptr noundef %fh, i32 noundef %and24) #17
  br label %cleanup

do.body28:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %10 = load i32, ptr @ivtv_debug, align 4
  %and29 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.do.end42_crit_edge, label %do.end34

do.body28.do.end42_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end42

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #19
  %name37 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name37) #20
  br label %do.end42

do.end42:                                         ; preds = %do.end34, %do.body28.do.end42_crit_edge
  %flags43 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %11 = ptrtoint ptr %flags43 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags43, align 4
  %capturing = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #17
  %12 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool45.not = icmp eq i32 %13, 0
  br i1 %tobool45.not, label %do.end42.cleanup_crit_edge, label %if.end47

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end47:                                         ; preds = %do.end42
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  %call48 = tail call i32 @_test_and_set_bit(i32 noundef 13, ptr noundef %i_flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ivtv_mute(ptr noundef %1) #17
  %call52 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 210, i32 noundef 1, i32 noundef 0) #17
  br label %cleanup

do.body54:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %14 = load i32, ptr @ivtv_debug, align 4
  %and55 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body54.do.end68_crit_edge, label %do.end60

do.body54.do.end68_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end68

do.end60:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #19
  %name63 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name63) #20
  br label %do.end68

do.end68:                                         ; preds = %do.end60, %do.body54.do.end68_crit_edge
  %flags69 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %15 = ptrtoint ptr %flags69 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags69, align 4
  %capturing70 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 43
  %call.i.i118 = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing70, i32 noundef 4) #17
  %16 = ptrtoint ptr %capturing70 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %capturing70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool72.not = icmp eq i32 %17, 0
  br i1 %tobool72.not, label %do.end68.cleanup_crit_edge, label %if.end74

do.end68.cleanup_crit_edge:                       ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end74:                                         ; preds = %do.end68
  %i_flags75 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  %call76 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %i_flags75) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end74.cleanup_crit_edge, label %if.end79

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end79:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  %call80 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 210, i32 noundef 1, i32 noundef 1) #17
  tail call void @ivtv_unmute(ptr noundef %1) #17
  br label %cleanup

do.body81:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %18 = load i32, ptr @ivtv_debug, align 4
  %and82 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %do.body81.cleanup_crit_edge, label %do.end87

do.body81.cleanup_crit_edge:                      ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end87:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #19
  %name90 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name90, i32 noundef %3) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end87, %do.body81.cleanup_crit_edge, %if.end79, %if.end74.cleanup_crit_edge, %do.end68.cleanup_crit_edge, %if.end51, %if.end47.cleanup_crit_edge, %do.end42.cleanup_crit_edge, %do.end22, %do.end5
  %retval.0 = phi i32 [ 0, %do.end22 ], [ %call6, %do.end5 ], [ -1, %do.end42.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ], [ -1, %do.end68.cleanup_crit_edge ], [ 0, %if.end74.cleanup_crit_edge ], [ -22, %do.end87 ], [ -22, %do.body81.cleanup_crit_edge ], [ 0, %if.end79 ], [ 0, %if.end51 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_try_encoder_cmd(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %enc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %2 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enc, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %3, label %do.body58 [
    i32 0, label %do.body
    i32 1, label %do.body7
    i32 2, label %do.body25
    i32 3, label %do.body42
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %5 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name) #20
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %flags = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags, align 4
  br label %cleanup

do.body7:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %7 = load i32, ptr @ivtv_debug, align 4
  %and8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.do.end21_crit_edge, label %do.end13

do.body7.do.end21_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end21

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #19
  %name16 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name16) #20
  br label %do.end21

do.end21:                                         ; preds = %do.end13, %do.body7.do.end21_crit_edge
  %flags22 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %8 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags22, align 4
  %and23 = and i32 %9, 1
  store i32 %and23, ptr %flags22, align 4
  br label %cleanup

do.body25:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %10 = load i32, ptr @ivtv_debug, align 4
  %and26 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.do.end39_crit_edge, label %do.end31

do.body25.do.end39_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end39

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #19
  %name34 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name34) #20
  br label %do.end39

do.end39:                                         ; preds = %do.end31, %do.body25.do.end39_crit_edge
  %flags40 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %11 = ptrtoint ptr %flags40 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags40, align 4
  br label %cleanup

do.body42:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %12 = load i32, ptr @ivtv_debug, align 4
  %and43 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.do.end56_crit_edge, label %do.end48

do.body42.do.end56_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end56

do.end48:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #19
  %name51 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name51) #20
  br label %do.end56

do.end56:                                         ; preds = %do.end48, %do.body42.do.end56_crit_edge
  %flags57 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %13 = ptrtoint ptr %flags57 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %flags57, align 4
  br label %cleanup

do.body58:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %14 = load i32, ptr @ivtv_debug, align 4
  %and59 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body58.cleanup_crit_edge, label %do.end64

do.body58.cleanup_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end64:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #19
  %name67 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name67, i32 noundef %3) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %do.body58.cleanup_crit_edge, %do.end56, %do.end39, %do.end21, %do.end5
  %retval.0 = phi i32 [ 0, %do.end56 ], [ 0, %do.end39 ], [ 0, %do.end21 ], [ 0, %do.end5 ], [ -22, %do.end64 ], [ -22, %do.body58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_decoder_cmd(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %dec) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itv1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %4 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 19, i32 4
  %5 = ptrtoint ptr %dec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dec, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name, i32 noundef %6) #20
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = tail call fastcc i32 @ivtv_video_command(ptr noundef %3, ptr noundef %1, ptr noundef %dec, i32 noundef 0)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_try_decoder_cmd(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %dec) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itv1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %4 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 19, i32 4
  %5 = ptrtoint ptr %dec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dec, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name, i32 noundef %6) #20
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = tail call fastcc i32 @ivtv_video_command(ptr noundef %3, ptr noundef %1, ptr noundef %dec, i32 noundef 1)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_g_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %entry
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itv1, align 4
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 19, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn40 = load ptr, ptr %subdevs, align 4
  %cmp5.not42 = icmp eq ptr %.pn40, %subdevs
  br i1 %cmp5.not42, label %do.body.do.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn43 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn40, %do.body.for.body_crit_edge ]
  %__sd.044 = getelementptr i8, ptr %.pn43, i32 -80
  %ops = getelementptr i8, ptr %.pn43, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %g_tuner, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %land.lhs.true.for.inc_crit_edge, label %if.then9

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %call13 = tail call i32 %10(ptr noundef %__sd.044, ptr noundef %vt) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn43, align 4
  %cmp5.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp5.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body.do.end_crit_edge
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp22 = icmp eq i32 %13, 1
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 1
  %.str.48..str.49 = select i1 %cmp22, ptr @.str.48, ptr @.str.49
  %call24 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull %.str.48..str.49, i32 noundef 32) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %entry
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itv1, align 4
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 19, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn31 = load ptr, ptr %subdevs, align 4
  %cmp5.not33 = icmp eq ptr %.pn31, %subdevs
  br i1 %cmp5.not33, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn34 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn31, %do.body.for.body_crit_edge ]
  %__sd.035 = getelementptr i8, ptr %.pn34, i32 -80
  %ops = getelementptr i8, ptr %.pn34, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_tuner, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %land.lhs.true.for.inc_crit_edge, label %if.then9

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %call13 = tail call i32 %10(ptr noundef %__sd.035, ptr noundef %vt) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp5.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp5.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_g_frequency(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %vfl_dir = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 0, i32 14
  %4 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %if.end
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 2
  %8 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn38 = load ptr, ptr %subdevs, align 4
  %cmp8.not40 = icmp eq ptr %.pn38, %subdevs
  br i1 %cmp8.not40, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn41 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn38, %do.body.for.body_crit_edge ]
  %__sd.042 = getelementptr i8, ptr %.pn41, i32 -80
  %ops = getelementptr i8, ptr %.pn41, i32 24
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %tuner9 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %tuner9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuner9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %g_frequency, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %land.lhs.true.for.inc_crit_edge, label %if.then14

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %call18 = tail call i32 %14(ptr noundef %__sd.042, ptr noundef %vf) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn41, align 4
  %cmp8.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp8.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_g_sliced_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %cap) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %is_50hz = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 27
  %type = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 6, label %for.cond.preheader
    i32 7, label %if.then22
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %5 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %conv14 = select i1 %tobool.not, i16 4096, i16 17409
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.cond.preheader
  %l.092 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body8_crit_edge ]
  %7 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %l.092)
  %cmp.i = icmp ult i32 %l.092, 6
  %9 = or i1 %cmp.i, %tobool.not.i
  br i1 %9, label %valid_service_line.exit, label %for.body8.if.then13_crit_edge

for.body8.if.then13_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then13

valid_service_line.exit:                          ; preds = %for.body8
  %10 = add nsw i32 %l.092, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %10)
  %11 = icmp ult i32 %10, 12
  %12 = and i1 %11, %tobool.not.i
  br i1 %12, label %valid_service_line.exit.if.then13_crit_edge, label %valid_service_line.exit.for.inc_crit_edge

valid_service_line.exit.for.inc_crit_edge:        ; preds = %valid_service_line.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

valid_service_line.exit.if.then13_crit_edge:      ; preds = %valid_service_line.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then13

if.then13:                                        ; preds = %valid_service_line.exit.if.then13_crit_edge, %for.body8.if.then13_crit_edge
  %arrayidx15 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 %l.092
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv14, ptr %arrayidx15, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %valid_service_line.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %l.092, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.inc.for.body8.1_crit_edge, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body8

for.inc.for.body8.1_crit_edge:                    ; preds = %for.inc
  br label %for.body8.1

for.body8.1:                                      ; preds = %for.inc.1.for.body8.1_crit_edge, %for.inc.for.body8.1_crit_edge
  %l.092.1 = phi i32 [ %inc.1, %for.inc.1.for.body8.1_crit_edge ], [ 0, %for.inc.for.body8.1_crit_edge ]
  %14 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.1 = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %l.092.1)
  %cmp.i.1 = icmp ult i32 %l.092.1, 6
  %16 = or i1 %cmp.i.1, %tobool.not.i.1
  br i1 %16, label %valid_service_line.exit.1, label %land.lhs.true1.i.1

land.lhs.true1.i.1:                               ; preds = %for.body8.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %l.092.1)
  %cmp2.not.i.1.not = icmp eq i32 %l.092.1, 23
  br i1 %cmp2.not.i.1.not, label %land.lhs.true1.i.1.if.end44_crit_edge, label %land.lhs.true1.i.1.if.then13.1_crit_edge

land.lhs.true1.i.1.if.then13.1_crit_edge:         ; preds = %land.lhs.true1.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then13.1

land.lhs.true1.i.1.if.end44_crit_edge:            ; preds = %land.lhs.true1.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

valid_service_line.exit.1:                        ; preds = %for.body8.1
  %17 = add nsw i32 %l.092.1, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %17)
  %18 = icmp ult i32 %17, 12
  %19 = and i1 %18, %tobool.not.i.1
  br i1 %19, label %valid_service_line.exit.1.if.then13.1_crit_edge, label %valid_service_line.exit.1.for.inc.1_crit_edge

valid_service_line.exit.1.for.inc.1_crit_edge:    ; preds = %valid_service_line.exit.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

valid_service_line.exit.1.if.then13.1_crit_edge:  ; preds = %valid_service_line.exit.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then13.1

if.then13.1:                                      ; preds = %valid_service_line.exit.1.if.then13.1_crit_edge, %land.lhs.true1.i.1.if.then13.1_crit_edge
  %arrayidx15.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 %l.092.1
  %20 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv14, ptr %arrayidx15.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then13.1, %valid_service_line.exit.1.for.inc.1_crit_edge
  %inc.1 = add nuw nsw i32 %l.092.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 24
  br i1 %exitcond.1.not, label %for.inc.1.if.end44_crit_edge, label %for.inc.1.for.body8.1_crit_edge

for.inc.1.for.body8.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body8.1

for.inc.1.if.end44_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

if.then22:                                        ; preds = %entry
  %v4l2_cap = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %v4l2_cap, align 4
  %and = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.then22.cleanup_crit_edge, label %if.end25

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end25:                                         ; preds = %if.then22
  %is_60hz = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 28
  %23 = ptrtoint ptr %is_60hz to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_60hz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool26.not = icmp eq i8 %24, 0
  br i1 %tobool26.not, label %if.else34, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx30 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 21
  %25 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 4096, ptr %arrayidx30, align 2
  %arrayidx33 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 21
  %26 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 4096, ptr %arrayidx33, align 2
  br label %if.end44

if.else34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx37 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 23
  %27 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 16384, ptr %arrayidx37, align 2
  %arrayidx40 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1024, ptr %arrayidx40, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.else34, %if.then27, %for.inc.1.if.end44_crit_edge, %land.lhs.true1.i.1.if.end44_crit_edge
  %arrayidx55 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 0
  %29 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx55, align 2
  %arrayidx55.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx55.1, align 2
  %or.1106 = or i16 %30, %32
  %arrayidx55.2 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx55.2 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx55.2, align 2
  %or.2107 = or i16 %or.1106, %34
  %arrayidx55.3 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx55.3 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx55.3, align 2
  %or.3108 = or i16 %or.2107, %36
  %arrayidx55.4 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 4
  %37 = ptrtoint ptr %arrayidx55.4 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx55.4, align 2
  %or.4109 = or i16 %or.3108, %38
  %arrayidx55.5 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx55.5 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx55.5, align 2
  %or.5110 = or i16 %or.4109, %40
  %arrayidx55.6 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 6
  %41 = ptrtoint ptr %arrayidx55.6 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx55.6, align 2
  %or.6111 = or i16 %or.5110, %42
  %arrayidx55.7 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 7
  %43 = ptrtoint ptr %arrayidx55.7 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx55.7, align 2
  %or.7112 = or i16 %or.6111, %44
  %arrayidx55.8 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 8
  %45 = ptrtoint ptr %arrayidx55.8 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx55.8, align 2
  %or.8113 = or i16 %or.7112, %46
  %arrayidx55.9 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 9
  %47 = ptrtoint ptr %arrayidx55.9 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx55.9, align 2
  %or.9114 = or i16 %or.8113, %48
  %arrayidx55.10 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 10
  %49 = ptrtoint ptr %arrayidx55.10 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx55.10, align 2
  %or.10115 = or i16 %or.9114, %50
  %arrayidx55.11 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 11
  %51 = ptrtoint ptr %arrayidx55.11 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx55.11, align 2
  %or.11116 = or i16 %or.10115, %52
  %arrayidx55.12 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 12
  %53 = ptrtoint ptr %arrayidx55.12 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx55.12, align 2
  %or.12117 = or i16 %or.11116, %54
  %arrayidx55.13 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 13
  %55 = ptrtoint ptr %arrayidx55.13 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx55.13, align 2
  %or.13118 = or i16 %or.12117, %56
  %arrayidx55.14 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 14
  %57 = ptrtoint ptr %arrayidx55.14 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx55.14, align 2
  %or.14119 = or i16 %or.13118, %58
  %arrayidx55.15 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 15
  %59 = ptrtoint ptr %arrayidx55.15 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx55.15, align 2
  %or.15120 = or i16 %or.14119, %60
  %arrayidx55.16 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 16
  %61 = ptrtoint ptr %arrayidx55.16 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx55.16, align 2
  %or.16121 = or i16 %or.15120, %62
  %arrayidx55.17 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 17
  %63 = ptrtoint ptr %arrayidx55.17 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx55.17, align 2
  %or.17122 = or i16 %or.16121, %64
  %arrayidx55.18 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 18
  %65 = ptrtoint ptr %arrayidx55.18 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx55.18, align 2
  %or.18123 = or i16 %or.17122, %66
  %arrayidx55.19 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 19
  %67 = ptrtoint ptr %arrayidx55.19 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx55.19, align 2
  %or.19124 = or i16 %or.18123, %68
  %arrayidx55.20 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 20
  %69 = ptrtoint ptr %arrayidx55.20 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx55.20, align 2
  %or.20125 = or i16 %or.19124, %70
  %arrayidx55.21 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 21
  %71 = ptrtoint ptr %arrayidx55.21 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx55.21, align 2
  %or.21126 = or i16 %or.20125, %72
  %arrayidx55.22 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 22
  %73 = ptrtoint ptr %arrayidx55.22 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx55.22, align 2
  %or.22127 = or i16 %or.21126, %74
  %arrayidx55.23 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 23
  %75 = ptrtoint ptr %arrayidx55.23 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx55.23, align 2
  %or.23128 = or i16 %or.22127, %76
  %arrayidx55.1103 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 0
  %77 = ptrtoint ptr %arrayidx55.1103 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx55.1103, align 2
  %or.1105129 = or i16 %or.23128, %78
  %arrayidx55.1.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 1
  %79 = ptrtoint ptr %arrayidx55.1.1 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx55.1.1, align 2
  %or.1.1130 = or i16 %or.1105129, %80
  %arrayidx55.2.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 2
  %81 = ptrtoint ptr %arrayidx55.2.1 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx55.2.1, align 2
  %or.2.1131 = or i16 %or.1.1130, %82
  %arrayidx55.3.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 3
  %83 = ptrtoint ptr %arrayidx55.3.1 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx55.3.1, align 2
  %or.3.1132 = or i16 %or.2.1131, %84
  %arrayidx55.4.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 4
  %85 = ptrtoint ptr %arrayidx55.4.1 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx55.4.1, align 2
  %or.4.1133 = or i16 %or.3.1132, %86
  %arrayidx55.5.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 5
  %87 = ptrtoint ptr %arrayidx55.5.1 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx55.5.1, align 2
  %or.5.1134 = or i16 %or.4.1133, %88
  %arrayidx55.6.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 6
  %89 = ptrtoint ptr %arrayidx55.6.1 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx55.6.1, align 2
  %or.6.1135 = or i16 %or.5.1134, %90
  %arrayidx55.7.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 7
  %91 = ptrtoint ptr %arrayidx55.7.1 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx55.7.1, align 2
  %or.7.1136 = or i16 %or.6.1135, %92
  %arrayidx55.8.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 8
  %93 = ptrtoint ptr %arrayidx55.8.1 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx55.8.1, align 2
  %or.8.1137 = or i16 %or.7.1136, %94
  %arrayidx55.9.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 9
  %95 = ptrtoint ptr %arrayidx55.9.1 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx55.9.1, align 2
  %or.9.1138 = or i16 %or.8.1137, %96
  %arrayidx55.10.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 10
  %97 = ptrtoint ptr %arrayidx55.10.1 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx55.10.1, align 2
  %or.10.1139 = or i16 %or.9.1138, %98
  %arrayidx55.11.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 11
  %99 = ptrtoint ptr %arrayidx55.11.1 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx55.11.1, align 2
  %or.11.1140 = or i16 %or.10.1139, %100
  %arrayidx55.12.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 12
  %101 = ptrtoint ptr %arrayidx55.12.1 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx55.12.1, align 2
  %or.12.1141 = or i16 %or.11.1140, %102
  %arrayidx55.13.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 13
  %103 = ptrtoint ptr %arrayidx55.13.1 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx55.13.1, align 2
  %or.13.1142 = or i16 %or.12.1141, %104
  %arrayidx55.14.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 14
  %105 = ptrtoint ptr %arrayidx55.14.1 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx55.14.1, align 2
  %or.14.1143 = or i16 %or.13.1142, %106
  %arrayidx55.15.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 15
  %107 = ptrtoint ptr %arrayidx55.15.1 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx55.15.1, align 2
  %or.15.1144 = or i16 %or.14.1143, %108
  %arrayidx55.16.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 16
  %109 = ptrtoint ptr %arrayidx55.16.1 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx55.16.1, align 2
  %or.16.1145 = or i16 %or.15.1144, %110
  %arrayidx55.17.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 17
  %111 = ptrtoint ptr %arrayidx55.17.1 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx55.17.1, align 2
  %or.17.1146 = or i16 %or.16.1145, %112
  %arrayidx55.18.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 18
  %113 = ptrtoint ptr %arrayidx55.18.1 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx55.18.1, align 2
  %or.18.1147 = or i16 %or.17.1146, %114
  %arrayidx55.19.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 19
  %115 = ptrtoint ptr %arrayidx55.19.1 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx55.19.1, align 2
  %or.19.1148 = or i16 %or.18.1147, %116
  %arrayidx55.20.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 20
  %117 = ptrtoint ptr %arrayidx55.20.1 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx55.20.1, align 2
  %or.20.1149 = or i16 %or.19.1148, %118
  %arrayidx55.21.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 21
  %119 = ptrtoint ptr %arrayidx55.21.1 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx55.21.1, align 2
  %or.21.1150 = or i16 %or.20.1149, %120
  %arrayidx55.22.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 22
  %121 = ptrtoint ptr %arrayidx55.22.1 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx55.22.1, align 2
  %or.22.1151 = or i16 %or.21.1150, %122
  %arrayidx55.23.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 23
  %123 = ptrtoint ptr %arrayidx55.23.1 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx55.23.1, align 2
  %or.23.1152 = or i16 %or.22.1151, %124
  %125 = ptrtoint ptr %cap to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %or.23.1152, ptr %cap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -22, %if.then22.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_log_status(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh) #4 align 64 {
entry:
  %data = alloca [16 x i32], align 4
  %vidin = alloca %struct.v4l2_input, align 8
  %audin = alloca %struct.v4l2_audio, align 4
  %tv = alloca %struct.tveeprom, align 4
  %vidout = alloca %struct.v4l2_output, align 8
  %audout = alloca %struct.v4l2_audioout, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #17
  %2 = call ptr @memset(ptr %data, i32 255, i32 64)
  %v4l2_cap = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %v4l2_cap, align 4
  %and = and i32 %4, 2
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %vidin) #17
  %5 = call ptr @memset(ptr %vidin, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %audin) #17
  %6 = call ptr @memset(ptr %audin, i32 255, i32 52)
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %card_name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card_name, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name, ptr noundef nonnull @.str.52, ptr noundef %8) #20
  %hw_flags = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %hw_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_flags, align 8
  %and3 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %if.then

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tv) #17
  %11 = call ptr @memset(ptr %tv, i32 255, i32 68)
  call void @ivtv_read_eeprom(ptr noundef %1, ptr noundef nonnull %tv) #17
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tv) #17
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry.do.body4_crit_edge
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 2
  %12 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn235 = load ptr, ptr %subdevs, align 4
  %cmp.not237 = icmp eq ptr %.pn235, %subdevs
  br i1 %cmp.not237, label %do.body4.do.end26_crit_edge, label %do.body4.for.body_crit_edge

do.body4.for.body_crit_edge:                      ; preds = %do.body4
  br label %for.body

do.body4.do.end26_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body4.for.body_crit_edge
  %.pn238 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn235, %do.body4.for.body_crit_edge ]
  %__sd.0239 = getelementptr i8, ptr %.pn238, i32 -80
  %ops = getelementptr i8, ptr %.pn238, i32 24
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %land.lhs.true.for.inc_crit_edge, label %if.then14

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %call18 = call i32 %18(ptr noundef %__sd.0239) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %.pn238 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn238, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end26_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.do.end26_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

do.end26:                                         ; preds = %for.inc.do.end26_crit_edge, %do.body4.do.end26_crit_edge
  %active_input = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 33
  %20 = ptrtoint ptr %active_input to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %active_input, align 8
  %conv = trunc i32 %21 to i16
  %call29 = call i32 @ivtv_get_input(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef nonnull %vidin) #17
  %audio_input = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 32
  %22 = ptrtoint ptr %audio_input to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %audio_input, align 4
  %conv30 = trunc i32 %23 to i16
  %call31 = call i32 @ivtv_get_audio_input(ptr noundef %1, i16 noundef zeroext %conv30, ptr noundef nonnull %audin) #17
  %name39 = getelementptr inbounds %struct.v4l2_input, ptr %vidin, i32 0, i32 1
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name, ptr noundef %name39) #20
  %name49 = getelementptr inbounds %struct.v4l2_audio, ptr %audin, i32 0, i32 1
  %dualwatch_stereo_mode = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 88
  %24 = ptrtoint ptr %dualwatch_stereo_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dualwatch_stereo_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp51 = icmp eq i32 %25, 2
  %cond = select i1 %cmp51, ptr @.str.59, ptr @.str.60
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name, ptr noundef %name49, ptr noundef nonnull %cond) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %do.end26.do.end114_crit_edge, label %if.then55

do.end26.do.end114_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end114

if.then55:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %vidout) #17
  %26 = call ptr @memset(ptr %vidout, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %audout) #17
  %27 = call ptr @memset(ptr %audout, i32 255, i32 52)
  %output_mode = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 31
  %28 = ptrtoint ptr %output_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %output_mode, align 8
  %active_output = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 34
  %30 = ptrtoint ptr %active_output to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %active_output, align 4
  %conv56 = trunc i32 %31 to i16
  %call57 = call i32 @ivtv_get_output(ptr noundef %1, i16 noundef zeroext %conv56, ptr noundef nonnull %vidout) #17
  %call58 = call i32 @ivtv_get_audio_output(ptr noundef %1, i16 noundef zeroext 0, ptr noundef nonnull %audout) #17
  %name66 = getelementptr inbounds %struct.v4l2_output, ptr %vidout, i32 0, i32 1
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name, ptr noundef %name66) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %32 = icmp ugt i32 %29, 4
  %mode.0 = select i1 %32, i32 0, i32 %29
  %arrayidx = getelementptr [5 x ptr], ptr @ivtv_log_status.output_modes, i32 0, i32 %mode.0
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name, ptr noundef %34) #20
  %call84 = call i32 (ptr, ptr, i32, i32, ...) @ivtv_vapi_result(ptr noundef %1, ptr noundef nonnull %data, i32 noundef 68, i32 noundef 0) #17
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 17
  %35 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_mem, align 8
  %add.ptr85 = getelementptr i8, ptr %36, i32 10752
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #17, !srcloc !228
  %38 = lshr i32 %37, 15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !231
  %and89 = and i32 %38, 64
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data, align 4
  %or = or i32 %40, %and89
  store i32 %or, ptr %data, align 4
  %and99 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %cond101 = select i1 %tobool100.not, ptr @.str.95, ptr @.str.94
  %shr103 = lshr i32 %40, 1
  %and104 = and i32 %shr103, 3
  %arrayidx105 = getelementptr [4 x ptr], ptr @ivtv_log_status.alpha_mode, i32 0, i32 %and104
  %41 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx105, align 4
  %shr107 = lshr i32 %or, 3
  %and108 = and i32 %shr107, 15
  %arrayidx109 = getelementptr [16 x ptr], ptr @ivtv_log_status.pixel_format, i32 0, i32 %and108
  %43 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx109, align 4
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name, ptr noundef nonnull %cond101, ptr noundef %42, ptr noundef %44) #20
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %audout) #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %vidout) #17
  br label %do.end114

do.end114:                                        ; preds = %if.then55, %do.end26.do.end114_crit_edge
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  %45 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %i_flags, align 4
  %47 = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool120.not = icmp eq i32 %47, 0
  %cond121 = select i1 %tobool120.not, ptr @.str.100, ptr @.str.99
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name, ptr noundef nonnull %cond121) #20
  %hdl = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 20, i32 6
  call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef %name) #17
  %48 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_flags, align 8
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name, i32 noundef %49) #20
  br label %for.body138

for.body138:                                      ; preds = %cleanup.for.body138_crit_edge, %do.end114
  %i.0240 = phi i32 [ 0, %do.end114 ], [ %inc, %cleanup.for.body138_crit_edge ]
  %v4l2_dev140 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %i.0240, i32 0, i32 7
  %50 = ptrtoint ptr %v4l2_dev140 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %v4l2_dev140, align 4
  %cmp141 = icmp eq ptr %51, null
  br i1 %cmp141, label %for.body138.cleanup_crit_edge, label %lor.lhs.false143

for.body138.cleanup_crit_edge:                    ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false143:                                 ; preds = %for.body138
  %buffers = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %i.0240, i32 18
  %52 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp144 = icmp eq i32 %53, 0
  br i1 %cmp144, label %lor.lhs.false143.cleanup_crit_edge, label %do.end150

lor.lhs.false143.cleanup_crit_edge:               ; preds = %lor.lhs.false143
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end150:                                        ; preds = %lor.lhs.false143
  call void @__sanitizer_cov_trace_pc() #19
  %name155 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %i.0240, i32 2
  %54 = ptrtoint ptr %name155 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name155, align 4
  %s_flags = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %i.0240, i32 7
  %56 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_flags, align 8
  %buffers157 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %i.0240, i32 21, i32 1
  %58 = ptrtoint ptr %buffers157 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buffers157, align 8
  %sub = sub i32 %53, %59
  %mul = mul i32 %sub, 100
  %div = udiv i32 %mul, %53
  %buf_size = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %i.0240, i32 19
  %60 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf_size, align 8
  %mul160 = mul i32 %61, %53
  %div161234 = lshr i32 %mul160, 10
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name, ptr noundef %55, i32 noundef %57, i32 noundef %div, i32 noundef %div161234, i32 noundef %53) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end150, %lor.lhs.false143.cleanup_crit_edge, %for.body138.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0240, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %do.end168, label %cleanup.for.body138_crit_edge

cleanup.for.body138_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body138

do.end168:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  %mpg_data_received = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 84
  %62 = ptrtoint ptr %mpg_data_received to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %mpg_data_received, align 8
  %vbi_data_inserted = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 85
  %64 = ptrtoint ptr %vbi_data_inserted to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %vbi_data_inserted, align 8
  %call173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name, i64 noundef %63, i64 noundef %65) #20
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %audin) #17
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %vidin) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_g_register(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 4, ptr %size, align 1
  %reg2 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %3 = ptrtoint ptr %reg2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %reg2, align 1
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %and.i = and i64 %4, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ivtv_itvc.exit_crit_edge

entry.ivtv_itvc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ivtv_itvc.exit

if.end.i:                                         ; preds = %entry
  %5 = and i64 %4, -65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554432, i64 %5)
  %6 = icmp eq i64 %5, 33554432
  br i1 %6, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %reg_mem.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 -33554432
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i
  %has_cx23415.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %has_cx23415.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_cx23415.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not.i = icmp ne i8 %10, 0
  %11 = and i64 %4, -8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %11)
  %12 = icmp eq i64 %11, 16777216
  %13 = and i1 %12, %tobool3.not.i
  br i1 %13, label %if.then10.i, label %if.else12.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %dec_mem.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %dec_mem.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dec_mem.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %15, i32 -16777216
  br label %if.end19.i

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388608, i64 %4)
  %cmp13.i = icmp ult i64 %4, 8388608
  br i1 %cmp13.i, label %if.then15.i, label %if.else12.i.ivtv_itvc.exit_crit_edge

if.else12.i.ivtv_itvc.exit_crit_edge:             ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ivtv_itvc.exit

if.then15.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #19
  %enc_mem.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %enc_mem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enc_mem.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.then10.i, %if.then2.i
  %reg_start.0.i = phi ptr [ %add.ptr.i, %if.then2.i ], [ %add.ptr11.i, %if.then10.i ], [ %17, %if.then15.i ]
  %idx.ext.i = trunc i64 %4 to i32
  %add.ptr22.i = getelementptr i8, ptr %reg_start.0.i, i32 %idx.ext.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #17, !srcloc !228
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !232
  %conv24.i = zext i32 %19 to i64
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv24.i, ptr %val, align 8
  br label %ivtv_itvc.exit

ivtv_itvc.exit:                                   ; preds = %if.end19.i, %if.else12.i.ivtv_itvc.exit_crit_edge, %entry.ivtv_itvc.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.ivtv_itvc.exit_crit_edge ], [ -22, %if.else12.i.ivtv_itvc.exit_crit_edge ], [ 0, %if.end19.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_s_register(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef readonly %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %val2 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %2 = ptrtoint ptr %val2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %val2, align 1
  %reg3 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %4 = ptrtoint ptr %reg3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %reg3, align 1
  %and.i = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ivtv_itvc.exit_crit_edge

entry.ivtv_itvc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ivtv_itvc.exit

if.end.i:                                         ; preds = %entry
  %6 = and i64 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554432, i64 %6)
  %7 = icmp eq i64 %6, 33554432
  br i1 %7, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %reg_mem.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 -33554432
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i
  %has_cx23415.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %has_cx23415.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_cx23415.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.i = icmp ne i8 %11, 0
  %12 = and i64 %5, -8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %12)
  %13 = icmp eq i64 %12, 16777216
  %14 = and i1 %13, %tobool3.not.i
  br i1 %14, label %if.then10.i, label %if.else12.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %dec_mem.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %dec_mem.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dec_mem.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %16, i32 -16777216
  br label %if.end19.i

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388608, i64 %5)
  %cmp13.i = icmp ult i64 %5, 8388608
  br i1 %cmp13.i, label %if.then15.i, label %if.else12.i.ivtv_itvc.exit_crit_edge

if.else12.i.ivtv_itvc.exit_crit_edge:             ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ivtv_itvc.exit

if.then15.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #19
  %enc_mem.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %enc_mem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %enc_mem.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.then10.i, %if.then2.i
  %reg_start.0.i = phi ptr [ %add.ptr.i, %if.then2.i ], [ %add.ptr11.i, %if.then10.i ], [ %18, %if.then15.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !233
  tail call void @arm_heavy_mb() #17
  %conv26.i = trunc i64 %3 to i32
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv26.i) #17
  %idx.ext27.i = trunc i64 %5 to i32
  %add.ptr28.i = getelementptr i8, ptr %reg_start.0.i, i32 %idx.ext27.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %19) #17, !srcloc !234
  br label %ivtv_itvc.exit

ivtv_itvc.exit:                                   ; preds = %if.end19.i, %if.else12.i.ivtv_itvc.exit_crit_edge, %entry.ivtv_itvc.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.ivtv_itvc.exit_crit_edge ], [ -22, %if.else12.i.ivtv_itvc.exit_crit_edge ], [ 0, %if.end19.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_subscribe_event(ptr noundef %fh, ptr noundef %sub) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 0, ptr noundef null) #17
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #17
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %retval.0 = phi i32 [ %call1, %sw.default ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_default(ptr nocapture noundef readonly %file, ptr nocapture noundef readonly %fh, i1 noundef zeroext %valid_prio, i32 noundef %cmd, ptr noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074026177, i32 %cmd)
  %cond = icmp ne i32 %cmd, 1074026177
  %2 = or i1 %cond, %valid_prio
  br i1 %2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1074029670, label %sw.bb2
    i32 1077434048, label %if.end.sw.bb35_crit_edge
    i32 1074026177, label %if.end.sw.bb35_crit_edge56
  ]

if.end.sw.bb35_crit_edge56:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb35

if.end.sw.bb35_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb35

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %sw.bb2
  %newi2c = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 18, i32 4
  %6 = ptrtoint ptr %newi2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %newi2c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then5_crit_edge

land.lhs.true.if.then5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb2
  %and.old = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.old)
  %tobool4.not.old = icmp eq i32 %and.old, 0
  br i1 %tobool4.not.old, label %lor.lhs.false.if.end6_crit_edge, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %land.lhs.true.if.then5_crit_edge
  tail call void @ivtv_reset_ir_gpio(ptr noundef %1) #17
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %lor.lhs.false.if.end6_crit_edge
  %and7 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  %sd_video = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %sd_video to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_video, align 8
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.then9.cleanup_crit_edge, label %if.else

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %if.then9
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.else.cleanup_crit_edge, label %land.lhs.true13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true13:                                  ; preds = %if.else
  %reset = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %land.lhs.true13.cleanup_crit_edge, label %if.else18

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else18:                                        ; preds = %land.lhs.true13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %16 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %if.else18.if.else26_crit_edge, label %land.lhs.true20

if.else18.if.else26_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else26

land.lhs.true20:                                  ; preds = %if.else18
  %reset21 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %reset21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reset21, align 4
  %tobool22.not = icmp eq ptr %18, null
  br i1 %tobool22.not, label %land.lhs.true20.if.else26_crit_edge, label %if.then23

land.lhs.true20.if.else26_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else26

if.then23:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #19
  %call25 = tail call i32 %18(ptr noundef nonnull %9, i32 noundef 0) #17
  br label %cleanup

if.else26:                                        ; preds = %land.lhs.true20.if.else26_crit_edge, %if.else18.if.else26_crit_edge
  %call30 = tail call i32 %15(ptr noundef nonnull %9, i32 noundef 0) #17
  br label %cleanup

sw.bb35:                                          ; preds = %if.end.sw.bb35_crit_edge, %if.end.sw.bb35_crit_edge56
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %19 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data.i, align 4
  %itv1.i = getelementptr inbounds %struct.ivtv_open_id, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %itv1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %itv1.i, align 4
  %type.i = getelementptr inbounds %struct.ivtv_open_id, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 4
  %arrayidx.i = getelementptr %struct.ivtv, ptr %22, i32 0, i32 42, i32 %24
  %25 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %cmd, label %sw.bb35.cleanup_crit_edge [
    i32 1077434048, label %sw.bb.i
    i32 1074026177, label %do.body32.i
  ]

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %26 = load i32, ptr @ivtv_debug, align 4
  %and.i = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.do.end5.i_crit_edge, label %do.end.i

sw.bb.i.do.end5.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end5.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  %name.i = getelementptr inbounds %struct.ivtv, ptr %22, i32 0, i32 19, i32 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %name.i) #20
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %sw.bb.i.do.end5.i_crit_edge
  %v4l2_cap.i = getelementptr inbounds %struct.ivtv, ptr %22, i32 0, i32 8
  %27 = ptrtoint ptr %v4l2_cap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %v4l2_cap.i, align 4
  %and6.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %do.end5.i.cleanup_crit_edge, label %if.end9.i

do.end5.i.cleanup_crit_edge:                      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9.i:                                        ; preds = %do.end5.i
  %29 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 2
  br i1 %cmp.not.i, label %if.end12.i, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12.i:                                       ; preds = %if.end9.i
  %output_mode.i = getelementptr inbounds %struct.ivtv, ptr %22, i32 0, i32 31
  %31 = ptrtoint ptr %output_mode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %output_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp13.i = icmp eq i32 %32, 3
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.end12.i.if.end16.i_crit_edge

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %y_source.i = getelementptr inbounds %struct.ivtv_dma_frame, ptr %arg, i32 0, i32 2
  %33 = ptrtoint ptr %y_source.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %y_source.i, align 4
  %cmp14.i = icmp eq ptr %34, null
  br i1 %cmp14.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end16.i_crit_edge

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16.i:                                       ; preds = %land.lhs.true.i.if.end16.i_crit_edge, %if.end12.i.if.end16.i_crit_edge
  %35 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type.i, align 4
  %call18.i = tail call i32 @ivtv_start_decoding(ptr noundef %20, i32 noundef %36) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end21.i:                                       ; preds = %if.end16.i
  %call22.i = tail call i32 @ivtv_set_output_mode(ptr noundef %22, i32 noundef 3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call22.i)
  %cmp23.not.i = icmp eq i32 %call22.i, 3
  br i1 %cmp23.not.i, label %if.end25.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ivtv_release_stream(ptr noundef %arrayidx.i) #17
  br label %cleanup

if.end25.i:                                       ; preds = %if.end21.i
  %yuv_frames.i = getelementptr inbounds %struct.ivtv_open_id, ptr %20, i32 0, i32 2
  %37 = ptrtoint ptr %yuv_frames.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %yuv_frames.i, align 4
  %y_source26.i = getelementptr inbounds %struct.ivtv_dma_frame, ptr %arg, i32 0, i32 2
  %38 = ptrtoint ptr %y_source26.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %y_source26.i, align 4
  %cmp27.i = icmp eq ptr %39, null
  br i1 %cmp27.i, label %if.end25.i.cleanup_crit_edge, label %if.end29.i

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end29.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  %call30.i = tail call i32 @ivtv_yuv_prep_frame(ptr noundef %22, ptr noundef %arg) #17
  br label %cleanup

do.body32.i:                                      ; preds = %sw.bb35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %40 = load i32, ptr @ivtv_debug, align 4
  %and33.i = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %do.body32.i.do.end46.i_crit_edge, label %do.end38.i

do.body32.i.do.end46.i_crit_edge:                 ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end46.i

do.end38.i:                                       ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #19
  %name41.i = getelementptr inbounds %struct.ivtv, ptr %22, i32 0, i32 19, i32 4
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name41.i) #20
  br label %do.end46.i

do.end46.i:                                       ; preds = %do.end38.i, %do.body32.i.do.end46.i_crit_edge
  %v4l2_cap47.i = getelementptr inbounds %struct.ivtv, ptr %22, i32 0, i32 8
  %41 = ptrtoint ptr %v4l2_cap47.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %v4l2_cap47.i, align 4
  %and48.i = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %do.end46.i.cleanup_crit_edge, label %if.end51.i

do.end46.i.cleanup_crit_edge:                     ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end51.i:                                       ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp52.i = icmp ne i32 %44, 0
  %conv.i = zext i1 %cmp52.i to i32
  %call53.i = tail call i32 @ivtv_passthrough_mode(ptr noundef %22, i32 noundef %conv.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end51.i, %do.end46.i.cleanup_crit_edge, %if.end29.i, %if.end25.i.cleanup_crit_edge, %if.then24.i, %if.end16.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %do.end5.i.cleanup_crit_edge, %sw.bb35.cleanup_crit_edge, %if.else26, %if.then23, %land.lhs.true13.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %if.else26 ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %land.lhs.true13.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -25, %if.end.cleanup_crit_edge ], [ %call53.i, %if.end51.i ], [ -16, %if.then24.i ], [ %call30.i, %if.end29.i ], [ -22, %do.end5.i.cleanup_crit_edge ], [ -22, %if.end9.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ -16, %if.end16.i.cleanup_crit_edge ], [ 0, %if.end25.i.cleanup_crit_edge ], [ -22, %do.end46.i.cleanup_crit_edge ], [ -22, %sw.bb35.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_service_set(ptr nocapture noundef %fmt, i32 noundef %is_pal) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_pal)
  %tobool.not.i = icmp eq i32 %is_pal, 0
  %conv2.i = select i1 %tobool.not.i, i16 4096, i16 17409
  br label %for.body3

for.body3:                                        ; preds = %select_service_from_set.exit.for.body3_crit_edge, %entry
  %l.021 = phi i32 [ 0, %entry ], [ %inc, %select_service_from_set.exit.for.body3_crit_edge ]
  %arrayidx4 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 %l.021
  %0 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx4, align 2
  %and.i = and i16 %1, %conv2.i
  %conv4.i = zext i16 %and.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i)
  %cmp.i = icmp eq i16 %and.i, 0
  br i1 %cmp.i, label %for.body3.select_service_from_set.exit_crit_edge, label %lor.lhs.false.i

for.body3.select_service_from_set.exit_crit_edge: ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit

lor.lhs.false.i:                                  ; preds = %for.body3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %l.021)
  %cmp.i.i = icmp ult i32 %l.021, 6
  %2 = or i1 %tobool.not.i, %cmp.i.i
  br i1 %2, label %valid_service_line.exit.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

valid_service_line.exit.i:                        ; preds = %lor.lhs.false.i
  %3 = add nsw i32 %l.021, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %4 = icmp ult i32 %3, 12
  %5 = and i1 %tobool.not.i, %4
  br i1 %5, label %valid_service_line.exit.i.if.end.i_crit_edge, label %valid_service_line.exit.i.select_service_from_set.exit_crit_edge

valid_service_line.exit.i.select_service_from_set.exit_crit_edge: ; preds = %valid_service_line.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit

valid_service_line.exit.i.if.end.i_crit_edge:     ; preds = %valid_service_line.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.end.i:                                         ; preds = %valid_service_line.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  br i1 %tobool.not.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %l.021)
  %cmp9.i = icmp ne i32 %l.021, 21
  %and12.i = and i32 %conv4.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %or.cond.i = or i1 %cmp9.i, %tobool13.not.i
  br i1 %or.cond.i, label %if.then8.i.for.body.i.preheader_crit_edge, label %if.then8.i.select_service_from_set.exit_crit_edge

if.then8.i.select_service_from_set.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit

if.then8.i.for.body.i.preheader_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end26.i.for.body.i.preheader_crit_edge, %if.then8.i.for.body.i.preheader_crit_edge
  br label %for.body.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %l.021)
  %cmp16.i = icmp eq i32 %l.021, 16
  %and23.i = and i32 %conv4.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp ne i32 %and23.i, 0
  %6 = and i1 %cmp16.i, %tobool24.not.i
  br i1 %6, label %if.else.i.select_service_from_set.exit_crit_edge, label %if.end26.i

if.else.i.select_service_from_set.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit

if.end26.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %l.021)
  %cmp27.i = icmp eq i32 %l.021, 23
  br i1 %cmp27.i, label %select_service_from_set.exit.thread, label %if.end26.i.for.body.i.preheader_crit_edge

if.end26.i.for.body.i.preheader_crit_edge:        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader

select_service_from_set.exit.thread:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  %and34.i.le = and i32 %conv4.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.le)
  %tobool35.not.i.le = icmp ne i32 %and34.i.le, 0
  %7 = and i1 %cmp27.i, %tobool35.not.i.le
  %.mux.i.le = select i1 %7, i16 16384, i16 0
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.mux.i.le, ptr %arrayidx4, align 2
  br label %for.body3.1.preheader

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.074.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.cond.i.select_service_from_set.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond.i.select_service_from_set.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.074.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %shl.i = shl nuw i32 1, %i.074.i
  %and46.i = and i32 %shl.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %for.cond.i, label %if.then48.i

if.then48.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv50.i = trunc i32 %shl.i to i16
  br label %select_service_from_set.exit

select_service_from_set.exit:                     ; preds = %if.then48.i, %for.cond.i.select_service_from_set.exit_crit_edge, %if.else.i.select_service_from_set.exit_crit_edge, %if.then8.i.select_service_from_set.exit_crit_edge, %valid_service_line.exit.i.select_service_from_set.exit_crit_edge, %for.body3.select_service_from_set.exit_crit_edge
  %retval.0.i = phi i16 [ %conv50.i, %if.then48.i ], [ 0, %valid_service_line.exit.i.select_service_from_set.exit_crit_edge ], [ 0, %for.body3.select_service_from_set.exit_crit_edge ], [ 4096, %if.then8.i.select_service_from_set.exit_crit_edge ], [ 1024, %if.else.i.select_service_from_set.exit_crit_edge ], [ 0, %for.cond.i.select_service_from_set.exit_crit_edge ]
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %retval.0.i, ptr %arrayidx4, align 2
  %inc = add nuw nsw i32 %l.021, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %select_service_from_set.exit.for.body3.1.preheader_crit_edge, label %select_service_from_set.exit.for.body3_crit_edge

select_service_from_set.exit.for.body3_crit_edge: ; preds = %select_service_from_set.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body3

select_service_from_set.exit.for.body3.1.preheader_crit_edge: ; preds = %select_service_from_set.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body3.1.preheader

for.body3.1.preheader:                            ; preds = %select_service_from_set.exit.for.body3.1.preheader_crit_edge, %select_service_from_set.exit.thread
  br label %for.body3.1

for.body3.1:                                      ; preds = %select_service_from_set.exit.1.for.body3.1_crit_edge, %for.body3.1.preheader
  %l.021.1 = phi i32 [ %inc.1, %select_service_from_set.exit.1.for.body3.1_crit_edge ], [ 0, %for.body3.1.preheader ]
  %arrayidx4.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 %l.021.1
  %10 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx4.1, align 2
  %and.i.1 = and i16 %11, %conv2.i
  %conv4.i.1 = zext i16 %and.i.1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i.1)
  %cmp.i.1 = icmp eq i16 %and.i.1, 0
  br i1 %cmp.i.1, label %for.body3.1.select_service_from_set.exit.1_crit_edge, label %lor.lhs.false.i.1

for.body3.1.select_service_from_set.exit.1_crit_edge: ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit.1

lor.lhs.false.i.1:                                ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %l.021.1)
  %cmp.i.i.1 = icmp ult i32 %l.021.1, 6
  %12 = or i1 %tobool.not.i, %cmp.i.i.1
  br i1 %12, label %valid_service_line.exit.i.1, label %land.lhs.true1.i.i.1

land.lhs.true1.i.i.1:                             ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %l.021.1)
  %cmp2.not.i.i.1.not = icmp eq i32 %l.021.1, 23
  br i1 %cmp2.not.i.i.1.not, label %land.lhs.true1.i.i.1.select_service_from_set.exit.1.thread_crit_edge, label %land.lhs.true1.i.i.1.if.end.i.1_crit_edge

land.lhs.true1.i.i.1.if.end.i.1_crit_edge:        ; preds = %land.lhs.true1.i.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.1

land.lhs.true1.i.i.1.select_service_from_set.exit.1.thread_crit_edge: ; preds = %land.lhs.true1.i.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit.1.thread

valid_service_line.exit.i.1:                      ; preds = %lor.lhs.false.i.1
  %13 = add nsw i32 %l.021.1, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %13)
  %14 = icmp ult i32 %13, 12
  %15 = and i1 %tobool.not.i, %14
  br i1 %15, label %valid_service_line.exit.i.1.if.end.i.1_crit_edge, label %valid_service_line.exit.i.1.select_service_from_set.exit.1_crit_edge

valid_service_line.exit.i.1.select_service_from_set.exit.1_crit_edge: ; preds = %valid_service_line.exit.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit.1

valid_service_line.exit.i.1.if.end.i.1_crit_edge: ; preds = %valid_service_line.exit.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %valid_service_line.exit.i.1.if.end.i.1_crit_edge, %land.lhs.true1.i.i.1.if.end.i.1_crit_edge
  br i1 %tobool.not.i, label %if.then8.i.1, label %if.end26.i.1

if.end26.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %l.021.1)
  %cmp27.i.1 = icmp eq i32 %l.021.1, 23
  br i1 %cmp27.i.1, label %if.end26.i.1.select_service_from_set.exit.1.thread_crit_edge, label %if.end26.i.1.for.body.i.1.preheader_crit_edge

if.end26.i.1.for.body.i.1.preheader_crit_edge:    ; preds = %if.end26.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.1.preheader

if.end26.i.1.select_service_from_set.exit.1.thread_crit_edge: ; preds = %if.end26.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit.1.thread

if.then8.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %l.021.1)
  %cmp9.i.1 = icmp ne i32 %l.021.1, 21
  %and12.i.1 = and i32 %conv4.i.1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.1)
  %tobool13.not.i.1 = icmp eq i32 %and12.i.1, 0
  %or.cond.i.1 = or i1 %cmp9.i.1, %tobool13.not.i.1
  br i1 %or.cond.i.1, label %if.then8.i.1.for.body.i.1.preheader_crit_edge, label %if.then8.i.1.select_service_from_set.exit.1_crit_edge

if.then8.i.1.select_service_from_set.exit.1_crit_edge: ; preds = %if.then8.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit.1

if.then8.i.1.for.body.i.1.preheader_crit_edge:    ; preds = %if.then8.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.1.preheader

for.body.i.1.preheader:                           ; preds = %if.then8.i.1.for.body.i.1.preheader_crit_edge, %if.end26.i.1.for.body.i.1.preheader_crit_edge
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.cond.i.1.for.body.i.1_crit_edge, %for.body.i.1.preheader
  %i.074.i.1 = phi i32 [ %inc.i.1, %for.cond.i.1.for.body.i.1_crit_edge ], [ 0, %for.body.i.1.preheader ]
  %shl.i.1 = shl nuw i32 1, %i.074.i.1
  %and46.i.1 = and i32 %shl.i.1, %conv4.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.1)
  %tobool47.not.i.1 = icmp eq i32 %and46.i.1, 0
  br i1 %tobool47.not.i.1, label %for.cond.i.1, label %if.then48.i.1

if.then48.i.1:                                    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #19
  %conv50.i.1 = trunc i32 %shl.i.1 to i16
  br label %select_service_from_set.exit.1

for.cond.i.1:                                     ; preds = %for.body.i.1
  %inc.i.1 = add nuw nsw i32 %i.074.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 32
  br i1 %exitcond.not.i.1, label %for.cond.i.1.select_service_from_set.exit.1_crit_edge, label %for.cond.i.1.for.body.i.1_crit_edge

for.cond.i.1.for.body.i.1_crit_edge:              ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.1

for.cond.i.1.select_service_from_set.exit.1_crit_edge: ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %select_service_from_set.exit.1

select_service_from_set.exit.1.thread:            ; preds = %if.end26.i.1.select_service_from_set.exit.1.thread_crit_edge, %land.lhs.true1.i.i.1.select_service_from_set.exit.1.thread_crit_edge
  %16 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %arrayidx4.1, align 2
  br label %for.inc8.1

select_service_from_set.exit.1:                   ; preds = %for.cond.i.1.select_service_from_set.exit.1_crit_edge, %if.then48.i.1, %if.then8.i.1.select_service_from_set.exit.1_crit_edge, %valid_service_line.exit.i.1.select_service_from_set.exit.1_crit_edge, %for.body3.1.select_service_from_set.exit.1_crit_edge
  %retval.0.i.1 = phi i16 [ %conv50.i.1, %if.then48.i.1 ], [ 0, %valid_service_line.exit.i.1.select_service_from_set.exit.1_crit_edge ], [ 0, %for.body3.1.select_service_from_set.exit.1_crit_edge ], [ 4096, %if.then8.i.1.select_service_from_set.exit.1_crit_edge ], [ 0, %for.cond.i.1.select_service_from_set.exit.1_crit_edge ]
  %17 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %retval.0.i.1, ptr %arrayidx4.1, align 2
  %inc.1 = add nuw nsw i32 %l.021.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 24
  br i1 %exitcond.1.not, label %select_service_from_set.exit.1.for.inc8.1_crit_edge, label %select_service_from_set.exit.1.for.body3.1_crit_edge

select_service_from_set.exit.1.for.body3.1_crit_edge: ; preds = %select_service_from_set.exit.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body3.1

select_service_from_set.exit.1.for.inc8.1_crit_edge: ; preds = %select_service_from_set.exit.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc8.1

for.inc8.1:                                       ; preds = %select_service_from_set.exit.1.for.inc8.1_crit_edge, %select_service_from_set.exit.1.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_vapi_result(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_get_input(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_get_output(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_get_audio_input(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_get_audio_output(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_start_capture(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_stop_capture(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ivtv_video_command(ptr noundef %itv, ptr noundef %id, ptr nocapture noundef %dc, i32 noundef %try) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 5
  %v4l2_cap = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 8
  %0 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v4l2_cap, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dc, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb34
    i32 2, label %sw.bb58
    i32 3, label %sw.bb86
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %flags = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %dc, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and1 = and i32 %6, 1
  store i32 %and1, ptr %flags, align 4
  %speed = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 82
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  %9 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %dc, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.inv.i = icmp sgt i32 %11, -1
  %cond.i = select i1 %cmp.inv.i, i32 1, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.i = icmp eq i32 %8, 0
  %spec.store.select.i = select i1 %cmp1.i, i32 1000, i32 %8
  %12 = tail call i32 @llvm.abs.i32(i32 %11, i1 false) #17
  %13 = tail call i32 @llvm.abs.i32(i32 %spec.store.select.i, i1 false) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %12)
  %cmp9.not.i = icmp sgt i32 %13, %12
  br i1 %cmp9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %12)
  %cmp11.i = icmp sgt i32 %12, 1500
  br i1 %cmp11.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #19
  %mul.i = mul nsw i32 %cond.i, 2000
  br label %ivtv_validate_speed.exit

if.end13.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %12)
  %cmp14.i = icmp sgt i32 %12, 1000
  br i1 %cmp14.i, label %if.then15.i, label %if.end13.i.if.end30.i_crit_edge

if.end13.i.if.end30.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  %mul16.i = mul nsw i32 %cond.i, 1500
  br label %ivtv_validate_speed.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %12)
  %cmp18.i = icmp sgt i32 %12, 1999
  br i1 %cmp18.i, label %if.then19.i, label %if.end21.i

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %mul20.i = mul nsw i32 %cond.i, 2000
  br label %ivtv_validate_speed.exit

if.end21.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1499, i32 %12)
  %cmp22.i = icmp sgt i32 %12, 1499
  br i1 %cmp22.i, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #19
  %mul24.i = mul nsw i32 %cond.i, 1500
  br label %ivtv_validate_speed.exit

if.end25.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %12)
  %cmp26.i = icmp sgt i32 %12, 999
  br i1 %cmp26.i, label %if.then27.i, label %if.end25.i.if.end30.i_crit_edge

if.end25.i.if.end30.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  %mul28.i = mul nsw i32 %cond.i, 1000
  br label %ivtv_validate_speed.exit

if.end30.i:                                       ; preds = %if.end25.i.if.end30.i_crit_edge, %if.end13.i.if.end30.i_crit_edge
  %14 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %12, label %if.end38.i [
    i32 0, label %ivtv_validate_speed.exit.thread
    i32 1, label %if.end30.i.if.then36.i_crit_edge
    i32 1000, label %if.end30.i.if.then36.i_crit_edge160
  ]

if.end30.i.if.then36.i_crit_edge160:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then36.i

if.end30.i.if.then36.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then36.i

ivtv_validate_speed.exit.thread:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1000, ptr %9, align 8
  br label %if.else

if.then36.i:                                      ; preds = %if.end30.i.if.then36.i_crit_edge, %if.end30.i.if.then36.i_crit_edge160
  %mul37.i = mul nsw i32 %cond.i, %12
  br label %ivtv_validate_speed.exit

if.end38.i:                                       ; preds = %if.end30.i
  %div.i = sdiv i32 1000, %12
  %div39.i = sdiv i32 1000, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %div39.i, i32 %div.i)
  %cmp40.i = icmp eq i32 %div39.i, %div.i
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %12)
  %cmp42.i = icmp slt i32 %13, %12
  %cond43.i = select i1 %cmp42.i, i32 -1, i32 1
  %add.i = select i1 %cmp40.i, i32 %cond43.i, i32 0
  %new_speed.addr.1.i = add nsw i32 %add.i, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %new_speed.addr.1.i)
  %cmp45.i = icmp sgt i32 %new_speed.addr.1.i, 60
  br i1 %cmp45.i, label %if.then46.i, label %if.end49.i

if.then46.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #19
  %16 = trunc i32 %cond.i to i16
  %div48.rhs.trunc.i = mul nsw i16 %16, 60
  %div4883.i = sdiv i16 1000, %div48.rhs.trunc.i
  %div48.sext.i = sext i16 %div4883.i to i32
  br label %ivtv_validate_speed.exit

if.end49.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #19
  %mul50.i = mul nsw i32 %new_speed.addr.1.i, %cond.i
  %div51.rhs.trunc.i = trunc i32 %mul50.i to i16
  %div5184.i = sdiv i16 1000, %div51.rhs.trunc.i
  %div51.sext.i = sext i16 %div5184.i to i32
  br label %ivtv_validate_speed.exit

ivtv_validate_speed.exit:                         ; preds = %if.end49.i, %if.then46.i, %if.then36.i, %if.then27.i, %if.then23.i, %if.then19.i, %if.then15.i, %if.then12.i
  %retval.0.i = phi i32 [ %mul.i, %if.then12.i ], [ %mul16.i, %if.then15.i ], [ %mul37.i, %if.then36.i ], [ %div48.sext.i, %if.then46.i ], [ %div51.sext.i, %if.end49.i ], [ %mul20.i, %if.then19.i ], [ %mul24.i, %if.then23.i ], [ %mul28.i, %if.then27.i ]
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ivtv_validate_speed.exit.if.end7_crit_edge, label %ivtv_validate_speed.exit.if.else_crit_edge

ivtv_validate_speed.exit.if.else_crit_edge:       ; preds = %ivtv_validate_speed.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

ivtv_validate_speed.exit.if.end7_crit_edge:       ; preds = %ivtv_validate_speed.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.else:                                          ; preds = %ivtv_validate_speed.exit.if.else_crit_edge, %ivtv_validate_speed.exit.thread
  %retval.0.i159 = phi i32 [ 1000, %ivtv_validate_speed.exit.thread ], [ %retval.0.i, %ivtv_validate_speed.exit.if.else_crit_edge ]
  br label %if.end7

if.end7:                                          ; preds = %if.else, %ivtv_validate_speed.exit.if.end7_crit_edge
  %.sink = phi i32 [ 0, %if.else ], [ 1, %ivtv_validate_speed.exit.if.end7_crit_edge ]
  %retval.0.i158 = phi i32 [ %retval.0.i159, %if.else ], [ %retval.0.i, %ivtv_validate_speed.exit.if.end7_crit_edge ]
  %format6 = getelementptr inbounds %struct.anon.102, ptr %9, i32 0, i32 1
  %18 = ptrtoint ptr %format6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %format6, align 4
  %19 = zext i32 %retval.0.i158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %retval.0.i158, label %if.then12 [
    i32 500, label %if.end7.if.end16_crit_edge
    i32 1500, label %if.end7.if.end16_crit_edge161
  ]

if.end7.if.end16_crit_edge161:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %retval.0.i158)
  %cmp14 = icmp ne i32 %retval.0.i158, 1000
  %cond = zext i1 %cmp14 to i32
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %flags, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end7.if.end16_crit_edge, %if.end7.if.end16_crit_edge161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try)
  %tobool17.not = icmp eq i32 %try, 0
  br i1 %tobool17.not, label %if.end19, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %23 = trunc i32 %22 to i8
  %conv = and i8 %23, 1
  %speed_mute_audio = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 83
  %24 = ptrtoint ptr %speed_mute_audio to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %speed_mute_audio, align 4
  %call22 = tail call i32 @ivtv_set_output_mode(ptr noundef %itv, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 1
  br i1 %cmp23.not, label %if.end26, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  %call27 = tail call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %i_flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.if.end31_crit_edge, label %if.then29

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %speed, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %9, align 8
  %call33 = tail call i32 @ivtv_start_decoding(ptr noundef %id, i32 noundef %27) #17
  br label %cleanup

sw.bb34:                                          ; preds = %if.end
  %flags35 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %dc, i32 0, i32 1
  %28 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags35, align 4
  %and36 = and i32 %29, 3
  store i32 %and36, ptr %flags35, align 4
  %and38 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %sw.bb34.if.end41_crit_edge, label %if.then40

sw.bb34.if.end41_crit_edge:                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.then40:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #19
  %30 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %dc, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %30, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %sw.bb34.if.end41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try)
  %tobool42.not = icmp eq i32 %try, 0
  br i1 %tobool42.not, label %if.end44, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end44:                                         ; preds = %if.end41
  %decoding = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %decoding, i32 noundef 4) #17
  %32 = ptrtoint ptr %decoding to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %decoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp46 = icmp eq i32 %33, 0
  br i1 %cmp46, label %if.end44.cleanup_crit_edge, label %if.end49

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  %output_mode = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 31
  %34 = ptrtoint ptr %output_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %output_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp50.not = icmp eq i32 %35, 1
  br i1 %cmp50.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  %36 = ptrtoint ptr %output_mode to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %output_mode, align 8
  %37 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags35, align 4
  %39 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %dc, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %39, align 8
  %call57 = tail call i32 @ivtv_stop_v4l2_decode_stream(ptr noundef %arrayidx, i32 noundef %38, i64 noundef %41) #17
  br label %cleanup

sw.bb58:                                          ; preds = %if.end
  %flags59 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %dc, i32 0, i32 1
  %42 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags59, align 4
  %and60 = and i32 %43, 1
  store i32 %and60, ptr %flags59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try)
  %tobool61.not = icmp eq i32 %try, 0
  br i1 %tobool61.not, label %if.end63, label %sw.bb58.cleanup_crit_edge

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end63:                                         ; preds = %sw.bb58
  %decoding64 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 44
  %call.i.i153 = tail call zeroext i1 @__kasan_check_read(ptr noundef %decoding64, i32 noundef 4) #17
  %44 = ptrtoint ptr %decoding64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %decoding64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool66.not = icmp eq i32 %45, 0
  br i1 %tobool66.not, label %if.end63.cleanup_crit_edge, label %if.end68

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end68:                                         ; preds = %if.end63
  %output_mode69 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 31
  %46 = ptrtoint ptr %output_mode69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %output_mode69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp70.not = icmp eq i32 %47, 1
  br i1 %cmp70.not, label %if.end73, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end73:                                         ; preds = %if.end68
  %call.i.i154 = tail call zeroext i1 @__kasan_check_read(ptr noundef %decoding64, i32 noundef 4) #17
  %48 = ptrtoint ptr %decoding64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %decoding64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp76 = icmp sgt i32 %49, 0
  br i1 %cmp76, label %if.then78, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  %50 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags59, align 4
  %and80 = and i32 %51, 1
  %call83 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 13, i32 noundef 1, i32 noundef %and80) #17
  %i_flags84 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 20, ptr noundef %i_flags84) #17
  br label %cleanup

sw.bb86:                                          ; preds = %if.end
  %flags87 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %dc, i32 0, i32 1
  %52 = ptrtoint ptr %flags87 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %flags87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try)
  %tobool88.not = icmp eq i32 %try, 0
  br i1 %tobool88.not, label %if.end90, label %sw.bb86.cleanup_crit_edge

sw.bb86.cleanup_crit_edge:                        ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end90:                                         ; preds = %sw.bb86
  %decoding91 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 44
  %call.i.i155 = tail call zeroext i1 @__kasan_check_read(ptr noundef %decoding91, i32 noundef 4) #17
  %53 = ptrtoint ptr %decoding91 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %decoding91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool93.not = icmp eq i32 %54, 0
  br i1 %tobool93.not, label %if.end90.cleanup_crit_edge, label %if.end95

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end95:                                         ; preds = %if.end90
  %output_mode96 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 31
  %55 = ptrtoint ptr %output_mode96 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %output_mode96, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp97.not = icmp eq i32 %56, 1
  br i1 %cmp97.not, label %if.end100, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end100:                                        ; preds = %if.end95
  %i_flags101 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  %call102 = tail call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %i_flags101) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end100.cleanup_crit_edge, label %if.then104

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #19
  %speed106 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 82
  %57 = ptrtoint ptr %speed106 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %speed106, align 8
  store i32 0, ptr %speed106, align 8
  %call108 = tail call i32 @ivtv_start_decoding(ptr noundef %id, i32 noundef %58) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then104, %if.end100.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %if.end90.cleanup_crit_edge, %sw.bb86.cleanup_crit_edge, %if.then78, %if.end73.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %sw.bb58.cleanup_crit_edge, %if.end53, %if.end49.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end31, %if.end19.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call108, %if.then104 ], [ %call57, %if.end53 ], [ %call33, %if.end31 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end19.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ -16, %if.end49.cleanup_crit_edge ], [ -1, %if.end63.cleanup_crit_edge ], [ -16, %if.end68.cleanup_crit_edge ], [ -1, %if.end90.cleanup_crit_edge ], [ -16, %if.end95.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end100.cleanup_crit_edge ], [ 0, %sw.bb86.cleanup_crit_edge ], [ 0, %if.end73.cleanup_crit_edge ], [ 0, %if.then78 ], [ 0, %sw.bb58.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_set_output_mode(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_start_decoding(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_stop_v4l2_decode_stream(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_read_eeprom(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_reset_ir_gpio(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_release_stream(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_yuv_prep_frame(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_passthrough_mode(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !106, !108, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !190, !192, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215, !216}
!llvm.named.register.sp = !{!217}
!llvm.module.flags = !{!218, !219, !220, !221, !222, !223, !224, !225}
!llvm.ident = !{!226}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 181, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ivtv_set_speed._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ivtv_set_speed._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 988, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ivtv_s_input._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @ivtv_s_input._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 996, i32 2}
!13 = !{ptr @ivtv_s_input._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @ivtv_s_input._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1080, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ivtv_s_frequency._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @ivtv_s_frequency._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1143, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ivtv_s_std_dec._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @ivtv_s_std_dec._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @ivtv_ioctl_ops, !26, !"ivtv_ioctl_ops", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1679, i32 36}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 733, i32 24}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 735, i32 51}
!31 = !{ptr @ivtv_enum_fmt_vid_cap.hm12, !32, !"hm12", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 917, i32 35}
!33 = !{ptr @ivtv_enum_fmt_vid_cap.mpeg, !34, !"mpeg", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 922, i32 35}
!35 = !{ptr @ivtv_enum_fmt_vid_out.hm12, !36, !"hm12", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 944, i32 35}
!37 = !{ptr @ivtv_enum_fmt_vid_out.mpeg, !38, !"mpeg", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 949, i32 35}
!39 = !{ptr @ivtv_g_fbuf.pixel_format, !40, !"pixel_format", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1367, i32 13}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1177, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ivtv_s_std._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ivtv_s_std._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1041, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ivtv_s_output._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @ivtv_s_output._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1044, i32 2}
!53 = !{ptr @ivtv_s_output._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ivtv_s_output._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1285, i32 3}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ivtv_encoder_cmd._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ivtv_encoder_cmd._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1290, i32 3}
!62 = !{ptr @ivtv_encoder_cmd._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ivtv_encoder_cmd._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1296, i32 3}
!66 = !{ptr @ivtv_encoder_cmd._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ivtv_encoder_cmd._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1309, i32 3}
!70 = !{ptr @ivtv_encoder_cmd._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ivtv_encoder_cmd._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1322, i32 3}
!74 = !{ptr @ivtv_encoder_cmd._entry.32, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ivtv_encoder_cmd._entry_ptr.34, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1335, i32 3}
!78 = !{ptr @ivtv_try_encoder_cmd._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ivtv_try_encoder_cmd._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @ivtv_try_encoder_cmd._entry.36, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1340, i32 3}
!82 = !{ptr @ivtv_try_encoder_cmd._entry_ptr.37, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @ivtv_try_encoder_cmd._entry.38, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1345, i32 3}
!85 = !{ptr @ivtv_try_encoder_cmd._entry_ptr.39, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @ivtv_try_encoder_cmd._entry.40, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1350, i32 3}
!88 = !{ptr @ivtv_try_encoder_cmd._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @ivtv_try_encoder_cmd._entry.42, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1354, i32 3}
!91 = !{ptr @ivtv_try_encoder_cmd._entry_ptr.43, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1591, i32 2}
!94 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ivtv_decoder_cmd._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @ivtv_decoder_cmd._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1600, i32 2}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ivtv_try_decoder_cmd._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @ivtv_try_decoder_cmd._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1210, i32 21}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1212, i32 21}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1504, i32 2}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ivtv_log_status._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @ivtv_log_status._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1513, i32 2}
!114 = !{ptr @ivtv_log_status._entry.53, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ivtv_log_status._entry_ptr.55, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1514, i32 2}
!118 = !{ptr @ivtv_log_status._entry.56, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ivtv_log_status._entry_ptr.58, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1522, i32 4}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1523, i32 4}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1524, i32 4}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1525, i32 4}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1526, i32 4}
!132 = !{ptr @ivtv_log_status.output_modes, !133, !"output_modes", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1521, i32 29}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1530, i32 4}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1531, i32 4}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1532, i32 4}
!140 = !{ptr @ivtv_log_status.alpha_mode, !141, !"alpha_mode", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1528, i32 29}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1535, i32 4}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1536, i32 4}
!146 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1537, i32 4}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1538, i32 4}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1539, i32 4}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1540, i32 4}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1541, i32 4}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1542, i32 4}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1543, i32 4}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1544, i32 4}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1545, i32 4}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1546, i32 4}
!166 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1547, i32 4}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1548, i32 4}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1549, i32 4}
!172 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1550, i32 4}
!174 = !{ptr @ivtv_log_status.pixel_format, !175, !"pixel_format", i1 false, i1 false}
!175 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1534, i32 29}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1555, i32 3}
!178 = !{ptr @ivtv_log_status._entry.85, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @ivtv_log_status._entry_ptr.87, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1558, i32 3}
!182 = !{ptr @ivtv_log_status._entry.88, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @ivtv_log_status._entry_ptr.90, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1561, i32 3}
!186 = !{ptr @ivtv_log_status._entry.91, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @ivtv_log_status._entry_ptr.93, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.94, !185, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.95, !185, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1566, i32 2}
!192 = !{ptr @ivtv_log_status._entry.96, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @ivtv_log_status._entry_ptr.98, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.99, !191, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.100, !191, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.102, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1569, i32 2}
!198 = !{ptr @ivtv_log_status._entry.101, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @ivtv_log_status._entry_ptr.103, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.105, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1575, i32 3}
!202 = !{ptr @ivtv_log_status._entry.104, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @ivtv_log_status._entry_ptr.106, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.108, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1580, i32 2}
!206 = !{ptr @ivtv_log_status._entry.107, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @ivtv_log_status._entry_ptr.109, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.110, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1614, i32 3}
!210 = !{ptr @.str.111, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @ivtv_decoder_ioctls._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @ivtv_decoder_ioctls._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.113, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/pci/ivtv/ivtv-ioctl.c", i32 1636, i32 3}
!215 = !{ptr @ivtv_decoder_ioctls._entry.112, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @ivtv_decoder_ioctls._entry_ptr.114, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{!"sp"}
!218 = !{i32 1, !"wchar_size", i32 2}
!219 = !{i32 1, !"min_enum_size", i32 4}
!220 = !{i32 8, !"branch-target-enforcement", i32 0}
!221 = !{i32 8, !"sign-return-address", i32 0}
!222 = !{i32 8, !"sign-return-address-all", i32 0}
!223 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!224 = !{i32 7, !"uwtable", i32 1}
!225 = !{i32 7, !"frame-pointer", i32 2}
!226 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!227 = !{!"branch_weights", i32 2000, i32 1}
!228 = !{i64 5794313}
!229 = !{i64 2157483482}
!230 = !{i64 2157524688}
!231 = !{i64 2157539725}
!232 = !{i64 2157399726}
!233 = !{i64 2157399939}
!234 = !{i64 5793895}
