; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-streams.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-streams.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ivtv_start_v4l2_encode_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_ivtv_start_v4l2_encode_stream\09\09\09\09"
module asm "\09.long\09__crc_ivtv_start_v4l2_encode_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ivtv_start_v4l2_encode_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22ivtv_start_v4l2_encode_stream\22\09\09\09\09\09"
module asm "__kstrtabns_ivtv_start_v4l2_encode_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ivtv_stop_v4l2_encode_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_ivtv_stop_v4l2_encode_stream\09\09\09\09"
module asm "\09.long\09__crc_ivtv_stop_v4l2_encode_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ivtv_stop_v4l2_encode_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22ivtv_stop_v4l2_encode_stream\22\09\09\09\09\09"
module asm "__kstrtabns_ivtv_stop_v4l2_encode_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_event = type { i32, %union.anon.129, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.129 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.130, i32, i32, i32, i32, i32 }
%union.anon.130 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.anon.131 = type { ptr, i32, i32, i32, i32, i32, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.v4l2_subdev_vbi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ivtv_mailbox = type { i32, i32, i32, i32, [16 x i32] }
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

@ivtv_debug = external dso_local local_unnamed_addr global i32, align 4
@ivtv_start_v4l2_encode_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s:  info: Start encoder stream %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ivtv_start_v4l2_encode_stream\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/ivtv/ivtv-streams.c\00", [58 x i8] zeroinitializer }, align 32
@ivtv_start_v4l2_encode_stream._entry_ptr = internal global ptr @ivtv_start_v4l2_encode_stream._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ivtv_start_v4l2_encode_stream._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s:  info: PGM Index at 0x%08x with %d elements\0A\00", [45 x i8] zeroinitializer }, align 32
@ivtv_start_v4l2_encode_stream._entry_ptr.5 = internal global ptr @ivtv_start_v4l2_encode_stream._entry.3, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@ivtv_start_v4l2_encode_stream._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s:  warn: Error starting capture!\0A\00", [58 x i8] zeroinitializer }, align 32
@ivtv_start_v4l2_encode_stream._entry_ptr.8 = internal global ptr @ivtv_start_v4l2_encode_stream._entry.6, section ".printk_index", align 4
@__kstrtab_ivtv_start_v4l2_encode_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_ivtv_start_v4l2_encode_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_ivtv_start_v4l2_encode_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ivtv_start_v4l2_encode_stream to i32), ptr @__kstrtab_ivtv_start_v4l2_encode_stream, ptr @__kstrtabns_ivtv_start_v4l2_encode_stream }, section "___ksymtab+ivtv_start_v4l2_encode_stream", align 4
@ivtv_start_v4l2_decode_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s:  info: Starting decode stream %s (gop_offset %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ivtv_start_v4l2_decode_stream\00", [34 x i8] zeroinitializer }, align 32
@ivtv_start_v4l2_decode_stream._entry_ptr = internal global ptr @ivtv_start_v4l2_decode_stream._entry, section ".printk_index", align 4
@ivtv_start_v4l2_decode_stream._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s:  irq: IRQ Mask is now: 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@ivtv_start_v4l2_decode_stream._entry_ptr.13 = internal global ptr @ivtv_start_v4l2_decode_stream._entry.11, section ".printk_index", align 4
@ivtv_stop_v4l2_encode_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s:  info: Stop Capture\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ivtv_stop_v4l2_encode_stream\00", [35 x i8] zeroinitializer }, align 32
@ivtv_stop_v4l2_encode_stream._entry_ptr = internal global ptr @ivtv_stop_v4l2_encode_stream._entry, section ".printk_index", align 4
@ivtv_stop_v4l2_encode_stream._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016%s:  warn: %s: EOS interrupt not received! stopping anyway.\0A\00", [33 x i8] zeroinitializer }, align 32
@ivtv_stop_v4l2_encode_stream._entry_ptr.18 = internal global ptr @ivtv_stop_v4l2_encode_stream._entry.16, section ".printk_index", align 4
@ivtv_stop_v4l2_encode_stream._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s:  warn: %s: waited %lu ms.\0A\00", [63 x i8] zeroinitializer }, align 32
@ivtv_stop_v4l2_encode_stream._entry_ptr.21 = internal global ptr @ivtv_stop_v4l2_encode_stream._entry.19, section ".printk_index", align 4
@ivtv_stop_v4l2_encode_stream._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s:  info: %s: EOS took %lu ms to occur.\0A\00", [52 x i8] zeroinitializer }, align 32
@ivtv_stop_v4l2_encode_stream._entry_ptr.24 = internal global ptr @ivtv_stop_v4l2_encode_stream._entry.22, section ".printk_index", align 4
@__kstrtab_ivtv_stop_v4l2_encode_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_ivtv_stop_v4l2_encode_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_ivtv_stop_v4l2_encode_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ivtv_stop_v4l2_encode_stream to i32), ptr @__kstrtab_ivtv_stop_v4l2_encode_stream, ptr @__kstrtabns_ivtv_stop_v4l2_encode_stream }, section "___ksymtab+ivtv_stop_v4l2_encode_stream", align 4
@ivtv_stop_v4l2_decode_stream.ev = internal constant { %struct.v4l2_event, [56 x i8] } { %struct.v4l2_event { i32 2, %union.anon.129 zeroinitializer, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@ivtv_stop_v4l2_decode_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s:  info: Stop Decode at %llu, flags: %x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ivtv_stop_v4l2_decode_stream\00", [35 x i8] zeroinitializer }, align 32
@ivtv_stop_v4l2_decode_stream._entry_ptr = internal global ptr @ivtv_stop_v4l2_decode_stream._entry, section ".printk_index", align 4
@ivtv_passthrough_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s:  info: ivtv ioctl: Select passthrough mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ivtv_passthrough_mode\00", [42 x i8] zeroinitializer }, align 32
@ivtv_passthrough_mode._entry_ptr = internal global ptr @ivtv_passthrough_mode._entry, section ".printk_index", align 4
@ivtv_stream_info = internal constant { [9 x %struct.anon.131], [36 x i8] } { [9 x %struct.anon.131] [%struct.anon.131 { ptr @.str.33, i32 0, i32 0, i32 2, i32 0, i32 16973825, ptr @ivtv_v4l2_enc_fops }, %struct.anon.131 { ptr @.str.34, i32 0, i32 32, i32 2, i32 0, i32 16973825, ptr @ivtv_v4l2_enc_fops }, %struct.anon.131 { ptr @.str.35, i32 1, i32 0, i32 2, i32 0, i32 16973904, ptr @ivtv_v4l2_enc_fops }, %struct.anon.131 { ptr @.str.36, i32 0, i32 24, i32 2, i32 0, i32 16973824, ptr @ivtv_v4l2_enc_fops }, %struct.anon.131 { ptr @.str.37, i32 2, i32 0, i32 3, i32 1, i32 327680, ptr @ivtv_v4l2_radio_fops }, %struct.anon.131 { ptr @.str.38, i32 0, i32 16, i32 1, i32 0, i32 16908290, ptr @ivtv_v4l2_dec_fops }, %struct.anon.131 { ptr @.str.39, i32 1, i32 8, i32 3, i32 1, i32 16777280, ptr @ivtv_v4l2_enc_fops }, %struct.anon.131 { ptr @.str.40, i32 1, i32 16, i32 3, i32 1, i32 16908416, ptr @ivtv_v4l2_dec_fops }, %struct.anon.131 { ptr @.str.41, i32 0, i32 48, i32 1, i32 0, i32 16908290, ptr @ivtv_v4l2_dec_fops }], [36 x i8] zeroinitializer }, align 32
@ivtv_first_minor = external dso_local local_unnamed_addr global i32, align 4
@ivtv_prep_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: Disabled %s device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ivtv_prep_dev\00", [18 x i8] zeroinitializer }, align 32
@ivtv_prep_dev._entry_ptr = internal global ptr @ivtv_prep_dev._entry, section ".printk_index", align 4
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"encoder MPG\00", [20 x i8] zeroinitializer }, align 32
@ivtv_v4l2_enc_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @ivtv_v4l2_read, ptr @ivtv_v4l2_write, ptr @ivtv_v4l2_enc_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @ivtv_v4l2_open, ptr @ivtv_v4l2_close }, [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"encoder YUV\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"encoder VBI\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"encoder PCM\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"encoder radio\00", [18 x i8] zeroinitializer }, align 32
@ivtv_v4l2_radio_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @ivtv_v4l2_enc_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @ivtv_v4l2_open, ptr @ivtv_v4l2_close }, [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decoder MPG\00", [20 x i8] zeroinitializer }, align 32
@ivtv_v4l2_dec_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @ivtv_v4l2_read, ptr @ivtv_v4l2_write, ptr @ivtv_v4l2_dec_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @ivtv_v4l2_open, ptr @ivtv_v4l2_close }, [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decoder VBI\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"decoder VOUT\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decoder YUV\00", [20 x i8] zeroinitializer }, align 32
@ivtv_stream_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&s->qlock\00", [22 x i8] zeroinitializer }, align 32
@ivtv_stream_init.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&s->waitq\00", [22 x i8] zeroinitializer }, align 32
@ivtv_reg_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s: Couldn't register v4l2 device for %s (device node number %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ivtv_reg_dev\00", [19 x i8] zeroinitializer }, align 32
@ivtv_reg_dev._entry_ptr = internal global ptr @ivtv_reg_dev._entry, section ".printk_index", align 4
@ivtv_reg_dev._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: Registered device %s for %s (%d kB)\0A\00", [53 x i8] zeroinitializer }, align 32
@ivtv_reg_dev._entry_ptr.49 = internal global ptr @ivtv_reg_dev._entry.47, section ".printk_index", align 4
@ivtv_reg_dev._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: Registered device %s for %s\0A\00", [61 x i8] zeroinitializer }, align 32
@ivtv_reg_dev._entry_ptr.52 = internal global ptr @ivtv_reg_dev._entry.50, section ".printk_index", align 4
@ivtv_reg_dev._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtv_reg_dev._entry_ptr.54 = internal global ptr @ivtv_reg_dev._entry.53, section ".printk_index", align 4
@ivtv_reg_dev._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtv_reg_dev._entry_ptr.56 = internal global ptr @ivtv_reg_dev._entry.55, section ".printk_index", align 4
@ivtv_vbi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016%s:  info: Setup VBI API header 0x%08x pkts %d buffs %d ln %d sz %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtv_vbi_setup\00", [17 x i8] zeroinitializer }, align 32
@ivtv_vbi_setup._entry_ptr = internal global ptr @ivtv_vbi_setup._entry, section ".printk_index", align 4
@ivtv_vbi_setup._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s:  info: Setup VBI start 0x%08x frames %d fpi %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ivtv_vbi_setup._entry_ptr.61 = internal global ptr @ivtv_vbi_setup._entry.59, section ".printk_index", align 4
@ivtv_setup_v4l2_decode_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s:  info: Setting some initial decoder settings\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ivtv_setup_v4l2_decode_stream\00", [34 x i8] zeroinitializer }, align 32
@ivtv_setup_v4l2_decode_stream._entry_ptr = internal global ptr @ivtv_setup_v4l2_decode_stream._entry, section ".printk_index", align 4
@ivtv_setup_v4l2_decode_stream._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016%s:  info: Decoder VBI RE-Insert start 0x%08x size 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@ivtv_setup_v4l2_decode_stream._entry_ptr.66 = internal global ptr @ivtv_setup_v4l2_decode_stream._entry.64, section ".printk_index", align 4
@ivtv_setup_v4l2_decode_stream._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s:  info: Setup DEC YUV Stream data[0] = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ivtv_setup_v4l2_decode_stream._entry_ptr.69 = internal global ptr @ivtv_setup_v4l2_decode_stream._entry.67, section ".printk_index", align 4
@ivtv_setup_v4l2_decode_stream._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s:  warn: Couldn't initialize decoder source\0A\00", [47 x i8] zeroinitializer }, align 32
@ivtv_setup_v4l2_decode_stream._entry_ptr.72 = internal global ptr @ivtv_setup_v4l2_decode_stream._entry.70, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 500, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 598, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 638, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 734, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 769, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 804, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 865, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 866, i32 5 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 868, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 917, i32 33 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 931, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 990, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"ivtv_stream_info\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 99, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 222, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 228, i32 47 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 101, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [19 x i8] c"ivtv_v4l2_enc_fops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 48, i32 42 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 109, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 117, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 125, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 132, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [21 x i8] c"ivtv_v4l2_radio_fops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 74, i32 42 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 139, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [19 x i8] c"ivtv_v4l2_dec_fops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 61, i32 42 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 146, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 153, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 160, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 188, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 189, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 314, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 322, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 326, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 331, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 334, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 451, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 463, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 669, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 687, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 704, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.292 = private constant [41 x i8] c"../drivers/media/pci/ivtv/ivtv-streams.c\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 713, i32 3 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__ksymtab_ivtv_start_v4l2_encode_stream, ptr @__ksymtab_ivtv_stop_v4l2_encode_stream, ptr @ivtv_passthrough_mode._entry, ptr @ivtv_passthrough_mode._entry_ptr, ptr @ivtv_prep_dev._entry, ptr @ivtv_prep_dev._entry_ptr, ptr @ivtv_reg_dev._entry, ptr @ivtv_reg_dev._entry.47, ptr @ivtv_reg_dev._entry.50, ptr @ivtv_reg_dev._entry.53, ptr @ivtv_reg_dev._entry.55, ptr @ivtv_reg_dev._entry_ptr, ptr @ivtv_reg_dev._entry_ptr.49, ptr @ivtv_reg_dev._entry_ptr.52, ptr @ivtv_reg_dev._entry_ptr.54, ptr @ivtv_reg_dev._entry_ptr.56, ptr @ivtv_setup_v4l2_decode_stream._entry, ptr @ivtv_setup_v4l2_decode_stream._entry.64, ptr @ivtv_setup_v4l2_decode_stream._entry.67, ptr @ivtv_setup_v4l2_decode_stream._entry.70, ptr @ivtv_setup_v4l2_decode_stream._entry_ptr, ptr @ivtv_setup_v4l2_decode_stream._entry_ptr.66, ptr @ivtv_setup_v4l2_decode_stream._entry_ptr.69, ptr @ivtv_setup_v4l2_decode_stream._entry_ptr.72, ptr @ivtv_start_v4l2_decode_stream._entry, ptr @ivtv_start_v4l2_decode_stream._entry.11, ptr @ivtv_start_v4l2_decode_stream._entry_ptr, ptr @ivtv_start_v4l2_decode_stream._entry_ptr.13, ptr @ivtv_start_v4l2_encode_stream._entry, ptr @ivtv_start_v4l2_encode_stream._entry.3, ptr @ivtv_start_v4l2_encode_stream._entry.6, ptr @ivtv_start_v4l2_encode_stream._entry_ptr, ptr @ivtv_start_v4l2_encode_stream._entry_ptr.5, ptr @ivtv_start_v4l2_encode_stream._entry_ptr.8, ptr @ivtv_stop_v4l2_decode_stream._entry, ptr @ivtv_stop_v4l2_decode_stream._entry_ptr, ptr @ivtv_stop_v4l2_encode_stream._entry, ptr @ivtv_stop_v4l2_encode_stream._entry.16, ptr @ivtv_stop_v4l2_encode_stream._entry.19, ptr @ivtv_stop_v4l2_encode_stream._entry.22, ptr @ivtv_stop_v4l2_encode_stream._entry_ptr, ptr @ivtv_stop_v4l2_encode_stream._entry_ptr.18, ptr @ivtv_stop_v4l2_encode_stream._entry_ptr.21, ptr @ivtv_stop_v4l2_encode_stream._entry_ptr.24, ptr @ivtv_vbi_setup._entry, ptr @ivtv_vbi_setup._entry.59, ptr @ivtv_vbi_setup._entry_ptr, ptr @ivtv_vbi_setup._entry_ptr.61, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @ivtv_stop_v4l2_decode_stream.ev, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @ivtv_stream_info, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @ivtv_v4l2_enc_fops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @ivtv_v4l2_radio_fops, ptr @.str.38, ptr @ivtv_v4l2_dec_fops, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @ivtv_stream_init.__key, ptr @.str.42, ptr @ivtv_stream_init.__key.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_start_v4l2_encode_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_start_v4l2_encode_stream._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_start_v4l2_encode_stream._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_start_v4l2_decode_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_start_v4l2_decode_stream._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop_v4l2_encode_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop_v4l2_encode_stream._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop_v4l2_encode_stream._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop_v4l2_encode_stream._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop_v4l2_decode_stream.ev to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop_v4l2_decode_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_passthrough_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stream_info to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_prep_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_v4l2_enc_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_v4l2_radio_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_v4l2_dec_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stream_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stream_init.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_reg_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_reg_dev._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_reg_dev._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_reg_dev._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_reg_dev._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_vbi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_vbi_setup._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_setup_v4l2_decode_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_setup_v4l2_decode_stream._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_setup_v4l2_decode_stream._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_setup_v4l2_decode_stream._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_streams_setup(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %instance.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %v4l2_cap12.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 8
  %options.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 18
  %v4l2_dev33.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19
  %name34.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %ctrl_handler.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 6
  %serialize_lock.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %type.023 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023
  %arrayidx1.i = getelementptr [9 x %struct.anon.131], ptr @ivtv_stream_info, i32 0, i32 %type.023
  %num_offset2.i = getelementptr [9 x %struct.anon.131], ptr @ivtv_stream_info, i32 0, i32 %type.023, i32 2
  %0 = ptrtoint ptr %num_offset2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_offset2.i, align 4
  %2 = ptrtoint ptr %instance.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %instance.i, align 4
  %conv.i = zext i16 %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_first_minor to i32))
  %4 = load i32, ptr @ivtv_first_minor, align 4
  %add.i = add i32 %1, %conv.i
  %add3.i = add i32 %add.i, %4
  %v4l2_dev.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 7
  %5 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %v4l2_dev.i, align 4
  %itv4.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 1
  %6 = ptrtoint ptr %itv4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %itv, ptr %itv4.i, align 8
  %type5.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 3
  %7 = ptrtoint ptr %type5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %type.023, ptr %type5.i, align 8
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1.i, align 4
  %name7.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 2
  %10 = ptrtoint ptr %name7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %name7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type.023)
  %cmp.i = icmp eq i32 %type.023, 4
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %11 = ptrtoint ptr %v4l2_cap12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %v4l2_cap12.i, align 4
  %and.i = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.ivtv_prep_dev.exit_crit_edge, label %land.lhs.true.i.if.end16.i_crit_edge

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

land.lhs.true.i.ivtv_prep_dev.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ivtv_prep_dev.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type.023)
  %cmp9.i = icmp ugt i32 %type.023, 4
  br i1 %cmp9.i, label %land.lhs.true11.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

land.lhs.true11.i:                                ; preds = %if.end.i
  %13 = ptrtoint ptr %v4l2_cap12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v4l2_cap12.i, align 4
  %and13.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true11.i.ivtv_prep_dev.exit_crit_edge, label %land.lhs.true11.i.if.end16.i_crit_edge

land.lhs.true11.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

land.lhs.true11.i.ivtv_prep_dev.exit_crit_edge:   ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ivtv_prep_dev.exit

if.end16.i:                                       ; preds = %land.lhs.true11.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge, %land.lhs.true.i.if.end16.i_crit_edge
  %15 = lshr i32 208, %type.023
  %16 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp18.not.not.i = icmp eq i32 %16, 0
  br i1 %cmp18.not.not.i, label %land.lhs.true20.i, label %if.end16.i.if.end29.i_crit_edge

if.end16.i.if.end29.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

land.lhs.true20.i:                                ; preds = %if.end16.i
  %arrayidx21.i = getelementptr [9 x i32], ptr %options.i, i32 0, i32 %type.023
  %17 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp22.i = icmp eq i32 %18, 0
  br i1 %cmp22.i, label %do.end.i, label %land.lhs.true20.i.if.end29.i_crit_edge

land.lhs.true20.i.if.end29.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

do.end.i:                                         ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name34.i, ptr noundef %9) #10
  br label %ivtv_prep_dev.exit

if.end29.i:                                       ; preds = %land.lhs.true20.i.if.end29.i_crit_edge, %if.end16.i.if.end29.i_crit_edge
  %19 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 1664)
  %20 = ptrtoint ptr %itv4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %itv, ptr %itv4.i, align 8
  %21 = ptrtoint ptr %type5.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %type.023, ptr %type5.i, align 8
  %22 = ptrtoint ptr %name7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %9, ptr %name7.i, align 4
  %v4l2_caps.i.i = getelementptr [9 x %struct.anon.131], ptr @ivtv_stream_info, i32 0, i32 %type.023, i32 5
  %23 = ptrtoint ptr %v4l2_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %v4l2_caps.i.i, align 4
  %caps.i.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 4
  %25 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %caps.i.i, align 4
  %26 = lshr i32 303, %type.023
  %27 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.not.i.i, label %if.end29.i.if.end.i.i_crit_edge, label %if.else.i.i

if.end29.i.if.end.i.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma8.i.i = getelementptr [9 x %struct.anon.131], ptr @ivtv_stream_info, i32 0, i32 %type.023, i32 3
  %28 = ptrtoint ptr %dma8.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma8.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.end29.i.if.end.i.i_crit_edge
  %.sink.i.i = phi i32 [ %29, %if.else.i.i ], [ 3, %if.end29.i.if.end.i.i_crit_edge ]
  %30 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink.i.i, ptr %30, align 4
  %arrayidx10.i.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 41, i32 %type.023
  %32 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx10.i.i, align 4
  %buf_size.i.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 19
  %34 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %buf_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool12.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool12.not.i.i, label %if.end.i.i.ivtv_stream_init.exit.i_crit_edge, label %if.then13.i.i

if.end.i.i.ivtv_stream_init.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ivtv_stream_init.exit.i

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14.i.i = getelementptr [9 x i32], ptr %options.i, i32 0, i32 %type.023
  %35 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx14.i.i, align 4
  %mul.i.i = shl i32 %36, 10
  %add.i.i = add i32 %33, -1
  %sub.i.i = add i32 %add.i.i, %mul.i.i
  %div.i.i = udiv i32 %sub.i.i, %33
  %buffers.i.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 18
  %37 = ptrtoint ptr %buffers.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div.i.i, ptr %buffers.i.i, align 4
  br label %ivtv_stream_init.exit.i

ivtv_stream_init.exit.i:                          ; preds = %if.then13.i.i, %if.end.i.i.ivtv_stream_init.exit.i_crit_edge
  %qlock.i.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %qlock.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @ivtv_stream_init.__key, i16 noundef signext 3) #7
  %waitq.i.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %waitq.i.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @ivtv_stream_init.__key.43) #7
  %sg_handle.i.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 30
  %38 = ptrtoint ptr %sg_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %sg_handle.i.i, align 4
  %q_free.i.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 21
  tail call void @ivtv_queue_init(ptr noundef %q_free.i.i) #7
  %q_full.i.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 22
  tail call void @ivtv_queue_init(ptr noundef %q_full.i.i) #7
  %q_dma.i.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 24
  tail call void @ivtv_queue_init(ptr noundef %q_dma.i.i) #7
  %q_predma.i.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 25
  tail call void @ivtv_queue_init(ptr noundef %q_predma.i.i) #7
  %q_io.i.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.023, i32 23
  tail call void @ivtv_queue_init(ptr noundef %q_io.i.i) #7
  %name31.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 12
  %39 = ptrtoint ptr %name7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name7.i, align 4
  %call37.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name31.i, i32 noundef 32, ptr noundef nonnull @.str.32, ptr noundef %name34.i, ptr noundef %40) #7
  %conv38.i = trunc i32 %add3.i to i16
  %num40.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 16
  %41 = ptrtoint ptr %num40.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv38.i, ptr %num40.i, align 4
  %42 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %v4l2_dev33.i, ptr %v4l2_dev.i, align 4
  %43 = lshr i32 95, %type.023
  %44 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool46.not.not.i = icmp eq i32 %44, 0
  br i1 %tobool46.not.not.i, label %if.then47.i, label %ivtv_stream_init.exit.i.if.end49.i_crit_edge

ivtv_stream_init.exit.i.if.end49.i_crit_edge:     ; preds = %ivtv_stream_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

if.then47.i:                                      ; preds = %ivtv_stream_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %vfl_dir.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 14
  %45 = ptrtoint ptr %vfl_dir.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %vfl_dir.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then47.i, %ivtv_stream_init.exit.i.if.end49.i_crit_edge
  %fops.i = getelementptr [9 x %struct.anon.131], ptr @ivtv_stream_info, i32 0, i32 %type.023, i32 6
  %46 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fops.i, align 4
  %fops52.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 3
  %48 = ptrtoint ptr %fops52.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %fops52.i, align 4
  %49 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctrl_handler.i, align 4
  %ctrl_handler55.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 9
  %51 = ptrtoint ptr %ctrl_handler55.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %ctrl_handler55.i, align 4
  %release.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 23
  %52 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @video_device_release_empty, ptr %release.i, align 8
  %tvnorms.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 22
  %53 = ptrtoint ptr %tvnorms.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 16777215, ptr %tvnorms.i, align 8
  %lock.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 26
  %54 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %serialize_lock.i, ptr %lock.i, align 8
  %55 = ptrtoint ptr %type5.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %56)
  %cmp60.i = icmp eq i32 %56, 6
  br i1 %cmp60.i, label %if.then62.i, label %if.end49.i.if.end74.i_crit_edge

if.end49.i.if.end74.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.then62.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid_ioctls.i.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 25
  tail call void @_set_bit(i32 noundef 34, ptr noundef %valid_ioctls.i.i) #7
  tail call void @_set_bit(i32 noundef 33, ptr noundef %valid_ioctls.i.i) #7
  tail call void @_set_bit(i32 noundef 65, ptr noundef %valid_ioctls.i.i) #7
  tail call void @_set_bit(i32 noundef 26, ptr noundef %valid_ioctls.i.i) #7
  tail call void @_set_bit(i32 noundef 39, ptr noundef %valid_ioctls.i.i) #7
  tail call void @_set_bit(i32 noundef 38, ptr noundef %valid_ioctls.i.i) #7
  tail call void @_set_bit(i32 noundef 57, ptr noundef %valid_ioctls.i.i) #7
  tail call void @_set_bit(i32 noundef 56, ptr noundef %valid_ioctls.i.i) #7
  tail call void @_set_bit(i32 noundef 30, ptr noundef %valid_ioctls.i.i) #7
  tail call void @_set_bit(i32 noundef 29, ptr noundef %valid_ioctls.i.i) #7
  tail call void @_set_bit(i32 noundef 24, ptr noundef %valid_ioctls.i.i) #7
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then62.i, %if.end49.i.if.end74.i_crit_edge
  tail call void @ivtv_set_funcs(ptr noundef %arrayidx.i) #7
  br label %ivtv_prep_dev.exit

ivtv_prep_dev.exit:                               ; preds = %if.end74.i, %do.end.i, %land.lhs.true11.i.ivtv_prep_dev.exit_crit_edge, %land.lhs.true.i.ivtv_prep_dev.exit_crit_edge
  %57 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %v4l2_dev.i, align 4
  %cmp1 = icmp eq ptr %58, null
  br i1 %cmp1, label %ivtv_prep_dev.exit.for.inc_crit_edge, label %if.end3

ivtv_prep_dev.exit.for.inc_crit_edge:             ; preds = %ivtv_prep_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end3:                                          ; preds = %ivtv_prep_dev.exit
  %call6 = tail call i32 @ivtv_stream_alloc(ptr noundef %arrayidx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end3.for.inc_crit_edge, label %if.end12

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end3.for.inc_crit_edge, %ivtv_prep_dev.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %type.023, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ivtv_streams_cleanup(ptr noundef %itv)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end12 ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_stream_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_streams_cleanup(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 0, i32 0, i32 7
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 0
  tail call void @video_unregister_device(ptr noundef %arrayidx) #7
  tail call void @ivtv_stream_free(ptr noundef %arrayidx) #7
  %2 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %v4l2_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %v4l2_dev.1 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 1, i32 0, i32 7
  %3 = ptrtoint ptr %v4l2_dev.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %v4l2_dev.1, align 4
  %cmp2.1 = icmp eq ptr %4, null
  br i1 %cmp2.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 1
  tail call void @video_unregister_device(ptr noundef %arrayidx.1) #7
  tail call void @ivtv_stream_free(ptr noundef %arrayidx.1) #7
  %5 = ptrtoint ptr %v4l2_dev.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %v4l2_dev.1, align 4
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %v4l2_dev.2 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 2, i32 0, i32 7
  %6 = ptrtoint ptr %v4l2_dev.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v4l2_dev.2, align 4
  %cmp2.2 = icmp eq ptr %7, null
  br i1 %cmp2.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.2 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 2
  tail call void @video_unregister_device(ptr noundef %arrayidx.2) #7
  tail call void @ivtv_stream_free(ptr noundef %arrayidx.2) #7
  %8 = ptrtoint ptr %v4l2_dev.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %v4l2_dev.2, align 4
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1.cleanup.2_crit_edge
  %v4l2_dev.3 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 3, i32 0, i32 7
  %9 = ptrtoint ptr %v4l2_dev.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %v4l2_dev.3, align 4
  %cmp2.3 = icmp eq ptr %10, null
  br i1 %cmp2.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.3 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 3
  tail call void @video_unregister_device(ptr noundef %arrayidx.3) #7
  tail call void @ivtv_stream_free(ptr noundef %arrayidx.3) #7
  %11 = ptrtoint ptr %v4l2_dev.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %v4l2_dev.3, align 4
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end.3, %cleanup.2.cleanup.3_crit_edge
  %v4l2_dev.4 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 4, i32 0, i32 7
  %12 = ptrtoint ptr %v4l2_dev.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v4l2_dev.4, align 4
  %cmp2.4 = icmp eq ptr %13, null
  br i1 %cmp2.4, label %cleanup.3.cleanup.4_crit_edge, label %if.end.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.4

if.end.4:                                         ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.4 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 4
  tail call void @video_unregister_device(ptr noundef %arrayidx.4) #7
  tail call void @ivtv_stream_free(ptr noundef %arrayidx.4) #7
  %14 = ptrtoint ptr %v4l2_dev.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %v4l2_dev.4, align 4
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.end.4, %cleanup.3.cleanup.4_crit_edge
  %v4l2_dev.5 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 5, i32 0, i32 7
  %15 = ptrtoint ptr %v4l2_dev.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %v4l2_dev.5, align 4
  %cmp2.5 = icmp eq ptr %16, null
  br i1 %cmp2.5, label %cleanup.4.cleanup.5_crit_edge, label %if.end.5

cleanup.4.cleanup.5_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.5

if.end.5:                                         ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.5 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 5
  tail call void @video_unregister_device(ptr noundef %arrayidx.5) #7
  tail call void @ivtv_stream_free(ptr noundef %arrayidx.5) #7
  %17 = ptrtoint ptr %v4l2_dev.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %v4l2_dev.5, align 4
  br label %cleanup.5

cleanup.5:                                        ; preds = %if.end.5, %cleanup.4.cleanup.5_crit_edge
  %v4l2_dev.6 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 6, i32 0, i32 7
  %18 = ptrtoint ptr %v4l2_dev.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %v4l2_dev.6, align 4
  %cmp2.6 = icmp eq ptr %19, null
  br i1 %cmp2.6, label %cleanup.5.cleanup.6_crit_edge, label %if.end.6

cleanup.5.cleanup.6_crit_edge:                    ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.6

if.end.6:                                         ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.6 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 6
  tail call void @video_unregister_device(ptr noundef %arrayidx.6) #7
  tail call void @ivtv_stream_free(ptr noundef %arrayidx.6) #7
  %20 = ptrtoint ptr %v4l2_dev.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %v4l2_dev.6, align 4
  br label %cleanup.6

cleanup.6:                                        ; preds = %if.end.6, %cleanup.5.cleanup.6_crit_edge
  %v4l2_dev.7 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 7, i32 0, i32 7
  %21 = ptrtoint ptr %v4l2_dev.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %v4l2_dev.7, align 4
  %cmp2.7 = icmp eq ptr %22, null
  br i1 %cmp2.7, label %cleanup.6.cleanup.7_crit_edge, label %if.end.7

cleanup.6.cleanup.7_crit_edge:                    ; preds = %cleanup.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.7

if.end.7:                                         ; preds = %cleanup.6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.7 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 7
  tail call void @video_unregister_device(ptr noundef %arrayidx.7) #7
  tail call void @ivtv_stream_free(ptr noundef %arrayidx.7) #7
  %23 = ptrtoint ptr %v4l2_dev.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %v4l2_dev.7, align 4
  br label %cleanup.7

cleanup.7:                                        ; preds = %if.end.7, %cleanup.6.cleanup.7_crit_edge
  %v4l2_dev.8 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 8, i32 0, i32 7
  %24 = ptrtoint ptr %v4l2_dev.8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %v4l2_dev.8, align 4
  %cmp2.8 = icmp eq ptr %25, null
  br i1 %cmp2.8, label %cleanup.7.cleanup.8_crit_edge, label %if.end.8

cleanup.7.cleanup.8_crit_edge:                    ; preds = %cleanup.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.8

if.end.8:                                         ; preds = %cleanup.7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.8 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 8
  tail call void @video_unregister_device(ptr noundef %arrayidx.8) #7
  tail call void @ivtv_stream_free(ptr noundef %arrayidx.8) #7
  %26 = ptrtoint ptr %v4l2_dev.8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %v4l2_dev.8, align 4
  br label %cleanup.8

cleanup.8:                                        ; preds = %if.end.8, %cleanup.7.cleanup.8_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_streams_register(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev11.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 42, i32 0, i32 0, i32 7
  %num14.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 42, i32 0, i32 0, i32 16
  %osd_video_pbase.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 91
  %device_caps25.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 8, i32 0, i32 4
  %device_caps29.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 5, i32 0, i32 4
  %v4l2_cap.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 8
  %name38.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %options65.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %ivtv_reg_dev.exit.for.body_crit_edge, %entry
  %err.09 = phi i32 [ 0, %entry ], [ %or, %ivtv_reg_dev.exit.for.body_crit_edge ]
  %type.07 = phi i32 [ 0, %entry ], [ %inc, %ivtv_reg_dev.exit.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.07
  %vfl_type2.i = getelementptr [9 x %struct.anon.131], ptr @ivtv_stream_info, i32 0, i32 %type.07, i32 1
  %0 = ptrtoint ptr %vfl_type2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type2.i, align 4
  %v4l2_dev.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 7
  %2 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev.i, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %for.body.ivtv_reg_dev.exit_crit_edge, label %if.end.i

for.body.ivtv_reg_dev.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ivtv_reg_dev.exit

if.end.i:                                         ; preds = %for.body
  %num4.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 16
  %4 = ptrtoint ptr %num4.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num4.i, align 4
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.07)
  %cmp5.not.i = icmp eq i32 %type.07, 0
  br i1 %cmp5.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then7.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then7.i:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %v4l2_dev11.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v4l2_dev11.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then7.i.if.end18.i_crit_edge, label %if.then12.i

if.then7.i.if.end18.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then12.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %num14.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num14.i, align 4
  %conv15.i = zext i16 %9 to i32
  %num_offset.i = getelementptr [9 x %struct.anon.131], ptr @ivtv_stream_info, i32 0, i32 %type.07, i32 2
  %10 = ptrtoint ptr %num_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_offset.i, align 4
  %add.i = add i32 %11, %conv15.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then12.i, %if.then7.i.if.end18.i_crit_edge, %if.end.i.if.end18.i_crit_edge
  %num.1.i = phi i32 [ %conv.i, %if.end.i.if.end18.i_crit_edge ], [ %add.i, %if.then12.i ], [ %conv.i, %if.then7.i.if.end18.i_crit_edge ]
  %caps.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.07, i32 4
  %12 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps.i, align 4
  %device_caps.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 4
  %14 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %device_caps.i, align 8
  %15 = ptrtoint ptr %osd_video_pbase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %osd_video_pbase.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool20.not.i = icmp eq i32 %16, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end32.i_crit_edge, label %if.then21.i

if.end18.i.if.end32.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %device_caps25.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device_caps25.i, align 8
  %or.i = or i32 %18, 512
  store i32 %or.i, ptr %device_caps25.i, align 8
  %19 = ptrtoint ptr %device_caps29.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %device_caps29.i, align 8
  %or30.i = or i32 %20, 512
  store i32 %or30.i, ptr %device_caps29.i, align 8
  %21 = ptrtoint ptr %v4l2_cap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %v4l2_cap.i, align 4
  %or31.i = or i32 %22, 512
  store i32 %or31.i, ptr %v4l2_cap.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end32.i_crit_edge
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 5, i32 8
  %23 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.i, ptr %driver_data.i.i.i, align 4
  %fops.i.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 3
  %24 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fops.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call.i.i = tail call i32 @__video_register_device(ptr noundef %arrayidx.i, i32 noundef %1, i32 noundef %num.1.i, i32 noundef 0, ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool35.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool35.not.i, label %if.end41.i, label %do.end.i

do.end.i:                                         ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %name39.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.07, i32 2
  %28 = ptrtoint ptr %name39.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name39.i, align 4
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name38.i, ptr noundef %29, i32 noundef %num.1.i) #10
  br label %ivtv_reg_dev.exit

if.end41.i:                                       ; preds = %if.end32.i
  %init_name.i.i.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end41.i.video_device_node_name.exit.i_crit_edge

if.end41.i.video_device_node_name.exit.i_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %video_device_node_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 5
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 4
  br label %video_device_node_name.exit.i

video_device_node_name.exit.i:                    ; preds = %if.end.i.i.i, %if.end41.i.video_device_node_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %33, %if.end.i.i.i ], [ %31, %if.end41.i.video_device_node_name.exit.i_crit_edge ]
  %34 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %video_device_node_name.exit.i.ivtv_reg_dev.exit_crit_edge [
    i32 0, label %do.end46.i
    i32 2, label %do.end57.i
    i32 1, label %sw.bb64.i
  ]

video_device_node_name.exit.i.ivtv_reg_dev.exit_crit_edge: ; preds = %video_device_node_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ivtv_reg_dev.exit

do.end46.i:                                       ; preds = %video_device_node_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %name51.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.07, i32 2
  %35 = ptrtoint ptr %name51.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name51.i, align 4
  %arrayidx52.i = getelementptr [9 x i32], ptr %options65.i, i32 0, i32 %type.07
  %37 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx52.i, align 4
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name38.i, ptr noundef %retval.0.i.i.i, ptr noundef %36, i32 noundef %38) #10
  br label %ivtv_reg_dev.exit

do.end57.i:                                       ; preds = %video_device_node_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %name62.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.07, i32 2
  %39 = ptrtoint ptr %name62.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name62.i, align 4
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name38.i, ptr noundef %retval.0.i.i.i, ptr noundef %40) #10
  br label %ivtv_reg_dev.exit

sw.bb64.i:                                        ; preds = %video_device_node_name.exit.i
  %arrayidx67.i = getelementptr [9 x i32], ptr %options65.i, i32 0, i32 %type.07
  %41 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool68.not.i = icmp eq i32 %42, 0
  %name89.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 %type.07, i32 2
  %43 = ptrtoint ptr %name89.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name89.i, align 4
  br i1 %tobool68.not.i, label %do.end84.i, label %do.end72.i

do.end72.i:                                       ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #9
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name38.i, ptr noundef %retval.0.i.i.i, ptr noundef %44, i32 noundef %42) #10
  br label %ivtv_reg_dev.exit

do.end84.i:                                       ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #9
  %call90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name38.i, ptr noundef %retval.0.i.i.i, ptr noundef %44) #10
  br label %ivtv_reg_dev.exit

ivtv_reg_dev.exit:                                ; preds = %do.end84.i, %do.end72.i, %do.end57.i, %do.end46.i, %video_device_node_name.exit.i.ivtv_reg_dev.exit_crit_edge, %do.end.i, %for.body.ivtv_reg_dev.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %do.end.i ], [ 0, %for.body.ivtv_reg_dev.exit_crit_edge ], [ 0, %do.end72.i ], [ 0, %do.end84.i ], [ 0, %video_device_node_name.exit.i.ivtv_reg_dev.exit_crit_edge ], [ 0, %do.end57.i ], [ 0, %do.end46.i ]
  %or = or i32 %retval.0.i, %err.09
  %inc = add nuw nsw i32 %type.07, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %ivtv_reg_dev.exit.for.body_crit_edge

ivtv_reg_dev.exit.for.body_crit_edge:             ; preds = %ivtv_reg_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %ivtv_reg_dev.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp1 = icmp eq i32 %or, 0
  br i1 %cmp1, label %for.end.cleanup_crit_edge, label %if.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ivtv_streams_cleanup(ptr noundef %itv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_stream_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_start_v4l2_encode_stream(ptr noundef %s) #0 align 64 {
entry:
  %data.i = alloca [16 x i32], align 4
  %data = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #7
  %0 = call ptr @memset(ptr %data, i32 255, i32 64)
  %itv1 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %1 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %itv1, align 8
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %s, i32 0, i32 7
  %3 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %v4l2_dev, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %5 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 19, i32 4
  %name5 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %6 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name5, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %7) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %type = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %9, label %do.end8.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 3, label %do.end8.sw.epilog_crit_edge
    i32 2, label %sw.bb20
  ]

do.end8.sw.epilog_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end8
  %output_mode = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 31
  %11 = ptrtoint ptr %output_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %output_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp9 = icmp eq i32 %12, 4
  br i1 %cmp9, label %if.then10, label %sw.bb.if.end12_crit_edge

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @ivtv_passthrough_mode(ptr noundef %2, i32 noundef 0)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %sw.bb.if.end12_crit_edge
  %enable_passthrough.0 = phi i32 [ 1, %if.then10 ], [ 0, %sw.bb.if.end12_crit_edge ]
  %mpg_data_received = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 84
  %13 = call ptr @memset(ptr %mpg_data_received, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %dualwatch_jiffies = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 87
  %15 = ptrtoint ptr %dualwatch_jiffies to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dualwatch_jiffies, align 4
  %audio_mode = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 20, i32 11, i32 3
  %16 = ptrtoint ptr %audio_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %audio_mode, align 4
  %call13 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %17) #7
  %dualwatch_stereo_mode = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 88
  %18 = ptrtoint ptr %dualwatch_stereo_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call13, ptr %dualwatch_stereo_mode, align 8
  %search_pack_header = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 81
  %19 = ptrtoint ptr %search_pack_header to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %search_pack_header, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %output_mode15 = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 31
  %20 = ptrtoint ptr %output_mode15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %output_mode15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp16 = icmp eq i32 %21, 4
  %. = select i1 %cmp16, i32 11, i32 1
  %.313 = select i1 %cmp16, i32 2, i32 1
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %frame = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 89, i32 17
  %22 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %frame, align 4
  %inserted_frame = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 89, i32 29
  %23 = ptrtoint ptr %inserted_frame to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %inserted_frame, align 4
  %sliced_mpeg_size = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 89, i32 27
  %24 = call ptr @memset(ptr %sliced_mpeg_size, i32 0, i32 128)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb14, %if.end12, %do.end8.sw.epilog_crit_edge
  %enable_passthrough.1 = phi i32 [ 0, %sw.bb20 ], [ %enable_passthrough.0, %if.end12 ], [ 0, %sw.bb14 ], [ 0, %do.end8.sw.epilog_crit_edge ]
  %subtype.0 = phi i32 [ 4, %sw.bb20 ], [ 3, %if.end12 ], [ %., %sw.bb14 ], [ 2, %do.end8.sw.epilog_crit_edge ]
  %captype.0 = phi i32 [ 1, %sw.bb20 ], [ 0, %if.end12 ], [ %.313, %sw.bb14 ], [ 1, %do.end8.sw.epilog_crit_edge ]
  %subtype24 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 15
  %25 = ptrtoint ptr %subtype24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %subtype.0, ptr %subtype24, align 8
  %buffers_stolen = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 20
  %26 = ptrtoint ptr %buffers_stolen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %buffers_stolen, align 4
  %s_flags = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %s_flags) #7
  %capturing = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #7
  %27 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp26 = icmp eq i32 %28, 0
  br i1 %cmp26, label %if.then27, label %sw.epilog.if.end81_crit_edge

sw.epilog.if.end81_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then27:                                        ; preds = %sw.epilog
  %call28 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 201, i32 noundef 2, i32 noundef 1, i32 noundef 1) #7
  %call29 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 219, i32 noundef 1, i32 noundef 0) #7
  %has_cx23415 = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 4
  %29 = ptrtoint ptr %has_cx23415 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_cx23415, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool30.not = icmp eq i8 %30, 0
  %lnot.ext = zext i1 %tobool30.not to i32
  %call31 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 220, i32 noundef 2, i32 noundef 3, i32 noundef %lnot.ext) #7
  %call32 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 220, i32 noundef 2, i32 noundef 8, i32 noundef 0) #7
  %call33 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 220, i32 noundef 2, i32 noundef 4, i32 noundef 1) #7
  %call34 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 220, i32 noundef 1, i32 noundef 12) #7
  %call35 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 215, i32 noundef 12, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %card = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 1
  %31 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card, align 4
  %hw_all = getelementptr inbounds %struct.ivtv_card, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %hw_all to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_all, align 8
  %and36 = and i32 %34, 2050
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %and41 = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %.314 = select i1 %tobool42.not, i32 320, i32 239
  %digitizer.0 = select i1 %tobool37.not, i32 %.314, i32 241
  %call47 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 214, i32 noundef 2, i32 noundef %digitizer.0, i32 noundef %digitizer.0) #7
  %v4l2_cap = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 8
  %35 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %v4l2_cap, align 4
  %and48 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then27.if.end51_crit_edge, label %if.then50

if.then27.if.end51_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then50:                                        ; preds = %if.then27
  %in.i.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 89, i32 14
  %37 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp.i.i = icmp eq i32 %38, 4
  %conv.i.i = zext i1 %cmp.i.i to i32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i) #7
  %39 = call ptr @memset(ptr %data.i, i32 255, i32 64)
  %call1.i = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 183, i32 noundef 5, i32 noundef 65535, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %sd_video.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 11
  %40 = ptrtoint ptr %sd_video.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sd_video.i, align 8
  %tobool2.not.i = icmp eq ptr %41, null
  br i1 %cmp.i.i, label %if.then.i, label %if.else28.i

if.then.i:                                        ; preds = %if.then50
  br i1 %tobool2.not.i, label %if.then.i.if.then68.i_crit_edge, label %if.else.i

if.then.i.if.then68.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then68.i

if.else.i:                                        ; preds = %if.then.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  %vbi.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %vbi.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vbi.i, align 4
  %tobool4.not.i = icmp eq ptr %45, null
  br i1 %tobool4.not.i, label %if.else.i.if.then68.i_crit_edge, label %land.lhs.true.i

if.else.i.if.then68.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then68.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_raw_fmt.i = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %s_raw_fmt.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_raw_fmt.i, align 4
  %tobool7.not.i = icmp eq ptr %47, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.then68.i_crit_edge, label %if.else9.i

land.lhs.true.i.if.then68.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then68.i

if.else9.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool10.not.i = icmp eq ptr %48, null
  br i1 %tobool10.not.i, label %if.else9.i.if.else18.i_crit_edge, label %land.lhs.true11.i

if.else9.i.if.else18.i_crit_edge:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else18.i

land.lhs.true11.i:                                ; preds = %if.else9.i
  %s_raw_fmt12.i = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %s_raw_fmt12.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_raw_fmt12.i, align 4
  %tobool13.not.i = icmp eq ptr %50, null
  br i1 %tobool13.not.i, label %land.lhs.true11.i.if.else18.i_crit_edge, label %land.lhs.true11.i.if.then68.sink.split.i_crit_edge

land.lhs.true11.i.if.then68.sink.split.i_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then68.sink.split.i

land.lhs.true11.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true11.i.if.else18.i_crit_edge, %if.else9.i.if.else18.i_crit_edge
  br label %if.then68.sink.split.i

if.else28.i:                                      ; preds = %if.then50
  br i1 %tobool2.not.i, label %if.else28.i.if.else70.i_crit_edge, label %if.else34.i

if.else28.i.if.else70.i_crit_edge:                ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else70.i

if.else34.i:                                      ; preds = %if.else28.i
  %ops35.i = getelementptr inbounds %struct.v4l2_subdev, ptr %41, i32 0, i32 6
  %51 = ptrtoint ptr %ops35.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops35.i, align 4
  %vbi36.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %vbi36.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vbi36.i, align 4
  %tobool37.not.i = icmp eq ptr %54, null
  br i1 %tobool37.not.i, label %if.else34.i.if.else70.i_crit_edge, label %land.lhs.true38.i

if.else34.i.if.else70.i_crit_edge:                ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else70.i

land.lhs.true38.i:                                ; preds = %if.else34.i
  %s_sliced_fmt.i = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %s_sliced_fmt.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_sliced_fmt.i, align 4
  %tobool41.not.i = icmp eq ptr %56, null
  br i1 %tobool41.not.i, label %land.lhs.true38.i.if.else70.i_crit_edge, label %if.else43.i

land.lhs.true38.i.if.else70.i_crit_edge:          ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else70.i

if.else43.i:                                      ; preds = %land.lhs.true38.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool44.not.i = icmp eq ptr %57, null
  br i1 %tobool44.not.i, label %if.else43.i.if.else54.i_crit_edge, label %land.lhs.true45.i

if.else43.i.if.else54.i_crit_edge:                ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else54.i

land.lhs.true45.i:                                ; preds = %if.else43.i
  %s_sliced_fmt46.i = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %s_sliced_fmt46.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_sliced_fmt46.i, align 4
  %tobool47.not.i = icmp eq ptr %59, null
  br i1 %tobool47.not.i, label %land.lhs.true45.i.if.else54.i_crit_edge, label %land.lhs.true45.i.if.else70.sink.split.i_crit_edge

land.lhs.true45.i.if.else70.sink.split.i_crit_edge: ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else70.sink.split.i

land.lhs.true45.i.if.else54.i_crit_edge:          ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else54.i

if.else54.i:                                      ; preds = %land.lhs.true45.i.if.else54.i_crit_edge, %if.else43.i.if.else54.i_crit_edge
  br label %if.else70.sink.split.i

if.then68.sink.split.i:                           ; preds = %if.else18.i, %land.lhs.true11.i.if.then68.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %47, %if.else18.i ], [ %50, %land.lhs.true11.i.if.then68.sink.split.i_crit_edge ]
  %fmt24.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 89, i32 14, i32 1
  %call25.i = tail call i32 %.sink.i(ptr noundef nonnull %41, ptr noundef %fmt24.i) #7
  br label %if.then68.i

if.then68.i:                                      ; preds = %if.then68.sink.split.i, %land.lhs.true.i.if.then68.i_crit_edge, %if.else.i.if.then68.i_crit_edge, %if.then.i.if.then68.i_crit_edge
  %count.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 89, i32 7
  %60 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count.i, align 4
  %mul.i = shl i32 %61, 1
  br label %if.end79.i

if.else70.sink.split.i:                           ; preds = %if.else54.i, %land.lhs.true45.i.if.else70.sink.split.i_crit_edge
  %.sink309.i = phi ptr [ %56, %if.else54.i ], [ %59, %land.lhs.true45.i.if.else70.sink.split.i_crit_edge ]
  %fmt60.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 89, i32 14, i32 1
  %call61.i = tail call i32 %.sink309.i(ptr noundef nonnull %41, ptr noundef %fmt60.i) #7
  br label %if.else70.i

if.else70.i:                                      ; preds = %if.else70.sink.split.i, %land.lhs.true38.i.if.else70.i_crit_edge, %if.else34.i.if.else70.i_crit_edge, %if.else28.i.if.else70.i_crit_edge
  %is_60hz.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 28
  %62 = ptrtoint ptr %is_60hz.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_60hz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool71.not.i = icmp eq i8 %63, 0
  br i1 %tobool71.not.i, label %if.else70.i.if.end79.i_crit_edge, label %land.lhs.true75.i

if.else70.i.if.end79.i_crit_edge:                 ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

land.lhs.true75.i:                                ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #9
  %hw_flags.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 9
  %64 = ptrtoint ptr %hw_flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hw_flags.i, align 8
  %and.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool76.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool76.not.i, i32 24, i32 26
  br label %if.end79.i

if.end79.i:                                       ; preds = %land.lhs.true75.i, %if.else70.i.if.end79.i_crit_edge, %if.then68.i
  %lines.0.i = phi i32 [ %mul.i, %if.then68.i ], [ 38, %if.else70.i.if.end79.i_crit_edge ], [ %spec.select.i, %land.lhs.true75.i ]
  %raw_size.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 89, i32 8
  %sliced_size.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 89, i32 9
  %cond83.in.i = select i1 %cmp.i.i, ptr %raw_size.i, ptr %sliced_size.i
  %66 = ptrtoint ptr %cond83.in.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %cond83.i = load i32, ptr %cond83.in.i, align 4
  %mul84.i = mul i32 %cond83.i, %lines.0.i
  %enc_size.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 89, i32 12
  %67 = ptrtoint ptr %enc_size.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %mul84.i, ptr %enc_size.i, align 4
  %or86.i = or i32 %conv.i.i, 48386
  %68 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or86.i, ptr %data.i, align 4
  %arrayidx87.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 1
  %69 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %arrayidx87.i, align 4
  br i1 %cmp.i.i, label %cond.end96.thread.i, label %cond.end96.i

cond.end96.i:                                     ; preds = %if.end79.i
  %70 = ptrtoint ptr %raw_size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %raw_size.i, align 4
  %div.i = udiv i32 %71, %mul84.i
  %mul95.i = shl i32 %div.i, 2
  %arrayidx98.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 2
  %72 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul95.i, ptr %arrayidx98.i, align 4
  %hw_flags99.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 9
  %73 = ptrtoint ptr %hw_flags99.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hw_flags99.i, align 8
  %and100.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  %arrayidx128.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 3
  br i1 %tobool101.not.i, label %if.else127.i, label %if.else107.i

cond.end96.thread.i:                              ; preds = %if.end79.i
  %arrayidx98286.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 2
  %75 = ptrtoint ptr %arrayidx98286.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %arrayidx98286.i, align 4
  %hw_flags99287.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 9
  %76 = ptrtoint ptr %hw_flags99287.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hw_flags99287.i, align 8
  %and100288.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100288.i)
  %tobool101.not289.i = icmp eq i32 %and100288.i, 0
  %arrayidx125.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 3
  br i1 %tobool101.not289.i, label %if.then124.i, label %if.then104.i

if.then104.i:                                     ; preds = %cond.end96.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 543170656, ptr %arrayidx125.i, align 4
  br label %cond.end119.i

if.else107.i:                                     ; preds = %cond.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1326403344, ptr %arrayidx128.i, align 4
  br label %cond.end119.i

cond.end119.i:                                    ; preds = %if.else107.i, %if.then104.i
  %.sink310.i = phi i32 [ -1595891488, %if.else107.i ], [ 812658800, %if.then104.i ]
  %cond97291300.i = phi i32 [ %mul95.i, %if.else107.i ], [ 4, %if.then104.i ]
  %arrayidx98294298.i = phi ptr [ %arrayidx98.i, %if.else107.i ], [ %arrayidx98286.i, %if.then104.i ]
  %cond120.in.i = phi ptr [ %sliced_size.i, %if.else107.i ], [ %raw_size.i, %if.then104.i ]
  %arrayidx109.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 4
  %80 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %.sink310.i, ptr %arrayidx109.i, align 4
  %arrayidx111.c.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 5
  %81 = ptrtoint ptr %arrayidx111.c.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %lines.0.i, ptr %arrayidx111.c.i, align 4
  %82 = ptrtoint ptr %cond120.in.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %cond120.i = load i32, ptr %cond120.in.i, align 4
  br label %do.body.i

if.then124.i:                                     ; preds = %cond.end96.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 623207010, ptr %arrayidx125.i, align 4
  br label %if.end130.i

if.else127.i:                                     ; preds = %cond.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1414796052, ptr %arrayidx128.i, align 4
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.else127.i, %if.then124.i
  %.sink311.i = phi i32 [ -1225657871, %if.else127.i ], [ 947879807, %if.then124.i ]
  %cond97292306.i = phi i32 [ %mul95.i, %if.else127.i ], [ 4, %if.then124.i ]
  %arrayidx98295304.i = phi ptr [ %arrayidx98.i, %if.else127.i ], [ %arrayidx98286.i, %if.then124.i ]
  %arrayidx129.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 4
  %85 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %.sink311.i, ptr %arrayidx129.i, align 4
  %arrayidx131.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 5
  %86 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %lines.0.i, ptr %arrayidx131.i, align 4
  %div134.i = udiv i32 %mul84.i, %lines.0.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end130.i, %cond.end119.i
  %cond120.sink.i = phi i32 [ %cond120.i, %cond.end119.i ], [ %div134.i, %if.end130.i ]
  %arrayidx98293.i = phi ptr [ %arrayidx98294298.i, %cond.end119.i ], [ %arrayidx98295304.i, %if.end130.i ]
  %cond97290.i = phi i32 [ %cond97291300.i, %cond.end119.i ], [ %cond97292306.i, %if.end130.i ]
  %arrayidx121.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 6
  %87 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %cond120.sink.i, ptr %arrayidx121.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %88 = load i32, ptr @ivtv_debug, align 4
  %and137.i = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137.i)
  %tobool138.not.i = icmp eq i32 %and137.i, 0
  br i1 %tobool138.not.i, label %do.body.i.do.end150.i_crit_edge, label %do.end.i

do.body.i.do.end150.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end150.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 19, i32 4
  %arrayidx145.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 5
  %89 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx145.i, align 4
  %call147.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i, i32 noundef %or86.i, i32 noundef 1, i32 noundef %cond97290.i, i32 noundef %90, i32 noundef %cond120.sink.i) #10
  br label %do.end150.i

do.end150.i:                                      ; preds = %do.end.i, %do.body.i.do.end150.i_crit_edge
  %call152.i = call i32 @ivtv_api(ptr noundef %2, i32 noundef 200, i32 noundef 7, ptr noundef nonnull %data.i) #7
  %91 = ptrtoint ptr %arrayidx98293.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx98293.i, align 4
  %enc_start.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 89, i32 11
  %93 = ptrtoint ptr %enc_start.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %enc_start.i, align 4
  %94 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %data.i, align 4
  %fpi.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 89, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool159.not.i = icmp eq i32 %95, 0
  %spec.select282.i = select i1 %tobool159.not.i, i32 1, i32 %95
  %96 = ptrtoint ptr %fpi.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %spec.select282.i, ptr %fpi.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %97 = load i32, ptr @ivtv_debug, align 4
  %and165.i = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165.i)
  %tobool166.not.i = icmp eq i32 %and165.i, 0
  br i1 %tobool166.not.i, label %do.end150.i.do.end183.i_crit_edge, label %do.end170.i

do.end150.i.do.end183.i_crit_edge:                ; preds = %do.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end183.i

do.end170.i:                                      ; preds = %do.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  %name173.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 19, i32 4
  %98 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx87.i, align 4
  %call180.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name173.i, i32 noundef %92, i32 noundef %99, i32 noundef %spec.select282.i) #10
  br label %do.end183.i

do.end183.i:                                      ; preds = %do.end170.i, %do.end150.i.do.end183.i_crit_edge
  %is_60hz185.i = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 28
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end183.i
  %i.0308.i = phi i32 [ 2, %do.end183.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %100 = ptrtoint ptr %is_60hz185.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %is_60hz185.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool186.not.i = icmp eq i8 %101, 0
  %102 = add nsw i32 %i.0308.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %102)
  %103 = icmp ult i32 %102, 12
  %104 = add nsw i32 %i.0308.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %104)
  %105 = icmp ult i32 %104, 18
  %valid.0.in.i = select i1 %tobool186.not.i, i1 %105, i1 %103
  %valid.0.i = zext i1 %valid.0.in.i to i32
  %sub.i = add nsw i32 %i.0308.i, -1
  %call201.i = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 183, i32 noundef 5, i32 noundef %sub.i, i32 noundef %valid.0.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %or203.i = or i32 %sub.i, -2147483648
  %call204.i = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 183, i32 noundef 5, i32 noundef %or203.i, i32 noundef %valid.0.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %inc.i = add nuw nsw i32 %i.0308.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %ivtv_vbi_setup.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ivtv_vbi_setup.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i) #7
  br label %if.end51

if.end51:                                         ; preds = %ivtv_vbi_setup.exit, %if.then27.if.end51_crit_edge
  %call53 = call i32 (ptr, ptr, i32, i32, ...) @ivtv_vapi_result(ptr noundef %2, ptr noundef nonnull %data, i32 noundef 199, i32 noundef 2, i32 noundef 7, i32 noundef 400) #7
  %106 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %data, align 4
  %pgm_info_offset = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 75
  %108 = ptrtoint ptr %pgm_info_offset to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %pgm_info_offset, align 8
  %arrayidx54 = getelementptr inbounds [16 x i32], ptr %data, i32 0, i32 1
  %109 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx54, align 4
  %pgm_info_num = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 76
  %111 = ptrtoint ptr %pgm_info_num to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %pgm_info_num, align 4
  %pgm_info_write_idx = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 77
  %112 = ptrtoint ptr %pgm_info_write_idx to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %pgm_info_write_idx, align 8
  %pgm_info_read_idx = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 78
  %113 = ptrtoint ptr %pgm_info_read_idx to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %pgm_info_read_idx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %114 = load i32, ptr @ivtv_debug, align 4
  %and56 = and i32 %114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end51.do.end71_crit_edge, label %do.end61

if.end51.do.end71_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

do.end61:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %name64 = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 19, i32 4
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name64, i32 noundef %107, i32 noundef %110) #10
  br label %do.end71

do.end71:                                         ; preds = %do.end61, %if.end51.do.end71_crit_edge
  %cxhdl72 = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 20
  %call73 = call i32 @cx2341x_handler_setup(ptr noundef %cxhdl72) #7
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 26
  %115 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %i_flags, align 4
  %117 = and i32 %116, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool75.not = icmp eq i32 %117, 0
  br i1 %tobool75.not, label %do.end71.if.end81_crit_edge, label %if.then76

do.end71.if.end81_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then76:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  %video_mute_yuv = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 20, i32 14, i32 1
  %118 = ptrtoint ptr %video_mute_yuv to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %video_mute_yuv, align 4
  %call78 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %119) #7
  %shl = shl i32 %call78, 8
  %or = or i32 %shl, 1
  %call79 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 217, i32 noundef 1, i32 noundef %or) #7
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %do.end71.if.end81_crit_edge, %sw.epilog.if.end81_crit_edge
  %has_cx2341582 = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 4
  %120 = ptrtoint ptr %has_cx2341582 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %has_cx2341582, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool83.not = icmp eq i8 %121, 0
  br i1 %tobool83.not, label %if.end81.if.end89_crit_edge, label %land.lhs.true

if.end81.if.end89_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

land.lhs.true:                                    ; preds = %if.end81
  %i_flags84 = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 26
  %call85 = call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %i_flags84) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %land.lhs.true.if.end89_crit_edge

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then87:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call88 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 213, i32 noundef 4, i32 noundef 0, i32 noundef 1, i32 noundef 268435456, i32 noundef -1) #7
  call void @ivtv_clear_irq_mask(ptr noundef %2, i32 noundef 268435456) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %land.lhs.true.if.end89_crit_edge, %if.end81.if.end89_crit_edge
  %call.i.i315 = call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #7
  %122 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp92 = icmp eq i32 %123, 0
  br i1 %cmp92, label %if.then94, label %if.end89.if.end187_crit_edge

if.end89.if.end187_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

if.then94:                                        ; preds = %if.end89
  call void @ivtv_set_irq_mask(ptr noundef %2, i32 noundef -1073741824) #7
  %i_flags95 = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 26
  call void @_clear_bit(i32 noundef 4, ptr noundef %i_flags95) #7
  %cxhdl96 = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 20
  call void @cx2341x_handler_set_busy(ptr noundef %cxhdl96, i32 noundef 1) #7
  %sd_audio = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 12
  %124 = ptrtoint ptr %sd_audio to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sd_audio, align 4
  %tobool97.not = icmp eq ptr %125, null
  br i1 %tobool97.not, label %if.then94.if.end121_crit_edge, label %if.else99

if.then94.if.end121_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.else99:                                        ; preds = %if.then94
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %125, i32 0, i32 6
  %126 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ops, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %audio, align 4
  %tobool100.not = icmp eq ptr %129, null
  br i1 %tobool100.not, label %if.else99.if.end121_crit_edge, label %land.lhs.true101

if.else99.if.end121_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

land.lhs.true101:                                 ; preds = %if.else99
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %s_stream, align 4
  %tobool104.not = icmp eq ptr %131, null
  br i1 %tobool104.not, label %land.lhs.true101.if.end121_crit_edge, label %if.else106

land.lhs.true101.if.end121_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.else106:                                       ; preds = %land.lhs.true101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2), align 4
  %tobool107.not = icmp eq ptr %132, null
  br i1 %tobool107.not, label %if.else106.if.else114_crit_edge, label %land.lhs.true108

if.else106.if.else114_crit_edge:                  ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else114

land.lhs.true108:                                 ; preds = %if.else106
  %s_stream109 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %s_stream109 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %s_stream109, align 4
  %tobool110.not = icmp eq ptr %134, null
  br i1 %tobool110.not, label %land.lhs.true108.if.else114_crit_edge, label %land.lhs.true108.if.end121.sink.split_crit_edge

land.lhs.true108.if.end121.sink.split_crit_edge:  ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121.sink.split

land.lhs.true108.if.else114_crit_edge:            ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else114

if.else114:                                       ; preds = %land.lhs.true108.if.else114_crit_edge, %if.else106.if.else114_crit_edge
  br label %if.end121.sink.split

if.end121.sink.split:                             ; preds = %if.else114, %land.lhs.true108.if.end121.sink.split_crit_edge
  %.sink = phi ptr [ %131, %if.else114 ], [ %134, %land.lhs.true108.if.end121.sink.split_crit_edge ]
  %call118 = call i32 %.sink(ptr noundef nonnull %125, i32 noundef 1) #7
  br label %if.end121

if.end121:                                        ; preds = %if.end121.sink.split, %land.lhs.true101.if.end121_crit_edge, %if.else99.if.end121_crit_edge, %if.then94.if.end121_crit_edge
  %sd_video = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 11
  %135 = ptrtoint ptr %sd_video to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sd_video, align 8
  %tobool125.not = icmp eq ptr %136, null
  br i1 %tobool125.not, label %if.end121.if.end151_crit_edge, label %if.else127

if.end121.if.end151_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

if.else127:                                       ; preds = %if.end121
  %ops128 = getelementptr inbounds %struct.v4l2_subdev, ptr %136, i32 0, i32 6
  %137 = ptrtoint ptr %ops128 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ops128, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %video, align 4
  %tobool129.not = icmp eq ptr %140, null
  br i1 %tobool129.not, label %if.else127.if.end151_crit_edge, label %land.lhs.true130

if.else127.if.end151_crit_edge:                   ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

land.lhs.true130:                                 ; preds = %if.else127
  %s_stream133 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %140, i32 0, i32 10
  %141 = ptrtoint ptr %s_stream133 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %s_stream133, align 4
  %tobool134.not = icmp eq ptr %142, null
  br i1 %tobool134.not, label %land.lhs.true130.if.end151_crit_edge, label %if.else136

land.lhs.true130.if.end151_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

if.else136:                                       ; preds = %land.lhs.true130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool137.not = icmp eq ptr %143, null
  br i1 %tobool137.not, label %if.else136.if.else144_crit_edge, label %land.lhs.true138

if.else136.if.else144_crit_edge:                  ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else144

land.lhs.true138:                                 ; preds = %if.else136
  %s_stream139 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %143, i32 0, i32 10
  %144 = ptrtoint ptr %s_stream139 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %s_stream139, align 4
  %tobool140.not = icmp eq ptr %145, null
  br i1 %tobool140.not, label %land.lhs.true138.if.else144_crit_edge, label %land.lhs.true138.if.end151.sink.split_crit_edge

land.lhs.true138.if.end151.sink.split_crit_edge:  ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151.sink.split

land.lhs.true138.if.else144_crit_edge:            ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else144

if.else144:                                       ; preds = %land.lhs.true138.if.else144_crit_edge, %if.else136.if.else144_crit_edge
  br label %if.end151.sink.split

if.end151.sink.split:                             ; preds = %if.else144, %land.lhs.true138.if.end151.sink.split_crit_edge
  %.sink317 = phi ptr [ %142, %if.else144 ], [ %145, %land.lhs.true138.if.end151.sink.split_crit_edge ]
  %call148 = call i32 %.sink317(ptr noundef nonnull %136, i32 noundef 0) #7
  br label %if.end151

if.end151:                                        ; preds = %if.end151.sink.split, %land.lhs.true130.if.end151_crit_edge, %if.else127.if.end151_crit_edge, %if.end121.if.end151_crit_edge
  %call153 = call i32 @ivtv_msleep_timeout(i32 noundef 300, i32 noundef 0) #7
  %call154 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 205, i32 noundef 0) #7
  %146 = ptrtoint ptr %sd_video to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sd_video, align 8
  %tobool158.not = icmp eq ptr %147, null
  br i1 %tobool158.not, label %if.end151.if.end187_crit_edge, label %if.else160

if.end151.if.end187_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

if.else160:                                       ; preds = %if.end151
  %ops161 = getelementptr inbounds %struct.v4l2_subdev, ptr %147, i32 0, i32 6
  %148 = ptrtoint ptr %ops161 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ops161, align 4
  %video162 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %video162 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %video162, align 4
  %tobool163.not = icmp eq ptr %151, null
  br i1 %tobool163.not, label %if.else160.if.end187_crit_edge, label %land.lhs.true164

if.else160.if.end187_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

land.lhs.true164:                                 ; preds = %if.else160
  %s_stream167 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %151, i32 0, i32 10
  %152 = ptrtoint ptr %s_stream167 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %s_stream167, align 4
  %tobool168.not = icmp eq ptr %153, null
  br i1 %tobool168.not, label %land.lhs.true164.if.end187_crit_edge, label %if.else170

land.lhs.true164.if.end187_crit_edge:             ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

if.else170:                                       ; preds = %land.lhs.true164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool171.not = icmp eq ptr %154, null
  br i1 %tobool171.not, label %if.else170.if.else178_crit_edge, label %land.lhs.true172

if.else170.if.else178_crit_edge:                  ; preds = %if.else170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else178

land.lhs.true172:                                 ; preds = %if.else170
  %s_stream173 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %154, i32 0, i32 10
  %155 = ptrtoint ptr %s_stream173 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %s_stream173, align 4
  %tobool174.not = icmp eq ptr %156, null
  br i1 %tobool174.not, label %land.lhs.true172.if.else178_crit_edge, label %land.lhs.true172.if.end187.sink.split_crit_edge

land.lhs.true172.if.end187.sink.split_crit_edge:  ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187.sink.split

land.lhs.true172.if.else178_crit_edge:            ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else178

if.else178:                                       ; preds = %land.lhs.true172.if.else178_crit_edge, %if.else170.if.else178_crit_edge
  br label %if.end187.sink.split

if.end187.sink.split:                             ; preds = %if.else178, %land.lhs.true172.if.end187.sink.split_crit_edge
  %.sink318 = phi ptr [ %153, %if.else178 ], [ %156, %land.lhs.true172.if.end187.sink.split_crit_edge ]
  %call177 = call i32 %.sink318(ptr noundef nonnull %147, i32 noundef 1) #7
  br label %if.end187

if.end187:                                        ; preds = %if.end187.sink.split, %land.lhs.true164.if.end187_crit_edge, %if.else160.if.end187_crit_edge, %if.end151.if.end187_crit_edge, %if.end89.if.end187_crit_edge
  %call188 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 129, i32 noundef 2, i32 noundef %captype.0, i32 noundef %subtype.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.end206, label %do.body191

do.body191:                                       ; preds = %if.end187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %157 = load i32, ptr @ivtv_debug, align 4
  %and192 = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %do.body191.cleanup_crit_edge, label %do.end197

do.body191.cleanup_crit_edge:                     ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end197:                                        ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #9
  %name200 = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 19, i32 4
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name200) #10
  br label %cleanup

if.end206:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable_passthrough.1)
  %tobool207.not = icmp eq i32 %enable_passthrough.1, 0
  br i1 %tobool207.not, label %if.end206.if.end210_crit_edge, label %if.then208

if.end206.if.end210_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end210

if.then208:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  %call209 = call i32 @ivtv_passthrough_mode(ptr noundef %2, i32 noundef 1)
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %if.end206.if.end210_crit_edge
  %158 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %159)
  %cmp212 = icmp eq i32 %159, 2
  %.320 = select i1 %cmp212, i32 536870912, i32 -1073741824
  call void @ivtv_clear_irq_mask(ptr noundef %2, i32 noundef %.320) #7
  %call.i.i316 = call zeroext i1 @__kasan_check_write(ptr noundef %capturing, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %capturing, i32 1, i32 3, i32 1) #7
  %160 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %capturing, ptr %capturing, i32 1, ptr elementtype(i32) %capturing) #7, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %if.end210, %do.end197, %do.body191.cleanup_crit_edge, %do.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end210 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end8.cleanup_crit_edge ], [ -22, %do.end197 ], [ -22, %do.body191.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_passthrough_mode(ptr noundef %itv, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx2 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 8
  %v4l2_dev = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 1, i32 0, i32 7
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %v4l2_dev4 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 8, i32 0, i32 7
  %2 = ptrtoint ptr %v4l2_dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev4, align 4
  %cmp5 = icmp eq ptr %3, null
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %4 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end11_crit_edge, label %do.end

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name) #10
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool12.not = icmp eq i32 %enable, 0
  %output_mode33 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 31
  %5 = ptrtoint ptr %output_mode33 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %output_mode33, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp34.not = icmp eq i32 %6, 4
  br i1 %tobool12.not, label %if.end32, label %if.then13

if.then13:                                        ; preds = %do.end11
  br i1 %cmp34.not, label %if.then13.cleanup_crit_edge, label %if.end16

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.then13
  %call17 = tail call i32 @ivtv_set_output_mode(ptr noundef %itv, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 4
  br i1 %cmp18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %s_flags = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 8, i32 7
  tail call void @_set_bit(i32 noundef 6, ptr noundef %s_flags) #7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %s_flags) #7
  %call22 = tail call fastcc i32 @ivtv_setup_v4l2_decode_stream(ptr noundef %arrayidx2)
  %call23 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 1) #7
  %decoding = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %decoding, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %decoding, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %decoding, ptr %decoding, i32 1, ptr elementtype(i32) %decoding) #7, !srcloc !154
  %capturing = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 43
  %call.i.i75 = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #7
  %8 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp25 = icmp eq i32 %9, 0
  br i1 %cmp25, label %if.then26, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %cxhdl = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 20
  %call27 = tail call i32 @cx2341x_handler_setup(ptr noundef %cxhdl) #7
  tail call void @cx2341x_handler_set_busy(ptr noundef %cxhdl, i32 noundef 1) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end20.if.end29_crit_edge
  %call30 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 129, i32 noundef 2, i32 noundef 2, i32 noundef 11) #7
  %call.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %capturing, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %capturing, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %capturing, ptr %capturing, i32 1, ptr elementtype(i32) %capturing) #7, !srcloc !154
  br label %cleanup

if.end32:                                         ; preds = %do.end11
  br i1 %cmp34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %call37 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 130, i32 noundef 3, i32 noundef 1, i32 noundef 2, i32 noundef 11) #7
  %call38 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 2, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %capturing39 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 43
  %call.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %capturing39, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %capturing39, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %capturing39, ptr %capturing39, i32 1, ptr elementtype(i32) %capturing39) #7, !srcloc !155
  %decoding40 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 44
  %call.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %decoding40, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %decoding40, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %decoding40, ptr %decoding40, i32 1, ptr elementtype(i32) %decoding40) #7, !srcloc !155
  %s_flags41 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 8, i32 7
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %s_flags41) #7
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags41) #7
  %13 = ptrtoint ptr %output_mode33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %output_mode33, align 8
  %call.i.i79 = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing39, i32 noundef 4) #7
  %14 = ptrtoint ptr %capturing39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %capturing39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp46 = icmp eq i32 %15, 0
  br i1 %cmp46, label %if.then47, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %cxhdl48 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 20
  tail call void @cx2341x_handler_set_busy(ptr noundef %cxhdl48, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end36.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end29, %if.end16.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then13.cleanup_crit_edge ], [ -16, %if.end16.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_vapi(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_vapi_result(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx2341x_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_clear_irq_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_set_irq_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx2341x_handler_set_busy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_msleep_timeout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_start_v4l2_decode_stream(ptr noundef %s, i32 noundef %gop_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 8
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_flags = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 7
  %call = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %s_flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %4 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.do.end12_crit_edge, label %do.end

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name8 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %5 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name8, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name, ptr noundef %6, i32 noundef %gop_offset) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  %call13 = tail call fastcc i32 @ivtv_setup_v4l2_decode_stream(ptr noundef %s)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags) #7
  br label %cleanup

if.end17:                                         ; preds = %do.end12
  %call18 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 8, i32 noundef 1, i32 noundef 65536) #7
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %s_flags) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %dec_mbox = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 67
  %7 = ptrtoint ptr %dec_mbox to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dec_mbox, align 4
  %data = getelementptr %struct.ivtv_mailbox, ptr %8, i32 8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %data, i32 0) #7, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %dec_mbox to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dec_mbox, align 4
  %arrayidx31 = getelementptr %struct.ivtv_mailbox, ptr %10, i32 8, i32 4, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx31, i32 0) #7, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %dec_mbox to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dec_mbox, align 4
  %arrayidx39 = getelementptr %struct.ivtv_mailbox, ptr %12, i32 8, i32 4, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx39, i32 0) #7, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %dec_mbox to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dec_mbox, align 4
  %arrayidx47 = getelementptr %struct.ivtv_mailbox, ptr %14, i32 8, i32 4, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx47, i32 0) #7, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %dec_mbox to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dec_mbox, align 4
  %data54 = getelementptr %struct.ivtv_mailbox, ptr %16, i32 9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %data54, i32 0) #7, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %dec_mbox to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dec_mbox, align 4
  %arrayidx63 = getelementptr %struct.ivtv_mailbox, ptr %18, i32 9, i32 4, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx63, i32 0) #7, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %dec_mbox to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dec_mbox, align 4
  %arrayidx71 = getelementptr %struct.ivtv_mailbox, ptr %20, i32 9, i32 4, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx71, i32 0) #7, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %dec_mbox to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dec_mbox, align 4
  %arrayidx79 = getelementptr %struct.ivtv_mailbox, ptr %22, i32 9, i32 4, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx79, i32 0) #7, !srcloc !157
  %call80 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 23, i32 noundef 4, i32 noundef 0, i32 noundef 1, i32 noundef 16777216, i32 noundef -1) #7
  %call81 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 1, i32 noundef 2, i32 noundef %gop_offset, i32 noundef 0) #7
  %call82 = tail call i32 @ivtv_msleep_timeout(i32 noundef 10, i32 noundef 0) #7
  tail call void @ivtv_clear_irq_mask(ptr noundef %1, i32 noundef 20971520) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %23 = load i32, ptr @ivtv_debug, align 4
  %and84 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end17.do.end97_crit_edge, label %do.end89

if.end17.do.end97_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

do.end89:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %name92 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %irqmask = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 48
  %24 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irqmask, align 4
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name92, i32 noundef %25) #10
  br label %do.end97

do.end97:                                         ; preds = %do.end89, %if.end17.do.end97_crit_edge
  %decoding = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %decoding, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %decoding, i32 1, i32 3, i32 1) #7
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %decoding, ptr %decoding, i32 1, ptr elementtype(i32) %decoding) #7, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then15 ], [ 0, %do.end97 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ivtv_setup_v4l2_decode_stream(ptr nocapture noundef readonly %s) unnamed_addr #0 align 64 {
entry:
  %data = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #7
  %0 = call ptr @memset(ptr %data, i32 255, i32 64)
  %itv1 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %1 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %itv1, align 8
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %s, i32 0, i32 7
  %3 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %v4l2_dev, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %5 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 19, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %width8 = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 20, i32 2
  %6 = ptrtoint ptr %width8 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %width8, align 4
  %height10 = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 20, i32 3
  %8 = ptrtoint ptr %height10 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %height10, align 2
  %audio_bilingual_mode = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 38
  %10 = ptrtoint ptr %audio_bilingual_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %audio_bilingual_mode, align 1
  %conv = zext i8 %11 to i32
  %audio_stereo_mode = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 37
  %12 = ptrtoint ptr %audio_stereo_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %audio_stereo_mode, align 8
  %conv11 = zext i8 %13 to i32
  %call12 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 22, i32 noundef 2, i32 noundef %conv, i32 noundef %conv11) #7
  %call13 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 24, i32 noundef 1, i32 noundef 0) #7
  %call14 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 30, i32 noundef 1, i32 noundef 1) #7
  %call16 = call i32 (ptr, ptr, i32, i32, ...) @ivtv_vapi_result(ptr noundef %2, ptr noundef nonnull %data, i32 noundef 25, i32 noundef 1, i32 noundef 1) #7
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  %dec_start = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 89, i32 10
  %16 = ptrtoint ptr %dec_start to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dec_start, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %17 = load i32, ptr @ivtv_debug, align 4
  %and18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.end7.do.end34_crit_edge, label %do.end23

do.end7.do.end34_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

do.end23:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %name26 = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 19, i32 4
  %arrayidx30 = getelementptr inbounds [16 x i32], ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx30, align 4
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name26, i32 noundef %15, i32 noundef %19) #10
  br label %do.end34

do.end34:                                         ; preds = %do.end23, %do.end7.do.end34_crit_edge
  %type = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 3
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cond86 = icmp eq i32 %21, 8
  br i1 %cond86, label %sw.bb, label %do.end34.sw.epilog_crit_edge

do.end34.sw.epilog_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end34
  %output_mode = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 31
  %22 = ptrtoint ptr %output_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %output_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp35 = icmp eq i32 %23, 4
  br i1 %cmp35, label %sw.bb.do.body42_crit_edge, label %if.else

sw.bb.do.body42_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %is_out_50hz = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 29
  %24 = ptrtoint ptr %is_out_50hz to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_out_50hz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool39.not = icmp eq i8 %25, 0
  %conv40 = select i1 %tobool39.not, i16 480, i16 576
  br label %do.body42

do.body42:                                        ; preds = %if.else, %sw.bb.do.body42_crit_edge
  %height.0 = phi i16 [ %conv40, %if.else ], [ %9, %sw.bb.do.body42_crit_edge ]
  %width.0 = phi i16 [ 720, %if.else ], [ %7, %sw.bb.do.body42_crit_edge ]
  %datatype.0 = phi i32 [ 2, %if.else ], [ 1, %sw.bb.do.body42_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %26 = load i32, ptr @ivtv_debug, align 4
  %and43 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.sw.epilog_crit_edge, label %do.end48

do.body42.sw.epilog_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end48:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  %name51 = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 19, i32 4
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name51, i32 noundef %datatype.0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end48, %do.body42.sw.epilog_crit_edge, %do.end34.sw.epilog_crit_edge
  %height.1 = phi i16 [ %height.0, %do.end48 ], [ %height.0, %do.body42.sw.epilog_crit_edge ], [ %9, %do.end34.sw.epilog_crit_edge ]
  %width.1 = phi i16 [ %width.0, %do.end48 ], [ %width.0, %do.body42.sw.epilog_crit_edge ], [ %7, %do.end34.sw.epilog_crit_edge ]
  %datatype.1 = phi i32 [ %datatype.0, %do.end48 ], [ %datatype.0, %do.body42.sw.epilog_crit_edge ], [ 0, %do.end34.sw.epilog_crit_edge ]
  %conv58 = zext i16 %width.1 to i32
  %conv59 = zext i16 %height.1 to i32
  %audio_properties = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 20, i32 5
  %27 = ptrtoint ptr %audio_properties to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %audio_properties, align 4
  %call61 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %2, i32 noundef 26, i32 noundef 4, i32 noundef %datatype.1, i32 noundef %conv58, i32 noundef %conv59, i32 noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %sw.epilog.if.end79_crit_edge, label %do.body64

sw.epilog.if.end79_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

do.body64:                                        ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %29 = load i32, ptr @ivtv_debug, align 4
  %and65 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body64.if.end79_crit_edge, label %do.end70

do.body64.if.end79_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  %name73 = getelementptr inbounds %struct.ivtv, ptr %2, i32 0, i32 19, i32 4
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name73) #10
  br label %if.end79

if.end79:                                         ; preds = %do.end70, %do.body64.if.end79_crit_edge, %sw.epilog.if.end79_crit_edge
  %call80 = call i32 @ivtv_msleep_timeout(i32 noundef 10, i32 noundef 0) #7
  %call81 = call i32 @ivtv_firmware_check(ptr noundef %2, ptr noundef nonnull @.str.63) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call81, %if.end79 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_stop_all_captures(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 8
  %v4l2_dev = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 8, i32 0, i32 7
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_flags = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 8, i32 7
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %s_flags, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @ivtv_stop_v4l2_encode_stream(ptr noundef %arrayidx, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 7
  %v4l2_dev.1 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 7, i32 0, i32 7
  %5 = ptrtoint ptr %v4l2_dev.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %v4l2_dev.1, align 4
  %cmp1.1 = icmp eq ptr %6, null
  br i1 %cmp1.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  %s_flags.1 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 7, i32 7
  %7 = ptrtoint ptr %s_flags.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %s_flags.1, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1 = icmp eq i32 %9, 0
  br i1 %tobool.not.1, label %if.end.1.cleanup.1_crit_edge, label %if.then2.1

if.end.1.cleanup.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.then2.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  %call3.1 = tail call i32 @ivtv_stop_v4l2_encode_stream(ptr noundef %arrayidx.1, i32 noundef 0)
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.then2.1, %if.end.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %arrayidx.2 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 6
  %v4l2_dev.2 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 6, i32 0, i32 7
  %10 = ptrtoint ptr %v4l2_dev.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v4l2_dev.2, align 4
  %cmp1.2 = icmp eq ptr %11, null
  br i1 %cmp1.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  %s_flags.2 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 6, i32 7
  %12 = ptrtoint ptr %s_flags.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %s_flags.2, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.2 = icmp eq i32 %14, 0
  br i1 %tobool.not.2, label %if.end.2.cleanup.2_crit_edge, label %if.then2.2

if.end.2.cleanup.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2

if.then2.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  %call3.2 = tail call i32 @ivtv_stop_v4l2_encode_stream(ptr noundef %arrayidx.2, i32 noundef 0)
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.then2.2, %if.end.2.cleanup.2_crit_edge, %cleanup.1.cleanup.2_crit_edge
  %arrayidx.3 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 5
  %v4l2_dev.3 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 5, i32 0, i32 7
  %15 = ptrtoint ptr %v4l2_dev.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %v4l2_dev.3, align 4
  %cmp1.3 = icmp eq ptr %16, null
  br i1 %cmp1.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  %s_flags.3 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 5, i32 7
  %17 = ptrtoint ptr %s_flags.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %s_flags.3, align 4
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.3 = icmp eq i32 %19, 0
  br i1 %tobool.not.3, label %if.end.3.cleanup.3_crit_edge, label %if.then2.3

if.end.3.cleanup.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.3

if.then2.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  %call3.3 = tail call i32 @ivtv_stop_v4l2_encode_stream(ptr noundef %arrayidx.3, i32 noundef 0)
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.then2.3, %if.end.3.cleanup.3_crit_edge, %cleanup.2.cleanup.3_crit_edge
  %arrayidx.4 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 4
  %v4l2_dev.4 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 4, i32 0, i32 7
  %20 = ptrtoint ptr %v4l2_dev.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %v4l2_dev.4, align 4
  %cmp1.4 = icmp eq ptr %21, null
  br i1 %cmp1.4, label %cleanup.3.cleanup.4_crit_edge, label %if.end.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.4

if.end.4:                                         ; preds = %cleanup.3
  %s_flags.4 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 4, i32 7
  %22 = ptrtoint ptr %s_flags.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %s_flags.4, align 4
  %24 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.4 = icmp eq i32 %24, 0
  br i1 %tobool.not.4, label %if.end.4.cleanup.4_crit_edge, label %if.then2.4

if.end.4.cleanup.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.4

if.then2.4:                                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  %call3.4 = tail call i32 @ivtv_stop_v4l2_encode_stream(ptr noundef %arrayidx.4, i32 noundef 0)
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.then2.4, %if.end.4.cleanup.4_crit_edge, %cleanup.3.cleanup.4_crit_edge
  %arrayidx.5 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 3
  %v4l2_dev.5 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 3, i32 0, i32 7
  %25 = ptrtoint ptr %v4l2_dev.5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %v4l2_dev.5, align 4
  %cmp1.5 = icmp eq ptr %26, null
  br i1 %cmp1.5, label %cleanup.4.cleanup.5_crit_edge, label %if.end.5

cleanup.4.cleanup.5_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.5

if.end.5:                                         ; preds = %cleanup.4
  %s_flags.5 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 3, i32 7
  %27 = ptrtoint ptr %s_flags.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %s_flags.5, align 4
  %29 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.5 = icmp eq i32 %29, 0
  br i1 %tobool.not.5, label %if.end.5.cleanup.5_crit_edge, label %if.then2.5

if.end.5.cleanup.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.5

if.then2.5:                                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  %call3.5 = tail call i32 @ivtv_stop_v4l2_encode_stream(ptr noundef %arrayidx.5, i32 noundef 0)
  br label %cleanup.5

cleanup.5:                                        ; preds = %if.then2.5, %if.end.5.cleanup.5_crit_edge, %cleanup.4.cleanup.5_crit_edge
  %arrayidx.6 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 2
  %v4l2_dev.6 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 2, i32 0, i32 7
  %30 = ptrtoint ptr %v4l2_dev.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %v4l2_dev.6, align 4
  %cmp1.6 = icmp eq ptr %31, null
  br i1 %cmp1.6, label %cleanup.5.cleanup.6_crit_edge, label %if.end.6

cleanup.5.cleanup.6_crit_edge:                    ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.6

if.end.6:                                         ; preds = %cleanup.5
  %s_flags.6 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 2, i32 7
  %32 = ptrtoint ptr %s_flags.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %s_flags.6, align 4
  %34 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.6 = icmp eq i32 %34, 0
  br i1 %tobool.not.6, label %if.end.6.cleanup.6_crit_edge, label %if.then2.6

if.end.6.cleanup.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.6

if.then2.6:                                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  %call3.6 = tail call i32 @ivtv_stop_v4l2_encode_stream(ptr noundef %arrayidx.6, i32 noundef 0)
  br label %cleanup.6

cleanup.6:                                        ; preds = %if.then2.6, %if.end.6.cleanup.6_crit_edge, %cleanup.5.cleanup.6_crit_edge
  %arrayidx.7 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 1
  %v4l2_dev.7 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 1, i32 0, i32 7
  %35 = ptrtoint ptr %v4l2_dev.7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %v4l2_dev.7, align 4
  %cmp1.7 = icmp eq ptr %36, null
  br i1 %cmp1.7, label %cleanup.6.cleanup.7_crit_edge, label %if.end.7

cleanup.6.cleanup.7_crit_edge:                    ; preds = %cleanup.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.7

if.end.7:                                         ; preds = %cleanup.6
  %s_flags.7 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 1, i32 7
  %37 = ptrtoint ptr %s_flags.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %s_flags.7, align 4
  %39 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.7 = icmp eq i32 %39, 0
  br i1 %tobool.not.7, label %if.end.7.cleanup.7_crit_edge, label %if.then2.7

if.end.7.cleanup.7_crit_edge:                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.7

if.then2.7:                                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  %call3.7 = tail call i32 @ivtv_stop_v4l2_encode_stream(ptr noundef %arrayidx.7, i32 noundef 0)
  br label %cleanup.7

cleanup.7:                                        ; preds = %if.then2.7, %if.end.7.cleanup.7_crit_edge, %cleanup.6.cleanup.7_crit_edge
  %arrayidx.8 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 0
  %v4l2_dev.8 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 0, i32 0, i32 7
  %40 = ptrtoint ptr %v4l2_dev.8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %v4l2_dev.8, align 4
  %cmp1.8 = icmp eq ptr %41, null
  br i1 %cmp1.8, label %cleanup.7.cleanup.8_crit_edge, label %if.end.8

cleanup.7.cleanup.8_crit_edge:                    ; preds = %cleanup.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.8

if.end.8:                                         ; preds = %cleanup.7
  %s_flags.8 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 0, i32 7
  %42 = ptrtoint ptr %s_flags.8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %s_flags.8, align 4
  %44 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.8 = icmp eq i32 %44, 0
  br i1 %tobool.not.8, label %if.end.8.cleanup.8_crit_edge, label %if.then2.8

if.end.8.cleanup.8_crit_edge:                     ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.8

if.then2.8:                                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  %call3.8 = tail call i32 @ivtv_stop_v4l2_encode_stream(ptr noundef %arrayidx.8, i32 noundef 0)
  br label %cleanup.8

cleanup.8:                                        ; preds = %if.then2.8, %if.end.8.cleanup.8_crit_edge, %cleanup.7.cleanup.8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_stop_v4l2_encode_stream(ptr noundef %s, i32 noundef %gop_end) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !144) #7
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
  store ptr @default_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %s, i32 0, i32 7
  %15 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %v4l2_dev, align 4
  %cmp = icmp eq ptr %16, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %17 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %type = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 3
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %19)
  %cmp10 = icmp eq i32 %19, 7
  br i1 %cmp10, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %capturing = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #7
  %20 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp14 = icmp eq i32 %21, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 8
  %.off = add i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %spec.select = zext i1 %switch to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp22 = icmp ne i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gop_end)
  %tobool23.not = icmp eq i32 %gop_end, 0
  %or.cond = or i1 %tobool23.not, %cmp22
  %stopmode.0 = zext i1 %or.cond to i32
  %subtype = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 15
  %24 = ptrtoint ptr %subtype to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %subtype, align 8
  %call26 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 130, i32 noundef 3, i32 noundef %stopmode.0, i32 noundef %spec.select, i32 noundef %25) #7
  %s_flags = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 7
  %26 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %s_flags, align 4
  %28 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool28.not = icmp eq i32 %28, 0
  br i1 %tobool28.not, label %if.then29, label %if.end16.if.end250_crit_edge

if.end16.if.end250_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

if.then29:                                        ; preds = %if.end16
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp31 = icmp ne i32 %30, 0
  %or.cond313 = or i1 %tobool23.not, %cmp31
  br i1 %or.cond313, label %if.then29.if.end248_crit_edge, label %if.then34

if.then29.if.end248_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end248

if.then34:                                        ; preds = %if.then29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %eos_waitq = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 63
  call void @add_wait_queue(ptr noundef %eos_waitq, ptr noundef nonnull %wait) #7
  br label %__here

__here:                                           ; preds = %if.then34
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 212
  %34 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 ptrtoint (ptr blockaddress(@ivtv_stop_v4l2_encode_stream, %__here) to i32), ptr %task_state_change, align 4
  %35 = load ptr, ptr %task, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 1, ptr %35, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !165
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  %37 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %i_flags, align 4
  %39 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool104.not320 = icmp eq i32 %39, 0
  br i1 %tobool104.not320, label %land.rhs105.lr.ph, label %__here.while.end_crit_edge

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs105.lr.ph:                                ; preds = %__here
  %add.neg = sub i32 -200, %31
  br label %land.rhs105

land.rhs105:                                      ; preds = %while.body.land.rhs105_crit_edge, %land.rhs105.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp107 = icmp slt i32 %sub, 0
  br i1 %cmp107, label %while.body, label %land.rhs105.while.end_crit_edge

land.rhs105.while.end_crit_edge:                  ; preds = %land.rhs105
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs105
  %call110 = call i32 @schedule_timeout(i32 noundef 1) #7
  %41 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %i_flags, align 4
  %43 = and i32 %42, 16
  %tobool104.not = icmp eq i32 %43, 0
  br i1 %tobool104.not, label %while.body.land.rhs105_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.land.rhs105_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs105

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs105.while.end_crit_edge, %__here.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub111 = sub i32 %44, %31
  %mul = mul i32 %sub111, 10
  %45 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %i_flags, align 4
  %47 = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool114.not = icmp eq i32 %47, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %48 = load i32, ptr @ivtv_debug, align 4
  br i1 %tobool114.not, label %do.body116, label %do.body149

do.body116:                                       ; preds = %while.end
  %and117 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %do.body116.do.body132_crit_edge, label %do.end122

do.body116.do.body132_crit_edge:                  ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body132

do.end122:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  %name125 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name127 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %49 = ptrtoint ptr %name127 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name127, align 4
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name125, ptr noundef %50) #10
  br label %do.body132

do.body132:                                       ; preds = %do.end122, %do.body116.do.body132_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %51 = load i32, ptr @ivtv_debug, align 4
  %and133 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %do.body132.__here216_crit_edge, label %do.body132.__here216.sink.split_crit_edge

do.body132.__here216.sink.split_crit_edge:        ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here216.sink.split

do.body132.__here216_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here216

do.body149:                                       ; preds = %while.end
  %and150 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %do.body149.__here216_crit_edge, label %do.body149.__here216.sink.split_crit_edge

do.body149.__here216.sink.split_crit_edge:        ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here216.sink.split

do.body149.__here216_crit_edge:                   ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here216

__here216.sink.split:                             ; preds = %do.body149.__here216.sink.split_crit_edge, %do.body132.__here216.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.20, %do.body132.__here216.sink.split_crit_edge ], [ @.str.23, %do.body149.__here216.sink.split_crit_edge ]
  %name141 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name143 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %52 = ptrtoint ptr %name143 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name143, align 4
  %call144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.20.sink, ptr noundef %name141, ptr noundef %53, i32 noundef %mul) #10
  br label %__here216

__here216:                                        ; preds = %__here216.sink.split, %do.body149.__here216_crit_edge, %do.body132.__here216_crit_edge
  %54 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task, align 8
  %task_state_change220 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 212
  %56 = ptrtoint ptr %task_state_change220 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 ptrtoint (ptr blockaddress(@ivtv_stop_v4l2_encode_stream, %__here216) to i32), ptr %task_state_change220, align 4
  %57 = load ptr, ptr %task, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 0, ptr %57, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !166
  call void @remove_wait_queue(ptr noundef %eos_waitq, ptr noundef nonnull %wait) #7
  call void @_set_bit(i32 noundef 7, ptr noundef %s_flags) #7
  br label %if.end248

if.end248:                                        ; preds = %__here216, %if.then29.if.end248_crit_edge
  %call249 = call i32 @ivtv_msleep_timeout(i32 noundef 100, i32 noundef 0) #7
  br label %if.end250

if.end250:                                        ; preds = %if.end248, %if.end16.if.end250_crit_edge
  %call.i.i318 = call zeroext i1 @__kasan_check_write(ptr noundef %capturing, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %capturing, i32 1, i32 3, i32 1) #7
  %59 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %capturing, ptr %capturing, i32 1, ptr elementtype(i32) %capturing) #7, !srcloc !155
  call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags) #7
  %60 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp254 = icmp eq i32 %61, 2
  br i1 %cmp254, label %if.then255, label %if.end250.if.end256_crit_edge

if.end250.if.end256_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end256

if.then255:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #9
  call void @ivtv_set_irq_mask(ptr noundef %1, i32 noundef 536870912) #7
  br label %if.end256

if.end256:                                        ; preds = %if.then255, %if.end250.if.end256_crit_edge
  %call.i.i319 = call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #7
  %62 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp259 = icmp sgt i32 %63, 0
  br i1 %cmp259, label %if.end256.cleanup_crit_edge, label %if.end261

if.end256.cleanup_crit_edge:                      ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end261:                                        ; preds = %if.end256
  %cxhdl = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 20
  call void @cx2341x_handler_set_busy(ptr noundef %cxhdl, i32 noundef 0) #7
  call void @ivtv_set_irq_mask(ptr noundef %1, i32 noundef -1073741824) #7
  %dma_timer = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 60
  %call262 = call i32 @del_timer(ptr noundef %dma_timer) #7
  %i_flags263 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  %call264 = call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %i_flags263) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %if.end261.if.end268_crit_edge, label %if.then266

if.end261.if.end268_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268

if.then266:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #9
  %call267 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 213, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 268435456, i32 noundef -1) #7
  call void @ivtv_set_irq_mask(ptr noundef %1, i32 noundef 268435456) #7
  br label %if.end268

if.end268:                                        ; preds = %if.then266, %if.end261.if.end268_crit_edge
  %call269 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 130, i32 noundef 3, i32 noundef 1, i32 noundef 2, i32 noundef 7) #7
  %waitq = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 16
  call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end268, %if.end256.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end268 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end9.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end256.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_stop_v4l2_decode_stream(ptr noundef %s, i32 noundef %flags, i64 noundef %pts) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 8
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup53_crit_edge, label %if.end

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup53

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %5, label %if.end.cleanup53_crit_edge [
    i32 8, label %if.end.if.end6_crit_edge
    i32 5, label %if.end.if.end6_crit_edge84
  ]

if.end.if.end6_crit_edge84:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.cleanup53_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup53

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %if.end.if.end6_crit_edge84
  %s_flags = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 7
  %7 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %s_flags, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end6.cleanup53_crit_edge, label %do.body

if.end6.cleanup53_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup53

do.body:                                          ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %10 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body.do.end16_crit_edge, label %do.end

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name, i64 noundef %pts, i32 noundef %flags) #10
  br label %do.end16

do.end16:                                         ; preds = %do.end, %do.body.do.end16_crit_edge
  %and17 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp ne i32 %and17, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pts)
  %tobool19.not = icmp eq i64 %pts, 0
  %or.cond = and i1 %tobool18.not, %tobool19.not
  br i1 %or.cond, label %do.end16.if.end44_crit_edge, label %if.then20

do.end16.if.end44_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then20:                                        ; preds = %do.end16
  br i1 %tobool19.not, label %if.then20.if.end27_crit_edge, label %if.then23

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i64 %pts to i32
  %shr = lshr i64 %pts, 32
  %conv25 = trunc i64 %shr to i32
  %call26 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 2, i32 noundef 3, i32 noundef 0, i32 noundef %conv, i32 noundef %conv25) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then20.if.end27_crit_edge
  %arrayidx = getelementptr inbounds [16 x i32], ptr %data, i32 0, i32 3
  %buffers = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 22, i32 1
  %buffers30 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 24, i32 1
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %if.end27
  %tmp21.0 = phi i32 [ 0, %if.end27 ], [ %tmp21.1, %cleanup ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #7
  %11 = call ptr @memset(ptr %data, i32 255, i32 64)
  %call29 = call i32 (ptr, ptr, i32, i32, ...) @ivtv_vapi_result(ptr noundef %1, ptr noundef nonnull %data, i32 noundef 9, i32 noundef 0) #7
  %12 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffers, align 4
  %14 = ptrtoint ptr %buffers30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffers30, align 4
  %add = sub i32 0, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp31 = icmp eq i32 %13, %add
  br i1 %cmp31, label %if.then33, label %while.cond.if.end39_crit_edge

while.cond.if.end39_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then33:                                        ; preds = %while.cond
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp21.0, i32 %17)
  %cmp34 = icmp eq i32 %tmp21.0, %17
  br i1 %cmp34, label %if.then33.cleanup.thread_crit_edge, label %if.then33.if.end39_crit_edge

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then33.cleanup.thread_crit_edge:               ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end39:                                         ; preds = %if.then33.if.end39_crit_edge, %while.cond.if.end39_crit_edge
  %tmp21.1 = phi i32 [ %tmp21.0, %while.cond.if.end39_crit_edge ], [ %17, %if.then33.if.end39_crit_edge ]
  %call40 = call i32 @ivtv_msleep_timeout(i32 noundef 100, i32 noundef 1) #7
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup, label %if.end39.cleanup.thread_crit_edge

if.end39.cleanup.thread_crit_edge:                ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end39.cleanup.thread_crit_edge, %if.then33.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #7
  br label %if.end44

cleanup:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #7
  br label %while.cond

if.end44:                                         ; preds = %cleanup.thread, %do.end16.if.end44_crit_edge
  %and45 = and i32 %flags, 1
  %call46 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 2, i32 noundef 3, i32 noundef %and45, i32 noundef 0, i32 noundef 0) #7
  %call47 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 23, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 16777216, i32 noundef -1) #7
  call void @ivtv_set_irq_mask(ptr noundef %1, i32 noundef 20971520) #7
  %dma_timer = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 60
  %call48 = call i32 @del_timer(ptr noundef %dma_timer) #7
  call void @_clear_bit(i32 noundef 2, ptr noundef %s_flags) #7
  call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags) #7
  call void @ivtv_flush_queues(ptr noundef %s) #7
  %call51 = call i32 @ivtv_msleep_timeout(i32 noundef 40, i32 noundef 0) #7
  %decoding = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 44
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %decoding, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %decoding, i32 1, i32 3, i32 1) #7
  %18 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %decoding, ptr %decoding, i32 1, ptr elementtype(i32) %decoding) #7, !srcloc !155
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  call void @_set_bit(i32 noundef 28, ptr noundef %i_flags) #7
  %event_waitq = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 64
  call void @__wake_up(ptr noundef %event_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  call void @v4l2_event_queue(ptr noundef %s, ptr noundef nonnull @ivtv_stop_v4l2_decode_stream.ev) #7
  %waitq = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 16
  call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup53

cleanup53:                                        ; preds = %if.end44, %if.end6.cleanup53_crit_edge, %if.end.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -22, %entry.cleanup53_crit_edge ], [ -22, %if.end.cleanup53_crit_edge ], [ 0, %if.end6.cleanup53_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_flush_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_set_output_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_set_funcs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_v4l2_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_v4l2_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_v4l2_enc_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_v4l2_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_v4l2_close(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_v4l2_dec_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_api(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_firmware_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143}
!llvm.named.register.sp = !{!144}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 500, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ivtv_start_v4l2_encode_stream._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ivtv_start_v4l2_encode_stream._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 598, i32 3}
!8 = !{ptr @ivtv_start_v4l2_encode_stream._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ivtv_start_v4l2_encode_stream._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 638, i32 3}
!12 = !{ptr @ivtv_start_v4l2_encode_stream._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ivtv_start_v4l2_encode_stream._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_ivtv_start_v4l2_encode_stream, !15, !"__ksymtab_ivtv_start_v4l2_encode_stream", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 656, i32 1}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 734, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ivtv_start_v4l2_decode_stream._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @ivtv_start_v4l2_decode_stream._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 769, i32 2}
!23 = !{ptr @ivtv_start_v4l2_decode_stream._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ivtv_start_v4l2_decode_stream._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 804, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ivtv_stop_v4l2_encode_stream._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ivtv_stop_v4l2_encode_stream._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 846, i32 4}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 865, i32 5}
!34 = !{ptr @ivtv_stop_v4l2_encode_stream._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ivtv_stop_v4l2_encode_stream._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 866, i32 5}
!38 = !{ptr @ivtv_stop_v4l2_encode_stream._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ivtv_stop_v4l2_encode_stream._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 868, i32 5}
!42 = !{ptr @ivtv_stop_v4l2_encode_stream._entry.22, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ivtv_stop_v4l2_encode_stream._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 870, i32 4}
!46 = !{ptr @__ksymtab_ivtv_stop_v4l2_encode_stream, !47, !"__ksymtab_ivtv_stop_v4l2_encode_stream", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 913, i32 1}
!48 = !{ptr @ivtv_stop_v4l2_decode_stream.ev, !49, !"ev", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 917, i32 33}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 931, i32 2}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ivtv_stop_v4l2_decode_stream._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ivtv_stop_v4l2_decode_stream._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 990, i32 2}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ivtv_passthrough_mode._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ivtv_passthrough_mode._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 222, i32 3}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ivtv_prep_dev._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ivtv_prep_dev._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 228, i32 47}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 101, i32 3}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 109, i32 3}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 117, i32 3}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 125, i32 3}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 132, i32 3}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 139, i32 3}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 146, i32 3}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 153, i32 3}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 160, i32 3}
!85 = !{ptr @ivtv_stream_info, !86, !"ivtv_stream_info", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 99, i32 3}
!87 = !{ptr @ivtv_v4l2_enc_fops, !88, !"ivtv_v4l2_enc_fops", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 48, i32 42}
!89 = !{ptr @ivtv_v4l2_radio_fops, !90, !"ivtv_v4l2_radio_fops", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 74, i32 42}
!91 = !{ptr @ivtv_v4l2_dec_fops, !92, !"ivtv_v4l2_dec_fops", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 61, i32 42}
!93 = !{ptr @ivtv_stream_init.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 188, i32 2}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ivtv_stream_init.__key.43, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 189, i32 2}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 314, i32 3}
!101 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ivtv_reg_dev._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @ivtv_reg_dev._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 322, i32 3}
!106 = !{ptr @ivtv_reg_dev._entry.47, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ivtv_reg_dev._entry_ptr.49, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 326, i32 3}
!110 = !{ptr @ivtv_reg_dev._entry.50, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ivtv_reg_dev._entry_ptr.52, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @ivtv_reg_dev._entry.53, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 331, i32 4}
!114 = !{ptr @ivtv_reg_dev._entry_ptr.54, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @ivtv_reg_dev._entry.55, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 334, i32 4}
!117 = !{ptr @ivtv_reg_dev._entry_ptr.56, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 451, i32 2}
!120 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @ivtv_vbi_setup._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @ivtv_vbi_setup._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 463, i32 2}
!125 = !{ptr @ivtv_vbi_setup._entry.59, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ivtv_vbi_setup._entry_ptr.61, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 669, i32 2}
!129 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ivtv_setup_v4l2_decode_stream._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @ivtv_setup_v4l2_decode_stream._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 687, i32 2}
!134 = !{ptr @ivtv_setup_v4l2_decode_stream._entry.64, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @ivtv_setup_v4l2_decode_stream._entry_ptr.66, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 704, i32 3}
!138 = !{ptr @ivtv_setup_v4l2_decode_stream._entry.67, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @ivtv_setup_v4l2_decode_stream._entry_ptr.69, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/ivtv/ivtv-streams.c", i32 713, i32 3}
!142 = !{ptr @ivtv_setup_v4l2_decode_stream._entry.70, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ivtv_setup_v4l2_decode_stream._entry_ptr.72, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{!"sp"}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{i64 2148399408, i64 2148399434, i64 2148399463, i64 2148399497, i64 2148399528, i64 2148399551}
!155 = !{i64 2148401873, i64 2148401899, i64 2148401928, i64 2148401962, i64 2148401993, i64 2148402016}
!156 = !{i64 2156875113}
!157 = !{i64 5776428}
!158 = !{i64 2156875526}
!159 = !{i64 2156875939}
!160 = !{i64 2156876352}
!161 = !{i64 2156876765}
!162 = !{i64 2156877178}
!163 = !{i64 2156877591}
!164 = !{i64 2156878004}
!165 = !{i64 2156887738}
!166 = !{i64 2156903828}
