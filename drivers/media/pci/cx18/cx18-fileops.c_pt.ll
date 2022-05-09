; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-fileops.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-fileops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx18_claim_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_cx18_claim_stream\09\09\09\09"
module asm "\09.long\09__crc_cx18_claim_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx18_claim_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22cx18_claim_stream\22\09\09\09\09\09"
module asm "__kstrtabns_cx18_claim_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cx18_release_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_cx18_release_stream\09\09\09\09"
module asm "\09.long\09__crc_cx18_release_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx18_release_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22cx18_release_stream\22\09\09\09\09\09"
module asm "__kstrtabns_cx18_release_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cx18_open_id = type { %struct.v4l2_fh, i32, i32, ptr }
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
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx18_av_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.141, %struct.anon.142, %struct.anon.143, %struct.anon.144, %struct.anon.145, %struct.anon.146, %struct.anon.147 }
%struct.anon.140 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, ptr }
%struct.anon.142 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.143 = type { ptr, ptr }
%struct.anon.144 = type { ptr, ptr, ptr }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr }
%struct.cx18_options = type { [7 x i32], i32, i32, i32 }
%struct.cx18_stream = type { %struct.video_device, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, i32, i32, i32, i32, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.work_struct, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.videobuf_queue, %struct.spinlock, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.106 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.103], %struct.media_entity_enum, i32 }
%struct.anon.103 = type { ptr, ptr }
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
%struct.cx18_queue = type { %struct.list_head, %struct.atomic_t, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.vbi_info = type { %struct.v4l2_format, ptr, i32, [2 x i32], i32, i32, [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], i32, %struct.cx18_mdl, %struct.cx18_buffer }
%struct.v4l2_format = type { i32, %union.anon.120 }
%union.anon.120 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.122, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.122 = type { i8 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.cx18_mdl = type { %struct.list_head, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.cx18_buffer = type { %struct.list_head, i32, ptr, i32, i32 }
%struct.cx18_in_work_order = type { %struct.work_struct, %struct.atomic_t, ptr, i32, i32, %struct.cx18_mailbox, [2 x %struct.cx18_mdl_ack], ptr }
%struct.cx18_mailbox = type { i32, i32, [6 x i32], i32, [6 x i32], i32 }
%struct.cx18_mdl_ack = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.cx18_i2c_algo_callback_data = type { ptr, i32 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cx18_dvb = type { ptr, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dmxdev, %struct.dvb_adapter, %struct.dvb_demux, ptr, %struct.dvb_net, i32, i32, %struct.mutex }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.112, %union.anon.113, i32, ptr, i32, %struct.anon.114, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.112 = type { i64 }
%union.anon.113 = type { ptr }
%struct.anon.114 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.82, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.82 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.poll_table_struct = type { ptr, i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@cx18_claim_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014%s: MPEG Index stream cannot be claimed directly, but something tried.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx18_claim_stream\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/cx18/cx18-fileops.c\00", [58 x i8] zeroinitializer }, align 32
@cx18_claim_stream._entry_ptr = internal global ptr @cx18_claim_stream._entry, section ".printk_index", align 4
@cx18_debug = external dso_local local_unnamed_addr global i32, align 4
@cx18_claim_stream._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s:  info: Start Read VBI\0A\00", [35 x i8] zeroinitializer }, align 32
@cx18_claim_stream._entry_ptr.5 = internal global ptr @cx18_claim_stream._entry.3, section ".printk_index", align 4
@cx18_claim_stream._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s:  info: Stream %d is busy\0A\00", [32 x i8] zeroinitializer }, align 32
@cx18_claim_stream._entry_ptr.8 = internal global ptr @cx18_claim_stream._entry.6, section ".printk_index", align 4
@__kstrtab_cx18_claim_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx18_claim_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_cx18_claim_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx18_claim_stream to i32), ptr @__kstrtab_cx18_claim_stream, ptr @__kstrtabns_cx18_claim_stream }, section "___ksymtab+cx18_claim_stream", align 4
@cx18_release_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s:  warning: Release stream %s not in use!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx18_release_stream\00", [44 x i8] zeroinitializer }, align 32
@cx18_release_stream._entry_ptr = internal global ptr @cx18_release_stream._entry, section ".printk_index", align 4
@__kstrtab_cx18_release_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx18_release_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_cx18_release_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx18_release_stream to i32), ptr @__kstrtab_cx18_release_stream, ptr @__kstrtabns_cx18_release_stream }, section "___ksymtab+cx18_release_stream", align 4
@cx18_start_capture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:  warning: IDX capture start failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx18_start_capture\00", [45 x i8] zeroinitializer }, align 32
@cx18_start_capture._entry_ptr = internal global ptr @cx18_start_capture._entry, section ".printk_index", align 4
@cx18_start_capture._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  info: IDX capture started\0A\00", [62 x i8] zeroinitializer }, align 32
@cx18_start_capture._entry_ptr.15 = internal global ptr @cx18_start_capture._entry.13, section ".printk_index", align 4
@cx18_start_capture._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:  warning: VBI capture start failed\0A\00", [54 x i8] zeroinitializer }, align 32
@cx18_start_capture._entry_ptr.18 = internal global ptr @cx18_start_capture._entry.16, section ".printk_index", align 4
@cx18_start_capture._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:  info: VBI insertion started\0A\00", [60 x i8] zeroinitializer }, align 32
@cx18_start_capture._entry_ptr.21 = internal global ptr @cx18_start_capture._entry.19, section ".printk_index", align 4
@cx18_start_capture._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s:  warning: Failed to start capturing for stream %s\0A\00", [39 x i8] zeroinitializer }, align 32
@cx18_start_capture._entry_ptr.24 = internal global ptr @cx18_start_capture._entry.22, section ".printk_index", align 4
@cx18_v4l2_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s:  file: read %zd bytes from %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx18_v4l2_read\00", [17 x i8] zeroinitializer }, align 32
@cx18_v4l2_read._entry_ptr = internal global ptr @cx18_v4l2_read._entry, section ".printk_index", align 4
@cx18_v4l2_enc_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s:  info: Could not start capture for %s (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx18_v4l2_enc_poll\00", [45 x i8] zeroinitializer }, align 32
@cx18_v4l2_enc_poll._entry_ptr = internal global ptr @cx18_v4l2_enc_poll._entry, section ".printk_index", align 4
@cx18_v4l2_enc_poll._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  file: Encoder poll started capture\0A\00", [53 x i8] zeroinitializer }, align 32
@cx18_v4l2_enc_poll._entry_ptr.31 = internal global ptr @cx18_v4l2_enc_poll._entry.29, section ".printk_index", align 4
@cx18_v4l2_enc_poll._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s:  file: Encoder poll\0A\00", [37 x i8] zeroinitializer }, align 32
@cx18_v4l2_enc_poll._entry_ptr.34 = internal global ptr @cx18_v4l2_enc_poll._entry.32, section ".printk_index", align 4
@cx18_v4l2_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.35, ptr @.str.2, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx18_v4l2_mmap\00", [17 x i8] zeroinitializer }, align 32
@cx18_v4l2_mmap._entry_ptr = internal global ptr @cx18_v4l2_mmap._entry, section ".printk_index", align 4
@cx18_v4l2_mmap._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  file: Encoder mmap started capture\0A\00", [53 x i8] zeroinitializer }, align 32
@cx18_v4l2_mmap._entry_ptr.38 = internal global ptr @cx18_v4l2_mmap._entry.36, section ".printk_index", align 4
@cx18_stop_capture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s:  ioctl: close() of %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx18_stop_capture\00", [46 x i8] zeroinitializer }, align 32
@cx18_stop_capture._entry_ptr = internal global ptr @cx18_stop_capture._entry, section ".printk_index", align 4
@cx18_stop_capture._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s:  info: close stopping capture\0A\00", [59 x i8] zeroinitializer }, align 32
@cx18_stop_capture._entry_ptr.43 = internal global ptr @cx18_stop_capture._entry.41, section ".printk_index", align 4
@cx18_stop_capture._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s:  info: close stopping embedded VBI capture\0A\00", [46 x i8] zeroinitializer }, align 32
@cx18_stop_capture._entry_ptr.46 = internal global ptr @cx18_stop_capture._entry.44, section ".printk_index", align 4
@cx18_stop_capture._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s:  info: close stopping IDX capture\0A\00", [55 x i8] zeroinitializer }, align 32
@cx18_stop_capture._entry_ptr.49 = internal global ptr @cx18_stop_capture._entry.47, section ".printk_index", align 4
@cx18_v4l2_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.50, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx18_v4l2_close\00", [16 x i8] zeroinitializer }, align 32
@cx18_v4l2_close._entry_ptr = internal global ptr @cx18_v4l2_close._entry, section ".printk_index", align 4
@cx18_v4l2_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Failed to initialize on %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx18_v4l2_open\00", [17 x i8] zeroinitializer }, align 32
@cx18_v4l2_open._entry_ptr = internal global ptr @cx18_v4l2_open._entry, section ".printk_index", align 4
@cx18_mute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Can't find valid task handle for mute\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cx18_mute\00", [22 x i8] zeroinitializer }, align 32
@cx18_mute._entry_ptr = internal global ptr @cx18_mute._entry, section ".printk_index", align 4
@cx18_mute._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s:  info: Mute\0A\00", [45 x i8] zeroinitializer }, align 32
@cx18_mute._entry_ptr.57 = internal global ptr @cx18_mute._entry.55, section ".printk_index", align 4
@cx18_unmute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Can't find valid task handle for unmute\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cx18_unmute\00", [20 x i8] zeroinitializer }, align 32
@cx18_unmute._entry_ptr = internal global ptr @cx18_unmute._entry, section ".printk_index", align 4
@cx18_unmute._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s:  info: Unmute\0A\00", [43 x i8] zeroinitializer }, align 32
@cx18_unmute._entry_ptr.62 = internal global ptr @cx18_unmute._entry.60, section ".printk_index", align 4
@cx18_read_pos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s:  file: read %zd from %s, got %zd\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cx18_read_pos\00", [18 x i8] zeroinitializer }, align 32
@cx18_read_pos._entry_ptr = internal global ptr @cx18_read_pos._entry, section ".printk_index", align 4
@cx18_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%s:  warning: Stream %s not initialized before read\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cx18_read\00", [22 x i8] zeroinitializer }, align 32
@cx18_read._entry_ptr = internal global ptr @cx18_read._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cx18_get_mdl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s:  info: EOS %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx18_get_mdl\00", [19 x i8] zeroinitializer }, align 32
@cx18_get_mdl._entry_ptr = internal global ptr @cx18_get_mdl._entry, section ".printk_index", align 4
@cx18_get_mdl._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:  info: User stopped %s\0A\00", [34 x i8] zeroinitializer }, align 32
@cx18_get_mdl._entry_ptr.71 = internal global ptr @cx18_get_mdl._entry.69, section ".printk_index", align 4
@cx18_dualwatch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016%s:  info: dualwatch: change stereo flag from 0x%x to 0x%x.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx18_dualwatch\00", [17 x i8] zeroinitializer }, align 32
@cx18_dualwatch._entry_ptr = internal global ptr @cx18_dualwatch._entry, section ".printk_index", align 4
@cx18_dualwatch._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s:  info: dualwatch: changing stereo flag failed\0A\00", [43 x i8] zeroinitializer }, align 32
@cx18_dualwatch._entry_ptr.76 = internal global ptr @cx18_dualwatch._entry.74, section ".printk_index", align 4
@cx18_copy_buf_to_user._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s:  warning: copy %zd bytes to user failed for %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx18_copy_buf_to_user\00", [42 x i8] zeroinitializer }, align 32
@cx18_copy_buf_to_user._entry_ptr = internal global ptr @cx18_copy_buf_to_user._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cx18_serialized_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s:  file: open %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx18_serialized_open\00", [43 x i8] zeroinitializer }, align 32
@cx18_serialized_open._entry_ptr = internal global ptr @cx18_serialized_open._entry, section ".printk_index", align 4
@cx18_serialized_open._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:  warning: nomem on v4l2 open\0A\00", [60 x i8] zeroinitializer }, align 32
@cx18_serialized_open._entry_ptr.86 = internal global ptr @cx18_serialized_open._entry.84, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 38, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 53, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 57, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 109, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 518, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 522, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 527, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 531, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 546, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 579, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 614, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 618, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 633, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 664, i32 5 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 669, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 705, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 711, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 716, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 720, i32 5 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 745, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 838, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 856, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 858, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 871, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 873, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 476, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 414, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 218, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 237, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 162, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 165, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 352, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 230, i32 6 }
@___asan_gen_.328 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 214, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 174, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 785, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.346 = private constant [41 x i8] c"../drivers/media/pci/cx18/cx18-fileops.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 790, i32 3 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__ksymtab_cx18_claim_stream, ptr @__ksymtab_cx18_release_stream, ptr @cx18_claim_stream._entry, ptr @cx18_claim_stream._entry.3, ptr @cx18_claim_stream._entry.6, ptr @cx18_claim_stream._entry_ptr, ptr @cx18_claim_stream._entry_ptr.5, ptr @cx18_claim_stream._entry_ptr.8, ptr @cx18_copy_buf_to_user._entry, ptr @cx18_copy_buf_to_user._entry_ptr, ptr @cx18_dualwatch._entry, ptr @cx18_dualwatch._entry.74, ptr @cx18_dualwatch._entry_ptr, ptr @cx18_dualwatch._entry_ptr.76, ptr @cx18_get_mdl._entry, ptr @cx18_get_mdl._entry.69, ptr @cx18_get_mdl._entry_ptr, ptr @cx18_get_mdl._entry_ptr.71, ptr @cx18_mute._entry, ptr @cx18_mute._entry.55, ptr @cx18_mute._entry_ptr, ptr @cx18_mute._entry_ptr.57, ptr @cx18_read._entry, ptr @cx18_read._entry_ptr, ptr @cx18_read_pos._entry, ptr @cx18_read_pos._entry_ptr, ptr @cx18_release_stream._entry, ptr @cx18_release_stream._entry_ptr, ptr @cx18_serialized_open._entry, ptr @cx18_serialized_open._entry.84, ptr @cx18_serialized_open._entry_ptr, ptr @cx18_serialized_open._entry_ptr.86, ptr @cx18_start_capture._entry, ptr @cx18_start_capture._entry.13, ptr @cx18_start_capture._entry.16, ptr @cx18_start_capture._entry.19, ptr @cx18_start_capture._entry.22, ptr @cx18_start_capture._entry_ptr, ptr @cx18_start_capture._entry_ptr.15, ptr @cx18_start_capture._entry_ptr.18, ptr @cx18_start_capture._entry_ptr.21, ptr @cx18_start_capture._entry_ptr.24, ptr @cx18_stop_capture._entry, ptr @cx18_stop_capture._entry.41, ptr @cx18_stop_capture._entry.44, ptr @cx18_stop_capture._entry.47, ptr @cx18_stop_capture._entry_ptr, ptr @cx18_stop_capture._entry_ptr.43, ptr @cx18_stop_capture._entry_ptr.46, ptr @cx18_stop_capture._entry_ptr.49, ptr @cx18_unmute._entry, ptr @cx18_unmute._entry.60, ptr @cx18_unmute._entry_ptr, ptr @cx18_unmute._entry_ptr.62, ptr @cx18_v4l2_close._entry, ptr @cx18_v4l2_close._entry_ptr, ptr @cx18_v4l2_enc_poll._entry, ptr @cx18_v4l2_enc_poll._entry.29, ptr @cx18_v4l2_enc_poll._entry.32, ptr @cx18_v4l2_enc_poll._entry_ptr, ptr @cx18_v4l2_enc_poll._entry_ptr.31, ptr @cx18_v4l2_enc_poll._entry_ptr.34, ptr @cx18_v4l2_mmap._entry, ptr @cx18_v4l2_mmap._entry.36, ptr @cx18_v4l2_mmap._entry_ptr, ptr @cx18_v4l2_mmap._entry_ptr.38, ptr @cx18_v4l2_open._entry, ptr @cx18_v4l2_open._entry_ptr, ptr @cx18_v4l2_read._entry, ptr @cx18_v4l2_read._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_claim_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_claim_stream._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_claim_stream._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_release_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_start_capture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_start_capture._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_start_capture._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_start_capture._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_start_capture._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_v4l2_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_v4l2_enc_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_v4l2_enc_poll._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_v4l2_enc_poll._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_v4l2_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_v4l2_mmap._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stop_capture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stop_capture._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stop_capture._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stop_capture._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_v4l2_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_v4l2_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_mute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_mute._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_unmute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_unmute._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_read_pos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_get_mdl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_get_mdl._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_dualwatch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_dualwatch._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_copy_buf_to_user._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_serialized_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_serialized_open._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_claim_stream(ptr nocapture noundef readonly %id, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %id, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cmp = icmp eq i32 %type, 5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_flags = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %type, i32 9
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %s_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end44, label %if.then3

if.then3:                                         ; preds = %if.end
  %id4 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %type, i32 8
  %2 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id4, align 4
  %open_id = getelementptr inbounds %struct.cx18_open_id, ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %open_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5 = icmp eq i32 %3, %5
  br i1 %cmp5, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp9 = icmp eq i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp10 = icmp eq i32 %type, 3
  %or.cond = and i1 %cmp10, %cmp9
  br i1 %or.cond, label %if.then11, label %do.body29

if.then11:                                        ; preds = %if.end7
  %6 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %id4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %7 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then11.cleanup_crit_edge, label %do.end19

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end19:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %name22 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name22) #11
  br label %cleanup

do.body29:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %8 = load i32, ptr @cx18_debug, align 4
  %and30 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.cleanup_crit_edge, label %do.end35

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %name38 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name38, i32 noundef %type) #11
  br label %cleanup

if.end44:                                         ; preds = %if.end
  %open_id45 = getelementptr inbounds %struct.cx18_open_id, ptr %id, i32 0, i32 1
  %9 = ptrtoint ptr %open_id45 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %open_id45, align 4
  %id46 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %type, i32 8
  %11 = ptrtoint ptr %id46 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %id46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp47.not = icmp eq i32 %type, 0
  br i1 %cmp47.not, label %if.end49, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  %insert_mpeg = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 41, i32 5
  %12 = ptrtoint ptr %insert_mpeg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %insert_mpeg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool52.not = icmp eq i32 %13, 0
  br i1 %tobool52.not, label %if.end49.if.else_crit_edge, label %land.lhs.true53

if.end49.if.else_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true53:                                  ; preds = %if.end49
  %vbi.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 41
  %14 = ptrtoint ptr %vbi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vbi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.i.not = icmp eq i32 %15, 4
  br i1 %cmp.i.not, label %land.lhs.true53.if.else_crit_edge, label %land.lhs.true53.if.end62_crit_edge

land.lhs.true53.if.end62_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

land.lhs.true53.if.else_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %land.lhs.true53.if.else_crit_edge, %if.end49.if.else_crit_edge
  %v4l2_dev.i = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 0, i32 7
  %16 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.else.if.end62_crit_edge

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

lor.lhs.false.i:                                  ; preds = %if.else
  %dvb.i = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 1
  %18 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dvb.i, align 8
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %enabled.i = getelementptr inbounds %struct.cx18_dvb, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool3.not.i = icmp eq i32 %21, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.lor.rhs.i_crit_edge, label %land.lhs.true.i.if.end62_crit_edge

land.lhs.true.i.if.end62_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %type.i = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 4
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp.i88 = icmp eq i32 %23, 5
  br i1 %cmp.i88, label %cx18_stream_enabled.exit, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cx18_stream_enabled.exit:                         ; preds = %lor.rhs.i
  %cx.i = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 2
  %24 = ptrtoint ptr %cx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cx.i, align 4
  %arrayidx.i = getelementptr %struct.cx18, ptr %25, i32 0, i32 27, i32 5
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp4.i.not = icmp eq i32 %27, 0
  br i1 %cmp4.i.not, label %cx18_stream_enabled.exit.cleanup_crit_edge, label %cx18_stream_enabled.exit.if.end62_crit_edge

cx18_stream_enabled.exit.if.end62_crit_edge:      ; preds = %cx18_stream_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

cx18_stream_enabled.exit.cleanup_crit_edge:       ; preds = %cx18_stream_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end62:                                         ; preds = %cx18_stream_enabled.exit.if.end62_crit_edge, %land.lhs.true.i.if.end62_crit_edge, %if.else.if.end62_crit_edge, %land.lhs.true53.if.end62_crit_edge
  %28 = phi i32 [ 5, %cx18_stream_enabled.exit.if.end62_crit_edge ], [ 3, %land.lhs.true53.if.end62_crit_edge ], [ 5, %land.lhs.true.i.if.end62_crit_edge ], [ 5, %if.else.if.end62_crit_edge ]
  %s_flags63 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %28, i32 9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %s_flags63) #8
  tail call void @_set_bit(i32 noundef 5, ptr noundef %s_flags63) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %cx18_stream_enabled.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %do.end35, %do.body29.cleanup_crit_edge, %do.end19, %if.then11.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end62 ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %do.end19 ], [ 0, %if.then11.cleanup_crit_edge ], [ -16, %do.end35 ], [ -16, %do.body29.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ 0, %cx18_stream_enabled.exit.cleanup_crit_edge ], [ 0, %lor.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_release_stream(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %id = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %id, align 4
  %type = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %entry.if.end5_crit_edge [
    i32 5, label %entry.cleanup_crit_edge
    i32 3, label %land.lhs.true
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %s_flags = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 9
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %s_flags, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %s_flags6 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 9
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %s_flags6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body, label %if.end18

do.body:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %9 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %name13 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 3
  %10 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name13, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name, ptr noundef %11) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  tail call void @cx18_flush_queues(ptr noundef %s) #8
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp20.not = icmp eq i32 %13, 0
  br i1 %cmp20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %s_flags23 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 9
  %call24 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %s_flags23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.if.end28_crit_edge, label %if.then26

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %s_flags23) #8
  tail call void @cx18_flush_queues(ptr noundef %arrayidx) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end22.if.end28_crit_edge
  %arrayidx30 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 3
  %s_flags31 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 3, i32 9
  %call32 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %s_flags31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end28.cleanup_crit_edge, label %if.then34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then34:                                        ; preds = %if.end28
  %id35 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 3, i32 8
  %14 = ptrtoint ptr %id35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp36 = icmp eq i32 %15, -1
  br i1 %cmp36, label %if.then37, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %s_flags31) #8
  tail call void @cx18_flush_queues(ptr noundef %arrayidx30) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.then34.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_flush_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_start_capture(ptr nocapture noundef readonly %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %id, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %type = getelementptr inbounds %struct.cx18_open_id, ptr %id, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %3
  %type2 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %3, i32 4
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @cx18_claim_stream(ptr noundef %id, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %s_flags = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %3, i32 9
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %s_flags, align 4
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end5.if.then11_crit_edge

if.end5.if.then11_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end5
  %call9 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %s_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end5.if.then11_crit_edge
  tail call void @_set_bit(i32 noundef 8, ptr noundef %s_flags) #8
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %arrayidx15 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 3
  %arrayidx17 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5
  %9 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp19 = icmp eq i32 %10, 0
  br i1 %cmp19, label %if.then20, label %if.end13.if.end100_crit_edge

if.end13.if.end100_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then20:                                        ; preds = %if.end13
  %s_flags21 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 9
  %11 = ptrtoint ptr %s_flags21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %s_flags21, align 4
  %13 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool23.not = icmp eq i32 %13, 0
  br i1 %tobool23.not, label %if.then20.if.end55_crit_edge, label %land.lhs.true

if.then20.if.end55_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.lhs.true:                                    ; preds = %if.then20
  %call25 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %s_flags21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true.if.end55_crit_edge

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then27:                                        ; preds = %land.lhs.true
  %call28 = tail call i32 @cx18_start_v4l2_encode_stream(ptr noundef %arrayidx17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %14 = load i32, ptr @cx18_debug, align 4
  br i1 %tobool29.not, label %do.body40, label %do.body

do.body:                                          ; preds = %if.then27
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %do.body.do.body111.sink.split_crit_edge, label %do.body.do.body111.sink.split.sink.split_crit_edge

do.body.do.body111.sink.split.sink.split_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body111.sink.split.sink.split

do.body.do.body111.sink.split_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body111.sink.split

do.body40:                                        ; preds = %if.then27
  %and41 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body40.if.end55_crit_edge, label %do.end46

do.body40.if.end55_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %name49 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name49) #11
  br label %if.end55

if.end55:                                         ; preds = %do.end46, %do.body40.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %if.then20.if.end55_crit_edge
  %s_flags56 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 3, i32 9
  %15 = ptrtoint ptr %s_flags56 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %s_flags56, align 4
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool58.not = icmp eq i32 %17, 0
  br i1 %tobool58.not, label %if.end55.if.end100_crit_edge, label %land.lhs.true59

if.end55.if.end100_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

land.lhs.true59:                                  ; preds = %if.end55
  %call61 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %s_flags56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %land.lhs.true59.if.end100_crit_edge

land.lhs.true59.if.end100_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then63:                                        ; preds = %land.lhs.true59
  %call64 = tail call i32 @cx18_start_v4l2_encode_stream(ptr noundef %arrayidx15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %18 = load i32, ptr @cx18_debug, align 4
  br i1 %tobool65.not, label %do.body84, label %do.body67

do.body67:                                        ; preds = %if.then63
  %and68 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body67.do.body111.sink.split_crit_edge, label %do.body67.do.body111.sink.split.sink.split_crit_edge

do.body67.do.body111.sink.split.sink.split_crit_edge: ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body111.sink.split.sink.split

do.body67.do.body111.sink.split_crit_edge:        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body111.sink.split

do.body84:                                        ; preds = %if.then63
  %and85 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %do.body84.if.end100_crit_edge, label %do.end90

do.body84.if.end100_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

do.end90:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  %name93 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name93) #11
  br label %if.end100

if.end100:                                        ; preds = %do.end90, %do.body84.if.end100_crit_edge, %land.lhs.true59.if.end100_crit_edge, %if.end55.if.end100_crit_edge, %if.end13.if.end100_crit_edge
  %call101 = tail call i32 @cx18_start_v4l2_encode_stream(ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then103, label %if.end100.do.body111_crit_edge

if.end100.do.body111_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body111

if.then103:                                       ; preds = %if.end100
  tail call void @_set_bit(i32 noundef 8, ptr noundef %s_flags) #8
  %i_flags = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 32
  %call105 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %i_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then103.cleanup_crit_edge, label %if.then107

if.then103.cleanup_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then107:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  %handle = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %3, i32 5
  %19 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %handle, align 8
  %call108 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537001991, i32 noundef 1, i32 noundef %20) #8
  br label %cleanup

do.body111.sink.split.sink.split:                 ; preds = %do.body67.do.body111.sink.split.sink.split_crit_edge, %do.body.do.body111.sink.split.sink.split_crit_edge
  %.str.17.sink = phi ptr [ @.str.11, %do.body.do.body111.sink.split.sink.split_crit_edge ], [ @.str.17, %do.body67.do.body111.sink.split.sink.split_crit_edge ]
  %s_flags21.sink.ph = phi ptr [ %s_flags21, %do.body.do.body111.sink.split.sink.split_crit_edge ], [ %s_flags56, %do.body67.do.body111.sink.split.sink.split_crit_edge ]
  %name76 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.17.sink, ptr noundef %name76) #11
  br label %do.body111.sink.split

do.body111.sink.split:                            ; preds = %do.body111.sink.split.sink.split, %do.body67.do.body111.sink.split_crit_edge, %do.body.do.body111.sink.split_crit_edge
  %s_flags21.sink = phi ptr [ %s_flags21, %do.body.do.body111.sink.split_crit_edge ], [ %s_flags56, %do.body67.do.body111.sink.split_crit_edge ], [ %s_flags21.sink.ph, %do.body111.sink.split.sink.split ]
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags21.sink) #8
  br label %do.body111

do.body111:                                       ; preds = %do.body111.sink.split, %if.end100.do.body111_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %21 = load i32, ptr @cx18_debug, align 4
  %and112 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %do.body111.do.end126_crit_edge, label %do.end117

do.body111.do.end126_crit_edge:                   ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end126

do.end117:                                        ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #10
  %name120 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %name122 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %3, i32 3
  %22 = ptrtoint ptr %name122 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name122, align 8
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name120, ptr noundef %23) #11
  br label %do.end126

do.end126:                                        ; preds = %do.end117, %do.body111.do.end126_crit_edge
  %24 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp128 = icmp eq i32 %25, 0
  br i1 %cmp128, label %if.then129, label %do.end126.if.end148_crit_edge

do.end126.if.end148_crit_edge:                    ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then129:                                       ; preds = %do.end126
  %s_flags130 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 9
  %26 = ptrtoint ptr %s_flags130 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %s_flags130, align 4
  %28 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool132.not = icmp eq i32 %28, 0
  br i1 %tobool132.not, label %if.then129.if.end136_crit_edge, label %if.then133

if.then129.if.end136_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.then133:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  %call134 = tail call i32 @cx18_stop_v4l2_encode_stream(ptr noundef %arrayidx17, i32 noundef 0) #8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags130) #8
  br label %if.end136

if.end136:                                        ; preds = %if.then133, %if.then129.if.end136_crit_edge
  %s_flags137 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 3, i32 9
  %29 = ptrtoint ptr %s_flags137 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %s_flags137, align 4
  %31 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool139.not = icmp eq i32 %31, 0
  br i1 %tobool139.not, label %if.end136.if.end148_crit_edge, label %land.lhs.true140

if.end136.if.end148_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

land.lhs.true140:                                 ; preds = %if.end136
  %32 = ptrtoint ptr %s_flags137 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %s_flags137, align 4
  %34 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool143.not = icmp eq i32 %34, 0
  br i1 %tobool143.not, label %if.then144, label %land.lhs.true140.if.end148_crit_edge

land.lhs.true140.if.end148_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then144:                                       ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #10
  %call145 = tail call i32 @cx18_stop_v4l2_encode_stream(ptr noundef %arrayidx15, i32 noundef 0) #8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags137) #8
  br label %if.end148

if.end148:                                        ; preds = %if.then144, %land.lhs.true140.if.end148_crit_edge, %if.end136.if.end148_crit_edge, %do.end126.if.end148_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags) #8
  tail call void @cx18_release_stream(ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %if.end148, %if.then107, %if.then103.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11 ], [ -5, %if.end148 ], [ -1, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.then107 ], [ 0, %if.then103.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_start_v4l2_encode_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_vapi(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_stop_v4l2_encode_stream(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_v4l2_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  %vt.i.i.i.i = alloca %struct.v4l2_tuner, align 4
  %wait.i.i.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx1, align 4
  %type = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %6 = load i32, ptr @cx18_debug, align 4
  %7 = and i32 %6, 288
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %7)
  %.not = icmp eq i32 %7, 288
  br i1 %.not, label %do.end, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 2, i32 4
  %name5 = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 3
  %8 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name5, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name, i32 noundef %count, ptr noundef %9) #11
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %serialize_lock = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #8
  %call9 = tail call i32 @cx18_start_capture(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %serialize_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end13, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %do.end8
  %vb_type = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 30
  %10 = ptrtoint ptr %vb_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vb_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %land.lhs.true14, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true14:                                  ; preds = %if.end13
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp16 = icmp eq i32 %13, 2
  br i1 %cmp16, label %if.then17, label %land.lhs.true14.if.end20_crit_edge

land.lhs.true14.if.end20_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then17:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  %vbuf_q = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 28
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %14 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_flags, align 4
  %and18 = and i32 %15, 2048
  %call19 = tail call i32 @videobuf_read_stream(ptr noundef %vbuf_q, ptr noundef %buf, i32 noundef %count, ptr noundef %pos, i32 noundef 0, i32 noundef %and18) #8
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true14.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %f_flags21 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %16 = ptrtoint ptr %f_flags21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_flags21, align 4
  %and22 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not.i = icmp eq i32 %count, 0
  br i1 %tobool.not.i, label %if.end20.cond.end.i_crit_edge, label %cond.true.i

if.end20.cond.end.i_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end20
  %cx1.i.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 2
  %18 = ptrtoint ptr %cx1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cx1.i.i, align 4
  %ana_capturing.i.i = getelementptr inbounds %struct.cx18, ptr %19, i32 0, i32 33
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing.i.i, i32 noundef 4) #8
  %20 = ptrtoint ptr %ana_capturing.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %ana_capturing.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cond.true.i.if.end9.i.i_crit_edge

cond.true.i.if.end9.i.i_crit_edge:                ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %cond.true.i
  %id.i.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 8
  %22 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp2.i.i = icmp eq i32 %23, -1
  br i1 %cmp2.i.i, label %do.body.i.i, label %land.lhs.true.i.i.if.end9.i.i_crit_edge

land.lhs.true.i.i.if.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

do.body.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %24 = load i32, ptr @cx18_debug, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.cond.end.i_crit_edge, label %do.end.i.i

do.body.i.i.cond.end.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i = getelementptr inbounds %struct.cx18, ptr %19, i32 0, i32 2, i32 4
  %name5.i.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 3
  %25 = ptrtoint ptr %name5.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name5.i.i, align 8
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name.i.i, ptr noundef %26) #11
  br label %cond.end.i

if.end9.i.i:                                      ; preds = %land.lhs.true.i.i.if.end9.i.i_crit_edge, %cond.true.i.if.end9.i.i_crit_edge
  %type.i.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 4
  %27 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp10.i.i = icmp eq i32 %28, 3
  br i1 %cmp10.i.i, label %land.lhs.true11.i.i, label %if.end9.i.i.if.end15.i.i_crit_edge

if.end9.i.i.if.end15.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

land.lhs.true11.i.i:                              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %vbi.i.i.i = getelementptr inbounds %struct.cx18, ptr %19, i32 0, i32 41
  %29 = ptrtoint ptr %vbi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vbi.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp.i.not.i.i = icmp ne i32 %30, 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %land.lhs.true11.i.i, %if.end9.i.i.if.end15.i.i_crit_edge
  %tobool53.not.i.i = phi i1 [ false, %if.end9.i.i.if.end15.i.i_crit_edge ], [ %cmp.i.not.i.i, %land.lhs.true11.i.i ]
  %31 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i.i, i32 0, i32 2
  %33 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i.i, i32 0, i32 3
  %34 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i.i, i32 0, i32 3, i32 1
  %audmode.i.i.i.i = getelementptr inbounds %struct.v4l2_tuner, ptr %vt.i.i.i.i, i32 0, i32 7
  %rxsubchans.i.i.i.i = getelementptr inbounds %struct.v4l2_tuner, ptr %vt.i.i.i.i, i32 0, i32 6
  %q_full24.i.i.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 19
  %s_flags38.i.i.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool51.not.i.i.i = icmp eq i32 %and22, 0
  %waitq.i.i.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 11
  %depth.i.i.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 19, i32 1
  %name142.i.i.i.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 3
  %sliced_mpeg_mdl.i.i = getelementptr inbounds %struct.cx18, ptr %19, i32 0, i32 41, i32 10
  %q_free.i.i.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 17
  %out_work_order.i.i.i.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 21
  %inserted_frame.i.i = getelementptr inbounds %struct.cx18, ptr %19, i32 0, i32 41, i32 9
  %vbi_data_inserted.i.i = getelementptr inbounds %struct.cx18, ptr %19, i32 0, i32 43
  %readpos35.i.i = getelementptr inbounds %struct.cx18, ptr %19, i32 0, i32 41, i32 10, i32 7
  %bytesused36.i.i = getelementptr inbounds %struct.cx18, ptr %19, i32 0, i32 41, i32 10, i32 6
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end49.i.i.for.cond.i.i_crit_edge, %if.end15.i.i
  %tot_written.0.i.i = phi i32 [ 0, %if.end15.i.i ], [ %add50.i.i, %if.end49.i.i.for.cond.i.i_crit_edge ]
  %35 = ptrtoint ptr %cx1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cx1.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.cx18, ptr %36, i32 0, i32 29, i32 3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i.i.i) #8
  %37 = ptrtoint ptr %wait.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %wait.i.i.i, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !163) #8
  %and.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i.i.i, align 8
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %31, align 4
  %43 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @autoremove_wake_function, ptr %32, align 4
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %33, ptr %33, align 4
  %45 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %33, ptr %34, align 4
  %dualwatch_jiffies.i.i.i = getelementptr inbounds %struct.cx18, ptr %36, i32 0, i32 23
  %audio_mode.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %36, i32 0, i32 19, i32 11, i32 3
  %subdevs.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %36, i32 0, i32 2, i32 2
  %dualwatch_stereo_mode.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %36, i32 0, i32 24
  %name.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %36, i32 0, i32 2, i32 4
  %s_flags.i.i.i = getelementptr %struct.cx18, ptr %36, i32 0, i32 29, i32 3, i32 9
  %q_full.i.i.i = getelementptr %struct.cx18, ptr %36, i32 0, i32 29, i32 3, i32 19
  %type18.i.i.i = getelementptr %struct.cx18, ptr %36, i32 0, i32 29, i32 3, i32 4
  %q_free.i.i.i.i = getelementptr %struct.cx18, ptr %36, i32 0, i32 29, i32 3, i32 17
  %out_work_order.i.i.i.i.i = getelementptr %struct.cx18, ptr %36, i32 0, i32 29, i32 3, i32 21
  %readpos.i.i.i = getelementptr inbounds %struct.cx18, ptr %36, i32 0, i32 41, i32 10, i32 7
  %bytesused.i.i.i = getelementptr inbounds %struct.cx18, ptr %36, i32 0, i32 41, i32 10, i32 6
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %signal_pending.exit.i.i.i.while.cond.i.i.i_crit_edge, %for.cond.i.i
  %46 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i94.i.i = icmp eq i32 %47, 0
  br i1 %cmp.i94.i.i, label %if.then.i.i.i, label %while.cond.i.i.i.if.end23.i.i.i_crit_edge

while.cond.i.i.i.if.end23.i.i.i_crit_edge:        ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i.i.i

if.then.i.i.i:                                    ; preds = %while.cond.i.i.i
  %48 = ptrtoint ptr %dualwatch_jiffies.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dualwatch_jiffies.i.i.i, align 8
  %add.i.i.i = add i32 %49, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp6.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp6.i.i.i, label %if.then7.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then7.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %52 = ptrtoint ptr %dualwatch_jiffies.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %dualwatch_jiffies.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %vt.i.i.i.i) #8
  %53 = ptrtoint ptr %audio_mode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %audio_mode.i.i.i.i, align 4
  %call.i.i95.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %54) #8
  %55 = call ptr @memset(ptr %vt.i.i.i.i, i32 0, i32 84)
  %56 = ptrtoint ptr %subdevs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn79.i.i.i.i = load ptr, ptr %subdevs.i.i.i.i, align 4
  %cmp.not81.i.i.i.i = icmp eq ptr %.pn79.i.i.i.i, %subdevs.i.i.i.i
  br i1 %cmp.not81.i.i.i.i, label %if.then7.i.i.i.do.end.i.i.i.i_crit_edge, label %if.then7.i.i.i.for.body.i.i.i.i_crit_edge

if.then7.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.then7.i.i.i
  br label %for.body.i.i.i.i

if.then7.i.i.i.do.end.i.i.i.i_crit_edge:          ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then7.i.i.i.for.body.i.i.i.i_crit_edge
  %.pn82.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn79.i.i.i.i, %if.then7.i.i.i.for.body.i.i.i.i_crit_edge ]
  %__sd.083.i.i.i.i = getelementptr i8, ptr %.pn82.i.i.i.i, i32 -80
  %ops.i.i.i.i = getelementptr i8, ptr %.pn82.i.i.i.i, i32 24
  %57 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i.i.i.i, align 4
  %tuner.i.i.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %tuner.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tuner.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %g_tuner.i.i.i.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %g_tuner.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %g_tuner.i.i.i.i, align 4
  %tobool6.not.i.i.i.i = icmp eq ptr %62, null
  br i1 %tobool6.not.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i.i.i.i = call i32 %62(ptr noundef %__sd.083.i.i.i.i, ptr noundef nonnull %vt.i.i.i.i) #8
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %63 = ptrtoint ptr %.pn82.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn.i.i.i.i = load ptr, ptr %.pn82.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %subdevs.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.inc.i.i.i.i.do.end.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.do.end.i.i.i.i_crit_edge:         ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %for.inc.i.i.i.i.do.end.i.i.i.i_crit_edge, %if.then7.i.i.i.do.end.i.i.i.i_crit_edge
  %64 = ptrtoint ptr %audmode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %audmode.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %65)
  %cmp18.i.i.i.i = icmp eq i32 %65, 4
  br i1 %cmp18.i.i.i.i, label %land.lhs.true19.i.i.i.i, label %do.end.i.i.i.i.if.end22.i.i.i.i_crit_edge

do.end.i.i.i.i.if.end22.i.i.i.i_crit_edge:        ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i.i.i

land.lhs.true19.i.i.i.i:                          ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %rxsubchans.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rxsubchans.i.i.i.i, align 4
  %and.i125.i.i.i = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125.i.i.i)
  %tobool20.not.i.i.i.i = icmp eq i32 %and.i125.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %tobool20.not.i.i.i.i, i32 %call.i.i95.i.i, i32 512
  br label %if.end22.i.i.i.i

if.end22.i.i.i.i:                                 ; preds = %land.lhs.true19.i.i.i.i, %do.end.i.i.i.i.if.end22.i.i.i.i_crit_edge
  %new_stereo_mode.0.i.i.i.i = phi i32 [ %call.i.i95.i.i, %do.end.i.i.i.i.if.end22.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i, %land.lhs.true19.i.i.i.i ]
  %68 = ptrtoint ptr %dualwatch_stereo_mode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dualwatch_stereo_mode.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_stereo_mode.0.i.i.i.i, i32 %69)
  %cmp23.i.i.i.i = icmp eq i32 %new_stereo_mode.0.i.i.i.i, %69
  br i1 %cmp23.i.i.i.i, label %if.end22.i.i.i.i.cx18_dualwatch.exit.i.i.i_crit_edge, label %do.body26.i.i.i.i

if.end22.i.i.i.i.cx18_dualwatch.exit.i.i.i_crit_edge: ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_dualwatch.exit.i.i.i

do.body26.i.i.i.i:                                ; preds = %if.end22.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %70 = load i32, ptr @cx18_debug, align 4
  %and27.i.i.i.i = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i.i.i)
  %tobool28.not.i.i.i.i = icmp eq i32 %and27.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i, label %do.body26.i.i.i.i.do.end39.i.i.i.i_crit_edge, label %do.end32.i.i.i.i

do.body26.i.i.i.i.do.end39.i.i.i.i_crit_edge:     ; preds = %do.body26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i.i.i.i

do.end32.i.i.i.i:                                 ; preds = %do.body26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call36.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name.i.i.i.i, i32 noundef %69, i32 noundef %new_stereo_mode.0.i.i.i.i) #11
  br label %do.end39.i.i.i.i

do.end39.i.i.i.i:                                 ; preds = %do.end32.i.i.i.i, %do.body26.i.i.i.i.do.end39.i.i.i.i_crit_edge
  %71 = ptrtoint ptr %audio_mode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %audio_mode.i.i.i.i, align 4
  %handler.i.i.i.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %handler.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %handler.i.i.i.i.i.i, align 8
  %lock.i.i.i.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %lock.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lock.i.i.i.i.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %76, i32 noundef 0) #8
  %call.i.i126.i.i.i = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %72, i32 noundef %new_stereo_mode.0.i.i.i.i) #8
  %77 = ptrtoint ptr %handler.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %handler.i.i.i.i.i.i, align 8
  %lock.i4.i.i.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %lock.i4.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lock.i4.i.i.i.i.i, align 4
  call void @mutex_unlock(ptr noundef %80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i126.i.i.i)
  %tobool43.not.i.i.i.i = icmp eq i32 %call.i.i126.i.i.i, 0
  br i1 %tobool43.not.i.i.i.i, label %do.end39.i.i.i.i.cx18_dualwatch.exit.i.i.i_crit_edge, label %do.body45.i.i.i.i

do.end39.i.i.i.i.cx18_dualwatch.exit.i.i.i_crit_edge: ; preds = %do.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_dualwatch.exit.i.i.i

do.body45.i.i.i.i:                                ; preds = %do.end39.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %81 = load i32, ptr @cx18_debug, align 4
  %and46.i.i.i.i = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i.i.i)
  %tobool47.not.i.i.i.i = icmp eq i32 %and46.i.i.i.i, 0
  br i1 %tobool47.not.i.i.i.i, label %do.body45.i.i.i.i.cx18_dualwatch.exit.i.i.i_crit_edge, label %do.end51.i.i.i.i

do.body45.i.i.i.i.cx18_dualwatch.exit.i.i.i_crit_edge: ; preds = %do.body45.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_dualwatch.exit.i.i.i

do.end51.i.i.i.i:                                 ; preds = %do.body45.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call56.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name.i.i.i.i) #11
  br label %cx18_dualwatch.exit.i.i.i

cx18_dualwatch.exit.i.i.i:                        ; preds = %do.end51.i.i.i.i, %do.body45.i.i.i.i.cx18_dualwatch.exit.i.i.i_crit_edge, %do.end39.i.i.i.i.cx18_dualwatch.exit.i.i.i_crit_edge, %if.end22.i.i.i.i.cx18_dualwatch.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %vt.i.i.i.i) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %cx18_dualwatch.exit.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %82 = ptrtoint ptr %s_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %s_flags.i.i.i, align 4
  %84 = and i32 %83, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i.i.i = icmp eq i32 %84, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.end19.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.i.if.end19.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %85 = ptrtoint ptr %s_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %s_flags.i.i.i, align 4
  %87 = and i32 %86, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool12.not.i.i.i = icmp eq i32 %87, 0
  br i1 %tobool12.not.i.i.i, label %while.cond14.preheader.i.i.i, label %land.lhs.true.i.i.i.if.end19.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end19.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i.i

while.cond14.preheader.i.i.i:                     ; preds = %land.lhs.true.i.i.i
  %call15139.i.i.i = call ptr @cx18_dequeue(ptr noundef %arrayidx.i.i.i, ptr noundef %q_full.i.i.i) #8
  %tobool16.not140.i.i.i = icmp eq ptr %call15139.i.i.i, null
  br i1 %tobool16.not140.i.i.i, label %while.cond14.preheader.i.i.i.if.end19.i.i.i_crit_edge, label %while.cond14.preheader.i.i.i.while.body17.i.i.i_crit_edge

while.cond14.preheader.i.i.i.while.body17.i.i.i_crit_edge: ; preds = %while.cond14.preheader.i.i.i
  br label %while.body17.i.i.i

while.cond14.preheader.i.i.i.if.end19.i.i.i_crit_edge: ; preds = %while.cond14.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i.i

while.body17.i.i.i:                               ; preds = %while.body17.i.i.i.while.body17.i.i.i_crit_edge, %while.cond14.preheader.i.i.i.while.body17.i.i.i_crit_edge
  %call15141.i.i.i = phi ptr [ %call15.i.i.i, %while.body17.i.i.i.while.body17.i.i.i_crit_edge ], [ %call15139.i.i.i, %while.cond14.preheader.i.i.i.while.body17.i.i.i_crit_edge ]
  %88 = ptrtoint ptr %type18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type18.i.i.i, align 4
  call void @cx18_process_vbi_data(ptr noundef %36, ptr noundef nonnull %call15141.i.i.i, i32 noundef %89) #8
  %call.i.i127.i.i.i = call ptr @_cx18_enqueue(ptr noundef %arrayidx.i.i.i, ptr noundef nonnull %call15141.i.i.i, ptr noundef %q_free.i.i.i.i, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %90 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %90, ptr noundef %out_work_order.i.i.i.i.i) #8
  %call15.i.i.i = call ptr @cx18_dequeue(ptr noundef %arrayidx.i.i.i, ptr noundef %q_full.i.i.i) #8
  %tobool16.not.i.i.i = icmp eq ptr %call15.i.i.i, null
  br i1 %tobool16.not.i.i.i, label %while.body17.i.i.i.if.end19.i.i.i_crit_edge, label %while.body17.i.i.i.while.body17.i.i.i_crit_edge

while.body17.i.i.i.while.body17.i.i.i_crit_edge:  ; preds = %while.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body17.i.i.i

while.body17.i.i.i.if.end19.i.i.i_crit_edge:      ; preds = %while.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %while.body17.i.i.i.if.end19.i.i.i_crit_edge, %while.cond14.preheader.i.i.i.if.end19.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end19.i.i.i_crit_edge, %if.end.i.i.i.if.end19.i.i.i_crit_edge
  %91 = ptrtoint ptr %readpos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %readpos.i.i.i, align 4
  %93 = ptrtoint ptr %bytesused.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bytesused.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp20.not.i.i.i = icmp eq i32 %92, %94
  br i1 %cmp20.not.i.i.i, label %if.end19.i.i.i.if.end23.i.i.i_crit_edge, label %cx18_get_mdl.exit.i.i

if.end19.i.i.i.if.end23.i.i.i_crit_edge:          ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.end19.i.i.i.if.end23.i.i.i_crit_edge, %while.cond.i.i.i.if.end23.i.i.i_crit_edge
  %call25.i.i.i = call ptr @cx18_dequeue(ptr noundef %arrayidx, ptr noundef %q_full24.i.i.i) #8
  %tobool26.not.i.i.i = icmp eq ptr %call25.i.i.i, null
  br i1 %tobool26.not.i.i.i, label %if.end37.i.i.i, label %if.then27.i.i.i

if.then27.i.i.i:                                  ; preds = %if.end23.i.i.i
  %m_flags.i.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %call25.i.i.i, i32 0, i32 3
  %call28.i.i.i = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %m_flags.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i.i)
  %tobool29.not.i.i.i = icmp eq i32 %call28.i.i.i, 0
  br i1 %tobool29.not.i.i.i, label %if.then27.i.i.i.cx18_get_mdl.exit.thread122.i.i_crit_edge, label %if.end31.i.i.i

if.then27.i.i.i.cx18_get_mdl.exit.thread122.i.i_crit_edge: ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_get_mdl.exit.thread122.i.i

if.end31.i.i.i:                                   ; preds = %if.then27.i.i.i
  %95 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp33.i.i.i = icmp eq i32 %96, 0
  br i1 %cmp33.i.i.i, label %if.then34.i.i.i, label %if.else.i.i.i

if.then34.i.i.i:                                  ; preds = %if.end31.i.i.i
  %buf_list.i.i.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %call25.i.i.i, i32 0, i32 4
  %97 = ptrtoint ptr %buf_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %buf_list.i.i.i.i, align 4
  %cmp.i.not.i.i.i.i.i = icmp eq ptr %98, %buf_list.i.i.i.i
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then34.i.i.i.if.else.i.i.i.i_crit_edge, label %list_is_singular.exit.i.i.i.i

if.then34.i.i.i.if.else.i.i.i.i_crit_edge:        ; preds = %if.then34.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i.i.i

list_is_singular.exit.i.i.i.i:                    ; preds = %if.then34.i.i.i
  %prev.i.i.i.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %call25.i.i.i, i32 0, i32 4, i32 1
  %99 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %98, %100
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i128.i.i.i, label %list_is_singular.exit.i.i.i.i.if.else.i.i.i.i_crit_edge

list_is_singular.exit.i.i.i.i.if.else.i.i.i.i_crit_edge: ; preds = %list_is_singular.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i.i.i

if.then.i128.i.i.i:                               ; preds = %list_is_singular.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @cx18_buf_swap(ptr noundef %98) #8
  br label %cx18_get_mdl.exit.thread122.i.i

if.else.i.i.i.i:                                  ; preds = %list_is_singular.exit.i.i.i.i.if.else.i.i.i.i_crit_edge, %if.then34.i.i.i.if.else.i.i.i.i_crit_edge
  call void @_cx18_mdl_swap(ptr noundef nonnull %call25.i.i.i) #8
  br label %cx18_get_mdl.exit.thread122.i.i

if.else.i.i.i:                                    ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @cx18_process_vbi_data(ptr noundef %36, ptr noundef nonnull %call25.i.i.i, i32 noundef %96) #8
  br label %cx18_get_mdl.exit.thread122.i.i

if.end37.i.i.i:                                   ; preds = %if.end23.i.i.i
  %101 = ptrtoint ptr %s_flags38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %s_flags38.i.i.i, align 4
  %103 = and i32 %102, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool40.not.i.i.i = icmp eq i32 %103, 0
  br i1 %tobool40.not.i.i.i, label %do.body.i.i.i, label %if.end50.i.i.i

do.body.i.i.i:                                    ; preds = %if.end37.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %104 = load i32, ptr @cx18_debug, align 4
  %and.i.i.i = and i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool42.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool42.not.i.i.i, label %do.body.i.i.i.if.then18.i.i_crit_edge, label %do.end.i.i.i

do.body.i.i.i.if.then18.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %name142.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %name142.i.i.i.i, align 8
  %call46.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name.i.i.i.i, ptr noundef %106) #11
  br label %if.then18.i.i

if.end50.i.i.i:                                   ; preds = %if.end37.i.i.i
  br i1 %tobool51.not.i.i.i, label %if.end53.i.i.i, label %if.end50.i.i.i.if.then18.thread207.i.i_crit_edge

if.end50.i.i.i.if.then18.thread207.i.i_crit_edge: ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.thread207.i.i

if.end53.i.i.i:                                   ; preds = %if.end50.i.i.i
  call void @prepare_to_wait(ptr noundef %waitq.i.i.i, ptr noundef nonnull %wait.i.i.i, i32 noundef 1) #8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %depth.i.i.i, i32 noundef 4) #8
  %107 = ptrtoint ptr %depth.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %depth.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool56.not.i.i.i = icmp eq i32 %108, 0
  br i1 %tobool56.not.i.i.i, label %if.then57.i.i.i, label %if.end53.i.i.i.if.end58.i.i.i_crit_edge

if.end53.i.i.i.if.end58.i.i.i_crit_edge:          ; preds = %if.end53.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i.i.i

if.then57.i.i.i:                                  ; preds = %if.end53.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @schedule() #8
  br label %if.end58.i.i.i

if.end58.i.i.i:                                   ; preds = %if.then57.i.i.i, %if.end53.i.i.i.if.end58.i.i.i_crit_edge
  call void @finish_wait(ptr noundef %waitq.i.i.i, ptr noundef nonnull %wait.i.i.i) #8
  %109 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task.i.i.i, align 8
  %stack.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %stack.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %stack.i.i.i.i.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %112, align 4
  %115 = and i32 %114, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i129.i.i.i = icmp eq i32 %115, 0
  br i1 %tobool.not.i129.i.i.i, label %signal_pending.exit.i.i.i, label %if.end58.i.i.i.do.body65.i.i.i_crit_edge, !prof !173

if.end58.i.i.i.do.body65.i.i.i_crit_edge:         ; preds = %if.end58.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body65.i.i.i

signal_pending.exit.i.i.i:                        ; preds = %if.end58.i.i.i
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %112, align 4
  %and1.i.i.i.i.i.i.i.i = and i32 %117, 1
  %tobool63.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i.i, 0
  br i1 %tobool63.not.i.i.i, label %signal_pending.exit.i.i.i.while.cond.i.i.i_crit_edge, label %signal_pending.exit.i.i.i.do.body65.i.i.i_crit_edge

signal_pending.exit.i.i.i.do.body65.i.i.i_crit_edge: ; preds = %signal_pending.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body65.i.i.i

signal_pending.exit.i.i.i.while.cond.i.i.i_crit_edge: ; preds = %signal_pending.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i

do.body65.i.i.i:                                  ; preds = %signal_pending.exit.i.i.i.do.body65.i.i.i_crit_edge, %if.end58.i.i.i.do.body65.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %118 = load i32, ptr @cx18_debug, align 4
  %and66.i.i.i = and i32 %118, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i.i.i)
  %tobool67.not.i.i.i = icmp eq i32 %and66.i.i.i, 0
  br i1 %tobool67.not.i.i.i, label %do.body65.i.i.i.if.then18.thread207.i.i_crit_edge, label %do.end71.i.i.i

do.body65.i.i.i.if.then18.thread207.i.i_crit_edge: ; preds = %do.body65.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.thread207.i.i

do.end71.i.i.i:                                   ; preds = %do.body65.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %name142.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %name142.i.i.i.i, align 8
  %call77.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name.i.i.i.i, ptr noundef %120) #11
  br label %if.then18.thread207.i.i

cx18_get_mdl.exit.thread122.i.i:                  ; preds = %if.else.i.i.i, %if.else.i.i.i.i, %if.then.i128.i.i.i, %if.then27.i.i.i.cx18_get_mdl.exit.thread122.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i.i.i) #8
  br label %if.end26.i.i

cx18_get_mdl.exit.i.i:                            ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sliced_mpeg_mdl.i.i.i = getelementptr inbounds %struct.cx18, ptr %36, i32 0, i32 41, i32 10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i.i.i) #8
  br label %if.end26.i.i

if.then18.thread207.i.i:                          ; preds = %do.end71.i.i.i, %do.body65.i.i.i.if.then18.thread207.i.i_crit_edge, %if.end50.i.i.i.if.then18.thread207.i.i_crit_edge
  %rc.0.ph.ph.i.i = phi i32 [ -4, %do.end71.i.i.i ], [ -4, %do.body65.i.i.i.if.then18.thread207.i.i_crit_edge ], [ -11, %if.end50.i.i.i.if.then18.thread207.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tot_written.0.i.i)
  %tobool19.not209.not.i.i = icmp eq i32 %tot_written.0.i.i, 0
  %tot_written.0.mux212.i.i = select i1 %tobool19.not209.not.i.i, i32 %rc.0.ph.ph.i.i, i32 %tot_written.0.i.i
  br label %cond.end.i

if.then18.i.i:                                    ; preds = %do.end.i.i.i, %do.body.i.i.i.if.then18.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tot_written.0.i.i)
  %tobool19.not.i.not.i = icmp eq i32 %tot_written.0.i.i, 0
  br i1 %tobool19.not.i.not.i, label %if.then23.i.i, label %if.then18.i.i.cond.end.i_crit_edge

if.then18.i.i.cond.end.i_crit_edge:               ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

if.then23.i.i:                                    ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_clear_bit(i32 noundef 7, ptr noundef %s_flags38.i.i.i) #8
  call void @_clear_bit(i32 noundef 8, ptr noundef %s_flags38.i.i.i) #8
  call void @cx18_release_stream(ptr noundef %arrayidx) #8
  br label %cond.end.i

if.end26.i.i:                                     ; preds = %cx18_get_mdl.exit.i.i, %cx18_get_mdl.exit.thread122.i.i
  %retval.0.i126.i.i = phi ptr [ %call25.i.i.i, %cx18_get_mdl.exit.thread122.i.i ], [ %sliced_mpeg_mdl.i.i.i, %cx18_get_mdl.exit.i.i ]
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %tot_written.0.i.i
  %sub.i.i = sub i32 %count, %tot_written.0.i.i
  %curr_buf.i.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %retval.0.i126.i.i, i32 0, i32 5
  %121 = ptrtoint ptr %curr_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %curr_buf.i.i.i, align 4
  %cmp.i96.i.i = icmp eq ptr %122, null
  br i1 %cmp.i96.i.i, label %if.then.i97.i.i, label %if.end26.i.i.if.end.i98.i.i_crit_edge

if.end26.i.i.if.end.i98.i.i_crit_edge:            ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i98.i.i

if.then.i97.i.i:                                  ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %buf_list.i.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %retval.0.i126.i.i, i32 0, i32 4
  %123 = ptrtoint ptr %buf_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %buf_list.i.i.i, align 4
  %125 = ptrtoint ptr %curr_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %curr_buf.i.i.i, align 4
  br label %if.end.i98.i.i

if.end.i98.i.i:                                   ; preds = %if.then.i97.i.i, %if.end26.i.i.if.end.i98.i.i_crit_edge
  %126 = ptrtoint ptr %curr_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %curr_buf.i.i.i, align 4
  %buf_list3.i.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %retval.0.i126.i.i, i32 0, i32 4
  %cmp4.i.i.i = icmp eq ptr %127, %buf_list3.i.i.i
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %for.body.lr.ph.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i98.i.i
  %readpos23.i.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %retval.0.i126.i.i, i32 0, i32 7
  %bytesused34.i.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %retval.0.i126.i.i, i32 0, i32 6
  br label %for.body.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i98.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bytesused.i99.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %retval.0.i126.i.i, i32 0, i32 6
  %128 = ptrtoint ptr %bytesused.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bytesused.i99.i.i, align 4
  %readpos.i100.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %retval.0.i126.i.i, i32 0, i32 7
  %130 = ptrtoint ptr %readpos.i100.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %readpos.i100.i.i, align 4
  br label %cx18_copy_mdl_to_user.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %131 = phi ptr [ %127, %for.body.lr.ph.i.i.i ], [ %243, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %tot_written.090.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %tot_written.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %readpos12.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %readpos12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %readpos12.i.i.i, align 4
  %bytesused14.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %131, i32 0, i32 3
  %134 = ptrtoint ptr %bytesused14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bytesused14.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %133)
  %cmp15.not.i.i.i = icmp ugt i32 %135, %133
  br i1 %cmp15.not.i.i.i, label %if.end17.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.end17.i.i.i:                                   ; preds = %for.body.i.i.i
  %add.ptr19.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %tot_written.090.i.i.i
  %sub.i101.i.i = sub i32 %sub.i.i, %tot_written.090.i.i.i
  %136 = ptrtoint ptr %cx1.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cx1.i.i, align 4
  %sub.i.i.i.i = sub i32 %135, %133
  %138 = call i32 @llvm.umin.i32(i32 %sub.i.i.i.i, i32 %sub.i101.i.i) #8
  %insert_mpeg.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %137, i32 0, i32 41, i32 5
  %139 = ptrtoint ptr %insert_mpeg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %insert_mpeg.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i.i102.i.i = icmp eq i32 %140, 0
  br i1 %tobool.not.i.i102.i.i, label %if.end17.i.i.i.if.end131.i.i.i.i_crit_edge, label %land.lhs.true.i.i103.i.i

if.end17.i.i.i.if.end131.i.i.i.i_crit_edge:       ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131.i.i.i.i

land.lhs.true.i.i103.i.i:                         ; preds = %if.end17.i.i.i
  %141 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp2.i.i.i.i = icmp eq i32 %142, 0
  br i1 %cmp2.i.i.i.i, label %land.lhs.true3.i.i.i.i, label %land.lhs.true.i.i103.i.i.if.end131.i.i.i.i_crit_edge

land.lhs.true.i.i103.i.i.if.end131.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i103.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131.i.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i103.i.i
  %vbi.i.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %137, i32 0, i32 41
  %143 = ptrtoint ptr %vbi.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %vbi.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %144)
  %cmp.i.i.i.i.i = icmp eq i32 %144, 4
  %sliced_mpeg_buf.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %137, i32 0, i32 41, i32 11
  %cmp7.not.i.i.i.i = icmp eq ptr %sliced_mpeg_buf.i.i.i.i, %131
  %or.cond.i.i.i.i = select i1 %cmp.i.i.i.i.i, i1 true, i1 %cmp7.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %land.lhs.true3.i.i.i.i.if.end131.i.i.i.i_crit_edge, label %if.then8.i.i.i.i

land.lhs.true3.i.i.i.i.if.end131.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %land.lhs.true3.i.i.i.i
  %buf9.i.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %131, i32 0, i32 2
  %145 = ptrtoint ptr %buf9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %buf9.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %146, i32 %133
  %add.ptr11.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 1
  %search_pack_header.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %137, i32 0, i32 35
  %add.ptr13.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %138
  %cmp14236238.i.i.i.i = icmp ugt ptr %add.ptr13.i.i.i.i, %add.ptr11.i.i.i.i
  br i1 %cmp14236238.i.i.i.i, label %while.body.lr.ph.lr.ph.i.i.i.i, label %if.then8.i.i.i.i.if.end131.i.i.i.i_crit_edge

if.then8.i.i.i.i.if.end131.i.i.i.i_crit_edge:     ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131.i.i.i.i

while.body.lr.ph.lr.ph.i.i.i.i:                   ; preds = %if.then8.i.i.i.i
  %147 = ptrtoint ptr %search_pack_header.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %search_pack_header.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool12.not.i.i.i.i = icmp eq i32 %148, 0
  %conv.i.i.i.i = select i1 %tobool12.not.i.i.i.i, i8 -32, i8 -70
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr13.i.i.i.i to i32
  br label %while.body.lr.ph.i.i.i.i

while.body.lr.ph.i.i.i.i:                         ; preds = %if.end80.i.i.i.i.while.body.lr.ph.i.i.i.i_crit_edge, %while.body.lr.ph.lr.ph.i.i.i.i
  %ch.0.ph240.i.i.i.i = phi i8 [ %conv.i.i.i.i, %while.body.lr.ph.lr.ph.i.i.i.i ], [ %ch.1.i.i.i.i, %if.end80.i.i.i.i.while.body.lr.ph.i.i.i.i_crit_edge ]
  %p.0.ph239.i.i.i.i = phi ptr [ %add.ptr11.i.i.i.i, %while.body.lr.ph.lr.ph.i.i.i.i ], [ %p.1.i.i.i.i, %if.end80.i.i.i.i.while.body.lr.ph.i.i.i.i_crit_edge ]
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %while.cond.backedge.i.i.i.i.while.body.i.i.i.i_crit_edge, %while.body.lr.ph.i.i.i.i
  %p.0237.i.i.i.i = phi ptr [ %p.0.ph239.i.i.i.i, %while.body.lr.ph.i.i.i.i ], [ %add.ptr22.i.i.i.i, %while.cond.backedge.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %p.0237.i.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %call17.i.i.i.i = call ptr @memchr(ptr noundef %p.0237.i.i.i.i, i32 noundef 0, i32 noundef %sub.ptr.sub.i.i.i.i) #12
  %cmp18.i.i104.i.i = icmp eq ptr %call17.i.i.i.i, null
  br i1 %cmp18.i.i104.i.i, label %while.body.i.i.i.i.if.end131.i.i.i.i_crit_edge, label %if.end21.i.i.i.i

while.body.i.i.i.i.if.end131.i.i.i.i_crit_edge:   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131.i.i.i.i

if.end21.i.i.i.i:                                 ; preds = %while.body.i.i.i.i
  %add.ptr22.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 1
  %add.ptr23.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 15
  %149 = ptrtoint ptr %buf9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %buf9.i.i.i.i, align 4
  %151 = ptrtoint ptr %bytesused14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bytesused14.i.i.i, align 4
  %add.ptr26.i.i.i.i = getelementptr i8, ptr %150, i32 %152
  %cmp27.not.i.i.i.i = icmp ult ptr %add.ptr23.i.i.i.i, %add.ptr26.i.i.i.i
  br i1 %cmp27.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %if.end21.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge

if.end21.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge: ; preds = %if.end21.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end21.i.i.i.i
  %153 = ptrtoint ptr %add.ptr22.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %add.ptr22.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %cmp30.not.i.i.i.i = icmp eq i8 %154, 0
  br i1 %cmp30.not.i.i.i.i, label %lor.lhs.false32.i.i.i.i, label %lor.lhs.false.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i.i

lor.lhs.false32.i.i.i.i:                          ; preds = %lor.lhs.false.i.i.i.i
  %arrayidx33.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 2
  %155 = ptrtoint ptr %arrayidx33.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx33.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %156)
  %cmp35.not.i.i.i.i = icmp eq i8 %156, 1
  br i1 %cmp35.not.i.i.i.i, label %lor.lhs.false37.i.i.i.i, label %lor.lhs.false32.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge

lor.lhs.false32.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge: ; preds = %lor.lhs.false32.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i.i

lor.lhs.false37.i.i.i.i:                          ; preds = %lor.lhs.false32.i.i.i.i
  %arrayidx38.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 3
  %157 = ptrtoint ptr %arrayidx38.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx38.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %158, i8 %ch.0.ph240.i.i.i.i)
  %cmp41.not.i.i.i.i = icmp eq i8 %158, %ch.0.ph240.i.i.i.i
  br i1 %cmp41.not.i.i.i.i, label %if.end44.i.i.i.i, label %lor.lhs.false37.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge

lor.lhs.false37.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge: ; preds = %lor.lhs.false37.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i.i

while.cond.backedge.i.i.i.i:                      ; preds = %land.lhs.true119.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge, %land.lhs.true113.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge, %land.lhs.true107.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge, %land.lhs.true101.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge, %land.lhs.true95.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge, %for.end.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge, %if.then47.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge, %lor.lhs.false37.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge, %lor.lhs.false32.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge, %if.end21.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge
  %cmp14.i.i.i.i = icmp ugt ptr %add.ptr13.i.i.i.i, %add.ptr22.i.i.i.i
  br i1 %cmp14.i.i.i.i, label %while.cond.backedge.i.i.i.i.while.body.i.i.i.i_crit_edge, label %while.cond.backedge.i.i.i.i.if.end131.i.i.i.i_crit_edge

while.cond.backedge.i.i.i.i.if.end131.i.i.i.i_crit_edge: ; preds = %while.cond.backedge.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131.i.i.i.i

while.cond.backedge.i.i.i.i.while.body.i.i.i.i_crit_edge: ; preds = %while.cond.backedge.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i.i

if.end44.i.i.i.i:                                 ; preds = %lor.lhs.false37.i.i.i.i
  %159 = ptrtoint ptr %search_pack_header.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %search_pack_header.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool46.not.i.i.i.i = icmp eq i32 %160, 0
  br i1 %tobool46.not.i.i.i.i, label %if.then47.i.i.i.i, label %if.end81.i.i.i.i

if.then47.i.i.i.i:                                ; preds = %if.end44.i.i.i.i
  %arrayidx48.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 6
  %161 = ptrtoint ptr %arrayidx48.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx48.i.i.i.i, align 1
  %163 = and i8 %162, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %163)
  %cmp50.not.i.i.i.i = icmp eq i8 %163, -128
  br i1 %cmp50.not.i.i.i.i, label %if.end53.i.i.i.i, label %if.then47.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge

if.then47.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge: ; preds = %if.then47.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i.i

if.end53.i.i.i.i:                                 ; preds = %if.then47.i.i.i.i
  %arrayidx54.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 7
  %164 = ptrtoint ptr %arrayidx54.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx54.i.i.i.i, align 1
  %166 = and i8 %165, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %166)
  %cmp57.i.i.i.i = icmp eq i8 %166, -128
  br i1 %cmp57.i.i.i.i, label %land.lhs.true59.i.i.i.i, label %lor.lhs.false65.i.i.i.i

land.lhs.true59.i.i.i.i:                          ; preds = %if.end53.i.i.i.i
  %arrayidx60.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 9
  %167 = ptrtoint ptr %arrayidx60.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx60.i.i.i.i, align 1
  %169 = and i8 %168, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %169)
  %cmp63.i.i.i.i = icmp eq i8 %169, 32
  br i1 %cmp63.i.i.i.i, label %land.lhs.true59.i.i.i.i.if.then77.i.i.i.i_crit_edge, label %land.lhs.true59.i.i.i.i.if.end80.i.i.i.i_crit_edge

land.lhs.true59.i.i.i.i.if.end80.i.i.i.i_crit_edge: ; preds = %land.lhs.true59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i.i.i.i

land.lhs.true59.i.i.i.i.if.then77.i.i.i.i_crit_edge: ; preds = %land.lhs.true59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77.i.i.i.i

lor.lhs.false65.i.i.i.i:                          ; preds = %if.end53.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %165)
  %cmp69.i.i.i.i = icmp ugt i8 %165, -65
  br i1 %cmp69.i.i.i.i, label %land.lhs.true71.i.i.i.i, label %lor.lhs.false65.i.i.i.i.if.end80.i.i.i.i_crit_edge

lor.lhs.false65.i.i.i.i.if.end80.i.i.i.i_crit_edge: ; preds = %lor.lhs.false65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i.i.i.i

land.lhs.true71.i.i.i.i:                          ; preds = %lor.lhs.false65.i.i.i.i
  %arrayidx72.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 9
  %170 = ptrtoint ptr %arrayidx72.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx72.i.i.i.i, align 1
  %172 = and i8 %171, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %172)
  %cmp75.i.i.i.i = icmp eq i8 %172, 48
  br i1 %cmp75.i.i.i.i, label %land.lhs.true71.i.i.i.i.if.then77.i.i.i.i_crit_edge, label %land.lhs.true71.i.i.i.i.if.end80.i.i.i.i_crit_edge

land.lhs.true71.i.i.i.i.if.end80.i.i.i.i_crit_edge: ; preds = %land.lhs.true71.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i.i.i.i

land.lhs.true71.i.i.i.i.if.then77.i.i.i.i_crit_edge: ; preds = %land.lhs.true71.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77.i.i.i.i

if.then77.i.i.i.i:                                ; preds = %land.lhs.true71.i.i.i.i.if.then77.i.i.i.i_crit_edge, %land.lhs.true59.i.i.i.i.if.then77.i.i.i.i_crit_edge
  %173 = ptrtoint ptr %search_pack_header.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 1, ptr %search_pack_header.i.i.i.i, align 4
  %add.ptr79.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 9
  br label %if.end80.i.i.i.i

if.end80.i.i.i.i:                                 ; preds = %if.then77.i.i.i.i, %land.lhs.true71.i.i.i.i.if.end80.i.i.i.i_crit_edge, %lor.lhs.false65.i.i.i.i.if.end80.i.i.i.i_crit_edge, %land.lhs.true59.i.i.i.i.if.end80.i.i.i.i_crit_edge
  %p.1.i.i.i.i = phi ptr [ %add.ptr79.i.i.i.i, %if.then77.i.i.i.i ], [ %add.ptr22.i.i.i.i, %land.lhs.true71.i.i.i.i.if.end80.i.i.i.i_crit_edge ], [ %add.ptr22.i.i.i.i, %lor.lhs.false65.i.i.i.i.if.end80.i.i.i.i_crit_edge ], [ %add.ptr22.i.i.i.i, %land.lhs.true59.i.i.i.i.if.end80.i.i.i.i_crit_edge ]
  %ch.1.i.i.i.i = phi i8 [ -70, %if.then77.i.i.i.i ], [ %ch.0.ph240.i.i.i.i, %land.lhs.true71.i.i.i.i.if.end80.i.i.i.i_crit_edge ], [ %ch.0.ph240.i.i.i.i, %lor.lhs.false65.i.i.i.i.if.end80.i.i.i.i_crit_edge ], [ %ch.0.ph240.i.i.i.i, %land.lhs.true59.i.i.i.i.if.end80.i.i.i.i_crit_edge ]
  %cmp14236.i.i.i.i = icmp ugt ptr %add.ptr13.i.i.i.i, %p.1.i.i.i.i
  br i1 %cmp14236.i.i.i.i, label %if.end80.i.i.i.i.while.body.lr.ph.i.i.i.i_crit_edge, label %if.end80.i.i.i.i.if.end131.i.i.i.i_crit_edge

if.end80.i.i.i.i.if.end131.i.i.i.i_crit_edge:     ; preds = %if.end80.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131.i.i.i.i

if.end80.i.i.i.i.while.body.lr.ph.i.i.i.i_crit_edge: ; preds = %if.end80.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph.i.i.i.i

if.end81.i.i.i.i:                                 ; preds = %if.end44.i.i.i.i
  %arrayidx82.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 13
  %174 = ptrtoint ptr %arrayidx82.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx82.i.i.i.i, align 1
  %176 = and i8 %175, 7
  %and84.i.i.i.i = zext i8 %176 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %cmp85233.not.i.i.i.i = icmp eq i8 %176, 0
  br i1 %cmp85233.not.i.i.i.i, label %if.end81.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.body.i.i105.i.i

if.end81.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %if.end81.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i.i

for.body.i.i105.i.i:                              ; preds = %if.end81.i.i.i.i
  %arrayidx87.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 14
  %177 = ptrtoint ptr %arrayidx87.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx87.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %178)
  %cmp89.not.i.i.i.i = icmp eq i8 %178, -1
  br i1 %cmp89.not.i.i.i.i, label %for.inc.i.i106.i.i, label %for.body.i.i105.i.i.for.end.i.i.i.i_crit_edge

for.body.i.i105.i.i.for.end.i.i.i.i_crit_edge:    ; preds = %for.body.i.i105.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i.i

for.inc.i.i106.i.i:                               ; preds = %for.body.i.i105.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %176)
  %exitcond.not.i.i.i.i = icmp eq i8 %176, 1
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i106.i.i.land.lhs.true95.i.i.i.i_crit_edge, label %for.body.i.i105.i.i.1

for.inc.i.i106.i.i.land.lhs.true95.i.i.i.i_crit_edge: ; preds = %for.inc.i.i106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true95.i.i.i.i

for.body.i.i105.i.i.1:                            ; preds = %for.inc.i.i106.i.i
  %arrayidx87.i.i.i.i.1 = getelementptr i8, ptr %call17.i.i.i.i, i32 15
  %179 = ptrtoint ptr %arrayidx87.i.i.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx87.i.i.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %180)
  %cmp89.not.i.i.i.i.1 = icmp eq i8 %180, -1
  br i1 %cmp89.not.i.i.i.i.1, label %for.inc.i.i106.i.i.1, label %for.body.i.i105.i.i.1.for.end.i.i.i.i_crit_edge

for.body.i.i105.i.i.1.for.end.i.i.i.i_crit_edge:  ; preds = %for.body.i.i105.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i.i

for.inc.i.i106.i.i.1:                             ; preds = %for.body.i.i105.i.i.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %176)
  %exitcond.not.i.i.i.i.1 = icmp eq i8 %176, 2
  br i1 %exitcond.not.i.i.i.i.1, label %for.inc.i.i106.i.i.1.land.lhs.true95.i.i.i.i_crit_edge, label %for.body.i.i105.i.i.2

for.inc.i.i106.i.i.1.land.lhs.true95.i.i.i.i_crit_edge: ; preds = %for.inc.i.i106.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true95.i.i.i.i

for.body.i.i105.i.i.2:                            ; preds = %for.inc.i.i106.i.i.1
  %arrayidx87.i.i.i.i.2 = getelementptr i8, ptr %call17.i.i.i.i, i32 16
  %181 = ptrtoint ptr %arrayidx87.i.i.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx87.i.i.i.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %182)
  %cmp89.not.i.i.i.i.2 = icmp eq i8 %182, -1
  br i1 %cmp89.not.i.i.i.i.2, label %for.inc.i.i106.i.i.2, label %for.body.i.i105.i.i.2.for.end.i.i.i.i_crit_edge

for.body.i.i105.i.i.2.for.end.i.i.i.i_crit_edge:  ; preds = %for.body.i.i105.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i.i

for.inc.i.i106.i.i.2:                             ; preds = %for.body.i.i105.i.i.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %176)
  %exitcond.not.i.i.i.i.2 = icmp eq i8 %176, 3
  br i1 %exitcond.not.i.i.i.i.2, label %for.inc.i.i106.i.i.2.land.lhs.true95.i.i.i.i_crit_edge, label %for.body.i.i105.i.i.3

for.inc.i.i106.i.i.2.land.lhs.true95.i.i.i.i_crit_edge: ; preds = %for.inc.i.i106.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true95.i.i.i.i

for.body.i.i105.i.i.3:                            ; preds = %for.inc.i.i106.i.i.2
  %arrayidx87.i.i.i.i.3 = getelementptr i8, ptr %call17.i.i.i.i, i32 17
  %183 = ptrtoint ptr %arrayidx87.i.i.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx87.i.i.i.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %184)
  %cmp89.not.i.i.i.i.3 = icmp eq i8 %184, -1
  br i1 %cmp89.not.i.i.i.i.3, label %for.inc.i.i106.i.i.3, label %for.body.i.i105.i.i.3.for.end.i.i.i.i_crit_edge

for.body.i.i105.i.i.3.for.end.i.i.i.i_crit_edge:  ; preds = %for.body.i.i105.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i.i

for.inc.i.i106.i.i.3:                             ; preds = %for.body.i.i105.i.i.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %176)
  %exitcond.not.i.i.i.i.3 = icmp eq i8 %176, 4
  br i1 %exitcond.not.i.i.i.i.3, label %for.inc.i.i106.i.i.3.land.lhs.true95.i.i.i.i_crit_edge, label %for.body.i.i105.i.i.4

for.inc.i.i106.i.i.3.land.lhs.true95.i.i.i.i_crit_edge: ; preds = %for.inc.i.i106.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true95.i.i.i.i

for.body.i.i105.i.i.4:                            ; preds = %for.inc.i.i106.i.i.3
  %arrayidx87.i.i.i.i.4 = getelementptr i8, ptr %call17.i.i.i.i, i32 18
  %185 = ptrtoint ptr %arrayidx87.i.i.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx87.i.i.i.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %186)
  %cmp89.not.i.i.i.i.4 = icmp eq i8 %186, -1
  br i1 %cmp89.not.i.i.i.i.4, label %for.inc.i.i106.i.i.4, label %for.body.i.i105.i.i.4.for.end.i.i.i.i_crit_edge

for.body.i.i105.i.i.4.for.end.i.i.i.i_crit_edge:  ; preds = %for.body.i.i105.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i.i

for.inc.i.i106.i.i.4:                             ; preds = %for.body.i.i105.i.i.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %176)
  %exitcond.not.i.i.i.i.4 = icmp eq i8 %176, 5
  br i1 %exitcond.not.i.i.i.i.4, label %for.inc.i.i106.i.i.4.land.lhs.true95.i.i.i.i_crit_edge, label %for.body.i.i105.i.i.5

for.inc.i.i106.i.i.4.land.lhs.true95.i.i.i.i_crit_edge: ; preds = %for.inc.i.i106.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true95.i.i.i.i

for.body.i.i105.i.i.5:                            ; preds = %for.inc.i.i106.i.i.4
  %arrayidx87.i.i.i.i.5 = getelementptr i8, ptr %call17.i.i.i.i, i32 19
  %187 = ptrtoint ptr %arrayidx87.i.i.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx87.i.i.i.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %188)
  %cmp89.not.i.i.i.i.5 = icmp eq i8 %188, -1
  br i1 %cmp89.not.i.i.i.i.5, label %for.inc.i.i106.i.i.5, label %for.body.i.i105.i.i.5.for.end.i.i.i.i_crit_edge

for.body.i.i105.i.i.5.for.end.i.i.i.i_crit_edge:  ; preds = %for.body.i.i105.i.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i.i

for.inc.i.i106.i.i.5:                             ; preds = %for.body.i.i105.i.i.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %176)
  %exitcond.not.i.i.i.i.5 = icmp eq i8 %176, 6
  br i1 %exitcond.not.i.i.i.i.5, label %for.inc.i.i106.i.i.5.land.lhs.true95.i.i.i.i_crit_edge, label %for.body.i.i105.i.i.6

for.inc.i.i106.i.i.5.land.lhs.true95.i.i.i.i_crit_edge: ; preds = %for.inc.i.i106.i.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true95.i.i.i.i

for.body.i.i105.i.i.6:                            ; preds = %for.inc.i.i106.i.i.5
  %arrayidx87.i.i.i.i.6 = getelementptr i8, ptr %call17.i.i.i.i, i32 20
  %189 = ptrtoint ptr %arrayidx87.i.i.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx87.i.i.i.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %190)
  %cmp89.not.i.i.i.i.6 = icmp eq i8 %190, -1
  br i1 %cmp89.not.i.i.i.i.6, label %for.body.i.i105.i.i.6.land.lhs.true95.i.i.i.i_crit_edge, label %for.body.i.i105.i.i.6.for.end.i.i.i.i_crit_edge

for.body.i.i105.i.i.6.for.end.i.i.i.i_crit_edge:  ; preds = %for.body.i.i105.i.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i.i

for.body.i.i105.i.i.6.land.lhs.true95.i.i.i.i_crit_edge: ; preds = %for.body.i.i105.i.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true95.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.body.i.i105.i.i.6.for.end.i.i.i.i_crit_edge, %for.body.i.i105.i.i.5.for.end.i.i.i.i_crit_edge, %for.body.i.i105.i.i.4.for.end.i.i.i.i_crit_edge, %for.body.i.i105.i.i.3.for.end.i.i.i.i_crit_edge, %for.body.i.i105.i.i.2.for.end.i.i.i.i_crit_edge, %for.body.i.i105.i.i.1.for.end.i.i.i.i_crit_edge, %for.body.i.i105.i.i.for.end.i.i.i.i_crit_edge, %if.end81.i.i.i.i.for.end.i.i.i.i_crit_edge
  %i.0.lcssa.i.i.i.i = phi i32 [ 0, %if.end81.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ 0, %for.body.i.i105.i.i.for.end.i.i.i.i_crit_edge ], [ 1, %for.body.i.i105.i.i.1.for.end.i.i.i.i_crit_edge ], [ 2, %for.body.i.i105.i.i.2.for.end.i.i.i.i_crit_edge ], [ 3, %for.body.i.i105.i.i.3.for.end.i.i.i.i_crit_edge ], [ 4, %for.body.i.i105.i.i.4.for.end.i.i.i.i_crit_edge ], [ 5, %for.body.i.i105.i.i.5.for.end.i.i.i.i_crit_edge ], [ 6, %for.body.i.i105.i.i.6.for.end.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i.i.i, i32 %and84.i.i.i.i)
  %cmp93.i.i.i.i = icmp eq i32 %i.0.lcssa.i.i.i.i, %and84.i.i.i.i
  br i1 %cmp93.i.i.i.i, label %for.end.i.i.i.i.land.lhs.true95.i.i.i.i_crit_edge, label %for.end.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge

for.end.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge: ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i.i

for.end.i.i.i.i.land.lhs.true95.i.i.i.i_crit_edge: ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true95.i.i.i.i

land.lhs.true95.i.i.i.i:                          ; preds = %for.end.i.i.i.i.land.lhs.true95.i.i.i.i_crit_edge, %for.body.i.i105.i.i.6.land.lhs.true95.i.i.i.i_crit_edge, %for.inc.i.i106.i.i.5.land.lhs.true95.i.i.i.i_crit_edge, %for.inc.i.i106.i.i.4.land.lhs.true95.i.i.i.i_crit_edge, %for.inc.i.i106.i.i.3.land.lhs.true95.i.i.i.i_crit_edge, %for.inc.i.i106.i.i.2.land.lhs.true95.i.i.i.i_crit_edge, %for.inc.i.i106.i.i.1.land.lhs.true95.i.i.i.i_crit_edge, %for.inc.i.i106.i.i.land.lhs.true95.i.i.i.i_crit_edge
  %arrayidx96.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 4
  %191 = ptrtoint ptr %arrayidx96.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx96.i.i.i.i, align 1
  %193 = and i8 %192, -60
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %193)
  %cmp99.i.i.i.i = icmp eq i8 %193, 68
  br i1 %cmp99.i.i.i.i, label %land.lhs.true101.i.i.i.i, label %land.lhs.true95.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge

land.lhs.true95.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge: ; preds = %land.lhs.true95.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i.i

land.lhs.true101.i.i.i.i:                         ; preds = %land.lhs.true95.i.i.i.i
  %arrayidx102.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 12
  %194 = ptrtoint ptr %arrayidx102.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx102.i.i.i.i, align 1
  %196 = and i8 %195, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %196)
  %cmp105.i.i.i.i = icmp eq i8 %196, 3
  br i1 %cmp105.i.i.i.i, label %land.lhs.true107.i.i.i.i, label %land.lhs.true101.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge

land.lhs.true101.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge: ; preds = %land.lhs.true101.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i.i

land.lhs.true107.i.i.i.i:                         ; preds = %land.lhs.true101.i.i.i.i
  %add108.i.i.i.i = add nuw nsw i32 %and84.i.i.i.i, 14
  %arrayidx109.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 %add108.i.i.i.i
  %197 = ptrtoint ptr %arrayidx109.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx109.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %cmp111.i.i.i.i = icmp eq i8 %198, 0
  br i1 %cmp111.i.i.i.i, label %land.lhs.true113.i.i.i.i, label %land.lhs.true107.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge

land.lhs.true107.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge: ; preds = %land.lhs.true107.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i.i

land.lhs.true113.i.i.i.i:                         ; preds = %land.lhs.true107.i.i.i.i
  %add114.i.i.i.i = add nuw nsw i32 %and84.i.i.i.i, 15
  %arrayidx115.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 %add114.i.i.i.i
  %199 = ptrtoint ptr %arrayidx115.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx115.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %cmp117.i.i.i.i = icmp eq i8 %200, 0
  br i1 %cmp117.i.i.i.i, label %land.lhs.true119.i.i.i.i, label %land.lhs.true113.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge

land.lhs.true113.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge: ; preds = %land.lhs.true113.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i.i

land.lhs.true119.i.i.i.i:                         ; preds = %land.lhs.true113.i.i.i.i
  %add120.i.i.i.i = or i32 %and84.i.i.i.i, 16
  %arrayidx121.i.i.i.i = getelementptr i8, ptr %call17.i.i.i.i, i32 %add120.i.i.i.i
  %201 = ptrtoint ptr %arrayidx121.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx121.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %202)
  %cmp123.i.i.i.i = icmp eq i8 %202, 1
  br i1 %cmp123.i.i.i.i, label %if.then125.i.i.i.i, label %land.lhs.true119.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge

land.lhs.true119.i.i.i.i.while.cond.backedge.i.i.i.i_crit_edge: ; preds = %land.lhs.true119.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i.i.i.i

if.then125.i.i.i.i:                               ; preds = %land.lhs.true119.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %203 = ptrtoint ptr %search_pack_header.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 0, ptr %search_pack_header.i.i.i.i, align 4
  %sub.ptr.lhs.cast127.i.i.i.i = ptrtoint ptr %call17.i.i.i.i to i32
  %sub.ptr.rhs.cast128.i.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.sub129.i.i.i.i = sub i32 %sub.ptr.lhs.cast127.i.i.i.i, %sub.ptr.rhs.cast128.i.i.i.i
  %inserted_frame.i.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %137, i32 0, i32 41, i32 9
  %204 = ptrtoint ptr %inserted_frame.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %inserted_frame.i.i.i.i.i, align 4
  %rem.i.i.i.i.i = and i32 %205, 31
  %arrayidx.i.i.i.i.i = getelementptr %struct.cx18, ptr %137, i32 0, i32 41, i32 7, i32 %rem.i.i.i.i.i
  %206 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %buf4.i.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %137, i32 0, i32 41, i32 11, i32 2
  %208 = ptrtoint ptr %buf4.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %207, ptr %buf4.i.i.i.i.i, align 4
  %arrayidx6.i.i.i.i.i = getelementptr %struct.cx18, ptr %137, i32 0, i32 41, i32 8, i32 %rem.i.i.i.i.i
  %209 = ptrtoint ptr %arrayidx6.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx6.i.i.i.i.i, align 4
  %bytesused.i.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %137, i32 0, i32 41, i32 11, i32 3
  %211 = ptrtoint ptr %bytesused.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %bytesused.i.i.i.i.i, align 4
  %readpos.i.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %137, i32 0, i32 41, i32 11, i32 4
  %212 = ptrtoint ptr %readpos.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %readpos.i.i.i.i.i, align 4
  %curr_buf.i.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %137, i32 0, i32 41, i32 10, i32 5
  %213 = ptrtoint ptr %curr_buf.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr null, ptr %curr_buf.i.i.i.i.i, align 4
  %bytesused10.i.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %137, i32 0, i32 41, i32 10, i32 6
  %214 = ptrtoint ptr %bytesused10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %210, ptr %bytesused10.i.i.i.i.i, align 4
  %readpos11.i.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %137, i32 0, i32 41, i32 10, i32 7
  %215 = ptrtoint ptr %readpos11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 0, ptr %readpos11.i.i.i.i.i, align 4
  br label %if.end131.i.i.i.i

if.end131.i.i.i.i:                                ; preds = %if.then125.i.i.i.i, %if.end80.i.i.i.i.if.end131.i.i.i.i_crit_edge, %while.cond.backedge.i.i.i.i.if.end131.i.i.i.i_crit_edge, %while.body.i.i.i.i.if.end131.i.i.i.i_crit_edge, %if.then8.i.i.i.i.if.end131.i.i.i.i_crit_edge, %land.lhs.true3.i.i.i.i.if.end131.i.i.i.i_crit_edge, %land.lhs.true.i.i103.i.i.if.end131.i.i.i.i_crit_edge, %if.end17.i.i.i.if.end131.i.i.i.i_crit_edge
  %tobool.not.i107.i.i = phi i1 [ false, %if.then125.i.i.i.i ], [ true, %if.then8.i.i.i.i.if.end131.i.i.i.i_crit_edge ], [ true, %land.lhs.true3.i.i.i.i.if.end131.i.i.i.i_crit_edge ], [ true, %land.lhs.true.i.i103.i.i.if.end131.i.i.i.i_crit_edge ], [ true, %if.end17.i.i.i.if.end131.i.i.i.i_crit_edge ], [ true, %while.body.i.i.i.i.if.end131.i.i.i.i_crit_edge ], [ true, %while.cond.backedge.i.i.i.i.if.end131.i.i.i.i_crit_edge ], [ true, %if.end80.i.i.i.i.if.end131.i.i.i.i_crit_edge ]
  %len.2.i.i.i.i = phi i32 [ %sub.ptr.sub129.i.i.i.i, %if.then125.i.i.i.i ], [ %138, %if.then8.i.i.i.i.if.end131.i.i.i.i_crit_edge ], [ %138, %land.lhs.true3.i.i.i.i.if.end131.i.i.i.i_crit_edge ], [ %138, %land.lhs.true.i.i103.i.i.if.end131.i.i.i.i_crit_edge ], [ %138, %if.end17.i.i.i.if.end131.i.i.i.i_crit_edge ], [ %138, %while.body.i.i.i.i.if.end131.i.i.i.i_crit_edge ], [ %138, %while.cond.backedge.i.i.i.i.if.end131.i.i.i.i_crit_edge ], [ %138, %if.end80.i.i.i.i.if.end131.i.i.i.i_crit_edge ]
  %buf132.i.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %131, i32 0, i32 2
  %216 = ptrtoint ptr %buf132.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %buf132.i.i.i.i, align 4
  %218 = ptrtoint ptr %readpos12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %readpos12.i.i.i, align 4
  %add.ptr134.i.i.i.i = getelementptr i8, ptr %217, i32 %219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.2.i.i.i.i)
  %cmp9.i.i.i.i.i.i = icmp slt i32 %len.2.i.i.i.i, 0
  br i1 %cmp9.i.i.i.i.i.i, label %land.rhs16.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i

land.rhs16.i.i.i.i.i.i:                           ; preds = %if.end131.i.i.i.i
  %.b1.i.i.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i.i.i, label %land.rhs16.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, label %if.then27.i.i.i.i.i.i, !prof !173

land.rhs16.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

if.then27.i.i.i.i.i.i:                            ; preds = %land.rhs16.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %do.body.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %if.end131.i.i.i.i
  call void @__check_object_size(ptr noundef %add.ptr134.i.i.i.i, i32 noundef %len.2.i.i.i.i, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 174) #8
  %call.i.i.i.i.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i.copy_to_user.exit.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.copy_to_user.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i.i.i
  %220 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr19.i.i.i, i32 %len.2.i.i.i.i, i32 -1226833920) #13, !srcloc !174
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %220, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i6.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i.i, label %if.then2.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.copy_to_user.exit.i.i.i.i_crit_edge

if.end.i.i.i.i.i.i.copy_to_user.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i.i.i.i

if.then2.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i.i108.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr134.i.i.i.i, i32 noundef %len.2.i.i.i.i) #8
  %call.i12.i.i.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr19.i.i.i, ptr noundef %add.ptr134.i.i.i.i, i32 noundef %len.2.i.i.i.i) #8
  br label %copy_to_user.exit.i.i.i.i

copy_to_user.exit.i.i.i.i:                        ; preds = %if.then2.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.copy_to_user.exit.i.i.i.i_crit_edge, %if.then.i.i.i.i.i.i.i.copy_to_user.exit.i.i.i.i_crit_edge
  %n.addr.0.i.i.i.i.i = phi i32 [ %len.2.i.i.i.i, %if.then.i.i.i.i.i.i.i.copy_to_user.exit.i.i.i.i_crit_edge ], [ %call.i12.i.i.i.i.i.i, %if.then2.i.i.i.i.i.i ], [ %len.2.i.i.i.i, %if.end.i.i.i.i.i.i.copy_to_user.exit.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i.i.i.i)
  %tobool136.not.i.i.i.i = icmp eq i32 %n.addr.0.i.i.i.i.i, 0
  br i1 %tobool136.not.i.i.i.i, label %if.end147.i.i.i.i, label %copy_to_user.exit.i.i.i.i.do.body.i.i.i.i_crit_edge

copy_to_user.exit.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %copy_to_user.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %copy_to_user.exit.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then27.i.i.i.i.i.i, %land.rhs16.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %221 = load i32, ptr @cx18_debug, align 4
  %and138.i.i.i.i = and i32 %221, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i.i.i.i)
  %tobool139.not.i.i.i.i = icmp eq i32 %and138.i.i.i.i, 0
  br i1 %tobool139.not.i.i.i.i, label %do.body.i.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge, label %do.end.i.i110.i.i

do.body.i.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge: ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_copy_mdl_to_user.exit.i.i

do.end.i.i110.i.i:                                ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i109.i.i = getelementptr inbounds %struct.cx18, ptr %137, i32 0, i32 2, i32 4
  %222 = ptrtoint ptr %name142.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %name142.i.i.i.i, align 8
  %call143.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name.i.i109.i.i, i32 noundef %len.2.i.i.i.i, ptr noundef %223) #11
  br label %cx18_copy_mdl_to_user.exit.i.i

if.end147.i.i.i.i:                                ; preds = %copy_to_user.exit.i.i.i.i
  %224 = ptrtoint ptr %readpos12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %readpos12.i.i.i, align 4
  %add149.i.i.i.i = add i32 %225, %len.2.i.i.i.i
  store i32 %add149.i.i.i.i, ptr %readpos12.i.i.i, align 4
  %226 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %cmp151.i.i.i.i = icmp ne i32 %227, 0
  %sliced_mpeg_buf155.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %137, i32 0, i32 41, i32 11
  %cmp156.not.i.i.i.i = icmp eq ptr %sliced_mpeg_buf155.i.i.i.i, %131
  %or.cond226.i.i.i.i = select i1 %cmp151.i.i.i.i, i1 true, i1 %cmp156.not.i.i.i.i
  br i1 %or.cond226.i.i.i.i, label %if.end147.i.i.i.i.if.end22.i.i.i_crit_edge, label %if.then158.i.i.i.i

if.end147.i.i.i.i.if.end22.i.i.i_crit_edge:       ; preds = %if.end147.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i.i

if.then158.i.i.i.i:                               ; preds = %if.end147.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv159.i.i.i.i = zext i32 %len.2.i.i.i.i to i64
  %mpg_data_received.i.i.i.i = getelementptr inbounds %struct.cx18, ptr %137, i32 0, i32 42
  %228 = ptrtoint ptr %mpg_data_received.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %mpg_data_received.i.i.i.i, align 8
  %add160.i.i.i.i = add i64 %229, %conv159.i.i.i.i
  store i64 %add160.i.i.i.i, ptr %mpg_data_received.i.i.i.i, align 8
  br label %if.end22.i.i.i

if.end22.i.i.i:                                   ; preds = %if.then158.i.i.i.i, %if.end147.i.i.i.i.if.end22.i.i.i_crit_edge
  %230 = ptrtoint ptr %readpos23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %readpos23.i.i.i, align 4
  %add.i111.i.i = add i32 %231, %len.2.i.i.i.i
  store i32 %add.i111.i.i, ptr %readpos23.i.i.i, align 4
  %add24.i.i.i = add i32 %len.2.i.i.i.i, %tot_written.090.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add24.i.i.i, i32 %sub.i.i)
  %cmp25.not.i.i.i = icmp ult i32 %add24.i.i.i, %sub.i.i
  %or.cond.i.i.i = select i1 %tobool.not.i107.i.i, i1 %cmp25.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %lor.lhs.false26.i.i.i, label %if.end22.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge

if.end22.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge: ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_copy_mdl_to_user.exit.i.i

lor.lhs.false26.i.i.i:                            ; preds = %if.end22.i.i.i
  %232 = ptrtoint ptr %curr_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %curr_buf.i.i.i, align 4
  %readpos28.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %233, i32 0, i32 4
  %234 = ptrtoint ptr %readpos28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %readpos28.i.i.i, align 4
  %bytesused30.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %233, i32 0, i32 3
  %236 = ptrtoint ptr %bytesused30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %bytesused30.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %235, i32 %237)
  %cmp31.i.i.i = icmp ult i32 %235, %237
  br i1 %cmp31.i.i.i, label %lor.lhs.false26.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge, label %lor.lhs.false32.i.i.i

lor.lhs.false26.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge: ; preds = %lor.lhs.false26.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_copy_mdl_to_user.exit.i.i

lor.lhs.false32.i.i.i:                            ; preds = %lor.lhs.false26.i.i.i
  %238 = ptrtoint ptr %bytesused34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %bytesused34.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i111.i.i, i32 %239)
  %cmp35.not.i.i.i = icmp ult i32 %add.i111.i.i, %239
  br i1 %cmp35.not.i.i.i, label %lor.lhs.false32.i.i.i.for.inc.i.i.i_crit_edge, label %lor.lhs.false32.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge

lor.lhs.false32.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge: ; preds = %lor.lhs.false32.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_copy_mdl_to_user.exit.i.i

lor.lhs.false32.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %lor.lhs.false32.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %lor.lhs.false32.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %tot_written.1.i.i.i = phi i32 [ %tot_written.090.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ], [ %add24.i.i.i, %lor.lhs.false32.i.i.i.for.inc.i.i.i_crit_edge ]
  %240 = ptrtoint ptr %curr_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %curr_buf.i.i.i, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %241, align 4
  store ptr %243, ptr %curr_buf.i.i.i, align 4
  %cmp10.not.i.i.i = icmp eq ptr %243, %buf_list3.i.i.i
  br i1 %cmp10.not.i.i.i, label %for.inc.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_copy_mdl_to_user.exit.i.i

cx18_copy_mdl_to_user.exit.i.i:                   ; preds = %for.inc.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge, %lor.lhs.false32.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge, %lor.lhs.false26.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge, %if.end22.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge, %do.end.i.i110.i.i, %do.body.i.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge, %if.then5.i.i.i
  %retval.0.i112.i.i = phi i32 [ 0, %if.then5.i.i.i ], [ -14, %do.end.i.i110.i.i ], [ -14, %do.body.i.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge ], [ %tot_written.1.i.i.i, %for.inc.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge ], [ %add24.i.i.i, %lor.lhs.false32.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge ], [ %add24.i.i.i, %lor.lhs.false26.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge ], [ %add24.i.i.i, %if.end22.i.i.i.cx18_copy_mdl_to_user.exit.i.i_crit_edge ]
  %cmp28.not.i.i = icmp eq ptr %retval.0.i126.i.i, %sliced_mpeg_mdl.i.i
  br i1 %cmp28.not.i.i, label %if.else34.i.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %cx18_copy_mdl_to_user.exit.i.i
  %readpos.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %retval.0.i126.i.i, i32 0, i32 7
  %244 = ptrtoint ptr %readpos.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %readpos.i.i, align 4
  %bytesused.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %retval.0.i126.i.i, i32 0, i32 6
  %246 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %bytesused.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %245, i32 %247)
  %cmp30.i.i = icmp eq i32 %245, %247
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.else.i.i

if.then31.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i113.i.i = call ptr @_cx18_enqueue(ptr noundef %arrayidx, ptr noundef %retval.0.i126.i.i, ptr noundef %q_free.i.i.i, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %248 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i114.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %248, ptr noundef %out_work_order.i.i.i.i) #8
  br label %if.end45.i.i

if.else.i.i:                                      ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call ptr @_cx18_enqueue(ptr noundef %arrayidx, ptr noundef %retval.0.i126.i.i, ptr noundef %q_full24.i.i.i, i32 noundef 1) #8
  br label %if.end45.i.i

if.else34.i.i:                                    ; preds = %cx18_copy_mdl_to_user.exit.i.i
  %249 = ptrtoint ptr %readpos35.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %readpos35.i.i, align 4
  %251 = ptrtoint ptr %bytesused36.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %bytesused36.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %250, i32 %252)
  %cmp37.i.i = icmp eq i32 %250, %252
  br i1 %cmp37.i.i, label %if.then38.i.i, label %if.else34.i.i.if.end45.i.i_crit_edge

if.else34.i.i.if.end45.i.i_crit_edge:             ; preds = %if.else34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i.i

if.then38.i.i:                                    ; preds = %if.else34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %253 = ptrtoint ptr %inserted_frame.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %inserted_frame.i.i, align 4
  %rem.i.i = and i32 %254, 31
  %arrayidx.i.i = getelementptr %struct.cx18, ptr %19, i32 0, i32 41, i32 8, i32 %rem.i.i
  %255 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 0, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %254, 1
  store i32 %inc.i.i, ptr %inserted_frame.i.i, align 4
  %conv.i.i = zext i32 %250 to i64
  %256 = ptrtoint ptr %vbi_data_inserted.i.i to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %vbi_data_inserted.i.i, align 8
  %add.i.i = add i64 %257, %conv.i.i
  store i64 %add.i.i, ptr %vbi_data_inserted.i.i, align 8
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then38.i.i, %if.else34.i.i.if.end45.i.i_crit_edge, %if.else.i.i, %if.then31.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i112.i.i)
  %cmp46.i.i = icmp slt i32 %retval.0.i112.i.i, 0
  br i1 %cmp46.i.i, label %if.end45.i.i.cond.end.i_crit_edge, label %if.end49.i.i

if.end45.i.i.cond.end.i_crit_edge:                ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

if.end49.i.i:                                     ; preds = %if.end45.i.i
  %add50.i.i = add i32 %retval.0.i112.i.i, %tot_written.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.i.i, i32 %count)
  %cmp51.i.i = icmp eq i32 %add50.i.i, %count
  %brmerge.i.i = select i1 %cmp51.i.i, i1 true, i1 %tobool53.not.i.i
  br i1 %brmerge.i.i, label %if.end49.i.i.cond.end.i_crit_edge, label %if.end49.i.i.for.cond.i.i_crit_edge

if.end49.i.i.for.cond.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

if.end49.i.i.cond.end.i_crit_edge:                ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.end49.i.i.cond.end.i_crit_edge, %if.end45.i.i.cond.end.i_crit_edge, %if.then23.i.i, %if.then18.i.i.cond.end.i_crit_edge, %if.then18.thread207.i.i, %do.end.i.i, %do.body.i.i.cond.end.i_crit_edge, %if.end20.cond.end.i_crit_edge
  %cond.i = phi i32 [ 0, %if.end20.cond.end.i_crit_edge ], [ -5, %do.end.i.i ], [ -5, %do.body.i.i.cond.end.i_crit_edge ], [ %tot_written.0.i.i, %if.then18.i.i.cond.end.i_crit_edge ], [ 0, %if.then23.i.i ], [ %tot_written.0.mux212.i.i, %if.then18.thread207.i.i ], [ %retval.0.i112.i.i, %if.end45.i.i.cond.end.i_crit_edge ], [ %add50.i.i, %if.end49.i.i.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %258 = load i32, ptr @cx18_debug, align 4
  %259 = and i32 %258, 288
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %259)
  %.not.i = icmp eq i32 %259, 288
  br i1 %.not.i, label %do.end.i, label %cond.end.i.do.end9.i_crit_edge

cond.end.i.do.end9.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %cx1.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 2
  %260 = ptrtoint ptr %cx1.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %cx1.i, align 4
  %name.i = getelementptr inbounds %struct.cx18, ptr %261, i32 0, i32 2, i32 4
  %name6.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 3
  %262 = ptrtoint ptr %name6.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %name6.i, align 8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name.i, i32 noundef %count, ptr noundef %263, i32 noundef %cond.i) #11
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %cond.end.i.do.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp.i = icmp sgt i32 %cond.i, 0
  br i1 %cmp.i, label %if.then10.i, label %do.end9.i.cleanup_crit_edge

do.end9.i.cleanup_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv19.i = zext i32 %cond.i to i64
  %264 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %pos, align 8
  %add.i = add i64 %265, %conv19.i
  store i64 %add.i, ptr %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then10.i, %do.end9.i.cleanup_crit_edge, %if.then17, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.then17 ], [ %call9, %do.end8.cleanup_crit_edge ], [ %cond.i, %do.end9.i.cleanup_crit_edge ], [ %cond.i, %if.then10.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_read_stream(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_v4l2_enc_poll(ptr noundef %filp, ptr noundef %wait) local_unnamed_addr #0 align 64 {
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
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %cx2 = getelementptr inbounds %struct.cx18_open_id, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cx2, align 4
  %type = getelementptr inbounds %struct.cx18_open_id, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %s_flags = getelementptr %struct.cx18, ptr %5, i32 0, i32 29, i32 %7, i32 9
  %8 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %s_flags, align 4
  %10 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %land.lhs.true, label %poll_requested_events.exit.if.end37_crit_edge

poll_requested_events.exit.if.end37_crit_edge:    ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true:                                    ; preds = %poll_requested_events.exit
  %11 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %s_flags, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool8.not = icmp eq i32 %cond.i, 0
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %land.lhs.true.if.end37_crit_edge, label %if.then

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then:                                          ; preds = %land.lhs.true
  %serialize_lock = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #8
  %call9 = tail call i32 @cx18_start_capture(ptr noundef %3)
  tail call void @mutex_unlock(ptr noundef %serialize_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %14 = load i32, ptr @cx18_debug, align 4
  br i1 %tobool11.not, label %do.body22, label %do.body

do.body:                                          ; preds = %if.then
  %and13 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body.cleanup90_crit_edge, label %do.end

do.body.cleanup90_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup90

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 2, i32 4
  %name17 = getelementptr %struct.cx18, ptr %5, i32 0, i32 29, i32 %7, i32 3
  %15 = ptrtoint ptr %name17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name17, align 8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, ptr noundef %16, i32 noundef %call9) #11
  br label %cleanup90

do.body22:                                        ; preds = %if.then
  %and23 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.if.end37_crit_edge, label %do.end28

do.body22.if.end37_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end28:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %name31 = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 2, i32 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name31) #11
  br label %if.end37

if.end37:                                         ; preds = %do.end28, %do.body22.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %poll_requested_events.exit.if.end37_crit_edge
  %vb_type = getelementptr %struct.cx18, ptr %5, i32 0, i32 29, i32 %7, i32 30
  %17 = ptrtoint ptr %vb_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vb_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp eq i32 %18, 1
  br i1 %cmp, label %land.lhs.true38, label %if.end37.do.body56_crit_edge

if.end37.do.body56_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56

land.lhs.true38:                                  ; preds = %if.end37
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp40 = icmp eq i32 %20, 2
  br i1 %cmp40, label %if.then41, label %land.lhs.true38.do.body56_crit_edge

land.lhs.true38.do.body56_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56

if.then41:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  %vbuf_q = getelementptr %struct.cx18, ptr %5, i32 0, i32 29, i32 %7, i32 28
  %call42 = tail call i32 @videobuf_poll_stream(ptr noundef %filp, ptr noundef %vbuf_q, ptr noundef %wait) #8
  %call43 = tail call i32 @v4l2_event_pending(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  %spec.select = select i1 %tobool44.not, i32 0, i32 2
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call42)
  %cmp49 = icmp eq i32 %call42, 8
  %or.cond128 = select i1 %tobool.not.not, i1 %cmp49, i1 false
  %retval.1.v = select i1 %or.cond128, i32 16, i32 %call42
  %retval.1 = or i32 %spec.select, %retval.1.v
  br label %cleanup90

do.body56:                                        ; preds = %land.lhs.true38.do.body56_crit_edge, %if.end37.do.body56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %21 = load i32, ptr @cx18_debug, align 4
  %22 = and i32 %21, 288
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %22)
  %.not = icmp eq i32 %22, 288
  br i1 %.not, label %do.end65, label %do.body56.do.end73_crit_edge

do.body56.do.end73_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end73

do.end65:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  %name68 = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 2, i32 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name68) #11
  br label %do.end73

do.end73:                                         ; preds = %do.end65, %do.body56.do.end73_crit_edge
  %call75 = tail call i32 @v4l2_event_pending(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.else, label %do.end73.if.end79_crit_edge

do.end73.if.end79_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.else:                                          ; preds = %do.end73
  %waitq = getelementptr %struct.cx18, ptr %5, i32 0, i32 29, i32 %7, i32 11
  br i1 %tobool.not.i, label %if.else.if.end79_crit_edge, label %land.lhs.true.i

if.else.if.end79_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

land.lhs.true.i:                                  ; preds = %if.else
  %23 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  %tobool3.not.i = icmp eq ptr %waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end79_crit_edge, label %if.then.i

land.lhs.true.i.if.end79_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %24(ptr noundef %filp, ptr noundef nonnull %waitq, ptr noundef nonnull %wait) #8
  br label %if.end79

if.end79:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end79_crit_edge, %if.else.if.end79_crit_edge, %do.end73.if.end79_crit_edge
  %res.1 = phi i32 [ 2, %do.end73.if.end79_crit_edge ], [ 0, %if.else.if.end79_crit_edge ], [ 0, %land.lhs.true.i.if.end79_crit_edge ], [ 0, %if.then.i ]
  %depth = getelementptr %struct.cx18, ptr %5, i32 0, i32 29, i32 %7, i32 19, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %depth, i32 noundef 4) #8
  %25 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool81.not = icmp eq i32 %26, 0
  br i1 %tobool81.not, label %if.end85, label %if.then82

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %or84 = or i32 %res.1, 65
  br label %cleanup90

if.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %27 = lshr exact i32 %10, 3
  %28 = or i32 %res.1, %27
  br label %cleanup90

cleanup90:                                        ; preds = %if.end85, %if.then82, %if.then41, %do.end, %do.body.cleanup90_crit_edge
  %retval.2 = phi i32 [ %retval.1, %if.then41 ], [ %or84, %if.then82 ], [ 8, %do.end ], [ 8, %do.body.cleanup90_crit_edge ], [ %28, %if.end85 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_poll_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_pending(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_v4l2_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx1, align 4
  %type = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %s_flags = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 9
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %s_flags, align 4
  %vb_type = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 30
  %8 = ptrtoint ptr %vb_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vb_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3 = icmp eq i32 %5, 2
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %entry.cleanup39_crit_edge

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

if.then:                                          ; preds = %entry
  %10 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %land.lhs.true4, label %if.then.if.end36_crit_edge

if.then.if.end36_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true4:                                   ; preds = %if.then
  %11 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %s_flags, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true4.if.end36_crit_edge

land.lhs.true4.if.end36_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then8:                                         ; preds = %land.lhs.true4
  %serialize_lock = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #8
  %call9 = tail call i32 @cx18_start_capture(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %serialize_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %14 = load i32, ptr @cx18_debug, align 4
  br i1 %tobool11.not, label %do.body21, label %do.body

do.body:                                          ; preds = %if.then8
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body.cleanup39_crit_edge, label %do.end

do.body.cleanup39_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 2, i32 4
  %name16 = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 2, i32 3
  %15 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name16, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, ptr noundef %16, i32 noundef %call9) #11
  br label %cleanup39

do.body21:                                        ; preds = %if.then8
  %and22 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.if.end36_crit_edge, label %do.end27

do.body21.if.end36_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %name30 = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 2, i32 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name30) #11
  br label %if.end36

if.end36:                                         ; preds = %do.end27, %do.body21.if.end36_crit_edge, %land.lhs.true4.if.end36_crit_edge, %if.then.if.end36_crit_edge
  %vbuf_q = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 2, i32 28
  %call37 = tail call i32 @videobuf_mmap_mapper(ptr noundef %vbuf_q, ptr noundef %vma) #8
  br label %cleanup39

cleanup39:                                        ; preds = %if.end36, %do.end, %do.body.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.1 = phi i32 [ %call37, %if.end36 ], [ -22, %do.end ], [ -22, %entry.cleanup39_crit_edge ], [ -22, %do.body.cleanup39_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_mmap_mapper(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_vb_timeout(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vb_lock = getelementptr i8, ptr %t, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vb_lock) #8
  %vb_capture = getelementptr i8, ptr %t, i32 -52
  %0 = ptrtoint ptr %vb_capture to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %vb_capture, align 4
  %cmp.i.not19 = icmp eq ptr %1, %vb_capture
  br i1 %cmp.i.not19, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %13, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %state = getelementptr i8, ptr %2, i32 -12
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %state, align 4
  %done = getelementptr i8, ptr %2, i32 8
  tail call void @__wake_up(ptr noundef %done, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %12 = ptrtoint ptr %vb_capture to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %vb_capture, align 4
  %cmp.i.not = icmp eq ptr %13, %vb_capture
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vb_lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_stop_capture(ptr nocapture noundef readonly %id, i32 noundef %gop_end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %id, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %type = getelementptr inbounds %struct.cx18_open_id, ptr %id, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %3
  %arrayidx3 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 3
  %arrayidx5 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %4 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %name7 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %3, i32 3
  %5 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name7, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, ptr noundef %6) #11
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %s_flags = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %3, i32 9
  %7 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %s_flags, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %do.end9.if.end86_crit_edge, label %do.body13

do.end9.if.end86_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

do.body13:                                        ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %10 = load i32, ptr @cx18_debug, align 4
  %and14 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body13.do.end27_crit_edge, label %do.end19

do.body13.do.end27_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

do.end19:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %name22 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name22) #11
  br label %do.end27

do.end27:                                         ; preds = %do.end19, %do.body13.do.end27_crit_edge
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then29, label %do.end27.if.end75_crit_edge

do.end27.if.end75_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then29:                                        ; preds = %do.end27
  %s_flags30 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 3, i32 9
  %13 = ptrtoint ptr %s_flags30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %s_flags30, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool32.not = icmp eq i32 %15, 0
  br i1 %tobool32.not, label %if.then29.if.end53_crit_edge, label %land.lhs.true

if.then29.if.end53_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true:                                    ; preds = %if.then29
  %16 = ptrtoint ptr %s_flags30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %s_flags30, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool35.not = icmp eq i32 %18, 0
  br i1 %tobool35.not, label %do.body37, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.body37:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %19 = load i32, ptr @cx18_debug, align 4
  %and38 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.do.end51_crit_edge, label %do.end43

do.body37.do.end51_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  %name46 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name46) #11
  br label %do.end51

do.end51:                                         ; preds = %do.end43, %do.body37.do.end51_crit_edge
  %call52 = tail call i32 @cx18_stop_v4l2_encode_stream(ptr noundef %arrayidx3, i32 noundef 0) #8
  br label %if.end53

if.end53:                                         ; preds = %do.end51, %land.lhs.true.if.end53_crit_edge, %if.then29.if.end53_crit_edge
  %s_flags54 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 9
  %20 = ptrtoint ptr %s_flags54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %s_flags54, align 4
  %22 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool56.not = icmp eq i32 %22, 0
  br i1 %tobool56.not, label %if.end53.if.end75thread-pre-split_crit_edge, label %do.body58

if.end53.if.end75thread-pre-split_crit_edge:      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75thread-pre-split

do.body58:                                        ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %23 = load i32, ptr @cx18_debug, align 4
  %and59 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body58.do.end72_crit_edge, label %do.end64

do.body58.do.end72_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end72

do.end64:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  %name67 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name67) #11
  br label %do.end72

do.end72:                                         ; preds = %do.end64, %do.body58.do.end72_crit_edge
  %call73 = tail call i32 @cx18_stop_v4l2_encode_stream(ptr noundef %arrayidx5, i32 noundef 0) #8
  br label %if.end75thread-pre-split

if.end75thread-pre-split:                         ; preds = %do.end72, %if.end53.if.end75thread-pre-split_crit_edge
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %type, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end75thread-pre-split, %do.end27.if.end75_crit_edge
  %25 = phi i32 [ %.pr, %if.end75thread-pre-split ], [ %12, %do.end27.if.end75_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp77 = icmp eq i32 %25, 3
  br i1 %cmp77, label %land.lhs.true78, label %if.end75.if.else_crit_edge

if.end75.if.else_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true78:                                  ; preds = %if.end75
  %26 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %s_flags, align 4
  %28 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool81.not = icmp eq i32 %28, 0
  br i1 %tobool81.not, label %land.lhs.true78.if.else_crit_edge, label %if.then82

land.lhs.true78.if.else_crit_edge:                ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then82:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  %id83 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %3, i32 8
  %29 = ptrtoint ptr %id83 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %id83, align 4
  br label %if.end86

if.else:                                          ; preds = %land.lhs.true78.if.else_crit_edge, %if.end75.if.else_crit_edge
  %call84 = tail call i32 @cx18_stop_v4l2_encode_stream(ptr noundef %arrayidx, i32 noundef %gop_end) #8
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then82, %do.end9.if.end86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gop_end)
  %tobool87.not = icmp eq i32 %gop_end, 0
  br i1 %tobool87.not, label %if.then88, label %if.end86.if.end91_crit_edge

if.end86.if.end91_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %s_flags) #8
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %s_flags) #8
  tail call void @cx18_release_stream(ptr noundef %arrayidx)
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end86.if.end91_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_v4l2_close(ptr nocapture noundef readonly %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx1, align 4
  %type = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %6 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 2, i32 4
  %name3 = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 3
  %7 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name3, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, ptr noundef %8) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %serialize_lock = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #8
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp = icmp eq i32 %10, 6
  br i1 %cmp, label %land.lhs.true, label %do.end6.if.end47_crit_edge

do.end6.if.end47_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

land.lhs.true:                                    ; preds = %do.end6
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 4
  %call.i = tail call i32 @v4l2_fh_is_singular(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end47_crit_edge, label %if.then10

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then10:                                        ; preds = %land.lhs.true
  %ana_capturing.i = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 33
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing.i, i32 noundef 4) #8
  %13 = ptrtoint ptr %ana_capturing.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %ana_capturing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then10.do.body6.i_crit_edge, label %if.then.i

if.then10.do.body6.i_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i

if.then.i:                                        ; preds = %if.then10
  %call1.i = tail call i32 @cx18_find_handle(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, -1
  br i1 %cmp.not.i, label %do.end.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %3, i32 noundef 537002004, i32 noundef 2, i32 noundef %call1.i, i32 noundef 1) #8
  br label %do.body6.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 2, i32 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name.i) #11
  br label %do.body6.i

do.body6.i:                                       ; preds = %do.end.i, %if.then2.i, %if.then10.do.body6.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %15 = load i32, ptr @cx18_debug, align 4
  %and.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %do.body6.i.cx18_mute.exit_crit_edge, label %do.end11.i

do.body6.i.cx18_mute.exit_crit_edge:              ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_mute.exit

do.end11.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  %name14.i = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 2, i32 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name14.i) #11
  br label %cx18_mute.exit

cx18_mute.exit:                                   ; preds = %do.end11.i, %do.body6.i.cx18_mute.exit_crit_edge
  %i_flags = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 32
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %i_flags) #8
  %subdevs = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn83 = load ptr, ptr %subdevs, align 4
  %cmp17.not85 = icmp eq ptr %.pn83, %subdevs
  br i1 %cmp17.not85, label %cx18_mute.exit.do.end35_crit_edge, label %for.body.lr.ph

cx18_mute.exit.do.end35_crit_edge:                ; preds = %cx18_mute.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

for.body.lr.ph:                                   ; preds = %cx18_mute.exit
  %std = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 66
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn86 = phi ptr [ %.pn83, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__sd.087 = getelementptr i8, ptr %.pn86, i32 -80
  %ops = getelementptr i8, ptr %.pn86, i32 24
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
  %call27 = tail call i32 %22(ptr noundef %__sd.087, i64 noundef %24) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %land.lhs.true19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %.pn86 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn86, align 4
  %cmp17.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp17.not, label %for.inc.do.end35_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

do.end35:                                         ; preds = %for.inc.do.end35_crit_edge, %cx18_mute.exit.do.end35_crit_edge
  %call38 = tail call i32 @cx18_audio_set_io(ptr noundef %3) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing.i, i32 noundef 4) #8
  %26 = ptrtoint ptr %ana_capturing.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %ana_capturing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp40 = icmp sgt i32 %27, 0
  br i1 %cmp40, label %if.then41, label %do.end35.if.end46_crit_edge

do.end35.if.end46_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then41:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  %handle = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 5
  %28 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %handle, align 8
  %30 = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 19, i32 14
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %call42 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %32) #8
  %video_mute_yuv = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 19, i32 14, i32 1
  %33 = ptrtoint ptr %video_mute_yuv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %video_mute_yuv, align 4
  %call44 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %34) #8
  %shl = shl i32 %call44, 8
  %or = or i32 %shl, %call42
  %call45 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %3, i32 noundef 537002003, i32 noundef 2, i32 noundef %29, i32 noundef %or) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %do.end35.if.end46_crit_edge
  tail call void @cx18_unmute(ptr noundef %3)
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %land.lhs.true.if.end47_crit_edge, %do.end6.if.end47_crit_edge
  tail call void @v4l2_fh_del(ptr noundef %1) #8
  tail call void @v4l2_fh_exit(ptr noundef %1) #8
  %id48 = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 8
  %35 = ptrtoint ptr %id48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id48, align 4
  %open_id = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %open_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %open_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp49 = icmp eq i32 %36, %38
  br i1 %cmp49, label %if.then50, label %if.end47.if.end51_crit_edge

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cx18_stop_capture(ptr noundef %1, i32 noundef 0)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end47.if.end51_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %serialize_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_mute(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ana_capturing = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing, i32 noundef 4) #8
  %0 = ptrtoint ptr %ana_capturing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ana_capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %if.then

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @cx18_find_handle(ptr noundef %cx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, -1
  br i1 %cmp.not, label %do.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %cx, i32 noundef 537002004, i32 noundef 2, i32 noundef %call1, i32 noundef 1) #8
  br label %do.body6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name) #11
  br label %do.body6

do.body6:                                         ; preds = %do.end, %if.then2, %entry.do.body6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %2 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body6.do.end19_crit_edge, label %do.end11

do.body6.do.end19_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %name14 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name14) #11
  br label %do.end19

do.end19:                                         ; preds = %do.end11, %do.body6.do.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_audio_set_io(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_unmute(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ana_capturing = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing, i32 noundef 4) #8
  %0 = ptrtoint ptr %ana_capturing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ana_capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %if.then

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @cx18_find_handle(ptr noundef %cx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, -1
  br i1 %cmp.not, label %do.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @cx18_msleep_timeout(i32 noundef 100, i32 noundef 0) #8
  %call4 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %cx, i32 noundef 537002005, i32 noundef 2, i32 noundef %call1, i32 noundef 12) #8
  %call5 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %cx, i32 noundef 537002004, i32 noundef 2, i32 noundef %call1, i32 noundef 0) #8
  br label %do.body8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name) #11
  br label %do.body8

do.body8:                                         ; preds = %do.end, %if.then2, %entry.do.body8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %2 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body8.do.end21_crit_edge, label %do.end13

do.body8.do.end21_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

do.end13:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %name16 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name16) #11
  br label %do.end21

do.end21:                                         ; preds = %do.end13, %do.body8.do.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_v4l2_open(ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %filp) #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cx2 = getelementptr inbounds %struct.cx18_stream, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx2, align 4
  %serialize_lock = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #8
  %call3 = tail call i32 @cx18_init_on_first_open(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 2, i32 4
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.video_device_node_name.exit_crit_edge

do.end.video_device_node_name.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %do.end.video_device_node_name.exit_crit_edge ]
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name, ptr noundef %retval.0.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %cx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cx2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %10 = load i32, ptr @cx18_debug, align 4
  %and.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.do.end5.i_crit_edge, label %do.end.i

if.end.do.end5.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.cx18, ptr %9, i32 0, i32 2, i32 4
  %name3.i = getelementptr inbounds %struct.cx18_stream, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name3.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name.i, ptr noundef %12) #11
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %if.end.do.end5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 204) #14
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %do.body8.i, label %if.end23.i

do.body8.i:                                       ; preds = %do.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %14 = load i32, ptr @cx18_debug, align 4
  %and9.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %do.body8.i.cleanup_crit_edge, label %do.end14.i

do.body8.i.cleanup_crit_edge:                     ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  %name17.i = getelementptr inbounds %struct.cx18, ptr %9, i32 0, i32 2, i32 4
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name17.i) #11
  br label %cleanup

if.end23.i:                                       ; preds = %do.end5.i
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %1) #8
  %cx24.i = getelementptr inbounds %struct.cx18_open_id, ptr %call7.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %cx24.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %cx24.i, align 8
  %type.i = getelementptr inbounds %struct.cx18_stream, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  %type25.i = getelementptr inbounds %struct.cx18_open_id, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %type25.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %type25.i, align 4
  %open_id.i = getelementptr inbounds %struct.cx18, ptr %9, i32 0, i32 36
  %19 = ptrtoint ptr %open_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %open_id.i, align 8
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %open_id.i, align 8
  %open_id26.i = getelementptr inbounds %struct.cx18_open_id, ptr %call7.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %open_id26.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %open_id26.i, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %22 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i, ptr %private_data.i, align 4
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i.i) #8
  %23 = ptrtoint ptr %type25.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp30.i = icmp eq i32 %24, 6
  br i1 %cmp30.i, label %land.lhs.true.i, label %if.end23.i.cleanup_crit_edge

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end23.i
  %25 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private_data.i, align 4
  %call.i.i = tail call i32 @v4l2_fh_is_singular(ptr noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool32.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then33.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33.i:                                      ; preds = %land.lhs.true.i
  %i_flags.i = getelementptr inbounds %struct.cx18, ptr %9, i32 0, i32 32
  %27 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %i_flags.i, align 4
  %29 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool35.not.i = icmp eq i32 %29, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %if.then33.i.if.end43.i_crit_edge

if.then33.i.if.end43.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then36.i:                                      ; preds = %if.then33.i
  %ana_capturing.i = getelementptr inbounds %struct.cx18, ptr %9, i32 0, i32 33
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing.i, i32 noundef 4) #8
  %30 = ptrtoint ptr %ana_capturing.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %ana_capturing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp38.i = icmp sgt i32 %31, 0
  br i1 %cmp38.i, label %if.then39.i, label %if.then36.i.if.end43.i_crit_edge

if.then36.i.if.end43.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then39.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_fh_del(ptr noundef nonnull %call7.i.i.i) #8
  tail call void @v4l2_fh_exit(ptr noundef nonnull %call7.i.i.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

if.end43.i:                                       ; preds = %if.then36.i.if.end43.i_crit_edge, %if.then33.i.if.end43.i_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %i_flags.i) #8
  %ana_capturing.i.i = getelementptr inbounds %struct.cx18, ptr %9, i32 0, i32 33
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing.i.i, i32 noundef 4) #8
  %32 = ptrtoint ptr %ana_capturing.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %ana_capturing.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i19 = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i19, label %if.end43.i.do.body6.i.i_crit_edge, label %if.then.i.i

if.end43.i.do.body6.i.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i.i

if.then.i.i:                                      ; preds = %if.end43.i
  %call1.i.i = tail call i32 @cx18_find_handle(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp.not.i.i = icmp eq i32 %call1.i.i, -1
  br i1 %cmp.not.i.i, label %do.end.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %9, i32 noundef 537002004, i32 noundef 2, i32 noundef %call1.i.i, i32 noundef 1) #8
  br label %do.body6.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i = getelementptr inbounds %struct.cx18, ptr %9, i32 0, i32 2, i32 4
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name.i.i) #11
  br label %do.body6.i.i

do.body6.i.i:                                     ; preds = %do.end.i.i, %if.then2.i.i, %if.end43.i.do.body6.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %34 = load i32, ptr @cx18_debug, align 4
  %and.i.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %do.body6.i.i.cx18_mute.exit.i_crit_edge, label %do.end11.i.i

do.body6.i.i.cx18_mute.exit.i_crit_edge:          ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_mute.exit.i

do.end11.i.i:                                     ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name14.i.i = getelementptr inbounds %struct.cx18, ptr %9, i32 0, i32 2, i32 4
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name14.i.i) #11
  br label %cx18_mute.exit.i

cx18_mute.exit.i:                                 ; preds = %do.end11.i.i, %do.body6.i.i.cx18_mute.exit.i_crit_edge
  %subdevs.i = getelementptr inbounds %struct.cx18, ptr %9, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn106.i = load ptr, ptr %subdevs.i, align 4
  %cmp51.not108.i = icmp eq ptr %.pn106.i, %subdevs.i
  br i1 %cmp51.not108.i, label %cx18_mute.exit.i.do.end69.i_crit_edge, label %cx18_mute.exit.i.for.body.i_crit_edge

cx18_mute.exit.i.for.body.i_crit_edge:            ; preds = %cx18_mute.exit.i
  br label %for.body.i

cx18_mute.exit.i.do.end69.i_crit_edge:            ; preds = %cx18_mute.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cx18_mute.exit.i.for.body.i_crit_edge
  %.pn109.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn106.i, %cx18_mute.exit.i.for.body.i_crit_edge ]
  %__sd.0110.i = getelementptr i8, ptr %.pn109.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn109.i, i32 24
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %tuner.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tuner.i, align 4
  %tobool52.not.i = icmp eq ptr %39, null
  br i1 %tobool52.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true53.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true53.i:                                ; preds = %for.body.i
  %s_radio.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %s_radio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_radio.i, align 4
  %tobool56.not.i = icmp eq ptr %41, null
  br i1 %tobool56.not.i, label %land.lhs.true53.i.for.inc.i_crit_edge, label %if.then57.i

land.lhs.true53.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then57.i:                                      ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #10
  %call61.i = tail call i32 %41(ptr noundef %__sd.0110.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then57.i, %land.lhs.true53.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %42 = ptrtoint ptr %.pn109.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i = load ptr, ptr %.pn109.i, align 4
  %cmp51.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp51.not.i, label %for.inc.i.do.end69.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.end69.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69.i

do.end69.i:                                       ; preds = %for.inc.i.do.end69.i_crit_edge, %cx18_mute.exit.i.do.end69.i_crit_edge
  %call72.i = tail call i32 @cx18_audio_set_io(ptr noundef %9) #8
  tail call void @cx18_unmute(ptr noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end69.i, %if.then39.i, %land.lhs.true.i.cleanup_crit_edge, %if.end23.i.cleanup_crit_edge, %do.end14.i, %do.body8.i.cleanup_crit_edge, %video_device_node_name.exit
  %retval.0 = phi i32 [ -6, %video_device_node_name.exit ], [ -16, %if.then39.i ], [ -12, %do.end14.i ], [ -12, %do.body8.i.cleanup_crit_edge ], [ 0, %do.end69.i ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end23.i.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %serialize_lock) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_init_on_first_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_find_handle(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_msleep_timeout(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx18_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_process_vbi_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_buf_swap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_cx18_mdl_swap(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_cx18_enqueue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !152, !154, !156, !157, !158, !159, !161, !162}
!llvm.named.register.sp = !{!163}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 38, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cx18_claim_stream._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cx18_claim_stream._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 53, i32 4}
!8 = !{ptr @cx18_claim_stream._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cx18_claim_stream._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 57, i32 3}
!12 = !{ptr @cx18_claim_stream._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @cx18_claim_stream._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_cx18_claim_stream, !15, !"__ksymtab_cx18_claim_stream", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 85, i32 1}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 109, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cx18_release_stream._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @cx18_release_stream._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_cx18_release_stream, !22, !"__ksymtab_cx18_release_stream", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 144, i32 1}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 518, i32 5}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cx18_start_capture._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @cx18_start_capture._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 522, i32 4}
!30 = !{ptr @cx18_start_capture._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cx18_start_capture._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 527, i32 5}
!34 = !{ptr @cx18_start_capture._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cx18_start_capture._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 531, i32 4}
!38 = !{ptr @cx18_start_capture._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cx18_start_capture._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 546, i32 2}
!42 = !{ptr @cx18_start_capture._entry.22, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cx18_start_capture._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 579, i32 2}
!46 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cx18_v4l2_read._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @cx18_v4l2_read._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 614, i32 4}
!51 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cx18_v4l2_enc_poll._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @cx18_v4l2_enc_poll._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 618, i32 3}
!56 = !{ptr @cx18_v4l2_enc_poll._entry.29, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cx18_v4l2_enc_poll._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 633, i32 2}
!60 = !{ptr @cx18_v4l2_enc_poll._entry.32, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @cx18_v4l2_enc_poll._entry_ptr.34, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 664, i32 5}
!64 = !{ptr @cx18_v4l2_mmap._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @cx18_v4l2_mmap._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 669, i32 4}
!68 = !{ptr @cx18_v4l2_mmap._entry.36, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @cx18_v4l2_mmap._entry_ptr.38, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 705, i32 2}
!72 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cx18_stop_capture._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @cx18_stop_capture._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 711, i32 3}
!77 = !{ptr @cx18_stop_capture._entry.41, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cx18_stop_capture._entry_ptr.43, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 716, i32 5}
!81 = !{ptr @cx18_stop_capture._entry.44, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @cx18_stop_capture._entry_ptr.46, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 720, i32 5}
!85 = !{ptr @cx18_stop_capture._entry.47, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @cx18_stop_capture._entry_ptr.49, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 745, i32 2}
!89 = !{ptr @cx18_v4l2_close._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @cx18_v4l2_close._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 838, i32 3}
!93 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @cx18_v4l2_open._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @cx18_v4l2_open._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 856, i32 4}
!98 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @cx18_mute._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @cx18_mute._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 858, i32 2}
!103 = !{ptr @cx18_mute._entry.55, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @cx18_mute._entry_ptr.57, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 871, i32 4}
!107 = !{ptr @.str.59, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @cx18_unmute._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @cx18_unmute._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 873, i32 2}
!112 = !{ptr @cx18_unmute._entry.60, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @cx18_unmute._entry_ptr.62, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 476, i32 2}
!116 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cx18_read_pos._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @cx18_read_pos._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 414, i32 3}
!121 = !{ptr @.str.66, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @cx18_read._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @cx18_read._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 218, i32 4}
!126 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @cx18_get_mdl._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @cx18_get_mdl._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 237, i32 4}
!131 = !{ptr @cx18_get_mdl._entry.69, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @cx18_get_mdl._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 162, i32 2}
!135 = !{ptr @.str.73, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @cx18_dualwatch._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @cx18_dualwatch._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.75, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 165, i32 3}
!140 = !{ptr @cx18_dualwatch._entry.74, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @cx18_dualwatch._entry_ptr.76, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.77, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 352, i32 3}
!144 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @cx18_copy_buf_to_user._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @cx18_copy_buf_to_user._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!149 = !{ptr @.str.79, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!152 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!154 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 785, i32 2}
!156 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @cx18_serialized_open._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @cx18_serialized_open._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.85, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/pci/cx18/cx18-fileops.c", i32 790, i32 3}
!161 = !{ptr @cx18_serialized_open._entry.84, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @cx18_serialized_open._entry_ptr.86, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{!"sp"}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{!"branch_weights", i32 2000, i32 1}
!174 = !{i64 2152172876, i64 2152172901}
