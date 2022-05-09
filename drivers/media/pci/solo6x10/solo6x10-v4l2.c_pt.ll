; ModuleID = '/llk/IR_all_yes/drivers/media/pci/solo6x10/solo6x10-v4l2.c_pt.bc'
source_filename = "../drivers/media/pci/solo6x10/solo6x10-v4l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.solo_dev = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_device, %struct.gpio_chip, i8, i8, i8, i8, [2 x %struct.i2c_adapter], i32, %struct.mutex, i32, %struct.wait_queue_head, ptr, i32, i32, [4 x %struct.solo_p2m_dev], %struct.atomic_t, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, %struct.v4l2_ctrl_handler, [16 x ptr], i16, i8, i32, i16, i16, i16, i16, i16, i16, i8, %struct.spinlock, [2 x i32], ptr, ptr, %struct.atomic_t, i32, %struct.device, i32, %struct.bin_attribute, i32, ptr, %struct.wait_queue_head, ptr, i32, i32, %struct.vb2_queue, i32, ptr, %struct.mutex, %struct.spinlock, i32, %struct.list_head }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.115, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.115 = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.solo_p2m_dev = type { %struct.mutex, %struct.completion, i32, i32, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.solo_enc_dev = type { ptr, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.mutex, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, [45 x i8], [3 x i8], [131072 x i8], [64 x i8], i32, [1024 x i8], i32, i32, i32, i32, %struct.vb2_queue, %struct.list_head, i32, i32, ptr, i32, %struct.spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.91 }
%union.anon.91 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.93, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.93 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.85, %union.anon.86, i32, ptr, i32, %struct.anon.87, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.85 = type { i64 }
%union.anon.86 = type { ptr }
%struct.anon.87 = type { i32 }
%struct.solo_vb2_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.90, i32 }
%union.anon.90 = type { i32 }
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

@solo_v4l2_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&solo_dev->disp_thread_wait\00", [36 x i8] zeroinitializer }, align 32
@solo_v4l2_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&solo_dev->slock\00", [47 x i8] zeroinitializer }, align 32
@solo_v4l2_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&solo_dev->lock\00", [16 x i8] zeroinitializer }, align 32
@solo_v4l2_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @solo_v4l2_fops, i32 83886081, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"solo6x10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 4351, ptr @video_device_release, ptr @solo_v4l2_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@solo_v4l2_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"solo6x10_v4l2:659:(&solo_dev->disp_hdl)->_lock\00", [49 x i8] zeroinitializer }, align 32
@solo_motion_trace_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @solo_ctrl_ops, ptr null, i32 10025218, ptr @.str.17, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@solo_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @solo_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @solo_start_streaming, ptr @solo_stop_streaming, ptr @solo_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s (%i)\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"solo6x10\00", [23 x i8] zeroinitializer }, align 32
@solo_v4l2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 704, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Display as /dev/video%d with %d inputs (%d extended)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"solo_v4l2_init\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/pci/solo6x10/solo6x10-v4l2.c\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@solo_v4l2_init._entry_ptr = internal global ptr @solo_v4l2_init._entry, section ".printk_index", align 4
@solo_v4l2_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@solo_v4l2_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @solo_querycap, ptr @solo_enum_fmt_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @solo_get_fmt_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @solo_set_fmt_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @solo_try_fmt_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @solo_g_std, ptr @solo_s_std, ptr null, ptr @solo_enum_input, ptr @solo_get_input, ptr @solo_set_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Softlogic 6x10\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Camera %d\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Multi %d-up (cameras %d-%d)\00", [36 x i8] zeroinitializer }, align 32
@solo_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @solo_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Motion Detection Trace\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"solo6x10_disp\00", [18 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 646, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 647, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 648, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"solo_v4l2_template\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 617, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 659, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [23 x i8] c"solo_motion_trace_ctrl\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 632, i32 38 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"solo_video_qops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 363, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 699, i32 61 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 700, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 702, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"solo_v4l2_fops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 581, i32 42 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"solo_v4l2_ioctl_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 591, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 378, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 379, i32 49 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 419, i32 46 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 396, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"solo_ctrl_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 628, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 635, i32 10 }
@___asan_gen_.103 = private constant [46 x i8] c"../drivers/media/pci/solo6x10/solo6x10-v4l2.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 285, i32 22 }
@___asan_gen_.106 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1163, i32 7 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 57, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @solo_v4l2_init._entry, ptr @solo_v4l2_init._entry_ptr, ptr @solo_v4l2_init.__key, ptr @.str, ptr @solo_v4l2_init.__key.1, ptr @.str.2, ptr @solo_v4l2_init.__key.3, ptr @.str.4, ptr @solo_v4l2_template, ptr @solo_v4l2_init._key, ptr @.str.5, ptr @solo_motion_trace_ctrl, ptr @solo_video_qops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @solo_v4l2_fops, ptr @solo_v4l2_ioctl_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @solo_ctrl_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_v4l2_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_v4l2_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_v4l2_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_v4l2_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_v4l2_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_motion_trace_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_v4l2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_v4l2_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_v4l2_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_video_in_isr(ptr noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disp_thread_wait = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 32
  tail call void @__wake_up(ptr noundef %disp_thread_wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_set_video_type(ptr noundef %solo_dev, i1 noundef zeroext %is_50hz) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_buffers.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 60, i32 21
  %0 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nr_chans = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %2 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp36 = icmp sgt i32 %3, 0
  br i1 %cmp36, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 34, i32 %i.037
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %num_buffers.i33 = getelementptr inbounds %struct.solo_enc_dev, ptr %5, i32 0, i32 28, i32 21
  %6 = ptrtoint ptr %num_buffers.i33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i34.not = icmp eq i32 %7, 0
  br i1 %cmp.i34.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %cond = select i1 %is_50hz, i32 1073741824, i32 0
  %video_type = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 37
  %8 = ptrtoint ptr %video_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %video_type, align 8
  %call5 = tail call i32 @solo_disp_init(ptr noundef %solo_dev) #9
  %call6 = tail call i32 @solo_enc_init(ptr noundef %solo_dev) #9
  %call7 = tail call i32 @solo_tw28_init(ptr noundef %solo_dev) #9
  %9 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1038 = icmp sgt i32 %10, 0
  br i1 %cmp1038, label %for.end.for.body11_crit_edge, label %for.end.for.end16_crit_edge

for.end.for.end16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end16

for.end.for.body11_crit_edge:                     ; preds = %for.end
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.end.for.body11_crit_edge
  %i.139 = phi i32 [ %inc15, %for.body11.for.body11_crit_edge ], [ 0, %for.end.for.body11_crit_edge ]
  %arrayidx13 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 34, i32 %i.139
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx13, align 4
  tail call void @solo_update_mode(ptr noundef %12) #9
  %inc15 = add nuw nsw i32 %i.139, 1
  %13 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_chans, align 8
  %cmp10 = icmp slt i32 %inc15, %14
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.body11.for.end16_crit_edge

for.body11.for.end16_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end16

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11

for.end16:                                        ; preds = %for.body11.for.end16_crit_edge, %for.end.for.end16_crit_edge
  %.lcssa = phi i32 [ %10, %for.end.for.end16_crit_edge ], [ %14, %for.body11.for.end16_crit_edge ]
  %cur_disp_ch = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 31
  %15 = ptrtoint ptr %cur_disp_ch to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cur_disp_ch, align 4
  %conv.i = zext i8 %16 to i32
  %nr_ext.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 7
  %17 = ptrtoint ptr %nr_ext.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_ext.i, align 4
  %add.i = add i32 %18, %.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.not.i = icmp sgt i32 %add.i, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %for.end16.cleanup_crit_edge

for.end16.cleanup_crit_edge:                      ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #9
  %19 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %reg_base.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %20 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #9, !srcloc !65
  %22 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %23, i32 noundef 6, ptr noundef nonnull %val.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #9
  %erasing.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 29
  %24 = ptrtoint ptr %erasing.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %erasing.i.i, align 4
  %frame_blank.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 30
  %25 = ptrtoint ptr %frame_blank.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %frame_blank.i.i, align 8
  %26 = ptrtoint ptr %cur_disp_ch to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cur_disp_ch, align 4
  call fastcc void @solo_v4l2_ch(ptr noundef %solo_dev, i8 noundef zeroext %27, i32 noundef 0) #9
  call fastcc void @solo_v4l2_ch(ptr noundef %solo_dev, i8 noundef zeroext %16, i32 noundef 1) #9
  %28 = ptrtoint ptr %cur_disp_ch to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %16, ptr %cur_disp_ch, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %for.end16.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ -22, %for.end16.cleanup_crit_edge ], [ -16, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_disp_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_enc_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_tw28_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_update_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_v4l2_init(ptr noundef %solo_dev, i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i147 = alloca i16, align 2
  %val.i.i.i133 = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  %val.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disp_thread_wait = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 32
  tail call void @__init_waitqueue_head(ptr noundef %disp_thread_wait, ptr noundef nonnull @.str, ptr noundef nonnull @solo_v4l2_init.__key) #9
  %slock = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 64
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.2, ptr noundef nonnull @solo_v4l2_init.__key.1, i16 noundef signext 3) #9
  %lock = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 63
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @solo_v4l2_init.__key.3) #9
  %vidq_active = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 66
  %0 = ptrtoint ptr %vidq_active to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %vidq_active, ptr %vidq_active, align 4
  %prev.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 66, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vidq_active, ptr %prev.i, align 4
  %call7 = tail call ptr @video_device_alloc() #9
  %vfd = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 28
  %2 = ptrtoint ptr %vfd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %vfd, align 8
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call ptr @memcpy(ptr %call7, ptr @solo_v4l2_template, i32 1352)
  %v4l2_dev = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 10
  %4 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfd, align 8
  %v4l2_dev11 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %v4l2_dev11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %v4l2_dev, ptr %v4l2_dev11, align 4
  %vidq = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 60
  %7 = load ptr, ptr %vfd, align 8
  %queue = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vidq, ptr %queue, align 8
  %9 = load ptr, ptr %vfd, align 8
  %lock15 = getelementptr inbounds %struct.video_device, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %lock15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %lock, ptr %lock15, align 8
  %disp_hdl = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 33
  %call16 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %disp_hdl, i32 noundef 1, ptr noundef nonnull @solo_v4l2_init._key, ptr noundef nonnull @.str.5) #9
  %call18 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %disp_hdl, ptr noundef nonnull @solo_motion_trace_ctrl, ptr noundef null) #9
  %error = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 33, i32 9
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %if.end24, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end24:                                         ; preds = %if.end
  %13 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vfd, align 8
  %ctrl_handler = getelementptr inbounds %struct.video_device, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %disp_hdl, ptr %ctrl_handler, align 4
  %16 = load ptr, ptr %vfd, align 8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %16, i32 0, i32 5, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %solo_dev, ptr %driver_data.i.i, align 4
  %18 = ptrtoint ptr %vidq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %vidq, align 8
  %io_modes = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 60, i32 1
  %19 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 7, ptr %io_modes, align 4
  %ops = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 60, i32 7
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @solo_video_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 60, i32 8
  %21 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 8
  %drv_priv = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 60, i32 10
  %22 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %solo_dev, ptr %drv_priv, align 8
  %timestamp_flags = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 60, i32 13
  %23 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8192, ptr %timestamp_flags, align 4
  %gfp_flags = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 60, i32 14
  %24 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2052, ptr %gfp_flags, align 8
  %buf_struct_size = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 60, i32 12
  %25 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 744, ptr %buf_struct_size, align 8
  %lock38 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 60, i32 5
  %26 = ptrtoint ptr %lock38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %lock, ptr %lock38, align 4
  %27 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %solo_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %dev40 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 60, i32 2
  %29 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %dev40, align 8
  %call42 = tail call i32 @vb2_queue_init(ptr noundef %vidq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp = icmp slt i32 %call42, 0
  br i1 %cmp, label %if.end24.fail_crit_edge, label %for.cond.preheader

if.end24.fail_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

for.cond.preheader:                               ; preds = %if.end24
  %nr_chans = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %30 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp45169 = icmp sgt i32 %31, 0
  br i1 %cmp45169, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %nr_ext.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 7
  %reg_base.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %erasing.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 29
  %frame_blank.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 30
  %cur_disp_ch.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %32 = phi i32 [ %31, %for.body.lr.ph ], [ %60, %for.inc.for.body_crit_edge ]
  %i.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv.i = and i32 %i.0170, 255
  %33 = ptrtoint ptr %nr_ext.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_ext.i, align 4
  %add.i = add i32 %34, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.not.i = icmp sgt i32 %add.i, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %for.body.solo_v4l2_set_ch.exit_crit_edge

for.body.solo_v4l2_set_ch.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %solo_v4l2_set_ch.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %i.0170 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #9
  %35 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #9, !srcloc !65
  %38 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %39, i32 noundef 6, ptr noundef nonnull %val.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #9
  %40 = ptrtoint ptr %erasing.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %erasing.i.i, align 4
  %41 = ptrtoint ptr %frame_blank.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %frame_blank.i.i, align 8
  %42 = ptrtoint ptr %cur_disp_ch.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cur_disp_ch.i, align 4
  call fastcc void @solo_v4l2_ch(ptr noundef %solo_dev, i8 noundef zeroext %43, i32 noundef 0) #9
  call fastcc void @solo_v4l2_ch(ptr noundef %solo_dev, i8 noundef zeroext %conv, i32 noundef 1) #9
  %44 = ptrtoint ptr %cur_disp_ch.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv, ptr %cur_disp_ch.i, align 4
  br label %solo_v4l2_set_ch.exit

solo_v4l2_set_ch.exit:                            ; preds = %if.end.i, %for.body.solo_v4l2_set_ch.exit_crit_edge
  %45 = ptrtoint ptr %erasing.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %erasing.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i168 = icmp eq i32 %46, 0
  br i1 %tobool.not.i168, label %solo_v4l2_set_ch.exit.for.inc_crit_edge, label %if.end.i131.preheader

solo_v4l2_set_ch.exit.for.inc_crit_edge:          ; preds = %solo_v4l2_set_ch.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i131.preheader:                            ; preds = %solo_v4l2_set_ch.exit
  %47 = ptrtoint ptr %frame_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr177 = load i32, ptr %frame_blank.i.i, align 8
  br label %if.end.i131

if.end.i131:                                      ; preds = %erase_off.exit.if.end.i131_crit_edge, %if.end.i131.preheader
  %48 = phi i32 [ %.pr177, %if.end.i131.preheader ], [ %inc.i, %erase_off.exit.if.end.i131_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool1.not.i = icmp eq i32 %48, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i131.if.end3.i_crit_edge

if.end.i131.if.end3.i_crit_edge:                  ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #9
  %49 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -1, ptr %val.i.i, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !65
  %52 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %53, i32 noundef 6, ptr noundef nonnull %val.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #9
  %54 = ptrtoint ptr %frame_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr.i = load i32, ptr %frame_blank.i.i, align 8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i131.if.end3.i_crit_edge
  %55 = phi i32 [ %.pr.i, %if.then2.i ], [ %48, %if.end.i131.if.end3.i_crit_edge ]
  %inc.i = add i32 %55, 1
  %56 = ptrtoint ptr %frame_blank.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %inc.i, ptr %frame_blank.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %55)
  %cmp.i = icmp ugt i32 %55, 7
  br i1 %cmp.i, label %erase_off.exit.thread, label %erase_off.exit

erase_off.exit.thread:                            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %erasing.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %erasing.i.i, align 4
  br label %for.inc

erase_off.exit:                                   ; preds = %if.end3.i
  %58 = ptrtoint ptr %erasing.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr = load i32, ptr %erasing.i.i, align 4
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %erase_off.exit.for.inc_crit_edge, label %erase_off.exit.if.end.i131_crit_edge

erase_off.exit.if.end.i131_crit_edge:             ; preds = %erase_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i131

erase_off.exit.for.inc_crit_edge:                 ; preds = %erase_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %erase_off.exit.for.inc_crit_edge, %erase_off.exit.thread, %solo_v4l2_set_ch.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0170, 1
  %59 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_chans, align 8
  %cmp45 = icmp slt i32 %inc, %60
  br i1 %cmp45, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %31, %for.cond.preheader.for.end_crit_edge ], [ %60, %for.inc.for.end_crit_edge ]
  %nr_ext.i135 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 7
  %61 = ptrtoint ptr %nr_ext.i135 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_ext.i135, align 4
  %add.i136 = add i32 %62, %.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i136)
  %cmp.not.i137 = icmp sgt i32 %add.i136, 0
  br i1 %cmp.not.i137, label %if.end.i144, label %for.end.solo_v4l2_set_ch.exit146_crit_edge

for.end.solo_v4l2_set_ch.exit146_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %solo_v4l2_set_ch.exit146

if.end.i144:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i133) #9
  %63 = ptrtoint ptr %val.i.i.i133 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -1, ptr %val.i.i.i133, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @arm_heavy_mb() #9
  %reg_base.i.i.i138 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %64 = ptrtoint ptr %reg_base.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_base.i.i.i138, align 4
  %add.ptr.i.i.i139 = getelementptr i8, ptr %65, i32 788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i139, i32 16777216) #9, !srcloc !65
  %66 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i140 = call i32 @pci_read_config_word(ptr noundef %67, i32 noundef 6, ptr noundef nonnull %val.i.i.i133) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i133) #9
  %erasing.i.i141 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 29
  %68 = ptrtoint ptr %erasing.i.i141 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %erasing.i.i141, align 4
  %frame_blank.i.i142 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 30
  %69 = ptrtoint ptr %frame_blank.i.i142 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %frame_blank.i.i142, align 8
  %cur_disp_ch.i143 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 31
  %70 = ptrtoint ptr %cur_disp_ch.i143 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %cur_disp_ch.i143, align 4
  call fastcc void @solo_v4l2_ch(ptr noundef %solo_dev, i8 noundef zeroext %71, i32 noundef 0) #9
  call fastcc void @solo_v4l2_ch(ptr noundef %solo_dev, i8 noundef zeroext 0, i32 noundef 1) #9
  %72 = ptrtoint ptr %cur_disp_ch.i143 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %cur_disp_ch.i143, align 4
  br label %solo_v4l2_set_ch.exit146

solo_v4l2_set_ch.exit146:                         ; preds = %if.end.i144, %for.end.solo_v4l2_set_ch.exit146_crit_edge
  %erasing.i148 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 29
  %73 = ptrtoint ptr %erasing.i148 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %erasing.i148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i149172 = icmp eq i32 %74, 0
  br i1 %tobool.not.i149172, label %solo_v4l2_set_ch.exit146.while.end54_crit_edge, label %if.end.i152.lr.ph

solo_v4l2_set_ch.exit146.while.end54_crit_edge:   ; preds = %solo_v4l2_set_ch.exit146
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end54

if.end.i152.lr.ph:                                ; preds = %solo_v4l2_set_ch.exit146
  %frame_blank.i150 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 30
  %reg_base.i.i153 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %75 = ptrtoint ptr %frame_blank.i150 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr178 = load i32, ptr %frame_blank.i150, align 8
  br label %if.end.i152

if.end.i152:                                      ; preds = %erase_off.exit163.if.end.i152_crit_edge, %if.end.i152.lr.ph
  %76 = phi i32 [ %.pr178, %if.end.i152.lr.ph ], [ %inc.i158, %erase_off.exit163.if.end.i152_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool1.not.i151 = icmp eq i32 %76, 0
  br i1 %tobool1.not.i151, label %if.then2.i157, label %if.end.i152.if.end3.i160_crit_edge

if.end.i152.if.end3.i160_crit_edge:               ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i160

if.then2.i157:                                    ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i147) #9
  %77 = ptrtoint ptr %val.i.i147 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %val.i.i147, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %reg_base.i.i153 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_base.i.i153, align 4
  %add.ptr.i.i154 = getelementptr i8, ptr %79, i32 788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i154, i32 0) #9, !srcloc !65
  %80 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %solo_dev, align 8
  %call.i.i155 = call i32 @pci_read_config_word(ptr noundef %81, i32 noundef 6, ptr noundef nonnull %val.i.i147) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i147) #9
  %82 = ptrtoint ptr %frame_blank.i150 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr.i156 = load i32, ptr %frame_blank.i150, align 8
  br label %if.end3.i160

if.end3.i160:                                     ; preds = %if.then2.i157, %if.end.i152.if.end3.i160_crit_edge
  %83 = phi i32 [ %.pr.i156, %if.then2.i157 ], [ %76, %if.end.i152.if.end3.i160_crit_edge ]
  %inc.i158 = add i32 %83, 1
  %84 = ptrtoint ptr %frame_blank.i150 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %inc.i158, ptr %frame_blank.i150, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %83)
  %cmp.i159 = icmp ugt i32 %83, 7
  br i1 %cmp.i159, label %erase_off.exit163.thread, label %erase_off.exit163

erase_off.exit163.thread:                         ; preds = %if.end3.i160
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %erasing.i148 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %erasing.i148, align 4
  br label %while.end54

erase_off.exit163:                                ; preds = %if.end3.i160
  %86 = ptrtoint ptr %erasing.i148 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pr175 = load i32, ptr %erasing.i148, align 4
  %tobool.not.i149 = icmp eq i32 %.pr175, 0
  br i1 %tobool.not.i149, label %erase_off.exit163.while.end54_crit_edge, label %erase_off.exit163.if.end.i152_crit_edge

erase_off.exit163.if.end.i152_crit_edge:          ; preds = %erase_off.exit163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i152

erase_off.exit163.while.end54_crit_edge:          ; preds = %erase_off.exit163
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end54

while.end54:                                      ; preds = %erase_off.exit163.while.end54_crit_edge, %erase_off.exit163.thread, %solo_v4l2_set_ch.exit146.while.end54_crit_edge
  %87 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %vfd, align 8
  %fops.i = getelementptr inbounds %struct.video_device, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fops.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %call.i = call i32 @__video_register_device(ptr noundef %88, i32 noundef 0, i32 noundef %nr, i32 noundef 1, ptr noundef %92) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp57 = icmp slt i32 %call.i, 0
  br i1 %cmp57, label %while.end54.fail_crit_edge, label %if.end60

while.end54.fail_crit_edge:                       ; preds = %while.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end60:                                         ; preds = %while.end54
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vfd, align 8
  %name = getelementptr inbounds %struct.video_device, ptr %94, i32 0, i32 12
  %num = getelementptr inbounds %struct.video_device, ptr %94, i32 0, i32 16
  %95 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %num, align 4
  %conv63 = zext i16 %96 to i32
  %call64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %conv63)
  %97 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %solo_dev, align 8
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %99 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vfd, align 8
  %num71 = getelementptr inbounds %struct.video_device, ptr %100, i32 0, i32 16
  %101 = ptrtoint ptr %num71 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %num71, align 4
  %conv72 = zext i16 %102 to i32
  %103 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %nr_chans, align 8
  %105 = ptrtoint ptr %nr_ext.i135 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nr_ext.i135, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev69, ptr noundef nonnull @.str.8, i32 noundef %conv72, i32 noundef %104, i32 noundef %106) #12
  br label %cleanup

fail:                                             ; preds = %while.end54.fail_crit_edge, %if.end24.fail_crit_edge, %if.end.fail_crit_edge
  %ret.0 = phi i32 [ %call42, %if.end24.fail_crit_edge ], [ %call.i, %while.end54.fail_crit_edge ], [ %12, %if.end.fail_crit_edge ]
  %107 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %vfd, align 8
  call void @video_device_release(ptr noundef %108) #9
  call void @v4l2_ctrl_handler_free(ptr noundef %disp_hdl) #9
  %109 = ptrtoint ptr %vfd to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %vfd, align 8
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end60, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %if.end60 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_v4l2_exit(ptr noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vfd = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 28
  %0 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfd, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @video_unregister_device(ptr noundef nonnull %1) #9
  %disp_hdl = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 33
  tail call void @v4l2_ctrl_handler_free(ptr noundef %disp_hdl) #9
  %2 = ptrtoint ptr %vfd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vfd, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @solo_v4l2_ch(ptr noundef readonly %solo_dev, i8 noundef zeroext %ch, i32 noundef %on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ch to i32
  %nr_chans = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %0 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp sgt i32 %1, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %cond.false5, label %if.then.cond.end7_crit_edge

if.then.cond.end7_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end7

cond.false5:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %video_hsize = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 38
  %2 = ptrtoint ptr %video_hsize to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %video_hsize, align 4
  %conv2 = zext i16 %3 to i32
  %video_vsize = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 39
  %4 = ptrtoint ptr %video_vsize to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %video_vsize, align 2
  %conv6 = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv6, 1
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false5, %if.then.cond.end7_crit_edge
  %cond13 = phi i32 [ %conv2, %cond.false5 ], [ 0, %if.then.cond.end7_crit_edge ]
  %cond8 = phi i32 [ %mul, %cond.false5 ], [ 0, %if.then.cond.end7_crit_edge ]
  %video_hsize9 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 38
  %6 = ptrtoint ptr %video_hsize9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %video_hsize9, align 4
  %conv10 = zext i16 %7 to i32
  %video_vsize11 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 39
  %8 = ptrtoint ptr %video_vsize11 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %video_vsize11, align 2
  %conv12 = zext i16 %9 to i32
  %mul13 = shl nuw nsw i32 %conv12, 1
  %not.tobool.not = xor i1 %tobool.not, true
  %cond15 = zext i1 %not.tobool.not to i32
  tail call fastcc void @solo_win_setup(ptr noundef %solo_dev, i8 noundef zeroext %ch, i32 noundef %cond13, i32 noundef %cond8, i32 noundef %conv10, i32 noundef %mul13, i32 noundef %cond15)
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr_ext = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 7
  %10 = ptrtoint ptr %nr_ext to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_ext, align 4
  %add = add i32 %11, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp18.not = icmp sgt i32 %add, %conv
  br i1 %cmp18.not, label %if.end21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %12 = trunc i32 %1 to i8
  %conv24 = sub i8 %ch, %12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv24)
  %cmp26 = icmp ult i8 %conv24, 4
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end21
  %mul.i = shl nuw nsw i8 %conv24, 2
  %conv2.i = zext i8 %mul.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv2.i)
  %cmp.not.i = icmp sgt i32 %1, %conv2.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not.i = icmp eq i32 %on, 0
  br i1 %tobool.not.i, label %for.body.lr.ph.i, label %if.end17.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %add.i = add nuw nsw i32 %conv2.i, 4
  %video_hsize.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 38
  %video_vsize.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 39
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.097.i = phi i8 [ %mul.i, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %video_hsize.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %video_hsize.i, align 4
  %conv9.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %video_vsize.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %video_vsize.i, align 2
  %conv10.i = zext i16 %16 to i32
  %mul11.i = shl nuw nsw i32 %conv10.i, 1
  tail call fastcc void @solo_win_setup(ptr noundef %solo_dev, i8 noundef zeroext %i.097.i, i32 noundef %conv9.i, i32 noundef %mul11.i, i32 noundef %conv9.i, i32 noundef %mul11.i, i32 noundef 0) #9
  %inc.i = add i8 %i.097.i, 1
  %conv5.i = zext i8 %inc.i to i32
  %cmp7.i = icmp ugt i32 %add.i, %conv5.i
  br i1 %cmp7.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %video_hsize18.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 38
  %17 = ptrtoint ptr %video_hsize18.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %video_hsize18.i, align 4
  %19 = lshr i16 %18, 1
  %div.i = zext i16 %19 to i32
  %video_vsize20.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 39
  %20 = ptrtoint ptr %video_vsize20.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %video_vsize20.i, align 2
  %conv21.i = zext i16 %21 to i32
  tail call fastcc void @solo_win_setup(ptr noundef %solo_dev, i8 noundef zeroext %mul.i, i32 noundef 0, i32 noundef 0, i32 noundef %div.i, i32 noundef %conv21.i, i32 noundef 3) #9
  %add25.i = or i8 %mul.i, 1
  %22 = ptrtoint ptr %video_hsize18.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %video_hsize18.i, align 4
  %conv28.i = zext i16 %23 to i32
  %div2993.i = lshr i32 %conv28.i, 1
  %24 = ptrtoint ptr %video_vsize20.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %video_vsize20.i, align 2
  %conv33.i = zext i16 %25 to i32
  tail call fastcc void @solo_win_setup(ptr noundef %solo_dev, i8 noundef zeroext %add25.i, i32 noundef %div2993.i, i32 noundef 0, i32 noundef %conv28.i, i32 noundef %conv33.i, i32 noundef 3) #9
  %add37.i = or i8 %mul.i, 2
  %26 = ptrtoint ptr %video_vsize20.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %video_vsize20.i, align 2
  %conv40.i = zext i16 %27 to i32
  %mul41.i = shl nuw nsw i32 %conv40.i, 1
  %28 = ptrtoint ptr %video_hsize18.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %video_hsize18.i, align 4
  %30 = lshr i16 %29, 1
  %div45.i = zext i16 %30 to i32
  tail call fastcc void @solo_win_setup(ptr noundef %solo_dev, i8 noundef zeroext %add37.i, i32 noundef 0, i32 noundef %conv40.i, i32 noundef %div45.i, i32 noundef %mul41.i, i32 noundef 3) #9
  %add50.i = or i8 %mul.i, 3
  %31 = ptrtoint ptr %video_hsize18.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %video_hsize18.i, align 4
  %conv53.i = zext i16 %32 to i32
  %div5494.i = lshr i32 %conv53.i, 1
  %33 = ptrtoint ptr %video_vsize20.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %video_vsize20.i, align 2
  %conv56.i = zext i16 %34 to i32
  %mul57.i = shl nuw nsw i32 %conv56.i, 1
  tail call fastcc void @solo_win_setup(ptr noundef %solo_dev, i8 noundef zeroext %add50.i, i32 noundef %div5494.i, i32 noundef %conv56.i, i32 noundef %conv53.i, i32 noundef %mul57.i, i32 noundef 3) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not.i1 = icmp eq i32 %on, 0
  br i1 %tobool.not.i1, label %for.cond.preheader.i, label %if.end.i9

for.cond.preheader.i:                             ; preds = %if.end29
  %video_hsize.i2 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 38
  %video_vsize.i3 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 39
  br label %for.body.i7

for.body.i7:                                      ; preds = %for.body.i7.for.body.i7_crit_edge, %for.cond.preheader.i
  %i.04.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i6, %for.body.i7.for.body.i7_crit_edge ]
  %conv.i = trunc i32 %i.04.i to i8
  %35 = ptrtoint ptr %video_hsize.i2 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %video_hsize.i2, align 4
  %conv1.i = zext i16 %36 to i32
  %37 = ptrtoint ptr %video_vsize.i3 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %video_vsize.i3, align 2
  %conv2.i4 = zext i16 %38 to i32
  %mul.i5 = shl nuw nsw i32 %conv2.i4, 1
  tail call fastcc void @solo_win_setup(ptr noundef %solo_dev, i8 noundef zeroext %conv.i, i32 noundef %conv1.i, i32 noundef %mul.i5, i32 noundef %conv1.i, i32 noundef %mul.i5, i32 noundef 0) #9
  %inc.i6 = add nuw nsw i32 %i.04.i, 1
  %exitcond6.not.i = icmp eq i32 %inc.i6, 16
  br i1 %exitcond6.not.i, label %for.body.i7.cleanup_crit_edge, label %for.body.i7.for.body.i7_crit_edge

for.body.i7.for.body.i7_crit_edge:                ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i7

for.body.i7.cleanup_crit_edge:                    ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i9:                                        ; preds = %if.end29
  %video_vsize8.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 39
  %39 = ptrtoint ptr %video_vsize8.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %video_vsize8.i, align 2
  %41 = lshr i16 %40, 1
  %div.i8 = zext i16 %41 to i32
  %video_hsize11.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 38
  %42 = ptrtoint ptr %video_hsize11.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %video_hsize11.i, align 4
  %44 = lshr i16 %43, 2
  %div13.i = zext i16 %44 to i32
  %mul23.i = shl nuw nsw i32 %div13.i, 1
  %mul29.i = mul nuw nsw i32 %div13.i, 3
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %if.end.i9
  %i.13.i = phi i32 [ 0, %if.end.i9 ], [ %inc39.i, %for.body17.i.for.body17.i_crit_edge ]
  %sy.02.i = phi i32 [ 0, %if.end.i9 ], [ %add.i10, %for.body17.i.for.body17.i_crit_edge ]
  %i.1.tr.i = trunc i32 %i.13.i to i8
  %conv19.i = shl i8 %i.1.tr.i, 2
  %add.i10 = add nuw nsw i32 %sy.02.i, %div.i8
  tail call fastcc void @solo_win_setup(ptr noundef %solo_dev, i8 noundef zeroext %conv19.i, i32 noundef 0, i32 noundef %sy.02.i, i32 noundef %div13.i, i32 noundef %add.i10, i32 noundef 5) #9
  %conv22.i = or i8 %conv19.i, 1
  tail call fastcc void @solo_win_setup(ptr noundef %solo_dev, i8 noundef zeroext %conv22.i, i32 noundef %div13.i, i32 noundef %sy.02.i, i32 noundef %mul23.i, i32 noundef %add.i10, i32 noundef 5) #9
  %conv27.i = or i8 %conv19.i, 2
  tail call fastcc void @solo_win_setup(ptr noundef %solo_dev, i8 noundef zeroext %conv27.i, i32 noundef %mul23.i, i32 noundef %sy.02.i, i32 noundef %mul29.i, i32 noundef %add.i10, i32 noundef 5) #9
  %conv33.i11 = or i8 %conv19.i, 3
  %45 = ptrtoint ptr %video_hsize11.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %video_hsize11.i, align 4
  %conv36.i = zext i16 %46 to i32
  tail call fastcc void @solo_win_setup(ptr noundef %solo_dev, i8 noundef zeroext %conv33.i11, i32 noundef %mul29.i, i32 noundef %sy.02.i, i32 noundef %conv36.i, i32 noundef %add.i10, i32 noundef 5) #9
  %inc39.i = add nuw nsw i32 %i.13.i, 1
  %exitcond.not.i = icmp eq i32 %inc39.i, 4
  br i1 %exitcond.not.i, label %for.body17.i.cleanup_crit_edge, label %for.body17.i.for.body17.i_crit_edge

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17.i

for.body17.i.cleanup_crit_edge:                   ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body17.i.cleanup_crit_edge, %for.body.i7.cleanup_crit_edge, %if.end17.i, %for.body.i.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @solo_win_setup(ptr nocapture noundef readonly %solo_dev, i8 noundef zeroext %ch, i32 noundef %sx, i32 noundef %sy, i32 noundef %ex, i32 noundef %ey, i32 noundef %scale) unnamed_addr #0 align 64 {
entry:
  %val.i20 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ch to i32
  %nr_chans = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %0 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp sgt i32 %1, %conv
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 384
  %shl = shl i32 %conv, 28
  %shl4 = shl i32 %sx, 12
  %or = or i32 %shl, %shl4
  %or6 = or i32 %or, %ex
  %shl7 = shl i32 %scale, 24
  %or8 = or i32 %or6, %shl7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val.i, align 2, !annotation !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %or8) #9
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #9, !srcloc !65
  %6 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %7, i32 noundef 6, ptr noundef nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #9
  %add11 = add nuw nsw i32 %mul, 448
  %shl12 = shl i32 %sy, 12
  %or14 = or i32 %shl12, %ey
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i20) #9
  %8 = ptrtoint ptr %val.i20 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %val.i20, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @arm_heavy_mb() #9
  %9 = call i32 @llvm.bswap.i32(i32 %or14) #9
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %11, i32 %add11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %9) #9, !srcloc !65
  %12 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %solo_dev, align 8
  %call.i23 = call i32 @pci_read_config_word(ptr noundef %13, i32 noundef 6, ptr noundef nonnull %val.i20) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i20) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.7, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.13, i32 noundef 32) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i.i)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @solo_enum_fmt_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1498831189, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_get_fmt_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %video_hsize = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %video_hsize to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %video_hsize, align 4
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %fmt, align 4
  %video_vsize = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 39
  %5 = ptrtoint ptr %video_vsize to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %video_vsize, align 2
  %conv1 = zext i16 %6 to i32
  %mul = shl nuw nsw i32 %conv1, 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %height, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1498831189, ptr %pixelformat, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %field, align 4
  %10 = load i16, ptr %video_hsize, align 4
  %conv3 = zext i16 %10 to i32
  %11 = load i16, ptr %video_vsize, align 2
  %conv6 = zext i16 %11 to i32
  %mul4 = shl nuw nsw i32 %conv3, 2
  %mul8 = mul i32 %mul4, %conv6
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %12 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul8, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %colorspace, align 4
  %14 = load i16, ptr %video_hsize, align 4
  %conv10 = zext i16 %14 to i32
  %mul11 = shl nuw nsw i32 %conv10, 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul11, ptr %bytesperline, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_set_fmt_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 60, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1498831189, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 1498831189
  br i1 %cmp.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %video_hsize.i = getelementptr inbounds %struct.solo_dev, ptr %7, i32 0, i32 38
  %8 = ptrtoint ptr %video_hsize.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %video_hsize.i, align 4
  %conv.i = zext i16 %9 to i32
  %video_vsize.i = getelementptr inbounds %struct.solo_dev, ptr %7, i32 0, i32 39
  %10 = ptrtoint ptr %video_vsize.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %video_vsize.i, align 2
  %conv1.i = zext i16 %11 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %mul3.i = mul i32 %mul.i, %conv1.i
  %12 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %fmt.i, align 4
  %13 = load i16, ptr %video_vsize.i, align 2
  %conv8.i = zext i16 %13 to i32
  %mul9.i = shl nuw nsw i32 %conv8.i, 1
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul9.i, ptr %height.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul3.i, ptr %sizeimage.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %field.i, align 4
  %17 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1498831189, ptr %pixelformat.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %colorspace.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_try_fmt_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1498831189, i32 %1)
  %cmp.not = icmp eq i32 %1, 1498831189
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %video_hsize = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 38
  %4 = ptrtoint ptr %video_hsize to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %video_hsize, align 4
  %conv = zext i16 %5 to i32
  %video_vsize = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 39
  %6 = ptrtoint ptr %video_vsize to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %video_vsize, align 2
  %conv1 = zext i16 %7 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %mul3 = mul i32 %mul, %conv1
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %fmt, align 4
  %9 = load i16, ptr %video_vsize, align 2
  %conv8 = zext i16 %9 to i32
  %mul9 = shl nuw nsw i32 %conv8, 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul9, ptr %height, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul3, ptr %sizeimage, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %field, align 4
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1498831189, ptr %pixelformat, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %video_type = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %video_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %video_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %. = select i1 %cmp, i64 4096, i64 255
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %., ptr %i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %and = and i64 %std, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool = icmp ne i64 %and, 0
  %call1 = tail call i32 @solo_set_video_type(ptr noundef %1, i1 noundef zeroext %tobool)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 8
  %nr_chans = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub.i = sub i32 %3, %5
  %nr_ext.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %nr_ext.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_ext.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %7)
  %cmp.not.i = icmp slt i32 %sub.i, %7
  br i1 %cmp.not.i, label %solo_enum_ext_input.exit, label %if.then.cleanup11_crit_edge

if.then.cleanup11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup11

solo_enum_ext_input.exit:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp1.i = icmp eq i32 %sub.i, 4
  %cond.i = select i1 %cmp1.i, i32 16, i32 4
  %and.i = shl i32 %sub.i, 2
  %shl.i = and i32 %and.i, 12
  %name.i = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %add.i = or i32 %shl.i, 1
  %add2.i = add nuw nsw i32 %shl.i, %cond.i
  %call.i23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.16, i32 noundef %cond.i, i32 noundef %add.i, i32 noundef %add2.i) #9
  br label %if.end10

if.else:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %add = add nuw i32 %3, 1
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.15, i32 noundef %add)
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input, align 8
  %conv = trunc i32 %9 to i8
  %call7 = tail call i32 @tw28_get_video_status(ptr noundef %1, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 6
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %status, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.else.if.end10_crit_edge, %solo_enum_ext_input.exit
  %type = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %type, align 4
  %vfd = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 28
  %12 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vfd, align 8
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tvnorms, align 8
  %std = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 5
  %16 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %std, align 8
  br label %cleanup11

cleanup11:                                        ; preds = %if.end10, %if.then.cleanup11_crit_edge
  %retval.1 = phi i32 [ 0, %if.end10 ], [ -22, %if.then.cleanup11_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_get_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cur_disp_ch = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %cur_disp_ch to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cur_disp_ch, align 4
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %index, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_set_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %index) #0 align 64 {
entry:
  %val.i.i = alloca i16, align 2
  %val.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %conv.i = and i32 %index, 255
  %nr_chans.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nr_chans.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_chans.i, align 8
  %nr_ext.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %nr_ext.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_ext.i, align 4
  %add.i = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.not.i = icmp sgt i32 %add.i, %conv.i
  br i1 %cmp.not.i, label %solo_v4l2_set_ch.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

solo_v4l2_set_ch.exit:                            ; preds = %entry
  %conv = trunc i32 %index to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #9
  %6 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %reg_base.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #9, !srcloc !65
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %10, i32 noundef 6, ptr noundef nonnull %val.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #9
  %erasing.i.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 29
  %11 = ptrtoint ptr %erasing.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %erasing.i.i, align 4
  %frame_blank.i.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 30
  %12 = ptrtoint ptr %frame_blank.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %frame_blank.i.i, align 8
  %cur_disp_ch.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 31
  %13 = ptrtoint ptr %cur_disp_ch.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cur_disp_ch.i, align 4
  call fastcc void @solo_v4l2_ch(ptr noundef %1, i8 noundef zeroext %14, i32 noundef 0) #9
  call fastcc void @solo_v4l2_ch(ptr noundef %1, i8 noundef zeroext %conv, i32 noundef 1) #9
  %15 = ptrtoint ptr %cur_disp_ch.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %cur_disp_ch.i, align 4
  %16 = ptrtoint ptr %erasing.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %erasing.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i13 = icmp eq i32 %17, 0
  br i1 %tobool.not.i13, label %solo_v4l2_set_ch.exit.if.end_crit_edge, label %if.end.i6.lr.ph

solo_v4l2_set_ch.exit.if.end_crit_edge:           ; preds = %solo_v4l2_set_ch.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i6.lr.ph:                                  ; preds = %solo_v4l2_set_ch.exit
  %18 = ptrtoint ptr %frame_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr15 = load i32, ptr %frame_blank.i.i, align 8
  br label %if.end.i6

if.end.i6:                                        ; preds = %erase_off.exit.if.end.i6_crit_edge, %if.end.i6.lr.ph
  %19 = phi i32 [ %.pr15, %if.end.i6.lr.ph ], [ %inc.i, %erase_off.exit.if.end.i6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not.i = icmp eq i32 %19, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i6.if.end3.i_crit_edge

if.end.i6.if.end3.i_crit_edge:                    ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #9
  %20 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %val.i.i, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !65
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %24, i32 noundef 6, ptr noundef nonnull %val.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #9
  %25 = ptrtoint ptr %frame_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr.i = load i32, ptr %frame_blank.i.i, align 8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i6.if.end3.i_crit_edge
  %26 = phi i32 [ %.pr.i, %if.then2.i ], [ %19, %if.end.i6.if.end3.i_crit_edge ]
  %inc.i = add i32 %26, 1
  %27 = ptrtoint ptr %frame_blank.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %inc.i, ptr %frame_blank.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %26)
  %cmp.i = icmp ugt i32 %26, 7
  br i1 %cmp.i, label %erase_off.exit.thread, label %erase_off.exit

erase_off.exit.thread:                            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %erasing.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %erasing.i.i, align 4
  br label %if.end

erase_off.exit:                                   ; preds = %if.end3.i
  %29 = ptrtoint ptr %erasing.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load i32, ptr %erasing.i.i, align 4
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %erase_off.exit.if.end_crit_edge, label %erase_off.exit.if.end.i6_crit_edge

erase_off.exit.if.end.i6_crit_edge:               ; preds = %erase_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i6

erase_off.exit.if.end_crit_edge:                  ; preds = %erase_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %erase_off.exit.if.end_crit_edge, %erase_off.exit.thread, %solo_v4l2_set_ch.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i10 = phi i32 [ -22, %entry.if.end_crit_edge ], [ 0, %solo_v4l2_set_ch.exit.if.end_crit_edge ], [ 0, %erase_off.exit.thread ], [ 0, %erase_off.exit.if.end_crit_edge ]
  ret i32 %retval.0.i10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tw28_get_video_status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %val.i14 = alloca i16, align 2
  %val.i10 = alloca i16, align 2
  %val.i6 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4140
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10025218, i32 %3)
  %cond = icmp eq i32 %3, 10025218
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #9
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %val.i, align 2, !annotation !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %reg_base.i = getelementptr i8, ptr %1, i32 -4120
  %7 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 269492240) #9, !srcloc !65
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %10, i32 noundef 6, ptr noundef nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i6) #9
  %11 = ptrtoint ptr %val.i6 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %val.i6, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %13, i32 628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 276828161) #9, !srcloc !65
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %call.i9 = call i32 @pci_read_config_word(ptr noundef %15, i32 noundef 6, ptr noundef nonnull %val.i6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i6) #9
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i10) #9
  %16 = ptrtoint ptr %val.i10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %val.i10, align 2, !annotation !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %reg_base.i11 = getelementptr i8, ptr %1, i32 -4120
  %17 = ptrtoint ptr %reg_base.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %18, i32 624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #9, !srcloc !65
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %call.i13 = call i32 @pci_read_config_word(ptr noundef %20, i32 noundef 6, ptr noundef nonnull %val.i10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i10) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i14) #9
  %21 = ptrtoint ptr %val.i14 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %val.i14, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %reg_base.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i11, align 4
  %add.ptr.i16 = getelementptr i8, ptr %23, i32 628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #9, !srcloc !65
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %call.i17 = call i32 @pci_read_config_word(ptr noundef %25, i32 noundef 6, ptr noundef nonnull %val.i14) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @solo_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %video_hsize = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %video_hsize to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %video_hsize, align 4
  %conv = zext i16 %3 to i32
  %video_vsize = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %video_vsize to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %video_vsize, align 2
  %conv1 = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %mul3 = mul i32 %mul, %conv1
  %6 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul3, ptr %sizes, align 4
  %7 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %num_planes, align 4
  %8 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp ult i32 %9, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %num_buffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  %val.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sequence = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sequence, align 8
  %call.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @solo_thread, ptr noundef %1, i32 noundef -1, ptr noundef nonnull @.str.18) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end9.i

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %kthread19.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 62
  %3 = ptrtoint ptr %call.i to i32
  %4 = ptrtoint ptr %kthread19.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %kthread19.i, align 4
  br label %solo_start_thread.exit

if.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @wake_up_process(ptr noundef %call.i) #9
  %kthread.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 62
  %5 = ptrtoint ptr %kthread.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %kthread.i, align 4
  %irq_mask.i.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_mask.i.i, align 8
  %or.i.i = or i32 %7, 16384
  store i32 %or.i.i, ptr %irq_mask.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #9
  %8 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %reg_base.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %9) #9, !srcloc !65
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %13, i32 noundef 6, ptr noundef nonnull %val.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #9
  br label %solo_start_thread.exit

solo_start_thread.exit:                           ; preds = %if.end9.i, %if.then5.i
  %retval.0.i = phi i32 [ %3, %if.then5.i ], [ 0, %if.end9.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @solo_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  %val.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %kthread.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 62
  %2 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kthread.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.solo_stop_thread.exit_crit_edge, label %if.end.i

entry.solo_stop_thread.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %solo_stop_thread.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %irq_mask.i.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_mask.i.i, align 8
  %and.i.i = and i32 %5, -16385
  store i32 %and.i.i, ptr %irq_mask.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #9
  %6 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #9
  %reg_base.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %7) #9, !srcloc !65
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %11, i32 noundef 6, ptr noundef nonnull %val.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #9
  %12 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kthread.i, align 4
  %call.i = call i32 @kthread_stop(ptr noundef %13) #9
  %14 = ptrtoint ptr %kthread.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %kthread.i, align 4
  br label %solo_stop_thread.exit

solo_stop_thread.exit:                            ; preds = %if.end.i, %entry.solo_stop_thread.exit_crit_edge
  %slock = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 64
  call void @_raw_spin_lock(ptr noundef %slock) #9
  %vidq_active = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 66
  %15 = ptrtoint ptr %vidq_active to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %vidq_active, align 4
  %cmp.i.not12 = icmp eq ptr %16, %vidq_active
  br i1 %cmp.i.not12, label %solo_stop_thread.exit.while.end_crit_edge, label %solo_stop_thread.exit.while.body_crit_edge

solo_stop_thread.exit.while.body_crit_edge:       ; preds = %solo_stop_thread.exit
  br label %while.body

solo_stop_thread.exit.while.end_crit_edge:        ; preds = %solo_stop_thread.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %solo_stop_thread.exit.while.body_crit_edge
  %17 = phi ptr [ %27, %list_del.exit.while.body_crit_edge ], [ %16, %solo_stop_thread.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %17, i32 -736
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #9
  %26 = ptrtoint ptr %vidq_active to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %vidq_active, align 4
  %cmp.i.not = icmp eq ptr %27, %vidq_active
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %solo_stop_thread.exit.while.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %slock) #9
  %28 = ptrtoint ptr %vidq_active to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %vidq_active, ptr %vidq_active, align 4
  %prev.i11 = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 66, i32 1
  %29 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %vidq_active, ptr %prev.i11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @solo_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %slock = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 64
  tail call void @_raw_spin_lock(ptr noundef %slock) #9
  %list = getelementptr inbounds %struct.solo_vb2_buf, ptr %vb, i32 0, i32 1
  %vidq_active = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 66
  %prev.i = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %vidq_active) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vidq_active, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.solo_vb2_buf, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #9
  %disp_thread_wait = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 32
  tail call void @__wake_up(ptr noundef %disp_thread_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_thread(ptr noundef %data) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %val.i.i.i.i = alloca i16, align 2
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !53) #9
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
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %call2 = tail call zeroext i1 @set_freezable() #9
  %disp_thread_wait = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 32
  call void @add_wait_queue(ptr noundef %disp_thread_wait, ptr noundef nonnull %wait) #9
  %call318 = call i32 @schedule_timeout_interruptible(i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call318)
  %cmp19 = icmp eq i32 %call318, -512
  br i1 %cmp19, label %entry.for.end_crit_edge, label %lor.lhs.false.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false.lr.ph:                              ; preds = %entry
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 5
  %old_write.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 65
  %slock.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 64
  %vidq_active.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 66
  %erasing.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 29
  %frame_blank.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 30
  %video_hsize.i.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 38
  %video_vsize.i.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 39
  %sequence.i.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 61
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cleanup.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %call4 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call4, label %lor.lhs.false.for.end_crit_edge, label %if.end

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %14, i32 296
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.i) #9, !srcloc !66
  %16 = lshr i32 %15, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  %and46.i = and i32 %16, 7
  %17 = ptrtoint ptr %old_write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old_write.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and46.i, i32 %18)
  %cmp47.i = icmp eq i32 %and46.i, %18
  br i1 %cmp47.i, label %if.end.solo_thread_try.exit_crit_edge, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  br label %if.end.i

if.end.solo_thread_try.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %solo_thread_try.exit

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %and48.i = phi i32 [ %and.i11, %cleanup.i.if.end.i_crit_edge ], [ %and46.i, %if.end.if.end.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %slock.i) #9
  %19 = ptrtoint ptr %vidq_active.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %vidq_active.i, align 4
  %cmp.i.not.i = icmp eq ptr %20, %vidq_active.i
  br i1 %cmp.i.not.i, label %do.body.i, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %20, i32 -736
  %21 = ptrtoint ptr %old_write.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and48.i, ptr %old_write.i, align 8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_del.exit.i_crit_edge

if.end3.i.list_del.exit.i_crit_edge:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %20, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end3.i.list_del.exit.i_crit_edge
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %slock.i) #9
  %call.i.i37.i = call ptr @vb2_plane_cookie(ptr noundef %add.ptr.i, i32 noundef 0) #9
  %30 = ptrtoint ptr %call.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call.i.i37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %list_del.exit.i.cleanup.i_crit_edge, label %if.end.i.i

list_del.exit.i.cleanup.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i.i:                                       ; preds = %list_del.exit.i
  %32 = ptrtoint ptr %erasing.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %erasing.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i, label %if.end.i.i38.i

if.end.i.i38.i:                                   ; preds = %if.end.i.i
  %34 = ptrtoint ptr %frame_blank.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frame_blank.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.not.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool1.not.i.i.i, label %if.then2.i.i.i, label %if.end.i.i38.i.if.end3.i.i.i_crit_edge

if.end.i.i38.i.if.end3.i.i.i_crit_edge:           ; preds = %if.end.i.i38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i38.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i.i) #9
  %36 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %val.i.i.i.i, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %38, i32 788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #9, !srcloc !65
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 8
  %call.i.i.i.i = call i32 @pci_read_config_word(ptr noundef %40, i32 noundef 6, ptr noundef nonnull %val.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i.i) #9
  %41 = ptrtoint ptr %frame_blank.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr.i.i.i = load i32, ptr %frame_blank.i.i.i, align 8
  br label %if.end3.i.i.i

if.end3.i.i.i:                                    ; preds = %if.then2.i.i.i, %if.end.i.i38.i.if.end3.i.i.i_crit_edge
  %42 = phi i32 [ %.pr.i.i.i, %if.then2.i.i.i ], [ %35, %if.end.i.i38.i.if.end3.i.i.i_crit_edge ]
  %inc.i.i.i = add i32 %42, 1
  %43 = ptrtoint ptr %frame_blank.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %inc.i.i.i, ptr %frame_blank.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %42)
  %cmp.i.i.i = icmp ugt i32 %42, 7
  br i1 %cmp.i.i.i, label %if.then5.i.i.i, label %if.end3.i.i.i.if.then3.i.i_crit_edge

if.end3.i.i.i.if.then3.i.i_crit_edge:             ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i.i

if.then5.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %erasing.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %erasing.i.i.i, align 4
  br label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.then5.i.i.i, %if.end3.i.i.i.if.then3.i.i_crit_edge
  %call4.i.i = call ptr @vb2_plane_vaddr(ptr noundef %add.ptr.i, i32 noundef 0) #9
  %45 = ptrtoint ptr %video_hsize.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %video_hsize.i.i, align 4
  %conv.i39.i = zext i16 %46 to i32
  %47 = ptrtoint ptr %video_vsize.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %video_vsize.i.i, align 2
  %conv5.i.i = zext i16 %48 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i39.i, 2
  %mul7.i.i = mul i32 %mul.i.i, %conv5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul7.i.i)
  %cmp62.i.i = icmp sgt i32 %mul7.i.i, 0
  br i1 %cmp62.i.i, label %if.then3.i.i.for.body.i.i_crit_edge, label %if.then3.i.i.if.then26.i.i_crit_edge

if.then3.i.i.if.then26.i.i_crit_edge:             ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i.i

if.then3.i.i.for.body.i.i_crit_edge:              ; preds = %if.then3.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then3.i.i.for.body.i.i_crit_edge
  %i.063.i.i = phi i32 [ %add10.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then3.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %call4.i.i, i32 %i.063.i.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -128, ptr %arrayidx.i.i, align 1
  %add.i.i = or i32 %i.063.i.i, 1
  %arrayidx9.i.i = getelementptr i8, ptr %call4.i.i, i32 %add.i.i
  %50 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx9.i.i, align 1
  %add10.i.i = add nuw nsw i32 %i.063.i.i, 2
  %cmp.i40.i = icmp slt i32 %add10.i.i, %mul7.i.i
  br i1 %cmp.i40.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.then26.i.i_crit_edge

for.body.i.i.if.then26.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %51 = ptrtoint ptr %old_write.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %old_write.i, align 8
  %53 = ptrtoint ptr %video_vsize.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %video_vsize.i.i, align 2
  %conv12.i.i = zext i16 %54 to i32
  %mul13.i.i = shl nuw nsw i32 %conv12.i.i, 1
  %mul14.i.i = shl i32 %52, 12
  %mul15.i.i = mul i32 %mul14.i.i, %conv12.i.i
  %55 = ptrtoint ptr %video_hsize.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %video_hsize.i.i, align 4
  %conv18.i.i = zext i16 %56 to i32
  %mul19.i.i = shl nuw nsw i32 %conv18.i.i, 1
  %call23.i.i = call i32 @solo_p2m_dma_t(ptr noundef %data, i32 noundef 0, i32 noundef %31, i32 noundef %mul15.i.i, i32 noundef %mul19.i.i, i32 noundef %mul13.i.i, i32 noundef 2048) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %phi.cmp.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %phi.cmp.i.i, label %if.else.i.i.if.then26.i.i_crit_edge, label %if.else.i.i.cleanup.i_crit_edge

if.else.i.i.cleanup.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.else.i.i.if.then26.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.else.i.i.if.then26.i.i_crit_edge, %for.body.i.i.if.then26.i.i_crit_edge, %if.then3.i.i.if.then26.i.i_crit_edge
  %num_planes.i.i.i = getelementptr i8, ptr %20, i32 -720
  %57 = ptrtoint ptr %num_planes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_planes.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.not.i.i.i = icmp eq i32 %58, 0
  br i1 %cmp.not.i.i.i, label %if.then26.i.i.vb2_set_plane_payload.exit.i.i_crit_edge, label %if.then.i.i.i

if.then26.i.i.vb2_set_plane_payload.exit.i.i_crit_edge: ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then26.i.i
  %59 = ptrtoint ptr %video_vsize.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %video_vsize.i.i, align 2
  %conv28.i.i = zext i16 %60 to i32
  %mul29.i.i = shl nuw nsw i32 %conv28.i.i, 1
  %61 = ptrtoint ptr %video_hsize.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %video_hsize.i.i, align 4
  %conv31.i.i = zext i16 %62 to i32
  %mul32.i.i = shl nuw nsw i32 %conv31.i.i, 1
  %mul33.i.i = mul i32 %mul32.i.i, %mul29.i.i
  %length.i.i.i = getelementptr i8, ptr %20, i32 -648
  %63 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %length.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %mul33.i.i)
  %cmp1.i.i.i = icmp ult i32 %64, %mul33.i.i
  br i1 %cmp1.i.i.i, label %land.rhs.i.i.i, label %if.then.i.i.i.if.end42.i.i.i_crit_edge

if.then.i.i.i.if.end42.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i.i.i
  %.b1.i.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.if.then38.i.i.i_crit_edge, label %if.then8.i.i.i, !prof !68

land.rhs.i.i.i.if.then38.i.i.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i.i.i

if.then8.i.i.i:                                   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i.i.i

if.then38.i.i.i:                                  ; preds = %if.then8.i.i.i, %land.rhs.i.i.i.if.then38.i.i.i_crit_edge
  %65 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %length.i.i.i, align 8
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %if.then38.i.i.i, %if.then.i.i.i.if.end42.i.i.i_crit_edge
  %size.addr.0.i.i.i = phi i32 [ %66, %if.then38.i.i.i ], [ %mul33.i.i, %if.then.i.i.i.if.end42.i.i.i_crit_edge ]
  %bytesused.i.i.i = getelementptr i8, ptr %20, i32 -652
  %67 = ptrtoint ptr %bytesused.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %size.addr.0.i.i.i, ptr %bytesused.i.i.i, align 4
  br label %vb2_set_plane_payload.exit.i.i

vb2_set_plane_payload.exit.i.i:                   ; preds = %if.end42.i.i.i, %if.then26.i.i.vb2_set_plane_payload.exit.i.i_crit_edge
  %68 = ptrtoint ptr %sequence.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sequence.i.i, align 8
  %inc.i.i = add i32 %69, 1
  store i32 %inc.i.i, ptr %sequence.i.i, align 8
  %sequence34.i.i = getelementptr i8, ptr %20, i32 -272
  %70 = ptrtoint ptr %sequence34.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %sequence34.i.i, align 8
  %call.i59.i.i = call i64 @ktime_get() #9
  %timestamp.i.i = getelementptr i8, ptr %20, i32 -712
  %71 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %call.i59.i.i, ptr %timestamp.i.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %vb2_set_plane_payload.exit.i.i, %if.else.i.i.cleanup.i_crit_edge, %list_del.exit.i.cleanup.i_crit_edge
  %cond.i.i = phi i32 [ 5, %vb2_set_plane_payload.exit.i.i ], [ 6, %if.else.i.i.cleanup.i_crit_edge ], [ 6, %list_del.exit.i.cleanup.i_crit_edge ]
  call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef %cond.i.i) #9
  %72 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %73, i32 296
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !66
  %75 = lshr i32 %74, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  %and.i11 = and i32 %75, 7
  %76 = ptrtoint ptr %old_write.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %old_write.i, align 8
  %cmp.i = icmp eq i32 %and.i11, %77
  br i1 %cmp.i, label %cleanup.i.solo_thread_try.exit_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

cleanup.i.solo_thread_try.exit_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %solo_thread_try.exit

do.body.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %78 = ptrtoint ptr %slock.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %slock.i, align 4
  %79 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i41.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i41.not.i, label %do.body15.i, label %do.end21.i, !prof !69

do.body15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/solo6x10/solo6x10-v4l2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 255, 0\0A.popsection", ""() #9, !srcloc !70
  unreachable

do.end21.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %slock.i) #9
  br label %solo_thread_try.exit

solo_thread_try.exit:                             ; preds = %do.end21.i, %cleanup.i.solo_thread_try.exit_crit_edge, %if.end.solo_thread_try.exit_crit_edge
  %80 = call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags.i, align 4
  %and.i12 = and i32 %85, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.not.i = icmp eq i32 %and.i12, 0
  br i1 %tobool.not.i, label %if.then.i, label %solo_thread_try.exit.if.end.i14_crit_edge

solo_thread_try.exit.if.end.i14_crit_edge:        ; preds = %solo_thread_try.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i14

if.then.i:                                        ; preds = %solo_thread_try.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @debug_check_no_locks_held() #9
  br label %if.end.i14

if.end.i14:                                       ; preds = %if.then.i, %solo_thread_try.exit.if.end.i14_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 57) #9
  %86 = call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %90 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i.i.i13 = icmp eq i32 %90, 0
  br i1 %tobool.not.i.i.i13, label %if.end.i14.cleanup_crit_edge, label %freezing.exit.i.i, !prof !68

if.end.i14.cleanup_crit_edge:                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

freezing.exit.i.i:                                ; preds = %if.end.i14
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %89) #9
  br i1 %call4.i.i.i, label %if.end.i.i15, label %freezing.exit.i.i.cleanup_crit_edge, !prof !69

freezing.exit.i.i.cleanup_crit_edge:              ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i15:                                     ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i15, %freezing.exit.i.i.cleanup_crit_edge, %if.end.i14.cleanup_crit_edge
  %call3 = call i32 @schedule_timeout_interruptible(i32 noundef 100) #9
  %cmp = icmp eq i32 %call3, -512
  br i1 %cmp, label %cleanup.for.end_crit_edge, label %cleanup.lor.lhs.false_crit_edge

cleanup.lor.lhs.false_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %entry.for.end_crit_edge
  call void @remove_wait_queue(ptr noundef %disp_thread_wait, ptr noundef nonnull %wait) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_p2m_dma_t(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @solo_v4l2_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 646, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @solo_v4l2_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 647, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @solo_v4l2_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 648, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @solo_v4l2_init._key, !10, !"_key", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 659, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 699, i32 61}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 700, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 702, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @solo_v4l2_init._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @solo_v4l2_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @solo_v4l2_template, !25, !"solo_v4l2_template", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 617, i32 34}
!26 = !{ptr @solo_v4l2_fops, !27, !"solo_v4l2_fops", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 581, i32 42}
!28 = !{ptr @solo_v4l2_ioctl_ops, !29, !"solo_v4l2_ioctl_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 591, i32 36}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 378, i32 21}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 379, i32 49}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 419, i32 46}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 396, i32 4}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 635, i32 10}
!40 = !{ptr @solo_motion_trace_ctrl, !41, !"solo_motion_trace_ctrl", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 632, i32 38}
!42 = !{ptr @solo_ctrl_ops, !43, !"solo_ctrl_ops", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 628, i32 35}
!44 = !{ptr @solo_video_qops, !45, !"solo_video_qops", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 363, i32 29}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2.c", i32 285, i32 22}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{i64 2156800352}
!65 = !{i64 7214673}
!66 = !{i64 7215091}
!67 = !{i64 2156799961}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 2156807883, i64 2156808390, i64 2156807920, i64 2156807976, i64 2156808010, i64 2156808034, i64 2156808075, i64 2156808096, i64 2156808124, i64 2156808158}
