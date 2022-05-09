; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-fileops.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-fileops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ivtv_claim_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_ivtv_claim_stream\09\09\09\09"
module asm "\09.long\09__crc_ivtv_claim_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ivtv_claim_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22ivtv_claim_stream\22\09\09\09\09\09"
module asm "__kstrtabns_ivtv_claim_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ivtv_release_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_ivtv_release_stream\09\09\09\09"
module asm "\09.long\09__crc_ivtv_release_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ivtv_release_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22ivtv_release_stream\22\09\09\09\09\09"
module asm "__kstrtabns_ivtv_release_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ivtv_open_id = type { %struct.v4l2_fh, i32, i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ivtv = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ivtv_options, %struct.v4l2_device, %struct.cx2341x_handler, %struct.anon.120, %struct.anon.121, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i8, i8, %struct.spinlock, %struct.mutex, [9 x i32], [9 x %struct.ivtv_stream], %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.work_struct, i32, i32, %struct.kthread_worker, ptr, %struct.kthread_work, %struct.spinlock, i32, i32, i32, i32, i32, %struct.ivtv_user_dma, %struct.timer_list, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data, [256 x %struct.ivtv_api_cache], %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, %struct.mutex, %struct.IR_i2c_init_data, i32, i32, i32, i32, [400 x %struct.v4l2_enc_idx_entry], i32, i32, i32, i8, i64, i64, [3 x i32], i32, i32, %struct.vbi_info, %struct.yuv_playback_info, i32, i32, i32, i32, i8, i32, %struct.v4l2_rect, %struct.v4l2_rect, ptr, ptr }
%struct.ivtv_options = type { [9 x i32], i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
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
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.ivtv_stream = type { %struct.video_device, ptr, ptr, i32, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, i16, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.ivtv_queue = type { %struct.list_head, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ivtv_user_dma = type { %struct.mutex, i32, [704 x ptr], [704 x ptr], [704 x %struct.ivtv_sg_element], i32, i32, [704 x %struct.scatterlist] }
%struct.ivtv_sg_element = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.v4l2_format = type { i32, %union.anon.92 }
%union.anon.92 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.94, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.94 = type { i8 }
%struct.vbi_cc = type { [2 x i8], [2 x i8] }
%struct.vbi_vps = type { [5 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.ivtv_buffer = type { %struct.list_head, i32, i16, i16, ptr, i32, i32 }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, [8 x %struct.yuv_frame_info], %struct.yuv_frame_info, %struct.yuv_frame_info, ptr, i32, i32, i8, i8, %struct.v4l2_rect, i32, i32, i8 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.87, %union.anon.88, i32, ptr, i32, %struct.anon.89, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.87 = type { i64 }
%union.anon.88 = type { ptr }
%struct.anon.89 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.poll_table_struct = type { ptr, i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ivtv_debug = external dso_local local_unnamed_addr global i32, align 4
@ivtv_claim_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s:  info: Start Read VBI\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ivtv_claim_stream\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/ivtv/ivtv-fileops.c\00", [58 x i8] zeroinitializer }, align 32
@ivtv_claim_stream._entry_ptr = internal global ptr @ivtv_claim_stream._entry, section ".printk_index", align 4
@ivtv_claim_stream._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s:  info: Stream %d is busy\0A\00", [32 x i8] zeroinitializer }, align 32
@ivtv_claim_stream._entry_ptr.5 = internal global ptr @ivtv_claim_stream._entry.3, section ".printk_index", align 4
@__kstrtab_ivtv_claim_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_ivtv_claim_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_ivtv_claim_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ivtv_claim_stream to i32), ptr @__kstrtab_ivtv_claim_stream, ptr @__kstrtabns_ivtv_claim_stream }, section "___ksymtab+ivtv_claim_stream", align 4
@ivtv_release_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s:  warn: Release stream %s not in use!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ivtv_release_stream\00", [44 x i8] zeroinitializer }, align 32
@ivtv_release_stream._entry_ptr = internal global ptr @ivtv_release_stream._entry, section ".printk_index", align 4
@__kstrtab_ivtv_release_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_ivtv_release_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_ivtv_release_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ivtv_release_stream to i32), ptr @__kstrtab_ivtv_release_stream, ptr @__kstrtabns_ivtv_release_stream }, section "___ksymtab+ivtv_release_stream", align 4
@ivtv_start_capture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s:  warn: VBI capture start failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ivtv_start_capture\00", [45 x i8] zeroinitializer }, align 32
@ivtv_start_capture._entry_ptr = internal global ptr @ivtv_start_capture._entry, section ".printk_index", align 4
@ivtv_start_capture._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:  info: VBI insertion started\0A\00", [60 x i8] zeroinitializer }, align 32
@ivtv_start_capture._entry_ptr.12 = internal global ptr @ivtv_start_capture._entry.10, section ".printk_index", align 4
@ivtv_start_capture._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s:  warn: Failed to start capturing for stream %s\0A\00", [42 x i8] zeroinitializer }, align 32
@ivtv_start_capture._entry_ptr.15 = internal global ptr @ivtv_start_capture._entry.13, section ".printk_index", align 4
@ivtv_v4l2_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s:  file: read %zd bytes from %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtv_v4l2_read\00", [17 x i8] zeroinitializer }, align 32
@ivtv_v4l2_read._entry_ptr = internal global ptr @ivtv_v4l2_read._entry, section ".printk_index", align 4
@ivtv_start_decoding._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s:  warn: start decode, stream already claimed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ivtv_start_decoding\00", [44 x i8] zeroinitializer }, align 32
@ivtv_start_decoding._entry_ptr = internal global ptr @ivtv_start_decoding._entry, section ".printk_index", align 4
@ivtv_v4l2_dec_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s:  file: Decoder poll\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ivtv_v4l2_dec_poll\00", [45 x i8] zeroinitializer }, align 32
@ivtv_v4l2_dec_poll._entry_ptr = internal global ptr @ivtv_v4l2_dec_poll._entry, section ".printk_index", align 4
@ivtv_v4l2_enc_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s:  info: Could not start capture for %s (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ivtv_v4l2_enc_poll\00", [45 x i8] zeroinitializer }, align 32
@ivtv_v4l2_enc_poll._entry_ptr = internal global ptr @ivtv_v4l2_enc_poll._entry, section ".printk_index", align 4
@ivtv_v4l2_enc_poll._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  file: Encoder poll started capture\0A\00", [53 x i8] zeroinitializer }, align 32
@ivtv_v4l2_enc_poll._entry_ptr.26 = internal global ptr @ivtv_v4l2_enc_poll._entry.24, section ".printk_index", align 4
@ivtv_v4l2_enc_poll._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s:  file: Encoder poll\0A\00", [37 x i8] zeroinitializer }, align 32
@ivtv_v4l2_enc_poll._entry_ptr.29 = internal global ptr @ivtv_v4l2_enc_poll._entry.27, section ".printk_index", align 4
@ivtv_stop_capture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s:  file: close() of %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ivtv_stop_capture\00", [46 x i8] zeroinitializer }, align 32
@ivtv_stop_capture._entry_ptr = internal global ptr @ivtv_stop_capture._entry, section ".printk_index", align 4
@ivtv_stop_capture._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s:  info: close stopping capture\0A\00", [59 x i8] zeroinitializer }, align 32
@ivtv_stop_capture._entry_ptr.34 = internal global ptr @ivtv_stop_capture._entry.32, section ".printk_index", align 4
@ivtv_stop_capture._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s:  info: close stopping embedded VBI capture\0A\00", [46 x i8] zeroinitializer }, align 32
@ivtv_stop_capture._entry_ptr.37 = internal global ptr @ivtv_stop_capture._entry.35, section ".printk_index", align 4
@ivtv_v4l2_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s:  file: close %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ivtv_v4l2_close\00", [16 x i8] zeroinitializer }, align 32
@ivtv_v4l2_close._entry_ptr = internal global ptr @ivtv_v4l2_close._entry, section ".printk_index", align 4
@ivtv_mute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s:  info: Mute\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ivtv_mute\00", [22 x i8] zeroinitializer }, align 32
@ivtv_mute._entry_ptr = internal global ptr @ivtv_mute._entry, section ".printk_index", align 4
@ivtv_unmute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 1060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s:  info: Unmute\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ivtv_unmute\00", [20 x i8] zeroinitializer }, align 32
@ivtv_unmute._entry_ptr = internal global ptr @ivtv_unmute._entry, section ".printk_index", align 4
@ivtv_read_pos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s:  file: read %zd from %s, got %zd\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ivtv_read_pos\00", [18 x i8] zeroinitializer }, align 32
@ivtv_read_pos._entry_ptr = internal global ptr @ivtv_read_pos._entry, section ".printk_index", align 4
@ivtv_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s:  warn: Stream %s not initialized before read\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ivtv_read\00", [22 x i8] zeroinitializer }, align 32
@ivtv_read._entry_ptr = internal global ptr @ivtv_read._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ivtv_get_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s:  info: EOS %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ivtv_get_buffer\00", [16 x i8] zeroinitializer }, align 32
@ivtv_get_buffer._entry_ptr = internal global ptr @ivtv_get_buffer._entry, section ".printk_index", align 4
@ivtv_get_buffer._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:  info: User stopped %s\0A\00", [34 x i8] zeroinitializer }, align 32
@ivtv_get_buffer._entry_ptr.52 = internal global ptr @ivtv_get_buffer._entry.50, section ".printk_index", align 4
@ivtv_update_pgm_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  warn: Invalid PGM index %d (>= %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ivtv_update_pgm_info\00", [43 x i8] zeroinitializer }, align 32
@ivtv_update_pgm_info._entry_ptr = internal global ptr @ivtv_update_pgm_info._entry, section ".printk_index", align 4
@__const.ivtv_update_pgm_info.mapping = private unnamed_addr constant [8 x i32] [i32 -1, i32 0, i32 1, i32 -1, i32 2, i32 -1, i32 -1, i32 -1], align 4
@ivtv_dualwatch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016%s:  info: dualwatch: change stereo flag from 0x%x to 0x%x.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtv_dualwatch\00", [17 x i8] zeroinitializer }, align 32
@ivtv_dualwatch._entry_ptr = internal global ptr @ivtv_dualwatch._entry, section ".printk_index", align 4
@ivtv_dualwatch._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s:  info: dualwatch: changing stereo flag failed\0A\00", [43 x i8] zeroinitializer }, align 32
@ivtv_dualwatch._entry_ptr.59 = internal global ptr @ivtv_dualwatch._entry.57, section ".printk_index", align 4
@ivtv_copy_buf_to_user._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s:  warn: copy %zd bytes to user failed for %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ivtv_copy_buf_to_user\00", [42 x i8] zeroinitializer }, align 32
@ivtv_copy_buf_to_user._entry_ptr = internal global ptr @ivtv_copy_buf_to_user._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ivtv_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:  file: write %zd bytes to %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ivtv_write\00", [21 x i8] zeroinitializer }, align 32
@ivtv_write._entry_ptr = internal global ptr @ivtv_write._entry, section ".printk_index", align 4
@ivtv_write._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s:  warn: Failed start decode stream %s\0A\00", [52 x i8] zeroinitializer }, align 32
@ivtv_write._entry_ptr.69 = internal global ptr @ivtv_write._entry.67, section ".printk_index", align 4
@ivtv_write._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s:  file: Wrote %d bytes to %s (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@ivtv_write._entry_ptr.72 = internal global ptr @ivtv_write._entry.70, section ".printk_index", align 4
@ivtv_write._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.66, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtv_write._entry_ptr.74 = internal global ptr @ivtv_write._entry.73, section ".printk_index", align 4
@ivtv_write._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.66, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  info: User interrupted %s\0A\00", [62 x i8] zeroinitializer }, align 32
@ivtv_write._entry_ptr.77 = internal global ptr @ivtv_write._entry.75, section ".printk_index", align 4
@ivtv_write._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtv_write._entry_ptr.79 = internal global ptr @ivtv_write._entry.78, section ".printk_index", align 4
@ivtv_stop_decoding._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.80, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ivtv_stop_decoding\00", [45 x i8] zeroinitializer }, align 32
@ivtv_stop_decoding._entry_ptr = internal global ptr @ivtv_stop_decoding._entry, section ".printk_index", align 4
@ivtv_stop_decoding._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:  info: close stopping decode\0A\00", [60 x i8] zeroinitializer }, align 32
@ivtv_stop_decoding._entry_ptr.83 = internal global ptr @ivtv_stop_decoding._entry.81, section ".printk_index", align 4
@ivtv_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s:  file: open %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ivtv_open\00", [22 x i8] zeroinitializer }, align 32
@ivtv_open._entry_ptr = internal global ptr @ivtv_open._entry, section ".printk_index", align 4
@ivtv_open._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Failed to initialize on device %s\0A\00", [55 x i8] zeroinitializer }, align 32
@ivtv_open._entry_ptr.88 = internal global ptr @ivtv_open._entry.86, section ".printk_index", align 4
@ivtv_fw_debug = external dso_local local_unnamed_addr global i32, align 4
@ivtv_open._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.2, i32 951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: Opening %s with dead firmware lockout disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@ivtv_open._entry_ptr.91 = internal global ptr @ivtv_open._entry.89, section ".printk_index", align 4
@ivtv_open._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.2, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014%s: Selected firmware errors will be ignored\0A\00", [48 x i8] zeroinitializer }, align 32
@ivtv_open._entry_ptr.94 = internal global ptr @ivtv_open._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ivtv_serialized_open\00", [43 x i8] zeroinitializer }, align 32
@ivtv_open._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.85, ptr @.str.2, i32 974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\013%s: Tried to open YUV output device but need to send data to mpeg decoder before it can be used\0A\00", [61 x i8] zeroinitializer }, align 32
@ivtv_open._entry_ptr.98 = internal global ptr @ivtv_open._entry.96, section ".printk_index", align 4
@ivtv_open._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.85, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s:  warn: nomem on v4l2 open\0A\00", [63 x i8] zeroinitializer }, align 32
@ivtv_open._entry_ptr.101 = internal global ptr @ivtv_open._entry.99, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 6]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 51, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 55, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 103, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 455, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 464, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 478, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 500, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 520, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 729, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 774, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 778, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 782, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 801, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 809, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 815, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 873, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1050, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1060, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 409, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 354, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 250, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 270, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 168, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 155, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 158, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 334, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 230, i32 6 }
@___asan_gen_.325 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 214, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 174, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 549, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 582, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 605, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 629, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 691, i32 5 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 704, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 840, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 850, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 939, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 942, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 950, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 952, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 957, i32 34 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 974, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.415 = private constant [41 x i8] c"../drivers/media/pci/ivtv/ivtv-fileops.c\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 983, i32 3 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__ksymtab_ivtv_claim_stream, ptr @__ksymtab_ivtv_release_stream, ptr @ivtv_claim_stream._entry, ptr @ivtv_claim_stream._entry.3, ptr @ivtv_claim_stream._entry_ptr, ptr @ivtv_claim_stream._entry_ptr.5, ptr @ivtv_copy_buf_to_user._entry, ptr @ivtv_copy_buf_to_user._entry_ptr, ptr @ivtv_dualwatch._entry, ptr @ivtv_dualwatch._entry.57, ptr @ivtv_dualwatch._entry_ptr, ptr @ivtv_dualwatch._entry_ptr.59, ptr @ivtv_get_buffer._entry, ptr @ivtv_get_buffer._entry.50, ptr @ivtv_get_buffer._entry_ptr, ptr @ivtv_get_buffer._entry_ptr.52, ptr @ivtv_mute._entry, ptr @ivtv_mute._entry_ptr, ptr @ivtv_open._entry, ptr @ivtv_open._entry.86, ptr @ivtv_open._entry.89, ptr @ivtv_open._entry.92, ptr @ivtv_open._entry.96, ptr @ivtv_open._entry.99, ptr @ivtv_open._entry_ptr, ptr @ivtv_open._entry_ptr.101, ptr @ivtv_open._entry_ptr.88, ptr @ivtv_open._entry_ptr.91, ptr @ivtv_open._entry_ptr.94, ptr @ivtv_open._entry_ptr.98, ptr @ivtv_read._entry, ptr @ivtv_read._entry_ptr, ptr @ivtv_read_pos._entry, ptr @ivtv_read_pos._entry_ptr, ptr @ivtv_release_stream._entry, ptr @ivtv_release_stream._entry_ptr, ptr @ivtv_start_capture._entry, ptr @ivtv_start_capture._entry.10, ptr @ivtv_start_capture._entry.13, ptr @ivtv_start_capture._entry_ptr, ptr @ivtv_start_capture._entry_ptr.12, ptr @ivtv_start_capture._entry_ptr.15, ptr @ivtv_start_decoding._entry, ptr @ivtv_start_decoding._entry_ptr, ptr @ivtv_stop_capture._entry, ptr @ivtv_stop_capture._entry.32, ptr @ivtv_stop_capture._entry.35, ptr @ivtv_stop_capture._entry_ptr, ptr @ivtv_stop_capture._entry_ptr.34, ptr @ivtv_stop_capture._entry_ptr.37, ptr @ivtv_stop_decoding._entry, ptr @ivtv_stop_decoding._entry.81, ptr @ivtv_stop_decoding._entry_ptr, ptr @ivtv_stop_decoding._entry_ptr.83, ptr @ivtv_unmute._entry, ptr @ivtv_unmute._entry_ptr, ptr @ivtv_update_pgm_info._entry, ptr @ivtv_update_pgm_info._entry_ptr, ptr @ivtv_v4l2_close._entry, ptr @ivtv_v4l2_close._entry_ptr, ptr @ivtv_v4l2_dec_poll._entry, ptr @ivtv_v4l2_dec_poll._entry_ptr, ptr @ivtv_v4l2_enc_poll._entry, ptr @ivtv_v4l2_enc_poll._entry.24, ptr @ivtv_v4l2_enc_poll._entry.27, ptr @ivtv_v4l2_enc_poll._entry_ptr, ptr @ivtv_v4l2_enc_poll._entry_ptr.26, ptr @ivtv_v4l2_enc_poll._entry_ptr.29, ptr @ivtv_v4l2_read._entry, ptr @ivtv_v4l2_read._entry_ptr, ptr @ivtv_write._entry, ptr @ivtv_write._entry.67, ptr @ivtv_write._entry.70, ptr @ivtv_write._entry.73, ptr @ivtv_write._entry.75, ptr @ivtv_write._entry.78, ptr @ivtv_write._entry_ptr, ptr @ivtv_write._entry_ptr.69, ptr @ivtv_write._entry_ptr.72, ptr @ivtv_write._entry_ptr.74, ptr @ivtv_write._entry_ptr.77, ptr @ivtv_write._entry_ptr.79, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.76, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.100], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_claim_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_claim_stream._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_release_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_start_capture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_start_capture._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_start_capture._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_v4l2_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_start_decoding._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_v4l2_dec_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_v4l2_enc_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_v4l2_enc_poll._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_v4l2_enc_poll._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop_capture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop_capture._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop_capture._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_v4l2_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_mute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_unmute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_read_pos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_get_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_get_buffer._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_update_pgm_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_dualwatch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_dualwatch._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_copy_buf_to_user._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_write._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_write._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_write._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_write._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_write._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop_decoding._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop_decoding._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_open._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_open._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_open._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_open._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_open._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_claim_stream(ptr noundef %id, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %id, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %s_flags = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %type, i32 7
  %call = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %s_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %fh36 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %type, i32 5
  br i1 %tobool.not, label %if.end34, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %fh36 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fh36, align 8
  %cmp = icmp eq ptr %3, %id
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %cmp5 = icmp eq ptr %3, null
  br i1 %cmp5, label %land.lhs.true, label %if.end.do.body19_crit_edge

if.end.do.body19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

land.lhs.true:                                    ; preds = %if.end
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %land.lhs.true.do.body19_crit_edge [
    i32 6, label %land.lhs.true.if.then8_crit_edge
    i32 2, label %land.lhs.true.if.then8_crit_edge93
  ]

land.lhs.true.if.then8_crit_edge93:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

land.lhs.true.do.body19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

if.then8:                                         ; preds = %land.lhs.true.if.then8_crit_edge, %land.lhs.true.if.then8_crit_edge93
  %5 = ptrtoint ptr %fh36 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %id, ptr %fh36, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %6 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.then8.cleanup_crit_edge, label %do.end

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %cleanup

do.body19:                                        ; preds = %land.lhs.true.do.body19_crit_edge, %if.end.do.body19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %7 = load i32, ptr @ivtv_debug, align 4
  %and20 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.cleanup_crit_edge, label %do.end25

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %name28 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name28, i32 noundef %type) #11
  br label %cleanup

if.end34:                                         ; preds = %entry
  %8 = ptrtoint ptr %fh36 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %id, ptr %fh36, align 8
  %9 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %type, label %if.end34.cleanup_crit_edge [
    i32 6, label %if.else.thread
    i32 5, label %if.end34.if.end51_crit_edge
    i32 0, label %land.lhs.true43
  ]

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.thread:                                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ivtv_clear_irq_mask(ptr noundef %1, i32 noundef 524288) #8
  br label %cleanup

land.lhs.true43:                                  ; preds = %if.end34
  %insert_mpeg = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89, i32 16
  %10 = ptrtoint ptr %insert_mpeg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %insert_mpeg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool44.not = icmp eq i32 %11, 0
  br i1 %tobool44.not, label %land.lhs.true43.cleanup_crit_edge, label %land.lhs.true45

land.lhs.true43.cleanup_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true45:                                  ; preds = %land.lhs.true43
  %in.i = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89, i32 14
  %12 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp.i.not = icmp eq i32 %13, 4
  br i1 %cmp.i.not, label %land.lhs.true45.cleanup_crit_edge, label %land.lhs.true45.if.end51_crit_edge

land.lhs.true45.if.end51_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %land.lhs.true45.if.end51_crit_edge, %if.end34.if.end51_crit_edge
  %cmp4090 = phi i1 [ true, %land.lhs.true45.if.end51_crit_edge ], [ false, %if.end34.if.end51_crit_edge ]
  %vbi_type.0 = phi i32 [ 2, %land.lhs.true45.if.end51_crit_edge ], [ 6, %if.end34.if.end51_crit_edge ]
  %s_flags54 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %vbi_type.0, i32 7
  %call55 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %s_flags54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp ne i32 %call55, 0
  %brmerge = or i1 %cmp4090, %tobool56.not
  br i1 %brmerge, label %if.end51.if.end61_crit_edge, label %if.then59

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then59:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ivtv_clear_irq_mask(ptr noundef %1, i32 noundef 524288) #8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end51.if.end61_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %s_flags54) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %land.lhs.true45.cleanup_crit_edge, %land.lhs.true43.cleanup_crit_edge, %if.else.thread, %if.end34.cleanup_crit_edge, %do.end25, %do.body19.cleanup_crit_edge, %do.end, %if.then8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end61 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then8.cleanup_crit_edge ], [ -16, %do.end25 ], [ -16, %do.body19.cleanup_crit_edge ], [ 0, %land.lhs.true45.cleanup_crit_edge ], [ 0, %land.lhs.true43.cleanup_crit_edge ], [ 0, %if.else.thread ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_clear_irq_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_release_stream(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 8
  %fh = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 5
  %2 = ptrtoint ptr %fh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fh, align 8
  %type = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %4, label %entry.if.end_crit_edge [
    i32 6, label %entry.land.lhs.true_crit_edge
    i32 2, label %entry.land.lhs.true_crit_edge66
  ]

entry.land.lhs.true_crit_edge66:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge66
  %s_flags = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 7
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %s_flags, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %s_flags4 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 7
  %call5 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %s_flags4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %9 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name11 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %10 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name11, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, ptr noundef %11) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  tail call void @ivtv_flush_queues(ptr noundef %s) #8
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp18 = icmp eq i32 %13, 6
  br i1 %cmp18, label %if.then19, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ivtv_set_irq_mask(ptr noundef %1, i32 noundef 524288) #8
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %type, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %15 = phi i32 [ %.pr, %if.then19 ], [ %13, %if.end16.if.end20_crit_edge ]
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %15, label %if.end20.cleanup_crit_edge [
    i32 5, label %if.then23
    i32 0, label %if.then26
  ]

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 6
  br label %if.end31

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx28 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then23
  %s_vbi.0 = phi ptr [ %arrayidx, %if.then23 ], [ %arrayidx28, %if.then26 ]
  %s_flags32 = getelementptr inbounds %struct.ivtv_stream, ptr %s_vbi.0, i32 0, i32 7
  %call33 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %s_flags32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %fh37 = getelementptr inbounds %struct.ivtv_stream, ptr %s_vbi.0, i32 0, i32 5
  %17 = ptrtoint ptr %fh37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fh37, align 8
  %tobool38.not = icmp eq ptr %18, null
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %type41 = getelementptr inbounds %struct.ivtv_stream, ptr %s_vbi.0, i32 0, i32 3
  %19 = ptrtoint ptr %type41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp42 = icmp eq i32 %20, 6
  br i1 %cmp42, label %if.then43, label %if.end40.if.end44_crit_edge

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ivtv_set_irq_mask(ptr noundef %1, i32 noundef 524288) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40.if.end44_crit_edge
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %s_flags32) #8
  tail call void @ivtv_flush_queues(ptr noundef %s_vbi.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end36.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_flush_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_set_irq_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_start_capture(ptr noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %id, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3
  %type2 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 3
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type2, align 8
  %switch.tableidx = add i32 %5, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 5
  br i1 %6, label %switch.hole_check, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %switch.hole_check.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @ivtv_claim_stream(ptr noundef %id, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %7 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp15 = icmp eq i32 %8, 6
  %s_flags = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 7
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 8, ptr noundef %s_flags) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %9 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %s_flags, align 4
  %11 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp eq i32 %11, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %if.end17.if.then25_crit_edge

if.end17.if.then25_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

lor.lhs.false21:                                  ; preds = %if.end17
  %call23 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %s_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %lor.lhs.false21.if.then25_crit_edge

lor.lhs.false21.if.then25_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false21.if.then25_crit_edge, %if.end17.if.then25_crit_edge
  tail call void @_set_bit(i32 noundef 8, ptr noundef %s_flags) #8
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false21
  %arrayidx29 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2
  %12 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp31 = icmp eq i32 %13, 0
  br i1 %cmp31, label %land.lhs.true, label %if.end27.if.end68_crit_edge

if.end27.if.end68_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end27
  %s_flags32 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 7
  %14 = ptrtoint ptr %s_flags32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %s_flags32, align 4
  %16 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool34.not = icmp eq i32 %16, 0
  br i1 %tobool34.not, label %land.lhs.true.if.end68_crit_edge, label %land.lhs.true35

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true35:                                  ; preds = %land.lhs.true
  %call37 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %s_flags32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true35.if.end68_crit_edge

land.lhs.true35.if.end68_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then39:                                        ; preds = %land.lhs.true35
  %call40 = tail call i32 @ivtv_start_v4l2_encode_stream(ptr noundef %arrayidx29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %17 = load i32, ptr @ivtv_debug, align 4
  br i1 %tobool41.not, label %do.body53, label %do.body

do.body:                                          ; preds = %if.then39
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %do.body.do.end49_crit_edge, label %do.end

do.body.do.end49_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name) #11
  br label %do.end49

do.end49:                                         ; preds = %do.end, %do.body.do.end49_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags32) #8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags) #8
  tail call void @ivtv_release_stream(ptr noundef %arrayidx)
  br label %cleanup

do.body53:                                        ; preds = %if.then39
  %and54 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body53.if.end68_crit_edge, label %do.end59

do.body53.if.end68_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  %name62 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name62) #11
  br label %if.end68

if.end68:                                         ; preds = %do.end59, %do.body53.if.end68_crit_edge, %land.lhs.true35.if.end68_crit_edge, %land.lhs.true.if.end68_crit_edge, %if.end27.if.end68_crit_edge
  %call69 = tail call i32 @ivtv_start_v4l2_encode_stream(ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then71, label %do.body79

if.then71:                                        ; preds = %if.end68
  tail call void @_set_bit(i32 noundef 8, ptr noundef %s_flags) #8
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  %call73 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %i_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then71.cleanup_crit_edge, label %if.then75

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then75:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %1, i32 noundef 210, i32 noundef 1, i32 noundef 1) #8
  br label %cleanup

do.body79:                                        ; preds = %if.end68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %18 = load i32, ptr @ivtv_debug, align 4
  %and80 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body79.do.end94_crit_edge, label %do.end85

do.body79.do.end94_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end94

do.end85:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  %name88 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name90 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 2
  %19 = ptrtoint ptr %name90 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name90, align 4
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name88, ptr noundef %20) #11
  br label %do.end94

do.end94:                                         ; preds = %do.end85, %do.body79.do.end94_crit_edge
  %21 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp96 = icmp eq i32 %22, 0
  br i1 %cmp96, label %land.lhs.true97, label %do.end94.if.end104_crit_edge

do.end94.if.end104_crit_edge:                     ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

land.lhs.true97:                                  ; preds = %do.end94
  %s_flags98 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 7
  %23 = ptrtoint ptr %s_flags98 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %s_flags98, align 4
  %25 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool100.not = icmp eq i32 %25, 0
  br i1 %tobool100.not, label %land.lhs.true97.if.end104_crit_edge, label %if.then101

land.lhs.true97.if.end104_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then101:                                       ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #10
  %call102 = tail call i32 @ivtv_stop_v4l2_encode_stream(ptr noundef %arrayidx29, i32 noundef 0) #8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags98) #8
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %land.lhs.true97.if.end104_crit_edge, %do.end94.if.end104_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags) #8
  tail call void @ivtv_release_stream(ptr noundef %arrayidx)
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %26 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %switch.lobit.not = icmp eq i8 %26, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check.if.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %if.end104, %if.then75, %if.then71.cleanup_crit_edge, %do.end49, %if.then25, %if.then16, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then16 ], [ 0, %if.then25 ], [ -5, %if.end104 ], [ -5, %do.end49 ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.then75 ], [ 0, %if.then71.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_start_v4l2_encode_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_vapi(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_stop_v4l2_encode_stream(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_v4l2_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  %vt.i.i.i.i = alloca %struct.v4l2_tuner, align 4
  %wait.i.i.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %6 = load i32, ptr @ivtv_debug, align 4
  %7 = and i32 %6, 1040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1040, i32 %7)
  %.not = icmp eq i32 %7, 1040
  br i1 %.not, label %do.end, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 19, i32 4
  %name5 = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 2
  %8 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name5, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %count, ptr noundef %9) #11
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %serialize_lock = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 40
  %call9 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %serialize_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %call13 = tail call i32 @ivtv_start_capture(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %10 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags, align 4
  %and16 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not.i = icmp eq i32 %count, 0
  br i1 %tobool.not.i, label %if.then15.cond.end.i_crit_edge, label %cond.true.i

if.then15.cond.end.i_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then15
  %itv1.i.i = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 1
  %12 = ptrtoint ptr %itv1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %itv1.i.i, align 8
  %capturing.i.i = getelementptr inbounds %struct.ivtv, ptr %13, i32 0, i32 43
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing.i.i, i32 noundef 4) #8
  %14 = ptrtoint ptr %capturing.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %capturing.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cond.true.i.if.end9.i.i_crit_edge

cond.true.i.if.end9.i.i_crit_edge:                ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %cond.true.i
  %fh.i.i = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 5
  %16 = ptrtoint ptr %fh.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fh.i.i, align 8
  %cmp2.i.i = icmp eq ptr %17, null
  br i1 %cmp2.i.i, label %do.body.i.i, label %land.lhs.true.i.i.if.end9.i.i_crit_edge

land.lhs.true.i.i.if.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

do.body.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %18 = load i32, ptr @ivtv_debug, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.cond.end.i_crit_edge, label %do.end.i.i

do.body.i.i.cond.end.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i = getelementptr inbounds %struct.ivtv, ptr %13, i32 0, i32 19, i32 4
  %name5.i.i = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 2
  %19 = ptrtoint ptr %name5.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name5.i.i, align 4
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name.i.i, ptr noundef %20) #11
  br label %cond.end.i

if.end9.i.i:                                      ; preds = %land.lhs.true.i.i.if.end9.i.i_crit_edge, %cond.true.i.if.end9.i.i_crit_edge
  %type.i.i = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 3
  %21 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i.i, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %22, label %if.end9.i.i.if.end17.i.i_crit_edge [
    i32 6, label %if.end9.i.i.if.then16.i.i_crit_edge
    i32 2, label %land.lhs.true13.i.i
  ]

if.end9.i.i.if.then16.i.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i.i

if.end9.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

land.lhs.true13.i.i:                              ; preds = %if.end9.i.i
  %in.i.i.i = getelementptr inbounds %struct.ivtv, ptr %13, i32 0, i32 89, i32 14
  %24 = ptrtoint ptr %in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %in.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp.i.not.i.i = icmp eq i32 %25, 4
  br i1 %cmp.i.not.i.i, label %land.lhs.true13.i.i.if.end17.i.i_crit_edge, label %land.lhs.true13.i.i.if.then16.i.i_crit_edge

land.lhs.true13.i.i.if.then16.i.i_crit_edge:      ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i.i

land.lhs.true13.i.i.if.end17.i.i_crit_edge:       ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

if.then16.i.i:                                    ; preds = %land.lhs.true13.i.i.if.then16.i.i_crit_edge, %if.end9.i.i.if.then16.i.i_crit_edge
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then16.i.i, %land.lhs.true13.i.i.if.end17.i.i_crit_edge, %if.end9.i.i.if.end17.i.i_crit_edge
  %tobool52.not.i.i = phi i1 [ true, %if.then16.i.i ], [ false, %land.lhs.true13.i.i.if.end17.i.i_crit_edge ], [ false, %if.end9.i.i.if.end17.i.i_crit_edge ]
  %26 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i.i, i32 0, i32 2
  %28 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i.i, i32 0, i32 3
  %29 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i.i, i32 0, i32 3, i32 1
  %audmode.i.i.i.i = getelementptr inbounds %struct.v4l2_tuner, ptr %vt.i.i.i.i, i32 0, i32 7
  %rxsubchans.i.i.i.i = getelementptr inbounds %struct.v4l2_tuner, ptr %vt.i.i.i.i, i32 0, i32 6
  %q_io.i.i.i = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 23
  %q_full28.i.i.i = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 22
  %s_flags57.i.i.i = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool71.not.i.i.i = icmp eq i32 %and16, 0
  %waitq.i.i.i = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 16
  %buffers.i.i.i = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 22, i32 1
  %dma_pts48.i.i.i = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 14
  %name139.i.i.i = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 2
  %sliced_mpeg_buf.i.i = getelementptr inbounds %struct.ivtv, ptr %13, i32 0, i32 89, i32 28
  %q_free.i.i = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 21
  %inserted_frame.i.i = getelementptr inbounds %struct.ivtv, ptr %13, i32 0, i32 89, i32 29
  %vbi_data_inserted.i.i = getelementptr inbounds %struct.ivtv, ptr %13, i32 0, i32 85
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end47.i.i.for.cond.i.i_crit_edge, %if.end17.i.i
  %tot_written.0.i.i = phi i32 [ 0, %if.end17.i.i ], [ %add48.i.i, %if.end47.i.i.for.cond.i.i_crit_edge ]
  %30 = ptrtoint ptr %itv1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %itv1.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.ivtv, ptr %31, i32 0, i32 42, i32 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i.i.i) #8
  %32 = ptrtoint ptr %wait.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %wait.i.i.i, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !191) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i.i, align 8
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %26, align 4
  %38 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @autoremove_wake_function, ptr %27, align 4
  %39 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %28, ptr %28, align 4
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %28, ptr %29, align 4
  %enc_mem.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 15
  %pgm_info_offset.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 75
  %pgm_info_num.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 76
  %name.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 19, i32 4
  %pgm_info_write_idx.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 77
  %pgm_info.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 79
  %mpg_data_received.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 84
  %vbi_data_inserted.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 85
  %dualwatch_jiffies.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 87
  %audio_mode.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 20, i32 11, i32 3
  %subdevs.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 19, i32 2
  %dualwatch_stereo_mode.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 88
  %s_flags.i.i.i = getelementptr %struct.ivtv, ptr %31, i32 0, i32 42, i32 2, i32 7
  %q_full.i.i.i = getelementptr %struct.ivtv, ptr %31, i32 0, i32 42, i32 2, i32 22
  %dma_pts.i.i.i = getelementptr %struct.ivtv, ptr %31, i32 0, i32 42, i32 2, i32 14
  %type18.i.i.i = getelementptr %struct.ivtv, ptr %31, i32 0, i32 42, i32 2, i32 3
  %q_free.i.i.i = getelementptr %struct.ivtv, ptr %31, i32 0, i32 42, i32 2, i32 21
  %readpos.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 89, i32 28, i32 6
  %bytesused.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 89, i32 28, i32 5
  %serialize_lock.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 40
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %signal_pending.exit.i.i.i.while.cond.i.i.i_crit_edge, %for.cond.i.i
  %41 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i93.i.i = icmp eq i32 %42, 0
  br i1 %cmp.i93.i.i, label %if.then.i.i.i, label %while.cond.i.i.i.if.end23.i.i.i_crit_edge

while.cond.i.i.i.if.end23.i.i.i_crit_edge:        ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i.i.i

if.then.i.i.i:                                    ; preds = %while.cond.i.i.i
  %43 = ptrtoint ptr %enc_mem.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %enc_mem.i.i.i.i, align 8
  %45 = ptrtoint ptr %pgm_info_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pgm_info_offset.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %44, i32 %46
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !201
  %48 = call i32 @llvm.bswap.i32(i32 %47) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  %49 = ptrtoint ptr %pgm_info_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pgm_info_offset.i.i.i.i, align 8
  %sub.i.i.i.i = add i32 %48, -4
  %sub3.i.i.i.i = sub i32 %sub.i.i.i.i, %50
  %div.i.i.i.i = udiv i32 %sub3.i.i.i.i, 24
  %51 = ptrtoint ptr %pgm_info_num.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pgm_info_num.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i.i.i, i32 %52)
  %cmp.not.i.i.i.i = icmp ult i32 %div.i.i.i.i, %52
  br i1 %cmp.not.i.i.i.i, label %if.end11.i.i.i.i, label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %53 = load i32, ptr @ivtv_debug, align 4
  %and.i158.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i158.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i158.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.ivtv_update_pgm_info.exit.i.i.i_crit_edge, label %do.end.i.i.i.i

do.body.i.i.i.i.ivtv_update_pgm_info.exit.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_update_pgm_info.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name.i.i.i.i, i32 noundef %div.i.i.i.i, i32 noundef %52) #11
  br label %ivtv_update_pgm_info.exit.i.i.i

if.end11.i.i.i.i:                                 ; preds = %if.then.i.i.i
  %add.i.i.i.i = add i32 %div.i.i.i.i, %52
  %54 = ptrtoint ptr %pgm_info_write_idx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pgm_info_write_idx.i.i.i.i, align 8
  %sub13.i.i.i.i = sub i32 %add.i.i.i.i, %55
  %rem.i.i.i.i = urem i32 %sub13.i.i.i.i, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i.i)
  %cmp15143.i.i.i.i = icmp sgt i32 %rem.i.i.i.i, 0
  br i1 %cmp15143.i.i.i.i, label %if.end11.i.i.i.i.while.body.i.i.i.i_crit_edge, label %if.end11.i.i.i.i.while.end.i.i.i.i_crit_edge

if.end11.i.i.i.i.while.end.i.i.i.i_crit_edge:     ; preds = %if.end11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i.i

if.end11.i.i.i.i.while.body.i.i.i.i_crit_edge:    ; preds = %if.end11.i.i.i.i
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge, %if.end11.i.i.i.i.while.body.i.i.i.i_crit_edge
  %i.0144.i.i.i.i = phi i32 [ %inc.i.i.i.i, %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ 0, %if.end11.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %56 = ptrtoint ptr %pgm_info_write_idx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pgm_info_write_idx.i.i.i.i, align 8
  %add17.i.i.i.i = add i32 %57, %i.0144.i.i.i.i
  %58 = ptrtoint ptr %pgm_info_num.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pgm_info_num.i.i.i.i, align 4
  %rem19.i.i.i.i = urem i32 %add17.i.i.i.i, %59
  %add.ptr21.i.i.i.i = getelementptr %struct.v4l2_enc_idx_entry, ptr %pgm_info.i.i.i.i, i32 %rem19.i.i.i.i
  %60 = ptrtoint ptr %pgm_info_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pgm_info_offset.i.i.i.i, align 8
  %add23.i.i.i.i = add i32 %61, 4
  %mul.i.i.i.i = mul i32 %rem19.i.i.i.i, 24
  %add24.i.i.i.i = add i32 %add23.i.i.i.i, %mul.i.i.i.i
  %62 = ptrtoint ptr %enc_mem.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %enc_mem.i.i.i.i, align 8
  %add28.i.i.i.i = add i32 %add24.i.i.i.i, 4
  %add.ptr29.i.i.i.i = getelementptr i8, ptr %63, i32 %add28.i.i.i.i
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i.i.i.i) #8, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %65 = ptrtoint ptr %enc_mem.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %enc_mem.i.i.i.i, align 8
  %add36.i.i.i.i = add i32 %add24.i.i.i.i, 8
  %add.ptr37.i.i.i.i = getelementptr i8, ptr %66, i32 %add36.i.i.i.i
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i.i.i.i) #8, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  %68 = zext i32 %67 to i64
  %69 = zext i32 %64 to i64
  %70 = shl nuw i64 %69, 32
  %71 = or i64 %70, %68
  %72 = call i64 @llvm.bswap.i64(i64 %71) #8
  %73 = ptrtoint ptr %add.ptr21.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %add.ptr21.i.i.i.i, align 8
  %74 = ptrtoint ptr %mpg_data_received.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %mpg_data_received.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %72, i64 %75)
  %cmp44.i.i.i.i = icmp ugt i64 %72, %75
  br i1 %cmp44.i.i.i.i, label %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge, label %cleanup.i.i.i.i

while.body.i.i.i.i.while.end.i.i.i.i_crit_edge:   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i.i

cleanup.i.i.i.i:                                  ; preds = %while.body.i.i.i.i
  %76 = ptrtoint ptr %vbi_data_inserted.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %vbi_data_inserted.i.i.i.i, align 8
  %add49.i.i.i.i = add i64 %77, %72
  %78 = ptrtoint ptr %add.ptr21.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %add49.i.i.i.i, ptr %add.ptr21.i.i.i.i, align 8
  %79 = ptrtoint ptr %enc_mem.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %enc_mem.i.i.i.i, align 8
  %add.ptr53.i.i.i.i = getelementptr i8, ptr %80, i32 %add24.i.i.i.i
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.i.i.i.i) #8, !srcloc !201
  %82 = call i32 @llvm.bswap.i32(i32 %81) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  %length.i.i.i.i = getelementptr %struct.v4l2_enc_idx_entry, ptr %pgm_info.i.i.i.i, i32 %rem19.i.i.i.i, i32 2
  %83 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %length.i.i.i.i, align 8
  %84 = ptrtoint ptr %enc_mem.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %enc_mem.i.i.i.i, align 8
  %add60.i.i.i.i = add i32 %add24.i.i.i.i, 16
  %add.ptr61.i.i.i.i = getelementptr i8, ptr %85, i32 %add60.i.i.i.i
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61.i.i.i.i) #8, !srcloc !201
  %87 = call i32 @llvm.bswap.i32(i32 %86) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  %conv65.i.i.i.i = zext i32 %87 to i64
  %88 = ptrtoint ptr %enc_mem.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %enc_mem.i.i.i.i, align 8
  %add69.i.i.i.i = add i32 %add24.i.i.i.i, 20
  %add.ptr70.i.i.i.i = getelementptr i8, ptr %89, i32 %add69.i.i.i.i
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70.i.i.i.i) #8, !srcloc !201
  %91 = lshr i32 %90, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  %and74.i.i.i.i = and i32 %91, 1
  %conv75.i.i.i.i = zext i32 %and74.i.i.i.i to i64
  %shl76.i.i.i.i = shl nuw nsw i64 %conv75.i.i.i.i, 32
  %add77.i.i.i.i = or i64 %shl76.i.i.i.i, %conv65.i.i.i.i
  %pts.i.i.i.i = getelementptr %struct.v4l2_enc_idx_entry, ptr %pgm_info.i.i.i.i, i32 %rem19.i.i.i.i, i32 1
  %92 = ptrtoint ptr %pts.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %add77.i.i.i.i, ptr %pts.i.i.i.i, align 8
  %93 = ptrtoint ptr %enc_mem.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %enc_mem.i.i.i.i, align 8
  %add81.i.i.i.i = add i32 %add24.i.i.i.i, 12
  %add.ptr82.i.i.i.i = getelementptr i8, ptr %94, i32 %add81.i.i.i.i
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i.i) #8, !srcloc !201
  %96 = lshr i32 %95, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  %and86.i.i.i.i = and i32 %96, 7
  %arrayidx.i.i.i.i = getelementptr [8 x i32], ptr @__const.ivtv_update_pgm_info.mapping, i32 0, i32 %and86.i.i.i.i
  %97 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr %struct.v4l2_enc_idx_entry, ptr %pgm_info.i.i.i.i, i32 %rem19.i.i.i.i, i32 3
  %99 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %flags.i.i.i.i, align 4
  %inc.i.i.i.i = add nuw nsw i32 %i.0144.i.i.i.i, 1
  %cmp15.i.i.i.i = icmp slt i32 %inc.i.i.i.i, %rem.i.i.i.i
  br i1 %cmp15.i.i.i.i, label %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.while.end.i.i.i.i_crit_edge

cleanup.i.i.i.i.while.end.i.i.i.i_crit_edge:      ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i.i

cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge:     ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i.i

while.end.i.i.i.i:                                ; preds = %cleanup.i.i.i.i.while.end.i.i.i.i_crit_edge, %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge, %if.end11.i.i.i.i.while.end.i.i.i.i_crit_edge
  %i.0.lcssa.i.i.i.i = phi i32 [ 0, %if.end11.i.i.i.i.while.end.i.i.i.i_crit_edge ], [ %i.0144.i.i.i.i, %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge ], [ %inc.i.i.i.i, %cleanup.i.i.i.i.while.end.i.i.i.i_crit_edge ]
  %100 = ptrtoint ptr %pgm_info_write_idx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pgm_info_write_idx.i.i.i.i, align 8
  %add91.i.i.i.i = add i32 %101, %i.0.lcssa.i.i.i.i
  %102 = ptrtoint ptr %pgm_info_num.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pgm_info_num.i.i.i.i, align 4
  %rem93.i.i.i.i = urem i32 %add91.i.i.i.i, %103
  store i32 %rem93.i.i.i.i, ptr %pgm_info_write_idx.i.i.i.i, align 8
  br label %ivtv_update_pgm_info.exit.i.i.i

ivtv_update_pgm_info.exit.i.i.i:                  ; preds = %while.end.i.i.i.i, %do.end.i.i.i.i, %do.body.i.i.i.i.ivtv_update_pgm_info.exit.i.i.i_crit_edge
  %104 = ptrtoint ptr %dualwatch_jiffies.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dualwatch_jiffies.i.i.i, align 4
  %add.i.i.i = add i32 %105, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %106 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp6.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp6.i.i.i, label %if.then7.i.i.i, label %ivtv_update_pgm_info.exit.i.i.i.if.end.i.i.i_crit_edge

ivtv_update_pgm_info.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %ivtv_update_pgm_info.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then7.i.i.i:                                   ; preds = %ivtv_update_pgm_info.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %107 = load volatile i32, ptr @jiffies, align 128
  %108 = ptrtoint ptr %dualwatch_jiffies.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %dualwatch_jiffies.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %vt.i.i.i.i) #8
  %109 = ptrtoint ptr %audio_mode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %audio_mode.i.i.i.i, align 4
  %call.i.i94.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %110) #8
  %111 = call ptr @memset(ptr %vt.i.i.i.i, i32 0, i32 84)
  %112 = ptrtoint ptr %subdevs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %.pn79.i.i.i.i = load ptr, ptr %subdevs.i.i.i.i, align 4
  %cmp.not81.i.i.i.i = icmp eq ptr %.pn79.i.i.i.i, %subdevs.i.i.i.i
  br i1 %cmp.not81.i.i.i.i, label %if.then7.i.i.i.do.end.i161.i.i.i_crit_edge, label %if.then7.i.i.i.for.body.i.i.i.i_crit_edge

if.then7.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.then7.i.i.i
  br label %for.body.i.i.i.i

if.then7.i.i.i.do.end.i161.i.i.i_crit_edge:       ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i161.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then7.i.i.i.for.body.i.i.i.i_crit_edge
  %.pn82.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn79.i.i.i.i, %if.then7.i.i.i.for.body.i.i.i.i_crit_edge ]
  %__sd.083.i.i.i.i = getelementptr i8, ptr %.pn82.i.i.i.i, i32 -80
  %ops.i.i.i.i = getelementptr i8, ptr %.pn82.i.i.i.i, i32 24
  %113 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ops.i.i.i.i, align 4
  %tuner.i.i.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %tuner.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tuner.i.i.i.i, align 4
  %tobool.not.i159.i.i.i = icmp eq ptr %116, null
  br i1 %tobool.not.i159.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %g_tuner.i.i.i.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %116, i32 0, i32 5
  %117 = ptrtoint ptr %g_tuner.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %g_tuner.i.i.i.i, align 4
  %tobool6.not.i.i.i.i = icmp eq ptr %118, null
  br i1 %tobool6.not.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i.i.i.i = call i32 %118(ptr noundef %__sd.083.i.i.i.i, ptr noundef nonnull %vt.i.i.i.i) #8
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %119 = ptrtoint ptr %.pn82.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pn.i.i.i.i = load ptr, ptr %.pn82.i.i.i.i, align 4
  %cmp.not.i160.i.i.i = icmp eq ptr %.pn.i.i.i.i, %subdevs.i.i.i.i
  br i1 %cmp.not.i160.i.i.i, label %for.inc.i.i.i.i.do.end.i161.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.do.end.i161.i.i.i_crit_edge:      ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i161.i.i.i

do.end.i161.i.i.i:                                ; preds = %for.inc.i.i.i.i.do.end.i161.i.i.i_crit_edge, %if.then7.i.i.i.do.end.i161.i.i.i_crit_edge
  %120 = ptrtoint ptr %audmode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %audmode.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %121)
  %cmp18.i.i.i.i = icmp eq i32 %121, 4
  br i1 %cmp18.i.i.i.i, label %land.lhs.true19.i.i.i.i, label %do.end.i161.i.i.i.if.end22.i.i.i.i_crit_edge

do.end.i161.i.i.i.if.end22.i.i.i.i_crit_edge:     ; preds = %do.end.i161.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i.i.i

land.lhs.true19.i.i.i.i:                          ; preds = %do.end.i161.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %rxsubchans.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rxsubchans.i.i.i.i, align 4
  %and.i162.i.i.i = and i32 %123, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162.i.i.i)
  %tobool20.not.i.i.i.i = icmp eq i32 %and.i162.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %tobool20.not.i.i.i.i, i32 %call.i.i94.i.i, i32 2
  br label %if.end22.i.i.i.i

if.end22.i.i.i.i:                                 ; preds = %land.lhs.true19.i.i.i.i, %do.end.i161.i.i.i.if.end22.i.i.i.i_crit_edge
  %new_stereo_mode.0.i.i.i.i = phi i32 [ %call.i.i94.i.i, %do.end.i161.i.i.i.if.end22.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i, %land.lhs.true19.i.i.i.i ]
  %124 = ptrtoint ptr %dualwatch_stereo_mode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dualwatch_stereo_mode.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %new_stereo_mode.0.i.i.i.i, i32 %125)
  %cmp23.i.i.i.i = icmp eq i32 %new_stereo_mode.0.i.i.i.i, %125
  br i1 %cmp23.i.i.i.i, label %if.end22.i.i.i.i.ivtv_dualwatch.exit.i.i.i_crit_edge, label %do.body26.i.i.i.i

if.end22.i.i.i.i.ivtv_dualwatch.exit.i.i.i_crit_edge: ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_dualwatch.exit.i.i.i

do.body26.i.i.i.i:                                ; preds = %if.end22.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %126 = load i32, ptr @ivtv_debug, align 4
  %and27.i.i.i.i = and i32 %126, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i.i.i)
  %tobool28.not.i.i.i.i = icmp eq i32 %and27.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i, label %do.body26.i.i.i.i.do.end39.i.i.i.i_crit_edge, label %do.end32.i.i.i.i

do.body26.i.i.i.i.do.end39.i.i.i.i_crit_edge:     ; preds = %do.body26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i.i.i.i

do.end32.i.i.i.i:                                 ; preds = %do.body26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call36.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name.i.i.i.i, i32 noundef %125, i32 noundef %new_stereo_mode.0.i.i.i.i) #11
  br label %do.end39.i.i.i.i

do.end39.i.i.i.i:                                 ; preds = %do.end32.i.i.i.i, %do.body26.i.i.i.i.do.end39.i.i.i.i_crit_edge
  %127 = ptrtoint ptr %audio_mode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %audio_mode.i.i.i.i, align 4
  %handler.i.i.i.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %handler.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %handler.i.i.i.i.i.i, align 8
  %lock.i.i.i.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %lock.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %lock.i.i.i.i.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %132, i32 noundef 0) #8
  %call.i.i.i.i.i = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %128, i32 noundef %new_stereo_mode.0.i.i.i.i) #8
  %133 = ptrtoint ptr %handler.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %handler.i.i.i.i.i.i, align 8
  %lock.i4.i.i.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %lock.i4.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %lock.i4.i.i.i.i.i, align 4
  call void @mutex_unlock(ptr noundef %136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool43.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool43.not.i.i.i.i, label %do.end39.i.i.i.i.ivtv_dualwatch.exit.i.i.i_crit_edge, label %do.body45.i.i.i.i

do.end39.i.i.i.i.ivtv_dualwatch.exit.i.i.i_crit_edge: ; preds = %do.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_dualwatch.exit.i.i.i

do.body45.i.i.i.i:                                ; preds = %do.end39.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %137 = load i32, ptr @ivtv_debug, align 4
  %and46.i.i.i.i = and i32 %137, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i.i.i)
  %tobool47.not.i.i.i.i = icmp eq i32 %and46.i.i.i.i, 0
  br i1 %tobool47.not.i.i.i.i, label %do.body45.i.i.i.i.ivtv_dualwatch.exit.i.i.i_crit_edge, label %do.end51.i.i.i.i

do.body45.i.i.i.i.ivtv_dualwatch.exit.i.i.i_crit_edge: ; preds = %do.body45.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_dualwatch.exit.i.i.i

do.end51.i.i.i.i:                                 ; preds = %do.body45.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call56.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name.i.i.i.i) #11
  br label %ivtv_dualwatch.exit.i.i.i

ivtv_dualwatch.exit.i.i.i:                        ; preds = %do.end51.i.i.i.i, %do.body45.i.i.i.i.ivtv_dualwatch.exit.i.i.i_crit_edge, %do.end39.i.i.i.i.ivtv_dualwatch.exit.i.i.i_crit_edge, %if.end22.i.i.i.i.ivtv_dualwatch.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %vt.i.i.i.i) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %ivtv_dualwatch.exit.i.i.i, %ivtv_update_pgm_info.exit.i.i.i.if.end.i.i.i_crit_edge
  %138 = ptrtoint ptr %s_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %s_flags.i.i.i, align 4
  %140 = and i32 %139, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i.i.i = icmp eq i32 %140, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.end19.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.i.if.end19.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %141 = ptrtoint ptr %s_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %s_flags.i.i.i, align 4
  %143 = and i32 %142, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool12.not.i.i.i = icmp eq i32 %143, 0
  br i1 %tobool12.not.i.i.i, label %while.cond14.preheader.i.i.i, label %land.lhs.true.i.i.i.if.end19.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end19.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i.i

while.cond14.preheader.i.i.i:                     ; preds = %land.lhs.true.i.i.i
  %call15182.i.i.i = call ptr @ivtv_dequeue(ptr noundef %arrayidx.i.i.i, ptr noundef %q_full.i.i.i) #8
  %tobool16.not183.i.i.i = icmp eq ptr %call15182.i.i.i, null
  br i1 %tobool16.not183.i.i.i, label %while.cond14.preheader.i.i.i.if.end19.i.i.i_crit_edge, label %while.cond14.preheader.i.i.i.while.body17.i.i.i_crit_edge

while.cond14.preheader.i.i.i.while.body17.i.i.i_crit_edge: ; preds = %while.cond14.preheader.i.i.i
  br label %while.body17.i.i.i

while.cond14.preheader.i.i.i.if.end19.i.i.i_crit_edge: ; preds = %while.cond14.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i.i

while.body17.i.i.i:                               ; preds = %while.body17.i.i.i.while.body17.i.i.i_crit_edge, %while.cond14.preheader.i.i.i.while.body17.i.i.i_crit_edge
  %call15184.i.i.i = phi ptr [ %call15.i.i.i, %while.body17.i.i.i.while.body17.i.i.i_crit_edge ], [ %call15182.i.i.i, %while.cond14.preheader.i.i.i.while.body17.i.i.i_crit_edge ]
  %144 = ptrtoint ptr %dma_pts.i.i.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %dma_pts.i.i.i, align 8
  %146 = ptrtoint ptr %type18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %type18.i.i.i, align 8
  call void @ivtv_process_vbi_data(ptr noundef %31, ptr noundef nonnull %call15184.i.i.i, i64 noundef %145, i32 noundef %147) #8
  call void @ivtv_enqueue(ptr noundef %arrayidx.i.i.i, ptr noundef nonnull %call15184.i.i.i, ptr noundef %q_free.i.i.i) #8
  %call15.i.i.i = call ptr @ivtv_dequeue(ptr noundef %arrayidx.i.i.i, ptr noundef %q_full.i.i.i) #8
  %tobool16.not.i.i.i = icmp eq ptr %call15.i.i.i, null
  br i1 %tobool16.not.i.i.i, label %while.body17.i.i.i.if.end19.i.i.i_crit_edge, label %while.body17.i.i.i.while.body17.i.i.i_crit_edge

while.body17.i.i.i.while.body17.i.i.i_crit_edge:  ; preds = %while.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body17.i.i.i

while.body17.i.i.i.if.end19.i.i.i_crit_edge:      ; preds = %while.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %while.body17.i.i.i.if.end19.i.i.i_crit_edge, %while.cond14.preheader.i.i.i.if.end19.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end19.i.i.i_crit_edge, %if.end.i.i.i.if.end19.i.i.i_crit_edge
  %148 = ptrtoint ptr %readpos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %readpos.i.i.i, align 4
  %150 = ptrtoint ptr %bytesused.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %bytesused.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %151)
  %cmp20.not.i.i.i = icmp eq i32 %149, %151
  br i1 %cmp20.not.i.i.i, label %if.end19.i.i.i.if.end23.i.i.i_crit_edge, label %ivtv_get_buffer.exit.i.i

if.end19.i.i.i.if.end23.i.i.i_crit_edge:          ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.end19.i.i.i.if.end23.i.i.i_crit_edge, %while.cond.i.i.i.if.end23.i.i.i_crit_edge
  %call24.i.i.i = call ptr @ivtv_dequeue(ptr noundef %arrayidx, ptr noundef %q_io.i.i.i) #8
  %tobool25.not.i.i.i = icmp eq ptr %call24.i.i.i, null
  br i1 %tobool25.not.i.i.i, label %if.end27.i.i.i, label %if.end23.i.i.i.ivtv_get_buffer.exit.thread122.i.i_crit_edge

if.end23.i.i.i.ivtv_get_buffer.exit.thread122.i.i_crit_edge: ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_get_buffer.exit.thread122.i.i

if.end27.i.i.i:                                   ; preds = %if.end23.i.i.i
  %call29.i.i.i = call ptr @ivtv_dequeue(ptr noundef %arrayidx, ptr noundef %q_full28.i.i.i) #8
  %tobool30.not.i.i.i = icmp eq ptr %call29.i.i.i, null
  br i1 %tobool30.not.i.i.i, label %if.end52.i.i.i, label %if.then31.i.i.i

if.then31.i.i.i:                                  ; preds = %if.end27.i.i.i
  %b_flags.i.i.i = getelementptr inbounds %struct.ivtv_buffer, ptr %call29.i.i.i, i32 0, i32 2
  %152 = ptrtoint ptr %b_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %b_flags.i.i.i, align 4
  %154 = and i16 %153, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %cmp32.i.i.i = icmp eq i16 %154, 0
  br i1 %cmp32.i.i.i, label %if.then31.i.i.i.ivtv_get_buffer.exit.thread122.i.i_crit_edge, label %if.end35.i.i.i

if.then31.i.i.i.ivtv_get_buffer.exit.thread122.i.i_crit_edge: ; preds = %if.then31.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_get_buffer.exit.thread122.i.i

if.end35.i.i.i:                                   ; preds = %if.then31.i.i.i
  %and38.i.i.i = and i16 %153, -2
  %155 = ptrtoint ptr %b_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %and38.i.i.i, ptr %b_flags.i.i.i, align 4
  %156 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %type.i.i, align 8
  %158 = zext i32 %157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %157, label %if.then47.i.i.i [
    i32 0, label %if.then43.i.i.i
    i32 6, label %if.end35.i.i.i.ivtv_get_buffer.exit.thread122.i.i_crit_edge
  ]

if.end35.i.i.i.ivtv_get_buffer.exit.thread122.i.i_crit_edge: ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_get_buffer.exit.thread122.i.i

if.then43.i.i.i:                                  ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ivtv_buf_swap(ptr noundef nonnull %call29.i.i.i) #8
  br label %ivtv_get_buffer.exit.thread122.i.i

if.then47.i.i.i:                                  ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %159 = ptrtoint ptr %dma_pts48.i.i.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %dma_pts48.i.i.i, align 8
  call void @ivtv_process_vbi_data(ptr noundef %31, ptr noundef nonnull %call29.i.i.i, i64 noundef %160, i32 noundef %157) #8
  br label %ivtv_get_buffer.exit.thread122.i.i

if.end52.i.i.i:                                   ; preds = %if.end27.i.i.i
  %161 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %162)
  %cmp54.not.i.i.i = icmp eq i32 %162, 6
  br i1 %cmp54.not.i.i.i, label %if.end52.i.i.i.if.end70.i.i.i_crit_edge, label %land.lhs.true56.i.i.i

if.end52.i.i.i.if.end70.i.i.i_crit_edge:          ; preds = %if.end52.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.i.i.i

land.lhs.true56.i.i.i:                            ; preds = %if.end52.i.i.i
  %163 = ptrtoint ptr %s_flags57.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %s_flags57.i.i.i, align 4
  %165 = and i32 %164, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool59.not.i.i.i = icmp eq i32 %165, 0
  br i1 %tobool59.not.i.i.i, label %do.body.i.i.i, label %land.lhs.true56.i.i.i.if.end70.i.i.i_crit_edge

land.lhs.true56.i.i.i.if.end70.i.i.i_crit_edge:   ; preds = %land.lhs.true56.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.i.i.i

do.body.i.i.i:                                    ; preds = %land.lhs.true56.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %166 = load i32, ptr @ivtv_debug, align 4
  %and61.i.i.i = and i32 %166, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i.i)
  %tobool62.not.i.i.i = icmp eq i32 %and61.i.i.i, 0
  br i1 %tobool62.not.i.i.i, label %do.body.i.i.i.if.then20.i.i_crit_edge, label %do.end.i.i.i

do.body.i.i.i.if.then20.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %167 = ptrtoint ptr %name139.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %name139.i.i.i, align 4
  %call66.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name.i.i.i.i, ptr noundef %168) #11
  br label %if.then20.i.i

if.end70.i.i.i:                                   ; preds = %land.lhs.true56.i.i.i.if.end70.i.i.i_crit_edge, %if.end52.i.i.i.if.end70.i.i.i_crit_edge
  br i1 %tobool71.not.i.i.i, label %if.end73.i.i.i, label %if.end70.i.i.i.if.then20.thread196.i.i_crit_edge

if.end70.i.i.i.if.then20.thread196.i.i_crit_edge: ; preds = %if.end70.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.thread196.i.i

if.end73.i.i.i:                                   ; preds = %if.end70.i.i.i
  call void @mutex_unlock(ptr noundef %serialize_lock.i.i.i) #8
  call void @prepare_to_wait(ptr noundef %waitq.i.i.i, ptr noundef nonnull %wait.i.i.i, i32 noundef 1) #8
  %169 = ptrtoint ptr %buffers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %buffers.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool75.not.i.i.i = icmp eq i32 %170, 0
  br i1 %tobool75.not.i.i.i, label %if.then76.i.i.i, label %if.end73.i.i.i.if.end77.i.i.i_crit_edge

if.end73.i.i.i.if.end77.i.i.i_crit_edge:          ; preds = %if.end73.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i.i.i

if.then76.i.i.i:                                  ; preds = %if.end73.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @schedule() #8
  br label %if.end77.i.i.i

if.end77.i.i.i:                                   ; preds = %if.then76.i.i.i, %if.end73.i.i.i.if.end77.i.i.i_crit_edge
  call void @finish_wait(ptr noundef %waitq.i.i.i, ptr noundef nonnull %wait.i.i.i) #8
  call void @mutex_lock_nested(ptr noundef %serialize_lock.i.i.i, i32 noundef 0) #8
  %171 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %task.i.i.i, align 8
  %stack.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %stack.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %stack.i.i.i.i.i, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %174, align 4
  %177 = and i32 %176, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool.not.i165.i.i.i = icmp eq i32 %177, 0
  br i1 %tobool.not.i165.i.i.i, label %signal_pending.exit.i.i.i, label %if.end77.i.i.i.do.body85.i.i.i_crit_edge, !prof !209

if.end77.i.i.i.do.body85.i.i.i_crit_edge:         ; preds = %if.end77.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body85.i.i.i

signal_pending.exit.i.i.i:                        ; preds = %if.end77.i.i.i
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %174, align 4
  %and1.i.i.i.i.i.i.i.i = and i32 %179, 1
  %tobool83.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i.i, 0
  br i1 %tobool83.not.i.i.i, label %signal_pending.exit.i.i.i.while.cond.i.i.i_crit_edge, label %signal_pending.exit.i.i.i.do.body85.i.i.i_crit_edge

signal_pending.exit.i.i.i.do.body85.i.i.i_crit_edge: ; preds = %signal_pending.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body85.i.i.i

signal_pending.exit.i.i.i.while.cond.i.i.i_crit_edge: ; preds = %signal_pending.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i

do.body85.i.i.i:                                  ; preds = %signal_pending.exit.i.i.i.do.body85.i.i.i_crit_edge, %if.end77.i.i.i.do.body85.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %180 = load i32, ptr @ivtv_debug, align 4
  %and86.i.i.i = and i32 %180, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i.i.i)
  %tobool87.not.i.i.i = icmp eq i32 %and86.i.i.i, 0
  br i1 %tobool87.not.i.i.i, label %do.body85.i.i.i.if.then20.thread196.i.i_crit_edge, label %do.end91.i.i.i

do.body85.i.i.i.if.then20.thread196.i.i_crit_edge: ; preds = %do.body85.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.thread196.i.i

do.end91.i.i.i:                                   ; preds = %do.body85.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %181 = ptrtoint ptr %name139.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %name139.i.i.i, align 4
  %call97.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name.i.i.i.i, ptr noundef %182) #11
  br label %if.then20.thread196.i.i

ivtv_get_buffer.exit.thread122.i.i:               ; preds = %if.then47.i.i.i, %if.then43.i.i.i, %if.end35.i.i.i.ivtv_get_buffer.exit.thread122.i.i_crit_edge, %if.then31.i.i.i.ivtv_get_buffer.exit.thread122.i.i_crit_edge, %if.end23.i.i.i.ivtv_get_buffer.exit.thread122.i.i_crit_edge
  %retval.0.i.ph.i.i = phi ptr [ %call29.i.i.i, %if.then43.i.i.i ], [ %call29.i.i.i, %if.then47.i.i.i ], [ %call29.i.i.i, %if.end35.i.i.i.ivtv_get_buffer.exit.thread122.i.i_crit_edge ], [ %call29.i.i.i, %if.then31.i.i.i.ivtv_get_buffer.exit.thread122.i.i_crit_edge ], [ %call24.i.i.i, %if.end23.i.i.i.ivtv_get_buffer.exit.thread122.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i.i.i) #8
  br label %if.end28.i.i

ivtv_get_buffer.exit.i.i:                         ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sliced_mpeg_buf.i.i.i = getelementptr inbounds %struct.ivtv, ptr %31, i32 0, i32 89, i32 28
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i.i.i) #8
  br label %if.end28.i.i

if.then20.thread196.i.i:                          ; preds = %do.end91.i.i.i, %do.body85.i.i.i.if.then20.thread196.i.i_crit_edge, %if.end70.i.i.i.if.then20.thread196.i.i_crit_edge
  %rc.0.ph.ph.i.i = phi i32 [ -4, %do.end91.i.i.i ], [ -4, %do.body85.i.i.i.if.then20.thread196.i.i_crit_edge ], [ -11, %if.end70.i.i.i.if.then20.thread196.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tot_written.0.i.i)
  %tobool21.not199.not.i.i = icmp eq i32 %tot_written.0.i.i, 0
  %tot_written.0.mux201.i.i = select i1 %tobool21.not199.not.i.i, i32 %rc.0.ph.ph.i.i, i32 %tot_written.0.i.i
  br label %cond.end.i

if.then20.i.i:                                    ; preds = %do.end.i.i.i, %do.body.i.i.i.if.then20.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tot_written.0.i.i)
  %tobool21.not.not.i.i = icmp eq i32 %tot_written.0.i.i, 0
  br i1 %tobool21.not.not.i.i, label %if.then25.i.i, label %if.then20.i.i.cond.end.i_crit_edge

if.then20.i.i.cond.end.i_crit_edge:               ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

if.then25.i.i:                                    ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_clear_bit(i32 noundef 7, ptr noundef %s_flags57.i.i.i) #8
  call void @_clear_bit(i32 noundef 8, ptr noundef %s_flags57.i.i.i) #8
  call void @ivtv_release_stream(ptr noundef %arrayidx) #8
  br label %cond.end.i

if.end28.i.i:                                     ; preds = %ivtv_get_buffer.exit.i.i, %ivtv_get_buffer.exit.thread122.i.i
  %retval.0.i126.i.i = phi ptr [ %retval.0.i.ph.i.i, %ivtv_get_buffer.exit.thread122.i.i ], [ %sliced_mpeg_buf.i.i.i, %ivtv_get_buffer.exit.i.i ]
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %tot_written.0.i.i
  %sub.i.i = sub i32 %count, %tot_written.0.i.i
  %183 = ptrtoint ptr %itv1.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %itv1.i.i, align 8
  %bytesused.i96.i.i = getelementptr inbounds %struct.ivtv_buffer, ptr %retval.0.i126.i.i, i32 0, i32 5
  %185 = ptrtoint ptr %bytesused.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %bytesused.i96.i.i, align 4
  %readpos.i97.i.i = getelementptr inbounds %struct.ivtv_buffer, ptr %retval.0.i126.i.i, i32 0, i32 6
  %187 = ptrtoint ptr %readpos.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %readpos.i97.i.i, align 4
  %sub.i98.i.i = sub i32 %186, %188
  %189 = call i32 @llvm.umin.i32(i32 %sub.i98.i.i, i32 %sub.i.i) #8
  %insert_mpeg.i.i.i = getelementptr inbounds %struct.ivtv, ptr %184, i32 0, i32 89, i32 16
  %190 = ptrtoint ptr %insert_mpeg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %insert_mpeg.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool.not.i99.i.i = icmp eq i32 %191, 0
  br i1 %tobool.not.i99.i.i, label %if.end28.i.i.if.end128.i.i.i_crit_edge, label %land.lhs.true.i101.i.i

if.end28.i.i.if.end128.i.i.i_crit_edge:           ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i.i.i

land.lhs.true.i101.i.i:                           ; preds = %if.end28.i.i
  %192 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp2.i.i.i = icmp eq i32 %193, 0
  br i1 %cmp2.i.i.i, label %land.lhs.true3.i.i.i, label %land.lhs.true.i101.i.i.if.end128.i.i.i_crit_edge

land.lhs.true.i101.i.i.if.end128.i.i.i_crit_edge: ; preds = %land.lhs.true.i101.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i101.i.i
  %in.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %184, i32 0, i32 89, i32 14
  %194 = ptrtoint ptr %in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %in.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %195)
  %cmp.i.i.i.i = icmp eq i32 %195, 4
  %sliced_mpeg_buf.i102.i.i = getelementptr inbounds %struct.ivtv, ptr %184, i32 0, i32 89, i32 28
  %cmp7.not.i.i.i = icmp eq ptr %sliced_mpeg_buf.i102.i.i, %retval.0.i126.i.i
  %or.cond.i.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %cmp7.not.i.i.i
  br i1 %or.cond.i.i.i, label %land.lhs.true3.i.i.i.if.end128.i.i.i_crit_edge, label %if.then8.i.i.i

land.lhs.true3.i.i.i.if.end128.i.i.i_crit_edge:   ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i.i.i

if.then8.i.i.i:                                   ; preds = %land.lhs.true3.i.i.i
  %buf9.i.i.i = getelementptr inbounds %struct.ivtv_buffer, ptr %retval.0.i126.i.i, i32 0, i32 4
  %196 = ptrtoint ptr %buf9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %buf9.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %197, i32 %188
  %add.ptr11.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 1
  %search_pack_header.i.i.i = getelementptr inbounds %struct.ivtv, ptr %184, i32 0, i32 81
  %add.ptr13.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %189
  %cmp14231233.i.i.i = icmp ugt ptr %add.ptr13.i.i.i, %add.ptr11.i.i.i
  br i1 %cmp14231233.i.i.i, label %land.rhs.lr.ph.lr.ph.i.i.i, label %if.then8.i.i.i.if.end128.i.i.i_crit_edge

if.then8.i.i.i.if.end128.i.i.i_crit_edge:         ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i.i.i

land.rhs.lr.ph.lr.ph.i.i.i:                       ; preds = %if.then8.i.i.i
  %198 = ptrtoint ptr %search_pack_header.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %search_pack_header.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool12.not.i103.i.i = icmp eq i32 %199, 0
  %conv.i104.i.i = select i1 %tobool12.not.i103.i.i, i8 -32, i8 -70
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr13.i.i.i to i32
  br label %land.rhs.lr.ph.i.i.i

land.rhs.lr.ph.i.i.i:                             ; preds = %if.end77.i106.i.i.land.rhs.lr.ph.i.i.i_crit_edge, %land.rhs.lr.ph.lr.ph.i.i.i
  %ch.0.ph235.i.i.i = phi i8 [ %conv.i104.i.i, %land.rhs.lr.ph.lr.ph.i.i.i ], [ %ch.1.i.i.i, %if.end77.i106.i.i.land.rhs.lr.ph.i.i.i_crit_edge ]
  %p.0.ph234.i.i.i = phi ptr [ %add.ptr11.i.i.i, %land.rhs.lr.ph.lr.ph.i.i.i ], [ %p.1.i.i.i, %if.end77.i106.i.i.land.rhs.lr.ph.i.i.i_crit_edge ]
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %while.cond.backedge.i.i.i.land.rhs.i.i.i_crit_edge, %land.rhs.lr.ph.i.i.i
  %p.0232.i.i.i = phi ptr [ %p.0.ph234.i.i.i, %land.rhs.lr.ph.i.i.i ], [ %add.ptr19.i.i.i, %while.cond.backedge.i.i.i.land.rhs.i.i.i_crit_edge ]
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %p.0232.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %call17.i.i.i = call ptr @memchr(ptr noundef %p.0232.i.i.i, i32 noundef 0, i32 noundef %sub.ptr.sub.i.i.i) #12
  %tobool18.not.i.i.i = icmp eq ptr %call17.i.i.i, null
  br i1 %tobool18.not.i.i.i, label %land.rhs.i.i.i.if.end128.i.i.i_crit_edge, label %while.body.i.i.i

land.rhs.i.i.i.if.end128.i.i.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i.i.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %add.ptr19.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 1
  %add.ptr20.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 15
  %200 = ptrtoint ptr %buf9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %buf9.i.i.i, align 4
  %202 = ptrtoint ptr %bytesused.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %bytesused.i96.i.i, align 4
  %add.ptr23.i.i.i = getelementptr i8, ptr %201, i32 %203
  %cmp24.not.i.i.i = icmp ult ptr %add.ptr20.i.i.i, %add.ptr23.i.i.i
  br i1 %cmp24.not.i.i.i, label %lor.lhs.false.i.i.i, label %while.body.i.i.i.while.cond.backedge.i.i.i_crit_edge

while.body.i.i.i.while.cond.backedge.i.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %while.body.i.i.i
  %204 = ptrtoint ptr %add.ptr19.i.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %add.ptr19.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %cmp27.not.i.i.i = icmp eq i8 %205, 0
  br i1 %cmp27.not.i.i.i, label %lor.lhs.false29.i.i.i, label %lor.lhs.false.i.i.i.while.cond.backedge.i.i.i_crit_edge

lor.lhs.false.i.i.i.while.cond.backedge.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i

lor.lhs.false29.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %arrayidx30.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 2
  %206 = ptrtoint ptr %arrayidx30.i.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx30.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %207)
  %cmp32.not.i.i.i = icmp eq i8 %207, 1
  br i1 %cmp32.not.i.i.i, label %lor.lhs.false34.i.i.i, label %lor.lhs.false29.i.i.i.while.cond.backedge.i.i.i_crit_edge

lor.lhs.false29.i.i.i.while.cond.backedge.i.i.i_crit_edge: ; preds = %lor.lhs.false29.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i

lor.lhs.false34.i.i.i:                            ; preds = %lor.lhs.false29.i.i.i
  %arrayidx35.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 3
  %208 = ptrtoint ptr %arrayidx35.i.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx35.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %209, i8 %ch.0.ph235.i.i.i)
  %cmp38.not.i.i.i = icmp eq i8 %209, %ch.0.ph235.i.i.i
  br i1 %cmp38.not.i.i.i, label %if.end41.i.i.i, label %lor.lhs.false34.i.i.i.while.cond.backedge.i.i.i_crit_edge

lor.lhs.false34.i.i.i.while.cond.backedge.i.i.i_crit_edge: ; preds = %lor.lhs.false34.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i

while.cond.backedge.i.i.i:                        ; preds = %land.lhs.true116.i.i.i.while.cond.backedge.i.i.i_crit_edge, %land.lhs.true110.i.i.i.while.cond.backedge.i.i.i_crit_edge, %land.lhs.true104.i.i.i.while.cond.backedge.i.i.i_crit_edge, %land.lhs.true98.i.i.i.while.cond.backedge.i.i.i_crit_edge, %land.lhs.true92.i.i.i.while.cond.backedge.i.i.i_crit_edge, %for.end.i.i.i.while.cond.backedge.i.i.i_crit_edge, %if.then44.i.i.i.while.cond.backedge.i.i.i_crit_edge, %lor.lhs.false34.i.i.i.while.cond.backedge.i.i.i_crit_edge, %lor.lhs.false29.i.i.i.while.cond.backedge.i.i.i_crit_edge, %lor.lhs.false.i.i.i.while.cond.backedge.i.i.i_crit_edge, %while.body.i.i.i.while.cond.backedge.i.i.i_crit_edge
  %cmp14.i.i.i = icmp ugt ptr %add.ptr13.i.i.i, %add.ptr19.i.i.i
  br i1 %cmp14.i.i.i, label %while.cond.backedge.i.i.i.land.rhs.i.i.i_crit_edge, label %while.cond.backedge.i.i.i.if.end128.i.i.i_crit_edge

while.cond.backedge.i.i.i.if.end128.i.i.i_crit_edge: ; preds = %while.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i.i.i

while.cond.backedge.i.i.i.land.rhs.i.i.i_crit_edge: ; preds = %while.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i.i

if.end41.i.i.i:                                   ; preds = %lor.lhs.false34.i.i.i
  %210 = ptrtoint ptr %search_pack_header.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %search_pack_header.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool43.not.i.i.i = icmp eq i32 %211, 0
  br i1 %tobool43.not.i.i.i, label %if.then44.i.i.i, label %if.end78.i.i.i

if.then44.i.i.i:                                  ; preds = %if.end41.i.i.i
  %arrayidx45.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 6
  %212 = ptrtoint ptr %arrayidx45.i.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx45.i.i.i, align 1
  %214 = and i8 %213, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %214)
  %cmp47.not.i.i.i = icmp eq i8 %214, -128
  br i1 %cmp47.not.i.i.i, label %if.end50.i.i.i, label %if.then44.i.i.i.while.cond.backedge.i.i.i_crit_edge

if.then44.i.i.i.while.cond.backedge.i.i.i_crit_edge: ; preds = %if.then44.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i

if.end50.i.i.i:                                   ; preds = %if.then44.i.i.i
  %arrayidx51.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 7
  %215 = ptrtoint ptr %arrayidx51.i.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx51.i.i.i, align 1
  %217 = and i8 %216, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %217)
  %cmp54.i.i.i = icmp eq i8 %217, -128
  br i1 %cmp54.i.i.i, label %land.lhs.true56.i105.i.i, label %lor.lhs.false62.i.i.i

land.lhs.true56.i105.i.i:                         ; preds = %if.end50.i.i.i
  %arrayidx57.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 9
  %218 = ptrtoint ptr %arrayidx57.i.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx57.i.i.i, align 1
  %220 = and i8 %219, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %220)
  %cmp60.i.i.i = icmp eq i8 %220, 32
  br i1 %cmp60.i.i.i, label %land.lhs.true56.i105.i.i.if.then74.i.i.i_crit_edge, label %land.lhs.true56.i105.i.i.if.end77.i106.i.i_crit_edge

land.lhs.true56.i105.i.i.if.end77.i106.i.i_crit_edge: ; preds = %land.lhs.true56.i105.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i106.i.i

land.lhs.true56.i105.i.i.if.then74.i.i.i_crit_edge: ; preds = %land.lhs.true56.i105.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74.i.i.i

lor.lhs.false62.i.i.i:                            ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %216)
  %cmp66.i.i.i = icmp ugt i8 %216, -65
  br i1 %cmp66.i.i.i, label %land.lhs.true68.i.i.i, label %lor.lhs.false62.i.i.i.if.end77.i106.i.i_crit_edge

lor.lhs.false62.i.i.i.if.end77.i106.i.i_crit_edge: ; preds = %lor.lhs.false62.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i106.i.i

land.lhs.true68.i.i.i:                            ; preds = %lor.lhs.false62.i.i.i
  %arrayidx69.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 9
  %221 = ptrtoint ptr %arrayidx69.i.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx69.i.i.i, align 1
  %223 = and i8 %222, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %223)
  %cmp72.i.i.i = icmp eq i8 %223, 48
  br i1 %cmp72.i.i.i, label %land.lhs.true68.i.i.i.if.then74.i.i.i_crit_edge, label %land.lhs.true68.i.i.i.if.end77.i106.i.i_crit_edge

land.lhs.true68.i.i.i.if.end77.i106.i.i_crit_edge: ; preds = %land.lhs.true68.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i106.i.i

land.lhs.true68.i.i.i.if.then74.i.i.i_crit_edge:  ; preds = %land.lhs.true68.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74.i.i.i

if.then74.i.i.i:                                  ; preds = %land.lhs.true68.i.i.i.if.then74.i.i.i_crit_edge, %land.lhs.true56.i105.i.i.if.then74.i.i.i_crit_edge
  %224 = ptrtoint ptr %search_pack_header.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 1, ptr %search_pack_header.i.i.i, align 4
  %add.ptr76.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 9
  br label %if.end77.i106.i.i

if.end77.i106.i.i:                                ; preds = %if.then74.i.i.i, %land.lhs.true68.i.i.i.if.end77.i106.i.i_crit_edge, %lor.lhs.false62.i.i.i.if.end77.i106.i.i_crit_edge, %land.lhs.true56.i105.i.i.if.end77.i106.i.i_crit_edge
  %p.1.i.i.i = phi ptr [ %add.ptr76.i.i.i, %if.then74.i.i.i ], [ %add.ptr19.i.i.i, %land.lhs.true68.i.i.i.if.end77.i106.i.i_crit_edge ], [ %add.ptr19.i.i.i, %lor.lhs.false62.i.i.i.if.end77.i106.i.i_crit_edge ], [ %add.ptr19.i.i.i, %land.lhs.true56.i105.i.i.if.end77.i106.i.i_crit_edge ]
  %ch.1.i.i.i = phi i8 [ -70, %if.then74.i.i.i ], [ %ch.0.ph235.i.i.i, %land.lhs.true68.i.i.i.if.end77.i106.i.i_crit_edge ], [ %ch.0.ph235.i.i.i, %lor.lhs.false62.i.i.i.if.end77.i106.i.i_crit_edge ], [ %ch.0.ph235.i.i.i, %land.lhs.true56.i105.i.i.if.end77.i106.i.i_crit_edge ]
  %cmp14231.i.i.i = icmp ugt ptr %add.ptr13.i.i.i, %p.1.i.i.i
  br i1 %cmp14231.i.i.i, label %if.end77.i106.i.i.land.rhs.lr.ph.i.i.i_crit_edge, label %if.end77.i106.i.i.if.end128.i.i.i_crit_edge

if.end77.i106.i.i.if.end128.i.i.i_crit_edge:      ; preds = %if.end77.i106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i.i.i

if.end77.i106.i.i.land.rhs.lr.ph.i.i.i_crit_edge: ; preds = %if.end77.i106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.lr.ph.i.i.i

if.end78.i.i.i:                                   ; preds = %if.end41.i.i.i
  %arrayidx79.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 13
  %225 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx79.i.i.i, align 1
  %227 = and i8 %226, 7
  %and81.i.i.i = zext i8 %227 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %cmp82228.not.i.i.i = icmp eq i8 %227, 0
  br i1 %cmp82228.not.i.i.i, label %if.end78.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.i

if.end78.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end78.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %if.end78.i.i.i
  %arrayidx84.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 14
  %228 = ptrtoint ptr %arrayidx84.i.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx84.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %229)
  %cmp86.not.i.i.i = icmp eq i8 %229, -1
  br i1 %cmp86.not.i.i.i, label %for.inc.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %227)
  %exitcond.not.i.i.i = icmp eq i8 %227, 1
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.land.lhs.true92.i.i.i_crit_edge, label %for.body.i.i.i.1

for.inc.i.i.i.land.lhs.true92.i.i.i_crit_edge:    ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true92.i.i.i

for.body.i.i.i.1:                                 ; preds = %for.inc.i.i.i
  %arrayidx84.i.i.i.1 = getelementptr i8, ptr %call17.i.i.i, i32 15
  %230 = ptrtoint ptr %arrayidx84.i.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx84.i.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %231)
  %cmp86.not.i.i.i.1 = icmp eq i8 %231, -1
  br i1 %cmp86.not.i.i.i.1, label %for.inc.i.i.i.1, label %for.body.i.i.i.1.for.end.i.i.i_crit_edge

for.body.i.i.i.1.for.end.i.i.i_crit_edge:         ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.inc.i.i.i.1:                                  ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %227)
  %exitcond.not.i.i.i.1 = icmp eq i8 %227, 2
  br i1 %exitcond.not.i.i.i.1, label %for.inc.i.i.i.1.land.lhs.true92.i.i.i_crit_edge, label %for.body.i.i.i.2

for.inc.i.i.i.1.land.lhs.true92.i.i.i_crit_edge:  ; preds = %for.inc.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true92.i.i.i

for.body.i.i.i.2:                                 ; preds = %for.inc.i.i.i.1
  %arrayidx84.i.i.i.2 = getelementptr i8, ptr %call17.i.i.i, i32 16
  %232 = ptrtoint ptr %arrayidx84.i.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx84.i.i.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %233)
  %cmp86.not.i.i.i.2 = icmp eq i8 %233, -1
  br i1 %cmp86.not.i.i.i.2, label %for.inc.i.i.i.2, label %for.body.i.i.i.2.for.end.i.i.i_crit_edge

for.body.i.i.i.2.for.end.i.i.i_crit_edge:         ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.inc.i.i.i.2:                                  ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %227)
  %exitcond.not.i.i.i.2 = icmp eq i8 %227, 3
  br i1 %exitcond.not.i.i.i.2, label %for.inc.i.i.i.2.land.lhs.true92.i.i.i_crit_edge, label %for.body.i.i.i.3

for.inc.i.i.i.2.land.lhs.true92.i.i.i_crit_edge:  ; preds = %for.inc.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true92.i.i.i

for.body.i.i.i.3:                                 ; preds = %for.inc.i.i.i.2
  %arrayidx84.i.i.i.3 = getelementptr i8, ptr %call17.i.i.i, i32 17
  %234 = ptrtoint ptr %arrayidx84.i.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx84.i.i.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %235)
  %cmp86.not.i.i.i.3 = icmp eq i8 %235, -1
  br i1 %cmp86.not.i.i.i.3, label %for.inc.i.i.i.3, label %for.body.i.i.i.3.for.end.i.i.i_crit_edge

for.body.i.i.i.3.for.end.i.i.i_crit_edge:         ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.inc.i.i.i.3:                                  ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %227)
  %exitcond.not.i.i.i.3 = icmp eq i8 %227, 4
  br i1 %exitcond.not.i.i.i.3, label %for.inc.i.i.i.3.land.lhs.true92.i.i.i_crit_edge, label %for.body.i.i.i.4

for.inc.i.i.i.3.land.lhs.true92.i.i.i_crit_edge:  ; preds = %for.inc.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true92.i.i.i

for.body.i.i.i.4:                                 ; preds = %for.inc.i.i.i.3
  %arrayidx84.i.i.i.4 = getelementptr i8, ptr %call17.i.i.i, i32 18
  %236 = ptrtoint ptr %arrayidx84.i.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx84.i.i.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %237)
  %cmp86.not.i.i.i.4 = icmp eq i8 %237, -1
  br i1 %cmp86.not.i.i.i.4, label %for.inc.i.i.i.4, label %for.body.i.i.i.4.for.end.i.i.i_crit_edge

for.body.i.i.i.4.for.end.i.i.i_crit_edge:         ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.inc.i.i.i.4:                                  ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %227)
  %exitcond.not.i.i.i.4 = icmp eq i8 %227, 5
  br i1 %exitcond.not.i.i.i.4, label %for.inc.i.i.i.4.land.lhs.true92.i.i.i_crit_edge, label %for.body.i.i.i.5

for.inc.i.i.i.4.land.lhs.true92.i.i.i_crit_edge:  ; preds = %for.inc.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true92.i.i.i

for.body.i.i.i.5:                                 ; preds = %for.inc.i.i.i.4
  %arrayidx84.i.i.i.5 = getelementptr i8, ptr %call17.i.i.i, i32 19
  %238 = ptrtoint ptr %arrayidx84.i.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx84.i.i.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %239)
  %cmp86.not.i.i.i.5 = icmp eq i8 %239, -1
  br i1 %cmp86.not.i.i.i.5, label %for.inc.i.i.i.5, label %for.body.i.i.i.5.for.end.i.i.i_crit_edge

for.body.i.i.i.5.for.end.i.i.i_crit_edge:         ; preds = %for.body.i.i.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.inc.i.i.i.5:                                  ; preds = %for.body.i.i.i.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %227)
  %exitcond.not.i.i.i.5 = icmp eq i8 %227, 6
  br i1 %exitcond.not.i.i.i.5, label %for.inc.i.i.i.5.land.lhs.true92.i.i.i_crit_edge, label %for.body.i.i.i.6

for.inc.i.i.i.5.land.lhs.true92.i.i.i_crit_edge:  ; preds = %for.inc.i.i.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true92.i.i.i

for.body.i.i.i.6:                                 ; preds = %for.inc.i.i.i.5
  %arrayidx84.i.i.i.6 = getelementptr i8, ptr %call17.i.i.i, i32 20
  %240 = ptrtoint ptr %arrayidx84.i.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx84.i.i.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %241)
  %cmp86.not.i.i.i.6 = icmp eq i8 %241, -1
  br i1 %cmp86.not.i.i.i.6, label %for.body.i.i.i.6.land.lhs.true92.i.i.i_crit_edge, label %for.body.i.i.i.6.for.end.i.i.i_crit_edge

for.body.i.i.i.6.for.end.i.i.i_crit_edge:         ; preds = %for.body.i.i.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.body.i.i.i.6.land.lhs.true92.i.i.i_crit_edge: ; preds = %for.body.i.i.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true92.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.6.for.end.i.i.i_crit_edge, %for.body.i.i.i.5.for.end.i.i.i_crit_edge, %for.body.i.i.i.4.for.end.i.i.i_crit_edge, %for.body.i.i.i.3.for.end.i.i.i_crit_edge, %for.body.i.i.i.2.for.end.i.i.i_crit_edge, %for.body.i.i.i.1.for.end.i.i.i_crit_edge, %for.body.i.i.i.for.end.i.i.i_crit_edge, %if.end78.i.i.i.for.end.i.i.i_crit_edge
  %i.0.lcssa.i.i.i = phi i32 [ 0, %if.end78.i.i.i.for.end.i.i.i_crit_edge ], [ 0, %for.body.i.i.i.for.end.i.i.i_crit_edge ], [ 1, %for.body.i.i.i.1.for.end.i.i.i_crit_edge ], [ 2, %for.body.i.i.i.2.for.end.i.i.i_crit_edge ], [ 3, %for.body.i.i.i.3.for.end.i.i.i_crit_edge ], [ 4, %for.body.i.i.i.4.for.end.i.i.i_crit_edge ], [ 5, %for.body.i.i.i.5.for.end.i.i.i_crit_edge ], [ 6, %for.body.i.i.i.6.for.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i.i, i32 %and81.i.i.i)
  %cmp90.i.i.i = icmp eq i32 %i.0.lcssa.i.i.i, %and81.i.i.i
  br i1 %cmp90.i.i.i, label %for.end.i.i.i.land.lhs.true92.i.i.i_crit_edge, label %for.end.i.i.i.while.cond.backedge.i.i.i_crit_edge

for.end.i.i.i.while.cond.backedge.i.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i

for.end.i.i.i.land.lhs.true92.i.i.i_crit_edge:    ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true92.i.i.i

land.lhs.true92.i.i.i:                            ; preds = %for.end.i.i.i.land.lhs.true92.i.i.i_crit_edge, %for.body.i.i.i.6.land.lhs.true92.i.i.i_crit_edge, %for.inc.i.i.i.5.land.lhs.true92.i.i.i_crit_edge, %for.inc.i.i.i.4.land.lhs.true92.i.i.i_crit_edge, %for.inc.i.i.i.3.land.lhs.true92.i.i.i_crit_edge, %for.inc.i.i.i.2.land.lhs.true92.i.i.i_crit_edge, %for.inc.i.i.i.1.land.lhs.true92.i.i.i_crit_edge, %for.inc.i.i.i.land.lhs.true92.i.i.i_crit_edge
  %arrayidx93.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 4
  %242 = ptrtoint ptr %arrayidx93.i.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx93.i.i.i, align 1
  %244 = and i8 %243, -60
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %244)
  %cmp96.i.i.i = icmp eq i8 %244, 68
  br i1 %cmp96.i.i.i, label %land.lhs.true98.i.i.i, label %land.lhs.true92.i.i.i.while.cond.backedge.i.i.i_crit_edge

land.lhs.true92.i.i.i.while.cond.backedge.i.i.i_crit_edge: ; preds = %land.lhs.true92.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i

land.lhs.true98.i.i.i:                            ; preds = %land.lhs.true92.i.i.i
  %arrayidx99.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 12
  %245 = ptrtoint ptr %arrayidx99.i.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx99.i.i.i, align 1
  %247 = and i8 %246, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %247)
  %cmp102.i.i.i = icmp eq i8 %247, 3
  br i1 %cmp102.i.i.i, label %land.lhs.true104.i.i.i, label %land.lhs.true98.i.i.i.while.cond.backedge.i.i.i_crit_edge

land.lhs.true98.i.i.i.while.cond.backedge.i.i.i_crit_edge: ; preds = %land.lhs.true98.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i

land.lhs.true104.i.i.i:                           ; preds = %land.lhs.true98.i.i.i
  %add105.i.i.i = add nuw nsw i32 %and81.i.i.i, 14
  %arrayidx106.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 %add105.i.i.i
  %248 = ptrtoint ptr %arrayidx106.i.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx106.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %cmp108.i.i.i = icmp eq i8 %249, 0
  br i1 %cmp108.i.i.i, label %land.lhs.true110.i.i.i, label %land.lhs.true104.i.i.i.while.cond.backedge.i.i.i_crit_edge

land.lhs.true104.i.i.i.while.cond.backedge.i.i.i_crit_edge: ; preds = %land.lhs.true104.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i

land.lhs.true110.i.i.i:                           ; preds = %land.lhs.true104.i.i.i
  %add111.i.i.i = add nuw nsw i32 %and81.i.i.i, 15
  %arrayidx112.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 %add111.i.i.i
  %250 = ptrtoint ptr %arrayidx112.i.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx112.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %cmp114.i.i.i = icmp eq i8 %251, 0
  br i1 %cmp114.i.i.i, label %land.lhs.true116.i.i.i, label %land.lhs.true110.i.i.i.while.cond.backedge.i.i.i_crit_edge

land.lhs.true110.i.i.i.while.cond.backedge.i.i.i_crit_edge: ; preds = %land.lhs.true110.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i

land.lhs.true116.i.i.i:                           ; preds = %land.lhs.true110.i.i.i
  %add117.i.i.i = or i32 %and81.i.i.i, 16
  %arrayidx118.i.i.i = getelementptr i8, ptr %call17.i.i.i, i32 %add117.i.i.i
  %252 = ptrtoint ptr %arrayidx118.i.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx118.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %253)
  %cmp120.i.i.i = icmp eq i8 %253, 1
  br i1 %cmp120.i.i.i, label %if.then122.i.i.i, label %land.lhs.true116.i.i.i.while.cond.backedge.i.i.i_crit_edge

land.lhs.true116.i.i.i.while.cond.backedge.i.i.i_crit_edge: ; preds = %land.lhs.true116.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i

if.then122.i.i.i:                                 ; preds = %land.lhs.true116.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %254 = ptrtoint ptr %search_pack_header.i.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 0, ptr %search_pack_header.i.i.i, align 4
  %sub.ptr.lhs.cast124.i.i.i = ptrtoint ptr %call17.i.i.i to i32
  %sub.ptr.rhs.cast125.i.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.sub126.i.i.i = sub i32 %sub.ptr.lhs.cast124.i.i.i, %sub.ptr.rhs.cast125.i.i.i
  %inserted_frame.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %184, i32 0, i32 89, i32 29
  %255 = ptrtoint ptr %inserted_frame.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %inserted_frame.i.i.i.i, align 4
  %rem.i.i108.i.i = and i32 %256, 31
  %arrayidx.i.i109.i.i = getelementptr %struct.ivtv, ptr %184, i32 0, i32 89, i32 26, i32 %rem.i.i108.i.i
  %257 = ptrtoint ptr %arrayidx.i.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %arrayidx.i.i109.i.i, align 4
  %buf.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %184, i32 0, i32 89, i32 28, i32 4
  %259 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %258, ptr %buf.i.i.i.i, align 4
  %arrayidx4.i.i.i.i = getelementptr %struct.ivtv, ptr %184, i32 0, i32 89, i32 27, i32 %rem.i.i108.i.i
  %260 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx4.i.i.i.i, align 4
  %bytesused.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %184, i32 0, i32 89, i32 28, i32 5
  %262 = ptrtoint ptr %bytesused.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %bytesused.i.i.i.i, align 4
  %readpos.i.i.i.i = getelementptr inbounds %struct.ivtv, ptr %184, i32 0, i32 89, i32 28, i32 6
  %263 = ptrtoint ptr %readpos.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 0, ptr %readpos.i.i.i.i, align 4
  br label %if.end128.i.i.i

if.end128.i.i.i:                                  ; preds = %if.then122.i.i.i, %if.end77.i106.i.i.if.end128.i.i.i_crit_edge, %while.cond.backedge.i.i.i.if.end128.i.i.i_crit_edge, %land.rhs.i.i.i.if.end128.i.i.i_crit_edge, %if.then8.i.i.i.if.end128.i.i.i_crit_edge, %land.lhs.true3.i.i.i.if.end128.i.i.i_crit_edge, %land.lhs.true.i101.i.i.if.end128.i.i.i_crit_edge, %if.end28.i.i.if.end128.i.i.i_crit_edge
  %len.2.i.i.i = phi i32 [ %189, %land.lhs.true3.i.i.i.if.end128.i.i.i_crit_edge ], [ %189, %land.lhs.true.i101.i.i.if.end128.i.i.i_crit_edge ], [ %189, %if.end28.i.i.if.end128.i.i.i_crit_edge ], [ %sub.ptr.sub126.i.i.i, %if.then122.i.i.i ], [ %189, %if.then8.i.i.i.if.end128.i.i.i_crit_edge ], [ %189, %land.rhs.i.i.i.if.end128.i.i.i_crit_edge ], [ %189, %while.cond.backedge.i.i.i.if.end128.i.i.i_crit_edge ], [ %189, %if.end77.i106.i.i.if.end128.i.i.i_crit_edge ]
  %buf129.i.i.i = getelementptr inbounds %struct.ivtv_buffer, ptr %retval.0.i126.i.i, i32 0, i32 4
  %264 = ptrtoint ptr %buf129.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %buf129.i.i.i, align 4
  %266 = ptrtoint ptr %readpos.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %readpos.i97.i.i, align 4
  %add.ptr131.i.i.i = getelementptr i8, ptr %265, i32 %267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.2.i.i.i)
  %cmp9.i.i.i.i.i = icmp slt i32 %len.2.i.i.i, 0
  br i1 %cmp9.i.i.i.i.i, label %land.rhs16.i.i.i.i.i, label %if.then.i.i.i.i.i.i

land.rhs16.i.i.i.i.i:                             ; preds = %if.end128.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs16.i.i.i.i.i.do.body.i112.i.i_crit_edge, label %if.then27.i.i.i.i.i, !prof !209

land.rhs16.i.i.i.i.i.do.body.i112.i.i_crit_edge:  ; preds = %land.rhs16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i112.i.i

if.then27.i.i.i.i.i:                              ; preds = %land.rhs16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.62, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %do.body.i112.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.end128.i.i.i
  call void @__check_object_size(ptr noundef %add.ptr131.i.i.i, i32 noundef %len.2.i.i.i, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 174) #8
  %call.i.i.i110.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i110.i.i, label %if.then.i.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge, label %if.end.i.i.i.i.i

if.then.i.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i.i
  %268 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr.i.i, i32 %len.2.i.i.i, i32 -1226833920) #13, !srcloc !210
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %268, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.then2.i.i.i.i.i, label %if.end.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge

if.end.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i.i.i

if.then2.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr131.i.i.i, i32 noundef %len.2.i.i.i) #8
  %call.i12.i.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr.i.i, ptr noundef %add.ptr131.i.i.i, i32 noundef %len.2.i.i.i) #8
  br label %copy_to_user.exit.i.i.i

copy_to_user.exit.i.i.i:                          ; preds = %if.then2.i.i.i.i.i, %if.end.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge, %if.then.i.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge
  %n.addr.0.i.i.i.i = phi i32 [ %len.2.i.i.i, %if.then.i.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge ], [ %call.i12.i.i.i.i.i, %if.then2.i.i.i.i.i ], [ %len.2.i.i.i, %if.end.i.i.i.i.i.copy_to_user.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i.i.i)
  %tobool133.not.i.i.i = icmp eq i32 %n.addr.0.i.i.i.i, 0
  br i1 %tobool133.not.i.i.i, label %if.end144.i.i.i, label %copy_to_user.exit.i.i.i.do.body.i112.i.i_crit_edge

copy_to_user.exit.i.i.i.do.body.i112.i.i_crit_edge: ; preds = %copy_to_user.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i112.i.i

do.body.i112.i.i:                                 ; preds = %copy_to_user.exit.i.i.i.do.body.i112.i.i_crit_edge, %if.then27.i.i.i.i.i, %land.rhs16.i.i.i.i.i.do.body.i112.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %269 = load i32, ptr @ivtv_debug, align 4
  %and135.i.i.i = and i32 %269, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i.i.i)
  %tobool136.not.i.i.i = icmp eq i32 %and135.i.i.i, 0
  br i1 %tobool136.not.i.i.i, label %do.body.i112.i.i.ivtv_copy_buf_to_user.exit.i.i_crit_edge, label %do.end.i113.i.i

do.body.i112.i.i.ivtv_copy_buf_to_user.exit.i.i_crit_edge: ; preds = %do.body.i112.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_copy_buf_to_user.exit.i.i

do.end.i113.i.i:                                  ; preds = %do.body.i112.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i.i = getelementptr inbounds %struct.ivtv, ptr %184, i32 0, i32 19, i32 4
  %270 = ptrtoint ptr %name139.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %name139.i.i.i, align 4
  %call140.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name.i.i.i, i32 noundef %len.2.i.i.i, ptr noundef %271) #11
  br label %ivtv_copy_buf_to_user.exit.i.i

if.end144.i.i.i:                                  ; preds = %copy_to_user.exit.i.i.i
  %272 = ptrtoint ptr %readpos.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %readpos.i97.i.i, align 4
  %add146.i.i.i = add i32 %273, %len.2.i.i.i
  store i32 %add146.i.i.i, ptr %readpos.i97.i.i, align 4
  %274 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %cmp148.i.i.i = icmp ne i32 %275, 0
  %sliced_mpeg_buf152.i.i.i = getelementptr inbounds %struct.ivtv, ptr %184, i32 0, i32 89, i32 28
  %cmp153.not.i.i.i = icmp eq ptr %sliced_mpeg_buf152.i.i.i, %retval.0.i126.i.i
  %or.cond221.i.i.i = select i1 %cmp148.i.i.i, i1 true, i1 %cmp153.not.i.i.i
  br i1 %or.cond221.i.i.i, label %if.end144.i.i.i.ivtv_copy_buf_to_user.exit.i.i_crit_edge, label %if.then155.i.i.i

if.end144.i.i.i.ivtv_copy_buf_to_user.exit.i.i_crit_edge: ; preds = %if.end144.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_copy_buf_to_user.exit.i.i

if.then155.i.i.i:                                 ; preds = %if.end144.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv156.i.i.i = zext i32 %len.2.i.i.i to i64
  %mpg_data_received.i.i.i = getelementptr inbounds %struct.ivtv, ptr %184, i32 0, i32 84
  %276 = ptrtoint ptr %mpg_data_received.i.i.i to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %mpg_data_received.i.i.i, align 8
  %add157.i.i.i = add i64 %277, %conv156.i.i.i
  store i64 %add157.i.i.i, ptr %mpg_data_received.i.i.i, align 8
  br label %ivtv_copy_buf_to_user.exit.i.i

ivtv_copy_buf_to_user.exit.i.i:                   ; preds = %if.then155.i.i.i, %if.end144.i.i.i.ivtv_copy_buf_to_user.exit.i.i_crit_edge, %do.end.i113.i.i, %do.body.i112.i.i.ivtv_copy_buf_to_user.exit.i.i_crit_edge
  %retval.0.i114.i.i = phi i32 [ -14, %do.end.i113.i.i ], [ -14, %do.body.i112.i.i.ivtv_copy_buf_to_user.exit.i.i_crit_edge ], [ %len.2.i.i.i, %if.then155.i.i.i ], [ %len.2.i.i.i, %if.end144.i.i.i.ivtv_copy_buf_to_user.exit.i.i_crit_edge ]
  %cmp30.not.i.i = icmp eq ptr %retval.0.i126.i.i, %sliced_mpeg_buf.i.i
  %278 = ptrtoint ptr %readpos.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %readpos.i97.i.i, align 4
  %280 = ptrtoint ptr %bytesused.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %bytesused.i96.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %279, i32 %281)
  %cmp35.i.i = icmp eq i32 %279, %281
  br i1 %cmp30.not.i.i, label %if.else.i.i, label %if.then31.i.i

if.then31.i.i:                                    ; preds = %ivtv_copy_buf_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %cond.i.i = select i1 %cmp35.i.i, ptr %q_free.i.i, ptr %q_io.i.i.i
  call void @ivtv_enqueue(ptr noundef %arrayidx, ptr noundef nonnull %retval.0.i126.i.i, ptr noundef %cond.i.i) #8
  br label %if.end43.i.i

if.else.i.i:                                      ; preds = %ivtv_copy_buf_to_user.exit.i.i
  br i1 %cmp35.i.i, label %if.then36.i.i, label %if.else.i.i.if.end43.i.i_crit_edge

if.else.i.i.if.end43.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i.i

if.then36.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %282 = ptrtoint ptr %inserted_frame.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %inserted_frame.i.i, align 4
  %rem.i.i = and i32 %283, 31
  %arrayidx.i.i = getelementptr %struct.ivtv, ptr %13, i32 0, i32 89, i32 27, i32 %rem.i.i
  %284 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 0, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %283, 1
  store i32 %inc.i.i, ptr %inserted_frame.i.i, align 4
  %285 = ptrtoint ptr %bytesused.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %bytesused.i96.i.i, align 4
  %conv.i.i = zext i32 %286 to i64
  %287 = ptrtoint ptr %vbi_data_inserted.i.i to i32
  call void @__asan_load8_noabort(i32 %287)
  %288 = load i64, ptr %vbi_data_inserted.i.i, align 8
  %add.i.i = add i64 %288, %conv.i.i
  store i64 %add.i.i, ptr %vbi_data_inserted.i.i, align 8
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.then36.i.i, %if.else.i.i.if.end43.i.i_crit_edge, %if.then31.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i114.i.i)
  %cmp44.i.i = icmp slt i32 %retval.0.i114.i.i, 0
  br i1 %cmp44.i.i, label %if.end43.i.i.cond.end.i_crit_edge, label %if.end47.i.i

if.end43.i.i.cond.end.i_crit_edge:                ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

if.end47.i.i:                                     ; preds = %if.end43.i.i
  %add48.i.i = add i32 %retval.0.i114.i.i, %tot_written.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add48.i.i, i32 %count)
  %cmp49.i.i = icmp eq i32 %add48.i.i, %count
  %brmerge.i.i = or i1 %tobool52.not.i.i, %cmp49.i.i
  br i1 %brmerge.i.i, label %if.end47.i.i.cond.end.i_crit_edge, label %if.end47.i.i.for.cond.i.i_crit_edge

if.end47.i.i.for.cond.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

if.end47.i.i.cond.end.i_crit_edge:                ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.end47.i.i.cond.end.i_crit_edge, %if.end43.i.i.cond.end.i_crit_edge, %if.then25.i.i, %if.then20.i.i.cond.end.i_crit_edge, %if.then20.thread196.i.i, %do.end.i.i, %do.body.i.i.cond.end.i_crit_edge, %if.then15.cond.end.i_crit_edge
  %cond.i = phi i32 [ 0, %if.then15.cond.end.i_crit_edge ], [ -5, %do.end.i.i ], [ -5, %do.body.i.i.cond.end.i_crit_edge ], [ %tot_written.0.i.i, %if.then20.i.i.cond.end.i_crit_edge ], [ 0, %if.then25.i.i ], [ %tot_written.0.mux201.i.i, %if.then20.thread196.i.i ], [ %retval.0.i114.i.i, %if.end43.i.i.cond.end.i_crit_edge ], [ %add48.i.i, %if.end47.i.i.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %289 = load i32, ptr @ivtv_debug, align 4
  %290 = and i32 %289, 1040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1040, i32 %290)
  %.not.i = icmp eq i32 %290, 1040
  br i1 %.not.i, label %do.end.i, label %cond.end.i.do.end9.i_crit_edge

cond.end.i.do.end9.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %itv1.i = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 1
  %291 = ptrtoint ptr %itv1.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %itv1.i, align 8
  %name.i = getelementptr inbounds %struct.ivtv, ptr %292, i32 0, i32 19, i32 4
  %name6.i = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 2
  %293 = ptrtoint ptr %name6.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %name6.i, align 4
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name.i, i32 noundef %count, ptr noundef %294, i32 noundef %cond.i) #11
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %cond.end.i.do.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp.i = icmp sgt i32 %cond.i, 0
  br i1 %cmp.i, label %if.then10.i, label %do.end9.i.if.end18_crit_edge

do.end9.i.if.end18_crit_edge:                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then10.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv19.i = zext i32 %cond.i to i64
  %295 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %295)
  %296 = load i64, ptr %pos, align 8
  %add.i = add i64 %296, %conv19.i
  store i64 %add.i, ptr %pos, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then10.i, %do.end9.i.if.end18_crit_edge, %if.end12.if.end18_crit_edge
  %rc.0 = phi i32 [ %call13, %if.end12.if.end18_crit_edge ], [ %cond.i, %do.end9.i.if.end18_crit_edge ], [ %cond.i, %if.then10.i ]
  call void @mutex_unlock(ptr noundef %serialize_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end18 ], [ -512, %do.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_start_decoding(ptr noundef %id, i32 noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %id, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3
  %decoding = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %decoding, i32 noundef 4) #8
  %4 = ptrtoint ptr %decoding to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %decoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then:                                          ; preds = %entry
  %type2 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 3
  %6 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type2, align 8
  %call3 = tail call i32 @ivtv_claim_stream(ptr noundef %id, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end11, label %do.body

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %8 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name) #11
  br label %cleanup

if.end11:                                         ; preds = %if.then
  %call12 = tail call i32 @ivtv_start_v4l2_decode_stream(ptr noundef %arrayidx, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end11.if.end23_crit_edge

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call12)
  %cmp15 = icmp eq i32 %call12, -11
  br i1 %cmp15, label %if.end18, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  %call17 = tail call i32 @ivtv_start_v4l2_decode_stream(ptr noundef %arrayidx, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp19 = icmp slt i32 %call17, 0
  br i1 %cmp19, label %if.end18.cleanup_crit_edge, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end18.if.end23_crit_edge, %if.end11.if.end23_crit_edge, %entry.if.end23_crit_edge
  %type24 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 3
  %9 = ptrtoint ptr %type24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp25 = icmp eq i32 %10, 5
  br i1 %cmp25, label %if.then26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 @ivtv_set_speed(ptr noundef %1, i32 noundef %speed) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.then26 ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ %call17, %if.end18.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ %call12, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_start_v4l2_decode_stream(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_set_speed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_v4l2_write(ptr nocapture noundef readonly %filp, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %pos) local_unnamed_addr #0 align 64 {
entry:
  %q.i = alloca %struct.ivtv_queue, align 4
  %wait.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itv1, align 4
  %serialize_lock = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 40
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %serialize_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %itv1.i = getelementptr inbounds %struct.ivtv_open_id, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %itv1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %itv1.i, align 4
  %type.i = getelementptr inbounds %struct.ivtv_open_id, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %arrayidx.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %q.i) #8
  %10 = getelementptr inbounds %struct.ivtv_queue, ptr %q.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ivtv_queue, ptr %q.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.ivtv_queue, ptr %q.i, i32 0, i32 3
  %13 = call ptr @memset(ptr %q.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #8
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %16 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %17 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %wait.i, align 4
  %19 = tail call i32 @llvm.read_register.i32(metadata !191) #8
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %14, align 4
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @autoremove_wake_function, ptr %15, align 4
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %16, ptr %16, align 4
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %16, ptr %17, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %27 = load i32, ptr @ivtv_debug, align 4
  %28 = and i32 %27, 1040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1040, i32 %28)
  %.not.i = icmp eq i32 %28, 1040
  br i1 %.not.i, label %do.end.i, label %if.end.do.end12.i_crit_edge

if.end.do.end12.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 19, i32 4
  %name9.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 2
  %29 = ptrtoint ptr %name9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name9.i, align 4
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name.i, i32 noundef %count, ptr noundef %30) #11
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %if.end.do.end12.i_crit_edge
  %type13.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 3
  %31 = ptrtoint ptr %type13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type13.i, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %32, label %do.end12.i.ivtv_write.exit_crit_edge [
    i32 5, label %do.end12.i.if.end21.i_crit_edge
    i32 8, label %do.end12.i.if.end21.i_crit_edge109
    i32 7, label %do.end12.i.if.end21.i_crit_edge110
  ]

do.end12.i.if.end21.i_crit_edge110:               ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

do.end12.i.if.end21.i_crit_edge109:               ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

do.end12.i.if.end21.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

do.end12.i.ivtv_write.exit_crit_edge:             ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_write.exit

if.end21.i:                                       ; preds = %do.end12.i.if.end21.i_crit_edge, %do.end12.i.if.end21.i_crit_edge109, %do.end12.i.if.end21.i_crit_edge110
  %call23.i = call i32 @ivtv_claim_stream(ptr noundef %5, i32 noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end21.i.ivtv_write.exit_crit_edge

if.end21.i.ivtv_write.exit_crit_edge:             ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_write.exit

if.end26.i:                                       ; preds = %if.end21.i
  %34 = ptrtoint ptr %type13.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type13.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %35)
  %cmp28.i = icmp eq i32 %35, 7
  br i1 %cmp28.i, label %if.then29.i, label %if.end31.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %div1.i = lshr i32 %count, 6
  %s_flags.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 7
  call void @_set_bit(i32 noundef 8, ptr noundef %s_flags.i) #8
  %call30.i = call i32 @ivtv_write_vbi_from_user(ptr noundef %7, ptr noundef %user_buf, i32 noundef %div1.i) #8
  br label %ivtv_write.exit

if.end31.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %cmp33.i = icmp eq i32 %35, 5
  %cond.i = select i1 %cmp33.i, i32 1, i32 2
  %call34.i = call i32 @ivtv_set_output_mode(ptr noundef %7, i32 noundef %cond.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call34.i, i32 %cond.i)
  %cmp35.not.i = icmp eq i32 %call34.i, %cond.i
  br i1 %cmp35.not.i, label %if.end37.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ivtv_release_stream(ptr noundef %arrayidx.i) #8
  br label %ivtv_write.exit

if.end37.i:                                       ; preds = %if.end31.i
  call void @ivtv_queue_init(ptr noundef nonnull %q.i) #8
  %s_flags38.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 7
  call void @_set_bit(i32 noundef 8, ptr noundef %s_flags38.i) #8
  %speed.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 82
  %36 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %speed.i, align 8
  %call39.i = call i32 @ivtv_start_decoding(ptr noundef %5, i32 noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %retry.preheader.i, label %do.body42.i

retry.preheader.i:                                ; preds = %if.end37.i
  %length.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 22, i32 2
  %dma_data_req_size.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 57
  %q_io.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 23
  %q_free.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 21
  %f_flags.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %serialize_lock.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 40
  %waitq.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 16
  %buffers128.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 21, i32 1
  %stream_size.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 90, i32 63
  %buf_size.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 19
  %q_full203.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 22
  %dma_waitq.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 62
  %q_predma.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 25
  %dma_data_req_offset.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 56
  br label %retry.i

do.body42.i:                                      ; preds = %if.end37.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %38 = load i32, ptr @ivtv_debug, align 4
  %and43.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %do.body42.i.do.end57.i_crit_edge, label %do.end48.i

do.body42.i.do.end57.i_crit_edge:                 ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57.i

do.end48.i:                                       ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #10
  %name51.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 19, i32 4
  %name53.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 2
  %39 = ptrtoint ptr %name53.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name53.i, align 4
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name51.i, ptr noundef %40) #11
  br label %do.end57.i

do.end57.i:                                       ; preds = %do.end48.i, %do.body42.i.do.end57.i_crit_edge
  call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags38.i) #8
  call void @_clear_bit(i32 noundef 8, ptr noundef %s_flags38.i) #8
  br label %ivtv_write.exit

retry.i:                                          ; preds = %land.lhs.true259.i.retry.i_crit_edge, %retry.preheader.i
  %bytes_written.0.i = phi i32 [ %bytes_written.4.i, %land.lhs.true259.i.retry.i_crit_edge ], [ 0, %retry.preheader.i ]
  %count.addr.0.i = phi i32 [ %count.addr.4.i, %land.lhs.true259.i.retry.i_crit_edge ], [ %count, %retry.preheader.i ]
  %user_buf.addr.0.i = phi ptr [ %user_buf.addr.4.i, %land.lhs.true259.i.retry.i_crit_edge ], [ %user_buf, %retry.preheader.i ]
  br i1 %cmp33.i, label %retry.i.if.end99.i_crit_edge, label %land.lhs.true62.i

retry.i.if.end99.i_crit_edge:                     ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.i

land.lhs.true62.i:                                ; preds = %retry.i
  %41 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp63.i = icmp eq i32 %42, 0
  br i1 %cmp63.i, label %land.lhs.true64.i, label %land.lhs.true62.i.if.end99.i_crit_edge

land.lhs.true62.i.if.end99.i_crit_edge:           ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.i

land.lhs.true64.i:                                ; preds = %land.lhs.true62.i
  %43 = ptrtoint ptr %dma_data_req_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_data_req_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool65.not.i = icmp eq i32 %44, 0
  br i1 %tobool65.not.i, label %land.lhs.true64.i.if.end99.i_crit_edge, label %while.cond.preheader.i

land.lhs.true64.i.if.end99.i_crit_edge:           ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.i

while.cond.preheader.i:                           ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.0.i, i32 %44)
  %cmp68.not40.i = icmp ult i32 %count.addr.0.i, %44
  br i1 %cmp68.not40.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %if.end72.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %user_buf.addr.143.i = phi ptr [ %add.ptr.i, %if.end72.i.while.body.i_crit_edge ], [ %user_buf.addr.0.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %count.addr.142.i = phi i32 [ %sub.i, %if.end72.i.while.body.i_crit_edge ], [ %count.addr.0.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %bytes_written.141.i = phi i32 [ %add.i, %if.end72.i.while.body.i_crit_edge ], [ %bytes_written.0.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call69.i = call i32 @ivtv_yuv_udma_stream_frame(ptr noundef %7, ptr noundef %user_buf.addr.143.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %cmp70.i = icmp slt i32 %call69.i, 0
  br i1 %cmp70.i, label %while.body.i.ivtv_write.exit_crit_edge, label %if.end72.i

while.body.i.ivtv_write.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_write.exit

if.end72.i:                                       ; preds = %while.body.i
  %45 = ptrtoint ptr %dma_data_req_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_data_req_size.i, align 4
  %add.i = add i32 %46, %bytes_written.141.i
  %add.ptr.i = getelementptr i8, ptr %user_buf.addr.143.i, i32 %46
  %sub.i = sub i32 %count.addr.142.i, %46
  %cmp68.not.i = icmp ult i32 %sub.i, %46
  br i1 %cmp68.not.i, label %if.end72.i.while.end.i_crit_edge, label %if.end72.i.while.body.i_crit_edge

if.end72.i.while.body.i_crit_edge:                ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end72.i.while.end.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %if.end72.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %bytes_written.1.lcssa.i = phi i32 [ %bytes_written.0.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %add.i, %if.end72.i.while.end.i_crit_edge ]
  %count.addr.1.lcssa.i = phi i32 [ %count.addr.0.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %sub.i, %if.end72.i.while.end.i_crit_edge ]
  %user_buf.addr.1.lcssa.i = phi ptr [ %user_buf.addr.0.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %add.ptr.i, %if.end72.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1.lcssa.i)
  %cmp76.i = icmp eq i32 %count.addr.1.lcssa.i, 0
  br i1 %cmp76.i, label %do.body78.i, label %while.end.i.if.end99.i_crit_edge

while.end.i.if.end99.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.i

do.body78.i:                                      ; preds = %while.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %47 = load i32, ptr @ivtv_debug, align 4
  %48 = and i32 %47, 1040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1040, i32 %48)
  %.not17.i = icmp eq i32 %48, 1040
  br i1 %.not17.i, label %do.end87.i, label %do.body78.i.ivtv_write.exit_crit_edge

do.body78.i.ivtv_write.exit_crit_edge:            ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_write.exit

do.end87.i:                                       ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #10
  %name90.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 19, i32 4
  %name92.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 2
  %49 = ptrtoint ptr %name92.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name92.i, align 4
  %bytesused.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 22, i32 3
  %51 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bytesused.i, align 4
  %call94.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name90.i, i32 noundef %bytes_written.1.lcssa.i, ptr noundef %50, i32 noundef %52) #11
  br label %ivtv_write.exit

if.end99.i:                                       ; preds = %while.end.i.if.end99.i_crit_edge, %land.lhs.true64.i.if.end99.i_crit_edge, %land.lhs.true62.i.if.end99.i_crit_edge, %retry.i.if.end99.i_crit_edge
  %bytes_written.2.i = phi i32 [ %bytes_written.1.lcssa.i, %while.end.i.if.end99.i_crit_edge ], [ %bytes_written.0.i, %land.lhs.true64.i.if.end99.i_crit_edge ], [ %bytes_written.0.i, %land.lhs.true62.i.if.end99.i_crit_edge ], [ %bytes_written.0.i, %retry.i.if.end99.i_crit_edge ]
  %count.addr.2.i = phi i32 [ %count.addr.1.lcssa.i, %while.end.i.if.end99.i_crit_edge ], [ %count.addr.0.i, %land.lhs.true64.i.if.end99.i_crit_edge ], [ %count.addr.0.i, %land.lhs.true62.i.if.end99.i_crit_edge ], [ %count.addr.0.i, %retry.i.if.end99.i_crit_edge ]
  %user_buf.addr.2.i = phi ptr [ %user_buf.addr.1.lcssa.i, %while.end.i.if.end99.i_crit_edge ], [ %user_buf.addr.0.i, %land.lhs.true64.i.if.end99.i_crit_edge ], [ %user_buf.addr.0.i, %land.lhs.true62.i.if.end99.i_crit_edge ], [ %user_buf.addr.0.i, %retry.i.if.end99.i_crit_edge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %signal_pending.exit.i.for.cond.i_crit_edge, %if.end99.i
  %53 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %11, align 4
  %55 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %12, align 4
  %sub10346.i = sub i32 %54, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %sub10346.i, i32 %count.addr.2.i)
  %cmp10447.i = icmp ult i32 %sub10346.i, %count.addr.2.i
  br i1 %cmp10447.i, label %for.cond.i.land.rhs.i_crit_edge, label %for.cond.i.while.end108.i_crit_edge

for.cond.i.while.end108.i_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end108.i

for.cond.i.land.rhs.i_crit_edge:                  ; preds = %for.cond.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body107.i.land.rhs.i_crit_edge, %for.cond.i.land.rhs.i_crit_edge
  %call105.i = call ptr @ivtv_dequeue(ptr noundef %arrayidx.i, ptr noundef %q_io.i) #8
  %tobool106.not.i = icmp eq ptr %call105.i, null
  br i1 %tobool106.not.i, label %land.rhs.i.while.end108.i_crit_edge, label %while.body107.i

land.rhs.i.while.end108.i_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end108.i

while.body107.i:                                  ; preds = %land.rhs.i
  call void @ivtv_enqueue(ptr noundef %arrayidx.i, ptr noundef nonnull %call105.i, ptr noundef nonnull %q.i) #8
  %57 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %11, align 4
  %59 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %12, align 4
  %sub103.i = sub i32 %58, %60
  %cmp104.i = icmp ult i32 %sub103.i, %count.addr.2.i
  br i1 %cmp104.i, label %while.body107.i.land.rhs.i_crit_edge, label %while.body107.i.while.end108.i_crit_edge

while.body107.i.while.end108.i_crit_edge:         ; preds = %while.body107.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end108.i

while.body107.i.land.rhs.i_crit_edge:             ; preds = %while.body107.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.end108.i:                                   ; preds = %while.body107.i.while.end108.i_crit_edge, %land.rhs.i.while.end108.i_crit_edge, %for.cond.i.while.end108.i_crit_edge
  %61 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %11, align 4
  %63 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %12, align 4
  %sub11248.i = sub i32 %62, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %sub11248.i, i32 %count.addr.2.i)
  %cmp11349.i = icmp ult i32 %sub11248.i, %count.addr.2.i
  br i1 %cmp11349.i, label %while.end108.i.land.rhs114.i_crit_edge, label %while.end108.i.while.end119.i_crit_edge

while.end108.i.while.end119.i_crit_edge:          ; preds = %while.end108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end119.i

while.end108.i.land.rhs114.i_crit_edge:           ; preds = %while.end108.i
  br label %land.rhs114.i

land.rhs114.i:                                    ; preds = %while.body118.i.land.rhs114.i_crit_edge, %while.end108.i.land.rhs114.i_crit_edge
  %call115.i = call ptr @ivtv_dequeue(ptr noundef %arrayidx.i, ptr noundef %q_free.i) #8
  %tobool116.not.i = icmp eq ptr %call115.i, null
  br i1 %tobool116.not.i, label %land.rhs114.i.while.end119.i_crit_edge, label %while.body118.i

land.rhs114.i.while.end119.i_crit_edge:           ; preds = %land.rhs114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end119.i

while.body118.i:                                  ; preds = %land.rhs114.i
  call void @ivtv_enqueue(ptr noundef %arrayidx.i, ptr noundef nonnull %call115.i, ptr noundef nonnull %q.i) #8
  %65 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %11, align 4
  %67 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %12, align 4
  %sub112.i = sub i32 %66, %68
  %cmp113.i = icmp ult i32 %sub112.i, %count.addr.2.i
  br i1 %cmp113.i, label %while.body118.i.land.rhs114.i_crit_edge, label %while.body118.i.while.end119.i_crit_edge

while.body118.i.while.end119.i_crit_edge:         ; preds = %while.body118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end119.i

while.body118.i.land.rhs114.i_crit_edge:          ; preds = %while.body118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs114.i

while.end119.i:                                   ; preds = %while.body118.i.while.end119.i_crit_edge, %land.rhs114.i.while.end119.i_crit_edge, %while.end108.i.while.end119.i_crit_edge
  %69 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool120.not.i = icmp eq i32 %70, 0
  br i1 %tobool120.not.i, label %if.end122.i, label %while.cond156.preheader.i

while.cond156.preheader.i:                        ; preds = %while.end119.i
  %call15750.i = call ptr @ivtv_dequeue(ptr noundef %arrayidx.i, ptr noundef nonnull %q.i) #8
  %tobool158.not51.i = icmp eq ptr %call15750.i, null
  br i1 %tobool158.not51.i, label %while.cond156.preheader.i.while.end204.i_crit_edge, label %while.cond156.preheader.i.while.body159.i_crit_edge

while.cond156.preheader.i.while.body159.i_crit_edge: ; preds = %while.cond156.preheader.i
  br label %while.body159.i

while.cond156.preheader.i.while.end204.i_crit_edge: ; preds = %while.cond156.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end204.i

if.end122.i:                                      ; preds = %while.end119.i
  %71 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %f_flags.i, align 4
  %and123.i = and i32 %72, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.i)
  %tobool124.not.i = icmp eq i32 %and123.i, 0
  br i1 %tobool124.not.i, label %if.end126.i, label %if.end122.i.ivtv_write.exit_crit_edge

if.end122.i.ivtv_write.exit_crit_edge:            ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_write.exit

if.end126.i:                                      ; preds = %if.end122.i
  call void @mutex_unlock(ptr noundef %serialize_lock.i) #8
  call void @prepare_to_wait(ptr noundef %waitq.i, ptr noundef nonnull %wait.i, i32 noundef 1) #8
  %73 = ptrtoint ptr %buffers128.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buffers128.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool129.not.i = icmp eq i32 %74, 0
  br i1 %tobool129.not.i, label %if.then130.i, label %if.end126.i.if.end131.i_crit_edge

if.end126.i.if.end131.i_crit_edge:                ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131.i

if.then130.i:                                     ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @schedule() #8
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.then130.i, %if.end126.i.if.end131.i_crit_edge
  call void @finish_wait(ptr noundef %waitq.i, ptr noundef nonnull %wait.i) #8
  call void @mutex_lock_nested(ptr noundef %serialize_lock.i, i32 noundef 0) #8
  %75 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %stack.i.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %81 = and i32 %80, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end131.i.do.body139.i_crit_edge, !prof !209

if.end131.i.do.body139.i_crit_edge:               ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body139.i

signal_pending.exit.i:                            ; preds = %if.end131.i
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %78, align 4
  %and1.i.i.i.i.i.i = and i32 %83, 1
  %tobool137.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool137.not.i, label %signal_pending.exit.i.for.cond.i_crit_edge, label %signal_pending.exit.i.do.body139.i_crit_edge

signal_pending.exit.i.do.body139.i_crit_edge:     ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body139.i

signal_pending.exit.i.for.cond.i_crit_edge:       ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body139.i:                                     ; preds = %signal_pending.exit.i.do.body139.i_crit_edge, %if.end131.i.do.body139.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %84 = load i32, ptr @ivtv_debug, align 4
  %and140.i = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i)
  %tobool141.not.i = icmp eq i32 %and140.i, 0
  br i1 %tobool141.not.i, label %do.body139.i.ivtv_write.exit_crit_edge, label %do.end145.i

do.body139.i.ivtv_write.exit_crit_edge:           ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_write.exit

do.end145.i:                                      ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #10
  %name148.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 19, i32 4
  %name150.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 2
  %85 = ptrtoint ptr %name150.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name150.i, align 4
  %call151.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name148.i, ptr noundef %86) #11
  br label %ivtv_write.exit

while.body159.i:                                  ; preds = %if.end202.i.while.body159.i_crit_edge, %while.cond156.preheader.i.while.body159.i_crit_edge
  %call15757.i = phi ptr [ %call157.i, %if.end202.i.while.body159.i_crit_edge ], [ %call15750.i, %while.cond156.preheader.i.while.body159.i_crit_edge ]
  %user_buf.addr.355.i = phi ptr [ %add.ptr178.i, %if.end202.i.while.body159.i_crit_edge ], [ %user_buf.addr.2.i, %while.cond156.preheader.i.while.body159.i_crit_edge ]
  %count.addr.353.i = phi i32 [ %sub179.i, %if.end202.i.while.body159.i_crit_edge ], [ %count.addr.2.i, %while.cond156.preheader.i.while.body159.i_crit_edge ]
  %bytes_written.352.i = phi i32 [ %add180.i, %if.end202.i.while.body159.i_crit_edge ], [ %bytes_written.2.i, %while.cond156.preheader.i.while.body159.i_crit_edge ]
  %87 = ptrtoint ptr %type13.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %type13.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %88)
  %cmp161.i = icmp eq i32 %88, 8
  br i1 %cmp161.i, label %land.lhs.true162.i, label %while.body159.i.if.end172.i_crit_edge

while.body159.i.if.end172.i_crit_edge:            ; preds = %while.body159.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172.i

land.lhs.true162.i:                               ; preds = %while.body159.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %stream_size.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %stream_size.i, align 4
  %add163.i = add i32 %90, %count.addr.353.i
  %91 = ptrtoint ptr %dma_data_req_size.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma_data_req_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add163.i, i32 %92)
  %cmp165.i = icmp ugt i32 %add163.i, %92
  %sub169.i = sub i32 %92, %90
  %spec.select.i = select i1 %cmp165.i, i32 %sub169.i, i32 %count.addr.353.i
  br label %if.end172.i

if.end172.i:                                      ; preds = %land.lhs.true162.i, %while.body159.i.if.end172.i_crit_edge
  %count.addr.353.sink.i = phi i32 [ %count.addr.353.i, %while.body159.i.if.end172.i_crit_edge ], [ %spec.select.i, %land.lhs.true162.i ]
  %call171.i = call i32 @ivtv_buf_copy_from_user(ptr noundef %arrayidx.i, ptr noundef nonnull %call15757.i, ptr noundef %user_buf.addr.355.i, i32 noundef %count.addr.353.sink.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171.i)
  %cmp173.i = icmp slt i32 %call171.i, 0
  br i1 %cmp173.i, label %if.then174.i, label %if.end177.i

if.then174.i:                                     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #10
  %call176.i = call i32 @ivtv_queue_move(ptr noundef %arrayidx.i, ptr noundef nonnull %q.i, ptr noundef null, ptr noundef %q_free.i, i32 noundef 0) #8
  br label %ivtv_write.exit

if.end177.i:                                      ; preds = %if.end172.i
  %add.ptr178.i = getelementptr i8, ptr %user_buf.addr.355.i, i32 %call171.i
  %sub179.i = sub i32 %count.addr.353.i, %call171.i
  %add180.i = add i32 %call171.i, %bytes_written.352.i
  %93 = ptrtoint ptr %type13.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %type13.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %94)
  %cmp182.i = icmp eq i32 %94, 8
  br i1 %cmp182.i, label %if.then183.i, label %if.end177.i.if.end193.i_crit_edge

if.end177.i.if.end193.i_crit_edge:                ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193.i

if.then183.i:                                     ; preds = %if.end177.i
  %95 = ptrtoint ptr %stream_size.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %stream_size.i, align 4
  %add185.i = add i32 %96, %call171.i
  store i32 %add185.i, ptr %stream_size.i, align 4
  %97 = ptrtoint ptr %dma_data_req_size.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dma_data_req_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add185.i, i32 %98)
  %cmp188.i = icmp eq i32 %add185.i, %98
  br i1 %cmp188.i, label %if.then189.i, label %if.then183.i.if.end193.i_crit_edge

if.then183.i.if.end193.i_crit_edge:               ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193.i

if.then189.i:                                     ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ivtv_enqueue(ptr noundef %arrayidx.i, ptr noundef nonnull %call15757.i, ptr noundef %q_full203.i) #8
  %99 = ptrtoint ptr %stream_size.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %stream_size.i, align 4
  br label %while.end204.i

if.end193.i:                                      ; preds = %if.then183.i.if.end193.i_crit_edge, %if.end177.i.if.end193.i_crit_edge
  %bytesused194.i = getelementptr inbounds %struct.ivtv_buffer, ptr %call15757.i, i32 0, i32 5
  %100 = ptrtoint ptr %bytesused194.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bytesused194.i, align 4
  %102 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %buf_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp195.not.i = icmp eq i32 %101, %103
  br i1 %cmp195.not.i, label %if.end198.i, label %if.then196.i

if.then196.i:                                     ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ivtv_enqueue(ptr noundef %arrayidx.i, ptr noundef nonnull %call15757.i, ptr noundef %q_io.i) #8
  br label %while.end204.i

if.end198.i:                                      ; preds = %if.end193.i
  %104 = ptrtoint ptr %type13.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %type13.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %105)
  %cmp200.i = icmp eq i32 %105, 5
  br i1 %cmp200.i, label %if.then201.i, label %if.end198.i.if.end202.i_crit_edge

if.end198.i.if.end202.i_crit_edge:                ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end202.i

if.then201.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ivtv_buf_swap(ptr noundef nonnull %call15757.i) #8
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.then201.i, %if.end198.i.if.end202.i_crit_edge
  call void @ivtv_enqueue(ptr noundef %arrayidx.i, ptr noundef nonnull %call15757.i, ptr noundef %q_full203.i) #8
  %call157.i = call ptr @ivtv_dequeue(ptr noundef %arrayidx.i, ptr noundef nonnull %q.i) #8
  %tobool158.not.i = icmp eq ptr %call157.i, null
  br i1 %tobool158.not.i, label %if.end202.i.while.end204.i_crit_edge, label %if.end202.i.while.body159.i_crit_edge

if.end202.i.while.body159.i_crit_edge:            ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body159.i

if.end202.i.while.end204.i_crit_edge:             ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end204.i

while.end204.i:                                   ; preds = %if.end202.i.while.end204.i_crit_edge, %if.then196.i, %if.then189.i, %while.cond156.preheader.i.while.end204.i_crit_edge
  %bytes_written.4.i = phi i32 [ %add180.i, %if.then189.i ], [ %add180.i, %if.then196.i ], [ %bytes_written.2.i, %while.cond156.preheader.i.while.end204.i_crit_edge ], [ %add180.i, %if.end202.i.while.end204.i_crit_edge ]
  %count.addr.4.i = phi i32 [ %sub179.i, %if.then189.i ], [ %sub179.i, %if.then196.i ], [ %count.addr.2.i, %while.cond156.preheader.i.while.end204.i_crit_edge ], [ %sub179.i, %if.end202.i.while.end204.i_crit_edge ]
  %user_buf.addr.4.i = phi ptr [ %add.ptr178.i, %if.then189.i ], [ %add.ptr178.i, %if.then196.i ], [ %user_buf.addr.2.i, %while.cond156.preheader.i.while.end204.i_crit_edge ], [ %add.ptr178.i, %if.end202.i.while.end204.i_crit_edge ]
  %106 = ptrtoint ptr %s_flags38.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %s_flags38.i, align 4
  %108 = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool207.not.i = icmp eq i32 %108, 0
  br i1 %tobool207.not.i, label %while.end204.i.if.end257.i_crit_edge, label %if.then208.i

while.end204.i.if.end257.i_crit_edge:             ; preds = %while.end204.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end257.i

if.then208.i:                                     ; preds = %while.end204.i
  %109 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %length.i, align 4
  %111 = ptrtoint ptr %dma_data_req_size.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dma_data_req_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %112)
  %cmp212.not.i = icmp ult i32 %110, %112
  br i1 %cmp212.not.i, label %if.then208.i.if.end257.i_crit_edge, label %if.then213.i

if.then208.i.if.end257.i_crit_edge:               ; preds = %if.then208.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end257.i

if.then213.i:                                     ; preds = %if.then208.i
  br i1 %cmp33.i, label %if.then213.i.if.end216.i_crit_edge, label %if.then215.i

if.then213.i.if.end216.i_crit_edge:               ; preds = %if.then213.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end216.i

if.then215.i:                                     ; preds = %if.then213.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ivtv_yuv_setup_stream_frame(ptr noundef %7) #8
  br label %if.end216.i

if.end216.i:                                      ; preds = %if.then215.i, %if.then213.i.if.end216.i_crit_edge
  call void @mutex_unlock(ptr noundef %serialize_lock.i) #8
  call void @prepare_to_wait(ptr noundef %dma_waitq.i, ptr noundef nonnull %wait.i, i32 noundef 1) #8
  %113 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task.i, align 8
  %stack.i.i662.i = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %stack.i.i662.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %stack.i.i662.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %116, align 4
  %119 = and i32 %118, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i763.i = icmp eq i32 %119, 0
  br i1 %tobool.not.i763.i, label %if.end216.i.signal_pending.exit11.i_crit_edge, label %if.end216.i.do.body234.critedge.i_crit_edge, !prof !209

if.end216.i.do.body234.critedge.i_crit_edge:      ; preds = %if.end216.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body234.critedge.i

if.end216.i.signal_pending.exit11.i_crit_edge:    ; preds = %if.end216.i
  br label %signal_pending.exit11.i

signal_pending.exit11.i:                          ; preds = %while.body228.i.signal_pending.exit11.i_crit_edge, %if.end216.i.signal_pending.exit11.i_crit_edge
  %120 = phi ptr [ %128, %while.body228.i.signal_pending.exit11.i_crit_edge ], [ %116, %if.end216.i.signal_pending.exit11.i_crit_edge ]
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %120, align 4
  %and1.i.i.i.i.i8.i = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i8.i)
  %tobool222.not.i = icmp eq i32 %and1.i.i.i.i.i8.i, 0
  br i1 %tobool222.not.i, label %land.rhs223.i, label %signal_pending.exit11.i.do.body234.critedge.i_crit_edge

signal_pending.exit11.i.do.body234.critedge.i_crit_edge: ; preds = %signal_pending.exit11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body234.critedge.i

land.rhs223.i:                                    ; preds = %signal_pending.exit11.i
  %123 = ptrtoint ptr %s_flags38.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %s_flags38.i, align 4
  %and1.i5.i = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i5.i)
  %tobool226.not.i = icmp eq i32 %and1.i5.i, 0
  br i1 %tobool226.not.i, label %if.end250.critedge.i, label %while.body228.i

while.body228.i:                                  ; preds = %land.rhs223.i
  call void @schedule() #8
  %125 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task.i, align 8
  %stack.i.i6.i = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %stack.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %stack.i.i6.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %128, align 4
  %131 = and i32 %130, 256
  %tobool.not.i7.i = icmp eq i32 %131, 0
  br i1 %tobool.not.i7.i, label %while.body228.i.signal_pending.exit11.i_crit_edge, label %while.body228.i.do.body234.critedge.i_crit_edge, !prof !209

while.body228.i.do.body234.critedge.i_crit_edge:  ; preds = %while.body228.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body234.critedge.i

while.body228.i.signal_pending.exit11.i_crit_edge: ; preds = %while.body228.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %signal_pending.exit11.i

do.body234.critedge.i:                            ; preds = %while.body228.i.do.body234.critedge.i_crit_edge, %signal_pending.exit11.i.do.body234.critedge.i_crit_edge, %if.end216.i.do.body234.critedge.i_crit_edge
  call void @finish_wait(ptr noundef %dma_waitq.i, ptr noundef nonnull %wait.i) #8
  call void @mutex_lock_nested(ptr noundef %serialize_lock.i, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %132 = load i32, ptr @ivtv_debug, align 4
  %and235.i = and i32 %132, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235.i)
  %tobool236.not.i = icmp eq i32 %and235.i, 0
  br i1 %tobool236.not.i, label %do.body234.critedge.i.ivtv_write.exit_crit_edge, label %do.end240.i

do.body234.critedge.i.ivtv_write.exit_crit_edge:  ; preds = %do.body234.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_write.exit

do.end240.i:                                      ; preds = %do.body234.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %name243.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 19, i32 4
  %name245.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 2
  %133 = ptrtoint ptr %name245.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %name245.i, align 4
  %call246.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name243.i, ptr noundef %134) #11
  br label %ivtv_write.exit

if.end250.critedge.i:                             ; preds = %land.rhs223.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %dma_waitq.i, ptr noundef nonnull %wait.i) #8
  call void @mutex_lock_nested(ptr noundef %serialize_lock.i, i32 noundef 0) #8
  call void @_clear_bit(i32 noundef 2, ptr noundef %s_flags38.i) #8
  %135 = ptrtoint ptr %dma_data_req_size.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dma_data_req_size.i, align 4
  %call254.i = call i32 @ivtv_queue_move(ptr noundef %arrayidx.i, ptr noundef %q_full203.i, ptr noundef null, ptr noundef %q_predma.i, i32 noundef %136) #8
  %137 = ptrtoint ptr %dma_data_req_offset.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %dma_data_req_offset.i, align 8
  %add255.i = add i32 %138, 16777216
  call void @ivtv_dma_stream_dec_prepare(ptr noundef %arrayidx.i, i32 noundef %add255.i, i32 noundef 1) #8
  br label %if.end257.i

if.end257.i:                                      ; preds = %if.end250.critedge.i, %if.then208.i.if.end257.i_crit_edge, %while.end204.i.if.end257.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.4.i)
  %tobool258.not.i = icmp eq i32 %count.addr.4.i, 0
  br i1 %tobool258.not.i, label %if.end257.i.do.body265.i_crit_edge, label %land.lhs.true259.i

if.end257.i.do.body265.i_crit_edge:               ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body265.i

land.lhs.true259.i:                               ; preds = %if.end257.i
  %139 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %f_flags.i, align 4
  %and261.i = and i32 %140, 2048
  %tobool262.not.i = icmp eq i32 %and261.i, 0
  br i1 %tobool262.not.i, label %land.lhs.true259.i.retry.i_crit_edge, label %land.lhs.true259.i.do.body265.i_crit_edge

land.lhs.true259.i.do.body265.i_crit_edge:        ; preds = %land.lhs.true259.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body265.i

land.lhs.true259.i.retry.i_crit_edge:             ; preds = %land.lhs.true259.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.i

do.body265.i:                                     ; preds = %land.lhs.true259.i.do.body265.i_crit_edge, %if.end257.i.do.body265.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %141 = load i32, ptr @ivtv_debug, align 4
  %142 = and i32 %141, 1040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1040, i32 %142)
  %.not16.i = icmp eq i32 %142, 1040
  br i1 %.not16.i, label %do.end274.i, label %do.body265.i.ivtv_write.exit_crit_edge

do.body265.i.ivtv_write.exit_crit_edge:           ; preds = %do.body265.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_write.exit

do.end274.i:                                      ; preds = %do.body265.i
  call void @__sanitizer_cov_trace_pc() #10
  %name277.i = getelementptr inbounds %struct.ivtv, ptr %7, i32 0, i32 19, i32 4
  %name279.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 2
  %143 = ptrtoint ptr %name279.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %name279.i, align 4
  %bytesused281.i = getelementptr %struct.ivtv, ptr %7, i32 0, i32 42, i32 %9, i32 22, i32 3
  %145 = ptrtoint ptr %bytesused281.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %bytesused281.i, align 4
  %call282.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name277.i, i32 noundef %bytes_written.4.i, ptr noundef %144, i32 noundef %146) #11
  br label %ivtv_write.exit

ivtv_write.exit:                                  ; preds = %do.end274.i, %do.body265.i.ivtv_write.exit_crit_edge, %do.end240.i, %do.body234.critedge.i.ivtv_write.exit_crit_edge, %if.then174.i, %do.end145.i, %do.body139.i.ivtv_write.exit_crit_edge, %if.end122.i.ivtv_write.exit_crit_edge, %do.end87.i, %do.body78.i.ivtv_write.exit_crit_edge, %while.body.i.ivtv_write.exit_crit_edge, %do.end57.i, %if.then36.i, %if.then29.i, %if.end21.i.ivtv_write.exit_crit_edge, %do.end12.i.ivtv_write.exit_crit_edge
  %retval.3.i = phi i32 [ %call30.i, %if.then29.i ], [ -16, %if.then36.i ], [ %call39.i, %do.end57.i ], [ %call171.i, %if.then174.i ], [ -22, %do.end12.i.ivtv_write.exit_crit_edge ], [ -16, %if.end21.i.ivtv_write.exit_crit_edge ], [ %bytes_written.1.lcssa.i, %do.end87.i ], [ %bytes_written.1.lcssa.i, %do.body78.i.ivtv_write.exit_crit_edge ], [ -4, %do.end145.i ], [ -4, %do.body139.i.ivtv_write.exit_crit_edge ], [ -4, %do.end240.i ], [ %bytes_written.4.i, %do.end274.i ], [ %bytes_written.4.i, %do.body265.i.ivtv_write.exit_crit_edge ], [ -4, %do.body234.critedge.i.ivtv_write.exit_crit_edge ], [ -11, %if.end122.i.ivtv_write.exit_crit_edge ], [ %call69.i, %while.body.i.ivtv_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %q.i) #8
  call void @mutex_unlock(ptr noundef %serialize_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %ivtv_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.3.i, %ivtv_write.exit ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_v4l2_dec_poll(ptr noundef %filp, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %6 = load i32, ptr @ivtv_debug, align 4
  %7 = and i32 %6, 1040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1040, i32 %7)
  %.not = icmp eq i32 %7, 1040
  br i1 %.not, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 19, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name) #11
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %subscribed = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %subscribed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %subscribed, align 4
  %cmp.i.not = icmp eq ptr %9, %subscribed
  br i1 %cmp.i.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %do.end7
  %wait12 = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.then10.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.then10.poll_wait.exit_crit_edge:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.then10
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  %tobool3.not.i = icmp eq ptr %wait12, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %filp, ptr noundef nonnull %wait12, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.then10.poll_wait.exit_crit_edge
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 26
  tail call void @_clear_bit(i32 noundef 31, ptr noundef %i_flags) #8
  %call14 = tail call i32 @v4l2_event_pending(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %spec.select = select i1 %tobool15.not, i32 0, i32 2
  br label %if.end27

if.else:                                          ; preds = %do.end7
  %waitq = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 16
  %tobool.not.i48 = icmp eq ptr %wait, null
  br i1 %tobool.not.i48, label %if.else.poll_wait.exit54_crit_edge, label %land.lhs.true.i52

if.else.poll_wait.exit54_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit54

land.lhs.true.i52:                                ; preds = %if.else
  %12 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wait, align 4
  %tobool1.not.i49 = icmp eq ptr %13, null
  %tobool3.not.i50 = icmp eq ptr %waitq, null
  %or.cond.i51 = or i1 %tobool3.not.i50, %tobool1.not.i49
  br i1 %or.cond.i51, label %land.lhs.true.i52.poll_wait.exit54_crit_edge, label %if.then.i53

land.lhs.true.i52.poll_wait.exit54_crit_edge:     ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit54

if.then.i53:                                      ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %filp, ptr noundef nonnull %waitq, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit54

poll_wait.exit54:                                 ; preds = %if.then.i53, %land.lhs.true.i52.poll_wait.exit54_crit_edge, %if.else.poll_wait.exit54_crit_edge
  %i_flags18 = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 31, ptr noundef %i_flags18) #8
  %14 = ptrtoint ptr %i_flags18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_flags18, align 4
  %16 = and i32 %15, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool21.not = icmp eq i32 %16, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %poll_wait.exit54.if.then25_crit_edge

poll_wait.exit54.if.then25_crit_edge:             ; preds = %poll_wait.exit54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

lor.lhs.false:                                    ; preds = %poll_wait.exit54
  %17 = ptrtoint ptr %i_flags18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %i_flags18, align 4
  %19 = and i32 %18, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool24.not = icmp eq i32 %19, 0
  br i1 %tobool24.not, label %lor.lhs.false.if.end27_crit_edge, label %lor.lhs.false.if.then25_crit_edge

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %poll_wait.exit54.if.then25_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %lor.lhs.false.if.end27_crit_edge, %poll_wait.exit
  %res.0 = phi i32 [ 2, %if.then25 ], [ 0, %lor.lhs.false.if.end27_crit_edge ], [ %spec.select, %poll_wait.exit ]
  %buffers = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 21, i32 1
  %20 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buffers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool28.not = icmp eq i32 %21, 0
  %or = or i32 %res.0, 260
  %spec.select45 = select i1 %tobool28.not, i32 %res.0, i32 %or
  ret i32 %spec.select45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_v4l2_enc_poll(ptr noundef %filp, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_requested_events.exit_crit_edge, label %cond.true.i

entry.poll_requested_events.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_requested_events.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %_key.i = getelementptr inbounds %struct.poll_table_struct, ptr %wait, i32 0, i32 1
  %0 = ptrtoint ptr %_key.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_key.i, align 4
  %phi.bo = and i32 %1, 65
  br label %poll_requested_events.exit

poll_requested_events.exit:                       ; preds = %cond.true.i, %entry.poll_requested_events.exit_crit_edge
  %cond.i = phi i32 [ %phi.bo, %cond.true.i ], [ 65, %entry.poll_requested_events.exit_crit_edge ]
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %itv2 = getelementptr inbounds %struct.ivtv_open_id, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %itv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %itv2, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %s_flags = getelementptr %struct.ivtv, ptr %5, i32 0, i32 42, i32 %7, i32 7
  %8 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %s_flags, align 4
  %10 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %land.lhs.true, label %poll_requested_events.exit.do.body40_crit_edge

poll_requested_events.exit.do.body40_crit_edge:   ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

land.lhs.true:                                    ; preds = %poll_requested_events.exit
  %11 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %s_flags, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true.do.body40_crit_edge

land.lhs.true.do.body40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

land.lhs.true7:                                   ; preds = %land.lhs.true
  %type8 = getelementptr %struct.ivtv, ptr %5, i32 0, i32 42, i32 %7, i32 3
  %14 = ptrtoint ptr %type8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.not = icmp eq i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool10.not = icmp eq i32 %cond.i, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %land.lhs.true7.do.body40_crit_edge, label %if.then

land.lhs.true7.do.body40_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

if.then:                                          ; preds = %land.lhs.true7
  %serialize_lock = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 40
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #8
  %call11 = tail call i32 @ivtv_start_capture(ptr noundef %3)
  tail call void @mutex_unlock(ptr noundef %serialize_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %16 = load i32, ptr @ivtv_debug, align 4
  br i1 %tobool13.not, label %do.body24, label %do.body

do.body:                                          ; preds = %if.then
  %and15 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body.cleanup75_crit_edge, label %do.end

do.body.cleanup75_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 19, i32 4
  %name19 = getelementptr %struct.ivtv, ptr %5, i32 0, i32 42, i32 %7, i32 2
  %17 = ptrtoint ptr %name19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name19, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name, ptr noundef %18, i32 noundef %call11) #11
  br label %cleanup75

do.body24:                                        ; preds = %if.then
  %and25 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.body40_crit_edge, label %do.end30

do.body24.do.body40_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %name33 = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 19, i32 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name33) #11
  br label %do.body40

do.body40:                                        ; preds = %do.end30, %do.body24.do.body40_crit_edge, %land.lhs.true7.do.body40_crit_edge, %land.lhs.true.do.body40_crit_edge, %poll_requested_events.exit.do.body40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %19 = load i32, ptr @ivtv_debug, align 4
  %20 = and i32 %19, 1040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1040, i32 %20)
  %.not = icmp eq i32 %20, 1040
  br i1 %.not, label %do.end49, label %do.body40.do.end57_crit_edge

do.body40.do.end57_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57

do.end49:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %name52 = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 19, i32 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name52) #11
  br label %do.end57

do.end57:                                         ; preds = %do.end49, %do.body40.do.end57_crit_edge
  %waitq = getelementptr %struct.ivtv, ptr %5, i32 0, i32 42, i32 %7, i32 16
  br i1 %tobool.not.i, label %poll_wait.exit.thread, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end57
  %21 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %22, null
  %tobool3.not.i = icmp eq ptr %waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %22(ptr noundef %filp, ptr noundef nonnull %waitq, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge
  %call58 = tail call i32 @v4l2_event_pending(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true.i115, label %poll_wait.exit.if.end63_crit_edge

poll_wait.exit.if.end63_crit_edge:                ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

poll_wait.exit.thread:                            ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #10
  %call58118 = tail call i32 @v4l2_event_pending(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58118)
  %tobool59.not119 = icmp eq i32 %call58118, 0
  %spec.select121 = select i1 %tobool59.not119, i32 0, i32 2
  br label %if.end63

land.lhs.true.i115:                               ; preds = %poll_wait.exit
  %wait62 = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wait, align 4
  %tobool1.not.i112 = icmp eq ptr %24, null
  %tobool3.not.i113 = icmp eq ptr %wait62, null
  %or.cond.i114 = or i1 %tobool3.not.i113, %tobool1.not.i112
  br i1 %or.cond.i114, label %land.lhs.true.i115.if.end63_crit_edge, label %if.then.i116

land.lhs.true.i115.if.end63_crit_edge:            ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then.i116:                                     ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %24(ptr noundef %filp, ptr noundef nonnull %wait62, ptr noundef nonnull %wait) #8
  br label %if.end63

if.end63:                                         ; preds = %if.then.i116, %land.lhs.true.i115.if.end63_crit_edge, %poll_wait.exit.thread, %poll_wait.exit.if.end63_crit_edge
  %res.0 = phi i32 [ 2, %poll_wait.exit.if.end63_crit_edge ], [ 0, %land.lhs.true.i115.if.end63_crit_edge ], [ 0, %if.then.i116 ], [ %spec.select121, %poll_wait.exit.thread ]
  %length = getelementptr %struct.ivtv, ptr %5, i32 0, i32 42, i32 %7, i32 22, i32 2
  %25 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool64.not = icmp eq i32 %26, 0
  br i1 %tobool64.not, label %lor.lhs.false, label %if.end63.if.then67_crit_edge

if.end63.if.then67_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

lor.lhs.false:                                    ; preds = %if.end63
  %length65 = getelementptr %struct.ivtv, ptr %5, i32 0, i32 42, i32 %7, i32 23, i32 2
  %27 = ptrtoint ptr %length65 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool66.not = icmp eq i32 %28, 0
  br i1 %tobool66.not, label %if.end70, label %lor.lhs.false.if.then67_crit_edge

lor.lhs.false.if.then67_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

if.then67:                                        ; preds = %lor.lhs.false.if.then67_crit_edge, %if.end63.if.then67_crit_edge
  %or69 = or i32 %res.0, 65
  br label %cleanup75

if.end70:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %29 = lshr exact i32 %10, 3
  %30 = or i32 %res.0, %29
  br label %cleanup75

cleanup75:                                        ; preds = %if.end70, %if.then67, %do.end, %do.body.cleanup75_crit_edge
  %retval.1 = phi i32 [ %or69, %if.then67 ], [ 8, %do.end ], [ 8, %do.body.cleanup75_crit_edge ], [ %30, %if.end70 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_stop_capture(ptr nocapture noundef readonly %id, i32 noundef %gop_end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %id, i32 0, i32 3
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %4 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name3 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 2
  %5 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name3, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, ptr noundef %6) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %s_flags = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 7
  %7 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %s_flags, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %do.end5.if.end63_crit_edge, label %if.then8

do.end5.if.end63_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then8:                                         ; preds = %do.end5
  %arrayidx10 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %10 = load i32, ptr @ivtv_debug, align 4
  %and12 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then8.do.end25_crit_edge, label %do.end17

if.then8.do.end25_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

do.end17:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %name20 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name20) #11
  br label %do.end25

do.end25:                                         ; preds = %do.end17, %if.then8.do.end25_crit_edge
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %land.lhs.true, label %do.end25.if.end51_crit_edge

do.end25.if.end51_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true:                                    ; preds = %do.end25
  %s_flags27 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 7
  %13 = ptrtoint ptr %s_flags27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %s_flags27, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool29.not = icmp eq i32 %15, 0
  br i1 %tobool29.not, label %land.lhs.true.if.end51thread-pre-split_crit_edge, label %land.lhs.true30

land.lhs.true.if.end51thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51thread-pre-split

land.lhs.true30:                                  ; preds = %land.lhs.true
  %16 = ptrtoint ptr %s_flags27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %s_flags27, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool33.not = icmp eq i32 %18, 0
  br i1 %tobool33.not, label %do.body35, label %land.lhs.true30.if.end51thread-pre-split_crit_edge

land.lhs.true30.if.end51thread-pre-split_crit_edge: ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51thread-pre-split

do.body35:                                        ; preds = %land.lhs.true30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %19 = load i32, ptr @ivtv_debug, align 4
  %and36 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body35.do.end49_crit_edge, label %do.end41

do.body35.do.end49_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

do.end41:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %name44 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name44) #11
  br label %do.end49

do.end49:                                         ; preds = %do.end41, %do.body35.do.end49_crit_edge
  %call50 = tail call i32 @ivtv_stop_v4l2_encode_stream(ptr noundef %arrayidx10, i32 noundef 0) #8
  br label %if.end51thread-pre-split

if.end51thread-pre-split:                         ; preds = %do.end49, %land.lhs.true30.if.end51thread-pre-split_crit_edge, %land.lhs.true.if.end51thread-pre-split_crit_edge
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %type, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51thread-pre-split, %do.end25.if.end51_crit_edge
  %21 = phi i32 [ %.pr, %if.end51thread-pre-split ], [ %12, %do.end25.if.end51_crit_edge ]
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %21, label %if.end51.if.else_crit_edge [
    i32 6, label %if.end51.land.lhs.true56_crit_edge
    i32 2, label %if.end51.land.lhs.true56_crit_edge93
  ]

if.end51.land.lhs.true56_crit_edge93:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true56

if.end51.land.lhs.true56_crit_edge:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true56

if.end51.if.else_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true56:                                  ; preds = %if.end51.land.lhs.true56_crit_edge, %if.end51.land.lhs.true56_crit_edge93
  %23 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %s_flags, align 4
  %25 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool59.not = icmp eq i32 %25, 0
  br i1 %tobool59.not, label %land.lhs.true56.if.else_crit_edge, label %if.then60

land.lhs.true56.if.else_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then60:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  %fh = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 %3, i32 5
  %26 = ptrtoint ptr %fh to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %fh, align 8
  br label %if.end63

if.else:                                          ; preds = %land.lhs.true56.if.else_crit_edge, %if.end51.if.else_crit_edge
  %call61 = tail call i32 @ivtv_stop_v4l2_encode_stream(ptr noundef %arrayidx, i32 noundef %gop_end) #8
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then60, %do.end5.if.end63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gop_end)
  %tobool64.not = icmp eq i32 %gop_end, 0
  br i1 %tobool64.not, label %if.then65, label %if.end63.if.end68_crit_edge

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %s_flags) #8
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %s_flags) #8
  tail call void @ivtv_release_stream(ptr noundef %arrayidx)
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end63.if.end68_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_v4l2_close(ptr nocapture noundef readonly %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %itv1 = getelementptr inbounds %struct.ivtv_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itv1, align 4
  %type = getelementptr inbounds %struct.ivtv_open_id, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %6 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 19, i32 4
  %name3 = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 2
  %7 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name3, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name, ptr noundef %8) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %serialize_lock = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 40
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #8
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp = icmp eq i32 %10, 4
  br i1 %cmp, label %land.lhs.true, label %do.end6.if.end93_crit_edge

do.end6.if.end93_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

land.lhs.true:                                    ; preds = %do.end6
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 4
  %call.i = tail call i32 @v4l2_fh_is_singular(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end93_crit_edge, label %if.then10

land.lhs.true.if.end93_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then10:                                        ; preds = %land.lhs.true
  %capturing.i = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 43
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing.i, i32 noundef 4) #8
  %13 = ptrtoint ptr %capturing.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %capturing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then10.do.body.i_crit_edge, label %if.then.i

if.then10.do.body.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %3, i32 noundef 218, i32 noundef 1, i32 noundef 1) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.then10.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %15 = load i32, ptr @ivtv_debug, align 4
  %and.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body.i.ivtv_mute.exit_crit_edge, label %do.end.i

do.body.i.ivtv_mute.exit_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_mute.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 19, i32 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i) #11
  br label %ivtv_mute.exit

ivtv_mute.exit:                                   ; preds = %do.end.i, %do.body.i.ivtv_mute.exit_crit_edge
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 26
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %i_flags) #8
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 19, i32 2
  %16 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn172 = load ptr, ptr %subdevs, align 4
  %cmp17.not174 = icmp eq ptr %.pn172, %subdevs
  br i1 %cmp17.not174, label %ivtv_mute.exit.do.end35_crit_edge, label %for.body.lr.ph

ivtv_mute.exit.do.end35_crit_edge:                ; preds = %ivtv_mute.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

for.body.lr.ph:                                   ; preds = %ivtv_mute.exit
  %std = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 35
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn175 = phi ptr [ %.pn172, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__sd.0176 = getelementptr i8, ptr %.pn175, i32 -80
  %ops = getelementptr i8, ptr %.pn175, i32 24
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %video, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %land.lhs.true19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true19:                                  ; preds = %for.body
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_std, align 4
  %tobool22.not = icmp eq ptr %22, null
  br i1 %tobool22.not, label %land.lhs.true19.for.inc_crit_edge, label %if.then23

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %std, align 8
  %call27 = tail call i32 %22(ptr noundef %__sd.0176, i64 noundef %24) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %land.lhs.true19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %.pn175 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn175, align 4
  %cmp17.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp17.not, label %for.inc.do.end35_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

do.end35:                                         ; preds = %for.inc.do.end35_crit_edge, %ivtv_mute.exit.do.end35_crit_edge
  tail call void @ivtv_audio_set_io(ptr noundef %3) #8
  %hw_flags = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 9
  %26 = ptrtoint ptr %hw_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_flags, align 8
  %and38 = and i32 %27, 258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.end35.if.end84_crit_edge, label %for.cond50.preheader

do.end35.if.end84_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

for.cond50.preheader:                             ; preds = %do.end35
  %28 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn157177 = load ptr, ptr %subdevs, align 4
  %cmp54.not179 = icmp eq ptr %.pn157177, %subdevs
  br i1 %cmp54.not179, label %for.cond50.preheader.if.end84_crit_edge, label %for.cond50.preheader.for.body56_crit_edge

for.cond50.preheader.for.body56_crit_edge:        ; preds = %for.cond50.preheader
  br label %for.body56

for.cond50.preheader.if.end84_crit_edge:          ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

for.body56:                                       ; preds = %for.inc73.for.body56_crit_edge, %for.cond50.preheader.for.body56_crit_edge
  %.pn157180 = phi ptr [ %.pn157, %for.inc73.for.body56_crit_edge ], [ %.pn157177, %for.cond50.preheader.for.body56_crit_edge ]
  %__sd42.0181 = getelementptr i8, ptr %.pn157180, i32 -80
  %grp_id = getelementptr i8, ptr %.pn157180, i32 68
  %29 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %grp_id, align 4
  %and57 = and i32 %30, 258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %for.body56.for.inc73_crit_edge, label %land.lhs.true59

for.body56.for.inc73_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73

land.lhs.true59:                                  ; preds = %for.body56
  %ops60 = getelementptr i8, ptr %.pn157180, i32 24
  %31 = ptrtoint ptr %ops60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops60, align 4
  %video61 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %video61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %video61, align 4
  %tobool62.not = icmp eq ptr %34, null
  br i1 %tobool62.not, label %land.lhs.true59.for.inc73_crit_edge, label %land.lhs.true63

land.lhs.true59.for.inc73_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73

land.lhs.true63:                                  ; preds = %land.lhs.true59
  %s_crystal_freq = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %s_crystal_freq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_crystal_freq, align 4
  %tobool66.not = icmp eq ptr %36, null
  br i1 %tobool66.not, label %land.lhs.true63.for.inc73_crit_edge, label %if.then67

land.lhs.true63.for.inc73_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73

if.then67:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  %call71 = tail call i32 %36(ptr noundef %__sd42.0181, i32 noundef 32110000, i32 noundef 0) #8
  br label %for.inc73

for.inc73:                                        ; preds = %if.then67, %land.lhs.true63.for.inc73_crit_edge, %land.lhs.true59.for.inc73_crit_edge, %for.body56.for.inc73_crit_edge
  %37 = ptrtoint ptr %.pn157180 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn157 = load ptr, ptr %.pn157180, align 4
  %cmp54.not = icmp eq ptr %.pn157, %subdevs
  br i1 %cmp54.not, label %for.inc73.if.end84_crit_edge, label %for.inc73.for.body56_crit_edge

for.inc73.for.body56_crit_edge:                   ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56

for.inc73.if.end84_crit_edge:                     ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.end84:                                         ; preds = %for.inc73.if.end84_crit_edge, %for.cond50.preheader.if.end84_crit_edge, %do.end35.if.end84_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing.i, i32 noundef 4) #8
  %38 = ptrtoint ptr %capturing.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %capturing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp86 = icmp sgt i32 %39, 0
  br i1 %cmp86, label %if.then87, label %if.end84.if.end92_crit_edge

if.end84.if.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %40 = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 20, i32 14
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call88 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %42) #8
  %video_mute_yuv = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 20, i32 14, i32 1
  %43 = ptrtoint ptr %video_mute_yuv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %video_mute_yuv, align 4
  %call90 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %44) #8
  %shl = shl i32 %call90, 8
  %or = or i32 %shl, %call88
  %call91 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %3, i32 noundef 217, i32 noundef 1, i32 noundef %or) #8
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %if.end84.if.end92_crit_edge
  %call.i.i.i159 = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing.i, i32 noundef 4) #8
  %45 = ptrtoint ptr %capturing.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %capturing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i160 = icmp eq i32 %46, 0
  br i1 %tobool.not.i160, label %if.end92.do.body.i164_crit_edge, label %if.then.i162

if.end92.do.body.i164_crit_edge:                  ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i164

if.then.i162:                                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i161 = tail call i32 @ivtv_msleep_timeout(i32 noundef 100, i32 noundef 0) #8
  %call2.i = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %3, i32 noundef 220, i32 noundef 1, i32 noundef 12) #8
  %call3.i = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %3, i32 noundef 218, i32 noundef 1, i32 noundef 0) #8
  br label %do.body.i164

do.body.i164:                                     ; preds = %if.then.i162, %if.end92.do.body.i164_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %47 = load i32, ptr @ivtv_debug, align 4
  %and.i163 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool4.not.i = icmp eq i32 %and.i163, 0
  br i1 %tobool4.not.i, label %do.body.i164.if.end93_crit_edge, label %do.end.i166

do.body.i164.if.end93_crit_edge:                  ; preds = %do.body.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

do.end.i166:                                      ; preds = %do.body.i164
  call void @__sanitizer_cov_trace_pc() #10
  %name.i165 = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 19, i32 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i165) #11
  br label %if.end93

if.end93:                                         ; preds = %do.end.i166, %do.body.i164.if.end93_crit_edge, %land.lhs.true.if.end93_crit_edge, %do.end6.if.end93_crit_edge
  tail call void @v4l2_fh_del(ptr noundef %1) #8
  tail call void @v4l2_fh_exit(ptr noundef %1) #8
  %fh94 = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 5
  %48 = ptrtoint ptr %fh94 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fh94, align 8
  %cmp96.not = icmp eq ptr %49, %1
  br i1 %cmp96.not, label %if.end98, label %if.end93.close_done_crit_edge

if.end93.close_done_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_done

if.end98:                                         ; preds = %if.end93
  %type99 = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 %5, i32 3
  %50 = ptrtoint ptr %type99 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type99, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp100 = icmp sgt i32 %51, 4
  br i1 %cmp100, label %if.then101, label %if.else

if.then101:                                       ; preds = %if.end98
  %52 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %itv1, align 4
  %54 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type, align 4
  %arrayidx.i = getelementptr %struct.ivtv, ptr %53, i32 0, i32 42, i32 %55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %56 = load i32, ptr @ivtv_debug, align 4
  %and.i167 = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167)
  %tobool.not.i168 = icmp eq i32 %and.i167, 0
  br i1 %tobool.not.i168, label %if.then101.do.end5.i_crit_edge, label %do.end.i171

if.then101.do.end5.i_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

do.end.i171:                                      ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  %name.i169 = getelementptr inbounds %struct.ivtv, ptr %53, i32 0, i32 19, i32 4
  %name3.i = getelementptr %struct.ivtv, ptr %53, i32 0, i32 42, i32 %55, i32 2
  %57 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name3.i, align 4
  %call.i170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name.i169, ptr noundef %58) #11
  %59 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr.i = load i32, ptr %type, align 4
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i171, %if.then101.do.end5.i_crit_edge
  %60 = phi i32 [ %.pr.i, %do.end.i171 ], [ %55, %if.then101.do.end5.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %60)
  %cmp.i = icmp eq i32 %60, 8
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end5.i.if.end10.i_crit_edge

do.end5.i.if.end10.i_crit_edge:                   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %do.end5.i
  %i_flags.i = getelementptr inbounds %struct.ivtv, ptr %53, i32 0, i32 26
  %61 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %i_flags.i, align 4
  %63 = and i32 %62, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool8.not.i = icmp eq i32 %63, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %if.then9.i

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ivtv_yuv_close(ptr noundef %53) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %land.lhs.true.i.if.end10.i_crit_edge, %do.end5.i.if.end10.i_crit_edge
  %s_flags.i = getelementptr %struct.ivtv, ptr %53, i32 0, i32 42, i32 %55, i32 7
  %64 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %s_flags.i, align 4
  %66 = and i32 %65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool12.not.i = icmp eq i32 %66, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end30.i_crit_edge, label %do.body14.i

if.end10.i.if.end30.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

do.body14.i:                                      ; preds = %if.end10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %67 = load i32, ptr @ivtv_debug, align 4
  %and15.i = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %do.body14.i.do.end28.i_crit_edge, label %do.end20.i

do.body14.i.do.end28.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28.i

do.end20.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  %name23.i = getelementptr inbounds %struct.ivtv, ptr %53, i32 0, i32 19, i32 4
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name23.i) #11
  br label %do.end28.i

do.end28.i:                                       ; preds = %do.end20.i, %do.body14.i.do.end28.i_crit_edge
  %call29.i = tail call i32 @ivtv_stop_v4l2_decode_stream(ptr noundef %arrayidx.i, i32 noundef 3, i64 noundef 0) #8
  %output_mode.i = getelementptr inbounds %struct.ivtv, ptr %53, i32 0, i32 31
  %68 = ptrtoint ptr %output_mode.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %output_mode.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end28.i, %if.end10.i.if.end30.i_crit_edge
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %s_flags.i) #8
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %s_flags.i) #8
  %output_mode33.i = getelementptr inbounds %struct.ivtv, ptr %53, i32 0, i32 31
  %69 = ptrtoint ptr %output_mode33.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %output_mode33.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %70)
  %cmp34.i = icmp eq i32 %70, 3
  br i1 %cmp34.i, label %land.lhs.true35.i, label %if.end30.i.ivtv_stop_decoding.exit_crit_edge

if.end30.i.ivtv_stop_decoding.exit_crit_edge:     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_stop_decoding.exit

land.lhs.true35.i:                                ; preds = %if.end30.i
  %yuv_frames.i = getelementptr inbounds %struct.ivtv_open_id, ptr %1, i32 0, i32 2
  %71 = ptrtoint ptr %yuv_frames.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %yuv_frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool36.not.i = icmp eq i32 %72, 0
  br i1 %tobool36.not.i, label %land.lhs.true35.i.ivtv_stop_decoding.exit_crit_edge, label %if.then37.i

land.lhs.true35.i.ivtv_stop_decoding.exit_crit_edge: ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_stop_decoding.exit

if.then37.i:                                      ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %output_mode33.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %output_mode33.i, align 8
  br label %ivtv_stop_decoding.exit

ivtv_stop_decoding.exit:                          ; preds = %if.then37.i, %land.lhs.true35.i.ivtv_stop_decoding.exit_crit_edge, %if.end30.i.ivtv_stop_decoding.exit_crit_edge
  %speed.i = getelementptr inbounds %struct.ivtv, ptr %53, i32 0, i32 82
  %74 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %speed.i, align 8
  %i_flags40.i = getelementptr inbounds %struct.ivtv, ptr %53, i32 0, i32 26
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %i_flags40.i) #8
  tail call void @ivtv_release_stream(ptr noundef %arrayidx.i) #8
  %output_mode = getelementptr inbounds %struct.ivtv, ptr %3, i32 0, i32 31
  %75 = ptrtoint ptr %output_mode to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %output_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp104 = icmp eq i32 %76, 0
  br i1 %cmp104, label %land.lhs.true105, label %ivtv_stop_decoding.exit.close_done_crit_edge

ivtv_stop_decoding.exit.close_done_crit_edge:     ; preds = %ivtv_stop_decoding.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_done

land.lhs.true105:                                 ; preds = %ivtv_stop_decoding.exit
  %s_flags = getelementptr %struct.ivtv, ptr %3, i32 0, i32 42, i32 7, i32 7
  %77 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %s_flags, align 4
  %79 = and i32 %78, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool107.not = icmp eq i32 %79, 0
  br i1 %tobool107.not, label %if.then108, label %land.lhs.true105.close_done_crit_edge

land.lhs.true105.close_done_crit_edge:            ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_done

if.then108:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ivtv_disable_cc(ptr noundef %3) #8
  br label %close_done

if.else:                                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ivtv_stop_capture(ptr noundef %1, i32 noundef 0)
  br label %close_done

close_done:                                       ; preds = %if.else, %if.then108, %land.lhs.true105.close_done_crit_edge, %ivtv_stop_decoding.exit.close_done_crit_edge, %if.end93.close_done_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %serialize_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_mute(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %capturing = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #8
  %0 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 218, i32 noundef 1, i32 noundef 1) #8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %2 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name) #11
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_audio_set_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_unmute(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %capturing = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #8
  %0 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @ivtv_msleep_timeout(i32 noundef 100, i32 noundef 0) #8
  %call2 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 220, i32 noundef 1, i32 noundef 12) #8
  %call3 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 218, i32 noundef 1, i32 noundef 0) #8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %2 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name) #11
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_disable_cc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_v4l2_open(ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %filp) #8
  %lock = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 26
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 8
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %itv2.i = getelementptr inbounds %struct.ivtv_stream, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %itv2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %itv2.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %6 = load i32, ptr @ivtv_debug, align 4
  %and.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.do.end7.i_crit_edge, label %do.end.i

if.end.do.end7.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 19, i32 4
  %name4.i = getelementptr inbounds %struct.ivtv_stream, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %name4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name4.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %name.i, ptr noundef %8) #11
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %if.end.do.end7.i_crit_edge
  %call8.i = tail call i32 @ivtv_init_on_first_open(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end20.i, label %do.end13.i

do.end13.i:                                       ; preds = %do.end7.i
  %name16.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 19, i32 4
  %init_name.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end13.i.video_device_node_name.exit.i_crit_edge

do.end13.i.video_device_node_name.exit.i_crit_edge: ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %video_device_node_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 4
  br label %video_device_node_name.exit.i

video_device_node_name.exit.i:                    ; preds = %if.end.i.i.i, %do.end13.i.video_device_node_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %12, %if.end.i.i.i ], [ %10, %do.end13.i.video_device_node_name.exit.i_crit_edge ]
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name16.i, ptr noundef %retval.0.i.i.i) #11
  br label %ivtv_open.exit

if.end20.i:                                       ; preds = %do.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_fw_debug to i32))
  %13 = load i32, ptr @ivtv_fw_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not.i = icmp eq i32 %13, 0
  br i1 %tobool21.not.i, label %if.else.i, label %do.end25.i

do.end25.i:                                       ; preds = %if.end20.i
  %name28.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 19, i32 4
  %init_name.i.i286.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %init_name.i.i286.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i286.i, align 8
  %tobool.not.i.i287.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i287.i, label %if.end.i.i289.i, label %do.end25.i.video_device_node_name.exit291.i_crit_edge

do.end25.i.video_device_node_name.exit291.i_crit_edge: ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %video_device_node_name.exit291.i

if.end.i.i289.i:                                  ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i288.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %dev.i288.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i288.i, align 4
  br label %video_device_node_name.exit291.i

video_device_node_name.exit291.i:                 ; preds = %if.end.i.i289.i, %do.end25.i.video_device_node_name.exit291.i_crit_edge
  %retval.0.i.i290.i = phi ptr [ %17, %if.end.i.i289.i ], [ %15, %do.end25.i.video_device_node_name.exit291.i_crit_edge ]
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name28.i, ptr noundef %retval.0.i.i290.i) #11
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name28.i) #11
  br label %if.end47.i

if.else.i:                                        ; preds = %if.end20.i
  %call40.i = tail call i32 @ivtv_firmware_check(ptr noundef %5, ptr noundef nonnull @.str.95) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call40.i)
  %cmp.i = icmp eq i32 %call40.i, -11
  br i1 %cmp.i, label %if.then41.i, label %if.else.i.if.end43.i_crit_edge

if.else.i.if.end43.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then41.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call42.i = tail call i32 @ivtv_firmware_check(ptr noundef %5, ptr noundef nonnull @.str.95) #8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then41.i, %if.else.i.if.end43.i_crit_edge
  %res.0.i = phi i32 [ %call42.i, %if.then41.i ], [ %call40.i, %if.else.i.if.end43.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i)
  %cmp44.i = icmp slt i32 %res.0.i, 0
  br i1 %cmp44.i, label %if.end43.i.ivtv_open.exit_crit_edge, label %if.end43.i.if.end47.i_crit_edge

if.end43.i.if.end47.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.end43.i.ivtv_open.exit_crit_edge:              ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_open.exit

if.end47.i:                                       ; preds = %if.end43.i.if.end47.i_crit_edge, %video_device_node_name.exit291.i
  %type.i = getelementptr inbounds %struct.ivtv_stream, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %19, label %if.end47.i.if.end80.i_crit_edge [
    i32 5, label %land.lhs.true.i
    i32 8, label %land.lhs.true55.i
  ]

if.end47.i.if.end80.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i

land.lhs.true.i:                                  ; preds = %if.end47.i
  %s_flags.i = getelementptr %struct.ivtv, ptr %5, i32 0, i32 42, i32 8, i32 7
  %21 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %s_flags.i, align 4
  %23 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool50.not.i = icmp eq i32 %23, 0
  br i1 %tobool50.not.i, label %land.lhs.true.i.if.end80.i_crit_edge, label %land.lhs.true.i.ivtv_open.exit_crit_edge

land.lhs.true.i.ivtv_open.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_open.exit

land.lhs.true.i.if.end80.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i

land.lhs.true55.i:                                ; preds = %if.end47.i
  %s_flags58.i = getelementptr %struct.ivtv, ptr %5, i32 0, i32 42, i32 5, i32 7
  %24 = ptrtoint ptr %s_flags58.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %s_flags58.i, align 4
  %26 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool60.not.i = icmp eq i32 %26, 0
  br i1 %tobool60.not.i, label %if.then65.i, label %land.lhs.true55.i.ivtv_open.exit_crit_edge

land.lhs.true55.i.ivtv_open.exit_crit_edge:       ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_open.exit

if.then65.i:                                      ; preds = %land.lhs.true55.i
  %reg_mem.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 17
  %27 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %28, i32 2092
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp69.i = icmp eq i32 %29, 0
  br i1 %cmp69.i, label %do.end73.i, label %if.then65.i.if.end79.i_crit_edge

if.then65.i.if.end79.i_crit_edge:                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.i

do.end73.i:                                       ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #10
  %name76.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 19, i32 4
  %call78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name76.i) #11
  br label %if.end79.i

if.end79.i:                                       ; preds = %do.end73.i, %if.then65.i.if.end79.i_crit_edge
  tail call void @ivtv_udma_alloc(ptr noundef %5) #8
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.end79.i, %land.lhs.true.i.if.end80.i_crit_edge, %if.end47.i.if.end80.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 204) #14
  %cmp82.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp82.i, label %do.body84.i, label %if.end99.i

do.body84.i:                                      ; preds = %if.end80.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %31 = load i32, ptr @ivtv_debug, align 4
  %and85.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %do.body84.i.ivtv_open.exit_crit_edge, label %do.end90.i

do.body84.i.ivtv_open.exit_crit_edge:             ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_open.exit

do.end90.i:                                       ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #10
  %name93.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 19, i32 4
  %call95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name93.i) #11
  br label %ivtv_open.exit

if.end99.i:                                       ; preds = %if.end80.i
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %3) #8
  %itv101.i = getelementptr inbounds %struct.ivtv_open_id, ptr %call7.i.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %itv101.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %5, ptr %itv101.i, align 8
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i, align 8
  %type103.i = getelementptr inbounds %struct.ivtv_open_id, ptr %call7.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %type103.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %type103.i, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %36 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i.i, ptr %private_data.i, align 4
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i.i) #8
  %37 = ptrtoint ptr %type103.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type103.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp107.i = icmp eq i32 %38, 4
  br i1 %cmp107.i, label %land.lhs.true108.i, label %if.end99.i.if.end197.i_crit_edge

if.end99.i.if.end197.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end197.i

land.lhs.true108.i:                               ; preds = %if.end99.i
  %39 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private_data.i, align 4
  %call.i.i = tail call i32 @v4l2_fh_is_singular(ptr noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool110.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool110.not.i, label %land.lhs.true108.i.if.end197.i_crit_edge, label %if.then111.i

land.lhs.true108.i.if.end197.i_crit_edge:         ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end197.i

if.then111.i:                                     ; preds = %land.lhs.true108.i
  %i_flags.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 26
  %41 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %i_flags.i, align 4
  %43 = and i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool113.not.i = icmp eq i32 %43, 0
  br i1 %tobool113.not.i, label %if.then114.i, label %if.then111.i.if.end121.i_crit_edge

if.then111.i.if.end121.i_crit_edge:               ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121.i

if.then114.i:                                     ; preds = %if.then111.i
  %capturing.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 43
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing.i, i32 noundef 4) #8
  %44 = ptrtoint ptr %capturing.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %capturing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp116.i = icmp sgt i32 %45, 0
  br i1 %cmp116.i, label %if.then117.i, label %if.then114.i.if.end121.i_crit_edge

if.then114.i.if.end121.i_crit_edge:               ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121.i

if.then117.i:                                     ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_fh_del(ptr noundef nonnull %call7.i.i.i) #8
  tail call void @v4l2_fh_exit(ptr noundef nonnull %call7.i.i.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %ivtv_open.exit

if.end121.i:                                      ; preds = %if.then114.i.if.end121.i_crit_edge, %if.then111.i.if.end121.i_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %i_flags.i) #8
  %capturing.i.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 43
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing.i.i, i32 noundef 4) #8
  %46 = ptrtoint ptr %capturing.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %capturing.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i, label %if.end121.i.do.body.i.i_crit_edge, label %if.then.i.i

if.end121.i.do.body.i.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.then.i.i:                                      ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %5, i32 noundef 218, i32 noundef 1, i32 noundef 1) #8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i, %if.end121.i.do.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %48 = load i32, ptr @ivtv_debug, align 4
  %and.i.i = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %do.body.i.i.ivtv_mute.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.ivtv_mute.exit.i_crit_edge:           ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_mute.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 19, i32 4
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i.i) #11
  br label %ivtv_mute.exit.i

ivtv_mute.exit.i:                                 ; preds = %do.end.i.i, %do.body.i.i.ivtv_mute.exit.i_crit_edge
  %subdevs.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 19, i32 2
  %49 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn306.i = load ptr, ptr %subdevs.i, align 4
  %cmp130.not308.i = icmp eq ptr %.pn306.i, %subdevs.i
  br i1 %cmp130.not308.i, label %ivtv_mute.exit.i.do.end148.i_crit_edge, label %ivtv_mute.exit.i.for.body.i_crit_edge

ivtv_mute.exit.i.for.body.i_crit_edge:            ; preds = %ivtv_mute.exit.i
  br label %for.body.i

ivtv_mute.exit.i.do.end148.i_crit_edge:           ; preds = %ivtv_mute.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end148.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %ivtv_mute.exit.i.for.body.i_crit_edge
  %.pn309.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn306.i, %ivtv_mute.exit.i.for.body.i_crit_edge ]
  %__sd.0310.i = getelementptr i8, ptr %.pn309.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn309.i, i32 24
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %tuner.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tuner.i, align 4
  %tobool131.not.i = icmp eq ptr %53, null
  br i1 %tobool131.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true132.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true132.i:                               ; preds = %for.body.i
  %s_radio.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %s_radio.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_radio.i, align 4
  %tobool135.not.i = icmp eq ptr %55, null
  br i1 %tobool135.not.i, label %land.lhs.true132.i.for.inc.i_crit_edge, label %if.then136.i

land.lhs.true132.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then136.i:                                     ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #10
  %call140.i = tail call i32 %55(ptr noundef %__sd.0310.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then136.i, %land.lhs.true132.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %56 = ptrtoint ptr %.pn309.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i = load ptr, ptr %.pn309.i, align 4
  %cmp130.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp130.not.i, label %for.inc.i.do.end148.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.end148.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end148.i

do.end148.i:                                      ; preds = %for.inc.i.do.end148.i_crit_edge, %ivtv_mute.exit.i.do.end148.i_crit_edge
  tail call void @ivtv_audio_set_io(ptr noundef %5) #8
  %hw_flags.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 9
  %57 = ptrtoint ptr %hw_flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hw_flags.i, align 8
  %and151.i = and i32 %58, 258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i)
  %tobool152.not.i = icmp eq i32 %and151.i, 0
  br i1 %tobool152.not.i, label %do.end148.i.if.end196.i_crit_edge, label %for.cond163.preheader.i

do.end148.i.if.end196.i_crit_edge:                ; preds = %do.end148.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196.i

for.cond163.preheader.i:                          ; preds = %do.end148.i
  %59 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn281311.i = load ptr, ptr %subdevs.i, align 4
  %cmp167.not313.i = icmp eq ptr %.pn281311.i, %subdevs.i
  br i1 %cmp167.not313.i, label %for.cond163.preheader.i.if.end196.i_crit_edge, label %for.cond163.preheader.i.for.body169.i_crit_edge

for.cond163.preheader.i.for.body169.i_crit_edge:  ; preds = %for.cond163.preheader.i
  br label %for.body169.i

for.cond163.preheader.i.if.end196.i_crit_edge:    ; preds = %for.cond163.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196.i

for.body169.i:                                    ; preds = %for.inc185.i.for.body169.i_crit_edge, %for.cond163.preheader.i.for.body169.i_crit_edge
  %.pn281314.i = phi ptr [ %.pn281.i, %for.inc185.i.for.body169.i_crit_edge ], [ %.pn281311.i, %for.cond163.preheader.i.for.body169.i_crit_edge ]
  %__sd155.0315.i = getelementptr i8, ptr %.pn281314.i, i32 -80
  %grp_id.i = getelementptr i8, ptr %.pn281314.i, i32 68
  %60 = ptrtoint ptr %grp_id.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %grp_id.i, align 4
  %and170.i = and i32 %61, 258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i)
  %tobool171.not.i = icmp eq i32 %and170.i, 0
  br i1 %tobool171.not.i, label %for.body169.i.for.inc185.i_crit_edge, label %land.lhs.true172.i

for.body169.i.for.inc185.i_crit_edge:             ; preds = %for.body169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc185.i

land.lhs.true172.i:                               ; preds = %for.body169.i
  %ops173.i = getelementptr i8, ptr %.pn281314.i, i32 24
  %62 = ptrtoint ptr %ops173.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops173.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %video.i, align 4
  %tobool174.not.i = icmp eq ptr %65, null
  br i1 %tobool174.not.i, label %land.lhs.true172.i.for.inc185.i_crit_edge, label %land.lhs.true175.i

land.lhs.true172.i.for.inc185.i_crit_edge:        ; preds = %land.lhs.true172.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc185.i

land.lhs.true175.i:                               ; preds = %land.lhs.true172.i
  %s_crystal_freq.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %s_crystal_freq.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_crystal_freq.i, align 4
  %tobool178.not.i = icmp eq ptr %67, null
  br i1 %tobool178.not.i, label %land.lhs.true175.i.for.inc185.i_crit_edge, label %if.then179.i

land.lhs.true175.i.for.inc185.i_crit_edge:        ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc185.i

if.then179.i:                                     ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #10
  %call183.i = tail call i32 %67(ptr noundef %__sd155.0315.i, i32 noundef 32110000, i32 noundef 4) #8
  br label %for.inc185.i

for.inc185.i:                                     ; preds = %if.then179.i, %land.lhs.true175.i.for.inc185.i_crit_edge, %land.lhs.true172.i.for.inc185.i_crit_edge, %for.body169.i.for.inc185.i_crit_edge
  %68 = ptrtoint ptr %.pn281314.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn281.i = load ptr, ptr %.pn281314.i, align 4
  %cmp167.not.i = icmp eq ptr %.pn281.i, %subdevs.i
  br i1 %cmp167.not.i, label %for.inc185.i.if.end196.i_crit_edge, label %for.inc185.i.for.body169.i_crit_edge

for.inc185.i.for.body169.i_crit_edge:             ; preds = %for.inc185.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body169.i

for.inc185.i.if.end196.i_crit_edge:               ; preds = %for.inc185.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196.i

if.end196.i:                                      ; preds = %for.inc185.i.if.end196.i_crit_edge, %for.cond163.preheader.i.if.end196.i_crit_edge, %do.end148.i.if.end196.i_crit_edge
  %call.i.i.i293.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing.i.i, i32 noundef 4) #8
  %69 = ptrtoint ptr %capturing.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %capturing.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i294.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i294.i, label %if.end196.i.do.body.i298.i_crit_edge, label %if.then.i296.i

if.end196.i.do.body.i298.i_crit_edge:             ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i298.i

if.then.i296.i:                                   ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i295.i = tail call i32 @ivtv_msleep_timeout(i32 noundef 100, i32 noundef 0) #8
  %call2.i.i = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %5, i32 noundef 220, i32 noundef 1, i32 noundef 12) #8
  %call3.i.i = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %5, i32 noundef 218, i32 noundef 1, i32 noundef 0) #8
  br label %do.body.i298.i

do.body.i298.i:                                   ; preds = %if.then.i296.i, %if.end196.i.do.body.i298.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %71 = load i32, ptr @ivtv_debug, align 4
  %and.i297.i = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i297.i)
  %tobool4.not.i.i = icmp eq i32 %and.i297.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i298.i.if.end197.i_crit_edge, label %do.end.i300.i

do.body.i298.i.if.end197.i_crit_edge:             ; preds = %do.body.i298.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end197.i

do.end.i300.i:                                    ; preds = %do.body.i298.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i299.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 19, i32 4
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i299.i) #11
  br label %if.end197.i

if.end197.i:                                      ; preds = %do.end.i300.i, %do.body.i298.i.if.end197.i_crit_edge, %land.lhs.true108.i.if.end197.i_crit_edge, %if.end99.i.if.end197.i_crit_edge
  %72 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type.i, align 8
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %73, label %if.end197.i.ivtv_open.exit_crit_edge [
    i32 5, label %if.then200.i
    i32 8, label %if.then205.i
  ]

if.end197.i.ivtv_open.exit_crit_edge:             ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_open.exit

if.then200.i:                                     ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_flags201.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 26
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %i_flags201.i) #8
  br label %ivtv_open.exit

if.then205.i:                                     ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_flags206.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 7, ptr noundef %i_flags206.i) #8
  %v4l2_src_h.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 90, i32 68
  %75 = ptrtoint ptr %v4l2_src_h.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %v4l2_src_h.i, align 4
  %add.i = add i32 %76, 31
  %and207.i = and i32 %add.i, -32
  %mul.i = mul i32 %and207.i, 1080
  %dma_data_req_size.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 57
  %77 = ptrtoint ptr %dma_data_req_size.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul.i, ptr %dma_data_req_size.i, align 4
  %stream_size.i = getelementptr inbounds %struct.ivtv, ptr %5, i32 0, i32 90, i32 63
  %78 = ptrtoint ptr %stream_size.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %stream_size.i, align 4
  br label %ivtv_open.exit

ivtv_open.exit:                                   ; preds = %if.then205.i, %if.then200.i, %if.end197.i.ivtv_open.exit_crit_edge, %if.then117.i, %do.end90.i, %do.body84.i.ivtv_open.exit_crit_edge, %land.lhs.true55.i.ivtv_open.exit_crit_edge, %land.lhs.true.i.ivtv_open.exit_crit_edge, %if.end43.i.ivtv_open.exit_crit_edge, %video_device_node_name.exit.i
  %retval.0.i = phi i32 [ -6, %video_device_node_name.exit.i ], [ -16, %if.then117.i ], [ -5, %if.end43.i.ivtv_open.exit_crit_edge ], [ -16, %land.lhs.true.i.ivtv_open.exit_crit_edge ], [ -16, %land.lhs.true55.i.ivtv_open.exit_crit_edge ], [ -12, %do.end90.i ], [ -12, %do.body84.i.ivtv_open.exit_crit_edge ], [ 0, %if.end197.i.ivtv_open.exit_crit_edge ], [ 0, %if.then205.i ], [ 0, %if.then200.i ]
  %79 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lock, align 8
  tail call void @mutex_unlock(ptr noundef %80) #8
  br label %cleanup

cleanup:                                          ; preds = %ivtv_open.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ivtv_open.exit ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_msleep_timeout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_enqueue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ivtv_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_process_vbi_data(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_buf_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_write_vbi_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_set_output_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_yuv_udma_stream_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_buf_copy_from_user(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_queue_move(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_yuv_setup_stream_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_dma_stream_dec_prepare(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_yuv_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_stop_v4l2_decode_stream(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_init_on_first_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_firmware_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_udma_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !131, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !151, !152, !153, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !185, !186, !187, !189, !190}
!llvm.named.register.sp = !{!191}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 51, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ivtv_claim_stream._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ivtv_claim_stream._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 55, i32 3}
!8 = !{ptr @ivtv_claim_stream._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ivtv_claim_stream._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_ivtv_claim_stream, !11, !"__ksymtab_ivtv_claim_stream", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 87, i32 1}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 103, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ivtv_release_stream._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @ivtv_release_stream._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_ivtv_release_stream, !18, !"__ksymtab_ivtv_release_stream", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 138, i32 1}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 455, i32 4}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ivtv_start_capture._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ivtv_start_capture._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 464, i32 3}
!26 = !{ptr @ivtv_start_capture._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ivtv_start_capture._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 478, i32 2}
!30 = !{ptr @ivtv_start_capture._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ivtv_start_capture._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 500, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ivtv_v4l2_read._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ivtv_v4l2_read._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 520, i32 4}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ivtv_start_decoding._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ivtv_start_decoding._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 729, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ivtv_v4l2_dec_poll._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ivtv_v4l2_dec_poll._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 774, i32 4}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ivtv_v4l2_enc_poll._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ivtv_v4l2_enc_poll._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 778, i32 3}
!54 = !{ptr @ivtv_v4l2_enc_poll._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ivtv_v4l2_enc_poll._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 782, i32 2}
!58 = !{ptr @ivtv_v4l2_enc_poll._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ivtv_v4l2_enc_poll._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 801, i32 2}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ivtv_stop_capture._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ivtv_stop_capture._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 809, i32 3}
!67 = !{ptr @ivtv_stop_capture._entry.32, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ivtv_stop_capture._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 815, i32 4}
!71 = !{ptr @ivtv_stop_capture._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ivtv_stop_capture._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 873, i32 2}
!75 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ivtv_v4l2_close._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ivtv_v4l2_close._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 1050, i32 2}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ivtv_mute._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @ivtv_mute._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 1060, i32 2}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ivtv_unmute._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ivtv_unmute._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 409, i32 2}
!90 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ivtv_read_pos._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ivtv_read_pos._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 354, i32 3}
!95 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ivtv_read._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ivtv_read._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 250, i32 4}
!100 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ivtv_get_buffer._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @ivtv_get_buffer._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 270, i32 4}
!105 = !{ptr @ivtv_get_buffer._entry.50, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ivtv_get_buffer._entry_ptr.52, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 168, i32 3}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ivtv_update_pgm_info._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @ivtv_update_pgm_info._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 155, i32 2}
!114 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ivtv_dualwatch._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @ivtv_dualwatch._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 158, i32 3}
!119 = !{ptr @ivtv_dualwatch._entry.57, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @ivtv_dualwatch._entry_ptr.59, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 334, i32 3}
!123 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @ivtv_copy_buf_to_user._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @ivtv_copy_buf_to_user._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!128 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 549, i32 2}
!135 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @ivtv_write._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @ivtv_write._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 582, i32 3}
!140 = !{ptr @ivtv_write._entry.67, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @ivtv_write._entry_ptr.69, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 605, i32 4}
!144 = !{ptr @ivtv_write._entry.70, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ivtv_write._entry_ptr.72, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @ivtv_write._entry.73, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 629, i32 4}
!148 = !{ptr @ivtv_write._entry_ptr.74, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 691, i32 5}
!151 = !{ptr @ivtv_write._entry.75, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @ivtv_write._entry_ptr.77, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @ivtv_write._entry.78, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 704, i32 2}
!155 = !{ptr @ivtv_write._entry_ptr.79, !154, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 840, i32 2}
!158 = !{ptr @ivtv_stop_decoding._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @ivtv_stop_decoding._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 850, i32 3}
!162 = !{ptr @ivtv_stop_decoding._entry.81, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @ivtv_stop_decoding._entry_ptr.83, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 939, i32 2}
!166 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @ivtv_open._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @ivtv_open._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 942, i32 3}
!171 = !{ptr @ivtv_open._entry.86, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @ivtv_open._entry_ptr.88, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.90, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 950, i32 3}
!175 = !{ptr @ivtv_open._entry.89, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @ivtv_open._entry_ptr.91, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.93, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 952, i32 3}
!179 = !{ptr @ivtv_open._entry.92, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @ivtv_open._entry_ptr.94, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.95, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 957, i32 34}
!183 = !{ptr @.str.97, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 974, i32 4}
!185 = !{ptr @ivtv_open._entry.96, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @ivtv_open._entry_ptr.98, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.100, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/pci/ivtv/ivtv-fileops.c", i32 983, i32 3}
!189 = !{ptr @ivtv_open._entry.99, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @ivtv_open._entry_ptr.101, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{!"sp"}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{i64 5777887}
!202 = !{i64 2156850102}
!203 = !{i64 2156852988}
!204 = !{i64 2156853577}
!205 = !{i64 2156854146}
!206 = !{i64 2156854740}
!207 = !{i64 2156855334}
!208 = !{i64 2156855928}
!209 = !{!"branch_weights", i32 2000, i32 1}
!210 = !{i64 2152184746, i64 2152184771}
!211 = !{i64 2156939361}
