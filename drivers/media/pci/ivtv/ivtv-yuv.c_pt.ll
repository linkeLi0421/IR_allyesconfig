; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-yuv.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-yuv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ivtv_dma_frame = type { i32, i32, ptr, ptr, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.ivtv_dma_page_info = type { i32, i32, i32, i32, i32, i32 }
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

@yuv_offset = dso_local constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1738240, i32 2360320, i32 2982400, i32 3604480, i32 167936, i32 790016, i32 7013376, i32 7635456], [32 x i8] zeroinitializer }, align 32
@ivtv_yuv_filter_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: YUV filter table not found in firmware.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ivtv_yuv_filter_check\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/pci/ivtv/ivtv-yuv.c\00", [62 x i8] zeroinitializer }, align 32
@ivtv_yuv_filter_check._entry_ptr = internal global ptr @ivtv_yuv_filter_check._entry, section ".printk_index", align 4
@ivtv_debug = external dso_local local_unnamed_addr global i32, align 4
@ivtv_yuv_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s:  yuv: Update yuv registers for frame %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ivtv_yuv_work_handler\00", [42 x i8] zeroinitializer }, align 32
@ivtv_yuv_work_handler._entry_ptr = internal global ptr @ivtv_yuv_work_handler._entry, section ".printk_index", align 4
@ivtv_yuv_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s:  yuv: ivtv_yuv_close\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtv_yuv_close\00", [17 x i8] zeroinitializer }, align 32
@ivtv_yuv_close._entry_ptr = internal global ptr @ivtv_yuv_close._entry, section ".printk_index", align 4
@ivtv_yuv_handle_horizontal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016%s:  warn: Adjust to width %d src_w %d dst_w %d src_x %d dst_x %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ivtv_yuv_handle_horizontal\00", [37 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_horizontal._entry_ptr = internal global ptr @ivtv_yuv_handle_horizontal._entry, section ".printk_index", align 4
@ivtv_yuv_handle_horizontal._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  yuv: Update reg 0x2834 %08x->%08x 0x2838 %08x->%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_horizontal._entry_ptr.11 = internal global ptr @ivtv_yuv_handle_horizontal._entry.9, section ".printk_index", align 4
@ivtv_yuv_handle_horizontal._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  yuv: Update reg 0x283c %08x->%08x 0x2844 %08x->%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_horizontal._entry_ptr.14 = internal global ptr @ivtv_yuv_handle_horizontal._entry.12, section ".printk_index", align 4
@ivtv_yuv_handle_horizontal._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  yuv: Update reg 0x2840 %08x->%08x 0x2848 %08x->%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_horizontal._entry_ptr.17 = internal global ptr @ivtv_yuv_handle_horizontal._entry.15, section ".printk_index", align 4
@ivtv_yuv_handle_horizontal._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  yuv: Update reg 0x2854 %08x->%08x \0A\00", [53 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_horizontal._entry_ptr.20 = internal global ptr @ivtv_yuv_handle_horizontal._entry.18, section ".printk_index", align 4
@ivtv_yuv_handle_horizontal._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  yuv: Update reg 0x285c %08x->%08x 0x2864 %08x->%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_horizontal._entry_ptr.23 = internal global ptr @ivtv_yuv_handle_horizontal._entry.21, section ".printk_index", align 4
@ivtv_yuv_handle_horizontal._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:  yuv: Update reg 0x2874 %08x->%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_horizontal._entry_ptr.26 = internal global ptr @ivtv_yuv_handle_horizontal._entry.24, section ".printk_index", align 4
@ivtv_yuv_handle_horizontal._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:  yuv: Update reg 0x2870 %08x->%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_horizontal._entry_ptr.29 = internal global ptr @ivtv_yuv_handle_horizontal._entry.27, section ".printk_index", align 4
@ivtv_yuv_handle_horizontal._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.8, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:  yuv: Update reg 0x2890 %08x->%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_horizontal._entry_ptr.32 = internal global ptr @ivtv_yuv_handle_horizontal._entry.30, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s:  warn: Adjust to height %d src_h %d dst_h %d src_y %d dst_y %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ivtv_yuv_handle_vertical\00", [39 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr = internal global ptr @ivtv_yuv_handle_vertical._entry, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s:  yuv: Scaling mode Y: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.37 = internal global ptr @ivtv_yuv_handle_vertical._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Interlaced\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Progressive\00", [20 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.34, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s:  yuv: Scaling mode UV: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.42 = internal global ptr @ivtv_yuv_handle_vertical._entry.40, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.34, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s:  warn: Source video: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.45 = internal global ptr @ivtv_yuv_handle_vertical._entry.43, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.34, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  yuv: Update reg 0x2934 %08x->%08x 0x293c %08x->%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.48 = internal global ptr @ivtv_yuv_handle_vertical._entry.46, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.34, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  yuv: Update reg 0x2944 %08x->%08x 0x294c %08x->%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.51 = internal global ptr @ivtv_yuv_handle_vertical._entry.49, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.34, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  yuv: Update reg 0x2930 %08x->%08x 0x2938 %08x->%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.54 = internal global ptr @ivtv_yuv_handle_vertical._entry.52, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.34, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  yuv: Update reg 0x2928 %08x->%08x 0x292c %08x->%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.57 = internal global ptr @ivtv_yuv_handle_vertical._entry.55, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.34, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  yuv: Update reg 0x2920 %08x->%08x 0x2924 %08x->%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.60 = internal global ptr @ivtv_yuv_handle_vertical._entry.58, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.34, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  yuv: Update reg 0x2918 %08x->%08x 0x291C %08x->%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.63 = internal global ptr @ivtv_yuv_handle_vertical._entry.61, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.34, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:  yuv: Update reg 0x296c %08x->%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.66 = internal global ptr @ivtv_yuv_handle_vertical._entry.64, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.34, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  yuv: Update reg 0x2940 %08x->%08x 0x2948 %08x->%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.69 = internal global ptr @ivtv_yuv_handle_vertical._entry.67, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.34, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  yuv: Update reg 0x2950 %08x->%08x 0x2954 %08x->%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.72 = internal global ptr @ivtv_yuv_handle_vertical._entry.70, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.34, ptr @.str.2, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  yuv: Update reg 0x2958 %08x->%08x 0x295C %08x->%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.75 = internal global ptr @ivtv_yuv_handle_vertical._entry.73, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.34, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  yuv: Update reg 0x2960 %08x->%08x \0A\00", [53 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.78 = internal global ptr @ivtv_yuv_handle_vertical._entry.76, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.34, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  yuv: Update reg 0x2964 %08x->%08x 0x2968 %08x->%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.81 = internal global ptr @ivtv_yuv_handle_vertical._entry.79, section ".printk_index", align 4
@ivtv_yuv_handle_vertical._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.34, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:  yuv: Update reg 0x289c %08x->%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@ivtv_yuv_handle_vertical._entry_ptr.84 = internal global ptr @ivtv_yuv_handle_vertical._entry.82, section ".printk_index", align 4
@ivtv_yuv_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s:  yuv: ivtv_yuv_init\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ivtv_yuv_init\00", [18 x i8] zeroinitializer }, align 32
@ivtv_yuv_init._entry_ptr = internal global ptr @ivtv_yuv_init._entry, section ".printk_index", align 4
@ivtv_yuv_init._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016%s:  warn: Clipping yuv output - fb size (%d) exceeds video standard limit (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@ivtv_yuv_init._entry_ptr.89 = internal global ptr @ivtv_yuv_init._entry.87, section ".printk_index", align 4
@ivtv_yuv_init._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.2, i32 929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s:  warn: Failed to allocate yuv blanking buffer\0A\00", [43 x i8] zeroinitializer }, align 32
@ivtv_yuv_init._entry_ptr.92 = internal global ptr @ivtv_yuv_init._entry.90, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ivtv_yuv_setup_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s:  yuv: Requesting reg update for frame %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ivtv_yuv_setup_frame\00", [43 x i8] zeroinitializer }, align 32
@ivtv_yuv_setup_frame._entry_ptr = internal global ptr @ivtv_yuv_setup_frame._entry, section ".printk_index", align 4
@ivtv_yuv_udma_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:  info: User stopped YUV UDMA\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ivtv_yuv_udma_frame\00", [44 x i8] zeroinitializer }, align 32
@ivtv_yuv_udma_frame._entry_ptr = internal global ptr @ivtv_yuv_udma_frame._entry, section ".printk_index", align 4
@ivtv_yuv_prep_user_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016%s:  warn: prep_user_dma: SG_length %d page_count %d still full?\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ivtv_yuv_prep_user_dma\00", [41 x i8] zeroinitializer }, align 32
@ivtv_yuv_prep_user_dma._entry_ptr = internal global ptr @ivtv_yuv_prep_user_dma._entry, section ".printk_index", align 4
@ivtv_yuv_prep_user_dma._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016%s:  warn: failed to map uv user pages, returned %d expecting %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ivtv_yuv_prep_user_dma._entry_ptr.103 = internal global ptr @ivtv_yuv_prep_user_dma._entry.101, section ".printk_index", align 4
@ivtv_yuv_prep_user_dma._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016%s:  warn: failed to map y user pages, returned %d expecting %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ivtv_yuv_prep_user_dma._entry_ptr.106 = internal global ptr @ivtv_yuv_prep_user_dma._entry.104, section ".printk_index", align 4
@ivtv_yuv_prep_user_dma._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.100, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016%s:  warn: could not allocate bounce buffers for highmem userspace buffers\0A\00", [50 x i8] zeroinitializer }, align 32
@ivtv_yuv_prep_user_dma._entry_ptr.109 = internal global ptr @ivtv_yuv_prep_user_dma._entry.107, section ".printk_index", align 4
@ivtv_yuv_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s:  yuv: h_filter -> %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ivtv_yuv_filter\00", [16 x i8] zeroinitializer }, align 32
@ivtv_yuv_filter._entry_ptr = internal global ptr @ivtv_yuv_filter._entry, section ".printk_index", align 4
@ivtv_yuv_filter._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:  yuv: v_filter_1 -> %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ivtv_yuv_filter._entry_ptr.114 = internal global ptr @ivtv_yuv_filter._entry.112, section ".printk_index", align 4
@ivtv_yuv_filter._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.111, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:  yuv: v_filter_2 -> %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ivtv_yuv_filter._entry_ptr.117 = internal global ptr @ivtv_yuv_filter._entry.115, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.118 = private unnamed_addr constant [11 x i8] c"yuv_offset\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 14, i32 11 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 145, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 805, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1175, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 223, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 332, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 338, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 343, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 347, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 352, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 356, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 360, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 364, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 389, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 394, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 397, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 401, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 576, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 580, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 589, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 594, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 599, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 604, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 608, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 613, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 618, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 623, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 627, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 632, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 636, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 844, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 914, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 929, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 326, i32 6 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1047, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1095, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 55, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 78, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 89, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 111, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 180, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 194, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.410 = private constant [37 x i8] c"../drivers/media/pci/ivtv/ivtv-yuv.c\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 208, i32 3 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @ivtv_yuv_close._entry, ptr @ivtv_yuv_close._entry_ptr, ptr @ivtv_yuv_filter._entry, ptr @ivtv_yuv_filter._entry.112, ptr @ivtv_yuv_filter._entry.115, ptr @ivtv_yuv_filter._entry_ptr, ptr @ivtv_yuv_filter._entry_ptr.114, ptr @ivtv_yuv_filter._entry_ptr.117, ptr @ivtv_yuv_filter_check._entry, ptr @ivtv_yuv_filter_check._entry_ptr, ptr @ivtv_yuv_handle_horizontal._entry, ptr @ivtv_yuv_handle_horizontal._entry.12, ptr @ivtv_yuv_handle_horizontal._entry.15, ptr @ivtv_yuv_handle_horizontal._entry.18, ptr @ivtv_yuv_handle_horizontal._entry.21, ptr @ivtv_yuv_handle_horizontal._entry.24, ptr @ivtv_yuv_handle_horizontal._entry.27, ptr @ivtv_yuv_handle_horizontal._entry.30, ptr @ivtv_yuv_handle_horizontal._entry.9, ptr @ivtv_yuv_handle_horizontal._entry_ptr, ptr @ivtv_yuv_handle_horizontal._entry_ptr.11, ptr @ivtv_yuv_handle_horizontal._entry_ptr.14, ptr @ivtv_yuv_handle_horizontal._entry_ptr.17, ptr @ivtv_yuv_handle_horizontal._entry_ptr.20, ptr @ivtv_yuv_handle_horizontal._entry_ptr.23, ptr @ivtv_yuv_handle_horizontal._entry_ptr.26, ptr @ivtv_yuv_handle_horizontal._entry_ptr.29, ptr @ivtv_yuv_handle_horizontal._entry_ptr.32, ptr @ivtv_yuv_handle_vertical._entry, ptr @ivtv_yuv_handle_vertical._entry.35, ptr @ivtv_yuv_handle_vertical._entry.40, ptr @ivtv_yuv_handle_vertical._entry.43, ptr @ivtv_yuv_handle_vertical._entry.46, ptr @ivtv_yuv_handle_vertical._entry.49, ptr @ivtv_yuv_handle_vertical._entry.52, ptr @ivtv_yuv_handle_vertical._entry.55, ptr @ivtv_yuv_handle_vertical._entry.58, ptr @ivtv_yuv_handle_vertical._entry.61, ptr @ivtv_yuv_handle_vertical._entry.64, ptr @ivtv_yuv_handle_vertical._entry.67, ptr @ivtv_yuv_handle_vertical._entry.70, ptr @ivtv_yuv_handle_vertical._entry.73, ptr @ivtv_yuv_handle_vertical._entry.76, ptr @ivtv_yuv_handle_vertical._entry.79, ptr @ivtv_yuv_handle_vertical._entry.82, ptr @ivtv_yuv_handle_vertical._entry_ptr, ptr @ivtv_yuv_handle_vertical._entry_ptr.37, ptr @ivtv_yuv_handle_vertical._entry_ptr.42, ptr @ivtv_yuv_handle_vertical._entry_ptr.45, ptr @ivtv_yuv_handle_vertical._entry_ptr.48, ptr @ivtv_yuv_handle_vertical._entry_ptr.51, ptr @ivtv_yuv_handle_vertical._entry_ptr.54, ptr @ivtv_yuv_handle_vertical._entry_ptr.57, ptr @ivtv_yuv_handle_vertical._entry_ptr.60, ptr @ivtv_yuv_handle_vertical._entry_ptr.63, ptr @ivtv_yuv_handle_vertical._entry_ptr.66, ptr @ivtv_yuv_handle_vertical._entry_ptr.69, ptr @ivtv_yuv_handle_vertical._entry_ptr.72, ptr @ivtv_yuv_handle_vertical._entry_ptr.75, ptr @ivtv_yuv_handle_vertical._entry_ptr.78, ptr @ivtv_yuv_handle_vertical._entry_ptr.81, ptr @ivtv_yuv_handle_vertical._entry_ptr.84, ptr @ivtv_yuv_init._entry, ptr @ivtv_yuv_init._entry.87, ptr @ivtv_yuv_init._entry.90, ptr @ivtv_yuv_init._entry_ptr, ptr @ivtv_yuv_init._entry_ptr.89, ptr @ivtv_yuv_init._entry_ptr.92, ptr @ivtv_yuv_prep_user_dma._entry, ptr @ivtv_yuv_prep_user_dma._entry.101, ptr @ivtv_yuv_prep_user_dma._entry.104, ptr @ivtv_yuv_prep_user_dma._entry.107, ptr @ivtv_yuv_prep_user_dma._entry_ptr, ptr @ivtv_yuv_prep_user_dma._entry_ptr.103, ptr @ivtv_yuv_prep_user_dma._entry_ptr.106, ptr @ivtv_yuv_prep_user_dma._entry_ptr.109, ptr @ivtv_yuv_setup_frame._entry, ptr @ivtv_yuv_setup_frame._entry_ptr, ptr @ivtv_yuv_udma_frame._entry, ptr @ivtv_yuv_udma_frame._entry_ptr, ptr @ivtv_yuv_work_handler._entry, ptr @ivtv_yuv_work_handler._entry_ptr, ptr @yuv_offset, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.116], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuv_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_filter_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_horizontal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_horizontal._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_horizontal._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_horizontal._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_horizontal._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_horizontal._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_horizontal._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_horizontal._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_horizontal._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_handle_vertical._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_init._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_init._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_setup_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_udma_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_prep_user_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_prep_user_dma._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_prep_user_dma._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_prep_user_dma._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_filter._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_yuv_filter._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_yuv_filter_check(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dec_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %y.027 = phi i32 [ 16, %entry ], [ %add15, %for.inc.for.body_crit_edge ]
  %uv.026 = phi i32 [ 4, %entry ], [ %add16, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dec_mem, align 4
  %add = add nuw nsw i32 %y.027, 9688
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !193
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  %shl = shl i32 %i.028, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shl)
  %cmp2.not = icmp eq i32 %3, %shl
  br i1 %cmp2.not, label %lor.lhs.false, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %for.body
  %4 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dec_mem, align 4
  %add6 = add nuw nsw i32 %uv.026, 13144
  %add.ptr7 = getelementptr i8, ptr %5, i32 %add6
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %2)
  %cmp12.not = icmp eq i32 %6, %2
  br i1 %cmp12.not, label %for.inc, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %for.body.do.end_crit_edge
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false
  %inc = add nuw nsw i32 %i.028, 1
  %add15 = add nuw nsw i32 %y.027, 24
  %add16 = add nuw nsw i32 %uv.026, 12
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_yuv_work_handler(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %update_frame = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 56
  %0 = ptrtoint ptr %update_frame to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %update_frame, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %2 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %1) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %arrayidx = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %f.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  %f.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %4 = ptrtoint ptr %f.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %f.sroa.5.0.copyload = load i32, ptr %f.sroa.5.0.arrayidx.sroa_idx, align 4
  %f.sroa.15.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %5 = ptrtoint ptr %f.sroa.15.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %f.sroa.15.0.copyload = load i32, ptr %f.sroa.15.0.arrayidx.sroa_idx, align 4
  %f.sroa.25.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 12
  %6 = ptrtoint ptr %f.sroa.25.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %f.sroa.25.0.copyload = load i32, ptr %f.sroa.25.0.arrayidx.sroa_idx, align 4
  %f.sroa.37.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 16
  %7 = ptrtoint ptr %f.sroa.37.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %f.sroa.37.0.copyload = load i32, ptr %f.sroa.37.0.arrayidx.sroa_idx, align 4
  %f.sroa.51.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 20
  %8 = ptrtoint ptr %f.sroa.51.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %f.sroa.51.0.copyload = load i32, ptr %f.sroa.51.0.arrayidx.sroa_idx, align 4
  %f.sroa.58.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 24
  %9 = ptrtoint ptr %f.sroa.58.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %f.sroa.58.0.copyload = load i32, ptr %f.sroa.58.0.arrayidx.sroa_idx, align 4
  %f.sroa.65.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 28
  %10 = ptrtoint ptr %f.sroa.65.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %f.sroa.65.0.copyload = load i32, ptr %f.sroa.65.0.arrayidx.sroa_idx, align 4
  %f.sroa.77.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 32
  %11 = ptrtoint ptr %f.sroa.77.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %f.sroa.77.0.copyload = load i32, ptr %f.sroa.77.0.arrayidx.sroa_idx, align 4
  %f.sroa.105.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 52
  %12 = ptrtoint ptr %f.sroa.105.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %f.sroa.105.0.copyload = load i32, ptr %f.sroa.105.0.arrayidx.sroa_idx, align 4
  %f.sroa.109.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 56
  %13 = ptrtoint ptr %f.sroa.109.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %f.sroa.109.0.copyload = load i32, ptr %f.sroa.109.0.arrayidx.sroa_idx, align 4
  %f.sroa.112.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 60
  %14 = ptrtoint ptr %f.sroa.112.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %f.sroa.112.0.copyload = load i32, ptr %f.sroa.112.0.arrayidx.sroa_idx, align 4
  %f.sroa.113.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 64
  %15 = ptrtoint ptr %f.sroa.113.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %f.sroa.113.0.copyload = load i32, ptr %f.sroa.113.0.arrayidx.sroa_idx, align 4
  %f.sroa.114.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 68
  %16 = ptrtoint ptr %f.sroa.114.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %f.sroa.114.0.copyload = load i32, ptr %f.sroa.114.0.arrayidx.sroa_idx, align 4
  %f.sroa.115.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 72
  %17 = ptrtoint ptr %f.sroa.115.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %f.sroa.115.0.copyload = load i32, ptr %f.sroa.115.0.arrayidx.sroa_idx, align 4
  %f.sroa.116.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 76
  %18 = ptrtoint ptr %f.sroa.116.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %f.sroa.116.0.copyload = load i32, ptr %f.sroa.116.0.arrayidx.sroa_idx, align 4
  %f.sroa.117.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 80
  %19 = ptrtoint ptr %f.sroa.117.0.arrayidx.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %f.sroa.117.0.arrayidx.sroa_idx, align 4
  %f.sroa.117174.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 88
  %21 = ptrtoint ptr %f.sroa.117174.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %f.sroa.117174.0.copyload = load i32, ptr %f.sroa.117174.0.arrayidx.sroa_idx, align 4
  %track_osd = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 40
  %22 = ptrtoint ptr %track_osd to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %track_osd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool4.not = icmp eq i8 %23, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %osd_x_pan = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 43
  %24 = ptrtoint ptr %osd_x_pan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %osd_x_pan, align 4
  %osd_y_pan = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 44
  %26 = ptrtoint ptr %osd_y_pan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %osd_y_pan, align 4
  %osd_vis_w = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 45
  %28 = ptrtoint ptr %osd_vis_w to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %osd_vis_w, align 4
  %osd_vis_h = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 46
  br label %if.end10

if.else:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %decode_height = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 49
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %f.sroa.91.0 = phi i32 [ 0, %if.else ], [ %25, %if.then5 ]
  %f.sroa.95.0 = phi i32 [ 0, %if.else ], [ %27, %if.then5 ]
  %f.sroa.98.0 = phi i32 [ 720, %if.else ], [ %29, %if.then5 ]
  %f.sroa.102.0.in = phi ptr [ %decode_height, %if.else ], [ %osd_vis_h, %if.then5 ]
  %30 = ptrtoint ptr %f.sroa.102.0.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %f.sroa.102.0 = load i32, ptr %f.sroa.102.0.in, align 4
  %31 = tail call i32 @llvm.smax.i32(i32 %f.sroa.5.0.copyload, i32 0)
  %32 = tail call i32 @llvm.smax.i32(i32 %f.sroa.15.0.copyload, i32 0)
  %mul.neg.i = mul i32 %f.sroa.65.0.copyload, -4
  %sub.i = add i32 %mul.neg.i, %f.sroa.25.0.copyload
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp6.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end10.if.end19.i_crit_edge

if.end10.if.end19.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then7.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %div424427.i = lshr i32 %sub.i, 1
  %add.i = add nuw i32 %div424427.i, %31
  %sub10.i = sub i32 0, %mul.neg.i
  %div13423.i = lshr exact i32 %sub10.i, 2
  %and16.i = and i32 %div13423.i, 1
  %add18.i = add nuw nsw i32 %and16.i, %div13423.i
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then7.i, %if.end10.if.end19.i_crit_edge
  %f.sroa.5.1 = phi i32 [ %add.i, %if.then7.i ], [ %31, %if.end10.if.end19.i_crit_edge ]
  %f.sroa.25.0 = phi i32 [ %sub10.i, %if.then7.i ], [ %f.sroa.25.0.copyload, %if.end10.if.end19.i_crit_edge ]
  %f.sroa.65.0 = phi i32 [ %add18.i, %if.then7.i ], [ %f.sroa.65.0.copyload, %if.end10.if.end19.i_crit_edge ]
  %div20.i = udiv i32 %f.sroa.37.0.copyload, %f.sroa.77.0.copyload
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div20.i)
  %cmp21.i = icmp ugt i32 %div20.i, 1
  br i1 %cmp21.i, label %if.then22.i, label %if.end19.i.if.end44.i_crit_edge

if.end19.i.if.end44.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then22.i:                                      ; preds = %if.end19.i
  %mul25.neg.i = mul i32 %f.sroa.77.0.copyload, -4
  %sub26.i = add i32 %mul25.neg.i, %f.sroa.37.0.copyload
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26.i)
  %cmp27.i = icmp sgt i32 %sub26.i, 0
  br i1 %cmp27.i, label %if.then28.i, label %if.then22.i.if.end44.i_crit_edge

if.then22.i.if.end44.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then28.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  %div29425426.i = lshr i32 %sub26.i, 1
  %add31.i = add nuw i32 %div29425426.i, %32
  %sub33.i = sub i32 0, %mul25.neg.i
  %div37422.i = lshr exact i32 %sub33.i, 2
  %and40.i = and i32 %div37422.i, 1
  %add42.i = add nuw nsw i32 %and40.i, %div37422.i
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then28.i, %if.then22.i.if.end44.i_crit_edge, %if.end19.i.if.end44.i_crit_edge
  %f.sroa.15.1 = phi i32 [ %add31.i, %if.then28.i ], [ %32, %if.then22.i.if.end44.i_crit_edge ], [ %32, %if.end19.i.if.end44.i_crit_edge ]
  %f.sroa.37.0 = phi i32 [ %sub33.i, %if.then28.i ], [ %f.sroa.37.0.copyload, %if.then22.i.if.end44.i_crit_edge ], [ %f.sroa.37.0.copyload, %if.end19.i.if.end44.i_crit_edge ]
  %f.sroa.77.0 = phi i32 [ %add42.i, %if.then28.i ], [ %f.sroa.77.0.copyload, %if.then22.i.if.end44.i_crit_edge ], [ %f.sroa.77.0.copyload, %if.end19.i.if.end44.i_crit_edge ]
  %f.sroa.105.0 = phi i32 [ 1, %if.then28.i ], [ 1, %if.then22.i.if.end44.i_crit_edge ], [ %f.sroa.105.0.copyload, %if.end19.i.if.end44.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %f.sroa.65.0)
  %cmp46.i = icmp slt i32 %f.sroa.65.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %f.sroa.77.0)
  %cmp48.i = icmp slt i32 %f.sroa.77.0, 3
  %or.cond = select i1 %cmp46.i, i1 true, i1 %cmp48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %f.sroa.25.0)
  %cmp51.i = icmp slt i32 %f.sroa.25.0, 3
  %or.cond312 = select i1 %or.cond, i1 true, i1 %cmp51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %f.sroa.37.0)
  %cmp54.i = icmp slt i32 %f.sroa.37.0, 3
  %or.cond313 = select i1 %or.cond312, i1 true, i1 %cmp54.i
  br i1 %or.cond313, label %if.end44.i.do.body18_crit_edge, label %if.end56.i

if.end44.i.do.body18_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

if.end56.i:                                       ; preds = %if.end44.i
  %shl.i = shl i32 %f.sroa.37.0, 16
  %div59.i = udiv i32 %shl.i, %f.sroa.77.0
  %sub60.i = sub i32 %f.sroa.95.0, %f.sroa.58.0.copyload
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub60.i)
  %cmp61.i = icmp sgt i32 %sub60.i, 0
  br i1 %cmp61.i, label %if.then62.i, label %if.else.i

if.then62.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul63.i = mul i32 %div59.i, %sub60.i
  %shr.i = lshr i32 %mul63.i, 16
  %add65.i = add nuw i32 %shr.i, %f.sroa.15.1
  %sub69.i = sub nsw i32 %f.sroa.37.0, %shr.i
  %sub71.i = sub nsw i32 %f.sroa.77.0, %sub60.i
  br label %if.end76.i

if.else.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub75.i = sub i32 %f.sroa.58.0.copyload, %f.sroa.95.0
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.else.i, %if.then62.i
  %f.sroa.15.2 = phi i32 [ %add65.i, %if.then62.i ], [ %f.sroa.15.1, %if.else.i ]
  %f.sroa.37.1 = phi i32 [ %sub69.i, %if.then62.i ], [ %f.sroa.37.0, %if.else.i ]
  %f.sroa.77.1 = phi i32 [ %sub71.i, %if.then62.i ], [ %f.sroa.77.0, %if.else.i ]
  %storemerge.i = phi i32 [ 0, %if.then62.i ], [ %sub75.i, %if.else.i ]
  %add79.i = sub i32 %f.sroa.77.1, %f.sroa.102.0
  %sub80.i = add i32 %add79.i, %storemerge.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub80.i)
  %cmp81.i = icmp sgt i32 %sub80.i, 0
  %mul85.i = mul i32 %sub80.i, %div59.i
  %shr86.i = lshr i32 %mul85.i, 16
  %sub88.i = select i1 %cmp81.i, i32 %shr86.i, i32 0
  %f.sroa.37.2 = sub nsw i32 %f.sroa.37.1, %sub88.i
  %33 = tail call i32 @llvm.smax.i32(i32 %sub80.i, i32 0)
  %f.sroa.77.2 = sub i32 %f.sroa.77.1, %33
  %shl91.i = shl i32 %f.sroa.25.0, 16
  %div93.i = udiv i32 %shl91.i, %f.sroa.65.0
  %sub94.i = sub i32 %f.sroa.91.0, %f.sroa.51.0.copyload
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub94.i)
  %cmp95.i = icmp sgt i32 %sub94.i, 0
  br i1 %cmp95.i, label %if.then96.i, label %if.else108.i

if.then96.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul97.i = mul i32 %div93.i, %sub94.i
  %shr98.i = lshr i32 %mul97.i, 16
  %add100.i = add nuw i32 %shr98.i, %f.sroa.5.1
  %sub104.i = sub nsw i32 %f.sroa.25.0, %shr98.i
  %sub106.i = sub nsw i32 %f.sroa.65.0, %sub94.i
  br label %if.end112.i

if.else108.i:                                     ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub111.i = sub i32 %f.sroa.51.0.copyload, %f.sroa.91.0
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.else108.i, %if.then96.i
  %f.sroa.5.2 = phi i32 [ %add100.i, %if.then96.i ], [ %f.sroa.5.1, %if.else108.i ]
  %f.sroa.25.1 = phi i32 [ %sub104.i, %if.then96.i ], [ %f.sroa.25.0, %if.else108.i ]
  %f.sroa.65.1 = phi i32 [ %sub106.i, %if.then96.i ], [ %f.sroa.65.0, %if.else108.i ]
  %storemerge417.i = phi i32 [ 0, %if.then96.i ], [ %sub111.i, %if.else108.i ]
  %add115.i = sub i32 %f.sroa.65.1, %f.sroa.98.0
  %sub116.i = add i32 %add115.i, %storemerge417.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub116.i)
  %cmp117.i = icmp sgt i32 %sub116.i, 0
  %mul121.i = mul i32 %sub116.i, %div93.i
  %shr122.i = lshr i32 %mul121.i, 16
  %sub124.i = select i1 %cmp117.i, i32 %shr122.i, i32 0
  %f.sroa.25.2 = sub nsw i32 %f.sroa.25.1, %sub124.i
  %34 = tail call i32 @llvm.smax.i32(i32 %sub116.i, i32 0)
  %f.sroa.65.2 = sub i32 %f.sroa.65.1, %34
  br i1 %tobool4.not, label %if.end112.i.if.end134.i_crit_edge, label %if.then127.i

if.end112.i.if.end134.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134.i

if.then127.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #10
  %osd_x_offset.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 41
  %35 = ptrtoint ptr %osd_x_offset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %osd_x_offset.i, align 4
  %add130.i = add i32 %36, %storemerge417.i
  %osd_y_offset.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 42
  %37 = ptrtoint ptr %osd_y_offset.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %osd_y_offset.i, align 4
  %add133.i = add i32 %38, %storemerge.i
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.then127.i, %if.end112.i.if.end134.i_crit_edge
  %f.sroa.51.0 = phi i32 [ %storemerge417.i, %if.end112.i.if.end134.i_crit_edge ], [ %add130.i, %if.then127.i ]
  %f.sroa.58.0 = phi i32 [ %storemerge.i, %if.end112.i.if.end134.i_crit_edge ], [ %add133.i, %if.then127.i ]
  %and136.i = and i32 %f.sroa.65.2, -2
  %and138.i = and i32 %f.sroa.51.0, -2
  %and140.i = and i32 %f.sroa.5.2, 1
  %add142.i = add i32 %f.sroa.25.2, %and140.i
  %and144.i = and i32 %f.sroa.5.2, -2
  %and150.i = and i32 %f.sroa.77.2, -2
  %and152.i = and i32 %f.sroa.58.0, -2
  %and154.i = and i32 %f.sroa.15.2, 1
  %add156.i = add i32 %f.sroa.37.2, %and154.i
  %and158.i = and i32 %f.sroa.15.2, -2
  %div165418.i = lshr i32 %add142.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and136.i, i32 %div165418.i)
  %cmp166.i = icmp ult i32 %and136.i, %div165418.i
  %and174.i = and i32 %div165418.i, 1
  %add176.i = add nuw nsw i32 %and174.i, %div165418.i
  %f.sroa.25.3.v = select i1 %cmp166.i, i32 -4, i32 -2
  %f.sroa.25.3 = and i32 %f.sroa.25.3.v, %add142.i
  %f.sroa.65.3 = select i1 %cmp166.i, i32 %add176.i, i32 %and136.i
  %div180419.i = lshr i32 %add156.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and150.i, i32 %div180419.i)
  %cmp181.i = icmp ult i32 %and150.i, %div180419.i
  %and189.i = and i32 %div180419.i, 1
  %add191.i = add nuw nsw i32 %and189.i, %div180419.i
  %f.sroa.37.3.v = select i1 %cmp181.i, i32 -4, i32 -2
  %f.sroa.37.3 = and i32 %f.sroa.37.3.v, %add156.i
  %f.sroa.77.3 = select i1 %cmp181.i, i32 %add191.i, i32 %and150.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %f.sroa.65.3)
  %cmp194.i = icmp slt i32 %f.sroa.65.3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %f.sroa.77.3)
  %cmp197.i = icmp slt i32 %f.sroa.77.3, 3
  %or.cond314 = select i1 %cmp194.i, i1 true, i1 %cmp197.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %f.sroa.25.3)
  %cmp200.i = icmp slt i32 %f.sroa.25.3, 3
  %or.cond315 = select i1 %or.cond314, i1 true, i1 %cmp200.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %f.sroa.37.3)
  %cmp203.i = icmp slt i32 %f.sroa.37.3, 3
  %or.cond316 = select i1 %or.cond315, i1 true, i1 %cmp203.i
  br i1 %or.cond316, label %if.end134.i.do.body18_crit_edge, label %if.end205.i

if.end134.i.do.body18_crit_edge:                  ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

if.end205.i:                                      ; preds = %if.end134.i
  %dst_w206.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 7
  %39 = ptrtoint ptr %dst_w206.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dst_w206.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %f.sroa.65.3)
  %cmp208.not.i = icmp eq i32 %40, %f.sroa.65.3
  br i1 %cmp208.not.i, label %lor.lhs.false209.i, label %if.end205.i.if.then229.i_crit_edge

if.end205.i.if.then229.i_crit_edge:               ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then229.i

lor.lhs.false209.i:                               ; preds = %if.end205.i
  %src_w210.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 3
  %41 = ptrtoint ptr %src_w210.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %src_w210.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %f.sroa.25.3)
  %cmp212.not.i = icmp eq i32 %42, %f.sroa.25.3
  br i1 %cmp212.not.i, label %lor.lhs.false213.i, label %lor.lhs.false209.i.if.then229.i_crit_edge

lor.lhs.false209.i.if.then229.i_crit_edge:        ; preds = %lor.lhs.false209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then229.i

lor.lhs.false213.i:                               ; preds = %lor.lhs.false209.i
  %dst_x214.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 5
  %43 = ptrtoint ptr %dst_x214.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dst_x214.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %and138.i)
  %cmp216.not.i = icmp eq i32 %44, %and138.i
  br i1 %cmp216.not.i, label %lor.lhs.false217.i, label %lor.lhs.false213.i.if.then229.i_crit_edge

lor.lhs.false213.i.if.then229.i_crit_edge:        ; preds = %lor.lhs.false213.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then229.i

lor.lhs.false217.i:                               ; preds = %lor.lhs.false213.i
  %src_x218.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 1
  %45 = ptrtoint ptr %src_x218.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %src_x218.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %and144.i)
  %cmp220.not.i = icmp eq i32 %46, %and144.i
  br i1 %cmp220.not.i, label %lor.lhs.false221.i, label %lor.lhs.false217.i.if.then229.i_crit_edge

lor.lhs.false217.i.if.then229.i_crit_edge:        ; preds = %lor.lhs.false217.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then229.i

lor.lhs.false221.i:                               ; preds = %lor.lhs.false217.i
  %pan_x222.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 9
  %47 = ptrtoint ptr %pan_x222.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pan_x222.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %f.sroa.91.0)
  %cmp224.not.i = icmp eq i32 %48, %f.sroa.91.0
  br i1 %cmp224.not.i, label %lor.lhs.false225.i, label %lor.lhs.false221.i.if.then229.i_crit_edge

lor.lhs.false221.i.if.then229.i_crit_edge:        ; preds = %lor.lhs.false221.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then229.i

lor.lhs.false225.i:                               ; preds = %lor.lhs.false221.i
  %vis_w226.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 11
  %49 = ptrtoint ptr %vis_w226.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vis_w226.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %f.sroa.98.0)
  %cmp228.not.i = icmp eq i32 %50, %f.sroa.98.0
  br i1 %cmp228.not.i, label %lor.lhs.false225.i.if.end230.i_crit_edge, label %lor.lhs.false225.i.if.then229.i_crit_edge

lor.lhs.false225.i.if.then229.i_crit_edge:        ; preds = %lor.lhs.false225.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then229.i

lor.lhs.false225.i.if.end230.i_crit_edge:         ; preds = %lor.lhs.false225.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end230.i

if.then229.i:                                     ; preds = %lor.lhs.false225.i.if.then229.i_crit_edge, %lor.lhs.false221.i.if.then229.i_crit_edge, %lor.lhs.false217.i.if.then229.i_crit_edge, %lor.lhs.false213.i.if.then229.i_crit_edge, %lor.lhs.false209.i.if.then229.i_crit_edge, %if.end205.i.if.then229.i_crit_edge
  br label %if.end230.i

if.end230.i:                                      ; preds = %if.then229.i, %lor.lhs.false225.i.if.end230.i_crit_edge
  %tobool12.not = phi i1 [ true, %if.then229.i ], [ false, %lor.lhs.false225.i.if.end230.i_crit_edge ]
  %yuv_update.0.i = phi i32 [ 3, %if.then229.i ], [ 2, %lor.lhs.false225.i.if.end230.i_crit_edge ]
  %src_h231.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 4
  %51 = ptrtoint ptr %src_h231.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %src_h231.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %f.sroa.37.3)
  %cmp233.not.i = icmp eq i32 %52, %f.sroa.37.3
  br i1 %cmp233.not.i, label %lor.lhs.false234.i, label %if.end230.i.do.body24_crit_edge

if.end230.i.do.body24_crit_edge:                  ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

lor.lhs.false234.i:                               ; preds = %if.end230.i
  %dst_h235.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 8
  %53 = ptrtoint ptr %dst_h235.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dst_h235.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %f.sroa.77.3)
  %cmp237.not.i = icmp eq i32 %54, %f.sroa.77.3
  br i1 %cmp237.not.i, label %lor.lhs.false238.i, label %lor.lhs.false234.i.do.body24_crit_edge

lor.lhs.false234.i.do.body24_crit_edge:           ; preds = %lor.lhs.false234.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

lor.lhs.false238.i:                               ; preds = %lor.lhs.false234.i
  %dst_y239.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 6
  %55 = ptrtoint ptr %dst_y239.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dst_y239.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %and152.i)
  %cmp241.not.i = icmp eq i32 %56, %and152.i
  br i1 %cmp241.not.i, label %lor.lhs.false242.i, label %lor.lhs.false238.i.do.body24_crit_edge

lor.lhs.false238.i.do.body24_crit_edge:           ; preds = %lor.lhs.false238.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

lor.lhs.false242.i:                               ; preds = %lor.lhs.false238.i
  %src_y243.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 2
  %57 = ptrtoint ptr %src_y243.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %src_y243.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %and158.i)
  %cmp245.not.i = icmp eq i32 %58, %and158.i
  br i1 %cmp245.not.i, label %lor.lhs.false246.i, label %lor.lhs.false242.i.do.body24_crit_edge

lor.lhs.false242.i.do.body24_crit_edge:           ; preds = %lor.lhs.false242.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

lor.lhs.false246.i:                               ; preds = %lor.lhs.false242.i
  %pan_y247.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 10
  %59 = ptrtoint ptr %pan_y247.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pan_y247.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %f.sroa.95.0)
  %cmp249.not.i = icmp eq i32 %60, %f.sroa.95.0
  br i1 %cmp249.not.i, label %lor.lhs.false250.i, label %lor.lhs.false246.i.do.body24_crit_edge

lor.lhs.false246.i.do.body24_crit_edge:           ; preds = %lor.lhs.false246.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

lor.lhs.false250.i:                               ; preds = %lor.lhs.false246.i
  %vis_h251.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 12
  %61 = ptrtoint ptr %vis_h251.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vis_h251.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %f.sroa.102.0)
  %cmp253.not.i = icmp eq i32 %62, %f.sroa.102.0
  br i1 %cmp253.not.i, label %lor.lhs.false254.i, label %lor.lhs.false250.i.do.body24_crit_edge

lor.lhs.false250.i.do.body24_crit_edge:           ; preds = %lor.lhs.false250.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

lor.lhs.false254.i:                               ; preds = %lor.lhs.false250.i
  %lace_mode.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 19
  %63 = ptrtoint ptr %lace_mode.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lace_mode.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %f.sroa.116.0.copyload)
  %cmp256.not.i = icmp eq i32 %64, %f.sroa.116.0.copyload
  br i1 %cmp256.not.i, label %lor.lhs.false257.i, label %lor.lhs.false254.i.do.body24_crit_edge

lor.lhs.false254.i.do.body24_crit_edge:           ; preds = %lor.lhs.false254.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

lor.lhs.false257.i:                               ; preds = %lor.lhs.false254.i
  %interlaced_y258.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 13
  %65 = ptrtoint ptr %interlaced_y258.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %interlaced_y258.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %f.sroa.105.0)
  %cmp260.not.i = icmp eq i32 %66, %f.sroa.105.0
  br i1 %cmp260.not.i, label %lor.lhs.false261.i, label %lor.lhs.false257.i.do.body24_crit_edge

lor.lhs.false257.i.do.body24_crit_edge:           ; preds = %lor.lhs.false257.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

lor.lhs.false261.i:                               ; preds = %lor.lhs.false257.i
  %interlaced_uv.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 14
  %67 = ptrtoint ptr %interlaced_uv.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %interlaced_uv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %f.sroa.109.0.copyload)
  %cmp263.not.i = icmp ne i32 %68, %f.sroa.109.0.copyload
  %brmerge = or i1 %tobool12.not, %cmp263.not.i
  %yuv_update.0.i.mux = select i1 %cmp263.not.i, i32 %yuv_update.0.i, i32 1
  br i1 %brmerge, label %lor.lhs.false261.i.do.body24_crit_edge, label %lor.lhs.false261.i.cleanup_crit_edge

lor.lhs.false261.i.cleanup_crit_edge:             ; preds = %lor.lhs.false261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false261.i.do.body24_crit_edge:           ; preds = %lor.lhs.false261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

do.body18:                                        ; preds = %if.end134.i.do.body18_crit_edge, %if.end44.i.do.body18_crit_edge
  %f.sroa.77.4.ph311 = phi i32 [ %f.sroa.77.0, %if.end44.i.do.body18_crit_edge ], [ %f.sroa.77.3, %if.end134.i.do.body18_crit_edge ]
  %f.sroa.65.4.ph310 = phi i32 [ %f.sroa.65.0, %if.end44.i.do.body18_crit_edge ], [ %f.sroa.65.3, %if.end134.i.do.body18_crit_edge ]
  %f.sroa.58.1.ph309 = phi i32 [ %f.sroa.58.0.copyload, %if.end44.i.do.body18_crit_edge ], [ %and152.i, %if.end134.i.do.body18_crit_edge ]
  %f.sroa.51.1.ph308 = phi i32 [ %f.sroa.51.0.copyload, %if.end44.i.do.body18_crit_edge ], [ %and138.i, %if.end134.i.do.body18_crit_edge ]
  %f.sroa.37.4.ph307 = phi i32 [ %f.sroa.37.0, %if.end44.i.do.body18_crit_edge ], [ %f.sroa.37.3, %if.end134.i.do.body18_crit_edge ]
  %f.sroa.25.4.ph306 = phi i32 [ %f.sroa.25.0, %if.end44.i.do.body18_crit_edge ], [ %f.sroa.25.3, %if.end134.i.do.body18_crit_edge ]
  %f.sroa.15.3.ph305 = phi i32 [ %f.sroa.15.1, %if.end44.i.do.body18_crit_edge ], [ %and158.i, %if.end134.i.do.body18_crit_edge ]
  %f.sroa.5.3.ph304 = phi i32 [ %f.sroa.5.1, %if.end44.i.do.body18_crit_edge ], [ %and144.i, %if.end134.i.do.body18_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %69 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %70, i32 10392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2139095039) #8, !srcloc !197
  br label %if.end38

do.body24:                                        ; preds = %lor.lhs.false261.i.do.body24_crit_edge, %lor.lhs.false257.i.do.body24_crit_edge, %lor.lhs.false254.i.do.body24_crit_edge, %lor.lhs.false250.i.do.body24_crit_edge, %lor.lhs.false246.i.do.body24_crit_edge, %lor.lhs.false242.i.do.body24_crit_edge, %lor.lhs.false238.i.do.body24_crit_edge, %lor.lhs.false234.i.do.body24_crit_edge, %if.end230.i.do.body24_crit_edge
  %retval.0.i263275 = phi i32 [ %yuv_update.0.i, %if.end230.i.do.body24_crit_edge ], [ %yuv_update.0.i, %lor.lhs.false234.i.do.body24_crit_edge ], [ %yuv_update.0.i, %lor.lhs.false238.i.do.body24_crit_edge ], [ %yuv_update.0.i, %lor.lhs.false242.i.do.body24_crit_edge ], [ %yuv_update.0.i, %lor.lhs.false246.i.do.body24_crit_edge ], [ %yuv_update.0.i, %lor.lhs.false250.i.do.body24_crit_edge ], [ %yuv_update.0.i, %lor.lhs.false254.i.do.body24_crit_edge ], [ %yuv_update.0.i, %lor.lhs.false257.i.do.body24_crit_edge ], [ %yuv_update.0.i.mux, %lor.lhs.false261.i.do.body24_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void @arm_heavy_mb() #8
  %reg_mem27 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %71 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_mem27, align 8
  %add.ptr28 = getelementptr i8, ptr %72, i32 10392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 -2139090944) #8, !srcloc !197
  %and29 = and i32 %retval.0.i263275, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body24.if.end32_crit_edge, label %if.then31

do.body24.if.end32_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then31:                                        ; preds = %do.body24
  %yuv_info.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %73 = load i32, ptr @ivtv_debug, align 4
  %and.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i60 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i60, label %if.then31.do.end3.i_crit_edge, label %do.end.i

if.then31.do.end3.i_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef %f.sroa.113.0.copyload, i32 noundef %f.sroa.25.3, i32 noundef %f.sroa.65.3, i32 noundef %and144.i, i32 noundef %and138.i) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then31.do.end3.i_crit_edge
  %add.i65 = add i32 %f.sroa.25.3, %and144.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %f.sroa.98.0)
  %cmp.i67 = icmp eq i32 %f.sroa.98.0, 720
  br i1 %cmp.i67, label %if.then8.i, label %do.end3.i.if.end52.i_crit_edge

do.end3.i.if.end52.i_crit_edge:                   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i

if.then8.i:                                       ; preds = %do.end3.i
  %sub.i69 = sub i32 %f.sroa.112.0.copyload, %f.sroa.91.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %sub.i69)
  %74 = icmp ult i32 %sub.i69, 41
  call void @__sanitizer_cov_trace_const_cmp4(i32 679, i32 %f.sroa.65.3)
  %cmp16.i = icmp ugt i32 %f.sroa.65.3, 679
  %or.cond566.i = select i1 %74, i1 %cmp16.i, i1 false
  br i1 %or.cond566.i, label %if.then17.i, label %if.else.i70

if.then17.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.neg570571576.i = lshr i32 %sub.i69, 2
  %sub21.i = sub nuw nsw i32 10, %div.neg570571576.i
  br label %if.end41.i

if.else.i70:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -21, i32 %sub.i69)
  %75 = icmp ugt i32 %sub.i69, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 659, i32 %f.sroa.65.3)
  %cmp33.i = icmp ugt i32 %f.sroa.65.3, 659
  %or.cond574.i = select i1 %75, i1 %cmp33.i, i1 false
  br i1 %or.cond574.i, label %if.then34.i, label %if.else.i70.if.end41.i_crit_edge

if.else.i70.if.end41.i_crit_edge:                 ; preds = %if.else.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then34.i:                                      ; preds = %if.else.i70
  call void @__sanitizer_cov_trace_pc() #10
  %div38572.lhs.trunc.i = sub nsw i32 0, %sub.i69
  %div38572573575.i = lshr i32 %div38572.lhs.trunc.i, 1
  %add39.i = sub nuw nsw i32 10, %div38572573575.i
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then34.i, %if.else.i70.if.end41.i_crit_edge, %if.then17.i
  %reg_2870.0.i = phi i32 [ %sub21.i, %if.then17.i ], [ %add39.i, %if.then34.i ], [ 0, %if.else.i70.if.end41.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %f.sroa.65.3, i32 %f.sroa.25.3)
  %cmp44.not.i = icmp ult i32 %f.sroa.65.3, %f.sroa.25.3
  br i1 %cmp44.not.i, label %if.else46.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i71 = shl nuw nsw i32 %reg_2870.0.i, 16
  %or.i = or i32 %shl.i71, %reg_2870.0.i
  br label %if.end52.i

if.else46.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %and47.i = and i32 %reg_2870.0.i, -2
  %shl48.i = shl nuw nsw i32 %and47.i, 15
  %or50.i = or i32 %shl48.i, %and47.i
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else46.i, %if.then45.i, %do.end3.i.if.end52.i_crit_edge
  %reg_2870.1.i = phi i32 [ %or.i, %if.then45.i ], [ %or50.i, %if.else46.i ], [ 0, %do.end3.i.if.end52.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %f.sroa.65.3, i32 %f.sroa.25.3)
  %cmp55.i = icmp ult i32 %f.sroa.65.3, %f.sroa.25.3
  %..i = select i1 %cmp55.i, i32 851982, i32 1179662
  %reg_2870.2.i = sub i32 %..i, %reg_2870.1.i
  %shl63.i = shl i32 %f.sroa.65.3, 21
  %div65.i = udiv i32 %shl63.i, %f.sroa.25.3
  %mul.i = mul i32 %div65.i, %and144.i
  %shr.i72 = lshr i32 %mul.i, 19
  br i1 %cmp55.i, label %if.else111.i, label %if.then69.i

if.then69.i:                                      ; preds = %if.end52.i
  %mul72.i = shl i32 %f.sroa.25.3, 21
  %div74.i = udiv i32 %mul72.i, %f.sroa.65.3
  %mul76.i = mul i32 %div74.i, %f.sroa.65.3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul76.i, i32 %mul72.i)
  %cmp79.not.i = icmp ne i32 %mul76.i, %mul72.i
  %inc.i = zext i1 %cmp79.not.i to i32
  %spec.select.i = add nuw nsw i32 %div74.i, %inc.i
  %shr86.i73 = lshr i32 %spec.select.i, 2
  %shr88.i = lshr i32 %spec.select.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %f.sroa.65.3, i32 %f.sroa.25.3)
  %cmp92.i = icmp ugt i32 %f.sroa.65.3, %f.sroa.25.3
  br i1 %cmp92.i, label %if.then93.i, label %if.then69.i.if.end102.i_crit_edge

if.then69.i.if.end102.i_crit_edge:                ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.then93.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub96.i = sub nsw i32 %f.sroa.65.3, %f.sroa.25.3
  %shl97.i = shl i32 %sub96.i, 16
  %shl99.i = shl i32 %f.sroa.25.3, 14
  %div100.i = udiv i32 %shl97.i, %shl99.i
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then93.i, %if.then69.i.if.end102.i_crit_edge
  %reg_2870_base.0.i = phi i32 [ %div100.i, %if.then93.i ], [ 0, %if.then69.i.if.end102.i_crit_edge ]
  %shl103.i = shl nuw nsw i32 %shr.i72, 14
  %and104.i = and i32 %shl103.i, 134152192
  %shr105.i = lshr i32 %mul.i, 21
  %shl107.i = shl i32 %reg_2870_base.0.i, 17
  %or108.i = or i32 %shl107.i, %reg_2870_base.0.i
  %or106.i = add i32 %shr105.i, %reg_2870.2.i
  %add109.i = add i32 %or106.i, %and104.i
  %add110.i = add i32 %add109.i, %or108.i
  br label %if.end186.i

if.else111.i:                                     ; preds = %if.end52.i
  %div114563.i = lshr exact i32 %f.sroa.25.3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %f.sroa.65.3, i32 %div114563.i)
  %cmp115.i = icmp ult i32 %f.sroa.65.3, %div114563.i
  br i1 %cmp115.i, label %if.then116.i, label %if.else151.i

if.then116.i:                                     ; preds = %if.else111.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul118.i = shl i32 %f.sroa.25.3, 19
  %div120.i = udiv i32 %mul118.i, %f.sroa.65.3
  %mul122.i = mul i32 %div120.i, %f.sroa.65.3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul122.i, i32 %mul118.i)
  %cmp125.not.i = icmp ne i32 %mul122.i, %mul118.i
  %inc127.i = zext i1 %cmp125.not.i to i32
  %spec.select568.i = add nuw nsw i32 %div120.i, %inc127.i
  %shr133.i = lshr i32 %spec.select568.i, 2
  %shr134.i = lshr i32 %spec.select568.i, 1
  %shl137.i = shl nuw nsw i32 %shr.i72, 15
  %and138.i74 = and i32 %shl137.i, 268369920
  %add144.i = add nsw i32 %f.sroa.25.3, -1
  %sub145.i = add nuw i32 %add144.i, %div114563.i
  %div147.i = udiv i32 %sub145.i, %f.sroa.65.3
  %.neg565.i = mul i32 %div147.i, -65536
  %shl149.i = add i32 %reg_2870.2.i, 327680
  %or139.i = add i32 %shl149.i, %shr.i72
  %add140.i = add i32 %or139.i, %and138.i74
  %add150.i = add i32 %add140.i, %.neg565.i
  br label %if.end186.i

if.else151.i:                                     ; preds = %if.else111.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul153.i = shl i32 %f.sroa.25.3, 20
  %div155.i = udiv i32 %mul153.i, %f.sroa.65.3
  %mul157.i = mul i32 %div155.i, %f.sroa.65.3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul157.i, i32 %mul153.i)
  %cmp160.not.i = icmp ne i32 %mul157.i, %mul153.i
  %inc162.i = zext i1 %cmp160.not.i to i32
  %spec.select569.i = add nuw nsw i32 %div155.i, %inc162.i
  %shr168.i = lshr i32 %spec.select569.i, 2
  %shr169.i = lshr i32 %spec.select569.i, 1
  %shl172.i = shl nuw nsw i32 %shr.i72, 14
  %and173.i = and i32 %shl172.i, 134152192
  %shr174.i = lshr i32 %mul.i, 20
  %mul178.i = mul i32 %f.sroa.25.3, 3
  %sub179.i = add i32 %mul178.i, -1
  %div181.i = udiv i32 %sub179.i, %f.sroa.65.3
  %.neg.i = mul i32 %div181.i, -65536
  %shl183.i = add i32 %reg_2870.2.i, 327680
  %or175.i = add i32 %shl183.i, %shr174.i
  %add176.i75 = add i32 %or175.i, %and173.i
  %add184.i = add i32 %add176.i75, %.neg.i
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.else151.i, %if.then116.i, %if.end102.i
  %reg_2870.3.i = phi i32 [ %add110.i, %if.end102.i ], [ %add150.i, %if.then116.i ], [ %add184.i, %if.else151.i ]
  %reg_2874.0.i = phi i32 [ 0, %if.end102.i ], [ 18, %if.then116.i ], [ 1, %if.else151.i ]
  %reg_285c.0.i = phi i32 [ %shr88.i, %if.end102.i ], [ %shr134.i, %if.then116.i ], [ %shr169.i, %if.else151.i ]
  %reg_2854.0.i = phi i32 [ %spec.select.i, %if.end102.i ], [ %spec.select568.i, %if.then116.i ], [ %spec.select569.i, %if.else151.i ]
  %reg_2844.0.i = phi i32 [ %shr86.i73, %if.end102.i ], [ %shr134.i, %if.then116.i ], [ %shr169.i, %if.else151.i ]
  %reg_283c.0.i = phi i32 [ %shr86.i73, %if.end102.i ], [ %shr133.i, %if.then116.i ], [ %shr168.i, %if.else151.i ]
  %shl82.i.pn = shl i32 %f.sroa.65.3, 16
  %reg_2834.0.i = or i32 %shl82.i.pn, %add.i65
  call void @__sanitizer_cov_trace_cmp4(i32 %f.sroa.65.3, i32 %f.sroa.25.3)
  %cmp189.i = icmp eq i32 %f.sroa.65.3, %f.sroa.25.3
  br i1 %cmp189.i, label %if.end186.i.do.body203.i_crit_edge, label %if.else191.i

if.end186.i.do.body203.i_crit_edge:               ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body203.i

if.else191.i:                                     ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl193.i = shl i32 %f.sroa.25.3, 16
  %div195.i = udiv i32 %shl193.i, %f.sroa.65.3
  %shr196.i = lshr i32 %div195.i, 15
  %76 = lshr i32 %div195.i, 16
  %and198.i = and i32 %shr196.i, 1
  %add199.i = add nuw nsw i32 %and198.i, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add199.i)
  %tobool200.not.i = icmp eq i32 %add199.i, 0
  %lnot.ext.i = zext i1 %tobool200.not.i to i32
  %add201.i = add nuw nsw i32 %add199.i, %lnot.ext.i
  br label %do.body203.i

do.body203.i:                                     ; preds = %if.else191.i, %if.end186.i.do.body203.i_crit_edge
  %h_filter.0.i = phi i32 [ %add201.i, %if.else191.i ], [ 0, %if.end186.i.do.body203.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %77 = tail call i32 @llvm.bswap.i32(i32 %reg_2834.0.i) #8
  %78 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_mem27, align 8
  %add.ptr.i = getelementptr i8, ptr %79, i32 10292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %77) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !200
  tail call void @arm_heavy_mb() #8
  %80 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg_mem27, align 8
  %add.ptr210.i = getelementptr i8, ptr %81, i32 10296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr210.i, i32 %77) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %82 = load i32, ptr @ivtv_debug, align 4
  %and212.i = and i32 %82, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212.i)
  %tobool213.not.i = icmp eq i32 %and212.i, 0
  br i1 %tobool213.not.i, label %do.body203.i.do.body228.i_crit_edge, label %do.end217.i

do.body203.i.do.body228.i_crit_edge:              ; preds = %do.body203.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body228.i

do.end217.i:                                      ; preds = %do.body203.i
  call void @__sanitizer_cov_trace_pc() #10
  %name220.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %83 = ptrtoint ptr %yuv_info.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %yuv_info.i, align 4
  %reg_2838223.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 1
  %85 = ptrtoint ptr %reg_2838223.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %reg_2838223.i, align 4
  %call224.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name220.i, i32 noundef %84, i32 noundef %reg_2834.0.i, i32 noundef %86, i32 noundef %reg_2834.0.i) #11
  br label %do.body228.i

do.body228.i:                                     ; preds = %do.end217.i, %do.body203.i.do.body228.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  tail call void @arm_heavy_mb() #8
  %87 = tail call i32 @llvm.bswap.i32(i32 %reg_283c.0.i) #8
  %88 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_mem27, align 8
  %add.ptr232.i = getelementptr i8, ptr %89, i32 10300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr232.i, i32 %87) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %90 = tail call i32 @llvm.bswap.i32(i32 %reg_2844.0.i) #8
  %91 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg_mem27, align 8
  %add.ptr237.i = getelementptr i8, ptr %92, i32 10308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr237.i, i32 %90) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %93 = load i32, ptr @ivtv_debug, align 4
  %and239.i = and i32 %93, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239.i)
  %tobool240.not.i = icmp eq i32 %and239.i, 0
  br i1 %tobool240.not.i, label %do.body228.i.do.body255.i_crit_edge, label %do.end244.i

do.body228.i.do.body255.i_crit_edge:              ; preds = %do.body228.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body255.i

do.end244.i:                                      ; preds = %do.body228.i
  call void @__sanitizer_cov_trace_pc() #10
  %name247.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_283c249.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 2
  %94 = ptrtoint ptr %reg_283c249.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %reg_283c249.i, align 4
  %reg_2844250.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 4
  %96 = ptrtoint ptr %reg_2844250.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %reg_2844250.i, align 4
  %call251.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name247.i, i32 noundef %95, i32 noundef %reg_283c.0.i, i32 noundef %97, i32 noundef %reg_2844.0.i) #11
  br label %do.body255.i

do.body255.i:                                     ; preds = %do.end244.i, %do.body228.i.do.body255.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @arm_heavy_mb() #8
  %98 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_mem27, align 8
  %add.ptr259.i = getelementptr i8, ptr %99, i32 10304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr259.i, i32 335874048) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg_mem27, align 8
  %add.ptr264.i = getelementptr i8, ptr %101, i32 10312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr264.i, i32 335876096) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %102 = load i32, ptr @ivtv_debug, align 4
  %and266.i = and i32 %102, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266.i)
  %tobool267.not.i = icmp eq i32 %and266.i, 0
  br i1 %tobool267.not.i, label %do.body255.i.do.body280.i_crit_edge, label %do.end271.i

do.body255.i.do.body280.i_crit_edge:              ; preds = %do.body255.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body280.i

do.end271.i:                                      ; preds = %do.body255.i
  call void @__sanitizer_cov_trace_pc() #10
  %name274.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2840.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 3
  %103 = ptrtoint ptr %reg_2840.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %reg_2840.i, align 4
  %reg_2848.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 5
  %105 = ptrtoint ptr %reg_2848.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %reg_2848.i, align 4
  %call276.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name274.i, i32 noundef %104, i32 noundef 525588, i32 noundef %106, i32 noundef 1049876) #11
  br label %do.body280.i

do.body280.i:                                     ; preds = %do.end271.i, %do.body255.i.do.body280.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  tail call void @arm_heavy_mb() #8
  %107 = tail call i32 @llvm.bswap.i32(i32 %reg_2854.0.i) #8
  %108 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reg_mem27, align 8
  %add.ptr284.i = getelementptr i8, ptr %109, i32 10324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr284.i, i32 %107) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %110 = load i32, ptr @ivtv_debug, align 4
  %and286.i = and i32 %110, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286.i)
  %tobool287.not.i = icmp eq i32 %and286.i, 0
  br i1 %tobool287.not.i, label %do.body280.i.do.body301.i_crit_edge, label %do.end291.i

do.body280.i.do.body301.i_crit_edge:              ; preds = %do.body280.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body301.i

do.end291.i:                                      ; preds = %do.body280.i
  call void @__sanitizer_cov_trace_pc() #10
  %name294.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2854296.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 6
  %111 = ptrtoint ptr %reg_2854296.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %reg_2854296.i, align 4
  %call297.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name294.i, i32 noundef %112, i32 noundef %reg_2854.0.i) #11
  br label %do.body301.i

do.body301.i:                                     ; preds = %do.end291.i, %do.body280.i.do.body301.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  tail call void @arm_heavy_mb() #8
  %113 = tail call i32 @llvm.bswap.i32(i32 %reg_285c.0.i) #8
  %114 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %reg_mem27, align 8
  %add.ptr305.i = getelementptr i8, ptr %115, i32 10332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr305.i, i32 %113) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  tail call void @arm_heavy_mb() #8
  %116 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg_mem27, align 8
  %add.ptr310.i = getelementptr i8, ptr %117, i32 10340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr310.i, i32 %113) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %118 = load i32, ptr @ivtv_debug, align 4
  %and312.i = and i32 %118, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and312.i)
  %tobool313.not.i = icmp eq i32 %and312.i, 0
  br i1 %tobool313.not.i, label %do.body301.i.do.body328.i_crit_edge, label %do.end317.i

do.body301.i.do.body328.i_crit_edge:              ; preds = %do.body301.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body328.i

do.end317.i:                                      ; preds = %do.body301.i
  call void @__sanitizer_cov_trace_pc() #10
  %name320.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_285c322.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 7
  %119 = ptrtoint ptr %reg_285c322.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %reg_285c322.i, align 4
  %reg_2864323.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 8
  %121 = ptrtoint ptr %reg_2864323.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %reg_2864323.i, align 4
  %call324.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name320.i, i32 noundef %120, i32 noundef %reg_285c.0.i, i32 noundef %122, i32 noundef %reg_285c.0.i) #11
  br label %do.body328.i

do.body328.i:                                     ; preds = %do.end317.i, %do.body301.i.do.body328.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  tail call void @arm_heavy_mb() #8
  %123 = shl nuw nsw i32 %reg_2874.0.i, 24
  %124 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %reg_mem27, align 8
  %add.ptr332.i = getelementptr i8, ptr %125, i32 10356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr332.i, i32 %123) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %126 = load i32, ptr @ivtv_debug, align 4
  %and334.i = and i32 %126, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and334.i)
  %tobool335.not.i = icmp eq i32 %and334.i, 0
  br i1 %tobool335.not.i, label %do.body328.i.do.body349.i_crit_edge, label %do.end339.i

do.body328.i.do.body349.i_crit_edge:              ; preds = %do.body328.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body349.i

do.end339.i:                                      ; preds = %do.body328.i
  call void @__sanitizer_cov_trace_pc() #10
  %name342.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2874344.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 10
  %127 = ptrtoint ptr %reg_2874344.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %reg_2874344.i, align 4
  %call345.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name342.i, i32 noundef %128, i32 noundef %reg_2874.0.i) #11
  br label %do.body349.i

do.body349.i:                                     ; preds = %do.end339.i, %do.body328.i.do.body349.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  %129 = tail call i32 @llvm.bswap.i32(i32 %reg_2870.3.i) #8
  %130 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reg_mem27, align 8
  %add.ptr353.i = getelementptr i8, ptr %131, i32 10352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr353.i, i32 %129) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %132 = load i32, ptr @ivtv_debug, align 4
  %and355.i = and i32 %132, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and355.i)
  %tobool356.not.i = icmp eq i32 %and355.i, 0
  br i1 %tobool356.not.i, label %do.body349.i.do.body370.i_crit_edge, label %do.end360.i

do.body349.i.do.body370.i_crit_edge:              ; preds = %do.body349.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body370.i

do.end360.i:                                      ; preds = %do.body349.i
  call void @__sanitizer_cov_trace_pc() #10
  %name363.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2870365.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 9
  %133 = ptrtoint ptr %reg_2870365.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %reg_2870365.i, align 4
  %call366.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name363.i, i32 noundef %134, i32 noundef %reg_2870.3.i) #11
  br label %do.body370.i

do.body370.i:                                     ; preds = %do.end360.i, %do.body349.i.do.body370.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  tail call void @arm_heavy_mb() #8
  %135 = tail call i32 @llvm.bswap.i32(i32 %and138.i) #8
  %136 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %reg_mem27, align 8
  %add.ptr374.i = getelementptr i8, ptr %137, i32 10384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr374.i, i32 %135) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %138 = load i32, ptr @ivtv_debug, align 4
  %and376.i = and i32 %138, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and376.i)
  %tobool377.not.i = icmp eq i32 %and376.i, 0
  br i1 %tobool377.not.i, label %do.body370.i.do.end390.i_crit_edge, label %do.end381.i

do.body370.i.do.end390.i_crit_edge:               ; preds = %do.body370.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end390.i

do.end381.i:                                      ; preds = %do.body370.i
  call void @__sanitizer_cov_trace_pc() #10
  %name384.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2890386.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 11
  %139 = ptrtoint ptr %reg_2890386.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %reg_2890386.i, align 4
  %call387.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name384.i, i32 noundef %140, i32 noundef %and138.i) #11
  br label %do.end390.i

do.end390.i:                                      ; preds = %do.end381.i, %do.body370.i.do.end390.i_crit_edge
  %h_filter391.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 39
  %141 = ptrtoint ptr %h_filter391.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %h_filter391.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %h_filter.0.i, i32 %142)
  %cmp392.not.i = icmp eq i32 %h_filter.0.i, %142
  br i1 %cmp392.not.i, label %do.end390.i.if.end32_crit_edge, label %if.then393.i

do.end390.i.if.end32_crit_edge:                   ; preds = %do.end390.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then393.i:                                     ; preds = %do.end390.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ivtv_yuv_filter(ptr noundef %itv, i32 noundef %h_filter.0.i, i32 noundef -1, i32 noundef -1) #8
  %143 = ptrtoint ptr %h_filter391.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %h_filter.0.i, ptr %h_filter391.i, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then393.i, %do.end390.i.if.end32_crit_edge, %do.body24.if.end32_crit_edge
  %and33 = and i32 %retval.0.i263275, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end38_crit_edge, label %if.then35

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %144 = load i32, ptr @ivtv_debug, align 4
  %and.i76 = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %tobool.not.i77 = icmp eq i32 %and.i76, 0
  br i1 %tobool.not.i77, label %if.then35.do.body4.i_crit_edge, label %do.end.i84

if.then35.do.body4.i_crit_edge:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4.i

do.end.i84:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %name.i78 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call.i83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name.i78, i32 noundef %f.sroa.114.0.copyload, i32 noundef %f.sroa.37.3, i32 noundef %f.sroa.77.3, i32 noundef %and158.i, i32 noundef %and152.i) #11
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.end.i84, %if.then35.do.body4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %145 = load i32, ptr @ivtv_debug, align 4
  %and5.i = and i32 %145, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.body4.i.do.body20.i_crit_edge, label %do.end10.i

do.body4.i.do.body20.i_crit_edge:                 ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20.i

do.end10.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  %name13.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.sroa.105.0)
  %tobool15.not.i = icmp eq i32 %f.sroa.105.0, 0
  %cond.i = select i1 %tobool15.not.i, ptr @.str.39, ptr @.str.38
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name13.i, ptr noundef nonnull %cond.i) #11
  br label %do.body20.i

do.body20.i:                                      ; preds = %do.end10.i, %do.body4.i.do.body20.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %146 = load i32, ptr @ivtv_debug, align 4
  %and21.i = and i32 %146, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.body20.i.do.body37.i_crit_edge, label %do.end26.i

do.body20.i.do.body37.i_crit_edge:                ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body37.i

do.end26.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  %name29.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.sroa.109.0.copyload)
  %tobool31.not.i = icmp eq i32 %f.sroa.109.0.copyload, 0
  %cond32.i = select i1 %tobool31.not.i, ptr @.str.39, ptr @.str.38
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name29.i, ptr noundef nonnull %cond32.i) #11
  br label %do.body37.i

do.body37.i:                                      ; preds = %do.end26.i, %do.body20.i.do.body37.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %147 = load i32, ptr @ivtv_debug, align 4
  %and38.i = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %do.body37.i.do.end53.i_crit_edge, label %do.end43.i

do.body37.i.do.end53.i_crit_edge:                 ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53.i

do.end43.i:                                       ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #10
  %name46.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.sroa.117174.0.copyload)
  %tobool48.not.i = icmp eq i32 %f.sroa.117174.0.copyload, 0
  %cond49.i = select i1 %tobool48.not.i, ptr @.str.39, ptr @.str.38
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name46.i, ptr noundef nonnull %cond49.i) #11
  br label %do.end53.i

do.end53.i:                                       ; preds = %do.end43.i, %do.body37.i.do.end53.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and158.i)
  %cmp.i87 = icmp slt i32 %and158.i, 8
  %sub.i88 = add i32 %and158.i, -8
  %src_major_uv.0.i = select i1 %cmp.i87, i32 0, i32 %sub.i88
  %148 = tail call i32 @llvm.smin.i32(i32 %and158.i, i32 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.sroa.115.0.copyload)
  %tobool59.not.i = icmp eq i32 %f.sroa.115.0.copyload, 0
  %add.i89 = add nsw i32 %148, 16
  %src_minor_y.0.i = select i1 %tobool59.not.i, i32 %148, i32 %add.i89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.sroa.105.0)
  %tobool63.not.i = icmp eq i32 %f.sroa.105.0, 0
  %shl70.i = shl i32 %f.sroa.77.3, 16
  %add72.i = add i32 %f.sroa.37.3, %src_minor_y.0.i
  %shl73.i = zext i1 %tobool63.not.i to i32
  %shl73.sink.i = shl i32 %add72.i, %shl73.i
  %or74.i = or i32 %shl73.sink.i, %shl70.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.sroa.109.0.copyload)
  %tobool77.not.i = icmp eq i32 %f.sroa.109.0.copyload, 0
  %add88.i = add i32 %f.sroa.37.3, %148
  %not.tobool77.not.i = xor i1 %tobool77.not.i, true
  %shr.i90 = zext i1 %not.tobool77.not.i to i32
  %add88.sink.i = lshr i32 %add88.i, %shr.i90
  %or89.i = or i32 %add88.sink.i, %shl70.i
  %div.i = udiv i32 %shl70.i, %f.sroa.37.3
  %mul.i91 = mul i32 %div.i, %src_minor_y.0.i
  %shr94.i = lshr i32 %mul.i91, 17
  %mul99.i = mul i32 %div.i, %148
  %shr100.i = lshr i32 %mul99.i, 17
  %div102932.i = lshr i32 %f.sroa.77.3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div102932.i, i32 %f.sroa.37.3)
  %cmp104.not.i = icmp ult i32 %div102932.i, %f.sroa.37.3
  %tobool63.not.not.i = xor i1 %tobool63.not.i, true
  %brmerge.i = select i1 %cmp104.not.i, i1 true, i1 %tobool63.not.not.i
  br i1 %brmerge.i, label %if.else127.i, label %if.then107.i

if.then107.i:                                     ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul109.i = shl i32 %f.sroa.37.3, 22
  %div111.i = udiv i32 %mul109.i, %f.sroa.77.3
  %mul115.i = mul i32 %div111.i, %f.sroa.77.3
  %sub116.i92 = sub i32 %mul109.i, %mul115.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub116.i92, i32 %div102932.i)
  %cmp119.not.i = icmp uge i32 %sub116.i92, %div102932.i
  %inc.i93 = zext i1 %cmp119.not.i to i32
  %spec.select.i94 = add nuw nsw i32 %div111.i, %inc.i93
  %shr122.i95 = lshr i32 %spec.select.i94, 2
  %shr123.i = lshr i32 %spec.select.i94, 3
  %shr124.i = lshr i32 %spec.select.i94, 1
  br label %if.end199.i

if.else127.i:                                     ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_cmp4(i32 %f.sroa.77.3, i32 %f.sroa.37.3)
  %cmp130.not.i = icmp ult i32 %f.sroa.77.3, %f.sroa.37.3
  br i1 %cmp130.not.i, label %if.else156.i, label %if.then131.i

if.then131.i:                                     ; preds = %if.else127.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul133.i = shl i32 %f.sroa.37.3, 22
  %div135.i = udiv i32 %mul133.i, %f.sroa.77.3
  %shr136.i = lshr i32 %div135.i, 1
  %and137.i = and i32 %div135.i, 1
  %add138.i = add nuw nsw i32 %shr136.i, %and137.i
  %shr139.i = lshr i32 %add138.i, 2
  %shr141.i = lshr i32 %add138.i, 1
  %shr148.i = lshr i32 %mul.i91, 16
  %reg_2964_base.0.i = select i1 %tobool63.not.i, i32 %shr148.i, i32 %shr94.i
  %shr153.i = lshr i32 %add138.i, 3
  %reg_2928.0.i = select i1 %tobool77.not.i, i32 %shr139.i, i32 %shr153.i
  br label %if.end199.i

if.else156.i:                                     ; preds = %if.else127.i
  %div159933.i = lshr exact i32 %f.sroa.37.3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %f.sroa.77.3, i32 %div159933.i)
  %cmp160.not.i96 = icmp ult i32 %f.sroa.77.3, %div159933.i
  br i1 %cmp160.not.i96, label %if.else185.i, label %if.then161.i

if.then161.i:                                     ; preds = %if.else156.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul163.i = shl i32 %f.sroa.37.3, 21
  %div165.i = udiv i32 %mul163.i, %f.sroa.77.3
  %shr166.i = lshr i32 %div165.i, 1
  %and167.i = and i32 %div165.i, 1
  %add168.i = add nuw nsw i32 %shr166.i, %and167.i
  %shr169.i97 = lshr i32 %add168.i, 2
  %reg_296c.1.i = select i1 %tobool63.not.i, i32 258, i32 257
  %reg_2964_base.1.v.i = select i1 %tobool63.not.i, i32 15, i32 16
  %reg_2964_base.1.i = lshr i32 %mul.i91, %reg_2964_base.1.v.i
  %shr182.i = lshr i32 %add168.i, 3
  %reg_2928.1.i = select i1 %tobool77.not.i, i32 %shr169.i97, i32 %shr182.i
  %shr184.i = lshr i32 %mul99.i, 16
  br label %if.end199.i

if.else185.i:                                     ; preds = %if.else156.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul187.i = shl i32 %f.sroa.37.3, 20
  %div189.i = udiv i32 %mul187.i, %f.sroa.77.3
  %shr190.i = lshr i32 %div189.i, 1
  %and191.i = and i32 %div189.i, 1
  %add192.i = add nuw nsw i32 %shr190.i, %and191.i
  %shr193.i = lshr i32 %add192.i, 2
  %shr195.i = lshr i32 %mul.i91, 15
  %shr196.i98 = lshr i32 %mul99.i, 16
  br label %if.end199.i

if.end199.i:                                      ; preds = %if.else185.i, %if.then161.i, %if.then131.i, %if.then107.i
  %reg_296c.2.i = phi i32 [ %shl73.i, %if.then131.i ], [ %reg_296c.1.i, %if.then161.i ], [ 258, %if.else185.i ], [ 0, %if.then107.i ]
  %reg_2964_base.2.i = phi i32 [ %reg_2964_base.0.i, %if.then131.i ], [ %reg_2964_base.1.i, %if.then161.i ], [ %shr195.i, %if.else185.i ], [ %shr94.i, %if.then107.i ]
  %reg_2968_base.0.i = phi i32 [ %shr100.i, %if.then131.i ], [ %shr184.i, %if.then161.i ], [ %shr196.i98, %if.else185.i ], [ %shr100.i, %if.then107.i ]
  %reg_2940.0.i = phi i32 [ %shr141.i, %if.then131.i ], [ %add168.i, %if.then161.i ], [ %add192.i, %if.else185.i ], [ %shr124.i, %if.then107.i ]
  %reg_2930.0.i = phi i32 [ %add138.i, %if.then131.i ], [ %add168.i, %if.then161.i ], [ %add192.i, %if.else185.i ], [ %spec.select.i94, %if.then107.i ]
  %reg_2928.2.i = phi i32 [ %reg_2928.0.i, %if.then131.i ], [ %reg_2928.1.i, %if.then161.i ], [ %shr193.i, %if.else185.i ], [ %shr123.i, %if.then107.i ]
  %reg_2920.0.i = phi i32 [ %shr139.i, %if.then131.i ], [ %shr169.i97, %if.then161.i ], [ %shr193.i, %if.else185.i ], [ %shr122.i95, %if.then107.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %f.sroa.37.3, i32 %f.sroa.77.3)
  %cmp202.i = icmp eq i32 %f.sroa.37.3, %f.sroa.77.3
  %..i99 = select i1 %cmp202.i, i32 720896, i32 4080
  %.936.i = select i1 %cmp202.i, i32 262144, i32 4080
  %.937.i = select i1 %cmp202.i, i32 1048576, i32 4080
  %.938.i = select i1 %cmp202.i, i32 131072, i32 4080
  %reg_2950.0.v.i = select i1 %tobool63.not.i, i32 65536, i32 131072
  %reg_2950.0.i = add nuw i32 %src_major_uv.0.i, %reg_2950.0.v.i
  %add212.i = or i32 %reg_2950.0.i, 1
  %shr213.i = lshr exact i32 %src_major_uv.0.i, 1
  %reg_2958.0.v.i = select i1 %tobool77.not.i, i32 65536, i32 131072
  %reg_2958.0.i = add nuw nsw i32 %shr213.i, %reg_2958.0.v.i
  %add220.i = add nuw nsw i32 %reg_2958.0.i, 1
  %decode_height.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 49
  %149 = ptrtoint ptr %decode_height.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %decode_height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %150)
  %cmp221.i = icmp eq i32 %150, 480
  %reg_289c.0.i = select i1 %cmp221.i, i32 18743319, i32 22020119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %cmp226.i = icmp slt i32 %and152.i, 0
  %and229.i = shl i32 %f.sroa.58.0, 15
  %shl230.i = and i32 %and229.i, -65536
  %shr233.i = ashr i32 %f.sroa.58.0, 1
  %151 = add i32 %shl230.i, %shr233.i
  %shr241940.i = lshr i32 %f.sroa.58.0, 1
  %add239.i = add i32 %shl230.i, %shr241940.i
  %152 = sub i32 0, %151
  %reg_289c.1.i.p = select i1 %cmp226.i, i32 %152, i32 %add239.i
  %reg_289c.1.i = add i32 %reg_289c.0.i, %reg_289c.1.i.p
  %add245.i = add nuw i32 %f.sroa.37.3, %src_major_uv.0.i
  %add246.i = add i32 %src_minor_y.0.i, -1
  %sub247.i = add i32 %add246.i, %add245.i
  %add250.i = add i32 %add245.i, %148
  %sub251.i = shl i32 %add250.i, 15
  %and252.i = add i32 %sub251.i, -32768
  %shl253.i = and i32 %and252.i, -65536
  %or254.i = or i32 %shl253.i, %sub247.i
  br i1 %cmp202.i, label %if.end199.i.if.end268.i_crit_edge, label %if.else259.i

if.end199.i.if.end268.i_crit_edge:                ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end268.i

if.else259.i:                                     ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl261.i = shl nuw i32 %f.sroa.77.3, 1
  %div263.i = udiv i32 %shl261.i, %f.sroa.37.3
  %add264.i = add nuw nsw i32 %div263.i, 2
  %shr265.i = lshr i32 %add264.i, 1
  %and266.i100 = and i32 %div263.i, 1
  %add267.i = add nuw nsw i32 %shr265.i, %and266.i100
  br label %if.end268.i

if.end268.i:                                      ; preds = %if.else259.i, %if.end199.i.if.end268.i_crit_edge
  %reg_2964.0.i = phi i32 [ %add267.i, %if.else259.i ], [ 1, %if.end199.i.if.end268.i_crit_edge ]
  %add270.i = mul i32 %reg_2964.0.i, 65537
  %shr271.i = lshr i32 %reg_2964.0.i, 1
  %add272.i = add i32 %add270.i, %shr271.i
  %mul275.i = mul i32 %reg_2964.0.i, 46
  %div276.i = udiv i32 %mul275.i, 94
  %add277.i = add i32 %div276.i, %add270.i
  %and278.i = and i32 %add277.i, 65535
  %shr279.i = lshr i32 %add277.i, 16
  %sub280.i = sub nsw i32 %and278.i, %shr279.i
  %add281.i = add nsw i32 %sub280.i, 65537
  %and282.i = and i32 %add272.i, 65535
  %shr283.i = lshr i32 %add272.i, 16
  %sub284.i = sub nsw i32 %and282.i, %shr283.i
  %add285.i = add nsw i32 %sub284.i, 65537
  call void @__sanitizer_cov_trace_cmp4(i32 %and278.i, i32 %shr279.i)
  %cmp286.not.i = icmp eq i32 %and278.i, %shr279.i
  br i1 %cmp286.not.i, label %if.end268.i.if.end297.i_crit_edge, label %land.lhs.true287.i

if.end268.i.if.end297.i_crit_edge:                ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end297.i

land.lhs.true287.i:                               ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div102932.i, i32 %f.sroa.37.3)
  %cmp291.not.i = icmp ugt i32 %div102932.i, %f.sroa.37.3
  br i1 %cmp291.not.i, label %land.lhs.true287.i.if.end297.i_crit_edge, label %if.then292.i

land.lhs.true287.i.if.end297.i_crit_edge:         ; preds = %land.lhs.true287.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end297.i

if.then292.i:                                     ; preds = %land.lhs.true287.i
  call void @__sanitizer_cov_trace_pc() #10
  %and293.i = and i32 %add281.i, -65536
  %and294.i = lshr i32 %add281.i, 1
  %div295935.i = and i32 %and294.i, 32767
  %add296.i = or i32 %div295935.i, %and293.i
  br label %if.end297.i

if.end297.i:                                      ; preds = %if.then292.i, %land.lhs.true287.i.if.end297.i_crit_edge, %if.end268.i.if.end297.i_crit_edge
  %reg_2964.1.i = phi i32 [ %add296.i, %if.then292.i ], [ %add281.i, %land.lhs.true287.i.if.end297.i_crit_edge ], [ 65537, %if.end268.i.if.end297.i_crit_edge ]
  %sub301.i = add nsw i32 %reg_2964.1.i, -65537
  %spec.select939.i = select i1 %tobool63.not.i, i32 %sub301.i, i32 %reg_2964.1.i
  %reg_2968.0.i = select i1 %tobool77.not.i, i32 %sub284.i, i32 %add285.i
  %shl308.i = shl i32 %reg_2964_base.2.i, 16
  %or309.i = or i32 %shl308.i, %reg_2964_base.2.i
  %add310.i = add i32 %spec.select939.i, %or309.i
  %or312.i = mul nuw i32 %reg_2968_base.0.i, 65537
  %add313.i = add i32 %reg_2968.0.i, %or312.i
  br i1 %cmp202.i, label %if.end297.i.do.body330.i_crit_edge, label %if.else318.i

if.end297.i.do.body330.i_crit_edge:               ; preds = %if.end297.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body330.i

if.else318.i:                                     ; preds = %if.end297.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl320.i = shl i32 %f.sroa.37.3, 16
  %div322.i = udiv i32 %shl320.i, %f.sroa.77.3
  %shr323.i = lshr i32 %div322.i, 15
  %153 = lshr i32 %div322.i, 16
  %and325.i = and i32 %shr323.i, 1
  %add326.i = add nuw nsw i32 %and325.i, %153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add326.i)
  %tobool327.not.i = icmp eq i32 %add326.i, 0
  %lnot.ext.i101 = zext i1 %tobool327.not.i to i32
  %add328.i = add nuw nsw i32 %add326.i, %lnot.ext.i101
  br label %do.body330.i

do.body330.i:                                     ; preds = %if.else318.i, %if.end297.i.do.body330.i_crit_edge
  %v_filter_1.0.i = phi i32 [ %add328.i, %if.else318.i ], [ 0, %if.end297.i.do.body330.i_crit_edge ]
  %v_filter_2.0.i = phi i32 [ %add328.i, %if.else318.i ], [ 1, %if.end297.i.do.body330.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %154 = tail call i32 @llvm.bswap.i32(i32 %.938.i) #8
  %155 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %reg_mem27, align 8
  %add.ptr.i103 = getelementptr i8, ptr %156, i32 10548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %154) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  tail call void @arm_heavy_mb() #8
  %157 = tail call i32 @llvm.bswap.i32(i32 %.937.i) #8
  %158 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %reg_mem27, align 8
  %add.ptr337.i = getelementptr i8, ptr %159, i32 10556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr337.i, i32 %157) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %160 = load i32, ptr @ivtv_debug, align 4
  %and339.i = and i32 %160, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and339.i)
  %tobool340.not.i = icmp eq i32 %and339.i, 0
  br i1 %tobool340.not.i, label %do.body330.i.do.body355.i_crit_edge, label %do.end344.i

do.body330.i.do.body355.i_crit_edge:              ; preds = %do.body330.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355.i

do.end344.i:                                      ; preds = %do.body330.i
  call void @__sanitizer_cov_trace_pc() #10
  %name347.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2934349.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 21
  %161 = ptrtoint ptr %reg_2934349.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %reg_2934349.i, align 4
  %reg_293c350.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 23
  %163 = ptrtoint ptr %reg_293c350.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %reg_293c350.i, align 4
  %call351.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name347.i, i32 noundef %162, i32 noundef %.938.i, i32 noundef %164, i32 noundef %.937.i) #11
  br label %do.body355.i

do.body355.i:                                     ; preds = %do.end344.i, %do.body330.i.do.body355.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  tail call void @arm_heavy_mb() #8
  %165 = tail call i32 @llvm.bswap.i32(i32 %.936.i) #8
  %166 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %reg_mem27, align 8
  %add.ptr359.i = getelementptr i8, ptr %167, i32 10564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr359.i, i32 %165) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  tail call void @arm_heavy_mb() #8
  %168 = tail call i32 @llvm.bswap.i32(i32 %..i99) #8
  %169 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %reg_mem27, align 8
  %add.ptr364.i = getelementptr i8, ptr %170, i32 10572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr364.i, i32 %168) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %171 = load i32, ptr @ivtv_debug, align 4
  %and366.i = and i32 %171, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and366.i)
  %tobool367.not.i = icmp eq i32 %and366.i, 0
  br i1 %tobool367.not.i, label %do.body355.i.do.body382.i_crit_edge, label %do.end371.i

do.body355.i.do.body382.i_crit_edge:              ; preds = %do.body355.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body382.i

do.end371.i:                                      ; preds = %do.body355.i
  call void @__sanitizer_cov_trace_pc() #10
  %name374.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2944376.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 25
  %172 = ptrtoint ptr %reg_2944376.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %reg_2944376.i, align 4
  %reg_294c377.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 27
  %174 = ptrtoint ptr %reg_294c377.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %reg_294c377.i, align 4
  %call378.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name374.i, i32 noundef %173, i32 noundef %.936.i, i32 noundef %175, i32 noundef %..i99) #11
  br label %do.body382.i

do.body382.i:                                     ; preds = %do.end371.i, %do.body355.i.do.body382.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  tail call void @arm_heavy_mb() #8
  %176 = tail call i32 @llvm.bswap.i32(i32 %reg_2930.0.i) #8
  %177 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %reg_mem27, align 8
  %add.ptr386.i = getelementptr i8, ptr %178, i32 10552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr386.i, i32 %176) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %179 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %reg_mem27, align 8
  %add.ptr391.i = getelementptr i8, ptr %180, i32 10544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr391.i, i32 %176) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %181 = load i32, ptr @ivtv_debug, align 4
  %and393.i = and i32 %181, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and393.i)
  %tobool394.not.i = icmp eq i32 %and393.i, 0
  br i1 %tobool394.not.i, label %do.body382.i.do.body408.i_crit_edge, label %do.end398.i

do.body382.i.do.body408.i_crit_edge:              ; preds = %do.body382.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body408.i

do.end398.i:                                      ; preds = %do.body382.i
  call void @__sanitizer_cov_trace_pc() #10
  %name401.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2930403.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 20
  %182 = ptrtoint ptr %reg_2930403.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %reg_2930403.i, align 4
  %reg_2938.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 22
  %184 = ptrtoint ptr %reg_2938.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %reg_2938.i, align 4
  %call404.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name401.i, i32 noundef %183, i32 noundef %reg_2930.0.i, i32 noundef %185, i32 noundef %reg_2930.0.i) #11
  br label %do.body408.i

do.body408.i:                                     ; preds = %do.end398.i, %do.body382.i.do.body408.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @arm_heavy_mb() #8
  %186 = tail call i32 @llvm.bswap.i32(i32 %reg_2928.2.i) #8
  %187 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %reg_mem27, align 8
  %add.ptr412.i = getelementptr i8, ptr %188, i32 10536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr412.i, i32 %186) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void @arm_heavy_mb() #8
  %add416.i = add nuw nsw i32 %reg_2928.2.i, 1300
  %189 = tail call i32 @llvm.bswap.i32(i32 %add416.i) #8
  %190 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %reg_mem27, align 8
  %add.ptr418.i = getelementptr i8, ptr %191, i32 10540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr418.i, i32 %189) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %192 = load i32, ptr @ivtv_debug, align 4
  %and420.i = and i32 %192, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and420.i)
  %tobool421.not.i = icmp eq i32 %and420.i, 0
  br i1 %tobool421.not.i, label %do.body408.i.do.body436.i_crit_edge, label %do.end425.i

do.body408.i.do.body436.i_crit_edge:              ; preds = %do.body408.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body436.i

do.end425.i:                                      ; preds = %do.body408.i
  call void @__sanitizer_cov_trace_pc() #10
  %name428.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2928430.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 18
  %193 = ptrtoint ptr %reg_2928430.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %reg_2928430.i, align 4
  %reg_292c.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 19
  %195 = ptrtoint ptr %reg_292c.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %reg_292c.i, align 4
  %call432.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name428.i, i32 noundef %194, i32 noundef %reg_2928.2.i, i32 noundef %196, i32 noundef %add416.i) #11
  br label %do.body436.i

do.body436.i:                                     ; preds = %do.end425.i, %do.body408.i.do.body436.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @arm_heavy_mb() #8
  %197 = tail call i32 @llvm.bswap.i32(i32 %reg_2920.0.i) #8
  %198 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %reg_mem27, align 8
  %add.ptr440.i = getelementptr i8, ptr %199, i32 10528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr440.i, i32 %197) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  tail call void @arm_heavy_mb() #8
  %add444.i = add nuw nsw i32 %reg_2920.0.i, 1300
  %200 = tail call i32 @llvm.bswap.i32(i32 %add444.i) #8
  %201 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %reg_mem27, align 8
  %add.ptr446.i = getelementptr i8, ptr %202, i32 10532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr446.i, i32 %200) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %203 = load i32, ptr @ivtv_debug, align 4
  %and448.i = and i32 %203, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and448.i)
  %tobool449.not.i = icmp eq i32 %and448.i, 0
  br i1 %tobool449.not.i, label %do.body436.i.do.body464.i_crit_edge, label %do.end453.i

do.body436.i.do.body464.i_crit_edge:              ; preds = %do.body436.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body464.i

do.end453.i:                                      ; preds = %do.body436.i
  call void @__sanitizer_cov_trace_pc() #10
  %name456.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2920458.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 16
  %204 = ptrtoint ptr %reg_2920458.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %reg_2920458.i, align 4
  %reg_2924.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 17
  %206 = ptrtoint ptr %reg_2924.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %reg_2924.i, align 4
  %call460.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name456.i, i32 noundef %205, i32 noundef %reg_2920.0.i, i32 noundef %207, i32 noundef %add444.i) #11
  br label %do.body464.i

do.body464.i:                                     ; preds = %do.end453.i, %do.body436.i.do.body464.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @arm_heavy_mb() #8
  %208 = tail call i32 @llvm.bswap.i32(i32 %or74.i) #8
  %209 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %reg_mem27, align 8
  %add.ptr468.i = getelementptr i8, ptr %210, i32 10520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr468.i, i32 %208) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %211 = tail call i32 @llvm.bswap.i32(i32 %or89.i) #8
  %212 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %reg_mem27, align 8
  %add.ptr473.i = getelementptr i8, ptr %213, i32 10524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr473.i, i32 %211) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %214 = load i32, ptr @ivtv_debug, align 4
  %and475.i = and i32 %214, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and475.i)
  %tobool476.not.i = icmp eq i32 %and475.i, 0
  br i1 %tobool476.not.i, label %do.body464.i.do.body491.i_crit_edge, label %do.end480.i

do.body464.i.do.body491.i_crit_edge:              ; preds = %do.body464.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body491.i

do.end480.i:                                      ; preds = %do.body464.i
  call void @__sanitizer_cov_trace_pc() #10
  %name483.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2918485.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 14
  %215 = ptrtoint ptr %reg_2918485.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %reg_2918485.i, align 4
  %reg_291c486.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 15
  %217 = ptrtoint ptr %reg_291c486.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %reg_291c486.i, align 4
  %call487.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name483.i, i32 noundef %216, i32 noundef %or74.i, i32 noundef %218, i32 noundef %or89.i) #11
  br label %do.body491.i

do.body491.i:                                     ; preds = %do.end480.i, %do.body464.i.do.body491.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %219 = tail call i32 @llvm.bswap.i32(i32 %reg_296c.2.i) #8
  %220 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %reg_mem27, align 8
  %add.ptr495.i = getelementptr i8, ptr %221, i32 10604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr495.i, i32 %219) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %222 = load i32, ptr @ivtv_debug, align 4
  %and497.i = and i32 %222, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and497.i)
  %tobool498.not.i = icmp eq i32 %and497.i, 0
  br i1 %tobool498.not.i, label %do.body491.i.do.body512.i_crit_edge, label %do.end502.i

do.body491.i.do.body512.i_crit_edge:              ; preds = %do.body491.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body512.i

do.end502.i:                                      ; preds = %do.body491.i
  call void @__sanitizer_cov_trace_pc() #10
  %name505.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_296c507.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 35
  %223 = ptrtoint ptr %reg_296c507.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %reg_296c507.i, align 4
  %call508.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name505.i, i32 noundef %224, i32 noundef %reg_296c.2.i) #11
  br label %do.body512.i

do.body512.i:                                     ; preds = %do.end502.i, %do.body491.i.do.body512.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %225 = tail call i32 @llvm.bswap.i32(i32 %reg_2940.0.i) #8
  %226 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %reg_mem27, align 8
  %add.ptr516.i = getelementptr i8, ptr %227, i32 10568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr516.i, i32 %225) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  tail call void @arm_heavy_mb() #8
  %228 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %reg_mem27, align 8
  %add.ptr521.i = getelementptr i8, ptr %229, i32 10560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr521.i, i32 %225) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %230 = load i32, ptr @ivtv_debug, align 4
  %and523.i = and i32 %230, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and523.i)
  %tobool524.not.i = icmp eq i32 %and523.i, 0
  br i1 %tobool524.not.i, label %do.body512.i.do.body538.i_crit_edge, label %do.end528.i

do.body512.i.do.body538.i_crit_edge:              ; preds = %do.body512.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body538.i

do.end528.i:                                      ; preds = %do.body512.i
  call void @__sanitizer_cov_trace_pc() #10
  %name531.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2940533.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 24
  %231 = ptrtoint ptr %reg_2940533.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %reg_2940533.i, align 4
  %reg_2948.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 26
  %233 = ptrtoint ptr %reg_2948.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %reg_2948.i, align 4
  %call534.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name531.i, i32 noundef %232, i32 noundef %reg_2940.0.i, i32 noundef %234, i32 noundef %reg_2940.0.i) #11
  br label %do.body538.i

do.body538.i:                                     ; preds = %do.end528.i, %do.body512.i.do.body538.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !226
  tail call void @arm_heavy_mb() #8
  %235 = tail call i32 @llvm.bswap.i32(i32 %reg_2950.0.i) #8
  %236 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %reg_mem27, align 8
  %add.ptr542.i = getelementptr i8, ptr %237, i32 10576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr542.i, i32 %235) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @arm_heavy_mb() #8
  %238 = tail call i32 @llvm.bswap.i32(i32 %add212.i) #8
  %239 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %reg_mem27, align 8
  %add.ptr547.i = getelementptr i8, ptr %240, i32 10580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr547.i, i32 %238) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %241 = load i32, ptr @ivtv_debug, align 4
  %and549.i = and i32 %241, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and549.i)
  %tobool550.not.i = icmp eq i32 %and549.i, 0
  br i1 %tobool550.not.i, label %do.body538.i.do.body565.i_crit_edge, label %do.end554.i

do.body538.i.do.body565.i_crit_edge:              ; preds = %do.body538.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body565.i

do.end554.i:                                      ; preds = %do.body538.i
  call void @__sanitizer_cov_trace_pc() #10
  %name557.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2950559.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 28
  %242 = ptrtoint ptr %reg_2950559.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %reg_2950559.i, align 4
  %reg_2954560.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 29
  %244 = ptrtoint ptr %reg_2954560.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %reg_2954560.i, align 4
  %call561.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name557.i, i32 noundef %243, i32 noundef %reg_2950.0.i, i32 noundef %245, i32 noundef %add212.i) #11
  br label %do.body565.i

do.body565.i:                                     ; preds = %do.end554.i, %do.body538.i.do.body565.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %246 = tail call i32 @llvm.bswap.i32(i32 %reg_2958.0.i) #8
  %247 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %reg_mem27, align 8
  %add.ptr569.i = getelementptr i8, ptr %248, i32 10584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr569.i, i32 %246) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %249 = tail call i32 @llvm.bswap.i32(i32 %add220.i) #8
  %250 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %reg_mem27, align 8
  %add.ptr574.i = getelementptr i8, ptr %251, i32 10588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr574.i, i32 %249) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %252 = load i32, ptr @ivtv_debug, align 4
  %and576.i = and i32 %252, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and576.i)
  %tobool577.not.i = icmp eq i32 %and576.i, 0
  br i1 %tobool577.not.i, label %do.body565.i.do.body592.i_crit_edge, label %do.end581.i

do.body565.i.do.body592.i_crit_edge:              ; preds = %do.body565.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body592.i

do.end581.i:                                      ; preds = %do.body565.i
  call void @__sanitizer_cov_trace_pc() #10
  %name584.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2958586.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 30
  %253 = ptrtoint ptr %reg_2958586.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %reg_2958586.i, align 4
  %reg_295c587.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 31
  %255 = ptrtoint ptr %reg_295c587.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %reg_295c587.i, align 4
  %call588.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name584.i, i32 noundef %254, i32 noundef %reg_2958.0.i, i32 noundef %256, i32 noundef %add220.i) #11
  br label %do.body592.i

do.body592.i:                                     ; preds = %do.end581.i, %do.body565.i.do.body592.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  tail call void @arm_heavy_mb() #8
  %257 = tail call i32 @llvm.bswap.i32(i32 %or254.i) #8
  %258 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %reg_mem27, align 8
  %add.ptr596.i = getelementptr i8, ptr %259, i32 10592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr596.i, i32 %257) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %260 = load i32, ptr @ivtv_debug, align 4
  %and598.i = and i32 %260, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and598.i)
  %tobool599.not.i = icmp eq i32 %and598.i, 0
  br i1 %tobool599.not.i, label %do.body592.i.do.body613.i_crit_edge, label %do.end603.i

do.body592.i.do.body613.i_crit_edge:              ; preds = %do.body592.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body613.i

do.end603.i:                                      ; preds = %do.body592.i
  call void @__sanitizer_cov_trace_pc() #10
  %name606.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2960608.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 32
  %261 = ptrtoint ptr %reg_2960608.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %reg_2960608.i, align 4
  %call609.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name606.i, i32 noundef %262, i32 noundef %or254.i) #11
  br label %do.body613.i

do.body613.i:                                     ; preds = %do.end603.i, %do.body592.i.do.body613.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  tail call void @arm_heavy_mb() #8
  %263 = tail call i32 @llvm.bswap.i32(i32 %add310.i) #8
  %264 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %reg_mem27, align 8
  %add.ptr617.i = getelementptr i8, ptr %265, i32 10596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr617.i, i32 %263) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  tail call void @arm_heavy_mb() #8
  %266 = tail call i32 @llvm.bswap.i32(i32 %add313.i) #8
  %267 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %reg_mem27, align 8
  %add.ptr622.i = getelementptr i8, ptr %268, i32 10600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr622.i, i32 %266) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %269 = load i32, ptr @ivtv_debug, align 4
  %and624.i = and i32 %269, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and624.i)
  %tobool625.not.i = icmp eq i32 %and624.i, 0
  br i1 %tobool625.not.i, label %do.body613.i.do.body640.i_crit_edge, label %do.end629.i

do.body613.i.do.body640.i_crit_edge:              ; preds = %do.body613.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body640.i

do.end629.i:                                      ; preds = %do.body613.i
  call void @__sanitizer_cov_trace_pc() #10
  %name632.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_2964634.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 33
  %270 = ptrtoint ptr %reg_2964634.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %reg_2964634.i, align 4
  %reg_2968635.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 34
  %272 = ptrtoint ptr %reg_2968635.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %reg_2968635.i, align 4
  %call636.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name632.i, i32 noundef %271, i32 noundef %add310.i, i32 noundef %273, i32 noundef %add313.i) #11
  br label %do.body640.i

do.body640.i:                                     ; preds = %do.end629.i, %do.body613.i.do.body640.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  tail call void @arm_heavy_mb() #8
  %274 = tail call i32 @llvm.bswap.i32(i32 %reg_289c.1.i) #8
  %275 = ptrtoint ptr %reg_mem27 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %reg_mem27, align 8
  %add.ptr644.i = getelementptr i8, ptr %276, i32 10396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr644.i, i32 %274) #8, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %277 = load i32, ptr @ivtv_debug, align 4
  %and646.i = and i32 %277, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and646.i)
  %tobool647.not.i = icmp eq i32 %and646.i, 0
  br i1 %tobool647.not.i, label %do.body640.i.do.end660.i_crit_edge, label %do.end651.i

do.body640.i.do.end660.i_crit_edge:               ; preds = %do.body640.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end660.i

do.end651.i:                                      ; preds = %do.body640.i
  call void @__sanitizer_cov_trace_pc() #10
  %name654.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_289c656.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 13
  %278 = ptrtoint ptr %reg_289c656.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %reg_289c656.i, align 4
  %call657.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name654.i, i32 noundef %279, i32 noundef %reg_289c.1.i) #11
  br label %do.end660.i

do.end660.i:                                      ; preds = %do.end651.i, %do.body640.i.do.end660.i_crit_edge
  %v_filter_1661.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 37
  %280 = ptrtoint ptr %v_filter_1661.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %v_filter_1661.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %v_filter_1.0.i, i32 %281)
  %cmp662.not.i = icmp eq i32 %v_filter_1.0.i, %281
  br i1 %cmp662.not.i, label %do.end660.i.if.end665.i_crit_edge, label %if.then663.i

do.end660.i.if.end665.i_crit_edge:                ; preds = %do.end660.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end665.i

if.then663.i:                                     ; preds = %do.end660.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ivtv_yuv_filter(ptr noundef %itv, i32 noundef -1, i32 noundef %v_filter_1.0.i, i32 noundef -1) #8
  %282 = ptrtoint ptr %v_filter_1661.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %v_filter_1.0.i, ptr %v_filter_1661.i, align 4
  br label %if.end665.i

if.end665.i:                                      ; preds = %if.then663.i, %do.end660.i.if.end665.i_crit_edge
  %v_filter_2666.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 38
  %283 = ptrtoint ptr %v_filter_2666.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %v_filter_2666.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %v_filter_2.0.i, i32 %284)
  %cmp667.not.i = icmp eq i32 %v_filter_2.0.i, %284
  br i1 %cmp667.not.i, label %if.end665.i.if.end38_crit_edge, label %if.then668.i

if.end665.i.if.end38_crit_edge:                   ; preds = %if.end665.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then668.i:                                     ; preds = %if.end665.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ivtv_yuv_filter(ptr noundef %itv, i32 noundef -1, i32 noundef -1, i32 noundef %v_filter_2.0.i) #8
  %285 = ptrtoint ptr %v_filter_2666.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %v_filter_2.0.i, ptr %v_filter_2666.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then668.i, %if.end665.i.if.end38_crit_edge, %if.end32.if.end38_crit_edge, %do.body18
  %f.sroa.5.3255290 = phi i32 [ %and144.i, %if.end32.if.end38_crit_edge ], [ %f.sroa.5.3.ph304, %do.body18 ], [ %and144.i, %if.end665.i.if.end38_crit_edge ], [ %and144.i, %if.then668.i ]
  %f.sroa.15.3256288 = phi i32 [ %and158.i, %if.end32.if.end38_crit_edge ], [ %f.sroa.15.3.ph305, %do.body18 ], [ %and158.i, %if.end665.i.if.end38_crit_edge ], [ %and158.i, %if.then668.i ]
  %f.sroa.25.4257286 = phi i32 [ %f.sroa.25.3, %if.end32.if.end38_crit_edge ], [ %f.sroa.25.4.ph306, %do.body18 ], [ %f.sroa.25.3, %if.end665.i.if.end38_crit_edge ], [ %f.sroa.25.3, %if.then668.i ]
  %f.sroa.37.4258284 = phi i32 [ %f.sroa.37.3, %if.end32.if.end38_crit_edge ], [ %f.sroa.37.4.ph307, %do.body18 ], [ %f.sroa.37.3, %if.end665.i.if.end38_crit_edge ], [ %f.sroa.37.3, %if.then668.i ]
  %f.sroa.51.1259282 = phi i32 [ %and138.i, %if.end32.if.end38_crit_edge ], [ %f.sroa.51.1.ph308, %do.body18 ], [ %and138.i, %if.end665.i.if.end38_crit_edge ], [ %and138.i, %if.then668.i ]
  %f.sroa.58.1260280 = phi i32 [ %and152.i, %if.end32.if.end38_crit_edge ], [ %f.sroa.58.1.ph309, %do.body18 ], [ %and152.i, %if.end665.i.if.end38_crit_edge ], [ %and152.i, %if.then668.i ]
  %f.sroa.65.4261278 = phi i32 [ %f.sroa.65.3, %if.end32.if.end38_crit_edge ], [ %f.sroa.65.4.ph310, %do.body18 ], [ %f.sroa.65.3, %if.end665.i.if.end38_crit_edge ], [ %f.sroa.65.3, %if.then668.i ]
  %f.sroa.77.4262276 = phi i32 [ %f.sroa.77.3, %if.end32.if.end38_crit_edge ], [ %f.sroa.77.4.ph311, %do.body18 ], [ %f.sroa.77.3, %if.end665.i.if.end38_crit_edge ], [ %f.sroa.77.3, %if.then668.i ]
  %old_frame_info = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59
  %286 = ptrtoint ptr %old_frame_info to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %f.sroa.0.0.copyload, ptr %old_frame_info, align 4
  %f.sroa.5.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 1
  %287 = ptrtoint ptr %f.sroa.5.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %f.sroa.5.3255290, ptr %f.sroa.5.0.old_frame_info.sroa_idx, align 4
  %f.sroa.15.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 2
  %288 = ptrtoint ptr %f.sroa.15.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %f.sroa.15.3256288, ptr %f.sroa.15.0.old_frame_info.sroa_idx, align 4
  %f.sroa.25.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 3
  %289 = ptrtoint ptr %f.sroa.25.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %f.sroa.25.4257286, ptr %f.sroa.25.0.old_frame_info.sroa_idx, align 4
  %f.sroa.37.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 4
  %290 = ptrtoint ptr %f.sroa.37.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %f.sroa.37.4258284, ptr %f.sroa.37.0.old_frame_info.sroa_idx, align 4
  %f.sroa.51.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 5
  %291 = ptrtoint ptr %f.sroa.51.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %f.sroa.51.1259282, ptr %f.sroa.51.0.old_frame_info.sroa_idx, align 4
  %f.sroa.58.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 6
  %292 = ptrtoint ptr %f.sroa.58.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %f.sroa.58.1260280, ptr %f.sroa.58.0.old_frame_info.sroa_idx, align 4
  %f.sroa.65.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 7
  %293 = ptrtoint ptr %f.sroa.65.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %f.sroa.65.4261278, ptr %f.sroa.65.0.old_frame_info.sroa_idx, align 4
  %f.sroa.77.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 8
  %294 = ptrtoint ptr %f.sroa.77.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %f.sroa.77.4262276, ptr %f.sroa.77.0.old_frame_info.sroa_idx, align 4
  %f.sroa.91.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 9
  %295 = ptrtoint ptr %f.sroa.91.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %f.sroa.91.0, ptr %f.sroa.91.0.old_frame_info.sroa_idx, align 4
  %f.sroa.95.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 10
  %296 = ptrtoint ptr %f.sroa.95.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %f.sroa.95.0, ptr %f.sroa.95.0.old_frame_info.sroa_idx, align 4
  %f.sroa.98.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 11
  %297 = ptrtoint ptr %f.sroa.98.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %f.sroa.98.0, ptr %f.sroa.98.0.old_frame_info.sroa_idx, align 4
  %f.sroa.102.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 12
  %298 = ptrtoint ptr %f.sroa.102.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %f.sroa.102.0, ptr %f.sroa.102.0.old_frame_info.sroa_idx, align 4
  %f.sroa.105.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 13
  %299 = ptrtoint ptr %f.sroa.105.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %f.sroa.105.0, ptr %f.sroa.105.0.old_frame_info.sroa_idx, align 4
  %f.sroa.109.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 14
  %300 = ptrtoint ptr %f.sroa.109.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %f.sroa.109.0.copyload, ptr %f.sroa.109.0.old_frame_info.sroa_idx, align 4
  %f.sroa.112.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 15
  %301 = ptrtoint ptr %f.sroa.112.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %f.sroa.112.0.copyload, ptr %f.sroa.112.0.old_frame_info.sroa_idx, align 4
  %f.sroa.113.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 16
  %302 = ptrtoint ptr %f.sroa.113.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %f.sroa.113.0.copyload, ptr %f.sroa.113.0.old_frame_info.sroa_idx, align 4
  %f.sroa.114.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 17
  %303 = ptrtoint ptr %f.sroa.114.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %f.sroa.114.0.copyload, ptr %f.sroa.114.0.old_frame_info.sroa_idx, align 4
  %f.sroa.115.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 18
  %304 = ptrtoint ptr %f.sroa.115.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %f.sroa.115.0.copyload, ptr %f.sroa.115.0.old_frame_info.sroa_idx, align 4
  %f.sroa.116.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 19
  %305 = ptrtoint ptr %f.sroa.116.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %f.sroa.116.0.copyload, ptr %f.sroa.116.0.old_frame_info.sroa_idx, align 4
  %f.sroa.117.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 20
  %306 = ptrtoint ptr %f.sroa.117.0.old_frame_info.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %306, i32 8)
  store i64 %20, ptr %f.sroa.117.0.old_frame_info.sroa_idx, align 4
  %f.sroa.117174.0.old_frame_info.sroa_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 22
  %307 = ptrtoint ptr %f.sroa.117174.0.old_frame_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %f.sroa.117174.0.copyload, ptr %f.sroa.117174.0.old_frame_info.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %lor.lhs.false261.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_yuv_frame_complete(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %next_fill_frame = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 54
  %draw_frame = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 64
  %0 = ptrtoint ptr %draw_frame to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %draw_frame, align 4
  %2 = add i8 %1, 1
  %3 = and i8 %2, 7
  %rem = zext i8 %3 to i32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_fill_frame, i32 noundef 4) #8
  %4 = ptrtoint ptr %next_fill_frame to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %rem, ptr %next_fill_frame, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_yuv_setup_stream_frame(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  %dma_args = alloca %struct.ivtv_dma_frame, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dma_args) #8
  %0 = ptrtoint ptr %dma_args to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %dma_args, align 8, !annotation !234
  tail call fastcc void @ivtv_yuv_next_free(ptr noundef %itv)
  %y_source = getelementptr inbounds %struct.ivtv_dma_frame, ptr %dma_args, i32 0, i32 2
  %v4l2_src_w = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 67
  %1 = call ptr @memset(ptr %y_source, i32 0, i32 16)
  %2 = ptrtoint ptr %v4l2_src_w to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v4l2_src_w, align 4
  %width = getelementptr inbounds %struct.ivtv_dma_frame, ptr %dma_args, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %width, align 8
  %v4l2_src_h = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 68
  %5 = ptrtoint ptr %v4l2_src_h to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %v4l2_src_h, align 4
  %height = getelementptr inbounds %struct.ivtv_dma_frame, ptr %dma_args, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height, align 4
  %dst = getelementptr inbounds %struct.ivtv_dma_frame, ptr %dma_args, i32 0, i32 5
  %main_rect = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 66
  %8 = call ptr @memcpy(ptr %dst, ptr %main_rect, i32 16)
  %src_width = getelementptr inbounds %struct.ivtv_dma_frame, ptr %dma_args, i32 0, i32 6
  %9 = ptrtoint ptr %src_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %src_width, align 8
  %src_height = getelementptr inbounds %struct.ivtv_dma_frame, ptr %dma_args, i32 0, i32 7
  %10 = ptrtoint ptr %src_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %src_height, align 4
  call fastcc void @ivtv_yuv_setup_frame(ptr noundef %itv, ptr noundef nonnull %dma_args)
  %dma_data_req_offset = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 56
  %11 = ptrtoint ptr %dma_data_req_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_data_req_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %draw_frame = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 64
  %13 = ptrtoint ptr %draw_frame to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %draw_frame, align 4
  %idxprom = zext i8 %14 to i32
  %arrayidx = getelementptr [8 x i32], ptr @yuv_offset, i32 0, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %dma_data_req_offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dma_data_req_offset, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dma_args) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ivtv_yuv_next_free(ptr noundef %itv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %next_dma_frame = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 53
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_dma_frame, i32 noundef 4) #8
  %0 = ptrtoint ptr %next_dma_frame to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %next_dma_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %yuv_info.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %2 = load i32, ptr @ivtv_debug, align 4
  %and.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.do.end3.i_crit_edge, label %do.end.i

if.then.do.end3.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name.i) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then.do.end3.i_crit_edge
  %reg_mem.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %3 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 10292
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !193
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  %7 = ptrtoint ptr %yuv_info.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %yuv_info.i, align 4
  %8 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %9, i32 10296
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !193
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !236
  %reg_2838.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 1
  %12 = ptrtoint ptr %reg_2838.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %reg_2838.i, align 4
  %13 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr17.i = getelementptr i8, ptr %14, i32 10300
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #8, !srcloc !193
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  %reg_283c.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 2
  %17 = ptrtoint ptr %reg_283c.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %reg_283c.i, align 4
  %18 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr24.i = getelementptr i8, ptr %19, i32 10304
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #8, !srcloc !193
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  %reg_2840.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 3
  %22 = ptrtoint ptr %reg_2840.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %reg_2840.i, align 4
  %23 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr31.i = getelementptr i8, ptr %24, i32 10308
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #8, !srcloc !193
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  %reg_2844.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 4
  %27 = ptrtoint ptr %reg_2844.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %reg_2844.i, align 4
  %28 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr38.i = getelementptr i8, ptr %29, i32 10312
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #8, !srcloc !193
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  %reg_2848.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 5
  %32 = ptrtoint ptr %reg_2848.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %reg_2848.i, align 4
  %33 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr45.i = getelementptr i8, ptr %34, i32 10324
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #8, !srcloc !193
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  %reg_2854.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 6
  %37 = ptrtoint ptr %reg_2854.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %reg_2854.i, align 4
  %38 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr52.i = getelementptr i8, ptr %39, i32 10332
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i) #8, !srcloc !193
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  %reg_285c.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 7
  %42 = ptrtoint ptr %reg_285c.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %reg_285c.i, align 4
  %43 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr59.i = getelementptr i8, ptr %44, i32 10340
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #8, !srcloc !193
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !243
  %reg_2864.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 8
  %47 = ptrtoint ptr %reg_2864.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %reg_2864.i, align 4
  %48 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr66.i = getelementptr i8, ptr %49, i32 10352
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66.i) #8, !srcloc !193
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %reg_2870.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 9
  %52 = ptrtoint ptr %reg_2870.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %reg_2870.i, align 4
  %53 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr73.i = getelementptr i8, ptr %54, i32 10356
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.i) #8, !srcloc !193
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  %reg_2874.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 10
  %57 = ptrtoint ptr %reg_2874.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %reg_2874.i, align 4
  %58 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr80.i = getelementptr i8, ptr %59, i32 10392
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80.i) #8, !srcloc !193
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !246
  %reg_2898.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 12
  %62 = ptrtoint ptr %reg_2898.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %reg_2898.i, align 4
  %63 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr87.i = getelementptr i8, ptr %64, i32 10384
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87.i) #8, !srcloc !193
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  %reg_2890.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 11
  %67 = ptrtoint ptr %reg_2890.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %reg_2890.i, align 4
  %68 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr94.i = getelementptr i8, ptr %69, i32 10396
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94.i) #8, !srcloc !193
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !248
  %reg_289c.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 13
  %72 = ptrtoint ptr %reg_289c.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %reg_289c.i, align 4
  %73 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr101.i = getelementptr i8, ptr %74, i32 10520
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.i) #8, !srcloc !193
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  %reg_2918.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 14
  %77 = ptrtoint ptr %reg_2918.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %reg_2918.i, align 4
  %78 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr108.i = getelementptr i8, ptr %79, i32 10524
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108.i) #8, !srcloc !193
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  %reg_291c.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 15
  %82 = ptrtoint ptr %reg_291c.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %reg_291c.i, align 4
  %83 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr115.i = getelementptr i8, ptr %84, i32 10528
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115.i) #8, !srcloc !193
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  %reg_2920.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 16
  %87 = ptrtoint ptr %reg_2920.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %reg_2920.i, align 4
  %88 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr122.i = getelementptr i8, ptr %89, i32 10532
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr122.i) #8, !srcloc !193
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  %reg_2924.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 17
  %92 = ptrtoint ptr %reg_2924.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %reg_2924.i, align 4
  %93 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr129.i = getelementptr i8, ptr %94, i32 10536
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129.i) #8, !srcloc !193
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  %reg_2928.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 18
  %97 = ptrtoint ptr %reg_2928.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %reg_2928.i, align 4
  %98 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr136.i = getelementptr i8, ptr %99, i32 10540
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136.i) #8, !srcloc !193
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  %reg_292c.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 19
  %102 = ptrtoint ptr %reg_292c.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %reg_292c.i, align 4
  %103 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr143.i = getelementptr i8, ptr %104, i32 10544
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143.i) #8, !srcloc !193
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %reg_2930.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 20
  %107 = ptrtoint ptr %reg_2930.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %reg_2930.i, align 4
  %108 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr150.i = getelementptr i8, ptr %109, i32 10548
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150.i) #8, !srcloc !193
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !256
  %reg_2934.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 21
  %112 = ptrtoint ptr %reg_2934.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %reg_2934.i, align 4
  %113 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr157.i = getelementptr i8, ptr %114, i32 10552
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157.i) #8, !srcloc !193
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  %reg_2938.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 22
  %117 = ptrtoint ptr %reg_2938.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %reg_2938.i, align 4
  %118 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr164.i = getelementptr i8, ptr %119, i32 10556
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr164.i) #8, !srcloc !193
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  %reg_293c.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 23
  %122 = ptrtoint ptr %reg_293c.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %reg_293c.i, align 4
  %123 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr171.i = getelementptr i8, ptr %124, i32 10560
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr171.i) #8, !srcloc !193
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %reg_2940.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 24
  %127 = ptrtoint ptr %reg_2940.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %reg_2940.i, align 4
  %128 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr178.i = getelementptr i8, ptr %129, i32 10564
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr178.i) #8, !srcloc !193
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %reg_2944.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 25
  %132 = ptrtoint ptr %reg_2944.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %reg_2944.i, align 4
  %133 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr185.i = getelementptr i8, ptr %134, i32 10568
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr185.i) #8, !srcloc !193
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %reg_2948.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 26
  %137 = ptrtoint ptr %reg_2948.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %reg_2948.i, align 4
  %138 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr192.i = getelementptr i8, ptr %139, i32 10572
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr192.i) #8, !srcloc !193
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  %reg_294c.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 27
  %142 = ptrtoint ptr %reg_294c.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %reg_294c.i, align 4
  %143 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr199.i = getelementptr i8, ptr %144, i32 10576
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr199.i) #8, !srcloc !193
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  %reg_2950.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 28
  %147 = ptrtoint ptr %reg_2950.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %reg_2950.i, align 4
  %148 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr206.i = getelementptr i8, ptr %149, i32 10580
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr206.i) #8, !srcloc !193
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !264
  %reg_2954.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 29
  %152 = ptrtoint ptr %reg_2954.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %reg_2954.i, align 4
  %153 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr213.i = getelementptr i8, ptr %154, i32 10584
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr213.i) #8, !srcloc !193
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !265
  %reg_2958.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 30
  %157 = ptrtoint ptr %reg_2958.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %reg_2958.i, align 4
  %158 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr220.i = getelementptr i8, ptr %159, i32 10588
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr220.i) #8, !srcloc !193
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !266
  %reg_295c.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 31
  %162 = ptrtoint ptr %reg_295c.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %reg_295c.i, align 4
  %163 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr227.i = getelementptr i8, ptr %164, i32 10592
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr227.i) #8, !srcloc !193
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !267
  %reg_2960.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 32
  %167 = ptrtoint ptr %reg_2960.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %reg_2960.i, align 4
  %168 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr234.i = getelementptr i8, ptr %169, i32 10596
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr234.i) #8, !srcloc !193
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %reg_2964.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 33
  %172 = ptrtoint ptr %reg_2964.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %reg_2964.i, align 4
  %173 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr241.i = getelementptr i8, ptr %174, i32 10600
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr241.i) #8, !srcloc !193
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  %reg_2968.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 34
  %177 = ptrtoint ptr %reg_2968.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %reg_2968.i, align 4
  %178 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr248.i = getelementptr i8, ptr %179, i32 10604
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr248.i) #8, !srcloc !193
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !270
  %reg_296c.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 35
  %182 = ptrtoint ptr %reg_296c.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %reg_296c.i, align 4
  %183 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr255.i = getelementptr i8, ptr %184, i32 10608
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr255.i) #8, !srcloc !193
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !271
  %reg_2970.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 36
  %187 = ptrtoint ptr %reg_2970.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %reg_2970.i, align 4
  %v_filter_1.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 37
  %188 = ptrtoint ptr %v_filter_1.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 -1, ptr %v_filter_1.i, align 4
  %v_filter_2.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 38
  %189 = ptrtoint ptr %v_filter_2.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 -1, ptr %v_filter_2.i, align 4
  %h_filter.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 39
  %190 = ptrtoint ptr %h_filter.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 -1, ptr %h_filter.i, align 4
  %191 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr262.i = getelementptr i8, ptr %192, i32 10756
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr262.i) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !272
  %194 = and i32 %193, -15794176
  %195 = tail call i32 @llvm.bswap.i32(i32 %194) #8
  %osd_x_offset.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 41
  %196 = ptrtoint ptr %osd_x_offset.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %osd_x_offset.i, align 4
  %197 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr270.i = getelementptr i8, ptr %198, i32 10756
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr270.i) #8, !srcloc !193
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !273
  %shr.i = lshr i32 %200, 16
  %and274.i = and i32 %shr.i, 4095
  %osd_y_offset.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 42
  %201 = ptrtoint ptr %osd_y_offset.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %and274.i, ptr %osd_y_offset.i, align 4
  %202 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr278.i = getelementptr i8, ptr %203, i32 10360
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr278.i) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !274
  %205 = and i32 %204, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool283.not.i = icmp eq i32 %205, 0
  %spec.select.i = select i1 %tobool283.not.i, i32 480, i32 576
  %206 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 49
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %spec.select.i, ptr %206, align 4
  %osd_info.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 99
  %208 = ptrtoint ptr %osd_info.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %osd_info.i, align 8
  %tobool287.not.i = icmp eq ptr %209, null
  br i1 %tobool287.not.i, label %if.then288.i, label %if.else293.i

if.then288.i:                                     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %210 = ptrtoint ptr %osd_x_offset.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %osd_x_offset.i, align 4
  %sub.i = sub i32 720, %211
  %osd_vis_w.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 45
  %212 = ptrtoint ptr %osd_vis_w.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %sub.i, ptr %osd_vis_w.i, align 4
  %213 = ptrtoint ptr %osd_y_offset.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %osd_y_offset.i, align 4
  %sub292.i = sub i32 %spec.select.i, %214
  %osd_vis_h.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 46
  %215 = ptrtoint ptr %osd_vis_h.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %sub292.i, ptr %osd_vis_h.i, align 4
  br label %if.end338.i

if.else293.i:                                     ; preds = %do.end3.i
  %osd_vis_w294.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 45
  %216 = ptrtoint ptr %osd_vis_w294.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %osd_vis_w294.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool295.not.i = icmp eq i32 %217, 0
  br i1 %tobool295.not.i, label %if.then296.i, label %if.else293.i.if.end300.i_crit_edge

if.else293.i.if.end300.i_crit_edge:               ; preds = %if.else293.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end300.i

if.then296.i:                                     ; preds = %if.else293.i
  call void @__sanitizer_cov_trace_pc() #10
  %218 = ptrtoint ptr %osd_x_offset.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %osd_x_offset.i, align 4
  %sub298.i = sub i32 720, %219
  %220 = ptrtoint ptr %osd_vis_w294.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %sub298.i, ptr %osd_vis_w294.i, align 4
  br label %if.end300.i

if.end300.i:                                      ; preds = %if.then296.i, %if.else293.i.if.end300.i_crit_edge
  %osd_vis_h301.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 46
  %221 = ptrtoint ptr %osd_vis_h301.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %osd_vis_h301.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool302.not.i = icmp eq i32 %222, 0
  %223 = ptrtoint ptr %osd_y_offset.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %osd_y_offset.i, align 4
  br i1 %tobool302.not.i, label %if.then303.i, label %if.else308.i

if.then303.i:                                     ; preds = %if.end300.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub306.i = sub i32 %spec.select.i, %224
  %225 = ptrtoint ptr %osd_vis_h301.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %sub306.i, ptr %osd_vis_h301.i, align 4
  br label %if.end338.i

if.else308.i:                                     ; preds = %if.end300.i
  %add.i = add i32 %224, %222
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %spec.select.i)
  %cmp.i = icmp ugt i32 %add.i, %spec.select.i
  br i1 %cmp.i, label %do.body313.i, label %if.else308.i.if.end338.i_crit_edge

if.else308.i.if.end338.i_crit_edge:               ; preds = %if.else308.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end338.i

do.body313.i:                                     ; preds = %if.else308.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %226 = load i32, ptr @ivtv_debug, align 4
  %and314.i = and i32 %226, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.i)
  %tobool315.not.i = icmp eq i32 %and314.i, 0
  br i1 %tobool315.not.i, label %do.body313.i.do.end331.i_crit_edge, label %do.end319.i

do.body313.i.do.end331.i_crit_edge:               ; preds = %do.body313.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end331.i

do.end319.i:                                      ; preds = %do.body313.i
  call void @__sanitizer_cov_trace_pc() #10
  %name322.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call328.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name322.i, i32 noundef %add.i, i32 noundef %spec.select.i) #11
  br label %do.end331.i

do.end331.i:                                      ; preds = %do.end319.i, %do.body313.i.do.end331.i_crit_edge
  %227 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %206, align 4
  %229 = ptrtoint ptr %osd_y_offset.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %osd_y_offset.i, align 4
  %sub334.i = sub i32 %228, %230
  %231 = ptrtoint ptr %osd_vis_h301.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %sub334.i, ptr %osd_vis_h301.i, align 4
  br label %if.end338.i

if.end338.i:                                      ; preds = %do.end331.i, %if.else308.i.if.end338.i_crit_edge, %if.then303.i, %if.then288.i
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 11520, i32 noundef 11040, i32 noundef 2) #12
  %blanking_ptr.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 61
  %232 = ptrtoint ptr %blanking_ptr.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call1.i.i.i.i, ptr %blanking_ptr.i, align 4
  %tobool341.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool341.not.i, label %if.else345.i, label %if.then342.i

if.then342.i:                                     ; preds = %if.end338.i
  %233 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %itv, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %234, i32 0, i32 44
  %call.i.i30 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call1.i.i.i.i) #8
  br i1 %call.i.i30, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then342.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !275

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %234, i32 0, i32 44, i32 3
  %235 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %236, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %237 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %238, %if.end.i.i.i ], [ %236, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.93, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.94, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #8
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.then342.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef nonnull %call1.i.i.i.i, i32 noundef 11520) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %239 = load ptr, ptr @mem_map, align 4
  %240 = ptrtoint ptr %call1.i.i.i.i to i32
  %sub.i.i = add i32 %240, 1073741824
  %shr.i.i = lshr exact i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %239, i32 %shr.i.i
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef 0, i32 noundef 11520, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %blanking_dmaptr.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 62
  %241 = ptrtoint ptr %blanking_dmaptr.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %retval.0.i.i, ptr %blanking_dmaptr.i, align 4
  br label %ivtv_yuv_init.exit

if.else345.i:                                     ; preds = %if.end338.i
  %blanking_dmaptr346.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 62
  %242 = ptrtoint ptr %blanking_dmaptr346.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 0, ptr %blanking_dmaptr346.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %243 = load i32, ptr @ivtv_debug, align 4
  %and348.i = and i32 %243, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and348.i)
  %tobool349.not.i = icmp eq i32 %and348.i, 0
  br i1 %tobool349.not.i, label %if.else345.i.ivtv_yuv_init.exit_crit_edge, label %do.end353.i

if.else345.i.ivtv_yuv_init.exit_crit_edge:        ; preds = %if.else345.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_yuv_init.exit

do.end353.i:                                      ; preds = %if.else345.i
  call void @__sanitizer_cov_trace_pc() #10
  %name356.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call358.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name356.i) #11
  br label %ivtv_yuv_init.exit

ivtv_yuv_init.exit:                               ; preds = %do.end353.i, %if.else345.i.ivtv_yuv_init.exit_crit_edge, %dma_map_single_attrs.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !276
  tail call void @arm_heavy_mb() #8
  %244 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr368.i = getelementptr i8, ptr %245, i32 10240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr368.i, i32 16777216) #8, !srcloc !197
  %246 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr372.i = getelementptr i8, ptr %247, i32 10240
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr372.i) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  %i_flags.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 12, ptr noundef %i_flags.i) #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_dma_frame, i32 noundef 4) #8
  %249 = ptrtoint ptr %next_dma_frame to i32
  call void @__asan_store4_noabort(i32 %249)
  store volatile i32 0, ptr %next_dma_frame, align 4
  br label %if.end

if.end:                                           ; preds = %ivtv_yuv_init.exit, %entry.if.end_crit_edge
  %next_fill_frame = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 54
  %call.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_fill_frame, i32 noundef 4) #8
  %250 = ptrtoint ptr %next_fill_frame to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load volatile i32, ptr %next_fill_frame, align 4
  %call.i.i29 = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_dma_frame, i32 noundef 4) #8
  %252 = ptrtoint ptr %next_dma_frame to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load volatile i32, ptr %next_dma_frame, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %253, i32 %251)
  %cmp4 = icmp sgt i32 %253, %251
  %sub = add i32 %253, -8
  %spec.select = select i1 %cmp4, i32 %sub, i32 %253
  %sub7 = sub i32 %251, %spec.select
  %max_frames_buffered = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 65
  %254 = ptrtoint ptr %max_frames_buffered to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %max_frames_buffered, align 1
  %conv = zext i8 %255 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7, i32 %conv)
  %cmp8.not = icmp slt i32 %sub7, %conv
  br i1 %cmp8.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv12 = add i32 %251, 7
  %conv13 = and i32 %conv12, 7
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %251
  %256 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 0, ptr %arrayidx, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  %draw.0 = phi i32 [ %conv13, %if.then10 ], [ %251, %if.else ]
  %conv15 = trunc i32 %draw.0 to i8
  %draw_frame = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 64
  %257 = ptrtoint ptr %draw_frame to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %conv15, ptr %draw_frame, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ivtv_yuv_setup_frame(ptr noundef %itv, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %draw_frame = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 64
  %0 = ptrtoint ptr %draw_frame to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %draw_frame, align 4
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv
  %lace_threshold7 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 51
  %2 = ptrtoint ptr %lace_threshold7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lace_threshold7, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %src = getelementptr inbounds %struct.ivtv_dma_frame, ptr %args, i32 0, i32 4
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src, align 4
  %src_x = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 1
  %8 = ptrtoint ptr %src_x to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %src_x, align 4
  %top = getelementptr inbounds %struct.ivtv_dma_frame, ptr %args, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %top, align 4
  %src_y = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 2
  %11 = ptrtoint ptr %src_y to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %src_y, align 4
  %width = getelementptr inbounds %struct.ivtv_dma_frame, ptr %args, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %src_w = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 3
  %14 = ptrtoint ptr %src_w to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %src_w, align 4
  %height = getelementptr inbounds %struct.ivtv_dma_frame, ptr %args, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %src_h = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 4
  %17 = ptrtoint ptr %src_h to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %src_h, align 4
  %dst = getelementptr inbounds %struct.ivtv_dma_frame, ptr %args, i32 0, i32 5
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dst, align 4
  %dst_x = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 5
  %20 = ptrtoint ptr %dst_x to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %dst_x, align 4
  %top14 = getelementptr inbounds %struct.ivtv_dma_frame, ptr %args, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %top14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %top14, align 4
  %dst_y = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 6
  %23 = ptrtoint ptr %dst_y to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dst_y, align 4
  %width16 = getelementptr inbounds %struct.ivtv_dma_frame, ptr %args, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %width16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width16, align 4
  %dst_w = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 7
  %26 = ptrtoint ptr %dst_w to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dst_w, align 4
  %height18 = getelementptr inbounds %struct.ivtv_dma_frame, ptr %args, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height18, align 4
  %dst_h = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 8
  %29 = ptrtoint ptr %dst_h to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dst_h, align 4
  %30 = load i32, ptr %dst, align 4
  %tru_x = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 15
  %31 = ptrtoint ptr %tru_x to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tru_x, align 4
  %src_width = getelementptr inbounds %struct.ivtv_dma_frame, ptr %args, i32 0, i32 6
  %32 = ptrtoint ptr %src_width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_width, align 4
  %tru_w = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 16
  %34 = ptrtoint ptr %tru_w to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tru_w, align 4
  %src_height = getelementptr inbounds %struct.ivtv_dma_frame, ptr %args, i32 0, i32 7
  %35 = ptrtoint ptr %src_height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src_height, align 4
  %tru_h = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 17
  %37 = ptrtoint ptr %tru_h to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tru_h, align 4
  %add = add i32 %36, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 496, i32 %add)
  %cmp = icmp ult i32 %add, 496
  %cond = zext i1 %cmp to i32
  %offset_y = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 18
  %38 = ptrtoint ptr %offset_y to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond, ptr %offset_y, align 4
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx, align 4
  %interlaced_y = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 13
  %interlaced_uv = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 14
  %delay = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 21
  %40 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %delay, align 4
  %sync_field = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 20
  %41 = ptrtoint ptr %sync_field to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %sync_field, align 4
  %lace_mode = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 50
  %42 = ptrtoint ptr %lace_mode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lace_mode, align 4
  %and = and i32 %43, 3
  %lace_mode25 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 19
  %44 = ptrtoint ptr %lace_mode25 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and, ptr %lace_mode25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26 = icmp slt i32 %3, 0
  br i1 %cmp26, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %decode_height = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 49
  %45 = ptrtoint ptr %decode_height to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %decode_height, align 4
  %sub28 = add i32 %46, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lace_threshold.0 = phi i32 [ %sub28, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %47 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb56
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %interlaced = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 22
  %48 = ptrtoint ptr %interlaced to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %interlaced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %36)
  %cmp31 = icmp ugt i32 %36, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 1020, i32 %36)
  %cmp37 = icmp ugt i32 %36, 1020
  %49 = add i32 %36, -1021
  call void @__sanitizer_cov_trace_const_cmp4(i32 -444, i32 %49)
  %50 = icmp ult i32 %49, -444
  %narrow = and i1 %cmp31, %50
  %storemerge224 = zext i1 %narrow to i32
  %51 = ptrtoint ptr %interlaced_y to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %storemerge224, ptr %interlaced_y, align 4
  %div225 = lshr i32 %16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %div225)
  %cmp49.not = icmp ult i32 %28, %div225
  %or.cond232 = select i1 %cmp37, i1 true, i1 %cmp49.not
  %. = zext i1 %or.cond232 to i32
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %lace_threshold.0)
  %cmp58.not = icmp ule i32 %36, %lace_threshold.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %36)
  %cmp62 = icmp ugt i32 %36, 576
  %or.cond226 = or i1 %cmp62, %cmp58.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %33)
  %cmp66 = icmp ugt i32 %33, 720
  %or.cond233 = select i1 %or.cond226, i1 true, i1 %cmp66
  %interlaced69 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 22
  br i1 %or.cond233, label %if.then68, label %if.else108

if.then68:                                        ; preds = %sw.bb56
  %52 = ptrtoint ptr %interlaced69 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %interlaced69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %36)
  %cmp71 = icmp ult i32 %36, 512
  br i1 %cmp71, label %if.then68.if.end93.thread_crit_edge, label %lor.lhs.false73

if.then68.if.end93.thread_crit_edge:              ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.thread

lor.lhs.false73:                                  ; preds = %if.then68
  call void @__sanitizer_cov_trace_const_cmp4(i32 1021, i32 %36)
  %cmp79 = icmp ult i32 %36, 1021
  %53 = add i32 %36, -577
  call void @__sanitizer_cov_trace_const_cmp4(i32 444, i32 %53)
  %54 = icmp ult i32 %53, 444
  br i1 %54, label %lor.lhs.false73.if.end93.thread_crit_edge, label %lor.lhs.false81

lor.lhs.false73.if.end93.thread_crit_edge:        ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.thread

lor.lhs.false81:                                  ; preds = %lor.lhs.false73
  br i1 %cmp66, label %land.lhs.true85, label %if.end93

land.lhs.true85:                                  ; preds = %lor.lhs.false81
  br i1 %cmp79, label %land.lhs.true85.if.end93.thread_crit_edge, label %if.end93.thread230

land.lhs.true85.if.end93.thread_crit_edge:        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.thread

if.end93.thread230:                               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %interlaced_y to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %interlaced_y, align 4
  br label %if.else105

if.end93.thread:                                  ; preds = %land.lhs.true85.if.end93.thread_crit_edge, %lor.lhs.false73.if.end93.thread_crit_edge, %if.then68.if.end93.thread_crit_edge
  %56 = ptrtoint ptr %interlaced_y to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %interlaced_y, align 4
  %div100223.old = lshr i32 %16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %div100223.old)
  %cmp101.not.old = icmp ult i32 %28, %div100223.old
  br i1 %cmp101.not.old, label %if.end93.thread.if.else105_crit_edge, label %if.end93.thread.sw.epilog_crit_edge

if.end93.thread.sw.epilog_crit_edge:              ; preds = %if.end93.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end93.thread.if.else105_crit_edge:             ; preds = %if.end93.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else105

if.end93:                                         ; preds = %lor.lhs.false81
  %57 = ptrtoint ptr %interlaced_y to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %interlaced_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1020, i32 %36)
  %cmp95 = icmp ugt i32 %36, 1020
  %div100223 = lshr i32 %16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %div100223)
  %cmp101.not = icmp ult i32 %28, %div100223
  %or.cond234 = select i1 %cmp95, i1 true, i1 %cmp101.not
  br i1 %or.cond234, label %if.end93.if.else105_crit_edge, label %if.end93.sw.epilog_crit_edge

if.end93.sw.epilog_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end93.if.else105_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else105

if.else105:                                       ; preds = %if.end93.if.else105_crit_edge, %if.end93.thread.if.else105_crit_edge, %if.end93.thread230
  br label %sw.epilog

if.else108:                                       ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %interlaced69 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %interlaced69, align 4
  %59 = ptrtoint ptr %interlaced_y to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %interlaced_y, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %interlaced114 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %conv, i32 22
  %60 = ptrtoint ptr %interlaced114 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %interlaced114, align 4
  %61 = ptrtoint ptr %interlaced_y to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %interlaced_y, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else108, %if.else105, %if.end93.sw.epilog_crit_edge, %if.end93.thread.sw.epilog_crit_edge, %sw.bb
  %.sink = phi i32 [ 1, %if.else108 ], [ 1, %if.else105 ], [ 1, %sw.default ], [ %., %sw.bb ], [ 0, %if.end93.sw.epilog_crit_edge ], [ 0, %if.end93.thread.sw.epilog_crit_edge ]
  %62 = ptrtoint ptr %interlaced_uv to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink, ptr %interlaced_uv, align 4
  %old_frame_info_args = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 60
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(92) %old_frame_info_args, ptr noundef dereferenceable(92) %arrayidx, i32 92) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %sw.epilog.if.end129_crit_edge, label %if.then117

sw.epilog.if.end129_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then117:                                       ; preds = %sw.epilog
  %63 = call ptr @memcpy(ptr %old_frame_info_args, ptr %arrayidx, i32 92)
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %65 = load i32, ptr @ivtv_debug, align 4
  %and120 = and i32 %65, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.then117.if.end129_crit_edge, label %do.end

if.then117.if.end129_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

do.end:                                           ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %name, i32 noundef %conv) #11
  br label %if.end129

if.end129:                                        ; preds = %do.end, %if.then117.if.end129_crit_edge, %sw.epilog.if.end129_crit_edge
  %sub = add i8 %1, 7
  %66 = and i8 %sub, 7
  %idxprom5 = zext i8 %66 to i32
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx, align 4
  %or = or i32 %68, %5
  store i32 %or, ptr %arrayidx, align 4
  %lace_sync_field = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 52
  %69 = ptrtoint ptr %lace_sync_field to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lace_sync_field, align 4
  %71 = ptrtoint ptr %sync_field to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %sync_field, align 4
  %sync_field133 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %idxprom5, i32 20
  %72 = ptrtoint ptr %sync_field133 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sync_field133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %73)
  %cmp134 = icmp ne i32 %70, %73
  %conv135 = zext i1 %cmp134 to i32
  %74 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv135, ptr %delay, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_yuv_udma_stream_frame(ptr noundef %itv, ptr noundef %src) local_unnamed_addr #0 align 64 {
entry:
  %dma_args.i = alloca %struct.ivtv_dma_frame, align 8
  %dma_args = alloca %struct.ivtv_dma_frame, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dma_args) #8
  %0 = call ptr @memset(ptr %dma_args, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dma_args.i) #8
  %1 = ptrtoint ptr %dma_args.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %dma_args.i, align 8, !annotation !234
  tail call fastcc void @ivtv_yuv_next_free(ptr noundef %itv) #8
  %y_source.i = getelementptr inbounds %struct.ivtv_dma_frame, ptr %dma_args.i, i32 0, i32 2
  %v4l2_src_w.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 67
  %2 = call ptr @memset(ptr %y_source.i, i32 0, i32 16)
  %3 = ptrtoint ptr %v4l2_src_w.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %v4l2_src_w.i, align 4
  %width.i = getelementptr inbounds %struct.ivtv_dma_frame, ptr %dma_args.i, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %width.i, align 8
  %v4l2_src_h.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 68
  %6 = ptrtoint ptr %v4l2_src_h.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v4l2_src_h.i, align 4
  %height.i = getelementptr inbounds %struct.ivtv_dma_frame, ptr %dma_args.i, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %height.i, align 4
  %dst.i = getelementptr inbounds %struct.ivtv_dma_frame, ptr %dma_args.i, i32 0, i32 5
  %main_rect.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 66
  %9 = call ptr @memcpy(ptr %dst.i, ptr %main_rect.i, i32 16)
  %src_width.i = getelementptr inbounds %struct.ivtv_dma_frame, ptr %dma_args.i, i32 0, i32 6
  %10 = ptrtoint ptr %src_width.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %4, ptr %src_width.i, align 8
  %src_height.i = getelementptr inbounds %struct.ivtv_dma_frame, ptr %dma_args.i, i32 0, i32 7
  %11 = ptrtoint ptr %src_height.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %src_height.i, align 4
  call fastcc void @ivtv_yuv_setup_frame(ptr noundef %itv, ptr noundef nonnull %dma_args.i) #8
  %dma_data_req_offset.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 56
  %12 = ptrtoint ptr %dma_data_req_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_data_req_offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.ivtv_yuv_setup_stream_frame.exit_crit_edge

entry.ivtv_yuv_setup_stream_frame.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_yuv_setup_stream_frame.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %draw_frame.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 64
  %14 = ptrtoint ptr %draw_frame.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %draw_frame.i, align 4
  %idxprom.i = zext i8 %15 to i32
  %arrayidx.i = getelementptr [8 x i32], ptr @yuv_offset, i32 0, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %dma_data_req_offset.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dma_data_req_offset.i, align 8
  br label %ivtv_yuv_setup_stream_frame.exit

ivtv_yuv_setup_stream_frame.exit:                 ; preds = %if.then.i, %entry.ivtv_yuv_setup_stream_frame.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dma_args.i) #8
  %y_source = getelementptr inbounds %struct.ivtv_dma_frame, ptr %dma_args, i32 0, i32 2
  %19 = ptrtoint ptr %y_source to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %src, ptr %y_source, align 4
  %20 = ptrtoint ptr %v4l2_src_h.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v4l2_src_h.i, align 4
  %add = add i32 %21, 31
  %and = and i32 %add, -32
  %mul = mul i32 %and, 720
  %add.ptr = getelementptr i8, ptr %src, i32 %mul
  %uv_source = getelementptr inbounds %struct.ivtv_dma_frame, ptr %dma_args, i32 0, i32 3
  %22 = ptrtoint ptr %uv_source to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %uv_source, align 4
  %serialize_lock = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 40
  tail call void @mutex_unlock(ptr noundef %serialize_lock) #8
  %call = call fastcc i32 @ivtv_yuv_udma_frame(ptr noundef %itv, ptr noundef nonnull %dma_args)
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dma_args) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ivtv_yuv_udma_frame(ptr noundef %itv, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %y_dma.i = alloca %struct.ivtv_dma_page_info, align 4
  %uv_dma.i = alloca %struct.ivtv_dma_page_info, align 4
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
  %5 = tail call i32 @llvm.read_register.i32(metadata !183) #8
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %y_dma.i) #8
  %13 = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %y_dma.i, i32 0, i32 5
  %14 = call ptr @memset(ptr %y_dma.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %uv_dma.i) #8
  %15 = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %uv_dma.i, i32 0, i32 5
  %draw_frame.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 64
  %16 = call ptr @memset(ptr %uv_dma.i, i32 255, i32 24)
  %17 = ptrtoint ptr %draw_frame.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %draw_frame.i, align 4
  %idxprom.i = zext i8 %18 to i32
  %arrayidx2.i = getelementptr [8 x i32], ptr @yuv_offset, i32 0, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.i, align 4
  %add.i = add i32 %20, 16777216
  %add3.i = add i32 %20, 17191936
  %src_h.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %idxprom.i, i32 4
  %21 = ptrtoint ptr %src_h.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src_h.i, align 4
  %src_y.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %idxprom.i, i32 2
  %23 = ptrtoint ptr %src_y.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %src_y.i, align 4
  %add4.i = add i32 %24, %22
  %offset_y.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 90, i32 58, i32 %idxprom.i, i32 18
  %25 = ptrtoint ptr %offset_y.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset_y.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  %add5.i = add i32 %20, 16788736
  %spec.select.i = select i1 %tobool.not.i, i32 %add.i, i32 %add5.i
  %add4.biased.i = add i32 %add4.i, 15
  %y_decode_height.0.i = and i32 %add4.biased.i, -16
  %add4.biased223.i = add i32 %add4.i, 31
  %uv_decode_height.0.i = and i32 %add4.biased223.i, -32
  %mul.i = mul i32 %y_decode_height.0.i, 720
  %SG_length.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 6
  %27 = ptrtoint ptr %SG_length.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %SG_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool17.not.i = icmp eq i32 %28, 0
  br i1 %tobool17.not.i, label %lor.lhs.false.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %entry
  %page_count.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 1
  %29 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %page_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool18.not.i = icmp eq i32 %30, 0
  br i1 %tobool18.not.i, label %if.end29.i, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %31 = load i32, ptr @ivtv_debug, align 4
  %and20.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %do.body.i.if.then_crit_edge, label %do.end.i

do.body.i.if.then_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %page_count25.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 1
  %32 = ptrtoint ptr %page_count25.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %page_count25.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name.i, i32 noundef %28, i32 noundef %33) #11
  br label %if.then

if.end29.i:                                       ; preds = %lor.lhs.false.i
  %y_source.i = getelementptr inbounds %struct.ivtv_dma_frame, ptr %args, i32 0, i32 2
  %34 = ptrtoint ptr %y_source.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %y_source.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @ivtv_udma_get_page_info(ptr noundef nonnull %y_dma.i, i32 noundef %36, i32 noundef %mul.i) #8
  %uv_source.i = getelementptr inbounds %struct.ivtv_dma_frame, ptr %args, i32 0, i32 3
  %37 = ptrtoint ptr %uv_source.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %uv_source.i, align 4
  %39 = ptrtoint ptr %38 to i32
  %mul31.i = mul i32 %uv_decode_height.0.i, 360
  call void @ivtv_udma_get_page_info(ptr noundef nonnull %uv_dma.i, i32 noundef %39, i32 noundef %mul31.i) #8
  %40 = ptrtoint ptr %y_dma.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %y_dma.i, align 4
  %42 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %13, align 4
  %map.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 2
  %call34.i = call i32 @pin_user_pages_unlocked(i32 noundef %41, i32 noundef %43, ptr noundef %map.i, i32 noundef 16) #8
  %44 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call34.i, i32 %45)
  %cmp.i = icmp eq i32 %call34.i, %45
  br i1 %cmp.i, label %if.then36.i, label %if.end29.i.if.end42.i_crit_edge

if.end29.i.if.end42.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then36.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %uv_dma.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %uv_dma.i, align 4
  %48 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %15, align 4
  %arrayidx40.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 59, i32 2, i32 %call34.i
  %call41.i = call i32 @pin_user_pages_unlocked(i32 noundef %47, i32 noundef %49, ptr noundef %arrayidx40.i, i32 noundef 16) #8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then36.i, %if.end29.i.if.end42.i_crit_edge
  %uv_pages.0.i = phi i32 [ %call41.i, %if.then36.i ], [ 0, %if.end29.i.if.end42.i_crit_edge ]
  %50 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call34.i, i32 %51)
  %cmp44.not.i = icmp eq i32 %call34.i, %51
  br i1 %cmp44.not.i, label %lor.lhs.false45.i, label %do.body74.i

lor.lhs.false45.i:                                ; preds = %if.end42.i
  %52 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %uv_pages.0.i, i32 %53)
  %cmp47.not.i = icmp eq i32 %uv_pages.0.i, %53
  br i1 %cmp47.not.i, label %if.end97.i, label %do.body52.i

do.body52.i:                                      ; preds = %lor.lhs.false45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %54 = load i32, ptr @ivtv_debug, align 4
  %and53.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %do.body52.i.do.end67.i_crit_edge, label %do.end58.i

do.body52.i.do.end67.i_crit_edge:                 ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67.i

do.end58.i:                                       ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #10
  %name61.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name61.i, i32 noundef %uv_pages.0.i, i32 noundef %53) #11
  br label %do.end67.i

do.end67.i:                                       ; preds = %do.end58.i, %do.body52.i.do.end67.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uv_pages.0.i)
  %cmp68.i = icmp sgt i32 %uv_pages.0.i, -1
  br i1 %cmp68.i, label %if.then69.i, label %do.end67.i.if.end90.i_crit_edge

do.end67.i.if.end90.i_crit_edge:                  ; preds = %do.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i

if.then69.i:                                      ; preds = %do.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx71.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 59, i32 2, i32 %call34.i
  call void @unpin_user_pages(ptr noundef %arrayidx71.i, i32 noundef %uv_pages.0.i) #8
  br label %if.end90.i

do.body74.i:                                      ; preds = %if.end42.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %55 = load i32, ptr @ivtv_debug, align 4
  %and75.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %do.body74.i.if.end90.i_crit_edge, label %do.end80.i

do.body74.i.if.end90.i_crit_edge:                 ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i

do.end80.i:                                       ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #10
  %name83.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call86.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name83.i, i32 noundef %call34.i, i32 noundef %51) #11
  br label %if.end90.i

if.end90.i:                                       ; preds = %do.end80.i, %do.body74.i.if.end90.i_crit_edge, %if.then69.i, %do.end67.i.if.end90.i_crit_edge
  %rc.0.i = phi i32 [ -14, %if.then69.i ], [ -14, %do.end80.i ], [ -14, %do.body74.i.if.end90.i_crit_edge ], [ %uv_pages.0.i, %do.end67.i.if.end90.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call34.i)
  %cmp91.i = icmp sgt i32 %call34.i, -1
  br i1 %cmp91.i, label %if.then92.i, label %if.end90.i.if.then_crit_edge

if.end90.i.if.then_crit_edge:                     ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then92.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @unpin_user_pages(ptr noundef %map.i, i32 noundef %call34.i) #8
  br label %if.then

if.end97.i:                                       ; preds = %lor.lhs.false45.i
  %add98.i = add i32 %uv_pages.0.i, %call34.i
  %56 = ptrtoint ptr %page_count.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add98.i, ptr %page_count.i, align 4
  %call100.i = call i32 @ivtv_udma_fill_sg_list(ptr noundef %udma, ptr noundef nonnull %y_dma.i, i32 noundef 0) #8
  %call101.i = call i32 @ivtv_udma_fill_sg_list(ptr noundef %udma, ptr noundef nonnull %uv_dma.i, i32 noundef %call100.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i)
  %cmp102.i = icmp slt i32 %call101.i, 0
  br i1 %cmp102.i, label %do.body104.i, label %if.end123.i

do.body104.i:                                     ; preds = %if.end97.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %57 = load i32, ptr @ivtv_debug, align 4
  %and105.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.not.i = icmp eq i32 %and105.i, 0
  br i1 %tobool106.not.i, label %do.body104.i.do.end118.i_crit_edge, label %do.end110.i

do.body104.i.do.end118.i_crit_edge:               ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end118.i

do.end110.i:                                      ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #10
  %name113.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call115.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name113.i) #11
  br label %do.end118.i

do.end118.i:                                      ; preds = %do.end110.i, %do.body104.i.do.end118.i_crit_edge
  %58 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %page_count.i, align 4
  call void @unpin_user_pages(ptr noundef %map.i, i32 noundef %59) #8
  %60 = ptrtoint ptr %page_count.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %page_count.i, align 4
  br label %if.then

if.end123.i:                                      ; preds = %if.end97.i
  %61 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %itv, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %SGlist.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 7
  %63 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %page_count.i, align 4
  %call126.i = call i32 @dma_map_sg_attrs(ptr noundef %dev.i, ptr noundef %SGlist.i, i32 noundef %64, i32 noundef 1, i32 noundef 0) #8
  %65 = ptrtoint ptr %SG_length.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call126.i, ptr %SG_length.i, align 4
  call void @ivtv_udma_fill_sg_array(ptr noundef %udma, i32 noundef %spec.select.i, i32 noundef %add3.i, i32 noundef %mul.i) #8
  %66 = ptrtoint ptr %offset_y.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %offset_y.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool129.not.i = icmp eq i32 %67, 0
  br i1 %tobool129.not.i, label %if.end123.i.if.end_crit_edge, label %land.lhs.true.i

if.end123.i.if.end_crit_edge:                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end123.i
  %blanking_dmaptr.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 62
  %68 = ptrtoint ptr %blanking_dmaptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %blanking_dmaptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool130.not.i = icmp eq i32 %69, 0
  br i1 %tobool130.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then131.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then131.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %SG_length.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %SG_length.i, align 4
  %size.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 59, i32 4, i32 %71, i32 2
  %72 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2949120, ptr %size.i, align 4
  %73 = ptrtoint ptr %blanking_dmaptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %blanking_dmaptr.i, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74) #8
  %76 = ptrtoint ptr %SG_length.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %SG_length.i, align 4
  %arrayidx137.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 59, i32 4, i32 %77
  %78 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %75, ptr %arrayidx137.i, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %add.i) #8
  %80 = ptrtoint ptr %SG_length.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %SG_length.i, align 4
  %dst.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 59, i32 4, i32 %81, i32 1
  %82 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %79, ptr %dst.i, align 4
  %83 = load i32, ptr %SG_length.i, align 4
  %inc.i = add i32 %83, 1
  store i32 %inc.i, ptr %SG_length.i, align 4
  br label %if.end

if.then:                                          ; preds = %do.end118.i, %if.then92.i, %if.end90.i.if.then_crit_edge, %do.end.i, %do.body.i.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ %call34.i, %if.end90.i.if.then_crit_edge ], [ %rc.0.i, %if.then92.i ], [ -16, %do.body.i.if.then_crit_edge ], [ -16, %do.end.i ], [ -12, %do.end118.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uv_dma.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %y_dma.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.then131.i, %land.lhs.true.i.if.end_crit_edge, %if.end123.i.if.end_crit_edge
  %84 = ptrtoint ptr %SG_length.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %SG_length.i, align 4
  %sub.i = add i32 %85, -1
  %size149.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 59, i32 4, i32 %sub.i, i32 2
  %86 = ptrtoint ptr %size149.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %size149.i, align 4
  %or.i = or i32 %87, 128
  store i32 %or.i, ptr %size149.i, align 4
  %88 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %itv, align 8
  %SG_handle.i.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 5
  %90 = ptrtoint ptr %SG_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %SG_handle.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  call void @dma_sync_single_for_device(ptr noundef %dev.i.i.i, i32 noundef %91, i32 noundef 8448, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uv_dma.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %y_dma.i) #8
  call void @ivtv_udma_prepare(ptr noundef %itv) #8
  %dma_waitq = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 62
  call void @prepare_to_wait(ptr noundef %dma_waitq, ptr noundef nonnull %wait, i32 noundef 1) #8
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %if.end
  %92 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %i_flags, align 4
  %94 = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not = icmp eq i32 %94, 0
  br i1 %tobool.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %95 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %i_flags, align 4
  %97 = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool11.not = icmp eq i32 %97, 0
  br i1 %tobool11.not, label %while.end, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %98 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %stack.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %101, align 4
  %104 = and i32 %103, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i56 = icmp eq i32 %104, 0
  br i1 %tobool.not.i56, label %signal_pending.exit, label %while.body.land.lhs.true_crit_edge, !prof !275

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

signal_pending.exit:                              ; preds = %while.body
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %101, align 4
  %and1.i.i.i.i.i = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool15.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool15.not, label %signal_pending.exit.if.end20_crit_edge, label %signal_pending.exit.land.lhs.true_crit_edge

signal_pending.exit.land.lhs.true_crit_edge:      ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

signal_pending.exit.if.end20_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true:                                    ; preds = %signal_pending.exit.land.lhs.true_crit_edge, %while.body.land.lhs.true_crit_edge
  %call17 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %i_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end20_crit_edge, label %do.body.critedge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %signal_pending.exit.if.end20_crit_edge
  call void @schedule() #8
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %dma_waitq, ptr noundef nonnull %wait) #8
  call void @ivtv_udma_unmap(ptr noundef %itv) #8
  %next_fill_frame.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 54
  %107 = ptrtoint ptr %draw_frame.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %draw_frame.i, align 4
  %109 = add i8 %108, 1
  %110 = and i8 %109, 7
  %rem.i = zext i8 %110 to i32
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %next_fill_frame.i, i32 noundef 4) #8
  %111 = ptrtoint ptr %next_fill_frame.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 %rem.i, ptr %next_fill_frame.i, align 4
  br label %cleanup

do.body.critedge:                                 ; preds = %land.lhs.true
  call void @finish_wait(ptr noundef %dma_waitq, ptr noundef nonnull %wait) #8
  call void @ivtv_udma_unmap(ptr noundef %itv) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %112 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %do.body.critedge.cleanup_crit_edge, label %do.end

do.body.critedge.cleanup_crit_edge:               ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.critedge.cleanup_crit_edge, %while.end, %if.then
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ 0, %while.end ], [ -4, %do.end ], [ -4, %do.body.critedge.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %udma) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_yuv_prep_frame(ptr noundef %itv, ptr nocapture noundef readonly %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ivtv_yuv_next_free(ptr noundef %itv)
  tail call fastcc void @ivtv_yuv_setup_frame(ptr noundef %itv, ptr noundef %args)
  %serialize_lock = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 40
  tail call void @mutex_unlock(ptr noundef %serialize_lock) #8
  %call = tail call fastcc i32 @ivtv_yuv_udma_frame(ptr noundef %itv, ptr noundef %args)
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_yuv_close(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %yuv_info = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %0 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %serialize_lock = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 40
  tail call void @mutex_unlock(ptr noundef %serialize_lock) #8
  %vsync_waitq = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 65
  %call4 = tail call i32 @ivtv_waitq(ptr noundef %vsync_waitq) #8
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #8
  %running = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 69
  %1 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %running, align 4
  %next_dma_frame = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 53
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_dma_frame, i32 noundef 4) #8
  %2 = ptrtoint ptr %next_dma_frame to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 -1, ptr %next_dma_frame, align 4
  %next_fill_frame = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 54
  %call.i.i364 = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_fill_frame, i32 noundef 4) #8
  %3 = ptrtoint ptr %next_fill_frame to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %next_fill_frame, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !278
  tail call void @arm_heavy_mb() #8
  %reg_2898 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 12
  %4 = ptrtoint ptr %reg_2898 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_2898, align 4
  %or = or i32 %5, 16777216
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %7 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 10392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !279
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %yuv_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %yuv_info, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_mem, align 8
  %add.ptr13 = getelementptr i8, ptr %13, i32 10292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %11) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !280
  tail call void @arm_heavy_mb() #8
  %reg_2838 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 1
  %14 = ptrtoint ptr %reg_2838 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_2838, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_mem, align 8
  %add.ptr18 = getelementptr i8, ptr %18, i32 10296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %16) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !281
  tail call void @arm_heavy_mb() #8
  %reg_283c = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 2
  %19 = ptrtoint ptr %reg_283c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_283c, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_mem, align 8
  %add.ptr23 = getelementptr i8, ptr %23, i32 10300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %21) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !282
  tail call void @arm_heavy_mb() #8
  %reg_2840 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 3
  %24 = ptrtoint ptr %reg_2840 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_2840, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_mem, align 8
  %add.ptr28 = getelementptr i8, ptr %28, i32 10304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %26) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !283
  tail call void @arm_heavy_mb() #8
  %reg_2844 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 4
  %29 = ptrtoint ptr %reg_2844 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_2844, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_mem, align 8
  %add.ptr33 = getelementptr i8, ptr %33, i32 10308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %31) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !284
  tail call void @arm_heavy_mb() #8
  %reg_2848 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 5
  %34 = ptrtoint ptr %reg_2848 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_2848, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_mem, align 8
  %add.ptr38 = getelementptr i8, ptr %38, i32 10312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %36) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !285
  tail call void @arm_heavy_mb() #8
  %reg_2854 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 6
  %39 = ptrtoint ptr %reg_2854 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_2854, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_mem, align 8
  %add.ptr43 = getelementptr i8, ptr %43, i32 10324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %41) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !286
  tail call void @arm_heavy_mb() #8
  %reg_285c = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 7
  %44 = ptrtoint ptr %reg_285c to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg_285c, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_mem, align 8
  %add.ptr48 = getelementptr i8, ptr %48, i32 10332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %46) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !287
  tail call void @arm_heavy_mb() #8
  %reg_2864 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 8
  %49 = ptrtoint ptr %reg_2864 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg_2864, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_mem, align 8
  %add.ptr53 = getelementptr i8, ptr %53, i32 10340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %51) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  tail call void @arm_heavy_mb() #8
  %reg_2870 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 9
  %54 = ptrtoint ptr %reg_2870 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reg_2870, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_mem, align 8
  %add.ptr58 = getelementptr i8, ptr %58, i32 10352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %56) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !289
  tail call void @arm_heavy_mb() #8
  %reg_2874 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 10
  %59 = ptrtoint ptr %reg_2874 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reg_2874, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %62 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_mem, align 8
  %add.ptr63 = getelementptr i8, ptr %63, i32 10356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %61) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !290
  tail call void @arm_heavy_mb() #8
  %reg_2890 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 11
  %64 = ptrtoint ptr %reg_2890 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %reg_2890, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %67 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_mem, align 8
  %add.ptr68 = getelementptr i8, ptr %68, i32 10384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %66) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  tail call void @arm_heavy_mb() #8
  %reg_289c = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 13
  %69 = ptrtoint ptr %reg_289c to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reg_289c, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %72 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_mem, align 8
  %add.ptr73 = getelementptr i8, ptr %73, i32 10396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %71) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  tail call void @arm_heavy_mb() #8
  %reg_2918 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 14
  %74 = ptrtoint ptr %reg_2918 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %reg_2918, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %77 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_mem, align 8
  %add.ptr78 = getelementptr i8, ptr %78, i32 10520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %76) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  tail call void @arm_heavy_mb() #8
  %reg_291c = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 15
  %79 = ptrtoint ptr %reg_291c to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %reg_291c, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  %82 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_mem, align 8
  %add.ptr83 = getelementptr i8, ptr %83, i32 10524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %81) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  tail call void @arm_heavy_mb() #8
  %reg_2920 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 16
  %84 = ptrtoint ptr %reg_2920 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %reg_2920, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %87 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_mem, align 8
  %add.ptr88 = getelementptr i8, ptr %88, i32 10528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %86) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !295
  tail call void @arm_heavy_mb() #8
  %reg_2924 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 17
  %89 = ptrtoint ptr %reg_2924 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %reg_2924, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %92 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %reg_mem, align 8
  %add.ptr93 = getelementptr i8, ptr %93, i32 10532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %91) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !296
  tail call void @arm_heavy_mb() #8
  %reg_2928 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 18
  %94 = ptrtoint ptr %reg_2928 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %reg_2928, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %97 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg_mem, align 8
  %add.ptr98 = getelementptr i8, ptr %98, i32 10536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %96) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  tail call void @arm_heavy_mb() #8
  %reg_292c = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 19
  %99 = ptrtoint ptr %reg_292c to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %reg_292c, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %102 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %reg_mem, align 8
  %add.ptr103 = getelementptr i8, ptr %103, i32 10540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %101) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !298
  tail call void @arm_heavy_mb() #8
  %reg_2930 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 20
  %104 = ptrtoint ptr %reg_2930 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %reg_2930, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %107 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg_mem, align 8
  %add.ptr108 = getelementptr i8, ptr %108, i32 10544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %106) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !299
  tail call void @arm_heavy_mb() #8
  %reg_2934 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 21
  %109 = ptrtoint ptr %reg_2934 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %reg_2934, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  %112 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg_mem, align 8
  %add.ptr113 = getelementptr i8, ptr %113, i32 10548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %111) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !300
  tail call void @arm_heavy_mb() #8
  %reg_2938 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 22
  %114 = ptrtoint ptr %reg_2938 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %reg_2938, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %117 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %reg_mem, align 8
  %add.ptr118 = getelementptr i8, ptr %118, i32 10552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %116) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !301
  tail call void @arm_heavy_mb() #8
  %reg_293c = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 23
  %119 = ptrtoint ptr %reg_293c to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %reg_293c, align 4
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  %122 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg_mem, align 8
  %add.ptr123 = getelementptr i8, ptr %123, i32 10556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %121) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !302
  tail call void @arm_heavy_mb() #8
  %reg_2940 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 24
  %124 = ptrtoint ptr %reg_2940 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %reg_2940, align 4
  %126 = tail call i32 @llvm.bswap.i32(i32 %125)
  %127 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg_mem, align 8
  %add.ptr128 = getelementptr i8, ptr %128, i32 10560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %126) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  tail call void @arm_heavy_mb() #8
  %reg_2944 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 25
  %129 = ptrtoint ptr %reg_2944 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %reg_2944, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  %132 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg_mem, align 8
  %add.ptr133 = getelementptr i8, ptr %133, i32 10564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 %131) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !304
  tail call void @arm_heavy_mb() #8
  %reg_2948 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 26
  %134 = ptrtoint ptr %reg_2948 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %reg_2948, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  %137 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %reg_mem, align 8
  %add.ptr138 = getelementptr i8, ptr %138, i32 10568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 %136) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !305
  tail call void @arm_heavy_mb() #8
  %reg_294c = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 27
  %139 = ptrtoint ptr %reg_294c to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %reg_294c, align 4
  %141 = tail call i32 @llvm.bswap.i32(i32 %140)
  %142 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %reg_mem, align 8
  %add.ptr143 = getelementptr i8, ptr %143, i32 10572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %141) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %reg_2950 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 28
  %144 = ptrtoint ptr %reg_2950 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %reg_2950, align 4
  %146 = tail call i32 @llvm.bswap.i32(i32 %145)
  %147 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %reg_mem, align 8
  %add.ptr148 = getelementptr i8, ptr %148, i32 10576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %146) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !307
  tail call void @arm_heavy_mb() #8
  %reg_2954 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 29
  %149 = ptrtoint ptr %reg_2954 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %reg_2954, align 4
  %151 = tail call i32 @llvm.bswap.i32(i32 %150)
  %152 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg_mem, align 8
  %add.ptr153 = getelementptr i8, ptr %153, i32 10580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 %151) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !308
  tail call void @arm_heavy_mb() #8
  %reg_2958 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 30
  %154 = ptrtoint ptr %reg_2958 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %reg_2958, align 4
  %156 = tail call i32 @llvm.bswap.i32(i32 %155)
  %157 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %reg_mem, align 8
  %add.ptr158 = getelementptr i8, ptr %158, i32 10584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %156) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !309
  tail call void @arm_heavy_mb() #8
  %reg_295c = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 31
  %159 = ptrtoint ptr %reg_295c to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %reg_295c, align 4
  %161 = tail call i32 @llvm.bswap.i32(i32 %160)
  %162 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %reg_mem, align 8
  %add.ptr163 = getelementptr i8, ptr %163, i32 10588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 %161) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !310
  tail call void @arm_heavy_mb() #8
  %reg_2960 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 32
  %164 = ptrtoint ptr %reg_2960 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %reg_2960, align 4
  %166 = tail call i32 @llvm.bswap.i32(i32 %165)
  %167 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %reg_mem, align 8
  %add.ptr168 = getelementptr i8, ptr %168, i32 10592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168, i32 %166) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !311
  tail call void @arm_heavy_mb() #8
  %reg_2964 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 33
  %169 = ptrtoint ptr %reg_2964 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %reg_2964, align 4
  %171 = tail call i32 @llvm.bswap.i32(i32 %170)
  %172 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %reg_mem, align 8
  %add.ptr173 = getelementptr i8, ptr %173, i32 10596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr173, i32 %171) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !312
  tail call void @arm_heavy_mb() #8
  %reg_2968 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 34
  %174 = ptrtoint ptr %reg_2968 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %reg_2968, align 4
  %176 = tail call i32 @llvm.bswap.i32(i32 %175)
  %177 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %reg_mem, align 8
  %add.ptr178 = getelementptr i8, ptr %178, i32 10600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 %176) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !313
  tail call void @arm_heavy_mb() #8
  %reg_296c = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 35
  %179 = ptrtoint ptr %reg_296c to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %reg_296c, align 4
  %181 = tail call i32 @llvm.bswap.i32(i32 %180)
  %182 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %reg_mem, align 8
  %add.ptr183 = getelementptr i8, ptr %183, i32 10604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183, i32 %181) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  tail call void @arm_heavy_mb() #8
  %reg_2970 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 36
  %184 = ptrtoint ptr %reg_2970 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %reg_2970, align 4
  %186 = tail call i32 @llvm.bswap.i32(i32 %185)
  %187 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %reg_mem, align 8
  %add.ptr188 = getelementptr i8, ptr %188, i32 10608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 %186) #8, !srcloc !197
  %189 = ptrtoint ptr %yuv_info to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %yuv_info, align 4
  %and190 = and i32 %190, 65535
  %shr = lshr i32 %190, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %and190, i32 %shr)
  %cmp = icmp eq i32 %and190, %shr
  br i1 %cmp, label %do.end3.if.end201_crit_edge, label %if.else

do.end3.if.end201_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

if.else:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %190, 16
  %div = udiv i32 %shl, %shr
  %shr196 = lshr i32 %div, 15
  %191 = lshr i32 %div, 16
  %and198 = and i32 %shr196, 1
  %add = add nuw nsw i32 %and198, %191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool199.not = icmp eq i32 %add, 0
  %lnot.ext = zext i1 %tobool199.not to i32
  %add200 = add nuw nsw i32 %add, %lnot.ext
  br label %if.end201

if.end201:                                        ; preds = %if.else, %do.end3.if.end201_crit_edge
  %h_filter.0 = phi i32 [ %add200, %if.else ], [ 0, %do.end3.if.end201_crit_edge ]
  %192 = ptrtoint ptr %reg_2918 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %reg_2918, align 4
  %and203 = and i32 %193, 65535
  %shr205 = lshr i32 %193, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %and203, i32 %shr205)
  %cmp206 = icmp eq i32 %and203, %shr205
  br i1 %cmp206, label %if.end201.if.end222_crit_edge, label %if.else208

if.end201.if.end222_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222

if.else208:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  %shl210 = shl i32 %193, 16
  %div213 = udiv i32 %shl210, %shr205
  %shr214 = lshr i32 %div213, 15
  %194 = lshr i32 %div213, 16
  %and216 = and i32 %shr214, 1
  %add217 = add nuw nsw i32 %and216, %194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add217)
  %tobool218.not = icmp eq i32 %add217, 0
  %lnot.ext220 = zext i1 %tobool218.not to i32
  %add221 = add nuw nsw i32 %add217, %lnot.ext220
  br label %if.end222

if.end222:                                        ; preds = %if.else208, %if.end201.if.end222_crit_edge
  %v_filter_1.0 = phi i32 [ %add221, %if.else208 ], [ 0, %if.end201.if.end222_crit_edge ]
  %v_filter_2.0 = phi i32 [ %add221, %if.else208 ], [ 1, %if.end201.if.end222_crit_edge ]
  tail call fastcc void @ivtv_yuv_filter(ptr noundef %itv, i32 noundef %h_filter.0, i32 noundef %v_filter_1.0, i32 noundef %v_filter_2.0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  %195 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %reg_mem, align 8
  %add.ptr227 = getelementptr i8, ptr %196, i32 10260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227, i32 0) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !316
  tail call void @arm_heavy_mb() #8
  %197 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %reg_mem, align 8
  %add.ptr232 = getelementptr i8, ptr %198, i32 10284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr232, i32 0) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !317
  tail call void @arm_heavy_mb() #8
  %199 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %reg_mem, align 8
  %add.ptr237 = getelementptr i8, ptr %200, i32 10500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr237, i32 0) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !318
  tail call void @arm_heavy_mb() #8
  %201 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %reg_mem, align 8
  %add.ptr242 = getelementptr i8, ptr %202, i32 10512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr242, i32 0) #8, !srcloc !197
  %blanking_ptr = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 61
  %203 = ptrtoint ptr %blanking_ptr to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %blanking_ptr, align 4
  %tobool243.not = icmp eq ptr %204, null
  br i1 %tobool243.not, label %if.end222.if.end247_crit_edge, label %if.then244

if.end222.if.end247_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end247

if.then244:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %204) #8
  %205 = ptrtoint ptr %blanking_ptr to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %blanking_ptr, align 4
  %206 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %itv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %207, i32 0, i32 44
  %blanking_dmaptr = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 62
  %208 = ptrtoint ptr %blanking_dmaptr to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %blanking_dmaptr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %209, i32 noundef 11520, i32 noundef 1, i32 noundef 0) #8
  br label %if.end247

if.end247:                                        ; preds = %if.then244, %if.end222.if.end247_crit_edge
  %src_w = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 3
  %210 = ptrtoint ptr %src_w to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 0, ptr %src_w, align 4
  %src_h = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 59, i32 4
  %211 = ptrtoint ptr %src_h to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %src_h, align 4
  %src_w249 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 60, i32 3
  %212 = ptrtoint ptr %src_w249 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %src_w249, align 4
  %src_h251 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 90, i32 60, i32 4
  %213 = ptrtoint ptr %src_h251 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %src_h251, align 4
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %i_flags) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_waitq(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ivtv_yuv_filter(ptr noundef %itv, i32 noundef %h_filter, i32 noundef %v_filter_1, i32 noundef %v_filter_2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %h_filter)
  %cmp = icmp sgt i32 %h_filter, -1
  br i1 %cmp, label %if.then, label %entry.if.end139_crit_edge

entry.if.end139_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.smin.i32(i32 %h_filter, i32 4)
  %mul = mul nuw nsw i32 %0, 384
  %add = add nuw nsw i32 %mul, 9688
  %dec_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 16
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then
  %i.0333 = phi i32 [ %add, %if.then ], [ %add118, %do.body.do.body_crit_edge ]
  %line.0332 = phi i32 [ 0, %if.then ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !319
  tail call void @arm_heavy_mb() #8
  %1 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dec_mem, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %i.0333
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %4 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem, align 8
  %add.ptr5 = getelementptr i8, ptr %5, i32 10244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dec_mem, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 %i.0333
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %9 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_mem, align 8
  %add.ptr17 = getelementptr i8, ptr %10, i32 10268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %8) #8, !srcloc !197
  %add18 = or i32 %i.0333, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dec_mem, align 4
  %add.ptr25 = getelementptr i8, ptr %12, i32 %add18
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !324
  %14 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_mem, align 8
  %add.ptr30 = getelementptr i8, ptr %15, i32 10248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %13) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !325
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dec_mem, align 4
  %add.ptr37 = getelementptr i8, ptr %17, i32 %add18
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !326
  %19 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_mem, align 8
  %add.ptr42 = getelementptr i8, ptr %20, i32 10272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %18) #8, !srcloc !197
  %add43 = add i32 %i.0333, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !327
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dec_mem, align 4
  %add.ptr50 = getelementptr i8, ptr %22, i32 %add43
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !328
  %24 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_mem, align 8
  %add.ptr55 = getelementptr i8, ptr %25, i32 10252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %23) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !329
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dec_mem, align 4
  %add.ptr62 = getelementptr i8, ptr %27, i32 %add43
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !330
  %29 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_mem, align 8
  %add.ptr67 = getelementptr i8, ptr %30, i32 10276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %28) #8, !srcloc !197
  %add68 = add i32 %i.0333, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !331
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dec_mem, align 4
  %add.ptr75 = getelementptr i8, ptr %32, i32 %add68
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !332
  %34 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_mem, align 8
  %add.ptr80 = getelementptr i8, ptr %35, i32 10256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %33) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !333
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dec_mem, align 4
  %add.ptr87 = getelementptr i8, ptr %37, i32 %add68
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !334
  %39 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_mem, align 8
  %add.ptr92 = getelementptr i8, ptr %40, i32 10280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %38) #8, !srcloc !197
  %add93 = add i32 %i.0333, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !335
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dec_mem, align 4
  %add.ptr100 = getelementptr i8, ptr %42, i32 %add93
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !336
  %44 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_mem, align 8
  %add.ptr105 = getelementptr i8, ptr %45, i32 10260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %43) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !337
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dec_mem, align 4
  %add.ptr112 = getelementptr i8, ptr %47, i32 %add93
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !338
  %49 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_mem, align 8
  %add.ptr117 = getelementptr i8, ptr %50, i32 10284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %48) #8, !srcloc !197
  %add118 = add i32 %i.0333, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !339
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_mem, align 8
  %add.ptr123 = getelementptr i8, ptr %52, i32 10264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 0) #8, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !340
  tail call void @arm_heavy_mb() #8
  %53 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_mem, align 8
  %add.ptr128 = getelementptr i8, ptr %54, i32 10288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 0) #8, !srcloc !197
  %inc = add nuw nsw i32 %line.0332, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body129, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body129:                                       ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %55 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %55, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body129.if.end139_crit_edge, label %do.end133

do.body129.if.end139_crit_edge:                   ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

do.end133:                                        ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %name, i32 noundef %0) #11
  br label %if.end139

if.end139:                                        ; preds = %do.end133, %do.body129.if.end139_crit_edge, %entry.if.end139_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %v_filter_1)
  %cmp140 = icmp sgt i32 %v_filter_1, -1
  br i1 %cmp140, label %if.then141, label %if.end139.if.end199_crit_edge

if.end139.if.end199_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199

if.then141:                                       ; preds = %if.end139
  %56 = tail call i32 @llvm.smin.i32(i32 %v_filter_1, i32 4)
  %mul145 = mul nuw nsw i32 %56, 192
  %add146 = add nuw nsw i32 %mul145, 13144
  %dec_mem155 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 16
  %reg_mem160 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  br label %do.body150

do.body150:                                       ; preds = %do.body150.do.body150_crit_edge, %if.then141
  %i.1335 = phi i32 [ %add146, %if.then141 ], [ %add175, %do.body150.do.body150_crit_edge ]
  %line.1334 = phi i32 [ 0, %if.then141 ], [ %inc182, %do.body150.do.body150_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !341
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %dec_mem155 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dec_mem155, align 4
  %add.ptr156 = getelementptr i8, ptr %58, i32 %i.1335
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr156) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !342
  %60 = ptrtoint ptr %reg_mem160 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_mem160, align 8
  %add.ptr161 = getelementptr i8, ptr %61, i32 10496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161, i32 %59) #8, !srcloc !197
  %add162 = add i32 %i.1335, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !343
  tail call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %dec_mem155 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dec_mem155, align 4
  %add.ptr169 = getelementptr i8, ptr %63, i32 %add162
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr169) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !344
  %65 = ptrtoint ptr %reg_mem160 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_mem160, align 8
  %add.ptr174 = getelementptr i8, ptr %66, i32 10500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174, i32 %64) #8, !srcloc !197
  %add175 = add i32 %i.1335, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !345
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %reg_mem160 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_mem160, align 8
  %add.ptr180 = getelementptr i8, ptr %68, i32 10504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180, i32 0) #8, !srcloc !197
  %inc182 = add nuw nsw i32 %line.1334, 1
  %exitcond338.not = icmp eq i32 %inc182, 16
  br i1 %exitcond338.not, label %do.body184, label %do.body150.do.body150_crit_edge

do.body150.do.body150_crit_edge:                  ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body150

do.body184:                                       ; preds = %do.body150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %69 = load i32, ptr @ivtv_debug, align 4
  %and185 = and i32 %69, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %do.body184.if.end199_crit_edge, label %do.end190

do.body184.if.end199_crit_edge:                   ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199

do.end190:                                        ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #10
  %name193 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name193, i32 noundef %56) #11
  br label %if.end199

if.end199:                                        ; preds = %do.end190, %do.body184.if.end199_crit_edge, %if.end139.if.end199_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %v_filter_2)
  %cmp200 = icmp sgt i32 %v_filter_2, -1
  br i1 %cmp200, label %if.then201, label %if.end199.if.end259_crit_edge

if.end199.if.end259_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end259

if.then201:                                       ; preds = %if.end199
  %70 = tail call i32 @llvm.smin.i32(i32 %v_filter_2, i32 4)
  %mul205 = mul nuw nsw i32 %70, 192
  %add206 = add nuw nsw i32 %mul205, 13144
  %dec_mem215 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 16
  %reg_mem220 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  br label %do.body210

do.body210:                                       ; preds = %do.body210.do.body210_crit_edge, %if.then201
  %i.2337 = phi i32 [ %add206, %if.then201 ], [ %add235, %do.body210.do.body210_crit_edge ]
  %line.2336 = phi i32 [ 0, %if.then201 ], [ %inc242, %do.body210.do.body210_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !346
  tail call void @arm_heavy_mb() #8
  %71 = ptrtoint ptr %dec_mem215 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dec_mem215, align 4
  %add.ptr216 = getelementptr i8, ptr %72, i32 %i.2337
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr216) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !347
  %74 = ptrtoint ptr %reg_mem220 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_mem220, align 8
  %add.ptr221 = getelementptr i8, ptr %75, i32 10508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr221, i32 %73) #8, !srcloc !197
  %add222 = add i32 %i.2337, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !348
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %dec_mem215 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dec_mem215, align 4
  %add.ptr229 = getelementptr i8, ptr %77, i32 %add222
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr229) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !349
  %79 = ptrtoint ptr %reg_mem220 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_mem220, align 8
  %add.ptr234 = getelementptr i8, ptr %80, i32 10512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr234, i32 %78) #8, !srcloc !197
  %add235 = add i32 %i.2337, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !350
  tail call void @arm_heavy_mb() #8
  %81 = ptrtoint ptr %reg_mem220 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg_mem220, align 8
  %add.ptr240 = getelementptr i8, ptr %82, i32 10516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 0) #8, !srcloc !197
  %inc242 = add nuw nsw i32 %line.2336, 1
  %exitcond339.not = icmp eq i32 %inc242, 16
  br i1 %exitcond339.not, label %do.body244, label %do.body210.do.body210_crit_edge

do.body210.do.body210_crit_edge:                  ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body210

do.body244:                                       ; preds = %do.body210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %83 = load i32, ptr @ivtv_debug, align 4
  %and245 = and i32 %83, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  br i1 %tobool246.not, label %do.body244.if.end259_crit_edge, label %do.end250

do.body244.if.end259_crit_edge:                   ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end259

do.end250:                                        ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #10
  %name253 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name253, i32 noundef %70) #11
  br label %if.end259

if.end259:                                        ; preds = %do.end250, %do.body244.if.end259_crit_edge, %if.end199.if.end259_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_udma_get_page_info(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_unlocked(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_udma_fill_sg_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_udma_fill_sg_array(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182}
!llvm.named.register.sp = !{!183}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @yuv_offset, !1, !"yuv_offset", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 14, i32 11}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 145, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ivtv_yuv_filter_check._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ivtv_yuv_filter_check._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 805, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ivtv_yuv_work_handler._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ivtv_yuv_work_handler._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 1175, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ivtv_yuv_close._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @ivtv_yuv_close._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 223, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ivtv_yuv_handle_horizontal._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @ivtv_yuv_handle_horizontal._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 332, i32 2}
!25 = !{ptr @ivtv_yuv_handle_horizontal._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ivtv_yuv_handle_horizontal._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 338, i32 2}
!29 = !{ptr @ivtv_yuv_handle_horizontal._entry.12, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ivtv_yuv_handle_horizontal._entry_ptr.14, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 343, i32 2}
!33 = !{ptr @ivtv_yuv_handle_horizontal._entry.15, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ivtv_yuv_handle_horizontal._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 347, i32 2}
!37 = !{ptr @ivtv_yuv_handle_horizontal._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ivtv_yuv_handle_horizontal._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 352, i32 2}
!41 = !{ptr @ivtv_yuv_handle_horizontal._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ivtv_yuv_handle_horizontal._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 356, i32 2}
!45 = !{ptr @ivtv_yuv_handle_horizontal._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ivtv_yuv_handle_horizontal._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 360, i32 2}
!49 = !{ptr @ivtv_yuv_handle_horizontal._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ivtv_yuv_handle_horizontal._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 364, i32 2}
!53 = !{ptr @ivtv_yuv_handle_horizontal._entry.30, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ivtv_yuv_handle_horizontal._entry_ptr.32, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 389, i32 2}
!57 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ivtv_yuv_handle_vertical._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 394, i32 2}
!62 = !{ptr @ivtv_yuv_handle_vertical._entry.35, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.37, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.39, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 397, i32 2}
!68 = !{ptr @ivtv_yuv_handle_vertical._entry.40, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.42, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.44, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 401, i32 2}
!72 = !{ptr @ivtv_yuv_handle_vertical._entry.43, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.45, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.47, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 576, i32 2}
!76 = !{ptr @ivtv_yuv_handle_vertical._entry.46, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.48, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.50, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 580, i32 2}
!80 = !{ptr @ivtv_yuv_handle_vertical._entry.49, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.51, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.53, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 589, i32 2}
!84 = !{ptr @ivtv_yuv_handle_vertical._entry.52, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.54, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.56, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 594, i32 2}
!88 = !{ptr @ivtv_yuv_handle_vertical._entry.55, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.57, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.59, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 599, i32 2}
!92 = !{ptr @ivtv_yuv_handle_vertical._entry.58, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.60, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.62, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 604, i32 2}
!96 = !{ptr @ivtv_yuv_handle_vertical._entry.61, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.63, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.65, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 608, i32 2}
!100 = !{ptr @ivtv_yuv_handle_vertical._entry.64, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.66, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.68, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 613, i32 2}
!104 = !{ptr @ivtv_yuv_handle_vertical._entry.67, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.69, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.71, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 618, i32 2}
!108 = !{ptr @ivtv_yuv_handle_vertical._entry.70, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.72, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.74, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 623, i32 2}
!112 = !{ptr @ivtv_yuv_handle_vertical._entry.73, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.75, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.77, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 627, i32 2}
!116 = !{ptr @ivtv_yuv_handle_vertical._entry.76, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.78, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.80, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 632, i32 2}
!120 = !{ptr @ivtv_yuv_handle_vertical._entry.79, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.81, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.83, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 636, i32 2}
!124 = !{ptr @ivtv_yuv_handle_vertical._entry.82, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ivtv_yuv_handle_vertical._entry_ptr.84, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.85, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 844, i32 2}
!128 = !{ptr @.str.86, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ivtv_yuv_init._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @ivtv_yuv_init._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.88, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 914, i32 4}
!133 = !{ptr @ivtv_yuv_init._entry.87, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @ivtv_yuv_init._entry_ptr.89, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.91, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 929, i32 3}
!137 = !{ptr @ivtv_yuv_init._entry.90, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @ivtv_yuv_init._entry_ptr.92, !136, !"_entry_ptr", i1 false, i1 false}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!141 = !{ptr @.str.93, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.94, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.95, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 1047, i32 3}
!145 = !{ptr @.str.96, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @ivtv_yuv_setup_frame._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @ivtv_yuv_setup_frame._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.97, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 1095, i32 3}
!150 = !{ptr @.str.98, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @ivtv_yuv_udma_frame._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @ivtv_yuv_udma_frame._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.99, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 55, i32 3}
!155 = !{ptr @.str.100, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @ivtv_yuv_prep_user_dma._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @ivtv_yuv_prep_user_dma._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.102, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 78, i32 4}
!160 = !{ptr @ivtv_yuv_prep_user_dma._entry.101, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @ivtv_yuv_prep_user_dma._entry_ptr.103, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.105, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 89, i32 4}
!164 = !{ptr @ivtv_yuv_prep_user_dma._entry.104, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @ivtv_yuv_prep_user_dma._entry_ptr.106, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.108, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 111, i32 3}
!168 = !{ptr @ivtv_yuv_prep_user_dma._entry.107, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @ivtv_yuv_prep_user_dma._entry_ptr.109, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.110, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 180, i32 3}
!172 = !{ptr @.str.111, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @ivtv_yuv_filter._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @ivtv_yuv_filter._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.113, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 194, i32 3}
!177 = !{ptr @ivtv_yuv_filter._entry.112, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @ivtv_yuv_filter._entry_ptr.114, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.116, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/pci/ivtv/ivtv-yuv.c", i32 208, i32 3}
!181 = !{ptr @ivtv_yuv_filter._entry.115, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @ivtv_yuv_filter._entry_ptr.117, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{!"sp"}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{i64 5784222}
!194 = !{i64 2156815220}
!195 = !{i64 2156815837}
!196 = !{i64 2156941046}
!197 = !{i64 5783804}
!198 = !{i64 2156941531}
!199 = !{i64 2156860401}
!200 = !{i64 2156860879}
!201 = !{i64 2156863935}
!202 = !{i64 2156864413}
!203 = !{i64 2156867473}
!204 = !{i64 2156867961}
!205 = !{i64 2156871047}
!206 = !{i64 2156873789}
!207 = !{i64 2156874267}
!208 = !{i64 2156877323}
!209 = !{i64 2156880055}
!210 = !{i64 2156882787}
!211 = !{i64 2156895095}
!212 = !{i64 2156895573}
!213 = !{i64 2156898629}
!214 = !{i64 2156899107}
!215 = !{i64 2156902163}
!216 = !{i64 2156902641}
!217 = !{i64 2156905697}
!218 = !{i64 2156906191}
!219 = !{i64 2156909319}
!220 = !{i64 2156909813}
!221 = !{i64 2156912941}
!222 = !{i64 2156913419}
!223 = !{i64 2156916475}
!224 = !{i64 2156919207}
!225 = !{i64 2156919685}
!226 = !{i64 2156922741}
!227 = !{i64 2156923219}
!228 = !{i64 2156926275}
!229 = !{i64 2156926753}
!230 = !{i64 2156929809}
!231 = !{i64 2156932551}
!232 = !{i64 2156933029}
!233 = !{i64 2156936085}
!234 = !{!"auto-init"}
!235 = !{i64 2156944265}
!236 = !{i64 2156944823}
!237 = !{i64 2156945381}
!238 = !{i64 2156945939}
!239 = !{i64 2156946497}
!240 = !{i64 2156947055}
!241 = !{i64 2156947613}
!242 = !{i64 2156948171}
!243 = !{i64 2156948729}
!244 = !{i64 2156949287}
!245 = !{i64 2156949845}
!246 = !{i64 2156950403}
!247 = !{i64 2156950961}
!248 = !{i64 2156951519}
!249 = !{i64 2156952077}
!250 = !{i64 2156952635}
!251 = !{i64 2156953193}
!252 = !{i64 2156953751}
!253 = !{i64 2156954309}
!254 = !{i64 2156954867}
!255 = !{i64 2156955425}
!256 = !{i64 2156955983}
!257 = !{i64 2156956541}
!258 = !{i64 2156957099}
!259 = !{i64 2156957657}
!260 = !{i64 2156958215}
!261 = !{i64 2156958773}
!262 = !{i64 2156959331}
!263 = !{i64 2156959889}
!264 = !{i64 2156960447}
!265 = !{i64 2156961005}
!266 = !{i64 2156961563}
!267 = !{i64 2156962121}
!268 = !{i64 2156962679}
!269 = !{i64 2156963237}
!270 = !{i64 2156963795}
!271 = !{i64 2156964353}
!272 = !{i64 2156964911}
!273 = !{i64 2156965469}
!274 = !{i64 2156966022}
!275 = !{!"branch_weights", i32 2000, i32 1}
!276 = !{i64 2156971765}
!277 = !{i64 2156972516}
!278 = !{i64 2156983997}
!279 = !{i64 2156984533}
!280 = !{i64 2156985031}
!281 = !{i64 2156985529}
!282 = !{i64 2156986027}
!283 = !{i64 2156986525}
!284 = !{i64 2156987023}
!285 = !{i64 2156987521}
!286 = !{i64 2156988019}
!287 = !{i64 2156988517}
!288 = !{i64 2156989015}
!289 = !{i64 2156989513}
!290 = !{i64 2156990011}
!291 = !{i64 2156990509}
!292 = !{i64 2156991007}
!293 = !{i64 2156991505}
!294 = !{i64 2156992003}
!295 = !{i64 2156992501}
!296 = !{i64 2156992999}
!297 = !{i64 2156993497}
!298 = !{i64 2156993995}
!299 = !{i64 2156994493}
!300 = !{i64 2156994991}
!301 = !{i64 2156995489}
!302 = !{i64 2156995987}
!303 = !{i64 2156996485}
!304 = !{i64 2156996983}
!305 = !{i64 2156997481}
!306 = !{i64 2156997979}
!307 = !{i64 2156998477}
!308 = !{i64 2156998975}
!309 = !{i64 2156999473}
!310 = !{i64 2156999971}
!311 = !{i64 2157000469}
!312 = !{i64 2157000967}
!313 = !{i64 2157001465}
!314 = !{i64 2157001963}
!315 = !{i64 2157002439}
!316 = !{i64 2157002882}
!317 = !{i64 2157003325}
!318 = !{i64 2157003768}
!319 = !{i64 2156819090}
!320 = !{i64 2156820018}
!321 = !{i64 2156821357}
!322 = !{i64 2156822285}
!323 = !{i64 2156823624}
!324 = !{i64 2156824552}
!325 = !{i64 2156825891}
!326 = !{i64 2156826819}
!327 = !{i64 2156828158}
!328 = !{i64 2156829086}
!329 = !{i64 2156830425}
!330 = !{i64 2156831353}
!331 = !{i64 2156832692}
!332 = !{i64 2156833620}
!333 = !{i64 2156834959}
!334 = !{i64 2156835887}
!335 = !{i64 2156837226}
!336 = !{i64 2156838154}
!337 = !{i64 2156839493}
!338 = !{i64 2156840421}
!339 = !{i64 2156840698}
!340 = !{i64 2156841141}
!341 = !{i64 2156844684}
!342 = !{i64 2156845612}
!343 = !{i64 2156846951}
!344 = !{i64 2156847879}
!345 = !{i64 2156848156}
!346 = !{i64 2156851731}
!347 = !{i64 2156852659}
!348 = !{i64 2156853998}
!349 = !{i64 2156854926}
!350 = !{i64 2156855203}
