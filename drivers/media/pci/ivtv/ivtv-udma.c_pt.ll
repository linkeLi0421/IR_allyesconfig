; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-udma.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-udma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ivtv_dma_page_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ivtv_user_dma = type { %struct.mutex, i32, [704 x ptr], [704 x ptr], [704 x %struct.ivtv_sg_element], i32, i32, [704 x %struct.scatterlist] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ivtv_sg_element = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ivtv = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ivtv_options, %struct.v4l2_device, %struct.cx2341x_handler, %struct.anon.126, %struct.anon.127, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i8, i8, %struct.spinlock, %struct.mutex, [9 x i32], [9 x %struct.ivtv_stream], %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.work_struct, i32, i32, %struct.kthread_worker, ptr, %struct.kthread_work, %struct.spinlock, i32, i32, i32, i32, i32, %struct.ivtv_user_dma, %struct.timer_list, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data, [256 x %struct.ivtv_api_cache], %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, %struct.mutex, %struct.IR_i2c_init_data, i32, i32, i32, i32, [400 x %struct.v4l2_enc_idx_entry], i32, i32, i32, i8, i64, i64, [3 x i32], i32, i32, %struct.vbi_info, %struct.yuv_playback_info, i32, i32, i32, i32, i8, i32, %struct.v4l2_rect, %struct.v4l2_rect, ptr, ptr }
%struct.ivtv_options = type { [9 x i32], i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
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
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.ivtv_stream = type { %struct.video_device, ptr, ptr, i32, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, i16, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ivtv_queue = type { %struct.list_head, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ivtv_mailbox_data = type { ptr, i32, i8 }
%struct.ivtv_api_cache = type { i32, [16 x i32] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.vbi_info = type { i32, i8, i8, i32, i8, i8, [2 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_format, ptr, i32, i32, [256 x %struct.vbi_cc], i32, i8, i32, i8, %struct.vbi_vps, [36 x %struct.v4l2_sliced_vbi_data], [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], %struct.ivtv_buffer, i32 }
%struct.v4l2_format = type { i32, %union.anon.94 }
%union.anon.94 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.96, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.96 = type { i8 }
%struct.vbi_cc = type { [2 x i8], [2 x i8] }
%struct.vbi_vps = type { [5 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.ivtv_buffer = type { %struct.list_head, i32, i16, i16, ptr, i32, i32 }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, [8 x %struct.yuv_frame_info], %struct.yuv_frame_info, %struct.yuv_frame_info, ptr, i32, i32, i8, i8, %struct.v4l2_rect, i32, i32, i8 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }

@ivtv_debug = external dso_local local_unnamed_addr global i32, align 4
@ivtv_udma_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:  dma: ivtv_udma_setup, dst: 0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ivtv_udma_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/pci/ivtv/ivtv-udma.c\00", [61 x i8] zeroinitializer }, align 32
@ivtv_udma_setup._entry_ptr = internal global ptr @ivtv_udma_setup._entry, section ".printk_index", align 4
@ivtv_udma_setup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s:  warn: ivtv_udma_setup: SG_length %d page_count %d still full?\0A\00", [58 x i8] zeroinitializer }, align 32
@ivtv_udma_setup._entry_ptr.5 = internal global ptr @ivtv_udma_setup._entry.3, section ".printk_index", align 4
@ivtv_udma_setup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016%s:  warn: ivtv_udma_setup: Error %d page_count from %d bytes %d offset\0A\00", [53 x i8] zeroinitializer }, align 32
@ivtv_udma_setup._entry_ptr.8 = internal global ptr @ivtv_udma_setup._entry.6, section ".printk_index", align 4
@ivtv_udma_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016%s:  warn: failed to map user pages, returned %d instead of %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ivtv_udma_setup._entry_ptr.11 = internal global ptr @ivtv_udma_setup._entry.9, section ".printk_index", align 4
@ivtv_udma_unmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  info: ivtv_unmap_user_dma\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ivtv_udma_unmap\00", [16 x i8] zeroinitializer }, align 32
@ivtv_udma_unmap._entry_ptr = internal global ptr @ivtv_udma_unmap._entry, section ".printk_index", align 4
@ivtv_udma_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s:  dma: start UDMA\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ivtv_udma_start\00", [16 x i8] zeroinitializer }, align 32
@ivtv_udma_start._entry_ptr = internal global ptr @ivtv_udma_start._entry, section ".printk_index", align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 99, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 103, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 111, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 121, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 157, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private constant [38 x i8] c"../drivers/media/pci/ivtv/ivtv-udma.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 200, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 326, i32 6 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @ivtv_udma_setup._entry, ptr @ivtv_udma_setup._entry.3, ptr @ivtv_udma_setup._entry.6, ptr @ivtv_udma_setup._entry.9, ptr @ivtv_udma_setup._entry_ptr, ptr @ivtv_udma_setup._entry_ptr.11, ptr @ivtv_udma_setup._entry_ptr.5, ptr @ivtv_udma_setup._entry_ptr.8, ptr @ivtv_udma_start._entry, ptr @ivtv_udma_start._entry_ptr, ptr @ivtv_udma_unmap._entry, ptr @ivtv_udma_unmap._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_udma_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_udma_setup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_udma_setup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_udma_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_udma_unmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_udma_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ivtv_udma_get_page_info(ptr nocapture noundef %dma_page, i32 noundef %first, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %first, -4096
  %0 = ptrtoint ptr %dma_page to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %and, ptr %dma_page, align 4
  %and1 = and i32 %first, 4095
  %offset = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %dma_page, i32 0, i32 3
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and1, ptr %offset, align 4
  %add = add i32 %first, -1
  %sub = add i32 %add, %size
  %and2 = and i32 %sub, 4095
  %add3 = add nuw nsw i32 %and2, 1
  %tail = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %dma_page, i32 0, i32 4
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add3, ptr %tail, align 4
  %shr = lshr i32 %first, 12
  %first5 = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %dma_page, i32 0, i32 1
  %3 = ptrtoint ptr %first5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr, ptr %first5, align 4
  %shr9 = lshr i32 %sub, 12
  %last = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %dma_page, i32 0, i32 2
  %4 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr9, ptr %last, align 4
  %sub12 = sub nsw i32 1, %shr
  %add13 = add nsw i32 %sub12, %shr9
  %page_count = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %dma_page, i32 0, i32 5
  %5 = ptrtoint ptr %page_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add13, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr9, i32 %shr)
  %cmp = icmp eq i32 %shr9, %shr
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub17 = sub nsw i32 %add3, %and1
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub17, ptr %tail, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_udma_fill_sg_list(ptr nocapture noundef %dma, ptr nocapture noundef readonly %dma_page, i32 noundef %map_offset) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %map_offset)
  %cmp = icmp slt i32 %map_offset, 0
  br i1 %cmp, label %entry.cleanup91_crit_edge, label %if.end

entry.cleanup91_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup91

if.end:                                           ; preds = %entry
  %page_count = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %dma_page, i32 0, i32 5
  %0 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2156 = icmp sgt i32 %1, 0
  br i1 %cmp2156, label %for.body.lr.ph, label %if.end.cleanup91_crit_edge

if.end.cleanup91_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup91

for.body.lr.ph:                                   ; preds = %if.end
  %offset1 = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %dma_page, i32 0, i32 3
  %2 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset1, align 4
  %tail = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %dma_page, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %1, %for.body.lr.ph ], [ %56, %for.inc.for.body_crit_edge ]
  %map_offset.addr.0160 = phi i32 [ %map_offset, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %i.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %inc90, %for.inc.for.body_crit_edge ]
  %offset.0157 = phi i32 [ %3, %for.body.lr.ph ], [ 0, %for.inc.for.body_crit_edge ]
  %sub = add nsw i32 %4, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0159, i32 %sub)
  %cmp4 = icmp eq i32 %i.0159, %sub
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tail, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub5 = sub i32 4096, %offset.0157
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %sub5, %cond.false ]
  %arrayidx = getelementptr %struct.ivtv_user_dma, ptr %dma, i32 0, i32 2, i32 %map_offset.addr.0160
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %shr.i = lshr i32 %10, 30
  %11 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %cond.end.if.else_crit_edge [
    i32 2, label %cond.end.if.then7_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

cond.end.if.then7_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

is_highmem_idx.exit:                              ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %12 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp2.i.not = icmp eq i32 %12, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.then7_crit_edge, label %is_highmem_idx.exit.if.else_crit_edge

is_highmem_idx.exit.if.else_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

is_highmem_idx.exit.if.then7_crit_edge:           ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %is_highmem_idx.exit.if.then7_crit_edge, %cond.end.if.then7_crit_edge
  %arrayidx8 = getelementptr %struct.ivtv_user_dma, ptr %dma, i32 0, i32 3, i32 %map_offset.addr.0160
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx8, align 4
  %cmp9 = icmp eq ptr %14, null
  br i1 %cmp9, label %if.end14, label %if.then7.do.body20_crit_edge

if.then7.do.body20_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

if.end14:                                         ; preds = %if.then7
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call38.i.i.i, ptr %arrayidx8, align 4
  %cmp17 = icmp eq ptr %call38.i.i.i, null
  br i1 %cmp17, label %if.end14.cleanup91_crit_edge, label %if.end14.do.body20_crit_edge

if.end14.do.body20_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

if.end14.cleanup91_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup91

do.body20:                                        ; preds = %if.end14.do.body20_crit_edge, %if.then7.do.body20_crit_edge
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !44
  %and.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not = icmp eq i32 %and.i, 0
  br i1 %tobool30.not, label %if.then31, label %do.body20.do.end34_crit_edge

do.body20.do.end34_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

if.then31:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body20.do.end34_crit_edge
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %19 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %19, 512
  %20 = tail call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  %24 = tail call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i.i.i1.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 213
  %28 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %29, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %18, i32 noundef %or.i) #7
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %offset.0157
  %30 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx8, align 4
  %call40 = tail call ptr @page_address(ptr noundef %31) #7
  %add.ptr41 = getelementptr i8, ptr %call40, i32 %offset.0157
  %32 = call ptr @memcpy(ptr %add.ptr41, ptr %add.ptr, i32 %cond)
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %33 = tail call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i.i.i1.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 213
  %37 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %38, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  %39 = tail call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br i1 %tobool30.not, label %if.then57, label %do.end34.do.body59_crit_edge

do.end34.do.body59_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body59

if.then57:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body59

do.body59:                                        ; preds = %if.then57, %do.end34.do.body59_crit_edge
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !49
  %and.i.i = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool67.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool67.not, label %if.then71, label %do.body59.do.end74_crit_edge, !prof !50

do.body59.do.end74_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end74

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %do.body59.do.end74_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #7, !srcloc !51
  %44 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx8, align 4
  %46 = ptrtoint ptr %45 to i32
  %and2.i.i = and i32 %46, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !52

do.body5.i.i:                                     ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

do.body11.i.i:                                    ; preds = %do.end74
  %arrayidx79 = getelementptr %struct.ivtv_user_dma, ptr %dma, i32 0, i32 7, i32 %map_offset.addr.0160
  %47 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx79, align 4
  %and.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.body11.i.i.for.inc_crit_edge, label %do.body19.i.i, !prof !52

do.body11.i.i.for.inc_crit_edge:                  ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable

if.else:                                          ; preds = %is_highmem_idx.exit.if.else_crit_edge, %cond.end.if.else_crit_edge
  %49 = ptrtoint ptr %8 to i32
  %and2.i.i135 = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i135)
  %tobool.not.i.i136 = icmp eq i32 %and2.i.i135, 0
  br i1 %tobool.not.i.i136, label %do.body11.i.i140, label %do.body5.i.i137, !prof !52

do.body5.i.i137:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

do.body11.i.i140:                                 ; preds = %if.else
  %arrayidx83 = getelementptr %struct.ivtv_user_dma, ptr %dma, i32 0, i32 7, i32 %map_offset.addr.0160
  %50 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx83, align 4
  %and.i.i.i138 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i138)
  %tobool.i.not.i.i139 = icmp eq i32 %and.i.i.i138, 0
  br i1 %tobool.i.not.i.i139, label %do.body11.i.i140.for.inc_crit_edge, label %do.body19.i.i141, !prof !52

do.body11.i.i140.for.inc_crit_edge:               ; preds = %do.body11.i.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body19.i.i141:                                 ; preds = %do.body11.i.i140
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable

for.inc:                                          ; preds = %do.body11.i.i140.for.inc_crit_edge, %do.body11.i.i.for.inc_crit_edge
  %.sink164 = phi i32 [ %48, %do.body11.i.i.for.inc_crit_edge ], [ %51, %do.body11.i.i140.for.inc_crit_edge ]
  %.sink = phi i32 [ %46, %do.body11.i.i.for.inc_crit_edge ], [ %49, %do.body11.i.i140.for.inc_crit_edge ]
  %arrayidx83.sink = phi ptr [ %arrayidx79, %do.body11.i.i.for.inc_crit_edge ], [ %arrayidx83, %do.body11.i.i140.for.inc_crit_edge ]
  %and.i.i142 = and i32 %.sink164, 3
  %or.i.i143 = or i32 %and.i.i142, %.sink
  %52 = ptrtoint ptr %arrayidx83.sink to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i.i143, ptr %arrayidx83.sink, align 4
  %offset1.i144 = getelementptr %struct.ivtv_user_dma, ptr %dma, i32 0, i32 7, i32 %map_offset.addr.0160, i32 1
  %53 = ptrtoint ptr %offset1.i144 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %offset.0157, ptr %offset1.i144, align 4
  %length.i145 = getelementptr %struct.ivtv_user_dma, ptr %dma, i32 0, i32 7, i32 %map_offset.addr.0160, i32 2
  %54 = ptrtoint ptr %length.i145 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond, ptr %length.i145, align 4
  %inc = add i32 %map_offset.addr.0160, 1
  %inc90 = add nuw nsw i32 %i.0159, 1
  %55 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %page_count, align 4
  %cmp2 = icmp slt i32 %inc90, %56
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.cleanup91_crit_edge

for.inc.cleanup91_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup91

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup91:                                        ; preds = %for.inc.cleanup91_crit_edge, %if.end14.cleanup91_crit_edge, %if.end.cleanup91_crit_edge, %entry.cleanup91_crit_edge
  %retval.4 = phi i32 [ %map_offset, %entry.cleanup91_crit_edge ], [ %map_offset, %if.end.cleanup91_crit_edge ], [ %inc, %for.inc.cleanup91_crit_edge ], [ -1, %if.end14.cleanup91_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_udma_fill_sg_array(ptr noundef %dma, i32 noundef %buffer_offset, i32 noundef %buffer_offset_2, i32 noundef %split) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %SG_length = getelementptr inbounds %struct.ivtv_user_dma, ptr %dma, i32 0, i32 6
  %0 = ptrtoint ptr %SG_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SG_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp22 = icmp sgt i32 %1, 0
  br i1 %cmp22, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %SGlist = getelementptr inbounds %struct.ivtv_user_dma, ptr %dma, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %sg.026 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %SGlist, %for.body.preheader ]
  %i.025 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %split.addr.024 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %split, %for.body.preheader ]
  %buffer_offset.addr.023 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ %buffer_offset, %for.body.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.026, i32 0, i32 4
  %2 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_length, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx = getelementptr %struct.ivtv_user_dma, ptr %dma, i32 0, i32 4, i32 %i.025
  %size = getelementptr %struct.ivtv_user_dma, ptr %dma, i32 0, i32 4, i32 %i.025, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %size, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.026, i32 0, i32 3
  %6 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_address, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %buffer_offset.addr.023)
  %dst = getelementptr %struct.ivtv_user_dma, ptr %dma, i32 0, i32 4, i32 %i.025, i32 1
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  %12 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_length, align 4
  %add = add i32 %13, %buffer_offset.addr.023
  %sub = sub i32 %split.addr.024, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp7 = icmp eq i32 %sub, 0
  %spec.select = select i1 %cmp7, i32 %buffer_offset_2, i32 %add
  %inc = add nuw nsw i32 %i.025, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.026) #7
  %14 = ptrtoint ptr %SG_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %SG_length, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_udma_alloc(ptr noundef %itv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %SG_handle = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 5
  %0 = ptrtoint ptr %SG_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SG_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %SGarray = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %SGarray) #7
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !52

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #7
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %SGarray, i32 noundef 8448) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %SGarray to i32
  %sub.i = add i32 %9, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %8, i32 %shr.i
  %and.i = and i32 %9, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 8448, i32 noundef 1, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %10 = ptrtoint ptr %SG_handle to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %SG_handle, align 4
  %11 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %itv, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i, i32 noundef %retval.0.i, i32 noundef 8448, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %dma_map_single_attrs.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_udma_setup(ptr noundef %itv, i32 noundef %ivtv_dest_addr, ptr noundef %userbuf, i32 noundef %size_in_bytes) local_unnamed_addr #1 align 64 {
entry:
  %user_dma = alloca %struct.ivtv_dma_page_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %user_dma) #7
  %0 = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %user_dma, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %user_dma, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %user_dma, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %user_dma, i32 0, i32 4
  %4 = getelementptr inbounds %struct.ivtv_dma_page_info, ptr %user_dma, i32 0, i32 5
  %udma = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %5 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %ivtv_dest_addr) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %SG_length = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 6
  %6 = ptrtoint ptr %SG_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %SG_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %do.end3.do.body7_crit_edge

do.end3.do.body7_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

lor.lhs.false:                                    ; preds = %do.end3
  %page_count = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 1
  %8 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end24, label %lor.lhs.false.do.body7_crit_edge

lor.lhs.false.do.body7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

do.body7:                                         ; preds = %lor.lhs.false.do.body7_crit_edge, %do.end3.do.body7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %10 = load i32, ptr @ivtv_debug, align 4
  %and8 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.cleanup_crit_edge, label %do.end13

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %name16 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %page_count19 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 1
  %11 = ptrtoint ptr %page_count19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %page_count19, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name16, i32 noundef %7, i32 noundef %12) #10
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %userbuf to i32
  %and.i = and i32 %13, -4096
  %14 = ptrtoint ptr %user_dma to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.i, ptr %user_dma, align 4
  %and1.i = and i32 %13, 4095
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and1.i, ptr %2, align 4
  %add.i = add i32 %13, -1
  %sub.i = add i32 %add.i, %size_in_bytes
  %and2.i = and i32 %sub.i, 4095
  %add3.i = add nuw nsw i32 %and2.i, 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add3.i, ptr %3, align 4
  %shr.i = lshr i32 %13, 12
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr.i, ptr %0, align 4
  %shr9.i = lshr i32 %sub.i, 12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr9.i, ptr %1, align 4
  %sub12.i = sub nsw i32 1, %shr.i
  %add13.i = add nsw i32 %shr9.i, %sub12.i
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add13.i, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr9.i, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr9.i, %shr.i
  br i1 %cmp.i, label %if.then.i, label %if.end24.ivtv_udma_get_page_info.exit_crit_edge

if.end24.ivtv_udma_get_page_info.exit_crit_edge:  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %ivtv_udma_get_page_info.exit

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %sub17.i = sub nsw i32 %add3.i, %and1.i
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub17.i, ptr %3, align 4
  br label %ivtv_udma_get_page_info.exit

ivtv_udma_get_page_info.exit:                     ; preds = %if.then.i, %if.end24.ivtv_udma_get_page_info.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add13.i)
  %cmp = icmp slt i32 %add13.i, 1
  br i1 %cmp, label %do.body27, label %if.end43

do.body27:                                        ; preds = %ivtv_udma_get_page_info.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %21 = load i32, ptr @ivtv_debug, align 4
  %and28 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.cleanup_crit_edge, label %do.end33

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end33:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %name36 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name36, i32 noundef %add13.i, i32 noundef %size_in_bytes, i32 noundef %and1.i) #10
  br label %cleanup

if.end43:                                         ; preds = %ivtv_udma_get_page_info.exit
  %map = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 2
  %call46 = tail call i32 @pin_user_pages_unlocked(i32 noundef %and.i, i32 noundef %add13.i, ptr noundef %map, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i, i32 %call46)
  %cmp48.not = icmp eq i32 %add13.i, %call46
  br i1 %cmp48.not, label %if.end71, label %do.body50

do.body50:                                        ; preds = %if.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %22 = load i32, ptr @ivtv_debug, align 4
  %and51 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.do.end65_crit_edge, label %do.end56

do.body50.do.end65_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

do.end56:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %name59 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name59, i32 noundef %call46, i32 noundef %add13.i) #10
  br label %do.end65

do.end65:                                         ; preds = %do.end56, %do.body50.do.end65_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call46)
  %cmp66 = icmp sgt i32 %call46, -1
  br i1 %cmp66, label %if.then67, label %do.end65.cleanup_crit_edge

do.end65.cleanup_crit_edge:                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then67:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unpin_user_pages(ptr noundef %map, i32 noundef %call46) #7
  br label %cleanup

if.end71:                                         ; preds = %if.end43
  %23 = ptrtoint ptr %page_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add13.i, ptr %page_count, align 4
  %call74 = call i32 @ivtv_udma_fill_sg_list(ptr noundef %udma, ptr noundef nonnull %user_dma, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then76, label %if.end81

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %page_count, align 4
  tail call void @unpin_user_pages(ptr noundef %map, i32 noundef %25) #7
  %26 = ptrtoint ptr %page_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %page_count, align 4
  br label %cleanup

if.end81:                                         ; preds = %if.end71
  %27 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %itv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %SGlist = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 7
  %29 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %page_count, align 4
  %call84 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %SGlist, i32 noundef %30, i32 noundef 1, i32 noundef 0) #7
  %31 = ptrtoint ptr %SG_length to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call84, ptr %SG_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp22.i = icmp sgt i32 %call84, 0
  br i1 %cmp22.i, label %if.end81.for.body.i_crit_edge, label %if.end81.ivtv_udma_fill_sg_array.exit_crit_edge

if.end81.ivtv_udma_fill_sg_array.exit_crit_edge:  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %ivtv_udma_fill_sg_array.exit

if.end81.for.body.i_crit_edge:                    ; preds = %if.end81
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end81.for.body.i_crit_edge
  %sg.026.i = phi ptr [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %SGlist, %if.end81.for.body.i_crit_edge ]
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end81.for.body.i_crit_edge ]
  %split.addr.024.i = phi i32 [ %sub.i122, %for.body.i.for.body.i_crit_edge ], [ -1, %if.end81.for.body.i_crit_edge ]
  %buffer_offset.addr.023.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ %ivtv_dest_addr, %if.end81.for.body.i_crit_edge ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.026.i, i32 0, i32 4
  %32 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_length.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %arrayidx.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 59, i32 4, i32 %i.025.i
  %size.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 59, i32 4, i32 %i.025.i, i32 2
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %size.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.026.i, i32 0, i32 3
  %36 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_address.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %buffer_offset.addr.023.i) #7
  %dst.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 59, i32 4, i32 %i.025.i, i32 1
  %41 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %dst.i, align 4
  %42 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_length.i, align 4
  %add.i121 = add i32 %43, %buffer_offset.addr.023.i
  %sub.i122 = sub i32 %split.addr.024.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i122)
  %cmp7.i = icmp eq i32 %sub.i122, 0
  %spec.select.i = select i1 %cmp7.i, i32 0, i32 %add.i121
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.026.i) #7
  %44 = ptrtoint ptr %SG_length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %SG_length, align 4
  %cmp.i123 = icmp slt i32 %inc.i, %45
  br i1 %cmp.i123, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ivtv_udma_fill_sg_array.exit_crit_edge

for.body.i.ivtv_udma_fill_sg_array.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ivtv_udma_fill_sg_array.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ivtv_udma_fill_sg_array.exit:                     ; preds = %for.body.i.ivtv_udma_fill_sg_array.exit_crit_edge, %if.end81.ivtv_udma_fill_sg_array.exit_crit_edge
  %46 = ptrtoint ptr %SG_length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %SG_length, align 4
  %sub = add i32 %47, -1
  %size = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 59, i32 4, i32 %sub, i32 2
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size, align 4
  %or = or i32 %49, 128
  store i32 %or, ptr %size, align 4
  %50 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %itv, align 8
  %SG_handle.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 5
  %52 = ptrtoint ptr %SG_handle.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %SG_handle.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  tail call void @dma_sync_single_for_device(ptr noundef %dev.i.i, i32 noundef %53, i32 noundef 8448, i32 noundef 1) #7
  %54 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %ivtv_udma_fill_sg_array.exit, %if.then76, %if.then67, %do.end65.cleanup_crit_edge, %do.end33, %do.body27.cleanup_crit_edge, %do.end13, %do.body7.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then67 ], [ -12, %if.then76 ], [ %55, %ivtv_udma_fill_sg_array.exit ], [ -16, %do.end13 ], [ -16, %do.body7.cleanup_crit_edge ], [ -22, %do.end33 ], [ -22, %do.body27.cleanup_crit_edge ], [ %call46, %do.end65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %user_dma) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_unlocked(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_udma_unmap(ptr noundef %itv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %0 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %page_count = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 1
  %1 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end5

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %SG_length = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 6
  %3 = ptrtoint ptr %SG_length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %SG_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.end5.if.end11_crit_edge, label %if.then7

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %itv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %SGlist = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 7
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %SGlist, i32 noundef %2, i32 noundef 1, i32 noundef 0) #7
  %7 = ptrtoint ptr %SG_length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %SG_length, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end5.if.end11_crit_edge
  %8 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %itv, align 8
  %SG_handle.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 5
  %10 = ptrtoint ptr %SG_handle.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %SG_handle.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i, i32 noundef %11, i32 noundef 8448, i32 noundef 1) #7
  %map = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 2
  %12 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_count, align 4
  tail call void @unpin_user_pages(ptr noundef %map, i32 noundef %13) #7
  %14 = ptrtoint ptr %page_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %page_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end3.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_udma_free(ptr noundef %itv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %SG_handle = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 5
  %0 = ptrtoint ptr %SG_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SG_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %1, i32 noundef 8448, i32 noundef 1, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %SG_length = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 6
  %4 = ptrtoint ptr %SG_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %SG_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end.for.body.preheader_crit_edge, label %if.then5

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %itv, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %SGlist = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 7
  %page_count = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 1
  %8 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page_count, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev7, ptr noundef %SGlist, i32 noundef %9, i32 noundef 1, i32 noundef 0) #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then5, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.030 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 59, i32 3, i32 %i.030
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %if.then13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__free_pages(ptr noundef nonnull %11, i32 noundef 0) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 704
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_udma_start(ptr noundef %itv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %0 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %do.end

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name) #10
  br label %do.body3

do.body3:                                         ; preds = %do.end, %entry.do.body3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %SG_handle = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59, i32 5
  %1 = ptrtoint ptr %SG_handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %SG_handle, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %4 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_mem, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_mem, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #7, !srcloc !56
  %12 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_mem, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 0, ptr noundef %i_flags) #7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_flags) #7
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %i_flags) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_udma_prepare(ptr noundef %itv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_reg_lock = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 53
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_reg_lock) #7
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ivtv_udma_start(ptr noundef %itv)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %i_flags) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_reg_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !32, !33}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtv-udma.c", i32 99, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ivtv_udma_setup._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ivtv_udma_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ivtv/ivtv-udma.c", i32 103, i32 3}
!8 = !{ptr @ivtv_udma_setup._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ivtv_udma_setup._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/ivtv/ivtv-udma.c", i32 111, i32 3}
!12 = !{ptr @ivtv_udma_setup._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ivtv_udma_setup._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/ivtv/ivtv-udma.c", i32 121, i32 3}
!16 = !{ptr @ivtv_udma_setup._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ivtv_udma_setup._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/ivtv/ivtv-udma.c", i32 157, i32 2}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ivtv_udma_unmap._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @ivtv_udma_unmap._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/ivtv/ivtv-udma.c", i32 200, i32 2}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ivtv_udma_start._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ivtv_udma_start._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 778271, i64 778332}
!45 = !{i64 2155547448}
!46 = !{i64 2152161004}
!47 = !{i64 2152161211}
!48 = !{i64 2155550219}
!49 = !{i64 781003}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 781288}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2154399283, i64 2154399775, i64 2154399320, i64 2154399376, i64 2154399410, i64 2154399434, i64 2154399475, i64 2154399496, i64 2154399524, i64 2154399558}
!54 = !{i64 2154400893, i64 2154401385, i64 2154400930, i64 2154400986, i64 2154401020, i64 2154401044, i64 2154401085, i64 2154401106, i64 2154401134, i64 2154401168}
!55 = !{i64 2156790163}
!56 = !{i64 5751591}
!57 = !{i64 2156792106}
!58 = !{i64 5752009}
!59 = !{i64 2156793055}
!60 = !{i64 2156793637}
